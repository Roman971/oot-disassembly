#include <mips.h>
.set noreorder
.set noat

.section .text
func_8099BEC0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, %hi(var_8099C7DC)      ## a1 = 809A0000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_8099C7DC)  ## a1 = 8099C7DC
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    lui     a0, 0x0601                 ## a0 = 06010000
    addiu   a0, a0, 0x08B8             ## a0 = 060108B8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s1, 0x0810             ## a1 = 00000810
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_800313A4              ## DynaPolyInfo_setActor
    lw      a3, 0x0024($sp)            
    sw      v0, 0x013C(s0)             ## 0000013C
    addiu   a1, s0, 0x015C             ## a1 = 0000015C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_8099C780)      ## a3 = 809A0000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_8099C780)  ## a3 = 8099C780
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x01A8             ## a1 = 000001A8
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_8099C7AC)      ## a3 = 809A0000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_8099C7AC)  ## a3 = 8099C7AC
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f4                   ## $f4 = 15.00
    lui     $at, %hi(var_8099C7D8)     ## $at = 809A0000
    lui     t8, %hi(func_8099C014)     ## t8 = 809A0000
    mul.s   $f6, $f0, $f4              
    addiu   t8, t8, %lo(func_8099C014) ## t8 = 8099C014
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x015A(s0)             ## 0000015A
    sw      $zero, %lo(var_8099C7D8)($at) 
    sw      t8, 0x0154(s0)             ## 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_8099BFBC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    lw      a2, 0x013C(t6)             ## 0000013C
    jal     func_80031638              ## DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x015C             ## a1 = 0000015C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x01A8             ## a1 = 000001A8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8099C014:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lb      t6, 0x0003(s0)             ## 00000003
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    bnel    t6, $at, lbl_8099C0AC      
    lbu     v0, 0x01B8(s0)             ## 000001B8
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   t8, t7, 0x0180             ## t8 = 00000180
    sh      t8, 0x00B6(s0)             ## 000000B6
    lh      a0, 0x00B6(s0)             ## 000000B6
    addiu   a0, a0, 0xC000             ## a0 = FFFFC000
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4311                ## $at = 43110000
    mtc1    $at, $f4                   ## $f4 = 145.00
    lui     $at, %hi(var_8099C7F0)     ## $at = 809A0000
    lwc1    $f8, %lo(var_8099C7F0)($at) 
    mul.s   $f6, $f0, $f4              
    lh      a0, 0x00B6(s0)             ## 000000B6
    addiu   a0, a0, 0xC000             ## a0 = FFFFC000
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f6, $f8             
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0024(s0)           ## 00000024
    lui     $at, 0x4311                ## $at = 43110000
    mtc1    $at, $f16                  ## $f16 = 145.00
    lui     $at, %hi(var_8099C7F4)     ## $at = 809A0000
    lwc1    $f4, %lo(var_8099C7F4)($at) 
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(s0)            ## 0000002C
    lbu     v0, 0x01B8(s0)             ## 000001B8
lbl_8099C0AC:
    lui     $at, 0x40A0                ## $at = 40A00000
    or      a0, s1, $zero              ## a0 = 00000000
    andi    t9, v0, 0x0002             ## t9 = 00000000
    beq     t9, $zero, lbl_8099C0DC    
    andi    t0, v0, 0xFFFD             ## t0 = 00000000
    mtc1    $at, $f0                   ## $f0 = 5.00
    sb      t0, 0x01B8(s0)             ## 000001B8
    lh      a3, 0x008A(s0)             ## 0000008A
    mfc1    a2, $f0                    
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
lbl_8099C0DC:
    lbu     v0, 0x016D(s0)             ## 0000016D
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01A8             ## a1 = 000001A8
    andi    t1, v0, 0x0002             ## t1 = 00000000
    beq     t1, $zero, lbl_8099C214    
    andi    t2, v0, 0xFFFD             ## t2 = 00000000
    lw      a1, 0x0164(s0)             ## 00000164
    sb      t2, 0x016D(s0)             ## 0000016D
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80021528              
    addiu   a1, a1, 0x0024             ## a1 = 000001CC
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f2                   ## $f2 = 50.00
    nop
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8099C270               
    lw      $ra, 0x0034($sp)           
    lw      t3, 0x0164(s0)             ## 00000164
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lui     a2, %hi(var_8099C7E0)      ## a2 = 809A0000
    lwc1    $f8, 0x0028(t3)            ## 00000028
    addiu   a2, a2, %lo(var_8099C7E0)  ## a2 = 8099C7E0
    lui     $at, 0x42A0                ## $at = 42A00000
    sub.s   $f16, $f8, $f10            
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_8099C270               
    lw      $ra, 0x0034($sp)           
    lwc1    $f18, 0x0024(s0)           ## 00000024
    mtc1    $at, $f8                   ## $f8 = 80.00
    addiu   t4, $zero, 0x0064          ## t4 = 00000064
    swc1    $f18, 0x0044($sp)          
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    addiu   t5, $zero, 0x002D          ## t5 = 0000002D
    or      a0, s1, $zero              ## a0 = 00000000
    swc1    $f4, 0x004C($sp)           
    lwc1    $f6, 0x0028(s0)            ## 00000028
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    add.s   $f10, $f6, $f8             
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFF4
    or      a3, a2, $zero              ## a3 = 8099C7E0
    jal     func_8001C97C              
    swc1    $f10, 0x0048($sp)          
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    addiu   a2, $zero, 0x0032          ## a2 = 00000032
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2839          ## a3 = 00002839
    lui     t1, 0x0401                 ## t1 = 04010000
    addiu   t1, t1, 0xCE20             ## t1 = 0400CE20
    addiu   t6, $zero, 0x015E          ## t6 = 0000015E
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    addiu   t8, $zero, 0x0032          ## t8 = 00000032
    addiu   t9, $zero, 0x0069          ## t9 = 00000069
    addiu   t0, $zero, 0x0028          ## t0 = 00000028
    sw      t0, 0x0020($sp)            
    sw      t9, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    sw      t1, 0x0024($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFF4
    lui     a2, 0x41A0                 ## a2 = 41A00000
    jal     func_8001D29C              
    or      a3, $zero, $zero           ## a3 = 00000000
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    sh      t2, 0x0158(s0)             ## 00000158
    sw      $zero, 0x0134(s0)          ## 00000134
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lui     t3, %hi(func_8099C280)     ## t3 = 809A0000
    addiu   t3, t3, %lo(func_8099C280) ## t3 = 8099C280
    beq     $zero, $zero, lbl_8099C26C 
    sw      t3, 0x0154(s0)             ## 00000154
lbl_8099C214:
    jal     func_80050B00              
    sw      a1, 0x0040($sp)            
    addiu   a2, s0, 0x015C             ## a2 = 0000015C
    or      a1, a2, $zero              ## a1 = 0000015C
    sw      a2, 0x003C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    s0, s1, $at                
    lw      a2, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_8004BF40              ## CollisionCheck_setAC
    or      a0, s1, $zero              ## a0 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_8004BD50              ## CollisionCheck_setAT
    lw      a2, 0x0040($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x0040($sp)            
lbl_8099C26C:
    lw      $ra, 0x0034($sp)           
lbl_8099C270:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_8099C280:
    addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
    sw      s6, 0x0048($sp)            
    sw      s4, 0x0040($sp)            
    or      s4, a0, $zero              ## s4 = 00000000
    or      s6, a1, $zero              ## s6 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s5, 0x0044($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    lh      t6, 0x0158(s4)             ## 00000158
    addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x0158(s4)             ## 00000158
    lh      t8, 0x0158(s4)             ## 00000158
    bnel    t8, $zero, lbl_8099C520    
    lw      $ra, 0x004C($sp)           
    lwc1    $f4, 0x0024(s4)            ## 00000024
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f8                   ## $f8 = 200.00
    swc1    $f4, 0x005C($sp)           
    lwc1    $f6, 0x0028(s4)            ## 00000028
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    or      a0, s6, $zero              ## a0 = 00000000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0060($sp)          
    lwc1    $f16, 0x002C(s4)           ## 0000002C
    swc1    $f16, 0x0064($sp)          
    lb      t9, 0x0003(s4)             ## 00000003
    bne     t9, $at, lbl_8099C4A4      
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     v0, %hi(var_8099C7D8)      ## v0 = 809A0000
    addiu   v0, v0, %lo(var_8099C7D8)  ## v0 = 8099C7D8
    lw      t0, 0x0000(v0)             ## 8099C7D8
    addiu   s3, $zero, 0x0003          ## s3 = 00000003
    lui     $at, %hi(var_8099C7F8)     ## $at = 809A0000
    addiu   t1, t0, 0x0001             ## t1 = 00000001
    bne     s3, t1, lbl_8099C3C0       
    sw      t1, 0x0000(v0)             ## 8099C7D8
    addiu   s5, $zero, 0xFFFF          ## s5 = FFFFFFFF
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    or      s0, $zero, $zero           ## s0 = 00000000
    addiu   s2, $zero, 0x0009          ## s2 = 00000009
    addiu   s1, $zero, 0x1C71          ## s1 = 00001C71
lbl_8099C33C:
    div     $zero, s0, s3              
    mfhi    a2                         
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    or      a0, s6, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFEC
    bne     s3, $zero, lbl_8099C360    
    nop
    break   ## 0x01C00
lbl_8099C360:
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    bne     s3, $at, lbl_8099C378      
    lui     $at, 0x8000                ## $at = 80000000
    bne     s0, $at, lbl_8099C378      
    nop
    break   ## 0x01800
lbl_8099C378:
    jal     func_80013678              
    nop
    beql    v0, $zero, lbl_8099C3B0    
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    multu   s0, s1                     
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f18                  ## $f18 = 15.00
    nop
    swc1    $f18, 0x0060(v0)           ## 00000060
    lh      t3, 0x00B6(s4)             ## 000000B6
    mflo    t4                         
    addu    t5, t3, t4                 
    sh      t5, 0x0032(v0)             ## 00000032
    addiu   s0, s0, 0x0001             ## s0 = 00000002
lbl_8099C3B0:
    bne     s0, s2, lbl_8099C33C       
    nop
    beq     $zero, $zero, lbl_8099C4E0 
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_8099C3C0:
    lwc1    $f4, %lo(var_8099C7F8)($at) 
    lui     $at, %hi(var_8099C7FC)     ## $at = 809A0000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_8099C434               
    nop
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f8                   ## $f8 = 80.00
    lwc1    $f6, 0x0028(s4)            ## 00000028
    lw      a3, 0x0024(s4)             ## 00000024
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    add.s   $f10, $f6, $f8             
    addiu   s5, $zero, 0xFFFF          ## s5 = FFFFFFFF
    addiu   a0, s6, 0x1C24             ## a0 = 00001C24
    or      a1, s6, $zero              ## a1 = 00000000
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x002C(s4)           ## 0000002C
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x0013          ## a2 = 00000013
    swc1    $f16, 0x0014($sp)          
    lh      t6, 0x00B6(s4)             ## 000000B6
    sw      t7, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              ## ActorSpawn
    sw      t6, 0x001C($sp)            
    jal     func_800646F0              
    addiu   a0, $zero, 0x4806          ## a0 = 00004806
    beq     $zero, $zero, lbl_8099C4E0 
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_8099C434:
    lwc1    $f18, %lo(var_8099C7FC)($at) 
    lui     $at, %hi(var_8099C800)     ## $at = 809A0000
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_8099C454               
    nop
    beq     $zero, $zero, lbl_8099C494 
    addiu   s5, $zero, 0x0004          ## s5 = 00000004
lbl_8099C454:
    lwc1    $f4, %lo(var_8099C800)($at) 
    lui     $at, %hi(var_8099C804)     ## $at = 809A0000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_8099C474               
    nop
    beq     $zero, $zero, lbl_8099C494 
    addiu   s5, $zero, 0x000E          ## s5 = 0000000E
lbl_8099C474:
    lwc1    $f6, %lo(var_8099C804)($at) 
    addiu   s5, $zero, 0x0008          ## s5 = 00000008
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_8099C494               
    nop
    beq     $zero, $zero, lbl_8099C494 
    addiu   s5, $zero, 0x000F          ## s5 = 0000000F
lbl_8099C494:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    beq     $zero, $zero, lbl_8099C4E0 
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_8099C4A4:
    jal     func_800206E8              
    lh      a1, 0x001C(s4)             ## 0000001C
    beq     v0, $zero, lbl_8099C4C4    
    addiu   s5, $zero, 0x0003          ## s5 = 00000003
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    beq     $zero, $zero, lbl_8099C4E0 
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_8099C4C4:
    lh      s5, 0x001C(s4)             ## 0000001C
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    andi    s5, s5, 0x003F             ## s5 = 00000003
    sll     s5, s5,  8                 
    jal     func_800646F0              
    ori     s5, s5, 0x0011             ## s5 = 00000013
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_8099C4E0:
    beq     s5, $at, lbl_8099C514      
    or      a0, s6, $zero              ## a0 = 00000000
    sll     a2, s5, 16                 
    sra     a2, a2, 16                 
    jal     func_80013678              
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFEC
    beq     v0, $zero, lbl_8099C514    
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f8                   ## $f8 = 15.00
    nop
    swc1    $f8, 0x0060(v0)            ## 00000060
    lh      t8, 0x00B6(s4)             ## 000000B6
    sh      t8, 0x0032(v0)             ## 00000032
lbl_8099C514:
    jal     func_80020EB4              
    or      a0, s4, $zero              ## a0 = 00000000
    lw      $ra, 0x004C($sp)           
lbl_8099C520:
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_8099C544:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t9, 0x0154(a0)             ## 00000154
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lh      t6, 0x015A(a0)             ## 0000015A
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    sh      t7, 0x015A(a0)             ## 0000015A
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_8099C578:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              ## s0 = 00000000
    lui     $at, 0x436B                ## $at = 436B0000
    mtc1    $at, $f6                   ## $f6 = 235.00
    lwc1    $f4, 0x0028(s1)            ## 00000028
    lwc1    $f12, 0x0024(s1)           ## 00000024
    lw      a2, 0x002C(s1)             ## 0000002C
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_800AA7F4              
    add.s   $f14, $f4, $f6             
    lh      t7, 0x00B6(s1)             ## 000000B6
    lui     $at, %hi(var_8099C808)     ## $at = 809A0000
    lwc1    $f16, %lo(var_8099C808)($at) 
    mtc1    t7, $f8                    ## $f8 = 0.00
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lui     $at, %hi(var_8099C80C)     ## $at = 809A0000
    lwc1    $f12, %lo(var_8099C80C)($at) 
    lui     $at, %hi(var_8099C810)     ## $at = 809A0000
    lwc1    $f14, %lo(var_8099C810)($at) 
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    lui     t3, 0x00AA                 ## t3 = 00AA0000
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    ori     t3, t3, 0xFFFF             ## t3 = 00AAFFFF
    ori     t9, t9, 0x8080             ## t9 = FA008080
    sw      t9, 0x0000(v1)             ## 00000000
    sw      t3, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, 0xFB00                 ## t5 = FB000000
    ori     t6, $zero, 0xFFFF          ## t6 = 0000FFFF
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t5, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x005C($sp)            
    lh      t1, 0x015A(s1)             ## 0000015A
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    lw      a0, 0x0000(t9)             ## FA008080
    subu    $at, $zero, t1             
    sll     t6, $at,  4                
    subu    t6, t6, $at                
    andi    t7, t6, 0x00FF             ## t7 = 000000FF
    addiu   t9, $zero, 0x0040          ## t9 = 00000040
    addiu   t3, $zero, 0x0020          ## t3 = 00000020
    addiu   t4, $zero, 0x0040          ## t4 = 00000040
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    sw      t9, 0x0028($sp)            
    sw      t7, 0x0020($sp)            
    sw      t8, 0x0024($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      v1, 0x0040($sp)            
    jal     func_8007EB84              
    andi    a2, t1, 0x007F             ## a2 = 00000000
    lw      t2, 0x0040($sp)            
    sw      v0, 0x0004(t2)             ## 00000004
    lw      s1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0xDA38                 ## t4 = DA380000
    ori     t4, t4, 0x0003             ## t4 = DA380003
    addiu   t3, s1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0000(s1)             ## 00000000
    lw      t5, 0x005C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t5)             ## 00000000
    sw      v0, 0x0004(s1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0x0402                 ## t8 = 04020000
    addiu   t8, t8, 0x8950             ## t8 = 04018950
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    lui     t7, 0xDE00                 ## t7 = DE000000
    sw      t7, 0x0000(v1)             ## 00000000
    sw      t8, 0x0004(v1)             ## 00000004
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_8099C71C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xFE40             ## a1 = 0600FE40
    jal     func_80028048              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8099C578              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_8099C760: .word 0x00BB0100, 0x00000010, 0x00690000, 0x000001F4
.word func_8099BEC0
.word func_8099BFBC
.word func_8099C544
.word func_8099C71C
var_8099C780: .word \
0x0A000900, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x0019003C, 0x001E0000, 0x00000000
var_8099C7AC: .word \
0x0A110009, 0x20010000, 0x00000000, 0x20000000, \
0x01040000, 0x00000008, 0x00000000, 0x19000100, \
0x003C002D, 0x00EB0000, 0x00000000
var_8099C7D8: .word 0x00000000
var_8099C7DC: .word 0x48500064
var_8099C7E0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8099C7F0: .word 0xC5ADB800
var_8099C7F4: .word 0xC4C66000
var_8099C7F8: .word 0x3E4CCCCD
var_8099C7FC: .word 0x3ECCCCCD
var_8099C800: .word 0x3F19999A
var_8099C804: .word 0x3F4CCCCD
var_8099C808: .word 0x38C90FDB
var_8099C80C: .word 0x3D8F5C29
var_8099C810: .word 0x3D23D70A, 0x00000000, 0x00000000, 0x00000000

