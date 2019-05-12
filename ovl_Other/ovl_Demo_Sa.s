#include <mips.h>
.set noreorder
.set noat

.section .text
func_809BCD20:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	jal     func_8008D6D0              
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BCD44:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x0182(a2)             ## 00000182
	addiu   v1, a2, 0x0182             ## v1 = 00000182
	or      v0, $zero, $zero           ## v0 = 00000000
	bne     t6, $zero, lbl_809BCD6C    
	addiu   a0, $zero, 0x003C          ## a0 = 0000003C
	beq     $zero, $zero, lbl_809BCD7C 
	addiu   v1, a2, 0x0182             ## v1 = 00000182
lbl_809BCD6C:
	lh      t7, 0x0000(v1)             ## 00000182
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x0000(v1)             ## 00000182
	lh      v0, 0x0000(v1)             ## 00000182
lbl_809BCD7C:
	bne     v0, $zero, lbl_809BCD9C    
	addiu   a1, $zero, 0x003C          ## a1 = 0000003C
	sw      v1, 0x001C($sp)            
	jal     func_80063BF0              
	sw      a2, 0x0038($sp)            
	lw      v1, 0x001C($sp)            
	lw      a2, 0x0038($sp)            
	sh      v0, 0x0000(v1)             ## 00000000
lbl_809BCD9C:
	lh      t9, 0x0000(v1)             ## 00000000
	addiu   v0, a2, 0x0180             ## v0 = 00000180
	sh      t9, 0x0000(v0)             ## 00000180
	lh      t0, 0x0000(v0)             ## 00000180
	slti    $at, t0, 0x0003            
	bnel    $at, $zero, lbl_809BCDC0   
	lw      $ra, 0x0014($sp)           
	sh      $zero, 0x0000(v0)          ## 00000180
	lw      $ra, 0x0014($sp)           
lbl_809BCDC0:
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BCDCC:
	sw      a1, 0x0004($sp)            
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_809BCDE4:
	sw      a1, 0x0004($sp)            
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0184(a0)             ## 00000184
	jr      $ra                        
	nop


func_809BCDFC:
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


func_809BCE44:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a1, a0, $zero              ## a1 = 00000000
	jal     func_8008C9C0              
	addiu   a0, a1, 0x013C             ## a0 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BCE68:
	lbu     t6, 0x1D6C(a0)             ## 00001D6C
	sll     t7, a1,  2                 
	addu    t8, a0, t7                 
	beql    t6, $zero, lbl_809BCE88    
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	lw      v0, 0x1D8C(t8)             ## 00001D8C
lbl_809BCE84:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809BCE88:
	jr      $ra                        
	nop


func_809BCE90:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	sw      a2, 0x0020($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_809BCE68              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_809BCED0    
	lw      $ra, 0x0014($sp)           
	lhu     t6, 0x0022($sp)            
	lhu     t7, 0x0000(v0)             ## 00000000
	bnel    t6, t7, lbl_809BCED4       
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_809BCED4 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809BCED0:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809BCED4:
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_809BCEDC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	sw      a2, 0x0020($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_809BCE68              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_809BCF1C    
	lw      $ra, 0x0014($sp)           
	lhu     t6, 0x0022($sp)            
	lhu     t7, 0x0000(v0)             ## 00000000
	beql    t6, t7, lbl_809BCF20       
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_809BCF20 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809BCF1C:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809BCF20:
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_809BCF28:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a0, 0x001C($sp)            
	or      a1, a2, $zero              ## a1 = 00000000
	jal     func_809BCE68              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_809BCF98    
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
lbl_809BCF98:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BCFA8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	jal     func_8008A194              
	lw      a0, 0x002C($sp)            
	lw      t6, 0x0038($sp)            
	lw      a0, 0x0028($sp)            
	lw      a1, 0x002C($sp)            
	bne     t6, $zero, lbl_809BCFF4    
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mtc1    $at, $f12                  ## $f12 = 1.00
	beq     $zero, $zero, lbl_809BD008 
	cvt.s.w $f2, $f4                   
lbl_809BCFF4:
	mtc1    v0, $f6                    ## $f6 = 0.00
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $zero, $f2                 ## $f2 = 0.00
	mtc1    $at, $f12                  ## $f12 = -1.00
	cvt.s.w $f0, $f6                   
lbl_809BD008:
	lbu     t7, 0x0033($sp)            
	lwc1    $f8, 0x0034($sp)           
	mfc1    a2, $f12                   
	mfc1    a3, $f0                    
	swc1    $f2, 0x0010($sp)           
	sw      t7, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD038:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      a1, 0x0028($sp)            
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   a3, a3, 0x21D8             ## a3 = 060021D8
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	lw      a0, 0x002C($sp)            
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_8008C788              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lui     $at, %hi(var_809BF5B0)     ## $at = 809C0000
	lw      a0, 0x0028($sp)            
	lwc1    $f4, %lo(var_809BF5B0)($at) 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_809BCDCC              
	swc1    $f4, 0x00BC(a0)            ## 000000BC
	lw      a0, 0x0028($sp)            
	jal     func_809BCDE4              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD0A8:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	or      a2, a1, $zero              ## a2 = 00000000
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a0, 0x0038($sp)            
	lwc1    $f0, 0x0024(a1)            ## 00000024
	lwc1    $f2, 0x0028(a1)            ## 00000028
	lwc1    $f12, 0x002C(a1)           ## 0000002C
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	addiu   a3, $zero, 0x005D          ## a3 = 0000005D
	swc1    $f0, 0x0010($sp)           
	swc1    $f2, 0x0014($sp)           
	jal     func_800253F0              
	swc1    $f12, 0x0018($sp)          
	lw      $ra, 0x0034($sp)           
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD104:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	or      a2, a1, $zero              ## a2 = 00000000
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a0, 0x0038($sp)            
	lw      v0, 0x1C44(a2)             ## 00001C44
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f6                   ## $f6 = 80.00
	lwc1    $f4, 0x0028(v0)            ## 00000028
	lwc1    $f0, 0x0024(v0)            ## 00000024
	lwc1    $f12, 0x002C(v0)           ## 0000002C
	add.s   $f2, $f4, $f6              
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sw      t6, 0x0028($sp)            
	sw      a2, 0x003C($sp)            
	swc1    $f2, 0x0014($sp)           
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	addiu   a3, $zero, 0x008B          ## a3 = 0000008B
	swc1    $f0, 0x0010($sp)           
	jal     func_800253F0              
	swc1    $f12, 0x0018($sp)          
	lw      a0, 0x003C($sp)            
	jal     func_8006FDCC              
	addiu   a1, $zero, 0x0066          ## a1 = 00000066
	lw      $ra, 0x0034($sp)           
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD180:
	sw      a1, 0x0004($sp)            
	lui     $at, %hi(var_809BF5B4)     ## $at = 809C0000
	lwc1    $f6, %lo(var_809BF5B4)($at) 
	lwc1    $f4, 0x00BC(a0)            ## 000000BC
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x00BC(a0)            ## 000000BC
	jr      $ra                        
	nop


func_809BD1A0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lbu     t6, 0x1415(v0)             ## 8011B9E5
	bnel    t6, $zero, lbl_809BD22C    
	lw      $ra, 0x0014($sp)           
	lw      t7, 0x1360(v0)             ## 8011B930
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lw      t9, 0x0028($sp)            
	slti    $at, t7, 0x0004            
	beq     $at, $zero, lbl_809BD228   
	lui     t0, %hi(var_809BE8D8)      ## t0 = 809C0000
	lw      v1, 0x1C44(a2)             ## 00001C44
	sw      t8, 0x0188(t9)             ## 00000188
	addiu   t0, t0, %lo(var_809BE8D8)  ## t0 = 809BE8D8
	sw      t0, 0x1D68(a2)             ## 00001D68
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sb      t1, 0x1414(v0)             ## 8011B9E4
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0066          ## a1 = 00000066
	jal     func_8006FDCC              
	sw      v1, 0x001C($sp)            
	lw      t2, 0x0028($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lw      v1, 0x001C($sp)            
	lh      v0, 0x0032(t2)             ## 00000032
	addu    v0, v0, $at                
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	sh      v0, 0x00B6(v1)             ## 000000B6
	sh      v0, 0x0032(v1)             ## 00000032
lbl_809BD228:
	lw      $ra, 0x0014($sp)           
lbl_809BD22C:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD238:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x1D6C(a1)             ## 00001D6C
	beql    t6, $zero, lbl_809BD27C    
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x1D9C(a1)             ## 00001D9C
	beql    v0, $zero, lbl_809BD27C    
	lw      $ra, 0x0014($sp)           
	lhu     t7, 0x0000(v0)             ## 00000000
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	bnel    v1, t7, lbl_809BD27C       
	lw      $ra, 0x0014($sp)           
	sw      v1, 0x0188(a0)             ## 00000188
	jal     func_809BD0A8              
	sw      t8, 0x018C(a0)             ## 0000018C
	lw      $ra, 0x0014($sp)           
lbl_809BD27C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD288:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	lwc1    $f4, 0x00BC(a0)            ## 000000BC
	c.le.s  $f0, $f4                   
	nop
	bc1f    lbl_809BD2AC               
	nop
	sw      t6, 0x0188(a0)             ## 00000188
	swc1    $f0, 0x00BC(a0)            ## 000000BC
lbl_809BD2AC:
	jr      $ra                        
	nop


func_809BD2B4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lbu     t6, 0x1D6C(a1)             ## 00001D6C
	beql    t6, $zero, lbl_809BD340    
	lw      $ra, 0x0024($sp)           
	lw      v0, 0x1D9C(a1)             ## 00001D9C
	beql    v0, $zero, lbl_809BD340    
	lw      $ra, 0x0024($sp)           
	lhu     t7, 0x0000(v0)             ## 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lui     a0, 0x0601                 ## a0 = 06010000
	bnel    t7, $at, lbl_809BD340      
	lw      $ra, 0x0024($sp)           
	jal     func_8008A194              
	addiu   a0, a0, 0xDF80             ## a0 = 0600DF80
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0xDF80             ## a1 = 0600DF80
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      t0, 0x0028($sp)            
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	sw      t9, 0x0188(t0)             ## 00000188
	lw      $ra, 0x0024($sp)           
lbl_809BD340:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD34C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	beq     a1, $zero, lbl_809BD3A8    
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0xE500             ## a0 = 0600E500
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lw      a0, 0x0028($sp)            
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	mfc1    a3, $f0                    
	addiu   a1, a1, 0xE500             ## a1 = 0600E500
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      t7, 0x0028($sp)            
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	sw      t6, 0x0188(t7)             ## 00000188
lbl_809BD3A8:
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD3B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x1D6C(a1)             ## 00001D6C
	beql    t6, $zero, lbl_809BD3F8    
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x1DA4(a1)             ## 00001DA4
	beql    v0, $zero, lbl_809BD3F8    
	lw      $ra, 0x0014($sp)           
	lhu     t7, 0x0000(v0)             ## 00000000
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	addiu   t8, $zero, 0x0006          ## t8 = 00000006
	bnel    t7, $at, lbl_809BD3F8      
	lw      $ra, 0x0014($sp)           
	jal     func_809BD104              
	sw      t8, 0x0188(a0)             ## 00000188
	lw      $ra, 0x0014($sp)           
lbl_809BD3F8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD404:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_809BD1A0              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD424:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_809BD238              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD444:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_809BD180              
	lw      a0, 0x0018($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BD288              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD478:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BD2B4              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD4B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a0, 0x0018($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BD34C              
	or      a1, v0, $zero              ## a1 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD4F0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BD3B8              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD530:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a0, 0x0018($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD55C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x004C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x1334             ## a0 = 06001334
	mtc1    v0, $f4                    ## $f4 = 0.00
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0601                 ## a2 = 06010000
	cvt.s.w $f6, $f4                   
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	sw      a1, 0x0034($sp)            
	lw      a0, 0x004C($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	swc1    $f6, 0x0038($sp)           
	sw      $zero, 0x0014($sp)         
	jal     func_8008C788              
	sw      $zero, 0x0018($sp)         
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f8, 0x0038($sp)           
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	mfc1    a3, $f0                    
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x1334             ## a1 = 06001334
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f8, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	addiu   t7, $zero, 0x0007          ## t7 = 00000007
	sw      t7, 0x0188(s0)             ## 00000188
	sb      $zero, 0x00C8(s0)          ## 000000C8
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCDCC              
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCDE4              
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD618:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x013D(a0)             ## 0000013D
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lwc1    $f0, 0x0154(a0)            ## 00000154
	bne     t6, $at, lbl_809BD660      
	lui     $at, 0x4200                ## $at = 42000000
	mtc1    $at, $f4                   ## $f4 = 32.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	c.le.s  $f4, $f0                   
	nop
	bc1fl   lbl_809BD664               
	lw      $ra, 0x0014($sp)           
	jal     func_809BCDCC              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDE4              
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_809BD660:
	lw      $ra, 0x0014($sp)           
lbl_809BD664:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD670:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80064738              
	addiu   a0, $zero, 0x4834          ## a0 = 00004834
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD690:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	or      a2, a1, $zero              ## a2 = 00000000
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a0, 0x0038($sp)            
	lwc1    $f4, 0x0024(a1)            ## 00000024
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x41C8                ## $at = 41C80000
	lh      t7, 0x1482(t6)             ## 80121482
	mtc1    $at, $f10                  ## $f10 = 25.00
	lwc1    $f18, 0x0028(a1)           ## 00000028
	mtc1    t7, $f6                    ## $f6 = 0.00
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	cvt.s.w $f8, $f6                   
	addiu   a3, $zero, 0x00F5          ## a3 = 000000F5
	add.s   $f16, $f8, $f10            
	add.s   $f4, $f16, $f18            
	swc1    $f4, 0x0014($sp)           
	lwc1    $f6, 0x002C(a1)            ## 0000002C
	sw      t8, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	jal     func_800253F0              
	swc1    $f6, 0x0018($sp)           
	lw      $ra, 0x0034($sp)           
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD710:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	jal     func_809BCE90              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_809BD754    
	lw      a0, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t6, 0x0188(a0)             ## 00000188
	sw      t7, 0x018C(a0)             ## 0000018C
	sw      $zero, 0x0194(a0)          ## 00000194
	sb      $zero, 0x00C8(a0)          ## 000000C8
	jal     func_809BD670              
	swc1    $f4, 0x0190(a0)            ## 00000190
lbl_809BD754:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD764:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	jal     func_809BCE90              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_809BD814    
	lw      a0, 0x0018($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f2                   ## $f2 = 10.00
	lui     $at, 0x3F80                ## $at = 3F800000
	addiu   v0, a0, 0x0190             ## v0 = 00000190
	lwc1    $f4, 0x0000(v0)            ## 00000190
	mtc1    $at, $f6                   ## $f6 = 1.00
	lui     a1, 0x8012                 ## a1 = 80120000
	addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
	add.s   $f8, $f4, $f6              
	addiu   t8, $zero, 0x0009          ## t8 = 00000009
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	swc1    $f8, 0x0000(v0)            ## 00000190
	lw      t6, 0x0000(a1)             ## 8011BA00
	lwc1    $f0, 0x0000(v0)            ## 00000190
	lh      t7, 0x145E(t6)             ## 0000145E
	mtc1    t7, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	add.s   $f18, $f16, $f2            
	c.le.s  $f18, $f0                  
	nop
	bc1f    lbl_809BD85C               
	nop
	sw      t8, 0x0188(a0)             ## 00000188
	sw      t9, 0x018C(a0)             ## 0000018C
	lw      t0, 0x0000(a1)             ## 8011BA00
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
	lh      t1, 0x145E(t0)             ## 0000145E
	mtc1    t1, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f8, $f6, $f2              
	swc1    $f8, 0x0000(v0)            ## 00000190
	sw      v1, 0x0194(a0)             ## 00000194
	beq     $zero, $zero, lbl_809BD8A8 
	sb      v1, 0x00C8(a0)             ## 000000C8
lbl_809BD814:
	addiu   v0, a0, 0x0190             ## v0 = 00000190
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	lwc1    $f10, 0x0000(v0)           ## 00000190
	mtc1    $zero, $f2                 ## $f2 = 0.00
	sub.s   $f18, $f10, $f16           
	swc1    $f18, 0x0000(v0)           ## 00000190
	lwc1    $f0, 0x0000(v0)            ## 00000190
	c.le.s  $f0, $f2                   
	nop
	bc1f    lbl_809BD85C               
	addiu   t2, $zero, 0x0007          ## t2 = 00000007
	sw      t2, 0x0188(a0)             ## 00000188
	sw      $zero, 0x018C(a0)          ## 0000018C
	swc1    $f2, 0x0000(v0)            ## 00000190
	sw      $zero, 0x0194(a0)          ## 00000194
	beq     $zero, $zero, lbl_809BD8A8 
	sb      $zero, 0x00C8(a0)          ## 000000C8
lbl_809BD85C:
	lui     a1, 0x8012                 ## a1 = 80120000
	addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
	lw      t3, 0x0000(a1)             ## 8011BA00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f2                   ## $f2 = 10.00
	lh      t4, 0x145E(t3)             ## 0000145E
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f16                  ## $f16 = 255.00
	mtc1    t4, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f8, $f6, $f2              
	div.s   $f10, $f0, $f8             
	mul.s   $f18, $f10, $f16           
	trunc.w.s $f4, $f18                  
	mfc1    v0, $f4                    
	nop
	sw      v0, 0x0194(a0)             ## 00000194
	sb      v0, 0x00C8(a0)             ## 000000C8
lbl_809BD8A8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD8B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	jal     func_809BCEDC              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_809BD944    
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t6, 0x0188(a0)             ## 00000188
	sw      t7, 0x018C(a0)             ## 0000018C
	lui     t8, 0x8012                 ## t8 = 80120000
	lw      t8, -0x4600(t8)            ## 8011BA00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f8                   ## $f8 = 10.00
	lh      t9, 0x145E(t8)             ## 8012145E
	lw      t1, 0x0198(a0)             ## 00000198
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	mtc1    t9, $f4                    ## $f4 = 0.00
	sw      t0, 0x0194(a0)             ## 00000194
	cvt.s.w $f6, $f4                   
	add.s   $f10, $f6, $f8             
	bne     t1, $zero, lbl_809BD93C    
	swc1    $f10, 0x0190(a0)           ## 00000190
	lw      a1, 0x001C($sp)            
	jal     func_809BD690              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x0198(a0)             ## 00000198
lbl_809BD93C:
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	sb      t3, 0x00C8(a0)             ## 000000C8
lbl_809BD944:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD954:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_809BD710              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD974:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BCD44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BD764              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BD9BC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BD618              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BD8B8              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDA04:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0054($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v0, 0x0180(a3)             ## 00000180
	lh      a2, 0x0184(a3)             ## 00000184
	lui     t2, %hi(var_809BE8B0)      ## t2 = 809C0000
	lui     t3, %hi(var_809BE8C4)      ## t3 = 809C0000
	sll     t6, v0,  2                 
	sll     t7, a2,  2                 
	addu    t2, t2, t6                 
	addu    t3, t3, t7                 
	lw      t2, %lo(var_809BE8B0)(t2)  
	lw      t3, %lo(var_809BE8C4)(t3)  
	lw      t8, 0x0054($sp)            
	lw      a0, 0x0000(t8)             ## 00000000
	sw      t3, 0x0034($sp)            
	sw      t2, 0x0040($sp)            
	sw      a3, 0x0050($sp)            
	jal     func_8007E2C0              
	sw      a0, 0x002C($sp)            
	lui     t4, 0x8012                 ## t4 = 80120000
	lui     t5, 0x00FF                 ## t5 = 00FF0000
	ori     t5, t5, 0xFFFF             ## t5 = 00FFFFFF
	addiu   t4, t4, 0x0C38             ## t4 = 80120C38
	lw      v1, 0x002C($sp)            
	lui     t1, 0x8000                 ## t1 = 80000000
	lw      t2, 0x0040($sp)            
	lw      t3, 0x0034($sp)            
	lw      $ra, 0x0050($sp)           
	lw      v0, 0x02D0(v1)             ## 000002D0
	sll     t7, t2,  4                 
	srl     t8, t7, 28                 
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(v1)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0020             ## t6 = DB060020
	sll     t9, t8,  2                 
	addu    a1, t4, t9                 
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(a1)             ## 00000000
	and     a2, t2, t5                 
	addiu   t0, $ra, 0x013C            ## t0 = 0000013C
	addu    t7, t6, a2                 
	addu    t8, t7, t1                 
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(v1)             ## 000002D0
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t7, 0x0000(a1)             ## 00000000
	addu    t8, t7, a2                 
	addu    t9, t8, t1                 
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t7, 0xDB06                 ## t7 = DB060000
	sll     t8, t3,  4                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(v1)             ## 000002D0
	srl     t9, t8, 28                 
	ori     t7, t7, 0x0028             ## t7 = DB060028
	sll     t6, t9,  2                 
	sw      t7, 0x0000(v0)             ## 00000000
	addu    t7, t4, t6                 
	lw      t8, 0x0000(t7)             ## DB060028
	and     t9, t3, t5                 
	addu    t6, t8, t9                 
	addu    t7, t6, t1                 
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(v1)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t6, 0x0194($ra)            ## 00000194
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0030             ## t9 = DB060030
	andi    t7, t6, 0x00FF             ## t7 = 00000008
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t6, 0x800F                 ## t6 = 800F0000
	addiu   t6, t6, 0x8510             ## t6 = 800E8510
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(v1)             ## 000002D0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      a1, 0x0004(t0)             ## 00000140
	lw      a2, 0x0020(t0)             ## 0000015C
	lbu     a3, 0x0002(t0)             ## 0000013E
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0010($sp)         
	lw      t7, 0x02D0(v1)             ## 000002D0
	sw      v1, 0x002C($sp)            
	lw      a0, 0x0054($sp)            
	jal     func_8008A88C              
	sw      t7, 0x001C($sp)            
	lw      v1, 0x002C($sp)            
	sw      v0, 0x02D0(v1)             ## 000002D0
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_809BDBA4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      a1, 0x0028($sp)            
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   a3, a3, 0x21D8             ## a3 = 060021D8
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	lw      a0, 0x002C($sp)            
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_8008C788              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lw      v0, 0x0028($sp)            
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t6, 0x0188(v0)             ## 00000188
	sw      t7, 0x018C(v0)             ## 0000018C
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDC04:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a0, 0x0018($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BCD44              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDC38:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      a1, 0x0028($sp)            
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0601                 ## a3 = 06010000
	addiu   a3, a3, 0xFFD4             ## a3 = 0600FFD4
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	lw      a0, 0x002C($sp)            
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_8008C788              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lw      v0, 0x0028($sp)            
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sw      t6, 0x0188(v0)             ## 00000188
	sw      $zero, 0x018C(v0)          ## 0000018C
	sb      $zero, 0x00C8(v0)          ## 000000C8
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_809BDC94:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	lwc1    $f4, 0x0190(a0)            ## 00000190
	lui     t6, 0x8012                 ## t6 = 80120000
	lui     $at, 0x4120                ## $at = 41200000
	add.s   $f8, $f4, $f6              
	mtc1    $at, $f18                  ## $f18 = 10.00
	addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
	swc1    $f8, 0x0190(a0)            ## 00000190
	lw      t6, -0x4600(t6)            ## 8011BA00
	lwc1    $f4, 0x0190(a0)            ## 00000190
	lh      t7, 0x1476(t6)             ## 80121476
	mtc1    t7, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	add.s   $f0, $f16, $f18            
	c.le.s  $f0, $f4                   
	nop
	bc1fl   lbl_809BDCF4               
	lwc1    $f6, 0x0190(a0)            ## 00000190
	sw      v0, 0x0194(a0)             ## 00000194
	jr      $ra                        
	sb      v0, 0x00C8(a0)             ## 000000C8
lbl_809BDCF0:
	lwc1    $f6, 0x0190(a0)            ## 00000190
lbl_809BDCF4:
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f10                  ## $f10 = 255.00
	div.s   $f8, $f6, $f0              
	mul.s   $f16, $f8, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    v0, $f18                   
	nop
	sw      v0, 0x0194(a0)             ## 00000194
	sb      v0, 0x00C8(a0)             ## 000000C8
	jr      $ra                        
	nop


func_809BDD20:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_809BCF28              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x000C          ## t6 = 0000000C
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t6, 0x0188(a0)             ## 00000188
	sw      t7, 0x018C(a0)             ## 0000018C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDD58:
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f10                  ## $f10 = 10.00
	lh      t7, 0x1476(t6)             ## 80121476
	lwc1    $f4, 0x0190(a0)            ## 00000190
	addiu   t8, $zero, 0x000D          ## t8 = 0000000D
	mtc1    t7, $f6                    ## $f6 = 0.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	cvt.s.w $f8, $f6                   
	add.s   $f16, $f8, $f10            
	c.le.s  $f16, $f4                  
	nop
	bc1f    lbl_809BDD9C               
	nop
	sw      t8, 0x0188(a0)             ## 00000188
	sw      t9, 0x018C(a0)             ## 0000018C
lbl_809BDD9C:
	jr      $ra                        
	nop


func_809BDDA4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xF580             ## a1 = 0600F580
	lw      a0, 0x0020($sp)            
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	lui     a3, 0xC100                 ## a3 = C1000000
	jal     func_809BCFA8              
	sw      $zero, 0x0010($sp)         
	lw      t7, 0x0020($sp)            
	addiu   t6, $zero, 0x000E          ## t6 = 0000000E
	sw      t6, 0x0188(t7)             ## 00000188
	lw      $ra, 0x001C($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809BDDE4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xFCE0             ## a1 = 0600FCE0
	lw      a0, 0x0020($sp)            
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_809BCFA8              
	sw      $zero, 0x0010($sp)         
	lw      t7, 0x0020($sp)            
	addiu   t6, $zero, 0x000F          ## t6 = 0000000F
	sw      t6, 0x0188(t7)             ## 00000188
	lw      $ra, 0x001C($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809BDE24:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	beq     a1, $zero, lbl_809BDE5C    
	lw      a0, 0x0020($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xFFD4             ## a1 = 0600FFD4
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_809BCFA8              
	sw      $zero, 0x0010($sp)         
	lw      t7, 0x0020($sp)            
	addiu   t6, $zero, 0x000D          ## t6 = 0000000D
	sw      t6, 0x0188(t7)             ## 00000188
lbl_809BDE5C:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDE6C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_809BCE68              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	beql    v0, $zero, lbl_809BDF08    
	lw      $ra, 0x001C($sp)           
	lhu     a2, 0x0000(v0)             ## 00000000
	lw      v1, 0x019C(s0)             ## 0000019C
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beql    a2, v1, lbl_809BDF08       
	lw      $ra, 0x001C($sp)           
	beq     a2, $at, lbl_809BDED0      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	beq     a2, $at, lbl_809BDEE4      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beq     a2, $at, lbl_809BDEF4      
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809BDF04 
	sw      a2, 0x019C(s0)             ## 0000019C
lbl_809BDED0:
	lw      a1, 0x002C($sp)            
	jal     func_809BDD20              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_809BDF00 
	lw      a2, 0x0020($sp)            
lbl_809BDEE4:
	jal     func_809BDDA4              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_809BDF00 
	lw      a2, 0x0020($sp)            
lbl_809BDEF4:
	jal     func_809BDDE4              
	sw      a2, 0x0020($sp)            
	lw      a2, 0x0020($sp)            
lbl_809BDF00:
	sw      a2, 0x019C(s0)             ## 0000019C
lbl_809BDF04:
	lw      $ra, 0x001C($sp)           
lbl_809BDF08:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDF18:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_809BDE6C              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDF38:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	jal     func_809BCDFC              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCE44              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCD44              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BDC94              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BDD58              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDF84:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BCD44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BDE6C              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BDFCC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BCD44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BDE6C              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE014:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	jal     func_809BCDFC              
	lw      a0, 0x0020($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0020($sp)            
	sw      v0, 0x001C($sp)            
	jal     func_809BCD44              
	lw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_809BDE24              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE058:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0601                 ## a3 = 06010000
	addiu   a3, a3, 0x113C             ## a3 = 0601113C
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	lw      a0, 0x0044($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	jal     func_8008C788              
	sw      $zero, 0x0018($sp)         
	addiu   v0, s0, 0x0024             ## v0 = 00000024
	lwc1    $f4, 0x0000(v0)            ## 00000024
	lw      a2, 0x0044($sp)            
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x0004(v0)            ## 00000028
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a3, $zero, 0x0018          ## a3 = 00000018
	swc1    $f6, 0x0014($sp)           
	lwc1    $f8, 0x0008(v0)            ## 0000002C
	sw      t6, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	jal     func_800253F0              
	swc1    $f8, 0x0018($sp)           
	addiu   t7, $zero, 0x0010          ## t7 = 00000010
	sw      t7, 0x0188(s0)             ## 00000188
	sw      $zero, 0x018C(s0)          ## 0000018C
	sb      $zero, 0x00C8(s0)          ## 000000C8
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCDCC              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809BCDE4              
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0038($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE114:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	lwc1    $f4, 0x0190(a0)            ## 00000190
	lui     t6, 0x8012                 ## t6 = 80120000
	lui     $at, 0x4120                ## $at = 41200000
	add.s   $f8, $f4, $f6              
	mtc1    $at, $f18                  ## $f18 = 10.00
	addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
	swc1    $f8, 0x0190(a0)            ## 00000190
	lw      t6, -0x4600(t6)            ## 8011BA00
	lwc1    $f4, 0x0190(a0)            ## 00000190
	lh      t7, 0x1476(t6)             ## 80121476
	mtc1    t7, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	add.s   $f0, $f16, $f18            
	c.le.s  $f0, $f4                   
	nop
	bc1fl   lbl_809BE174               
	lwc1    $f6, 0x0190(a0)            ## 00000190
	sw      v0, 0x0194(a0)             ## 00000194
	jr      $ra                        
	sb      v0, 0x00C8(a0)             ## 000000C8
lbl_809BE170:
	lwc1    $f6, 0x0190(a0)            ## 00000190
lbl_809BE174:
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f10                  ## $f10 = 255.00
	div.s   $f8, $f6, $f0              
	mul.s   $f16, $f8, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    v0, $f18                   
	nop
	sw      v0, 0x0194(a0)             ## 00000194
	sb      v0, 0x00C8(a0)             ## 000000C8
	jr      $ra                        
	nop


func_809BE1A0:
	addiu   t6, $zero, 0x0010          ## t6 = 00000010
	sw      t6, 0x0188(a0)             ## 00000188
	sw      $zero, 0x018C(a0)          ## 0000018C
	sb      $zero, 0x00C8(a0)          ## 000000C8
	jr      $ra                        
	nop


func_809BE1B8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x019C(a0)             ## 0000019C
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	or      a2, $zero, $zero           ## a2 = 00000000
	bne     t6, $at, lbl_809BE200      
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_809BCF28              
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	addiu   t7, $zero, 0x0011          ## t7 = 00000011
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t7, 0x0188(a0)             ## 00000188
	sw      t8, 0x018C(a0)             ## 0000018C
	sw      $zero, 0x01A0(a0)          ## 000001A0
	beq     $zero, $zero, lbl_809BE234 
	sb      $zero, 0x00C8(a0)          ## 000000C8
lbl_809BE200:
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x113C             ## a1 = 0601113C
	sw      $zero, 0x0010($sp)         
	jal     func_809BCFA8              
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	addiu   t9, $zero, 0x0012          ## t9 = 00000012
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	sw      t9, 0x0188(a0)             ## 00000188
	sw      t0, 0x018C(a0)             ## 0000018C
	sw      $zero, 0x01A0(a0)          ## 000001A0
	sb      t1, 0x00C8(a0)             ## 000000C8
lbl_809BE234:
	jal     func_809BCDCC              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE24C:
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f10                  ## $f10 = 10.00
	lh      t7, 0x1476(t6)             ## 80121476
	lwc1    $f4, 0x0190(a0)            ## 00000190
	addiu   t8, $zero, 0x0012          ## t8 = 00000012
	mtc1    t7, $f6                    ## $f6 = 0.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	cvt.s.w $f8, $f6                   
	add.s   $f16, $f8, $f10            
	c.le.s  $f16, $f4                  
	nop
	bc1f    lbl_809BE29C               
	nop
	sw      t8, 0x0188(a0)             ## 00000188
	sw      t9, 0x018C(a0)             ## 0000018C
	sw      $zero, 0x01A0(a0)          ## 000001A0
	sb      t0, 0x00C8(a0)             ## 000000C8
lbl_809BE29C:
	jr      $ra                        
	nop


func_809BE2A4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x40BC             ## a1 = 060140BC
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	jal     func_809BCFA8              
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   t6, $zero, 0x0013          ## t6 = 00000013
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	sw      t6, 0x0188(a0)             ## 00000188
	sw      v0, 0x018C(a0)             ## 0000018C
	sw      v0, 0x01A0(a0)             ## 000001A0
	jal     func_809BCDCC              
	sb      t7, 0x00C8(a0)             ## 000000C8
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE300:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x35EC             ## a1 = 060135EC
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	lui     a3, 0xC100                 ## a3 = C1000000
	sw      $zero, 0x0010($sp)         
	jal     func_809BCFA8              
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   t6, $zero, 0x0014          ## t6 = 00000014
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	sw      t6, 0x0188(a0)             ## 00000188
	sw      v0, 0x018C(a0)             ## 0000018C
	sw      v0, 0x01A0(a0)             ## 000001A0
	sb      t7, 0x00C8(a0)             ## 000000C8
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE354:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	beq     a1, $zero, lbl_809BE378    
	or      a2, $zero, $zero           ## a2 = 00000000
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x3CD8             ## a1 = 06013CD8
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_809BCFA8              
	sw      $zero, 0x0010($sp)         
lbl_809BE378:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE388:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_809BCE68              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	beql    v0, $zero, lbl_809BE440    
	lw      $ra, 0x001C($sp)           
	lhu     a2, 0x0000(v0)             ## 00000000
	lw      v1, 0x019C(s0)             ## 0000019C
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beql    a2, v1, lbl_809BE440       
	lw      $ra, 0x001C($sp)           
	beq     a2, $at, lbl_809BE3F8      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	beq     a2, $at, lbl_809BE408      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x000D         ## $at = 0000000D
	beq     a2, $at, lbl_809BE41C      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	beq     a2, $at, lbl_809BE42C      
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809BE43C 
	sw      a2, 0x019C(s0)             ## 0000019C
lbl_809BE3F8:
	jal     func_809BE1A0              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_809BE438 
	lw      a2, 0x0020($sp)            
lbl_809BE408:
	lw      a1, 0x002C($sp)            
	jal     func_809BE1B8              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_809BE438 
	lw      a2, 0x0020($sp)            
lbl_809BE41C:
	jal     func_809BE2A4              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_809BE438 
	lw      a2, 0x0020($sp)            
lbl_809BE42C:
	jal     func_809BE300              
	sw      a2, 0x0020($sp)            
	lw      a2, 0x0020($sp)            
lbl_809BE438:
	sw      a2, 0x019C(s0)             ## 0000019C
lbl_809BE43C:
	lw      $ra, 0x001C($sp)           
lbl_809BE440:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE450:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_809BE388              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE470:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a0, 0x0018($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	jal     func_809BE114              
	lw      a0, 0x0018($sp)            
	jal     func_809BE24C              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE4AC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BE388              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE4EC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BE388              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE52C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BCDFC              
	lw      a1, 0x001C($sp)            
	jal     func_809BCE44              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_809BE354              
	or      a1, v0, $zero              ## a1 = 00000000
	lw      a0, 0x0018($sp)            
	jal     func_809BE388              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE578:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x0188(a0)             ## 00000188
	bltz    v0, lbl_809BE5B0           
	slti    $at, v0, 0x0015            
	beq     $at, $zero, lbl_809BE5B0   
	sll     t6, v0,  2                 
	lui     v1, %hi(var_809BF528)      ## v1 = 809C0000
	addu    v1, v1, t6                 
	lw      v1, %lo(var_809BF528)(v1)  
	beql    v1, $zero, lbl_809BE5B4    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v1                    
	nop
lbl_809BE5B0:
	lw      $ra, 0x0014($sp)           
lbl_809BE5B4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE5C0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41F0                 ## a3 = 41F00000
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_809BE62C      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_809BE63C      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_809BE64C      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v0, $at, lbl_809BE65C      
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809BE66C 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809BE62C:
	jal     func_809BD55C              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_809BE678 
	lw      $ra, 0x001C($sp)           
lbl_809BE63C:
	jal     func_809BDBA4              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_809BE678 
	lw      $ra, 0x001C($sp)           
lbl_809BE64C:
	jal     func_809BDC38              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_809BE678 
	lw      $ra, 0x001C($sp)           
lbl_809BE65C:
	jal     func_809BE058              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_809BE678 
	lw      $ra, 0x001C($sp)           
lbl_809BE66C:
	jal     func_809BD038              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_809BE678:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809BE688:
	sw      a0, 0x0000($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     a1, $at, lbl_809BE6B8      
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      t6, 0x0014($sp)            
	lui     t8, 0x0600                 ## t8 = 06000000
	addiu   t8, t8, 0x7B80             ## t8 = 06007B80
	lw      t7, 0x01A0(t6)             ## 000001A0
	beq     t7, $zero, lbl_809BE6B8    
	nop
	sw      t8, 0x0000(a2)             ## 00000000
lbl_809BE6B8:
	jr      $ra                        
	nop


func_809BE6C0:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_809BE6D0:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0054($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v0, 0x0180(a3)             ## 00000180
	lh      a2, 0x0184(a3)             ## 00000184
	lui     t2, %hi(var_809BE8B0)      ## t2 = 809C0000
	lui     t3, %hi(var_809BE8C4)      ## t3 = 809C0000
	sll     t6, v0,  2                 
	sll     t7, a2,  2                 
	addu    t2, t2, t6                 
	addu    t3, t3, t7                 
	lw      t2, %lo(var_809BE8B0)(t2)  
	lw      t3, %lo(var_809BE8C4)(t3)  
	lw      t8, 0x0054($sp)            
	lw      a0, 0x0000(t8)             ## 00000000
	sw      t3, 0x0034($sp)            
	sw      t2, 0x0040($sp)            
	sw      a3, 0x0050($sp)            
	jal     func_8007E298              
	sw      a0, 0x002C($sp)            
	lui     t4, 0x8012                 ## t4 = 80120000
	lui     t5, 0x00FF                 ## t5 = 00FF0000
	ori     t5, t5, 0xFFFF             ## t5 = 00FFFFFF
	addiu   t4, t4, 0x0C38             ## t4 = 80120C38
	lw      v1, 0x002C($sp)            
	lui     t1, 0x8000                 ## t1 = 80000000
	lw      t2, 0x0040($sp)            
	lw      t3, 0x0034($sp)            
	lw      $ra, 0x0050($sp)           
	lw      v0, 0x02C0(v1)             ## 000002C0
	sll     t7, t2,  4                 
	srl     t8, t7, 28                 
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(v1)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0020             ## t6 = DB060020
	sll     t9, t8,  2                 
	addu    a1, t4, t9                 
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(a1)             ## 00000000
	and     a2, t2, t5                 
	addiu   t0, $ra, 0x013C            ## t0 = 0000013C
	addu    t7, t6, a2                 
	addu    t8, t7, t1                 
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(v1)             ## 000002C0
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t7, 0x0000(a1)             ## 00000000
	addu    t8, t7, a2                 
	addu    t9, t8, t1                 
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	sll     t8, t3,  4                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(v1)             ## 000002C0
	srl     t9, t8, 28                 
	ori     t7, t7, 0x0028             ## t7 = DB060028
	sll     t6, t9,  2                 
	sw      t7, 0x0000(v0)             ## 00000000
	addu    t7, t4, t6                 
	lw      t8, 0x0000(t7)             ## DB060028
	and     t9, t3, t5                 
	addu    t6, t8, t9                 
	addu    t7, t6, t1                 
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(v1)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	lui     t9, 0x800F                 ## t9 = 800F0000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(v1)             ## 000002C0
	addiu   t9, t9, 0x8520             ## t9 = 800E8520
	ori     t8, t8, 0x0030             ## t8 = DB060030
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      a1, 0x0004(t0)             ## 00000140
	lw      a2, 0x0020(t0)             ## 0000015C
	lbu     a3, 0x0002(t0)             ## 0000013E
	lui     t6, %hi(func_809BE688)     ## t6 = 809C0000
	addiu   t6, t6, %lo(func_809BE688) ## t6 = 809BE688
	sw      $ra, 0x0018($sp)           
	sw      t6, 0x0010($sp)            
	sw      $zero, 0x0014($sp)         
	jal     func_80089D8C              
	lw      a0, 0x0054($sp)            
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_809BE864:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x018C(a0)             ## 0000018C
	bltz    v0, lbl_809BE89C           
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_809BE89C   
	sll     t6, v0,  2                 
	lui     v1, %hi(var_809BF57C)      ## v1 = 809C0000
	addu    v1, v1, t6                 
	lw      v1, %lo(var_809BF57C)(v1)  
	beql    v1, $zero, lbl_809BE8A0    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v1                    
	nop
lbl_809BE89C:
	lw      $ra, 0x0014($sp)           
lbl_809BE8A0:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_809BE8B0: .word \
0x06002F48, 0x06003C48, 0x06003848, 0x06004848, \
0x06004E48
var_809BE8C4: .word \
0x06003588, 0x06004C48, 0x06003348, 0x06004448, \
0x06004648
var_809BE8D8: .word \
0x0000001D, 0x00000BB9, 0x00000020, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001F, 0x00000005, 0x00010000, 0x02640000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020264, 0x02650000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00040265, 0x02AC0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000202AC, 0x02DC0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0xC032AAAB, 0x00000000, 0x000302DC, 0x0B600000, \
0x00000000, 0x00000000, 0x00000052, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000000A, 0x00000003, \
0x000D0000, 0x01050000, 0x00000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00050105, 0x02580000, 0x95550000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00130258, 0x04DB0000, 0x15550000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000002B, 0x00000003, 0x00010000, 0x00A50000, \
0x00000000, 0xFFFFFF9E, 0x00000006, 0xFFFFFF57, \
0xFFFFFF9E, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x000200A5, 0x01D20000, \
0x00000000, 0xFFFFFF9E, 0x00000006, 0xFFFFFF57, \
0xFFFFFF9E, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x000301D2, 0x0BB90000, \
0x00000000, 0xFFFFFF9E, 0x00000006, 0xFFFFFF57, \
0xFFFFFF9E, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x0000002D, 0x00000001, \
0x0001024E, 0x025F025F, 0x0000002D, 0x00000001, \
0x00050269, 0x02870287, 0x0000002D, 0x00000001, \
0x0001036B, 0x03890389, 0x00000031, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0xFFFFFF9E, \
0x00000000, 0x00000062, 0xFFFFFF9E, 0x00000000, \
0x00000062, 0x00000000, 0x00000000, 0x00000000, \
0x0000003E, 0x00000001, 0x00040000, 0x0BB80000, \
0x00000000, 0xFFFFFFDD, 0x00000061, 0xFFFFFFC4, \
0xFFFFFFDD, 0x00000061, 0xFFFFFFC4, 0x00000000, \
0x00000000, 0x00000000, 0x000003E8, 0x00000001, \
0x006403CE, 0x041A041A, 0x00000013, 0x0000000A, \
0xFFFF0000, 0x012FFFFF, 0xFFFFFFFF, 0x106A012F, \
0x01430000, 0x00000000, 0xFFFF0143, 0x0158FFFF, \
0xFFFFFFFF, 0x108F0158, 0x018A0000, 0x00000000, \
0xFFFF018A, 0x019FFFFF, 0xFFFFFFFF, 0x1090019F, \
0x01D10000, 0x00000000, 0xFFFF01D1, 0x0367FFFF, \
0xFFFFFFFF, 0x003E0367, 0x036B0000, 0x00000000, \
0xFFFF036B, 0x03A8FFFF, 0xFFFFFFFF, 0x106B03A8, \
0x03B20000, 0x00000000, 0x00000056, 0x00000001, \
0x004402AE, 0x02AF0000, 0x00000000, 0x00000000, \
0xFFFFFFC5, 0x00000057, 0x00000000, 0xFFFFFFC5, \
0x00000057, 0x00000000, 0x00000000, 0x00000000, \
0x0000007C, 0x00000001, 0x00040226, 0x02580000, \
0x00000000, 0x00000000, 0xFFFFFFC4, 0x00000066, \
0x00000000, 0xFFFFFFC4, 0x00000066, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x04D90000, 0x00000000, 0x432A32CA, 0x009F0AC6, \
0x002B0072, 0x00000000, 0x432A32CA, 0x009F0AC6, \
0x002B006F, 0x00000000, 0x432A32CA, 0x009F0969, \
0x002B002F, 0x00000000, 0x432A32CA, 0x009F00CA, \
0x002B0073, 0x00000000, 0x4235998B, 0x009E00DE, \
0x002A0061, 0x00000000, 0x4235998B, 0x009E0095, \
0x002A006F, 0x00000000, 0x4235998B, 0x009E006F, \
0x002A006D, 0x00000000, 0x4235998B, 0x009E006F, \
0x002A0065, 0x00000000, 0x4235998B, 0x009E006F, \
0x002A0061, 0xFF000000, 0x4235998B, 0x009E006F, \
0x002A0061, 0x00000001, 0x000100BE, 0x01870000, \
0x00000000, 0x4223FFEE, 0xFFA50012, 0xFF620072, \
0x00000000, 0x4223FFEE, 0xFFA60011, 0xFF63006F, \
0x00000000, 0x4223FFEE, 0xFFA6001F, 0xFF63002F, \
0x00000000, 0x4223FFEE, 0xFFA60025, 0xFF630073, \
0x00000000, 0x4223FFEE, 0xFFA60025, 0xFF630061, \
0x00000000, 0x4223FFEE, 0xFFA60025, 0xFF63006F, \
0xFF000000, 0x4223FFEE, 0xFFA60025, 0xFF63006D, \
0x00000001, 0x00010107, 0x054A0000, 0x00000000, \
0x41C332EC, 0x00070061, 0x007F0072, 0x00000000, \
0x41C332EC, 0x00070061, 0x007F006F, 0x00000000, \
0x41C332EC, 0x00070061, 0x007F002F, 0x00000000, \
0x41C332EC, 0x00070061, 0x007F0073, 0xFF000000, \
0x41C332EC, 0x00070061, 0x007F0061, 0x00000001, \
0x0001014D, 0x05900000, 0x00000000, 0x4235998B, \
0xFEE90067, 0x00440072, 0x00000000, 0x4235998B, \
0xFEE90067, 0x0044006F, 0x00000000, 0x4235998B, \
0xFEE90067, 0x0044002F, 0x00000000, 0x4235998B, \
0xFEE90067, 0x00440073, 0xFF000000, 0x4235998B, \
0xFEE90067, 0x00440061, 0x00000001, 0x00010193, \
0x05D60000, 0x00000000, 0x4235998C, 0xFFCC0023, \
0xFFAD0072, 0x00000000, 0x4235998C, 0xFFCC0023, \
0xFFAD006F, 0x00000000, 0x4235998C, 0xFFCC0023, \
0xFFAD002F, 0x00000000, 0x4235998C, 0xFFCC0023, \
0xFFAD0073, 0xFF000000, 0x4235998C, 0xFFCC0023, \
0xFFAD0061, 0x00000001, 0x000101D9, 0x06B40000, \
0x00000000, 0x4235998C, 0xFFBF003D, 0xFF910072, \
0x00000000, 0x4235998C, 0xFFBF003D, 0xFF91006F, \
0x00000000, 0x4235998C, 0xFFCD004A, 0xFFAA002F, \
0x00000000, 0x42726668, 0x00000088, 0x000B0073, \
0x00000000, 0x42726668, 0x01820202, 0x02E00061, \
0x00000000, 0x42A0CCAE, 0x0243009C, 0x044B006F, \
0x00000000, 0x42A0CCAE, 0x0243009C, 0x044B006D, \
0x00000000, 0x424A665D, 0x0243009C, 0x044B0065, \
0x00000000, 0x424A665D, 0x0243009C, 0x044B0061, \
0x00000000, 0x424A665D, 0x0243009C, 0x044B0061, \
0xFF000000, 0x424A665D, 0x0243009C, 0x044B0072, \
0x00000001, 0x00010261, 0x03B70000, 0x00000000, \
0x42700000, 0x000D0356, 0x00020072, 0x00000000, \
0x42700000, 0x00090355, 0x0005006F, 0x00000000, \
0x42700000, 0xFFFD0355, 0x0005002F, 0x00000000, \
0x42700000, 0xFFF70355, 0xFFFA0073, 0x00000000, \
0x42700000, 0xFFFE0354, 0xFFEF0061, 0x00000000, \
0x42700000, 0x00090354, 0xFFEF006F, 0x00000000, \
0x42700000, 0x00100354, 0xFFFA006D, 0x00000000, \
0x42700000, 0x00090354, 0x00050065, 0xFF000000, \
0x42700000, 0xFFFD0353, 0x00050061, 0x00000005, \
0x000102AD, 0x074A0000, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE50072, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE5006F, 0x00000000, 0x4289332C, \
0x00000044, 0xFFE6002F, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE60073, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE60061, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE6006F, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE6006D, 0xFF000000, 0x4289332C, \
0x00000067, 0xFFE60065, 0x00000002, 0x00010000, \
0x04F60000, 0x0000001E, 0x432A32CA, 0x009A0A24, \
0x00290072, 0x0000001E, 0x432A32CA, 0x009A0A24, \
0x0029006F, 0x0000001E, 0x432A32CA, 0x009A08C8, \
0x0029002F, 0x0000001E, 0x432A32CA, 0x009A002A, \
0x00290073, 0x0000001E, 0x4270CCCD, 0x0052005E, \
0x00170061, 0x0000001E, 0x424BFFF7, 0x0021004F, \
0x0000006F, 0x0000001E, 0x4235998B, 0x001E003E, \
0xFFF2006D, 0x000003E8, 0x4235998B, 0x001E003E, \
0xFFF20065, 0x0000001E, 0x4235998B, 0x001E003E, \
0xFFF20061, 0xFF00001E, 0x4235998B, 0x001F003E, \
0xFFF20061, 0x00000002, 0x000100BE, 0x01A40000, \
0x00000032, 0x4223FFEE, 0x000D002A, 0x00140072, \
0x0000001E, 0x4223FFEE, 0x000C002F, 0x0012006F, \
0x0000001E, 0x4223FFEE, 0x000B0032, 0x0014002F, \
0x0000001E, 0x4223FFEE, 0x000B0035, 0x00140073, \
0x0000001E, 0x4223FFEE, 0x000B0035, 0x00140061, \
0x0000001E, 0x4223FFEE, 0x000B0035, 0x0014006F, \
0xFF00001E, 0x4223FFEE, 0x000B0035, 0x0014006D, \
0x00000002, 0x00010107, 0x05670000, 0x0000001E, \
0x41C332EC, 0xFFD60011, 0xFF6A0072, 0x0000001E, \
0x41C332EC, 0xFFD60011, 0xFF6A006F, 0x000003E8, \
0x41C332EC, 0xFFD60011, 0xFF6A002F, 0x0000001E, \
0x41C332EC, 0xFFD60011, 0xFF6A0073, 0xFF00001E, \
0x41C332EC, 0xFFD60011, 0xFF6A0061, 0x00000002, \
0x0001014D, 0x05AD0000, 0x0001001E, 0x4234CCBE, \
0xFFE6000D, 0xFFAB0072, 0x0000001E, 0x4235998B, \
0xFFE6000D, 0xFFAB006F, 0x000003E8, 0x4235998B, \
0xFFE6000D, 0xFFAB002F, 0x0000001E, 0x4235998B, \
0xFFE6000D, 0xFFAB0073, 0xFF00001E, 0x4235998B, \
0xFFE6000D, 0xFFAB0061, 0x00000002, 0x00010193, \
0x05F30000, 0x0000001E, 0x41F6662E, 0xFF1E000A, \
0xFE5D0072, 0x0000001E, 0x41F7FFC8, 0xFF1E000A, \
0xFE5D006F, 0x000003E8, 0x420E664F, 0xFF1E000A, \
0xFE5D002F, 0x0000001E, 0x42219987, 0xFF1E000A, \
0xFE5E0073, 0xFF00001E, 0x4235998C, 0xFF1E000A, \
0xFE5E0061, 0x00000002, 0x000101D9, 0x06D10000, \
0x0000001E, 0x4235998C, 0xFF26FFA8, 0xFE740072, \
0x0000001E, 0x4235998C, 0xFF26FFA8, 0xFE74006F, \
0x0000001E, 0x4235998C, 0xFF34FFB5, 0xFE8E002F, \
0x0000001E, 0x4282CCCC, 0xFF6BFFF6, 0xFEF30073, \
0x00000019, 0x428D998E, 0x011F00EF, 0x02270061, \
0x0000001E, 0x42A0CCAE, 0x023A01ED, 0x043B006F, \
0x0000000A, 0x42499990, 0x024201EC, 0x0449006D, \
0x0000001E, 0x424A665D, 0x024201EC, 0x04490065, \
0x000003E8, 0x424A665D, 0x024201EB, 0x04490061, \
0x0000001B, 0x424A665D, 0x024201EB, 0x04490061, \
0xFF00001E, 0x424A665D, 0x024201EB, 0x04490072, \
0x00000002, 0x00010261, 0x03E80000, 0x00000032, \
0x42700000, 0x00030006, 0xFFFA0072, 0x00000028, \
0x42700000, 0x00030006, 0xFFFA006F, 0x0000001E, \
0x424BFFF7, 0x00030006, 0xFFFA002F, 0x00000014, \
0x41A4CC7E, 0x00030006, 0xFFFA0073, 0x00000033, \
0x412CCC23, 0x00030006, 0xFFFA0061, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA006F, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA006D, 0x00000032, \
0x4123328A, 0x00030006, 0xFFFA0065, 0xFF000032, \
0x412FFF56, 0x00030006, 0xFFFA0061, 0x00000006, \
0x000102AD, 0x07670000, 0x0000001E, 0x4289332C, \
0x00000064, 0x00050072, 0x0000001E, 0x4289332C, \
0x00000065, 0x0006006F, 0x0000001E, 0x4289332C, \
0x00010063, 0x0029002F, 0x0000001E, 0x4289332C, \
0x0000002A, 0x00100073, 0x0000001E, 0x4289332C, \
0x0000002A, 0x00100061, 0x000003E8, 0x4289332C, \
0x0000002A, 0x0010006F, 0x0000001E, 0x4289332C, \
0x0000002A, 0x0010006D, 0xFF00001E, 0x4289332C, \
0x0000002A, 0x00100065, 0xFFFFFFFF, 0x00000000
var_809BF528: .word func_809BD404
.word func_809BD424
.word func_809BD444
.word func_809BD478
.word func_809BD4B8
.word func_809BD4F0
.word func_809BD530
.word func_809BD954
.word func_809BD974
.word func_809BD9BC
.word func_809BDC04
.word func_809BDF18
.word func_809BDF38
.word func_809BDF84
.word func_809BDFCC
.word func_809BE014
.word func_809BE450
.word func_809BE470
.word func_809BE4AC
.word func_809BE4EC
.word func_809BE52C
var_809BF57C: .word func_809BE6C0
.word func_809BE6D0
.word func_809BDA04
var_809BF588: .word 0x00C90400, 0x00000010, 0x00BC0000, 0x000001A4
.word func_809BE5C0
.word func_809BCD20
.word func_809BE578
.word func_809BE864
.word 0x00000000, 0x00000000

.section .rodata

var_809BF5B0: .word 0xC61C4000
var_809BF5B4: .word 0x42A6AAAB, 0x00000000, 0x00000000

