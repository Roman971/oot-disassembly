#include <mips.h>
.set noreorder
.set noat

.section .text
func_8095FA60:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, a0, 0x02A4             ## a2 = 000002A4
    or      a1, a2, $zero              ## a1 = 000002A4
    jal     func_80050B00              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0018($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FAA4:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, a0, 0x02F0             ## a2 = 000002F0
    or      a1, a2, $zero              ## a1 = 000002F0
    sw      a2, 0x0018($sp)            
    jal     func_80050B00              
    sw      a0, 0x0030($sp)            
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0018($sp)            
    lw      a3, 0x0034($sp)            
    lw      t6, 0x033C(a0)             ## 0000033C
    lui     $at, 0x4200                ## $at = 42000000
    beql    t6, $zero, lbl_8095FB00    
    mtc1    $at, $f4                   ## $f4 = 32.00
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a3, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_8095FB20 
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f4                   ## $f4 = 0.00
lbl_8095FB00:
    lwc1    $f6, 0x0090(a0)            ## 00000090
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8095FB20               
    lw      $ra, 0x0014($sp)           
    sw      t7, 0x033C(a0)             ## 0000033C
    lw      $ra, 0x0014($sp)           
lbl_8095FB20:
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FB2C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, a0, 0x02F0             ## a2 = 000002F0
    or      a1, a2, $zero              ## a1 = 000002F0
    jal     func_80050B00              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0018($sp)            
    jal     func_8004BD50              ## CollisionCheck_setAT
    addu    a1, a0, $at                
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FB70:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a1, s0, 0x02A4             ## a1 = 000002A4
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x002C($sp)            
    lui     a3, %hi(var_809655F0)      ## a3 = 80960000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_809655F0)  ## a3 = 809655F0
    lw      a0, 0x002C($sp)            
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x02F0             ## a1 = 000002F0
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x002C($sp)            
    lui     a3, %hi(var_8096561C)      ## a3 = 80960000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_8096561C)  ## a3 = 8096561C
    lw      a0, 0x002C($sp)            
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FBE8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x02A4             ## a1 = 000002A4
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x02F0             ## a1 = 000002F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FC28:
    sw      $zero, 0x033C(a0)          ## 0000033C
    jr      $ra                        
    nop


func_8095FC34:
    lh      v1, 0x001C(a0)             ## 0000001C
    sra     v1, v1,  8                 
    andi    v0, v1, 0x00FF             ## v0 = 00000000
    jr      $ra                        
    nop


func_8095FC48:
    lh      v1, 0x001C(a0)             ## 0000001C
    andi    v0, v1, 0x00FF             ## v0 = 00000000
    jr      $ra                        
    nop


func_8095FC58:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8095FBE8              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FC78:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x024E(a2)             ## 0000024E
    addiu   v1, a2, 0x024E             ## v1 = 0000024E
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t6, $zero, lbl_8095FCA0    
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    beq     $zero, $zero, lbl_8095FCB0 
    addiu   v1, a2, 0x024E             ## v1 = 0000024E
lbl_8095FCA0:
    lh      t7, 0x0000(v1)             ## 0000024E
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             ## 0000024E
    lh      v0, 0x0000(v1)             ## 0000024E
lbl_8095FCB0:
    bne     v0, $zero, lbl_8095FCD0    
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             ## 00000000
lbl_8095FCD0:
    lh      t9, 0x0000(v1)             ## 00000000
    addiu   v0, a2, 0x024C             ## v0 = 0000024C
    sh      t9, 0x0000(v0)             ## 0000024C
    lh      t0, 0x0000(v0)             ## 0000024C
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_8095FCF4   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          ## 0000024C
    lw      $ra, 0x0014($sp)           
lbl_8095FCF4:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FD00:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x024C(a0)             ## 0000024C
    jr      $ra                        
    nop


func_8095FD18:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0250(a0)             ## 00000250
    jr      $ra                        
    nop


func_8095FD30:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      a1, 0x002C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    lwc1    $f4, 0x0060(a1)            ## 00000060
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f6                   ## $f6 = -4.00
    swc1    $f4, 0x0020($sp)           
    lui     $at, 0x41F0                ## $at = 41F00000
    swc1    $f6, 0x0060(a1)            ## 00000060
    mtc1    $at, $f8                   ## $f8 = 30.00
    addiu   t6, $zero, 0x0007          ## t6 = 00000007
    sw      t6, 0x0014($sp)            
    sw      a1, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lui     a2, 0x4198                 ## a2 = 41980000
    lui     a3, 0x41C8                 ## a3 = 41C80000
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    lw      a1, 0x0028($sp)            
    lwc1    $f10, 0x0020($sp)          
    swc1    $f10, 0x0060(a1)           ## 00000060
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8095FD98:
    lbu     t6, 0x1D6C(a0)             ## 00001D6C
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t6, $zero, lbl_8095FDB0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095FDB0:
    jr      $ra                        
    nop


func_8095FDB8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      a0, 0x0028($sp)            
    jal     func_8095FD98              
    sw      $zero, 0x001C($sp)         
    bne     v0, $zero, lbl_8095FDF0    
    lw      v1, 0x001C($sp)            
    lw      t7, 0x002C($sp)            
    lw      t6, 0x0028($sp)            
    sll     t8, t7,  2                 
    addu    t9, t6, t8                 
    lw      v1, 0x1D8C(t9)             ## 00001D8C
lbl_8095FDF0:
    or      v0, v1, $zero              ## v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095FE04:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8095FDB8              
    or      a1, a2, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_8095FE38    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x001E($sp)            
    lhu     t7, 0x0000(v0)             ## 00000000
    bnel    t6, t7, lbl_8095FE3C       
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     $zero, $zero, lbl_8095FE3C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095FE38:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8095FE3C:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_8095FE44:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8095FDB8              
    or      a1, a2, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_8095FE78    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x001E($sp)            
    lhu     t7, 0x0000(v0)             ## 00000000
    beql    t6, t7, lbl_8095FE7C       
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     $zero, $zero, lbl_8095FE7C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095FE78:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8095FE7C:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_8095FE84:
    lw      v0, 0x1C54(a1)             ## 00001C54
    addiu   t0, $zero, 0x0018          ## t0 = 00000018
    addiu   a3, $zero, 0x0020          ## a3 = 00000020
    beq     v0, $zero, lbl_8095FEE0    
    addiu   a2, $zero, 0x001F          ## a2 = 0000001F
    addiu   a1, $zero, 0x00A1          ## a1 = 000000A1
    lh      t6, 0x0000(v0)             ## 00000000
lbl_8095FEA0:
    bnel    a1, t6, lbl_8095FED8       
    lw      v0, 0x0124(v0)             ## 00000124
    beql    v0, a0, lbl_8095FED8       
    lw      v0, 0x0124(v0)             ## 00000124
    lw      v1, 0x0254(v0)             ## 00000254
    beq     a2, v1, lbl_8095FECC       
    nop
    beq     a3, v1, lbl_8095FECC       
    nop
    bnel    t0, v1, lbl_8095FED8       
    lw      v0, 0x0124(v0)             ## 00000124
lbl_8095FECC:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095FED4:
    lw      v0, 0x0124(v0)             ## 00000125
lbl_8095FED8:
    bnel    v0, $zero, lbl_8095FEA0    
    lh      t6, 0x0000(v0)             ## 00000001
lbl_8095FEE0:
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    nop


func_8095FEEC:
    lw      v1, 0x1C3C(a0)             ## 00001C3C
    addiu   v0, $zero, 0x00C8          ## v0 = 000000C8
    beql    v1, $zero, lbl_8095FF2C    
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t6, 0x0000(v1)             ## 00000000
lbl_8095FF00:
    bnel    v0, t6, lbl_8095FF20       
    lw      v1, 0x0124(v1)             ## 00000124
    lh      t7, 0x001C(v1)             ## 0000001C
    bnel    t7, $zero, lbl_8095FF20    
    lw      v1, 0x0124(v1)             ## 00000124
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 00000000
lbl_8095FF1C:
    lw      v1, 0x0124(v1)             ## 00000124
lbl_8095FF20:
    bnel    v1, $zero, lbl_8095FF00    
    lh      t6, 0x0000(v1)             ## 00000000
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8095FF2C:
    jr      $ra                        
    nop


func_8095FF34:
    lw      v0, 0x027C(a0)             ## 0000027C
    beq     v0, $zero, lbl_8095FF44    
    nop
    sw      a1, 0x01A8(v0)             ## 000001A8
lbl_8095FF44:
    jr      $ra                        
    nop


func_8095FF4C:
    lw      v1, 0x027C(a0)             ## 0000027C
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     v1, $zero, lbl_8095FF64    
    nop
    jr      $ra                        
    lw      v0, 0x01A8(v1)             ## 000001A8
lbl_8095FF64:
    jr      $ra                        
    nop


func_8095FF6C:
    lw      v1, 0x1C7C(a0)             ## 00001C7C
    addiu   a0, $zero, 0x0015          ## a0 = 00000015
    addiu   v0, $zero, 0x008B          ## v0 = 0000008B
    beql    v1, $zero, lbl_8095FFB4    
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t6, 0x0000(v1)             ## 00000000
lbl_8095FF84:
    bnel    v0, t6, lbl_8095FFA8       
    lw      v1, 0x0124(v1)             ## 00000124
    lh      t7, 0x001C(v1)             ## 0000001C
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    bnel    a0, t8, lbl_8095FFA8       
    lw      v1, 0x0124(v1)             ## 00000124
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 00000000
lbl_8095FFA4:
    lw      v1, 0x0124(v1)             ## 00000124
lbl_8095FFA8:
    bnel    v1, $zero, lbl_8095FF84    
    lh      t6, 0x0000(v1)             ## 00000000
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8095FFB4:
    jr      $ra                        
    nop


func_8095FFBC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    xori    v0, v0, 0x0005             ## v0 = 00000005
    sltiu   v0, v0, 0x0001             
    beql    v0, $zero, lbl_8095FFF4    
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x0018($sp)            
    sltu    v0, $zero, v0              
    lw      $ra, 0x0014($sp)           
lbl_8095FFF4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960000:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    jal     func_800DD464              
    addiu   a0, a1, 0x20D8             ## a0 = 000020D8
    xori    v0, v0, 0x0002             ## v0 = 00000002
    sltiu   v0, v0, 0x0001             
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096002C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    sll     t6, a1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    lui     t9, 0x8012                 ## t9 = 80120000
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t0, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    a0, t9, t0                 
    addu    a0, a0, $at                
    jal     func_8008A194              
    sw      a0, 0x002C($sp)            
    lw      t1, 0x0048($sp)            
    lw      a0, 0x0038($sp)            
    lw      a1, 0x002C($sp)            
    bne     t1, $zero, lbl_809600A4    
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $at, $f12                  ## $f12 = 1.00
    beq     $zero, $zero, lbl_809600B8 
    cvt.s.w $f2, $f4                   
lbl_809600A4:
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $zero, $f2                 ## $f2 = 0.00
    mtc1    $at, $f12                  ## $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_809600B8:
    lbu     t2, 0x0043($sp)            
    lwc1    $f8, 0x0044($sp)           
    mfc1    a2, $f12                   
    mfc1    a3, $f0                    
    swc1    $f2, 0x0010($sp)           
    sw      t2, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809600E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    lw      t6, 0x0254(a1)             ## 00000254
    addiu   $at, $zero, 0x0020         ## $at = 00000020
    beq     t6, $at, lbl_80960114      
    nop
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    beq     $zero, $zero, lbl_80960120 
    lw      $ra, 0x0014($sp)           
lbl_80960114:
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80960120:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096012C:
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


func_8096016C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x0171(a0)             ## 00000171
    ori     t7, t6, 0x0001             ## t7 = 00000001
    jal     func_8096012C              
    sb      t7, 0x0171(a0)             ## 00000171
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960194:
    lbu     t6, 0x0171(a0)             ## 00000171
    andi    t7, t6, 0xFFFE             ## t7 = 00000000
    sb      t7, 0x0171(a0)             ## 00000171
    jr      $ra                        
    nop


func_809601A8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0690             ## a1 = 06000690
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8096002C              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   a1, $zero, 0x0004          ## a1 = 00000004
    sw      $zero, 0x0254(a0)          ## 00000254
    jal     func_8095FD00              
    sw      t6, 0x0258(a0)             ## 00000258
    lw      a0, 0x0020($sp)            
    jal     func_8095FD18              
    or      a1, $zero, $zero           ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960204:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8095FDB8              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960224:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    andi    a1, a1, 0xFFFF             ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    jal     func_8095FE04              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096024C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    andi    a1, a1, 0xFFFF             ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    jal     func_8095FE44              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960274:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    lh      a3, 0x003A($sp)            
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0030($sp)            
    lh      t7, 0x003E($sp)            
    lw      a0, 0x0034($sp)            
    lwc1    $f4, 0x0024(t6)            ## 00000024
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    swc1    $f4, 0x0024($sp)           
    lwc1    $f8, 0x0084(t6)            ## 00000084
    lwc1    $f6, 0x0028(t6)            ## 00000028
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x002C(t6)           ## 0000002C
    sw      t7, 0x0010($sp)            
    jal     func_8001CF3C              
    swc1    $f16, 0x002C($sp)          
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809602DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x0260(a0)            ## 00000260
    lui     v0, 0x8012                 ## v0 = 80120000
    lui     $at, 0x4120                ## $at = 41200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   ## $f4 = 10.00
    swc1    $f8, 0x0260(a0)            ## 00000260
    lw      v0, -0x4600(v0)            ## 8011BA00
    lwc1    $f10, 0x0260(a0)           ## 00000260
    lh      t6, 0x145A(v0)             ## 8012145A
    mtc1    t6, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    add.s   $f6, $f18, $f4             
    c.le.s  $f6, $f10                  
    nop
    bc1fl   lbl_80960360               
    lw      $ra, 0x0014($sp)           
    lh      a2, 0x1456(v0)             ## 80121456
    sw      a0, 0x0018($sp)            
    or      a3, $zero, $zero           ## a3 = 00000000
    addiu   a2, a2, 0x01F4             ## a2 = 000001F4
    sll     a2, a2, 16                 
    jal     func_80960274              
    sra     a2, a2, 16                 
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f8                 ## $f8 = 0.00
    nop
    swc1    $f8, 0x0260(a0)            ## 00000260
    lw      $ra, 0x0014($sp)           
lbl_80960360:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096036C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lh      a2, 0x1458(t6)             ## 80121458
    or      a3, $zero, $zero           ## a3 = 00000000
    addiu   a2, a2, 0x01F4             ## a2 = 000001F4
    sll     a2, a2, 16                 
    jal     func_80960274              
    sra     a2, a2, 16                 
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x4600(v0)            ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lh      t7, 0x145A(v0)             ## 8012145A
    lh      a2, 0x1458(v0)             ## 80121458
    lw      a0, 0x0018($sp)            
    mtc1    t7, $f4                    ## $f4 = 0.00
    addiu   a2, a2, 0x01F4             ## a2 = 000001F4
    sll     a2, a2, 16                 
    cvt.s.w $f6, $f4                   
    sra     a2, a2, 16                 
    lw      a1, 0x001C($sp)            
    add.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    a3, $f16                   
    nop
    sll     a3, a3, 16                 
    jal     func_80960274              
    sra     a3, a3, 16                 
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x4600(v0)            ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lh      t9, 0x145A(v0)             ## 8012145A
    lh      a2, 0x1458(v0)             ## 80121458
    lw      a0, 0x0018($sp)            
    mtc1    t9, $f18                   ## $f18 = 0.00
    addiu   a2, a2, 0x01F4             ## a2 = 000001F4
    sll     a2, a2, 16                 
    cvt.s.w $f4, $f18                  
    sra     a2, a2, 16                 
    lw      a1, 0x001C($sp)            
    add.s   $f0, $f4, $f6              
    add.s   $f8, $f0, $f0              
    trunc.w.s $f10, $f8                  
    mfc1    a3, $f10                   
    nop
    sll     a3, a3, 16                 
    jal     func_80960274              
    sra     a3, a3, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960458:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0030($sp)            
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    lw      a0, 0x0034($sp)            
    lwc1    $f4, 0x0024(t6)            ## 00000024
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    or      a2, $zero, $zero           ## a2 = 00000000
    swc1    $f4, 0x0024($sp)           
    lwc1    $f8, 0x0084(t6)            ## 00000084
    lwc1    $f6, 0x0028(t6)            ## 00000028
    or      a3, $zero, $zero           ## a3 = 00000000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x002C(t6)           ## 0000002C
    sw      $zero, 0x0014($sp)         
    sw      t7, 0x0010($sp)            
    jal     func_8001CF94              
    swc1    $f16, 0x002C($sp)          
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809604BC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      t8, 0x015C(t6)             ## 0000015C
    lh      t7, 0x017C(t6)             ## 0000017C
    addiu   a2, t6, 0x013C             ## a2 = 0000013C
    lh      t9, 0x0002(t8)             ## 00000002
    slt     $at, t7, t9                
    beql    $at, $zero, lbl_8096050C   
    lw      $ra, 0x0014($sp)           
    lbu     t0, 0x0035(a2)             ## 00000171
    lui     a3, 0x3F80                 ## a3 = 3F800000
    ori     t1, t0, 0x0003             ## t1 = 00000003
    sb      t1, 0x0035(a2)             ## 00000171
    lw      a1, 0x0018($sp)            
    jal     func_8008B778              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_8096050C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960518:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x015C(s0)             ## 0000015C
    lw      t9, 0x015C(s0)             ## 0000015C
    lw      t3, 0x015C(s0)             ## 0000015C
    lwl     t8, 0x0000(t6)             ## 00000000
    lwr     t8, 0x0003(t6)             ## 00000003
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    swl     t8, 0x017A(s0)             ## 0000017A
    swr     t8, 0x017D(s0)             ## 0000017D
    lhu     t8, 0x0004(t6)             ## 00000004
    lh      t2, 0x017C(s0)             ## 0000017C
    sh      t8, 0x017E(s0)             ## 0000017E
    lwl     t1, 0x0000(t9)             ## 00000000
    lwr     t1, 0x0003(t9)             ## 00000003
    swl     t1, 0x0174(s0)             ## 00000174
    swr     t1, 0x0177(s0)             ## 00000177
    lhu     t1, 0x0004(t9)             ## 00000004
    sh      t1, 0x0178(s0)             ## 00000178
    lh      t4, 0x0002(t3)             ## 00000002
    slt     $at, t2, t4                
    beql    $at, $zero, lbl_809605A0   
    lw      $ra, 0x001C($sp)           
    lbu     t5, 0x0035(a2)             ## 00000171
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a3, 0x3F80                 ## a3 = 3F800000
    ori     t6, t5, 0x0003             ## t6 = 00000003
    sb      t6, 0x0035(a2)             ## 00000171
    jal     func_8008B778              
    lw      a0, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_809605A0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809605B0:
    lbu     t6, 0x0171(a0)             ## 00000171
    andi    t7, t6, 0xFFFC             ## t7 = 00000000
    sb      t7, 0x0171(a0)             ## 00000171
    jr      $ra                        
    nop


func_809605C4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     v0, 0x1D74(a1)             ## 00001D74
    lhu     v1, 0x0004(a0)             ## 00000004
    slt     $at, v0, v1                
    beql    $at, $zero, lbl_80960648   
    lui     $at, 0x3F80                ## $at = 3F800000
    lhu     a1, 0x0002(a0)             ## 00000002
    subu    a2, v1, a1                 
    blez    a2, lbl_80960644           
    subu    t6, v0, a1                 
    mtc1    t6, $f4                    ## $f4 = 0.00
    mtc1    a2, $f8                    ## $f8 = 0.00
    lui     $at, 0x4700                ## $at = 47000000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  ## $f18 = 32768.00
    cvt.s.w $f10, $f8                  
    div.s   $f16, $f6, $f10            
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f8, $f4                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, 0xBF00                ## $at = BF000000
    mtc1    $at, $f6                   ## $f6 = -0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    mul.s   $f10, $f0, $f6             
    beq     $zero, $zero, lbl_80960650 
    add.s   $f0, $f10, $f16            
lbl_80960644:
    lui     $at, 0x3F80                ## $at = 3F800000
lbl_80960648:
    mtc1    $at, $f0                   ## $f0 = 1.00
    nop
lbl_80960650:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960660:
    mtc1    a1, $f4                    ## $f4 = 0.00
    mtc1    a2, $f6                    ## $f6 = 0.00
    cvt.s.w $f2, $f4                   
    cvt.s.w $f8, $f6                   
    sub.s   $f10, $f8, $f2             
    mul.s   $f16, $f10, $f12           
    add.s   $f0, $f16, $f2             
    jr      $ra                        
    nop


func_80960684:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a1, $zero              ## a0 = 00000000
    jal     func_80960204              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_809606EC    
    lw      a2, 0x0018($sp)            
    lh      v1, 0x0008(v0)             ## 00000008
    sh      v1, 0x00B6(a2)             ## 000000B6
    sh      v1, 0x0032(a2)             ## 00000032
    lw      t6, 0x000C(v0)             ## 0000000C
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a2)            ## 00000024
    lw      t7, 0x0010(v0)             ## 00000010
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a2)           ## 00000028
    lw      t8, 0x0014(v0)             ## 00000014
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a2)           ## 0000002C
lbl_809606EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809606FC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80960684              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096071C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80960684              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096073C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809604BC              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096075C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_80960204              
    lw      a0, 0x003C($sp)            
    beq     v0, $zero, lbl_809607E0    
    or      s0, v0, $zero              ## s0 = 00000000
    or      a0, v0, $zero              ## a0 = 00000000
    jal     func_809605C4              
    lw      a1, 0x003C($sp)            
    swc1    $f0, 0x0030($sp)           
    lw      a2, 0x0018(s0)             ## 00000018
    lw      a1, 0x000C(s0)             ## 0000000C
    jal     func_80960660              
    mov.s   $f12, $f0                  
    lw      v0, 0x0038($sp)            
    swc1    $f0, 0x0024(v0)            ## 00000024
    lw      a2, 0x001C(s0)             ## 0000001C
    lw      a1, 0x0010(s0)             ## 00000010
    addiu   v0, v0, 0x0024             ## v0 = 00000024
    sw      v0, 0x0024($sp)            
    jal     func_80960660              
    lwc1    $f12, 0x0030($sp)          
    lw      t6, 0x0024($sp)            
    swc1    $f0, 0x0004(t6)            ## 00000004
    lw      a2, 0x0020(s0)             ## 00000020
    lw      a1, 0x0014(s0)             ## 00000014
    jal     func_80960660              
    lwc1    $f12, 0x0030($sp)          
    lw      t7, 0x0024($sp)            
    swc1    $f0, 0x0008(t7)            ## 00000008
lbl_809607E0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809607F4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809604BC              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960814:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    jal     func_80960204              
    lw      a0, 0x0044($sp)            
    beq     v0, $zero, lbl_809608D0    
    or      s0, v0, $zero              ## s0 = 00000000
    or      a0, v0, $zero              ## a0 = 00000000
    jal     func_809605C4              
    lw      a1, 0x0044($sp)            
    lw      v0, 0x0040($sp)            
    swc1    $f0, 0x0030($sp)           
    lw      a2, 0x0018(s0)             ## 00000018
    lwc1    $f4, 0x0354(v0)            ## 00000354
    addiu   v0, v0, 0x0354             ## v0 = 00000354
    sw      v0, 0x0024($sp)            
    trunc.w.s $f6, $f4                   
    mov.s   $f12, $f0                  
    mfc1    a1, $f6                    
    jal     func_80960660              
    nop
    lw      v0, 0x0040($sp)            
    swc1    $f0, 0x0024(v0)            ## 00000024
    lw      t7, 0x0024($sp)            
    lw      a2, 0x001C(s0)             ## 0000001C
    addiu   v0, v0, 0x0024             ## v0 = 00000024
    lwc1    $f8, 0x0004(t7)            ## 00000004
    sw      v0, 0x0020($sp)            
    lwc1    $f12, 0x0030($sp)          
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f10                   
    jal     func_80960660              
    nop
    lw      t9, 0x0020($sp)            
    swc1    $f0, 0x0004(t9)            ## 00000004
    lw      t0, 0x0024($sp)            
    lw      a2, 0x0020(s0)             ## 00000020
    lwc1    $f12, 0x0030($sp)          
    lwc1    $f16, 0x0008(t0)           ## 00000008
    trunc.w.s $f18, $f16                 
    mfc1    a1, $f18                   
    jal     func_80960660              
    nop
    lw      t2, 0x0020($sp)            
    swc1    $f0, 0x0008(t2)            ## 00000008
lbl_809608D0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809608E4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lw      t6, 0x0288(a2)             ## 00000288
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    addiu   a1, $zero, 0x2889          ## a1 = 00002889
    bnel    t6, $zero, lbl_8096091C    
    lw      $ra, 0x0014($sp)           
    jal     func_80064780              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t7, 0x0288(a2)             ## 00000288
    lw      $ra, 0x0014($sp)           
lbl_8096091C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960928:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x40A0                 ## a1 = 40A00000
    jal     func_8008D6A8              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beq     v0, $zero, lbl_80960958    
    lw      a0, 0x0018($sp)            
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x0863          ## a1 = 00000863
lbl_80960958:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960968:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0020($sp)            
    lw      s0, 0x0020($sp)            
    lui     a1, 0x4080                 ## a1 = 40800000
    addiu   s0, s0, 0x013C             ## s0 = 0000013C
    jal     func_8008D6A8              
    or      a0, s0, $zero              ## a0 = 0000013C
    bne     v0, $zero, lbl_809609C4    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x4150                 ## a1 = 41500000
    bne     v0, $zero, lbl_809609C4    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x41B0                 ## a1 = 41B00000
    bne     v0, $zero, lbl_809609C4    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x41F8                 ## a1 = 41F80000
    beql    v0, $zero, lbl_809609D8    
    lw      $ra, 0x001C($sp)           
lbl_809609C4:
    lw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x0839          ## a1 = 00000839
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    lw      $ra, 0x001C($sp)           
lbl_809609D8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809609E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x4100                 ## a1 = 41000000
    jal     func_8008D6A8              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beq     v0, $zero, lbl_80960A18    
    lw      a0, 0x0018($sp)            
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x0873          ## a1 = 00000873
lbl_80960A18:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960A28:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    addiu   $at, $zero, 0x00CD         ## $at = 000000CD
    lui     a3, 0x8010                 ## a3 = 80100000
    lhu     t7, 0x1D74(t6)             ## 00001D74
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   a0, $zero, 0x2889          ## a0 = 00002889
    bne     t7, $at, lbl_80960A70      
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    lw      v0, 0x1C44(t6)             ## 00001C44
    lui     t8, 0x8010                 ## t8 = 80100000
    addiu   t8, t8, 0x43A8             ## t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, v0, 0x00E4             ## a1 = 000000E4
lbl_80960A70:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960A80:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lhu     t6, 0x1D74(a1)             ## 00001D74
    addiu   $at, $zero, 0x0082         ## $at = 00000082
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    bnel    t6, $at, lbl_80960AAC      
    lw      $ra, 0x0014($sp)           
    jal     func_80064780              
    addiu   a1, $zero, 0x6863          ## a1 = 00006863
    lw      $ra, 0x0014($sp)           
lbl_80960AAC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960AB8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80960B0C    
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x2E94             ## a0 = 06012E94
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x2E94             ## a1 = 06012E94
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
lbl_80960B0C:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960B1C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8096024C              
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    beq     v0, $zero, lbl_80960B80    
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0254(s0)             ## 00000254
    sw      $zero, 0x0258(s0)          ## 00000258
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809606FC              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960458              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096036C              
    or      a1, s1, $zero              ## a1 = 00000000
lbl_80960B80:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80960B94:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8096024C              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    beq     v0, $zero, lbl_80960C28    
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x9060             ## a0 = 06009060
    mtc1    v0, $f4                    ## $f4 = 0.00
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0044($sp)            
    cvt.s.w $f6, $f4                   
    jal     func_8096071C              
    swc1    $f6, 0x0034($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960518              
    lw      a1, 0x0044($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f8, 0x0034($sp)           
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x9060             ## a1 = 06009060
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    swc1    $f8, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sw      t7, 0x0254(s0)             ## 00000254
    sw      t8, 0x0258(s0)             ## 00000258
lbl_80960C28:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960C3C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    beq     a2, $zero, lbl_80960CB4    
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x3A64             ## a0 = 06013A64
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      a0, 0x0038($sp)            
    cvt.s.w $f6, $f4                   
    jal     func_809605B0              
    swc1    $f6, 0x002C($sp)           
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f10                  ## $f10 = -8.00
    lw      a0, 0x0038($sp)            
    lwc1    $f8, 0x002C($sp)           
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x3A64             ## a1 = 06013A64
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0014($sp)         
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    swc1    $f10, 0x0018($sp)          
    jal     func_8008D17C              
    swc1    $f8, 0x0010($sp)           
    lw      t7, 0x0038($sp)            
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x0254(t7)             ## 00000254
    beq     $zero, $zero, lbl_80960CC0 
    lw      $ra, 0x0024($sp)           
lbl_80960CB4:
    jal     func_8096073C              
    lw      a0, 0x0038($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80960CC0:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960CCC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_80960224              
    addiu   a1, $zero, 0x0006          ## a1 = 00000006
    beq     v0, $zero, lbl_80960D54    
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8AA8             ## a0 = 06008AA8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      a0, 0x0038($sp)            
    lw      a1, 0x003C($sp)            
    cvt.s.w $f6, $f4                   
    jal     func_80960518              
    swc1    $f6, 0x002C($sp)           
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f10                  ## $f10 = -8.00
    lw      a0, 0x0038($sp)            
    lwc1    $f8, 0x002C($sp)           
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x8AA8             ## a1 = 06008AA8
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    swc1    $f10, 0x0018($sp)          
    jal     func_8008D17C              
    swc1    $f8, 0x0010($sp)           
    lw      t8, 0x0038($sp)            
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    sw      t7, 0x0254(t8)             ## 00000254
lbl_80960D54:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960D64:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lw      a0, 0x001C($sp)            
    addiu   a1, $zero, 0x0006          ## a1 = 00000006
    jal     func_8096024C              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80960DC4    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_809605B0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    lw      t8, 0x0024(a2)             ## 00000024
    lw      t7, 0x0028(a2)             ## 00000028
    sw      t6, 0x0254(a2)             ## 00000254
    sw      t8, 0x0354(a2)             ## 00000354
    lw      t8, 0x002C(a2)             ## 0000002C
    sw      t7, 0x0358(a2)             ## 00000358
    sw      t8, 0x035C(a2)             ## 0000035C
    beq     $zero, $zero, lbl_80960DD4 
    lw      $ra, 0x0014($sp)           
lbl_80960DC4:
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_809607F4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80960DD4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960DE0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_80960204              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80960E68    
    lw      t6, 0x002C($sp)            
    lhu     a0, 0x0004(v0)             ## 00000004
    lhu     v1, 0x1D74(t6)             ## 00001D74
    addiu   t7, a0, 0xFFFE             ## t7 = FFFFFFFE
    slt     $at, v1, t7                
    bne     $at, $zero, lbl_80960E68   
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8100             ## a0 = 06008100
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x8100             ## a1 = 06008100
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0006          ## t9 = 00000006
    sw      t9, 0x0254(t0)             ## 00000254
lbl_80960E68:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960E78:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_80960224              
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    beq     v0, $zero, lbl_80960EB0    
    lw      t6, 0x0020($sp)            
    beql    t6, $zero, lbl_80960EB4    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
lbl_80960EB0:
    lw      $ra, 0x0014($sp)           
lbl_80960EB4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960EC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80960684              
    lw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80960A80              
    lw      a1, 0x001C($sp)            
    jal     func_80960A28              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80960B1C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960F14:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809608E4              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80960B94              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960F48:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_809600E8              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_80960928              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80960C3C              
    lw      a2, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960F98:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096075C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809602DC              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960CCC              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80960FF8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809602DC              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960AB8              
    lw      a1, 0x0024($sp)            
    jal     func_809609E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960D64              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096106C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960814              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809602DC              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960AB8              
    lw      a1, 0x0024($sp)            
    jal     func_80960968              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80960DE0              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809610EC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809602DC              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_80960E78              
    lw      a2, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961150:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     v0, 0x8012                 ## v0 = 80120000
    lhu     v0, -0x4B10(v0)            ## 8011B4F0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    andi    t6, v0, 0x0002             ## t6 = 00000000
    bne     t6, $zero, lbl_809611AC    
    andi    t8, v0, 0x0080             ## t8 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8096002C              
    sw      $zero, 0x0010($sp)         
    addiu   t7, $zero, 0x0007          ## t7 = 00000007
    sw      t7, 0x0254(s0)             ## 00000254
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD18              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beq     $zero, $zero, lbl_80961234 
    lw      $ra, 0x0024($sp)           
lbl_809611AC:
    beq     t8, $zero, lbl_80961228    
    andi    t9, v0, 0x0001             ## t9 = 00000000
    bne     t9, $zero, lbl_80961228    
    andi    t0, v0, 0x0020             ## t0 = 00000000
    bne     t0, $zero, lbl_80961228    
    nop
    jal     func_8095FE84              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80961218    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8096002C              
    sw      $zero, 0x0010($sp)         
    lb      v0, 0x0003(s0)             ## 00000003
    addiu   t1, $zero, 0x0016          ## t1 = 00000016
    addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
    sw      t1, 0x0254(s0)             ## 00000254
    sb      t2, 0x0003(s0)             ## 00000003
    sw      $zero, 0x0258(s0)          ## 00000258
    sb      v0, 0x0274(s0)             ## 00000274
    sb      v0, 0x0276(s0)             ## 00000276
    sb      v0, 0x0275(s0)             ## 00000275
    beq     $zero, $zero, lbl_80961234 
    lw      $ra, 0x0024($sp)           
lbl_80961218:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80961234 
    lw      $ra, 0x0024($sp)           
lbl_80961228:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80961234:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961244:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4100                ## $at = 41000000
    lwc1    $f0, 0x025C(a0)            ## 0000025C
    mtc1    $at, $f4                   ## $f4 = 8.00
    lui     t6, 0x8012                 ## t6 = 80120000
    lui     t8, 0x8012                 ## t8 = 80120000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_809612B4               
    nop
    lw      t6, -0x4600(t6)            ## 8011BA00
    lui     $at, %hi(var_80966820)     ## $at = 80960000
    lwc1    $f10, %lo(var_80966820)($at) 
    lh      t7, 0x145A(t6)             ## 8012145A
    lui     $at, %hi(var_80966824)     ## $at = 80960000
    lwc1    $f18, %lo(var_80966824)($at) 
    mtc1    t7, $f6                    ## $f6 = 0.00
    lui     $at, 0x3E00                ## $at = 3E000000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f6                   ## $f6 = 0.13
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f10, $f8, $f0             
    beq     $zero, $zero, lbl_809612E4 
    swc1    $f10, 0x0068(a0)           ## 00000068
lbl_809612B4:
    lw      t8, -0x4600(t8)            ## 8011BA00
    lui     $at, %hi(var_80966828)     ## $at = 80960000
    lwc1    $f4, %lo(var_80966828)($at) 
    lh      t9, 0x145A(t8)             ## 8012145A
    lui     $at, %hi(var_8096682C)     ## $at = 80960000
    lwc1    $f8, %lo(var_8096682C)($at) 
    mtc1    t9, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(a0)           ## 00000068
lbl_809612E4:
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f16                  ## $f16 = -1.00
    jal     func_8002121C              
    swc1    $f16, 0x0060(a0)           ## 00000060
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961304:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    jal     func_8002121C              
    swc1    $f4, 0x0060(a0)            ## 00000060
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096132C:
    lui     $at, 0x4100                ## $at = 41000000
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $at, $f2                   ## $f2 = 8.00
    sw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x025C(a0)            ## 0000025C
    lui     $at, 0x3E00                ## $at = 3E000000
    addiu   v0, a0, 0x025C             ## v0 = 0000025C
    c.lt.s  $f4, $f2                   
    nop
    bc1fl   lbl_809613E0               
    mtc1    $zero, $f6                 ## $f6 = 0.00
    mtc1    $at, $f0                   ## $f0 = 0.13
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f8                   ## $f8 = 1.00
    lwc1    $f6, 0x0000(v0)            ## 0000025C
    addiu   v1, a0, 0x0068             ## v1 = 00000068
    lui     t6, 0x8012                 ## t6 = 80120000
    add.s   $f10, $f6, $f8             
    lui     $at, %hi(var_80966830)     ## $at = 80960000
    swc1    $f10, 0x0000(v0)           ## 0000025C
    lwc1    $f18, 0x0000(v0)           ## 0000025C
    lwc1    $f16, 0x0000(v1)           ## 00000068
    sub.s   $f4, $f2, $f18             
    mul.s   $f6, $f4, $f0              
    nop
    mul.s   $f8, $f16, $f6             
    swc1    $f8, 0x0000(v1)            ## 00000068
    lw      t6, -0x4600(t6)            ## 8011BA00
    lwc1    $f4, %lo(var_80966830)($at) 
    lui     $at, 0x4150                ## $at = 41500000
    lh      t7, 0x145C(t6)             ## 8012145C
    mtc1    $at, $f6                   ## $f6 = 13.00
    mtc1    t7, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    mul.s   $f16, $f18, $f4            
    lwc1    $f18, 0x0000(v0)           ## 0000025C
    neg.s   $f4, $f18                  
    add.s   $f8, $f16, $f6             
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f16, $f10, $f4            
    beq     $zero, $zero, lbl_8096141C 
    swc1    $f16, 0x0060(a0)           ## 00000060
    mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_809613E0:
    lui     t8, 0x8012                 ## t8 = 80120000
    lui     $at, %hi(var_80966834)     ## $at = 80960000
    swc1    $f6, 0x0068(a0)            ## 00000068
    lw      t8, -0x4600(t8)            ## 8011BA00
    lwc1    $f10, %lo(var_80966834)($at) 
    lui     $at, 0x4150                ## $at = 41500000
    lh      t9, 0x145C(t8)             ## 8012145C
    mtc1    $at, $f16                  ## $f16 = 13.00
    mtc1    t9, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f18, $f8                  
    mul.s   $f4, $f18, $f10            
    add.s   $f6, $f4, $f16             
    neg.s   $f8, $f6                   
    swc1    $f8, 0x0060(a0)            ## 00000060
lbl_8096141C:
    jal     func_8002121C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961434:
    lw      v0, 0x1C44(a1)             ## 00001C44
    lwc1    $f0, 0x002C(a0)            ## 0000002C
    lui     $at, %hi(var_80966838)     ## $at = 80960000
    lwc1    $f2, 0x002C(v0)            ## 0000002C
    lwc1    $f4, %lo(var_80966838)($at) 
    sub.s   $f6, $f2, $f0              
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80961480               
    or      v0, $zero, $zero           ## v0 = 00000000
    lwc1    $f8, 0x0028(v0)            ## 00000028
    lwc1    $f10, 0x0028(a0)           ## 00000028
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_80961480               
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8096147C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80961480:
    jr      $ra                        
    nop


func_80961488:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lw      t6, 0x0270(a2)             ## 00000270
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    lui     a1, 0x4000                 ## a1 = 40000000
    bnel    t6, $zero, lbl_809614E0    
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    sw      a2, 0x0028($sp)            
    bne     v0, $zero, lbl_809614CC    
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40E0                 ## a1 = 40E00000
    beql    v0, $zero, lbl_809614E0    
    lw      $ra, 0x0014($sp)           
lbl_809614CC:
    lw      a0, 0x0028($sp)            
    addiu   a1, $zero, 0x0803          ## a1 = 00000803
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    lw      $ra, 0x0014($sp)           
lbl_809614E0:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809614EC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    sw      a0, 0x001C($sp)            
    jal     func_80064780              
    addiu   a1, $zero, 0x2870          ## a1 = 00002870
    lw      a0, 0x001C($sp)            
    jal     func_80064780              
    addiu   a1, $zero, 0x6862          ## a1 = 00006862
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961524:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0004          ## a1 = 00000004
    jal     func_8095FE04              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     v0, $zero, lbl_809615B4    
    lw      t6, 0x0028($sp)            
    lw      t7, 0x0270(t6)             ## 00000270
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t7, $zero, lbl_809615B8    
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x3784             ## a0 = 06003784
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x3784             ## a1 = 06003784
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sw      t9, 0x0270(t0)             ## 00000270
    jal     func_809614EC              
    lw      a0, 0x0028($sp)            
lbl_809615B4:
    lw      $ra, 0x0024($sp)           
lbl_809615B8:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809615C4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lw      v1, 0x1C44(a1)             ## 00001C44
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80961434              
    sw      v1, 0x0018($sp)            
    beq     v0, $zero, lbl_80961654    
    lw      v1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8009CB08              
    sw      v1, 0x0018($sp)            
    bne     v0, $zero, lbl_80961654    
    lw      v1, 0x0018($sp)            
    lw      t6, 0x066C(v1)             ## 0000066C
    lui     $at, 0x0020                ## $at = 00200000
    ori     $at, $at, 0x6000           ## $at = 00206000
    and     t7, t6, $at                
    bnel    t7, $zero, lbl_80961658    
    lw      $ra, 0x0014($sp)           
    lhu     t8, 0x0088(v1)             ## 00000088
    lui     t0, %hi(var_80965670)      ## t0 = 80960000
    addiu   t0, t0, %lo(var_80965670)  ## t0 = 80965670
    andi    t9, t8, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80961654    
    lw      t1, 0x0024($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sw      t0, 0x1D68(t1)             ## 00001D68
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    lui     $at, 0x8012                ## $at = 80120000
    sb      t2, -0x461C($at)           ## 8011B9E4
    swc1    $f4, 0x0828(v1)            ## 00000828
    lw      t4, 0x0020($sp)            
    addiu   t3, $zero, 0x0008          ## t3 = 00000008
    sw      t3, 0x0254(t4)             ## 00000254
lbl_80961654:
    lw      $ra, 0x0014($sp)           
lbl_80961658:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961664:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x001C($sp)            
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    jal     func_8095FE44              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_809616F0    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x001C($sp)            
    addiu   t0, $zero, 0x0009          ## t0 = 00000009
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    lw      v0, 0x1D98(t6)             ## 00001D98
    lw      t7, 0x000C(v0)             ## 0000000C
    mtc1    t7, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            ## 00000024
    lw      t8, 0x0010(v0)             ## 00000010
    mtc1    t8, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           ## 00000028
    lw      t9, 0x0014(v0)             ## 00000014
    mtc1    t9, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           ## 0000002C
    lh      v1, 0x0008(v0)             ## 00000008
    sw      t0, 0x0254(a3)             ## 00000254
    sw      t1, 0x0258(a3)             ## 00000258
    sh      v1, 0x00B6(a3)             ## 000000B6
    sh      v1, 0x0032(a3)             ## 00000032
lbl_809616F0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961700:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    jal     func_8095FE04              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     v0, $zero, lbl_80961778    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x4074             ## a0 = 06004074
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x4074             ## a1 = 06004074
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      t8, 0x0028($sp)            
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    sw      t7, 0x0254(t8)             ## 00000254
lbl_80961778:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961788:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    beq     a1, $zero, lbl_809617FC    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x78E4             ## a0 = 060078E4
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x78E4             ## a1 = 060078E4
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lh      t6, 0x0032(s0)             ## 00000032
    mtc1    $zero, $f10                ## $f10 = 0.00
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addiu   t8, $zero, 0x000B          ## t8 = 0000000B
    addu    t7, t6, $at                
    sh      t7, 0x0032(s0)             ## 00000032
    sw      t8, 0x0254(s0)             ## 00000254
    swc1    $f10, 0x025C(s0)           ## 0000025C
lbl_809617FC:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961810:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x025C(a0)            ## 0000025C
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f16                  ## $f16 = 8.00
    add.s   $f8, $f4, $f6              
    addiu   t6, $zero, 0x000C          ## t6 = 0000000C
    lui     $at, 0xBF80                ## $at = BF800000
    swc1    $f8, 0x025C(a0)            ## 0000025C
    lwc1    $f10, 0x025C(a0)           ## 0000025C
    c.le.s  $f16, $f10                 
    nop
    bc1f    lbl_8096185C               
    nop
    mtc1    $zero, $f18                ## $f18 = 0.00
    mtc1    $at, $f4                   ## $f4 = -1.00
    sw      t6, 0x0254(a0)             ## 00000254
    swc1    $f18, 0x025C(a0)           ## 0000025C
    swc1    $f4, 0x0060(a0)            ## 00000060
lbl_8096185C:
    jr      $ra                        
    nop


func_80961864:
    lhu     t6, 0x0088(a0)             ## 00000088
    addiu   t8, $zero, 0x000D          ## t8 = 0000000D
    andi    t7, t6, 0x0001             ## t7 = 00000000
    bne     t7, $zero, lbl_8096188C    
    nop
    mtc1    $zero, $f0                 ## $f0 = 0.00
    nop
    sw      t8, 0x0254(a0)             ## 00000254
    swc1    $f0, 0x025C(a0)            ## 0000025C
    swc1    $f0, 0x0060(a0)            ## 00000060
lbl_8096188C:
    jr      $ra                        
    nop


func_80961894:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0005          ## a1 = 00000005
    jal     func_8095FE04              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     v0, $zero, lbl_809618D8    
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0F20(v0)             ## 8011B4F0
    lw      t9, 0x0018($sp)            
    addiu   t8, $zero, 0x000E          ## t8 = 0000000E
    ori     t7, t6, 0x0002             ## t7 = 00000002
    sh      t7, 0x0F20(v0)             ## 8011B4F0
    sw      t8, 0x0254(t9)             ## 00000254
lbl_809618D8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809618E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809615C4              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961908:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80961664              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961928:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    jal     func_8095FC78              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8095FD30              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80961700              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961970:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_809600E8              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_8095FC78              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80961788              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809619BC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80961244              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_80961488              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961810              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961A18:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80961304              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961524              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_80961488              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961864              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961A80:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8096132C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961524              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_80961488              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961894              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961AEC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    bnel    t6, $zero, lbl_80961B0C    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80961B0C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961B18:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0060($sp)            
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0060($sp)            
    lh      a0, 0x008A(t6)             ## 0000008A
    jal     func_800636C4              ## sins?
    sh      a0, 0x0056($sp)            
    lui     t7, 0x8012                 ## t7 = 80120000
    lw      t7, -0x4600(t7)            ## 8011BA00
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f8                   ## $f8 = 12.00
    lh      t8, 0x1456(t7)             ## 80121456
    lw      v0, 0x0060($sp)            
    lh      a0, 0x0056($sp)            
    mtc1    t8, $f4                    ## $f4 = 0.00
    lwc1    $f18, 0x0024(v0)           ## 00000024
    addiu   v0, v0, 0x0024             ## v0 = 00000024
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0050($sp)           
    lwc1    $f6, 0x0004(v0)            ## 00000028
    sw      v0, 0x003C($sp)            
    jal     func_80063684              ## coss?
    swc1    $f6, 0x004C($sp)           
    lui     t9, 0x8012                 ## t9 = 80120000
    lw      t9, -0x4600(t9)            ## 8011BA00
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f16                  ## $f16 = 12.00
    lh      t0, 0x1456(t9)             ## 80121456
    lw      v0, 0x003C($sp)            
    lw      a2, 0x0064($sp)            
    mtc1    t0, $f8                    ## $f8 = 0.00
    lwc1    $f6, 0x0008(v0)            ## 00000008
    lh      t1, 0x0056($sp)            
    cvt.s.w $f10, $f8                  
    lwc1    $f8, 0x0050($sp)           
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    sw      t2, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x001C($sp)         
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x004C($sp)          
    lw      a1, 0x0060($sp)            
    addiu   a3, $zero, 0x005D          ## a3 = 0000005D
    mul.s   $f4, $f0, $f18             
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    sw      t1, 0x0020($sp)            
    swc1    $f8, 0x0010($sp)           
    swc1    $f10, 0x0014($sp)          
    add.s   $f2, $f4, $f6              
    jal     func_800253F0              
    swc1    $f2, 0x0018($sp)           
    lw      t3, 0x0060($sp)            
    sw      v0, 0x0268(t3)             ## 00000268
    lw      $ra, 0x0034($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80961C08:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0E54             ## a1 = 06000E54
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8096002C              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x000F          ## t6 = 0000000F
    lui     $at, %hi(var_8096683C)     ## $at = 80960000
    sw      t6, 0x0254(a0)             ## 00000254
    lwc1    $f4, %lo(var_8096683C)($at) 
    addiu   a1, $zero, 0x0005          ## a1 = 00000005
    jal     func_8095FD00              
    swc1    $f4, 0x00BC(a0)            ## 000000BC
    lw      a0, 0x0020($sp)            
    jal     func_8095FD18              
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961C6C:
    sw      a1, 0x0004($sp)            
    lui     $at, %hi(var_80966840)     ## $at = 80960000
    lwc1    $f6, %lo(var_80966840)($at) 
    lwc1    $f4, 0x00BC(a0)            ## 000000BC
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00BC(a0)            ## 000000BC
    jr      $ra                        
    nop


func_80961C8C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0040($sp)            
    lw      a2, 0x1C44(a1)             ## 00001C44
    lw      t6, 0x0040($sp)            
    lh      a0, 0x00B6(a2)             ## 000000B6
    lwc1    $f4, 0x026C(t6)            ## 0000026C
    sw      a2, 0x0038($sp)            
    sh      a0, 0x0032($sp)            
    jal     func_800636C4              ## sins?
    swc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0028($sp)           
    lw      a2, 0x0038($sp)            
    lw      v1, 0x0040($sp)            
    mul.s   $f8, $f0, $f6              
    addiu   v0, a2, 0x0024             ## v0 = 00000024
    lwc1    $f10, 0x0000(v0)           ## 00000024
    lh      a0, 0x0032($sp)            
    addiu   v1, v1, 0x0024             ## v1 = 00000024
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0000(v1)           ## 00000024
    lwc1    $f18, 0x0004(v0)           ## 00000028
    swc1    $f18, 0x0004(v1)           ## 00000028
    sw      v1, 0x001C($sp)            
    jal     func_80063684              ## coss?
    sw      v0, 0x0020($sp)            
    lwc1    $f4, 0x0028($sp)           
    lw      v0, 0x0020($sp)            
    lw      v1, 0x001C($sp)            
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0008(v0)            ## 00000008
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0008(v1)           ## 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80961D1C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    lw      t6, 0x1C44(a1)             ## 00001C44
    lw      t7, 0x0038($sp)            
    sw      t6, 0x0030($sp)            
    lh      a0, 0x00B6(t7)             ## 000000B6
    jal     func_800636C4              ## sins?
    sh      a0, 0x0026($sp)            
    lui     t8, 0x8012                 ## t8 = 80120000
    lw      t8, -0x4600(t8)            ## 8011BA00
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f8                   ## $f8 = 30.00
    lh      t9, 0x1458(t8)             ## 80121458
    lw      v1, 0x0038($sp)            
    lw      v0, 0x0030($sp)            
    mtc1    t9, $f4                    ## $f4 = 0.00
    lwc1    $f18, 0x0024(v1)           ## 00000024
    lh      a0, 0x0026($sp)            
    cvt.s.w $f6, $f4                   
    addiu   v1, v1, 0x0024             ## v1 = 00000024
    addiu   v0, v0, 0x0440             ## v0 = 00000440
    add.s   $f10, $f6, $f8             
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v0)            ## 00000440
    sw      v1, 0x001C($sp)            
    jal     func_80063684              ## coss?
    sw      v0, 0x0020($sp)            
    lui     t0, 0x8012                 ## t0 = 80120000
    lw      t0, -0x4600(t0)            ## 8011BA00
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f10                  ## $f10 = 30.00
    lh      t1, 0x1458(t0)             ## 80121458
    lw      v1, 0x001C($sp)            
    lw      v0, 0x0020($sp)            
    mtc1    t1, $f6                    ## $f6 = 0.00
    lwc1    $f4, 0x0008(v1)            ## 00000008
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0008(v0)            ## 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80961DD4:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      $ra, 0x001C($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x025C(a0)            ## 0000025C
    lw      v1, 0x1C44(a1)             ## 00001C44
    mtc1    $zero, $f10                ## $f10 = 0.00
    add.s   $f8, $f4, $f6              
    lui     $at, 0x4040                ## $at = 40400000
    swc1    $f8, 0x025C(a0)            ## 0000025C
    lwc1    $f16, 0x0068(v1)           ## 00000068
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_80961EDC               
    or      v0, $zero, $zero           ## v0 = 00000000
    lwc1    $f18, 0x025C(a0)           ## 0000025C
    mtc1    $at, $f4                   ## $f4 = 3.00
    nop
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_80961EDC               
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v0, 0x1C44(a1)             ## 00001C44
    lwc1    $f6, 0x0440(v0)            ## 00000440
    swc1    $f6, 0x0024(v1)            ## 00000024
    lwc1    $f8, 0x0444(v0)            ## 00000444
    lwc1    $f18, 0x0024(v1)           ## 00000024
    swc1    $f8, 0x0028(v1)            ## 00000028
    lwc1    $f10, 0x0448(v0)           ## 00000448
    swc1    $f10, 0x002C(v1)           ## 0000002C
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lwc1    $f6, 0x002C(v1)            ## 0000002C
    lwc1    $f4, 0x002C(a0)            ## 0000002C
    sw      v1, 0x0048($sp)            
    sub.s   $f12, $f16, $f18           
    jal     func_800CD76C              
    sub.s   $f14, $f4, $f6             
    lui     $at, %hi(var_80966844)     ## $at = 80960000
    lwc1    $f8, %lo(var_80966844)($at) 
    lw      v1, 0x0048($sp)            
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    mul.s   $f10, $f0, $f8             
    addiu   a0, v1, 0x00B6             ## a0 = 000000B6
    lh      t9, 0x0000(a0)             ## 000000B6
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sll     t7, v0, 16                 
    sra     t8, t7, 16                 
    sll     a1, v0, 16                 
    beq     t8, t9, lbl_80961ED0       
    sra     a1, a1, 16                 
    sw      t0, 0x0010($sp)            
    sw      v1, 0x0048($sp)            
    jal     func_80064508              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lw      v1, 0x0048($sp)            
    lh      t1, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80961ED8 
    sh      t1, 0x0032(v1)             ## 00000032
lbl_80961ED0:
    beq     $zero, $zero, lbl_80961EDC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80961ED8:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80961EDC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961EEC:
    lw      v0, 0x0268(a0)             ## 00000268
    beql    v0, $zero, lbl_80961F10    
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      t6, 0x01DC(v0)             ## 000001DC
    bnel    a1, t6, lbl_80961F10       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80961F0C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80961F10:
    jr      $ra                        
    nop


func_80961F18:
    lw      v0, 0x0268(a0)             ## 00000268
    beq     v0, $zero, lbl_80961F28    
    nop
    sw      a1, 0x01DC(v0)             ## 000001DC
lbl_80961F28:
    jr      $ra                        
    nop


func_80961F30:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0010          ## t6 = 00000010
    sw      t6, 0x0254(a0)             ## 00000254
    jr      $ra                        
    nop


func_80961F44:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x008A(a0)             ## 0000008A
    addiu   t6, $zero, 0x0011          ## t6 = 00000011
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t6, 0x0254(a0)             ## 00000254
    sw      t7, 0x0258(a0)             ## 00000258
    sh      v0, 0x0032(a0)             ## 00000032
    jal     func_80961B18              
    sh      v0, 0x00B6(a0)             ## 000000B6
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961F7C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x00BC(a0)            ## 000000BC
    addiu   t6, $zero, 0x0012          ## t6 = 00000012
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_80961FB4               
    lw      $ra, 0x0014($sp)           
    sw      t6, 0x0254(a0)             ## 00000254
    jal     func_80961F18              
    swc1    $f0, 0x00BC(a0)            ## 000000BC
    lw      $ra, 0x0014($sp)           
lbl_80961FB4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80961FC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    jal     func_80961EEC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80961FF8    
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0013          ## t6 = 00000013
    sw      t6, 0x0254(a0)             ## 00000254
    swc1    $f4, 0x025C(a0)            ## 0000025C
    jal     func_80961D1C              
    lw      a1, 0x001C($sp)            
lbl_80961FF8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962008:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80962074    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1488             ## a0 = 06001488
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1488             ## a1 = 06001488
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      a0, 0x0028($sp)            
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    jal     func_80961F18              
    sw      t7, 0x0254(a0)             ## 00000254
lbl_80962074:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962084:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961EEC              
    addiu   a1, $zero, 0x0004          ## a1 = 00000004
    beq     v0, $zero, lbl_80962100    
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t6, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    beql    t6, $zero, lbl_80962164    
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x2058             ## a0 = 06002058
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2058             ## a1 = 06002058
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_80962164 
    lw      $ra, 0x002C($sp)           
lbl_80962100:
    jal     func_80961EEC              
    addiu   a1, $zero, 0x0005          ## a1 = 00000005
    beq     v0, $zero, lbl_80962160    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2990             ## a0 = 06002990
    mtc1    v0, $f10                   ## $f10 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f18                  ## $f18 = -8.00
    cvt.s.w $f16, $f10                 
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x2990             ## a1 = 06002990
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    swc1    $f16, 0x0010($sp)          
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lwc1    $f4, 0x0090(s0)            ## 00000090
    addiu   t8, $zero, 0x0015          ## t8 = 00000015
    sw      t8, 0x0254(s0)             ## 00000254
    swc1    $f4, 0x026C(s0)            ## 0000026C
lbl_80962160:
    lw      $ra, 0x002C($sp)           
lbl_80962164:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962174:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80961F30              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962194:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80961F44              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809621B4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80961C6C              
    lw      a0, 0x0018($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    jal     func_80961F7C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809621E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80961FC0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096221C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80961DD4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80962008              
    or      a1, v0, $zero              ## a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096225C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_8095FD30              
    lw      a0, 0x0018($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80962084              
    or      a1, v0, $zero              ## a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962294:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80961C8C              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8095FD30              
    lw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809622D4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     v0, 0x8012                 ## v0 = 80120000
    lhu     v0, -0x4B10(v0)            ## 8011B4F0
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_80962370    
    andi    t7, v0, 0x0020             ## t7 = 00000000
    bne     t7, $zero, lbl_80962370    
    andi    t8, v0, 0x0001             ## t8 = 00000000
    bne     t8, $zero, lbl_80962370    
    andi    t9, v0, 0x0080             ## t9 = 00000000
    bne     t9, $zero, lbl_80962370    
    nop
    jal     func_8095FE84              
    sw      a0, 0x0020($sp)            
    bne     v0, $zero, lbl_80962360    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8096002C              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t0, $zero, 0x0016          ## t0 = 00000016
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    lb      v0, 0x0003(a0)             ## 00000003
    sw      t0, 0x0254(a0)             ## 00000254
    sb      t1, 0x0003(a0)             ## 00000003
    sb      v0, 0x0274(a0)             ## 00000274
    sb      v0, 0x0276(a0)             ## 00000276
    sb      v0, 0x0275(a0)             ## 00000275
    beq     $zero, $zero, lbl_8096237C 
    lw      $ra, 0x001C($sp)           
lbl_80962360:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_8096237C 
    lw      $ra, 0x001C($sp)           
lbl_80962370:
    jal     func_80020EB4              
    nop
    lw      $ra, 0x001C($sp)           
lbl_8096237C:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962388:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x28AC          ## a1 = 000028AC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809623B0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lui     t7, 0x8010                 ## t7 = 80100000
    addiu   t7, t7, 0x43A8             ## t7 = 801043A8
    lw      v0, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x0883          ## a0 = 00000883
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_800C806C              
    addiu   a1, v0, 0x00E4             ## a1 = 000000E4
    lw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x6864          ## a1 = 00006864
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962410:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lwc1    $f6, 0x0068(a2)            ## 00000068
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    c.eq.s  $f4, $f6                   
    nop
    bc1tl   lbl_80962444               
    lw      $ra, 0x0014($sp)           
    jal     func_80064780              
    addiu   a1, $zero, 0x6865          ## a1 = 00006865
    lw      $ra, 0x0014($sp)           
lbl_80962444:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962450:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6860          ## a1 = 00006860
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962478:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6866          ## a1 = 00006866
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809624A0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6861          ## a1 = 00006861
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809624C8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a1                 
    lb      v0, 0x1CBC(v0)             ## 00011CBC
    lb      v1, 0x0275(a0)             ## 00000275
    beql    v0, v1, lbl_809624FC       
    lb      t6, 0x0274(a0)             ## 00000274
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80962570 
    or      v0, $zero, $zero           ## v0 = 00000000
    lb      t6, 0x0274(a0)             ## 00000274
lbl_809624FC:
    lui     t7, 0x8012                 ## t7 = 80120000
    bne     v0, t6, lbl_80962510       
    nop
    beql    v0, v1, lbl_80962570       
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80962510:
    lw      t7, -0x4600(t7)            ## 8011BA00
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f8                   ## $f8 = 50.00
    lh      t8, 0x1474(t7)             ## 80121474
    lwc1    $f16, 0x0084(a0)           ## 00000084
    mtc1    t8, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80962570               
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      t9, 0x0254(a0)             ## 00000254
    addiu   v0, $zero, 0x0021          ## v0 = 00000021
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    beq     v0, t9, lbl_8096256C       
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    mtc1    $zero, $f18                ## $f18 = 0.00
    sw      v0, 0x0254(a0)             ## 00000254
    sw      t0, 0x0258(a0)             ## 00000258
    sw      t1, 0x0298(a0)             ## 00000298
    swc1    $f18, 0x0294(a0)           ## 00000294
lbl_8096256C:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80962570:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962580:
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a1                 
    lb      v0, 0x1CBC(v0)             ## 00011CBC
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sb      v0, 0x0275(a0)             ## 00000275
    swc1    $f4, 0x0278(a0)            ## 00000278
    jr      $ra                        
    nop


func_809625A0:
    lui     a1, 0x8012                 ## a1 = 80120000
    addiu   a1, a1, 0xA5D0             ## a1 = 8011A5D0
    lhu     v0, 0x0F20(a1)             ## 8011B4F0
    lui     v1, 0x0001                 ## v1 = 00010000
    addu    v1, v1, a0                 
    andi    t6, v0, 0x0080             ## t6 = 00000000
    bne     t6, $zero, lbl_809625D8    
    nop
    lb      v1, 0x1CBC(v1)             ## 00011CBC
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    ori     t7, v0, 0x0080             ## t7 = 00000080
    bne     v1, $at, lbl_809625D8      
    nop
    sh      t7, 0x0F20(a1)             ## 8011B4F0
lbl_809625D8:
    jr      $ra                        
    nop


func_809625E0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809624C8              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809626D8    
    lw      a0, 0x0018($sp)            
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f2                   ## $f2 = 20.00
    lui     $at, 0x3F80                ## $at = 3F800000
    lwc1    $f4, 0x0294(a0)            ## 00000294
    mtc1    $at, $f6                   ## $f6 = 1.00
    lui     $at, 0x437F                ## $at = 437F0000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0294(a0)            ## 00000294
    lwc1    $f0, 0x0294(a0)            ## 00000294
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_809626D0               
    nop
    sub.s   $f10, $f2, $f0             
    mtc1    $at, $f16                  ## $f16 = 255.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lui     $at, 0x4F00                ## $at = 4F000000
    mul.s   $f18, $f10, $f16           
    div.s   $f4, $f18, $f2             
    cfc1    t6, $f31                   
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f6, $f4                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    beql    v0, $zero, lbl_809626B0    
    mfc1    v0, $f6                    
    mtc1    $at, $f6                   ## $f6 = 2147484000.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    bne     v0, $zero, lbl_809626A4    
    nop
    mfc1    v0, $f6                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_809626BC 
    or      v0, v0, $at                ## v0 = 80000000
lbl_809626A4:
    beq     $zero, $zero, lbl_809626BC 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
    mfc1    v0, $f6                    
lbl_809626B0:
    nop
    bltz    v0, lbl_809626A4           
    nop
lbl_809626BC:
    ctc1    t6, $f31                   
    sw      v0, 0x0298(a0)             ## 00000298
    sb      v0, 0x00C8(a0)             ## 000000C8
    beq     $zero, $zero, lbl_809626DC 
    lw      $ra, 0x0014($sp)           
lbl_809626D0:
    jal     func_80020EB4              
    nop
lbl_809626D8:
    lw      $ra, 0x0014($sp)           
lbl_809626DC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809626E8:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    lw      a0, 0x0038($sp)            
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, a0, 0x036C             ## a0 = 0000036C
    sw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lw      a0, 0x0024($sp)            
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    sw      t7, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    jal     func_80064508              
    addiu   a0, a0, 0x0002             ## a0 = 00000002
    lw      a0, 0x0038($sp)            
    addiu   t8, $zero, 0x0064          ## t8 = 00000064
    sw      t8, 0x0010($sp)            
    addiu   a0, a0, 0x0372             ## a0 = 00000372
    sw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lw      a0, 0x0024($sp)            
    addiu   t9, $zero, 0x0064          ## t9 = 00000064
    sw      t9, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    jal     func_80064508              
    addiu   a0, a0, 0x0002             ## a0 = 00000002
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096278C:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    lh      t6, 0x029C(s0)             ## 0000029C
    addiu   v1, s0, 0x029C             ## v1 = 0000029C
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    bne     t6, $zero, lbl_809627BC    
    addiu   a1, $zero, 0x0019          ## a1 = 00000019
    beq     $zero, $zero, lbl_809627CC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809627BC:
    lh      t7, 0x0000(v1)             ## 0000029C
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             ## 0000029C
    lh      v0, 0x0000(v1)             ## 0000029C
lbl_809627CC:
    bne     v0, $zero, lbl_80962824    
    addiu   v1, s0, 0x029C             ## v1 = 0000029C
    jal     func_80063BF0              
    sw      v1, 0x0030($sp)            
    lw      v1, 0x0030($sp)            
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sh      v0, 0x0000(v1)             ## 00000000
    lh      a0, 0x0000(v1)             ## 00000000
    div     $zero, a0, $at             
    mfhi    a0                         
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a0, $zero, lbl_8096280C    
    nop
    beq     $zero, $zero, lbl_80962820 
    sw      t9, 0x02A0(s0)             ## 000002A0
lbl_8096280C:
    bne     a0, $at, lbl_8096281C      
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    beq     $zero, $zero, lbl_80962820 
    sw      t0, 0x02A0(s0)             ## 000002A0
lbl_8096281C:
    sw      $zero, 0x02A0(s0)          ## 000002A0
lbl_80962820:
    sh      $zero, 0x028E(s0)          ## 0000028E
lbl_80962824:
    lw      v0, 0x02A0(s0)             ## 000002A0
    addiu   a0, s0, 0x028E             ## a0 = 0000028E
    addiu   s1, s0, 0x036E             ## s1 = 0000036E
    bne     v0, $zero, lbl_809628A0    
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lh      a1, 0x0000(s1)             ## 0000036E
    addiu   t1, $zero, 0x0190          ## t1 = 00000190
    sw      t1, 0x0010($sp)            
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sw      a0, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0190          ## a3 = 00000190
    lw      a0, 0x002C($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lh      v1, 0x0000(a0)             ## 00000000
    or      a0, s1, $zero              ## a0 = 0000036E
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    bltz    v1, lbl_80962888           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80962888 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80962888:
    sll     a3, v0, 16                 
    sra     a3, a3, 16                 
    jal     func_80064508              
    sw      t2, 0x0010($sp)            
    beq     $zero, $zero, lbl_80962980 
    lw      $ra, 0x0024($sp)           
lbl_809628A0:
    bne     v0, $at, lbl_80962918      
    addiu   s1, s0, 0x036E             ## s1 = 0000036E
    addiu   s1, s0, 0x036E             ## s1 = 0000036E
    lh      t3, 0x0000(s1)             ## 0000036E
    addiu   t4, $zero, 0xD556          ## t4 = FFFFD556
    addiu   t5, $zero, 0x0190          ## t5 = 00000190
    subu    a1, t4, t3                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sw      t5, 0x0010($sp)            
    sw      a0, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0190          ## a3 = 00000190
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0xD556          ## a1 = FFFFD556
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lh      v1, 0x0000(a0)             ## 00000000
    or      a0, s1, $zero              ## a0 = 0000036E
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    bltz    v1, lbl_80962900           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80962900 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80962900:
    sll     a3, v0, 16                 
    sra     a3, a3, 16                 
    jal     func_80064508              
    sw      t6, 0x0010($sp)            
    beq     $zero, $zero, lbl_80962980 
    lw      $ra, 0x0024($sp)           
lbl_80962918:
    lh      t7, 0x0000(s1)             ## 0000036E
    addiu   t8, $zero, 0x2AAA          ## t8 = 00002AAA
    addiu   t9, $zero, 0x0190          ## t9 = 00000190
    subu    a1, t8, t7                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sw      t9, 0x0010($sp)            
    sw      a0, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0190          ## a3 = 00000190
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x2AAA          ## a1 = 00002AAA
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lh      v1, 0x0000(a0)             ## 00000000
    or      a0, s1, $zero              ## a0 = 0000036E
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    bltz    v1, lbl_8096296C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_8096296C 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_8096296C:
    sll     a3, v0, 16                 
    sra     a3, a3, 16                 
    jal     func_80064508              
    sw      t0, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80962980:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80962990:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lbu     a1, 0x007D(a2)             ## 0000007D
    sw      a2, 0x0018($sp)            
    jal     func_80031464              
    addiu   a0, a3, 0x07C0             ## a0 = 000007C0
    beq     v0, $zero, lbl_809629C8    
    lw      a2, 0x0018($sp)            
    lh      t6, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    t6, $at, lbl_809629D8      
    lw      $ra, 0x0014($sp)           
lbl_809629C8:
    lhu     t7, 0x0088(a2)             ## 00000088
    andi    t8, t7, 0xFFE6             ## t8 = 00000000
    sh      t8, 0x0088(a2)             ## 00000088
    lw      $ra, 0x0014($sp)           
lbl_809629D8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809629E4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lhu     v0, 0x0088(a2)             ## 00000088
    addiu   a0, a3, 0x07C0             ## a0 = 000007C0
    andi    t6, v0, 0x0001             ## t6 = 00000000
    beql    t6, $zero, lbl_80962BAC    
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lbu     a1, 0x007D(a2)             ## 0000007D
    jal     func_80031464              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    addiu   a1, a2, 0x0060             ## a1 = 00000060
    lwc1    $f4, 0x0000(a1)            ## 00000060
    c.le.s  $f4, $f2                   
    nop
    bc1f    lbl_80962BA4               
    nop
    beq     v0, $zero, lbl_80962A5C    
    lui     a0, 0x8012                 ## a0 = 80120000
    lh      t7, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     t7, $at, lbl_80962A50      
    nop
    swc1    $f2, 0x0068(a2)            ## 00000068
lbl_80962A50:
    lui     $at, %hi(var_80966848)     ## $at = 80960000
    beq     $zero, $zero, lbl_80962ACC 
    lwc1    $f12, %lo(var_80966848)($at) 
lbl_80962A5C:
    lw      a0, -0x4600(a0)            ## 8011BA00
    lui     $at, %hi(var_8096684C)     ## $at = 80960000
    lwc1    $f12, %lo(var_8096684C)($at) 
    lh      t8, 0x148A(a0)             ## 8012148A
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f16                  ## $f16 = 3.00
    mtc1    t8, $f6                    ## $f6 = 0.00
    addiu   v1, a2, 0x0068             ## v1 = 00000068
    lwc1    $f0, 0x0000(v1)            ## 00000068
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f12            
    add.s   $f18, $f10, $f16           
    c.le.s  $f18, $f0                  
    nop
    bc1fl   lbl_80962ACC               
    swc1    $f2, 0x0000(v1)            ## 00000068
    lh      t9, 0x147A(a0)             ## 8012147A
    lui     $at, %hi(var_80966850)     ## $at = 80960000
    lwc1    $f10, %lo(var_80966850)($at) 
    mtc1    t9, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f12             
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f0, $f16            
    beq     $zero, $zero, lbl_80962ACC 
    swc1    $f18, 0x0000(v1)           ## 00000068
    swc1    $f2, 0x0000(v1)            ## 00000068
lbl_80962ACC:
    beq     v0, $zero, lbl_80962B0C    
    or      a0, a2, $zero              ## a0 = 00000000
    lh      t0, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beql    t0, $at, lbl_80962AF8      
    lui     $at, 0xBF80                ## $at = BF800000
    swc1    $f2, 0x0000(a1)            ## 00000060
    swc1    $f2, 0x0070(a2)            ## 00000070
    beq     $zero, $zero, lbl_80962B98 
    swc1    $f2, 0x006C(a2)            ## 0000006C
    lui     $at, 0xBF80                ## $at = BF800000
lbl_80962AF8:
    mtc1    $at, $f6                   ## $f6 = -1.00
    lwc1    $f4, 0x0000(a1)            ## 00000060
    mul.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80962B98 
    swc1    $f8, 0x0000(a1)            ## 00000060
lbl_80962B0C:
    lui     t1, 0x8012                 ## t1 = 80120000
    lw      t1, -0x4600(t1)            ## 8011BA00
    lui     $at, %hi(var_80966854)     ## $at = 80960000
    lwc1    $f4, %lo(var_80966854)($at) 
    lh      t2, 0x147C(t1)             ## 8012147C
    lui     t3, 0x8012                 ## t3 = 80120000
    lui     $at, %hi(var_80966858)     ## $at = 80960000
    mtc1    t2, $f10                   ## $f10 = 0.00
    addiu   v0, a2, 0x006C             ## v0 = 0000006C
    cvt.s.w $f16, $f10                 
    lwc1    $f10, 0x0000(a1)           ## 00000060
    mul.s   $f18, $f16, $f12           
    add.s   $f6, $f18, $f4             
    neg.s   $f8, $f6                   
    mul.s   $f16, $f10, $f8            
    swc1    $f16, 0x0000(a1)           ## 00000060
    lw      t3, -0x4600(t3)            ## 8011BA00
    lwc1    $f10, %lo(var_80966858)($at) 
    lwc1    $f16, 0x0000(v0)           ## 0000006C
    lh      t4, 0x147C(t3)             ## 8012147C
    mtc1    t4, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    neg.s   $f18, $f16                 
    mul.s   $f6, $f4, $f12             
    add.s   $f8, $f6, $f10             
    lwc1    $f6, 0x0000(a1)            ## 00000060
    mul.s   $f4, $f8, $f18             
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_80962B98               
    nop
    swc1    $f2, 0x0000(a1)            ## 00000060
    swc1    $f2, 0x0070(a2)            ## 00000070
    swc1    $f2, 0x0000(v0)            ## 0000006C
lbl_80962B98:
    jal     func_80962388              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
lbl_80962BA4:
    lhu     v0, 0x0088(a2)             ## 00000088
    mtc1    $zero, $f2                 ## $f2 = 0.00
lbl_80962BAC:
    lui     $at, %hi(var_80966864)     ## $at = 80960000
    andi    t5, v0, 0x0010             ## t5 = 00000000
    beq     t5, $zero, lbl_80962C94    
    lwc1    $f12, %lo(var_80966864)($at) 
    lui     a0, 0x8012                 ## a0 = 80120000
    lw      a0, -0x4600(a0)            ## 8011BA00
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f4                   ## $f4 = 3.00
    lh      t6, 0x148A(a0)             ## 8012148A
    lwc1    $f10, 0x0068(a2)           ## 00000068
    addiu   a1, a2, 0x0060             ## a1 = 00000060
    mtc1    t6, $f16                   ## $f16 = 0.00
    addiu   v1, a2, 0x0068             ## v1 = 00000068
    lui     t8, 0x8012                 ## t8 = 80120000
    cvt.s.w $f8, $f16                  
    mul.s   $f18, $f8, $f12            
    add.s   $f6, $f18, $f4             
    c.le.s  $f6, $f10                  
    nop
    bc1fl   lbl_80962C30               
    swc1    $f2, 0x0000(v1)            ## 00000068
    lh      t7, 0x147A(a0)             ## 8012147A
    lui     $at, %hi(var_80966868)     ## $at = 80960000
    lwc1    $f4, %lo(var_80966868)($at) 
    mtc1    t7, $f16                   ## $f16 = 0.00
    lwc1    $f6, 0x0000(v1)            ## 00000068
    cvt.s.w $f8, $f16                  
    mul.s   $f18, $f8, $f12            
    add.s   $f10, $f18, $f4            
    mul.s   $f16, $f6, $f10            
    beq     $zero, $zero, lbl_80962C30 
    swc1    $f16, 0x0000(v1)           ## 00000068
    swc1    $f2, 0x0000(v1)            ## 00000068
lbl_80962C30:
    lwc1    $f0, 0x0000(a1)            ## 00000060
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80962C94               
    lhu     v0, 0x0088(a2)             ## 00000088
    lw      t8, -0x4600(t8)            ## 8011BA00
    lui     $at, %hi(var_8096686C)     ## $at = 80960000
    lwc1    $f6, %lo(var_8096686C)($at) 
    lh      t9, 0x147C(t8)             ## 8012147C
    or      a0, a2, $zero              ## a0 = 00000000
    mtc1    t9, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f18, $f8                  
    mul.s   $f4, $f18, $f12            
    add.s   $f10, $f4, $f6             
    neg.s   $f16, $f10                 
    mul.s   $f8, $f0, $f16             
    swc1    $f8, 0x0000(a1)            ## 00000060
    jal     func_80962388              
    sw      a2, 0x0018($sp)            
    lui     $at, %hi(var_80966870)     ## $at = 80960000
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f12, %lo(var_80966870)($at) 
    lw      a2, 0x0018($sp)            
    lhu     v0, 0x0088(a2)             ## 00000088
lbl_80962C94:
    andi    t0, v0, 0x0008             ## t0 = 00000000
    beql    t0, $zero, lbl_80962D98    
    lw      $ra, 0x0014($sp)           
    lwc1    $f18, 0x0068(a2)           ## 00000068
    ori     a3, $zero, 0x8000          ## a3 = 00008000
    c.eq.s  $f2, $f18                  
    nop
    bc1tl   lbl_80962D98               
    lw      $ra, 0x0014($sp)           
    lh      v0, 0x007E(a2)             ## 0000007E
    lh      v1, 0x0032(a2)             ## 00000032
    sll     t1, v0,  1                 
    subu    a0, t1, v1                 
    subu    t2, a0, v0                 
    addu    t3, t2, a3                 
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    bltz    t5, lbl_80962CF4           
    addu    a1, a0, a3                 
    addu    a1, a0, a3                 
    subu    v1, a1, v0                 
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80962D04 
    sra     v1, v1, 16                 
lbl_80962CF4:
    subu    v1, a1, v0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_80962D04:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80962D94   
    lui     a0, 0x8012                 ## a0 = 80120000
    lw      a0, -0x4600(a0)            ## 8011BA00
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f16                  ## $f16 = 3.00
    lh      t6, 0x148A(a0)             ## 8012148A
    addiu   v1, a2, 0x0068             ## v1 = 00000068
    lwc1    $f0, 0x0000(v1)            ## 00000068
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f12            
    add.s   $f8, $f10, $f16            
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80962D7C               
    swc1    $f2, 0x0000(v1)            ## 00000068
    lh      t7, 0x147E(a0)             ## 8012147E
    lui     $at, %hi(var_80966874)     ## $at = 80960000
    lwc1    $f10, %lo(var_80966874)($at) 
    mtc1    t7, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f6, $f4, $f12             
    add.s   $f16, $f6, $f10            
    mul.s   $f8, $f0, $f16             
    beq     $zero, $zero, lbl_80962D7C 
    swc1    $f8, 0x0000(v1)            ## 00000068
    swc1    $f2, 0x0000(v1)            ## 00000068
lbl_80962D7C:
    sh      a1, 0x0032(a2)             ## 00000032
    sw      a2, 0x0018($sp)            
    jal     func_80962388              
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_80962450              
    lw      a0, 0x0018($sp)            
lbl_80962D94:
    lw      $ra, 0x0014($sp)           
lbl_80962D98:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962DA4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lbu     a1, 0x007D(a2)             ## 0000007D
    sw      a2, 0x0018($sp)            
    jal     func_80031464              
    addiu   a0, a3, 0x07C0             ## a0 = 000007C0
    beq     v0, $zero, lbl_80962E1C    
    lw      a2, 0x0018($sp)            
    lh      t6, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    addiu   v0, a2, 0x0068             ## v0 = 00000068
    bne     t6, $at, lbl_80962E1C      
    nop
    lwc1    $f0, 0x0000(v0)            ## 00000068
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    c.eq.s  $f4, $f0                   
    nop
    bc1tl   lbl_80962E14               
    mtc1    $at, $f10                  ## $f10 = 1.00
    lui     $at, %hi(var_80966878)     ## $at = 80960000
    lwc1    $f6, %lo(var_80966878)($at) 
    mul.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80962E1C 
    swc1    $f8, 0x0000(v0)            ## 00000068
    mtc1    $at, $f10                  ## $f10 = 0.00
lbl_80962E14:
    nop
    swc1    $f10, 0x0000(v0)           ## 00000068
lbl_80962E1C:
    lui     v1, 0x8012                 ## v1 = 80120000
    lw      v1, -0x4600(v1)            ## 8011BA00
    lui     $at, %hi(var_8096687C)     ## $at = 80960000
    lwc1    $f2, %lo(var_8096687C)($at) 
    lh      t7, 0x148A(v1)             ## 8012148A
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f6                   ## $f6 = 3.00
    mtc1    t7, $f16                   ## $f16 = 0.00
    addiu   v0, a2, 0x0068             ## v0 = 00000068
    lwc1    $f0, 0x0000(v0)            ## 00000068
    cvt.s.w $f18, $f16                 
    mul.s   $f4, $f18, $f2             
    add.s   $f8, $f4, $f6              
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80962E90               
    mtc1    $zero, $f10                ## $f10 = 0.00
    lh      t8, 0x1480(v1)             ## 80121480
    lui     $at, %hi(var_80966880)     ## $at = 80960000
    lwc1    $f4, %lo(var_80966880)($at) 
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f18, $f16, $f2            
    add.s   $f6, $f18, $f4             
    mul.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80962E98 
    swc1    $f8, 0x0000(v0)            ## 00000068
    mtc1    $zero, $f10                ## $f10 = 0.00
lbl_80962E90:
    nop
    swc1    $f10, 0x0000(v0)           ## 00000068
lbl_80962E98:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962EA8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809629E4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80962DA4              
    lw      a1, 0x001C($sp)            
    jal     func_8002121C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80962EE8:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    nop
    swc1    $f0, 0x005C(a0)            ## 0000005C
    swc1    $f0, 0x0060(a0)            ## 00000060
    swc1    $f0, 0x0064(a0)            ## 00000064
    swc1    $f0, 0x0068(a0)            ## 00000068
    swc1    $f0, 0x006C(a0)            ## 0000006C
    swc1    $f0, 0x0070(a0)            ## 00000070
    jr      $ra                        
    nop


func_80962F10:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      v0, 0x0340(s0)             ## 00000340
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $zero, lbl_80963054    
    nop
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f2, 0x0070(s0)            ## 00000070
    lui     $at, %hi(var_80966884)     ## $at = 80960000
    c.eq.s  $f0, $f2                   
    nop
    bc1f    lbl_80962FA8               
    nop
    lwc1    $f4, 0x0068(s0)            ## 00000068
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    or      a0, s0, $zero              ## a0 = 00000000
    c.eq.s  $f0, $f4                   
    nop
    bc1f    lbl_80962FA8               
    nop
    jal     func_80962EE8              
    sw      t6, 0x0340(s0)             ## 00000340
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lwc1    $f6, 0x0084(s0)            ## 00000084
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    sub.s   $f10, $f6, $f8             
    lwc1    $f4, 0x0028(s0)            ## 00000028
    sh      $zero, 0x034C(s0)          ## 0000034C
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x0348(s0)           ## 00000348
    lwc1    $f6, 0x0348(s0)            ## 00000348
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80963118 
    swc1    $f8, 0x0344(s0)            ## 00000344
lbl_80962FA8:
    lwc1    $f12, %lo(var_80966884)($at) 
    lwc1    $f16, 0x0060(s0)           ## 00000060
    swc1    $f0, 0x006C(s0)            ## 0000006C
    mul.s   $f10, $f2, $f12            
    lui     $at, %hi(var_80966888)     ## $at = 80960000
    mul.s   $f18, $f16, $f12           
    swc1    $f10, 0x0070(s0)           ## 00000070
    lwc1    $f4, 0x0070(s0)            ## 00000070
    swc1    $f18, 0x0060(s0)           ## 00000060
    lwc1    $f6, %lo(var_80966888)($at) 
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80962FF4               
    lwc1    $f8, 0x0068(s0)            ## 00000068
    swc1    $f0, 0x0070(s0)            ## 00000070
    swc1    $f0, 0x0060(s0)            ## 00000060
    lwc1    $f8, 0x0068(s0)            ## 00000068
lbl_80962FF4:
    lui     $at, %hi(var_8096688C)     ## $at = 80960000
    mul.s   $f16, $f8, $f10            
    swc1    $f16, 0x0068(s0)           ## 00000068
    lwc1    $f4, 0x0068(s0)            ## 00000068
    lwc1    $f18, %lo(var_8096688C)($at) 
    c.le.s  $f4, $f18                  
    nop
    bc1f    lbl_8096301C               
    nop
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_8096301C:
    jal     func_800636C4              ## sins?
    lh      a0, 0x0032(s0)             ## 00000032
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lh      a0, 0x0032(s0)             ## 00000032
    mul.s   $f8, $f0, $f6              
    jal     func_80063684              ## coss?
    swc1    $f8, 0x005C(s0)            ## 0000005C
    lwc1    $f10, 0x0068(s0)           ## 00000068
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f16, $f0, $f10            
    jal     func_80021124              
    swc1    $f16, 0x0064(s0)           ## 00000064
    beq     $zero, $zero, lbl_8096311C 
    lw      $ra, 0x001C($sp)           
lbl_80963054:
    bne     v0, $at, lbl_809630E4      
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f18                  ## $f18 = 1.00
    lwc1    $f0, 0x0348(s0)            ## 00000348
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_80963094               
    swc1    $f0, 0x0028($sp)           
    jal     func_80962EE8              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t7, 0x0340(s0)             ## 00000340
    beq     $zero, $zero, lbl_80963118 
    swc1    $f0, 0x0350(s0)            ## 00000350
    swc1    $f0, 0x0028($sp)           
lbl_80963094:
    lwc1    $f4, 0x0344(s0)            ## 00000344
    swc1    $f4, 0x0024($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x034C(s0)             ## 0000034C
    lwc1    $f6, 0x0028($sp)           
    lwc1    $f16, 0x0024($sp)          
    lh      t8, 0x034C(s0)             ## 0000034C
    neg.s   $f8, $f6                   
    lui     $at, %hi(var_80966890)     ## $at = 80960000
    mul.s   $f10, $f0, $f8             
    addiu   t9, t8, 0x03E8             ## t9 = 000003E8
    sh      t9, 0x034C(s0)             ## 0000034C
    lwc1    $f4, 0x0348(s0)            ## 00000348
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(s0)           ## 00000028
    lwc1    $f6, %lo(var_80966890)($at) 
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0348(s0)            ## 00000348
    beq     $zero, $zero, lbl_8096311C 
    lw      $ra, 0x001C($sp)           
lbl_809630E4:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f16                  ## $f16 = 1.00
    lwc1    $f10, 0x0350(s0)           ## 00000350
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t0, $zero, 0x0003          ## t0 = 00000003
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0350(s0)           ## 00000350
    lwc1    $f4, 0x0350(s0)            ## 00000350
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_8096311C               
    lw      $ra, 0x001C($sp)           
    sw      t0, 0x0340(s0)             ## 00000340
lbl_80963118:
    lw      $ra, 0x001C($sp)           
lbl_8096311C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096312C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022930              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_809631AC    
    lw      a1, 0x001C($sp)            
    lw      t6, 0x0004(a0)             ## 00000004
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t9, $zero, 0x404E          ## t9 = 0000404E
    ori     t7, t6, 0x0009             ## t7 = 00000009
    sw      t7, 0x0004(a0)             ## 00000004
    lhu     v0, -0x4B10(v0)            ## 8011B4F0
    andi    t8, v0, 0x0008             ## t8 = 00000000
    beq     t8, $zero, lbl_80963180    
    andi    t0, v0, 0x0004             ## t0 = 00000000
    jal     func_80022A90              
    sh      t9, 0x010E(a0)             ## 0000010E
    beq     $zero, $zero, lbl_809631B0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80963180:
    beq     t0, $zero, lbl_8096319C    
    addiu   t2, $zero, 0x404C          ## t2 = 0000404C
    addiu   t1, $zero, 0x404D          ## t1 = 0000404D
    jal     func_80022A90              
    sh      t1, 0x010E(a0)             ## 0000010E
    beq     $zero, $zero, lbl_809631B0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8096319C:
    jal     func_80022A90              
    sh      t2, 0x010E(a0)             ## 0000010E
    beq     $zero, $zero, lbl_809631B0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809631AC:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809631B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809631C0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lhu     t6, 0x0088(a0)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80963238    
    nop
    lbu     v0, 0x007D(a0)             ## 0000007D
    addiu   $at, $zero, 0x0032         ## $at = 00000032
    beq     v0, $at, lbl_80963238      
    or      a1, v0, $zero              ## a1 = 00000000
    jal     func_80031464              
    addiu   a0, a2, 0x07C0             ## a0 = 000007C0
    beq     v0, $zero, lbl_80963238    
    nop
    lh      t8, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x00E6         ## $at = 000000E6
    bne     t8, $at, lbl_80963238      
    nop
    lh      t9, 0x001C(v0)             ## 0000001C
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   $at, $zero, 0x0038         ## $at = 00000038
    sra     t0, t9,  8                 
    andi    t1, t0, 0x003F             ## t1 = 00000000
    bne     t1, $at, lbl_80963238      
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t2, 0x0F20(v0)             ## 8011B4F0
    ori     t3, t2, 0x0001             ## t3 = 00000001
    beq     $zero, $zero, lbl_8096324C 
    sh      t3, 0x0F20(v0)             ## 8011B4F0
lbl_80963238:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t4, 0x0F20(v0)             ## 8011B4F0
    andi    t5, t4, 0xFFFE             ## t5 = 00000000
    sh      t5, 0x0F20(v0)             ## 8011B4F0
lbl_8096324C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096325C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lhu     t6, 0x0088(a2)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_80963340    
    or      v0, $zero, $zero           ## v0 = 00000000
    lbu     v0, 0x007D(a2)             ## 0000007D
    addiu   $at, $zero, 0x0032         ## $at = 00000032
    lw      a0, 0x002C($sp)            
    beq     v0, $at, lbl_8096333C      
    or      a1, v0, $zero              ## a1 = 00000000
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    jal     func_80031464              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    beq     v0, $zero, lbl_8096333C    
    sw      v0, 0x0018($sp)            
    lh      t8, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x00C8         ## $at = 000000C8
    bnel    t8, $at, lbl_80963340      
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t9, 0x001C(v0)             ## 0000001C
    lw      a0, 0x002C($sp)            
    bnel    t9, $zero, lbl_80963340    
    or      v0, $zero, $zero           ## v0 = 00000000
    jal     func_8007943C              
    sw      a2, 0x0028($sp)            
    bne     v0, $zero, lbl_8096333C    
    lw      a2, 0x0028($sp)            
    lw      t0, 0x002C($sp)            
    lui     t1, 0x0001                 ## t1 = 00010000
    or      a0, a2, $zero              ## a0 = 00000000
    addu    t1, t1, t0                 
    lw      t1, 0x03D8(t1)             ## 000103D8
    bnel    t1, $zero, lbl_80963340    
    or      v0, $zero, $zero           ## v0 = 00000000
    jal     func_80962EE8              
    sw      a2, 0x0028($sp)            
    lw      t3, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    lui     t2, %hi(var_80965E94)      ## t2 = 80960000
    addiu   t2, t2, %lo(var_80965E94)  ## t2 = 80965E94
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    lui     $at, 0x8012                ## $at = 80120000
    sw      t2, 0x1D68(t3)             ## 00001D68
    sb      t4, -0x461C($at)           ## 8011B9E4
    addiu   t5, $zero, 0x0024          ## t5 = 00000024
    sw      t5, 0x0254(a2)             ## 00000254
    sw      $zero, 0x0258(a2)          ## 00000258
    lw      t6, 0x0018($sp)            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sb      $zero, 0x00C8(a2)          ## 000000C8
    beq     $zero, $zero, lbl_80963340 
    sw      t6, 0x027C(a2)             ## 0000027C
lbl_8096333C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80963340:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963350:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022BB0              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80963394    
    lw      a1, 0x001C($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a1                 
    lb      v0, 0x1CBC(v0)             ## 00011CBC
    addiu   t6, $zero, 0x001F          ## t6 = 0000001F
    sw      t6, 0x0254(a0)             ## 00000254
    jal     func_809623B0              
    sb      v0, 0x0276(a0)             ## 00000276
    beq     $zero, $zero, lbl_80963424 
    lw      $ra, 0x0014($sp)           
lbl_80963394:
    jal     func_8096325C              
    sw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_80963420    
    lw      a0, 0x0018($sp)            
    lhu     t7, 0x0088(a0)             ## 00000088
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
    andi    t8, t7, 0x0001             ## t8 = 00000000
    bne     t8, $zero, lbl_80963420    
    lui     $at, %hi(var_80966894)     ## $at = 80960000
    lwc1    $f0, %lo(var_80966894)($at) 
    lw      t9, 0x0000(v0)             ## 8011BA00
    lui     $at, %hi(var_80966898)     ## $at = 80960000
    lwc1    $f10, %lo(var_80966898)($at) 
    lh      t0, 0x1484(t9)             ## 00001484
    lui     $at, %hi(var_8096689C)     ## $at = 80960000
    addiu   t3, $zero, 0x001C          ## t3 = 0000001C
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f0              
    add.s   $f16, $f8, $f10            
    neg.s   $f18, $f16                 
    swc1    $f18, 0x0070(a0)           ## 00000070
    lw      t1, 0x0000(v0)             ## 8011BA00
    lwc1    $f10, %lo(var_8096689C)($at) 
    lh      t2, 0x1482(t1)             ## 00001482
    sw      t3, 0x0254(a0)             ## 00000254
    mtc1    t2, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f0              
    add.s   $f16, $f8, $f10            
    neg.s   $f18, $f16                 
    swc1    $f18, 0x006C(a0)           ## 0000006C
lbl_80963420:
    lw      $ra, 0x0014($sp)           
lbl_80963424:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963430:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096325C              
    lw      a1, 0x0024($sp)            
    bnel    v0, $zero, lbl_809634E4    
    lw      $ra, 0x001C($sp)           
    lhu     t6, 0x0088(s0)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_809634C4    
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f4, 0x0068(s0)            ## 00000068
    c.eq.s  $f0, $f4                   
    nop
    bc1fl   lbl_809634C4               
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f6, 0x0070(s0)            ## 00000070
    c.eq.s  $f0, $f6                   
    nop
    bc1fl   lbl_809634C4               
    mtc1    $zero, $f0                 ## $f0 = 0.00
    jal     func_80962EE8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D20              
    lw      a1, 0x0024($sp)            
    addiu   t8, $zero, 0x001B          ## t8 = 0000001B
    sw      t8, 0x0254(s0)             ## 00000254
    jal     func_8095FC28              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809634E4 
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_809634C4:
    lwc1    $f8, 0x0084(s0)            ## 00000084
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_809634E0               
    addiu   t9, $zero, 0x001D          ## t9 = 0000001D
    sw      t9, 0x0254(s0)             ## 00000254
    sw      $zero, 0x0340(s0)          ## 00000340
lbl_809634E0:
    lw      $ra, 0x001C($sp)           
lbl_809634E4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809634F4:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, a1                 
    lb      t6, 0x1CBC(t6)             ## 00011CBC
    or      a0, a1, $zero              ## a0 = 00000000
    jal     func_8095FD98              
    sb      t6, 0x002F($sp)            
    beq     v0, $zero, lbl_80963580    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x6B9C             ## a0 = 06006B9C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0038($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6B9C             ## a1 = 06006B9C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t7, 0x0F20(v0)             ## 8011B4F0
    lw      t0, 0x0038($sp)            
    addiu   t9, $zero, 0x001F          ## t9 = 0000001F
    ori     t8, t7, 0x0010             ## t8 = 00000010
    sh      t8, 0x0F20(v0)             ## 8011B4F0
    sw      t9, 0x0254(t0)             ## 00000254
lbl_80963580:
    lb      t1, 0x002F($sp)            
    lw      t2, 0x0038($sp)            
    sb      t1, 0x0276(t2)             ## 00000276
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80963598:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     t7, 0x8012                 ## t7 = 80120000
    lhu     t7, -0x4B10(t7)            ## 8011B4F0
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, a1                 
    lb      t6, 0x1CBC(t6)             ## 00011CBC
    andi    t8, t7, 0x0010             ## t8 = 00000000
    bne     t8, $zero, lbl_8096366C    
    sb      t6, 0x0033($sp)            
    or      a0, a1, $zero              ## a0 = 00000000
    jal     func_8095FF6C              
    sw      a1, 0x003C($sp)            
    beql    v0, $zero, lbl_80963670    
    lb      t4, 0x0033($sp)            
    jal     func_8007943C              
    lw      a0, 0x003C($sp)            
    bne     v0, $zero, lbl_8096365C    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x4350             ## a0 = 06004350
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4648             ## a1 = 06004648
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    jal     func_809624A0              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   t9, $zero, 0x0022          ## t9 = 00000022
    sw      t9, 0x0254(s0)             ## 00000254
    swc1    $f10, 0x025C(s0)           ## 0000025C
    lw      t1, 0x003C($sp)            
    lui     t0, %hi(var_80966518)      ## t0 = 80960000
    addiu   t0, t0, %lo(var_80966518)  ## t0 = 80966518
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    lui     $at, 0x8012                ## $at = 80120000
    sw      t0, 0x1D68(t1)             ## 00001D68
    sb      t2, -0x461C($at)           ## 8011B9E4
lbl_8096365C:
    lb      t3, 0x0033($sp)            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    beq     $zero, $zero, lbl_80963678 
    sb      t3, 0x0276(s0)             ## 00000276
lbl_8096366C:
    lb      t4, 0x0033($sp)            
lbl_80963670:
    or      v0, $zero, $zero           ## v0 = 00000000
    sb      t4, 0x0276(s0)             ## 00000276
lbl_80963678:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096368C:
    addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x007C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D40              
    lw      a1, 0x007C($sp)            
    beq     v0, $zero, lbl_809637DC    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x6B9C             ## a0 = 06006B9C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6B9C             ## a1 = 06006B9C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962580              
    lw      a1, 0x007C($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
    lw      t6, 0x0000(v0)             ## 8011BA00
    lui     $at, %hi(var_809668A0)     ## $at = 80960000
    lwc1    $f0, %lo(var_809668A0)($at) 
    lh      t7, 0x1486(t6)             ## 00001486
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f2                   ## $f2 = 1.00
    mtc1    t7, $f16                   ## $f16 = 0.00
    lwc1    $f10, 0x0068(s0)           ## 00000068
    lui     $at, %hi(var_809668A4)     ## $at = 80960000
    cvt.s.w $f18, $f16                 
    lwc1    $f16, 0x0060(s0)           ## 00000060
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f4, $f18, $f0             
    add.s   $f6, $f4, $f2              
    mul.s   $f8, $f10, $f6             
    swc1    $f8, 0x0068(s0)            ## 00000068
    lw      t8, 0x0000(v0)             ## 8011BA00
    lh      t9, 0x1488(t8)             ## 00001488
    mtc1    t9, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f10, $f4, $f0             
    add.s   $f6, $f10, $f2             
    mul.s   $f8, $f16, $f6             
    swc1    $f8, 0x0060(s0)            ## 00000060
    lw      t0, 0x0000(v0)             ## 8011BA00
    lwc1    $f16, %lo(var_809668A4)($at) 
    lui     $at, %hi(var_809668A8)     ## $at = 80960000
    lh      t1, 0x1484(t0)             ## 00001484
    mtc1    t1, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f10, $f4, $f0             
    add.s   $f6, $f10, $f16            
    neg.s   $f8, $f6                   
    swc1    $f8, 0x0070(s0)            ## 00000070
    lw      t2, 0x0000(v0)             ## 8011BA00
    lwc1    $f16, %lo(var_809668A8)($at) 
    lh      t3, 0x1482(t2)             ## 00001482
    mtc1    t3, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f10, $f4, $f0             
    add.s   $f6, $f10, $f16            
    neg.s   $f8, $f6                   
    jal     func_80962410              
    swc1    $f8, 0x006C(s0)            ## 0000006C
    mtc1    $zero, $f18                ## $f18 = 0.00
    addiu   t4, $zero, 0x001C          ## t4 = 0000001C
    sw      t4, 0x0254(s0)             ## 00000254
    swc1    $f18, 0x0360(s0)           ## 00000360
    beq     $zero, $zero, lbl_8096399C 
    lw      $ra, 0x002C($sp)           
lbl_809637DC:
    jal     func_80963598              
    lw      a1, 0x007C($sp)            
    beq     v0, $zero, lbl_80963800    
    lw      t5, 0x007C($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x0360(s0)            ## 00000360
    beq     $zero, $zero, lbl_8096399C 
    lw      $ra, 0x002C($sp)           
lbl_80963800:
    lw      v0, 0x1C44(t5)             ## 00001C44
    lui     $at, 0x3F80                ## $at = 3F800000
    lui     a0, 0x0600                 ## a0 = 06000000
    lw      t6, 0x0670(v0)             ## 00000670
    sll     t7, t6,  3                 
    bgez    t7, lbl_80963950           
    nop
    lwc1    $f10, 0x0360(s0)           ## 00000360
    mtc1    $at, $f16                  ## $f16 = 1.00
    lw      t8, 0x0254(s0)             ## 00000254
    addiu   $at, $zero, 0x0020         ## $at = 00000020
    add.s   $f6, $f10, $f16            
    addiu   v0, s0, 0x0360             ## v0 = 00000360
    beq     t8, $at, lbl_809638D0      
    swc1    $f6, 0x0360(s0)            ## 00000360
    addiu   v0, s0, 0x0360             ## v0 = 00000360
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f8                   ## $f8 = 30.00
    lwc1    $f18, 0x0000(v0)           ## 00000360
    or      a0, $zero, $zero           ## a0 = 00000000
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    c.lt.s  $f8, $f18                  
    nop
    bc1fl   lbl_8096399C               
    lw      $ra, 0x002C($sp)           
    jal     func_80063BF0              
    sw      v0, 0x0034($sp)            
    bne     v0, $zero, lbl_809638C0    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x4350             ## a0 = 06004350
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f16                  ## $f16 = -8.00
    cvt.s.w $f10, $f4                  
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4350             ## a1 = 06004350
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f10, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    jal     func_80962478              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    sw      t9, 0x0254(s0)             ## 00000254
lbl_809638C0:
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lw      t0, 0x0034($sp)            
    beq     $zero, $zero, lbl_80963998 
    swc1    $f6, 0x0000(t0)            ## 00000000
lbl_809638D0:
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f8                   ## $f8 = 50.00
    lwc1    $f18, 0x0000(v0)           ## 00000000
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x6B9C             ## a0 = 06006B9C
    c.lt.s  $f8, $f18                  
    nop
    bc1fl   lbl_8096399C               
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    sw      v0, 0x0034($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f16                  ## $f16 = -8.00
    cvt.s.w $f10, $f4                  
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6B9C             ## a1 = 06006B9C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f10, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    addiu   t1, $zero, 0x001F          ## t1 = 0000001F
    sw      t1, 0x0254(s0)             ## 00000254
    lw      t2, 0x0034($sp)            
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    swc1    $f6, 0x0000(t2)            ## 00000000
    beq     $zero, $zero, lbl_8096399C 
    lw      $ra, 0x002C($sp)           
lbl_80963950:
    jal     func_8008A194              
    addiu   a0, a0, 0x6B9C             ## a0 = 00006B9C
    mtc1    v0, $f8                    ## $f8 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    cvt.s.w $f18, $f8                  
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6B9C             ## a1 = 06006B9C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f18, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f10                ## $f10 = 0.00
    nop
    swc1    $f10, 0x0360(s0)           ## 00000360
lbl_80963998:
    lw      $ra, 0x002C($sp)           
lbl_8096399C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0078           ## $sp = 00000000
    jr      $ra                        
    nop


func_809639AC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lhu     t6, 0x0088(a0)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_809639F8    
    or      v0, $zero, $zero           ## v0 = 00000000
    jal     func_80962EE8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022D20              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t8, $zero, 0x001B          ## t8 = 0000001B
    jal     func_8095FC28              
    sw      t8, 0x0254(a0)             ## 00000254
    beq     $zero, $zero, lbl_809639F8 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809639F8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963A08:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809639AC              
    sw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_80963A88    
    lw      a0, 0x0018($sp)            
    lw      t6, 0x0340(a0)             ## 00000340
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    addiu   t7, $zero, 0x001E          ## t7 = 0000001E
    bnel    t6, $at, lbl_80963A8C      
    lw      $ra, 0x0014($sp)           
    sw      t7, 0x0254(a0)             ## 00000254
    jal     func_80962EE8              
    sw      a0, 0x0018($sp)            
    lui     $at, %hi(var_809668AC)     ## $at = 80960000
    lw      a0, 0x0018($sp)            
    lwc1    $f4, %lo(var_809668AC)($at) 
    lui     t8, 0x8012                 ## t8 = 80120000
    lui     $at, %hi(var_809668B0)     ## $at = 80960000
    swc1    $f4, 0x006C(a0)            ## 0000006C
    lw      t8, -0x4600(t8)            ## 8011BA00
    lwc1    $f10, %lo(var_809668B0)($at) 
    lui     $at, %hi(var_809668B4)     ## $at = 80960000
    lh      t9, 0x1478(t8)             ## 80121478
    lwc1    $f18, %lo(var_809668B4)($at) 
    mtc1    t9, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    neg.s   $f6, $f4                   
    swc1    $f6, 0x0070(a0)            ## 00000070
lbl_80963A88:
    lw      $ra, 0x0014($sp)           
lbl_80963A8C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963A98:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80022D20              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963AB8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FAA4              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963A98              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963350              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962990              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80963B44:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FB2C              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809631C0              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962EA8              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963430              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962990              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80963BDC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_80962F10              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963A08              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963C48:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809639AC              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962990              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963CC0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8096278C              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809631C0              
    lw      a1, 0x0024($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809625A0              
    lw      a0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096368C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963D2C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809631C0              
    lw      a1, 0x0024($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809625A0              
    lw      a0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096368C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963D98:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80962EA8              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809625E0              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963E08:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809634F4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963E60:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80963E70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xBA00             ## v1 = 8011BA00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f8                   ## $f8 = 3.00
    lw      v0, 0x1C44(t6)             ## 00001C44
    addiu   a1, a0, 0x0364             ## a1 = 00000364
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    lw      t8, 0x0024(v0)             ## 00000024
    sw      t8, 0x037C(a0)             ## 0000037C
    lw      t7, 0x0028(v0)             ## 00000028
    sw      t7, 0x0380(a0)             ## 00000380
    lw      t8, 0x002C(v0)             ## 0000002C
    sw      t8, 0x0384(a0)             ## 00000384
    lw      t9, 0x0000(v1)             ## 8011BA00
    lh      t0, 0x1474(t9)             ## 00001474
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0378(a0)           ## 00000378
    lw      t1, 0x0000(v1)             ## 8011BA00
    lh      a2, 0x1476(t1)             ## 00001476
    addiu   a2, a2, 0x000C             ## a2 = 0000000C
    sll     a2, a2, 16                 
    jal     func_80027854              
    sra     a2, a2, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963EF8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xBA00             ## v1 = 8011BA00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f8                   ## $f8 = 3.00
    lw      v0, 0x1C44(t6)             ## 00001C44
    addiu   a1, a0, 0x0364             ## a1 = 00000364
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    lw      t8, 0x0024(v0)             ## 00000024
    sw      t8, 0x037C(a0)             ## 0000037C
    lw      t7, 0x0028(v0)             ## 00000028
    sw      t7, 0x0380(a0)             ## 00000380
    lw      t8, 0x002C(v0)             ## 0000002C
    sw      t8, 0x0384(a0)             ## 00000384
    lw      t9, 0x0000(v1)             ## 8011BA00
    lh      t0, 0x1474(t9)             ## 00001474
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0378(a0)           ## 00000378
    lw      t1, 0x0000(v1)             ## 8011BA00
    lh      a2, 0x1476(t1)             ## 00001476
    sw      a0, 0x0018($sp)            
    addiu   a2, a2, 0x000C             ## a2 = 0000000C
    sll     a2, a2, 16                 
    jal     func_80027854              
    sra     a2, a2, 16                 
    lw      a0, 0x0018($sp)            
    lh      t2, 0x00B6(a0)             ## 000000B6
    sh      t2, 0x0032(a0)             ## 00000032
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80963F8C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x4130                 ## a1 = 41300000
    jal     func_8008D6A8              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beq     v0, $zero, lbl_80963FBC    
    lw      a0, 0x0018($sp)            
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x28AC          ## a1 = 000028AC
lbl_80963FBC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80963FCC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lhu     t6, -0x4B10(t6)            ## 8011B4F0
    lui     a0, 0x0600                 ## a0 = 06000000
    andi    t7, t6, 0x0004             ## t7 = 00000000
    beql    t7, $zero, lbl_80964074    
    or      v0, $zero, $zero           ## v0 = 00000000
    jal     func_8008A194              
    addiu   a0, a0, 0x7534             ## a0 = 06007534
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -8.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x7534             ## a1 = 06007534
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      t0, 0x002C($sp)            
    lw      v1, 0x0028($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t9, $zero, 0x0037          ## t9 = 00000037
    addu    $at, $at, t0               
    sb      t9, 0x03DC($at)            ## 000103DC
    lw      t2, 0x0004(v1)             ## 00000004
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    addiu   t1, $zero, 0x001A          ## t1 = 0000001A
    and     t3, t2, $at                
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      t1, 0x0254(v1)             ## 00000254
    beq     $zero, $zero, lbl_80964074 
    sw      t3, 0x0004(v1)             ## 00000004
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80964074:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964084:
    sw      a1, 0x0004($sp)            
    beq     a2, $zero, lbl_80964094    
    addiu   t6, $zero, 0x0019          ## t6 = 00000019
    sw      t6, 0x0254(a0)             ## 00000254
lbl_80964094:
    jr      $ra                        
    nop


func_8096409C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_8095FFBC              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_809640F4    
    lw      a0, 0x0018($sp)            
    jal     func_80963FCC              
    lw      a1, 0x001C($sp)            
    bnel    v0, $zero, lbl_809640F8    
    lw      $ra, 0x0014($sp)           
    jal     func_800D6218              
    lw      a0, 0x001C($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0F20(v0)             ## 8011B4F0
    lw      t9, 0x0018($sp)            
    addiu   t8, $zero, 0x0018          ## t8 = 00000018
    ori     t7, t6, 0x0004             ## t7 = 00000004
    sh      t7, 0x0F20(v0)             ## 8011B4F0
    sw      t8, 0x0254(t9)             ## 00000254
lbl_809640F4:
    lw      $ra, 0x0014($sp)           
lbl_809640F8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964104:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    beq     a2, $zero, lbl_8096419C    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x6B9C             ## a0 = 06006B9C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x6B9C             ## a1 = 06006B9C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0F20(v0)             ## 8011B4F0
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    ori     t7, t6, 0x0008             ## t7 = 00000008
    jal     func_80962580              
    sh      t7, 0x0F20(v0)             ## 8011B4F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D20              
    lw      a1, 0x0034($sp)            
    addiu   t8, $zero, 0x001B          ## t8 = 0000001B
    sw      t8, 0x0254(s0)             ## 00000254
    jal     func_8095FC28              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_8096419C:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809641B0:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0017          ## t6 = 00000017
    sw      t6, 0x0254(a0)             ## 00000254
    jr      $ra                        
    nop


func_809641C4:
    sw      a1, 0x0004($sp)            
    lw      t8, 0x0004(a0)             ## 00000004
    addiu   t6, $zero, 0x0018          ## t6 = 00000018
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    ori     t9, t8, 0x0009             ## t9 = 00000009
    sw      t6, 0x0254(a0)             ## 00000254
    sw      t7, 0x0258(a0)             ## 00000258
    sw      t9, 0x0004(a0)             ## 00000004
    jr      $ra                        
    nop


func_809641EC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963E70              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FA60              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096312C              
    or      a1, s1, $zero              ## a1 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809624C8              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80964084              
    lw      a2, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80964278:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963EF8              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096409C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809642D4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80963F8C              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_80964104              
    lw      a2, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096433C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0020($sp)            
    lw      s0, 0x0020($sp)            
    lui     a1, 0x4000                 ## a1 = 40000000
    addiu   s0, s0, 0x013C             ## s0 = 0000013C
    jal     func_8008D6A8              
    or      a0, s0, $zero              ## a0 = 0000013C
    bne     v0, $zero, lbl_809643B8    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x40E0                 ## a1 = 40E00000
    bne     v0, $zero, lbl_809643B8    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x4140                 ## a1 = 41400000
    bne     v0, $zero, lbl_809643B8    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x4190                 ## a1 = 41900000
    bne     v0, $zero, lbl_809643B8    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x41C8                 ## a1 = 41C80000
    bne     v0, $zero, lbl_809643B8    
    or      a0, s0, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x4204                 ## a1 = 42040000
    beql    v0, $zero, lbl_809643CC    
    lw      $ra, 0x001C($sp)           
lbl_809643B8:
    lw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x0803          ## a1 = 00000803
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    lw      $ra, 0x001C($sp)           
lbl_809643CC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809643DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x6862          ## a3 = 00006862
    jal     func_80058FF8              
    addiu   a1, a1, 0x00E4             ## a1 = 000000E4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964414:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x40A0                 ## a1 = 40A00000
    jal     func_8008D6A8              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beq     v0, $zero, lbl_80964444    
    lw      a0, 0x0018($sp)            
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6863          ## a1 = 00006863
lbl_80964444:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964454:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6865          ## a1 = 00006865
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096447C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_8095FF4C              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     v0, $at, lbl_809644E4      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD00              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD18              
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    lbu     t6, 0x013D(s0)             ## 0000013D
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t6, $at, lbl_809644E4      
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4BF0             ## a1 = 06004BF0
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    jal     func_8096002C              
    sw      $zero, 0x0010($sp)         
    jal     func_80964454              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809644E4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809644F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(var_80966728)      ## t6 = 80960000
    lw      t6, %lo(var_80966728)(t6)  
    lui     $at, 0x4270                ## $at = 42700000
    bnel    t6, $zero, lbl_8096455C    
    lw      $ra, 0x0014($sp)           
    lwc1    $f0, 0x0154(a0)            ## 00000154
    mtc1    $at, $f4                   ## $f4 = 60.00
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_8096455C               
    lw      $ra, 0x0014($sp)           
    jal     func_8095FD00              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8095FD18              
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_80962410              
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    lui     $at, %hi(var_80966728)     ## $at = 80960000
    sw      t7, %lo(var_80966728)($at) 
    lw      $ra, 0x0014($sp)           
lbl_8096455C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964568:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    jal     func_8095FE44              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     v0, $zero, lbl_80964658    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x63F4             ## a0 = 060063F4
    lw      t6, 0x0034($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    lw      t0, 0x1D98(t6)             ## 00001D98
    addiu   t1, $zero, 0x0002          ## t1 = 00000002
    mfc1    a3, $f0                    
    lw      t7, 0x000C(t0)             ## 0000000C
    addiu   a1, a1, 0x63F4             ## a1 = 060063F4
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    mtc1    t7, $f4                    ## $f4 = 0.00
    lui     a2, 0x3F80                 ## a2 = 3F800000
    cvt.s.w $f6, $f4                   
    mtc1    v0, $f4                    ## $f4 = 0.00
    swc1    $f6, 0x0024(s0)            ## 00000024
    lw      t8, 0x0010(t0)             ## 00000010
    cvt.s.w $f6, $f4                   
    mtc1    t8, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(s0)           ## 00000028
    lw      t9, 0x0014(t0)             ## 00000014
    mtc1    t9, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(s0)           ## 0000002C
    lh      v1, 0x0006(t0)             ## 00000006
    sh      v1, 0x00B4(s0)             ## 000000B4
    sh      v1, 0x0030(s0)             ## 00000030
    lh      v1, 0x0008(t0)             ## 00000008
    sh      v1, 0x00B6(s0)             ## 000000B6
    sh      v1, 0x0032(s0)             ## 00000032
    lh      v1, 0x000A(t0)             ## 0000000A
    sh      v1, 0x00B8(s0)             ## 000000B8
    sh      v1, 0x0034(s0)             ## 00000034
    sw      t1, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096016C              
    lw      a1, 0x0034($sp)            
    addiu   t2, $zero, 0x0025          ## t2 = 00000025
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    sw      t2, 0x0254(s0)             ## 00000254
    sw      t3, 0x0258(s0)             ## 00000258
    sb      t4, 0x00C8(s0)             ## 000000C8
lbl_80964658:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096466C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809646D0    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3608             ## a0 = 06003608
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x3608             ## a1 = 06003608
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    jal     func_80960194              
    lw      a0, 0x0028($sp)            
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0026          ## t6 = 00000026
    sw      t6, 0x0254(t7)             ## 00000254
lbl_809646D0:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809646E0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    jal     func_8095FE44              
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     v0, $zero, lbl_80964758    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2EC0             ## a0 = 06002EC0
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x2EC0             ## a1 = 06002EC0
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      t8, 0x0028($sp)            
    addiu   t7, $zero, 0x0027          ## t7 = 00000027
    sw      t7, 0x0254(t8)             ## 00000254
lbl_80964758:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964768:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809647C8    
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x97B8             ## a0 = 060097B8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0028          ## t6 = 00000028
    sw      t6, 0x0254(t7)             ## 00000254
lbl_809647C8:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809647D8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_8095FD98              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80964854    
    lw      t6, 0x002C($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0F20(v0)             ## 8011B4F0
    lui     t7, 0x0001                 ## t7 = 00010000
    addu    t7, t7, t6                 
    lb      t7, 0x1CBC(t7)             ## 00011CBC
    ori     t9, t8, 0x0020             ## t9 = 00000020
    sh      t9, 0x0F20(v0)             ## 8011B4F0
    lw      a0, 0x0028($sp)            
    jal     func_8095FC34              
    sb      t7, 0x001F($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_800204D0              
    or      a1, v0, $zero              ## a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_8095FF34              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lw      t1, 0x0028($sp)            
    addiu   t0, $zero, 0x002A          ## t0 = 0000002A
    sw      t0, 0x0254(t1)             ## 00000254
    lw      t3, 0x0028($sp)            
    lb      t2, 0x001F($sp)            
    sb      t2, 0x0003(t3)             ## 00000003
lbl_80964854:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964864:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8095FF4C              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     v0, $at, lbl_809648C0      
    addiu   t8, $zero, 0x4048          ## t8 = 00004048
    lw      t6, 0x0004(s0)             ## 00000004
    sh      t8, 0x010E(s0)             ## 0000010E
    andi    a1, t8, 0xFFFF             ## a1 = 00004048
    ori     t7, t6, 0x0009             ## t7 = 00000009
    sw      t7, 0x0004(s0)             ## 00000004
    jal     func_800DCE80              
    lw      a0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809643DC              
    lw      a1, 0x0024($sp)            
    addiu   t9, $zero, 0x002B          ## t9 = 0000002B
    sw      t9, 0x0254(s0)             ## 00000254
    sw      $zero, 0x0258(s0)          ## 00000258
lbl_809648C0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809648D4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80960000              
    or      a0, a1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80964900    
    lw      a0, 0x0018($sp)            
    jal     func_8095FF34              
    addiu   a1, $zero, 0x0004          ## a1 = 00000004
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
lbl_80964900:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964910:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809626E8              
    lw      a0, 0x0018($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    jal     func_8095FC78              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80964568              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964954:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096012C              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80964414              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809644F8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096433C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096466C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809649CC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809626E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8095FD30              
    lw      a1, 0x001C($sp)            
    jal     func_809600E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809646E0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964A14:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x002C($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964768              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964A70:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809647D8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964AC8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809626E8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096447C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964864              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964B28:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809626E8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809648D4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964B5C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    lhu     v0, -0x4B10(v0)            ## 8011B4F0
    andi    t6, v0, 0x0020             ## t6 = 00000000
    beq     t6, $zero, lbl_80964BDC    
    andi    t7, v0, 0x0040             ## t7 = 00000000
    bne     t7, $zero, lbl_80964BDC    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8096002C              
    sw      $zero, 0x0010($sp)         
    addiu   t8, $zero, 0x0029          ## t8 = 00000029
    sw      t8, 0x0254(s0)             ## 00000254
    jal     func_8095FEEC              
    lw      a0, 0x002C($sp)            
    sw      v0, 0x027C(s0)             ## 0000027C
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FF34              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lw      t9, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             ## 00000004
    beq     $zero, $zero, lbl_80964BE8 
    lw      $ra, 0x0024($sp)           
lbl_80964BDC:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80964BE8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964BF8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a1, $zero              ## a0 = 00000000
    jal     func_8095FEEC              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t6, $zero, 0x002A          ## t6 = 0000002A
    beq     v0, $zero, lbl_80964C38    
    sw      v0, 0x027C(a2)             ## 0000027C
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t6, 0x0254(a2)             ## 00000254
    sw      t7, 0x0258(a2)             ## 00000258
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_8095FF34              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
lbl_80964C38:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964C48:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lhu     t6, 0x0EDA(v0)             ## 8011B4AA
    andi    t7, t6, 0x0080             ## t7 = 00000000
    beq     t7, $zero, lbl_80964CBC    
    nop
    lw      t8, 0x0004(v0)             ## 8011A5D4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     a1, 0x0601                 ## a1 = 06010000
    bne     t8, $at, lbl_80964CBC      
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8096002C              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    addiu   t1, $zero, 0x002C          ## t1 = 0000002C
    lw      t9, 0x0004(a0)             ## 00000004
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sw      t1, 0x0254(a0)             ## 00000254
    and     t0, t9, $at                
    sw      t0, 0x0004(a0)             ## 00000004
    beq     $zero, $zero, lbl_80964CC4 
    sw      t2, 0x0258(a0)             ## 00000258
lbl_80964CBC:
    jal     func_80020EB4              
    nop
lbl_80964CC4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964CD4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_80964D44    
    lw      a2, 0x0018($sp)            
    lw      t6, 0x0004(a2)             ## 00000004
    addiu   a1, $zero, 0x001F          ## a1 = 0000001F
    ori     t7, t6, 0x0009             ## t7 = 00000009
    sw      t7, 0x0004(a2)             ## 00000004
    sw      a2, 0x0018($sp)            
    jal     func_800597C0              
    lw      a0, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    andi    t8, v0, 0xFFFF             ## t8 = 00000000
    bne     t8, $zero, lbl_80964D30    
    sh      v0, 0x010E(a2)             ## 0000010E
    addiu   t9, $zero, 0x402C          ## t9 = 0000402C
    sh      t9, 0x010E(a2)             ## 0000010E
lbl_80964D30:
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_80022A90              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80964D48 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80964D44:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80964D48:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964D58:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_800DD464              
    addiu   a0, a1, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     v0, $at, lbl_80964D90      
    lw      v1, 0x0018($sp)            
    lw      t6, 0x0004(v1)             ## 00000004
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    and     t7, t6, $at                
    beq     $zero, $zero, lbl_80964D94 
    sw      t7, 0x0004(v1)             ## 00000004
lbl_80964D90:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80964D94:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964DA4:
    sw      a1, 0x0004($sp)            
    beq     a2, $zero, lbl_80964DB4    
    addiu   t6, $zero, 0x002D          ## t6 = 0000002D
    sw      t6, 0x0254(a0)             ## 00000254
lbl_80964DB4:
    jr      $ra                        
    nop


func_80964DBC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80964D58              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80964DE0    
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x002C          ## t6 = 0000002C
    sw      t6, 0x0254(t7)             ## 00000254
lbl_80964DE0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964DF0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963E70              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FA60              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964CD4              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80964DA4              
    or      a2, v0, $zero              ## a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80964E6C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80963EF8              
    lw      a1, 0x0024($sp)            
    jal     func_809600E8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FC78              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FD30              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964DBC              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964EC8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     v0, 0x8012                 ## v0 = 80120000
    lhu     v0, -0x4B10(v0)            ## 8011B4F0
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_80964F4C    
    andi    t7, v0, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80964F4C    
    andi    t8, v0, 0x0020             ## t8 = 00000000
    bne     t8, $zero, lbl_80964F4C    
    nop
    jal     func_8095FE84              
    sw      a0, 0x0020($sp)            
    bne     v0, $zero, lbl_80964F4C    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x97B8             ## a1 = 060097B8
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8096002C              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t9, $zero, 0x0016          ## t9 = 00000016
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    lb      v0, 0x0003(a0)             ## 00000003
    sw      t9, 0x0254(a0)             ## 00000254
    sb      t0, 0x0003(a0)             ## 00000003
    sw      $zero, 0x0258(a0)          ## 00000258
    sb      v0, 0x0274(a0)             ## 00000274
    sb      v0, 0x0276(a0)             ## 00000276
    beq     $zero, $zero, lbl_80964F54 
    sb      v0, 0x0275(a0)             ## 00000275
lbl_80964F4C:
    jal     func_80020EB4              
    nop
lbl_80964F54:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964F64:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0254(a0)             ## 00000254
    bltz    v0, lbl_80964F9C           
    slti    $at, v0, 0x002E            
    beq     $at, $zero, lbl_80964F9C   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_8096672C)      ## v1 = 80960000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_8096672C)(v1)  
    beql    v1, $zero, lbl_80964FA0    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80964F9C:
    lw      $ra, 0x0014($sp)           
lbl_80964FA0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80964FAC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   t6, s0, 0x0180             ## t6 = 00000180
    addiu   t7, s0, 0x01E6             ## t7 = 000001E6
    addiu   t8, $zero, 0x0011          ## t8 = 00000011
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x2700             ## a2 = 06012700
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    jal     func_8008C788              
    or      a3, $zero, $zero           ## a3 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8095FB70              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_8095FC48              
    or      a0, s0, $zero              ## a0 = 00000000
    sltiu   $at, v0, 0x0007            
    beq     $at, $zero, lbl_809650CC   
    sll     t9, v0,  2                 
    lui     $at, %hi(var_809668B8)     ## $at = 80960000
    addu    $at, $at, t9               
    lw      t9, %lo(var_809668B8)($at) 
    jr      t9                         
    nop
var_80965040:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961C08              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_80965054:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809601A8              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_80965068:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80961150              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_8096507C:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809622D4              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_80965090:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964B5C              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_809650A4:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964C48              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
var_809650B8:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80964EC8              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809650D8 
    lw      $ra, 0x002C($sp)           
lbl_809650CC:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_809650D8:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_809650E8:
    sw      a1, 0x0004($sp)            
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     a2, $at, lbl_8096510C      
    addiu   v0, a0, 0x0372             ## v0 = 00000372
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    beq     a2, $at, lbl_80965130      
    addiu   v0, a0, 0x036C             ## v0 = 0000036C
    jr      $ra                        
    nop
lbl_8096510C:
    lh      t6, 0x0000(a3)             ## 00000000
    lh      t7, 0x0002(v0)             ## 0000036E
    lh      t9, 0x0002(a3)             ## 00000002
    addu    t8, t6, t7                 
    sh      t8, 0x0000(a3)             ## 00000000
    lh      t0, 0x0000(v0)             ## 0000036C
    subu    t1, t9, t0                 
    jr      $ra                        
    sh      t1, 0x0002(a3)             ## 00000002
lbl_80965130:
    lh      t2, 0x0000(a3)             ## 00000000
    lh      t3, 0x0002(v0)             ## 0000036E
    lh      t5, 0x0004(a3)             ## 00000004
    addu    t4, t2, t3                 
    sh      t4, 0x0000(a3)             ## 00000000
    lh      t6, 0x0000(v0)             ## 0000036C
    addu    t7, t5, t6                 
    sh      t7, 0x0004(a3)             ## 00000004
    jr      $ra                        
    nop


func_80965158:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a2, 0x0020($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a3, 0x0024($sp)            
    lw      t6, 0x002C($sp)            
    lw      v0, 0x0280(t6)             ## 00000280
    bltzl   v0, lbl_809651B4           
    or      v0, $zero, $zero           ## v0 = 00000000
    bgtz    v0, lbl_809651B0           
    sll     t7, v0,  2                 
    lui     v1, %hi(var_809667E4)      ## v1 = 80960000
    addu    v1, v1, t7                 
    lw      v1, %lo(var_809667E4)(v1)  
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0018($sp)            
    beql    v1, $zero, lbl_809651B4    
    or      v0, $zero, $zero           ## v0 = 00000000
    jalr    $ra, v1                    
    lw      a3, 0x0028($sp)            
lbl_809651B0:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809651B4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809651C4:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_80965240      
    addiu   a0, $sp, 0x0028            ## a0 = FFFFFFF0
    lui     t6, %hi(var_809667E8)      ## t6 = 80960000
    addiu   t6, t6, %lo(var_809667E8)  ## t6 = 809667E8
    lw      t8, 0x0000(t6)             ## 809667E8
    addiu   a1, $sp, 0x001C            ## a1 = FFFFFFE4
    sw      t8, 0x0000(a0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 809667EC
    sw      t7, 0x0004(a0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 809667F0
    jal     func_800AB958              
    sw      t8, 0x0008(a0)             ## FFFFFFF8
    lw      v0, 0x0048($sp)            
    lwc1    $f4, 0x001C($sp)           
    lh      t9, 0x0030(v0)             ## 00000030
    swc1    $f4, 0x0038(v0)            ## 00000038
    lwc1    $f6, 0x0020($sp)           
    lh      t0, 0x0032(v0)             ## 00000032
    lh      t1, 0x0034(v0)             ## 00000034
    swc1    $f6, 0x003C(v0)            ## 0000003C
    lwc1    $f8, 0x0024($sp)           
    sh      t9, 0x0044(v0)             ## 00000044
    sh      t0, 0x0046(v0)             ## 00000046
    sh      t1, 0x0048(v0)             ## 00000048
    swc1    $f8, 0x0040(v0)            ## 00000040
lbl_80965240:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80965250:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80965260:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      v0, 0x024C(a3)             ## 0000024C
    lh      a2, 0x0250(a3)             ## 00000250
    lui     t2, %hi(var_80965648)      ## t2 = 80960000
    lui     t3, %hi(var_80965660)      ## t3 = 80960000
    sll     t6, v0,  2                 
    sll     t7, a2,  2                 
    addu    t2, t2, t6                 
    addu    t3, t3, t7                 
    lw      t2, %lo(var_80965648)(t2)  
    lw      t3, %lo(var_80965660)(t3)  
    lw      t8, 0x0054($sp)            
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t3, 0x0034($sp)            
    sw      t2, 0x0040($sp)            
    sw      a3, 0x0050($sp)            
    jal     func_8007E298              
    sw      a0, 0x002C($sp)            
    lui     t4, 0x8012                 ## t4 = 80120000
    lui     t5, 0x00FF                 ## t5 = 00FF0000
    lui     $ra, 0xDB06                ## $ra = DB060000
    ori     $ra, $ra, 0x0024           ## $ra = DB060024
    ori     t5, t5, 0xFFFF             ## t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             ## t4 = 80120C38
    lw      v1, 0x002C($sp)            
    lui     t1, 0x8000                 ## t1 = 80000000
    lw      t2, 0x0040($sp)            
    lw      t3, 0x0034($sp)            
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
    addu    t7, t6, a2                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    sw      $ra, 0x0000(v0)            ## 00000000
    lw      t6, 0x0000(a1)             ## 00000000
    addu    t7, t6, a2                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    sll     t6, t3,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    sll     t8, t7,  2                 
    addu    t9, t4, t8                 
    sw      $ra, 0x0000(v0)            ## 00000000
    lw      t6, 0x0000(t9)             ## 00000008
    and     t7, t3, t5                 
    addu    t8, t6, t7                 
    addu    t9, t8, t1                 
    sw      t9, 0x0004(v0)             ## 00000004
    lw      t3, 0x0050($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xFB00                 ## t7 = FB000000
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    sw      t8, 0x0004(v0)             ## 00000004
    sw      t7, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t6, 0xDB06                 ## t6 = DB060000
    lui     t7, 0x800F                 ## t7 = 800F0000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    addiu   t7, t7, 0x8520             ## t7 = 800E8520
    ori     t6, t6, 0x0030             ## t6 = DB060030
    sw      t6, 0x0000(v0)             ## 00000000
    sw      t7, 0x0004(v0)             ## 00000004
    addiu   t0, t3, 0x013C             ## t0 = 0000013C
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    lui     t8, %hi(func_80965158)     ## t8 = 80960000
    lui     t9, %hi(func_809651C4)     ## t9 = 80960000
    addiu   t9, t9, %lo(func_809651C4) ## t9 = 809651C4
    addiu   t8, t8, %lo(func_80965158) ## t8 = 80965158
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      t3, 0x0018($sp)            
    lw      t6, 0x02C0(v1)             ## 000002C0
    sw      v1, 0x002C($sp)            
    lw      a0, 0x0054($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x002C($sp)            
    sw      v0, 0x02C0(v1)             ## 000002C0
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80965404:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    lh      v0, 0x024C(s0)             ## 0000024C
    lh      a2, 0x0250(s0)             ## 00000250
    lui     t2, %hi(var_80965648)      ## t2 = 80960000
    lui     t3, %hi(var_80965660)      ## t3 = 80960000
    sll     t6, v0,  2                 
    sll     t7, a2,  2                 
    addu    t2, t2, t6                 
    addu    t3, t3, t7                 
    lw      t2, %lo(var_80965648)(t2)  
    lw      t3, %lo(var_80965660)(t3)  
    lw      t8, 0x005C($sp)            
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t3, 0x003C($sp)            
    sw      t2, 0x0048($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x0034($sp)            
    lui     t4, 0x8012                 ## t4 = 80120000
    lui     t5, 0x00FF                 ## t5 = 00FF0000
    lui     $ra, 0xDB06                ## $ra = DB060000
    ori     $ra, $ra, 0x0024           ## $ra = DB060024
    ori     t5, t5, 0xFFFF             ## t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             ## t4 = 80120C38
    lw      v1, 0x0034($sp)            
    lui     t1, 0x8000                 ## t1 = 80000000
    lw      t2, 0x0048($sp)            
    lw      t3, 0x003C($sp)            
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
    addiu   t0, s0, 0x013C             ## t0 = 0000013C
    addu    t7, t6, a2                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    sw      $ra, 0x0000(v0)            ## 00000000
    lw      t6, 0x0000(a1)             ## 00000000
    addu    t7, t6, a2                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    sll     t6, t3,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    sll     t8, t7,  2                 
    addu    t9, t4, t8                 
    sw      $ra, 0x0000(v0)            ## 00000000
    lw      t6, 0x0000(t9)             ## 00000008
    and     t7, t3, t5                 
    addu    t8, t6, t7                 
    addu    t9, t8, t1                 
    sw      t9, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t7, 0xFB00                 ## t7 = FB000000
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(v1)             ## 000002D0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t8, 0x0298(s0)             ## 00000298
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0030             ## t7 = DB060030
    andi    t9, t8, 0x00FF             ## t9 = 00000000
    sw      t9, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t8, 0x800F                 ## t8 = 800F0000
    addiu   t8, t8, 0x8510             ## t8 = 800E8510
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(v1)             ## 000002D0
    sw      t8, 0x0004(v0)             ## 00000004
    sw      t7, 0x0000(v0)             ## 00000000
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    lui     t9, %hi(func_80965158)     ## t9 = 80960000
    addiu   t9, t9, %lo(func_80965158) ## t9 = 80965158
    sw      t9, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    lw      t6, 0x02D0(v1)             ## 000002D0
    sw      v1, 0x0034($sp)            
    lw      a0, 0x005C($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x0034($sp)            
    sw      v0, 0x02D0(v1)             ## 000002D0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_809655A4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0258(a0)             ## 00000258
    bltz    v0, lbl_809655DC           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_809655DC   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809667F4)      ## v1 = 80960000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809667F4)(v1)  
    beql    v1, $zero, lbl_809655E0    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809655DC:
    lw      $ra, 0x0014($sp)           
lbl_809655E0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_809655F0: .word \
0x00000009, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_8096561C: .word \
0x00090009, 0x01000000, 0x00000000, 0x00000101, \
0x00000000, 0x00000000, 0x00000000, 0x01000100, \
0x0014001E, 0x00000000, 0x00000000
var_80965648: .word \
0x0600E3B8, 0x0600F238, 0x0600F638, 0x0600FE38, \
0x06010238, 0x06010A38
var_80965660: .word 0x0600E838, 0x0600FA38, 0x06010638, 0x00000000
var_80965670: .word \
0x0000000F, 0x0000051A, 0x0000000A, 0x0000000A, \
0x00270000, 0x00320000, 0x6C160000, 0x0000000C, \
0xFFFFFEAC, 0xFFFFF506, 0x0000000C, 0xFFFFFEAC, \
0xFFFFF506, 0x0F671408, 0x00000000, 0x00000001, \
0x00030032, 0x00460000, 0x6C160000, 0x0000000C, \
0xFFFFFEAC, 0xFFFFF506, 0x0000000C, 0xFFFFFEAC, \
0xFFFFF506, 0x0F671408, 0x00000000, 0x00000001, \
0x00050046, 0x006D0000, 0x6C160000, 0x0000000C, \
0xFFFFFEAC, 0xFFFFF506, 0x0000000C, 0xFFFFFEAC, \
0xFFFFF506, 0x0F671408, 0x00000000, 0x00000001, \
0x0002006D, 0x00870000, 0x6C160000, 0x0000000C, \
0xFFFFFEAC, 0xFFFFF506, 0x00000064, 0xFFFFFEAC, \
0xFFFFF451, 0x0F671408, 0x00000000, 0x00000001, \
0x00050087, 0x00C70000, 0x6C160000, 0x00000064, \
0xFFFFFEAC, 0xFFFFF451, 0x00000064, 0xFFFFFEAC, \
0xFFFFF451, 0x0F671408, 0x00000000, 0x00000001, \
0x000300C7, 0x00DB0000, 0x6C160000, 0x00000064, \
0xFFFFFEAC, 0xFFFFF451, 0x00000064, 0xFFFFFEAC, \
0xFFFFF451, 0x0F671408, 0x00000000, 0x00000001, \
0x000500DB, 0x01030000, 0x6C160000, 0x00000064, \
0xFFFFFEAC, 0xFFFFF451, 0x00000064, 0xFFFFFEAC, \
0xFFFFF451, 0x0F671408, 0x00000000, 0x00000001, \
0x00030103, 0x01140000, 0x6C160000, 0x00000064, \
0xFFFFFEAC, 0xFFFFF451, 0x00000064, 0xFFFFFEAC, \
0xFFFFF451, 0x0F671408, 0x00000000, 0x00000001, \
0x00020114, 0x01290000, 0x6C160000, 0x00000064, \
0xFFFFFEAC, 0xFFFFF451, 0x000000B6, 0xFFFFFEAC, \
0xFFFFF3C4, 0x0F671408, 0x00000000, 0x00000001, \
0x00050129, 0x034B0000, 0x6C160000, 0x000000B6, \
0xFFFFFEAC, 0xFFFFF3C4, 0x000000B6, 0xFFFFFEAC, \
0xFFFFF3C4, 0x0F671408, 0x00000000, 0x00000001, \
0x0000003F, 0x00000004, 0x00020000, 0x00B20000, \
0xEC160000, 0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, \
0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, 0x0F671408, \
0x00000000, 0x00000001, 0x000300B2, 0x00F50000, \
0x6C160000, 0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, \
0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, 0x0F671408, \
0x00000000, 0x00000001, 0x000400F5, 0x01040000, \
0x6C160000, 0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, \
0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, 0x0F671408, \
0x00000000, 0x00000001, 0x00050104, 0x018C0000, \
0x6C160000, 0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, \
0x0000007F, 0xFFFFFEAC, 0xFFFFF41F, 0x0F671408, \
0x00000000, 0x00000001, 0x00000003, 0x00000001, \
0x000C013B, 0x01590000, 0x00000000, 0x00000000, \
0xFFFFFFC0, 0x00000032, 0x00000000, 0xFFFFFFC0, \
0x00000032, 0x00000000, 0x00000000, 0x00000000, \
0x00000013, 0x00000004, 0xFFFF0000, 0x009DFFFF, \
0xFFFFFFFF, 0x404B009D, 0x00AF0000, 0xFFFFFFFF, \
0xFFFF00AF, 0x00FCFFFF, 0xFFFFFFFF, 0x401E00FC, \
0x012C0000, 0xFFFFFFFF, 0x00000001, 0x00010000, \
0x00F70000, 0x00000000, 0x4235998B, 0x0037FEDE, \
0xF54320BA, 0x00000000, 0x4235998B, 0x0037FEDE, \
0xF54344B8, 0x00000000, 0x4235998B, 0x0037FEDE, \
0xF5438080, 0x00000000, 0x4235998B, 0x0037FEDE, \
0xF543E243, 0x00000000, 0x41F6662C, 0x0037FEDE, \
0xF543005E, 0x00000000, 0x41F6662C, 0x0037FEDE, \
0xF543FFFF, 0x00000000, 0x41F6662C, 0x0037FEDE, \
0xF5430000, 0x00000000, 0x41F6662C, 0x0037FEDE, \
0xF5435B80, 0xFF000000, 0x41F6662C, 0x0037FEDE, \
0xF54349B4, 0x00000001, 0x00010049, 0x00D00000, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF45720BA, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF45744B8, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF4578080, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF457E243, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF457005E, \
0x00000000, 0x4235998B, 0x0063FECD, 0xF457FFFF, \
0xFF000000, 0x4235998B, 0x0063FECD, 0xF4570000, \
0x00000001, 0x00010074, 0x04B70000, 0x00000000, \
0x42373325, 0x009BFEEC, 0xF4A120BA, 0x00000000, \
0x42373325, 0x009BFEEC, 0xF4A144B8, 0x00000000, \
0x42373325, 0x009BFEEC, 0xF4A18080, 0x00000000, \
0x42373325, 0x009BFEEC, 0xF4A1E243, 0xFF000000, \
0x42373325, 0x009BFEEC, 0xF4A1005E, 0x00000001, \
0x000100BA, 0x04FD0000, 0x00000000, 0x4235998C, \
0x004DFEC5, 0xF45020BA, 0x00000000, 0x4235998C, \
0x004DFEC5, 0xF45044B8, 0x00000000, 0x4235998C, \
0x004DFEC5, 0xF4508080, 0x00000000, 0x4235998C, \
0x004DFEC5, 0xF450E243, 0xFF000000, 0x4235998C, \
0x004DFEC5, 0xF450005E, 0x00000001, 0x00010100, \
0x01A90000, 0x00000000, 0x41E1995C, 0x015EFF13, \
0xF30E20BA, 0x00000000, 0x41E1995C, 0x015EFF13, \
0xF30E44B8, 0x00000000, 0x41E1995C, 0x015EFF13, \
0xF30E8080, 0x00000000, 0x41E1995C, 0x015EFF13, \
0xF30EE243, 0x00000000, 0x423B3327, 0x015EFF13, \
0xF30E005E, 0x00000000, 0x423B3327, 0x015EFF13, \
0xF30EFFFF, 0x00000000, 0x423B3327, 0x015EFF13, \
0xF30E0000, 0xFF000000, 0x423B3327, 0x015EFF13, \
0xF30E5B80, 0x00000002, 0x00010000, 0x01140000, \
0x00000032, 0x4235998B, 0x0028FF00, 0xF4F920BA, \
0x00000032, 0x4235998B, 0x0028FF00, 0xF4F944B8, \
0x00000028, 0x4235998B, 0x0016FEC7, 0xF4F98080, \
0x0000000A, 0x4235998B, 0x0017FEC7, 0xF4F9E243, \
0x00000006, 0x41F6662C, 0x0049FED6, 0xF4F4005E, \
0x0000001E, 0x41F6662C, 0x0049FED6, 0xF4F4FFFF, \
0x0000001E, 0x41F6662C, 0x0049FED6, 0xF4F40000, \
0x0000001E, 0x41F6662C, 0x0049FED6, 0xF4F45B80, \
0xFF00001E, 0x41F6662C, 0x0049FED6, 0xF4F449B4, \
0x00000002, 0x00010049, 0x00ED0000, 0x0000001E, \
0x4270CCCD, 0x0088FEC6, 0xF40C20BA, 0x00000007, \
0x42726667, 0x0088FEC6, 0xF40C44B8, 0x00000007, \
0x4235998B, 0x0088FEC6, 0xF40C8080, 0x0000001E, \
0x4235998B, 0x0088FEC6, 0xF40CE243, 0x0000001E, \
0x4235998B, 0x0088FEC6, 0xF40C005E, 0x0000001E, \
0x4235998B, 0x0087FEC7, 0xF40CFFFF, 0xFF00001E, \
0x4235998B, 0x0087FEC7, 0xF40D0000, 0x00000002, \
0x00010074, 0x04D40000, 0x0000001E, 0x42373325, \
0x0084FECF, 0xF46720BA, 0x0000001E, 0x42373325, \
0x0084FED0, 0xF46744B8, 0x000003E8, 0x42373325, \
0x0085FED0, 0xF4678080, 0x0000001E, 0x42373325, \
0x0085FED0, 0xF467E243, 0xFF00001E, 0x42373325, \
0x0085FED0, 0xF467005E, 0x00000002, 0x000100BA, \
0x051A0000, 0x0000001E, 0x4235998C, 0x008AFED3, \
0xF42820BA, 0x0000001E, 0x4235998C, 0x008AFED3, \
0xF42844B8, 0x000003E8, 0x4235998C, 0x008AFED3, \
0xF4288080, 0x0000001E, 0x4235998C, 0x008AFED3, \
0xF428E243, 0xFF00001E, 0x4235998C, 0x008AFED3, \
0xF428005E, 0x00000002, 0x00010100, 0x01C60000, \
0x0000001E, 0x41E1995C, 0x0133FF02, 0xF34620BA, \
0x0000001E, 0x41E1995C, 0x0133FF02, 0xF34644B8, \
0x00000009, 0x41E1995C, 0x0133FF02, 0xF3468080, \
0x00000009, 0x423B3327, 0x0130FEEF, 0xF337E243, \
0x0000001E, 0x423B3327, 0x0130FEF0, 0xF336005E, \
0x0000001E, 0x423B3327, 0x0130FEF0, 0xF336FFFF, \
0x0000001E, 0x423B3327, 0x0130FEF0, 0xF3360000, \
0xFF00001E, 0x423B3327, 0x0131FEF0, 0xF3365B80, \
0x00000056, 0x00000001, 0x0052004A, 0x004B0000, \
0x00000000, 0xFFFFFFF1, 0x00000000, 0x0000004E, \
0xFFFFFFF1, 0x00000000, 0x0000004E, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, \
0x00000000
var_80965E94: .word \
0x0000000E, 0x00000513, 0x0000000A, 0x00000003, \
0x00050000, 0x01100000, 0xC0000000, 0xFFFFFBC3, \
0xFFFFFBFF, 0xFFFFF2ED, 0xFFFFFBC3, 0xFFFFFBFF, \
0xFFFFF2ED, 0x0F671408, 0x00000000, 0x00000001, \
0x00030110, 0x01240000, 0xC0000000, 0xFFFFFBC3, \
0xFFFFFBFF, 0xFFFFF2ED, 0xFFFFFBC3, 0xFFFFFBFF, \
0xFFFFF2ED, 0x0F671408, 0x00000000, 0x00000001, \
0x00050124, 0x03090000, 0xC0000000, 0xFFFFFBC3, \
0xFFFFFBFF, 0xFFFFF2ED, 0xFFFFFBC3, 0xFFFFFBFF, \
0xFFFFF2ED, 0x0F671408, 0x00000000, 0x00000001, \
0x00000003, 0x00000001, 0x000C014A, 0x02730000, \
0x00000000, 0x00000000, 0xFFFFFFC0, 0x00000032, \
0x00000000, 0xFFFFFFC0, 0x00000032, 0x00000000, \
0x00000000, 0x00000000, 0x00000042, 0x00000003, \
0x00010000, 0x00280000, 0x40000000, 0xFFFFFAB8, \
0xFFFFFC37, 0xFFFFF2F3, 0xFFFFFAB8, 0xFFFFFC37, \
0xFFFFF2F3, 0x00000000, 0x00000000, 0x00000001, \
0x00020028, 0x00D50000, 0x40000000, 0xFFFFFAB8, \
0xFFFFFC37, 0xFFFFF2F3, 0xFFFFFAB0, 0xFFFFFC37, \
0xFFFFF2F1, 0x00000000, 0x00000000, 0x00000001, \
0x000300D5, 0x03E80000, 0x40000000, 0xFFFFFAB0, \
0xFFFFFC37, 0xFFFFF2F1, 0xFFFFFAB0, 0xFFFFFC37, \
0xFFFFF2F1, 0x00000000, 0x00000000, 0x00000001, \
0x00000030, 0x00000001, 0x00020000, 0x005A0000, \
0x00000000, 0xFFFFFAB0, 0xFFFFFC3D, 0xFFFFF2F1, \
0xFFFFFAB0, 0xFFFFFC3D, 0xFFFFF2F1, 0x00000000, \
0x00000000, 0x00000000, 0x00000030, 0x00000002, \
0x0002005A, 0x00D30000, 0x00000000, 0xFFFFFAB8, \
0xFFFFFC66, 0xFFFFF2F3, 0xFFFFFAB8, 0xFFFFFC66, \
0xFFFFF2F3, 0x00000000, 0x00000000, 0x00000000, \
0x000600D3, 0x01370000, 0x00000000, 0xFFFFFAB8, \
0xFFFFFC66, 0xFFFFF2F3, 0xFFFFFAB8, 0xFFFFFC66, \
0xFFFFF2F3, 0x00000000, 0x00000000, 0x00000000, \
0x0000003E, 0x00000003, 0x00040000, 0x00D20000, \
0x00000000, 0xFFFFFBD7, 0xFFFFFC34, 0xFFFFF317, \
0xFFFFFBD7, 0xFFFFFC2E, 0xFFFFF317, 0x00000000, \
0xBCEA0EA1, 0x00000000, 0x000400D2, 0x00DC8000, \
0x00000000, 0xFFFFFBD7, 0xFFFFFC2E, 0xFFFFF317, \
0xFFFFFBD7, 0xFFFFFC33, 0xFFFFF2F0, 0x00000000, \
0x3F000000, 0x00000000, 0x000400DC, 0x019A0000, \
0x00000000, 0xFFFFFBD7, 0xFFFFFC33, 0xFFFFF2F0, \
0xFFFFFBD7, 0xFFFFFC30, 0xFFFFF2F0, 0x00000000, \
0xBC8158ED, 0x00000000, 0x00000013, 0x00000006, \
0xFFFF0000, 0x00A2FFFF, 0xFFFFFFFF, 0x405000A2, \
0x00D30000, 0xFFFFFFFF, 0xFFFF00D3, 0x00E8FFFF, \
0xFFFFFFFF, 0x405100E8, 0x00F10000, 0xFFFFFFFF, \
0xFFFF00F1, 0x00F7FFFF, 0xFFFFFFFF, 0x405200F7, \
0x012B0000, 0xFFFFFFFF, 0x00000056, 0x00000001, \
0x00230070, 0x00710000, 0x00000000, 0x00000000, \
0xFFFFFFC7, 0x000000B1, 0x00000000, 0xFFFFFFC7, \
0x000000B1, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x00010000, 0x04980000, 0x00000000, \
0x4227A05C, 0xFA92FC4C, 0xF2F500C6, 0x00000000, \
0x4222D38E, 0xFA92FC4C, 0xF2F500C8, 0x00000000, \
0x4222D38E, 0xFA92FC4C, 0xF2F500D7, 0x00000000, \
0x4222D38E, 0xFA76FC56, 0xF2F700E8, 0x00000000, \
0x42346D2B, 0xFA76FC56, 0xF2F700EA, 0x00000000, \
0x42346D2B, 0xFA76FC56, 0xF2F7013D, 0x00000000, \
0x42346D2B, 0xFA76FC56, 0xF2F7013F, 0xFF000000, \
0x42346D2B, 0xFA76FC56, 0xF2F7006D, 0x00000001, \
0x0001005B, 0x04F60000, 0x00000000, 0x4233A05F, \
0xFAD9FC5A, 0xF2F100C6, 0x00000000, 0x4232D392, \
0xFAD9FC58, 0xF2F000C8, 0x00000000, 0x4232D392, \
0xFAD9FC58, 0xF2F000D7, 0x00000000, 0x4232D392, \
0xFAD9FC58, 0xF2F000E8, 0x00000000, 0x4232D392, \
0xFAD2FC78, 0xF2F200EA, 0x00000000, 0x4273A06F, \
0xFAD2FC78, 0xF2F2013D, 0x00000000, 0x4273A06F, \
0xFAD2FC78, 0xF2F2013F, 0x00000000, 0x4273A06F, \
0xFAD2FC78, 0xF2F2014E, 0x00000000, 0x4273A06F, \
0xFAD2FC78, 0xF2F2015F, 0x00000000, 0x4273A06F, \
0xFAD2FC78, 0xF2F20161, 0xFF000000, 0x4273A06F, \
0xFAD2FC00, 0xF2F2652E, 0x00000001, 0x000100D3, \
0x014C0000, 0x00000000, 0x41F273D3, 0xFA41FCCD, \
0xF3B300C6, 0x00000000, 0x41F273D3, 0xFA41FCCD, \
0xF3B300C8, 0x00000000, 0x41F273D3, 0xFA41FCCD, \
0xF3B300D7, 0x00000000, 0x41F273D3, 0xFA41FCCD, \
0xF3B300E8, 0xFF000000, 0x41F273D3, 0xFA41FCCD, \
0xF3B300EA, 0x00000002, 0x00010000, 0x04B50000, \
0x0000001E, 0x4222D38E, 0xFAF1FC15, 0xF2E800C6, \
0x00000032, 0x4222D38E, 0xFAF0FC15, 0xF2E800C8, \
0x00000014, 0x4222D38E, 0xFAF0FC15, 0xF2E800D7, \
0x0000000F, 0x42346D2B, 0xFADEFC37, 0xF2EE00E8, \
0x0000001E, 0x42346D2B, 0xFADFFC36, 0xF2EE00EA, \
0x000003E8, 0x42346D2B, 0xFADFFC37, 0xF2EE013D, \
0x0000001E, 0x42346D2B, 0xFADFFC36, 0xF2EE013F, \
0xFF00001E, 0x42346D2B, 0xFADFFC36, 0xF2EE006D, \
0x00000002, 0x0001005B, 0x05130000, 0x0000001E, \
0x4232D392, 0xFA83FC24, 0xF2F100C6, 0x00000007, \
0x4232D392, 0xFA82FC23, 0xF2F000C8, 0x00000007, \
0x4232D392, 0xFA82FC23, 0xF2F000D7, 0x00000007, \
0x4232D392, 0xFA82FC23, 0xF2F000E8, 0x00000007, \
0x4273A06F, 0xFA8FFC2E, 0xF2F200EA, 0x0000001E, \
0x4273A06F, 0xFA8FFC2F, 0xF2F2013D, 0x0000001E, \
0x4273A06F, 0xFA8FFC2F, 0xF2F2013F, 0x000003E8, \
0x4273A06F, 0xFA8FFC2F, 0xF2F2014E, 0x0000001E, \
0x4273A06F, 0xFA8FFC2F, 0xF2F2015F, 0x0000001E, \
0x4273A06F, 0xFA8FFC2F, 0xF2F20161, 0xFF00001E, \
0x4273A06F, 0xFA87FBBA, 0xF2ED652E, 0x00000002, \
0x000100D3, 0x01690000, 0x0000001E, 0x41F273D3, \
0xFA6EFCA7, 0xF38A00C6, 0x0000001E, 0x41F273D3, \
0xFA6EFCA7, 0xF38A00C8, 0x0000001E, 0x41F273D3, \
0xFA6EFCA7, 0xF38A00D7, 0x0000001E, 0x41F273D3, \
0xFA6EFCA7, 0xF38A00E8, 0xFF00001E, 0x41F273D3, \
0xFA6EFCA7, 0xF38A00EA, 0xFFFFFFFF, 0x00000000, \
0x00000000
var_80966518: .word \
0x00000007, 0x00000488, 0x00000003, 0x00000001, \
0x000C004B, 0x02730000, 0x00000000, 0x00000000, \
0xFFFFFFC0, 0x00000032, 0x00000000, 0xFFFFFFC0, \
0x00000032, 0x00000000, 0x00000000, 0x00000000, \
0x00000030, 0x00000001, 0x00020000, 0x005A0000, \
0x00000000, 0xFFFFFAB0, 0xFFFFFC3D, 0xFFFFF2F1, \
0xFFFFFAB0, 0xFFFFFC3D, 0xFFFFF2F1, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x04430000, 0x00000000, 0x42226662, 0xFA9BFC42, \
0xF2FD8BC0, 0x00000000, 0x42226662, 0xFA9BFC42, \
0xF2FD2200, 0x00000000, 0x42226662, 0xFA9BFC42, \
0xF2FD0000, 0x00000000, 0x42226662, 0xFA9BFC42, \
0xF2FDD0E8, 0xFF000000, 0x42226662, 0xFA9BFC42, \
0xF2FD0000, 0x00000005, 0x00010028, 0x046B0000, \
0x00000000, 0x424B3339, 0x00130028, 0x00358BC0, \
0x00000000, 0x424B3339, 0x00130028, 0x00352200, \
0x00000000, 0x424B3339, 0x00130028, 0x00350000, \
0x00000000, 0x424B3339, 0x00130028, 0x0035D0E8, \
0xFF000000, 0x424B3339, 0x00130028, 0x00350000, \
0x00000002, 0x00010000, 0x04600000, 0x0000001E, \
0x42226662, 0xFB38FC2D, 0xF2DA8BC0, 0x0000001E, \
0x42226662, 0xFB38FC2D, 0xF2DA2200, 0x000003E8, \
0x42226662, 0xFB38FC2D, 0xF2DA0000, 0x0000001E, \
0x42226662, 0xFB38FC2D, 0xF2DAD0E8, 0xFF00001E, \
0x42226662, 0xFB38FC2D, 0xF2DA0000, 0x00000006, \
0x00010028, 0x04880000, 0x0000001E, 0x424B3339, \
0xFFDD0038, 0xFFA38BC0, 0x0000001E, 0x424B3339, \
0xFFDD0038, 0xFFA32200, 0x000003E8, 0x424B3339, \
0xFFDD0038, 0xFFA30000, 0x0000001E, 0x424B3339, \
0xFFDD0038, 0xFFA3D0E8, 0xFF00001E, 0x424B3339, \
0xFFDD0038, 0xFFA30000, 0x00000013, 0x00000002, \
0xFFFF0000, 0x0023FFFF, 0xFFFFFFFF, 0x404F0023, \
0x00460000, 0xFFFFFFFF, 0xFFFFFFFF, 0x00000000
var_80966728: .word 0x00000000
var_8096672C: .word func_80960EC0
.word func_80960F14
.word func_80960F48
.word func_80960F98
.word func_80960FF8
.word func_8096106C
.word func_809610EC
.word func_809618E8
.word func_80961908
.word func_80961928
.word func_80961970
.word func_809619BC
.word func_80961A18
.word func_80961A80
.word func_80961AEC
.word func_80962174
.word func_80962194
.word func_809621B4
.word func_809621E8
.word func_8096221C
.word func_8096225C
.word func_80962294
.word func_809641B0
.word func_809641C4
.word func_809641EC
.word func_80964278
.word func_809642D4
.word func_80963AB8
.word func_80963B44
.word func_80963BDC
.word func_80963C48
.word func_80963CC0
.word func_80963D2C
.word func_80963D98
.word func_80963E08
.word func_80963E60
.word func_80964910
.word func_80964954
.word func_809649CC
.word func_80964A14
.word func_80964A70
.word func_80964BF8
.word func_80964AC8
.word func_80964B28
.word func_80964DF0
.word func_80964E6C
var_809667E4: .word func_809650E8
var_809667E8: .word 0x00000000, 0x41200000, 0x00000000
var_809667F4: .word func_80965250
.word func_80965260
.word func_80965404
var_80966800: .word 0x00A10400, 0x04000011, 0x00A30000, 0x0000038C
.word func_80964FAC
.word func_8095FC58
.word func_80964F64
.word func_809655A4

.section .rodata

var_80966820: .word 0x3C23D70A
var_80966824: .word 0x402CCCCD
var_80966828: .word 0x3C23D70A
var_8096682C: .word 0x402CCCCD
var_80966830: .word 0x3C23D70A
var_80966834: .word 0x3C23D70A
var_80966838: .word 0x43848000
var_8096683C: .word 0xC61C4000
var_80966840: .word 0x42A6AAAB
var_80966844: .word 0x4622F983
var_80966848: .word 0x3C23D70A
var_8096684C: .word 0x3C23D70A
var_80966850: .word 0x3F4CCCCD
var_80966854: .word 0x3F19999A
var_80966858: .word 0x3F19999A, 0x3C23D70A, 0x3C23D70A
var_80966864: .word 0x3C23D70A
var_80966868: .word 0x3F4CCCCD
var_8096686C: .word 0x3F19999A
var_80966870: .word 0x3C23D70A
var_80966874: .word 0x3F19999A
var_80966878: .word 0x3F8CCCCD
var_8096687C: .word 0x3C23D70A
var_80966880: .word 0x3F7AE148
var_80966884: .word 0x3E4CCCCD
var_80966888: .word 0xBDCCCCCD
var_8096688C: .word 0x3DCCCCCD
var_80966890: .word 0x3F733333
var_80966894: .word 0x3C23D70A
var_80966898: .word 0x40D9999A
var_8096689C: .word 0x3FA66666
var_809668A0: .word 0x3C23D70A
var_809668A4: .word 0x40D9999A
var_809668A8: .word 0x3FA66666
var_809668AC: .word 0xBDCCCCCD
var_809668B0: .word 0x3DCCCCCD
var_809668B4: .word 0x3F333333
var_809668B8: .word var_80965040
.word var_80965054
.word var_80965068
.word var_8096507C
.word var_80965090
.word var_809650A4
.word var_809650B8
.word 0x00000000, 0x00000000, 0x00000000

