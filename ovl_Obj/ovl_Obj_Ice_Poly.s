#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A787D0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lh      v0, 0x001C(s0)             ## 0000001C
    andi    t8, v0, 0x00FF             ## t8 = 00000000
    sh      t8, 0x001C(s0)             ## 0000001C
    sra     t7, v0,  8                 
    lh      v0, 0x001C(s0)             ## 0000001C
    sb      t7, 0x0141(s0)             ## 00000141
    bltz    v0, lbl_80A7880C           
    slti    $at, v0, 0x0003            
    bne     $at, $zero, lbl_80A7881C   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7880C:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A78980 
    lw      $ra, 0x001C($sp)           
lbl_80A7881C:
    sll     t9, v0,  2                 
    lui     a1, %hi(var_80A790B8)      ## a1 = 80A80000
    addu    a1, a1, t9                 
    jal     func_80020F88              
    lw      a1, %lo(var_80A790B8)(a1)  
    lh      t0, 0x001C(s0)             ## 0000001C
    lui     t2, %hi(var_80A790C4)      ## t2 = 80A80000
    lwc1    $f8, 0x000C(s0)            ## 0000000C
    sll     t1, t0,  1                 
    addu    t2, t2, t1                 
    lh      t2, %lo(var_80A790C4)(t2)  
    addiu   a1, s0, 0x0144             ## a1 = 00000144
    mtc1    t2, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s0)           ## 00000028
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80A79060)      ## a3 = 80A80000
    addiu   a3, a3, %lo(var_80A79060)  ## a3 = 80A79060
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x0190             ## a1 = 00000190
    sw      a1, 0x0028($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80A7908C)      ## a3 = 80A80000
    addiu   a3, a3, %lo(var_80A7908C)  ## a3 = 80A7908C
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0028($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0028($sp)            
    lh      t3, 0x0184(s0)             ## 00000184
    lwc1    $f4, 0x0050(s0)            ## 00000050
    lh      t6, 0x0186(s0)             ## 00000186
    mtc1    t3, $f16                   ## $f16 = 0.00
    lh      t9, 0x01D0(s0)             ## 000001D0
    mtc1    t6, $f10                   ## $f10 = 0.00
    cvt.s.w $f18, $f16                 
    lh      t2, 0x01D2(s0)             ## 000001D2
    lui     $at, 0x41F0                ## $at = 41F00000
    addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
    sb      v0, 0x00AE(s0)             ## 000000AE
    cvt.s.w $f16, $f10                 
    mul.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0054(s0)           ## 00000054
    sb      v0, 0x0140(s0)             ## 00000140
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0050(s0)           ## 00000050
    trunc.w.s $f8, $f6                   
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f8                    
    mtc1    t9, $f8                    ## $f8 = 0.00
    mfc1    t8, $f6                    
    cvt.s.w $f10, $f8                  
    mtc1    t2, $f6                    ## $f6 = 0.00
    sh      t5, 0x0184(s0)             ## 00000184
    sh      t8, 0x0186(s0)             ## 00000186
    cvt.s.w $f8, $f6                   
    mul.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0054(s0)           ## 00000054
    mtc1    $at, $f6                   ## $f6 = 30.00
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f4, $f18                  
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f4                    
    lwc1    $f4, 0x0054(s0)            ## 00000054
    mfc1    t4, $f18                   
    mul.s   $f8, $f4, $f6              
    sh      t1, 0x01D0(s0)             ## 000001D0
    sh      t4, 0x01D2(s0)             ## 000001D2
    mfc1    a1, $f8                    
    jal     func_80020F04              
    nop
    lui     t5, %hi(func_80A789E0)     ## t5 = 80A80000
    addiu   t5, t5, %lo(func_80A789E0) ## t5 = 80A789E0
    sw      t5, 0x013C(s0)             ## 0000013C
    lw      $ra, 0x001C($sp)           
lbl_80A78980:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A78990:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lh      v0, 0x001C(a2)             ## 0000001C
    bltz    v0, lbl_80A789D0           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_80A789D0   
    lw      a0, 0x001C($sp)            
    addiu   a1, a2, 0x0144             ## a1 = 00000144
    jal     func_8004ABCC              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0190             ## a1 = 00000190
lbl_80A789D0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A789E0:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lbu     t6, 0x0155(s0)             ## 00000155
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x1400          ## a1 = 00001400
    andi    t7, t6, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_80A78A4C    
    lw      v0, 0x0118(s0)             ## 00000118
    lw      t8, 0x0180(s0)             ## 00000180
    lh      t1, 0x008A(s0)             ## 0000008A
    addiu   a2, $zero, 0x0028          ## a2 = 00000028
    lbu     t9, 0x0005(t8)             ## 00000005
    sh      t1, 0x0046(s0)             ## 00000046
    or      a3, s0, $zero              ## a3 = 00000000
    subu    t0, $zero, t9              
    sh      t0, 0x0142(s0)             ## 00000142
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lui     t2, %hi(func_80A78C10)     ## t2 = 80A80000
    addiu   t2, t2, %lo(func_80A78C10) ## t2 = 80A78C10
    beq     $zero, $zero, lbl_80A78AB8 
    sw      t2, 0x013C(s0)             ## 0000013C
    lw      v0, 0x0118(s0)             ## 00000118
lbl_80A78A4C:
    addiu   t3, $zero, 0x0028          ## t3 = 00000028
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A78AB0    
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    sh      t3, 0x0110(v0)             ## 00000110
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0144             ## a2 = 00000144
    sw      a2, 0x0034($sp)            
    jal     func_8004BD50              ## CollisionCheck_setAT
    sw      a1, 0x0038($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0038($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x0034($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0038($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x0034($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0038($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s0, 0x0190             ## a2 = 00000190
    beq     $zero, $zero, lbl_80A78ABC 
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
lbl_80A78AB0:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A78AB8:
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
lbl_80A78ABC:
    jal     func_80063BF0              
    addiu   a1, $zero, 0x000F          ## a1 = 0000000F
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v0, 0x0042($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lh      t4, 0x0042($sp)            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A78AF4               
    nop
    beq     $zero, $zero, lbl_80A78AF4 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80A78AF4:
    multu   v0, t4                     
    lwc1    $f10, 0x0050(s0)           ## 00000050
    lwc1    $f18, 0x0024(s0)           ## 00000024
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    addiu   a1, $zero, 0x005A          ## a1 = 0000005A
    mflo    t5                         
    mtc1    t5, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063BF0              
    swc1    $f4, 0x0048($sp)           
    mtc1    v0, $f6                    ## $f6 = 0.00
    lwc1    $f10, 0x0054(s0)           ## 00000054
    lwc1    $f18, 0x0028(s0)           ## 00000028
    cvt.s.w $f8, $f6                   
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
    addiu   a1, $zero, 0x000F          ## a1 = 0000000F
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063BF0              
    swc1    $f4, 0x004C($sp)           
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v0, 0x0042($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    lui     a2, %hi(var_80A790D4)      ## a2 = 80A80000
    lh      t6, 0x0042($sp)            
    c.lt.s  $f0, $f6                   
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    addiu   a2, a2, %lo(var_80A790D4)  ## a2 = 80A790D4
    or      a0, s1, $zero              ## a0 = 00000000
    bc1f    lbl_80A78B88               
    addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
    beq     $zero, $zero, lbl_80A78B88 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80A78B88:
    multu   v0, t6                     
    lwc1    $f16, 0x0058(s0)           ## 00000058
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    lui     t8, 0x0001                 ## t8 = 00010000
    addu    t8, t8, s1                 
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    lui     t0, %hi(var_80A790CC)      ## t0 = 80A80000
    lui     t1, %hi(var_80A790D0)      ## t1 = 80A80000
    addiu   t1, t1, %lo(var_80A790D0)  ## t1 = 80A790D0
    addiu   t0, t0, %lo(var_80A790CC)  ## t0 = 80A790CC
    mflo    t7                         
    mtc1    t7, $f8                    ## $f8 = 0.00
    or      a3, a2, $zero              ## a3 = 80A790D4
    addiu   t2, $zero, 0x07D0          ## t2 = 000007D0
    cvt.s.w $f10, $f8                  
    addiu   t3, $zero, 0x0005          ## t3 = 00000005
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0050($sp)           
    lw      t8, 0x1DE4(t8)             ## 00011DE4
    divu    $zero, t8, $at             
    mfhi    t9                         
    bnel    t9, $zero, lbl_80A78C00    
    lw      $ra, 0x002C($sp)           
    sw      t0, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    sw      t2, 0x0018($sp)            
    jal     func_8001C6A8              
    sw      t3, 0x001C($sp)            
    lw      $ra, 0x002C($sp)           
lbl_80A78C00:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80A78C10:
    addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
    sw      s3, 0x004C($sp)            
    sw      s0, 0x0040($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s8, 0x0060($sp)            
    sw      s7, 0x005C($sp)            
    sw      s6, 0x0058($sp)            
    sw      s5, 0x0054($sp)            
    sw      s4, 0x0050($sp)            
    sw      s2, 0x0048($sp)            
    sw      s1, 0x0044($sp)            
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    swc1    $f0, 0x0094($sp)           
    lwc1    $f4, 0x0054(s0)            ## 00000054
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f24                  ## $f24 = 20.00
    swc1    $f0, 0x009C($sp)           
    swc1    $f0, 0x0088($sp)           
    lui     $at, 0x4248                ## $at = 42480000
    swc1    $f4, 0x0098($sp)           
    lwc1    $f6, 0x0054(s0)            ## 00000054
    mtc1    $at, $f22                  ## $f22 = 50.00
    lui     $at, 0x3F00                ## $at = 3F000000
    lui     s8, %hi(var_80A790D0)      ## s8 = 80A80000
    lui     s7, %hi(var_80A790CC)      ## s7 = 80A80000
    mtc1    $at, $f20                  ## $f20 = 0.50
    swc1    $f0, 0x0090($sp)           
    addiu   s7, s7, %lo(var_80A790CC)  ## s7 = 80A790CC
    addiu   s8, s8, %lo(var_80A790D0)  ## s8 = 80A790D0
    or      s2, $zero, $zero           ## s2 = 00000000
    addiu   s6, $sp, 0x0094            ## s6 = FFFFFFF4
    addiu   s5, $sp, 0x0088            ## s5 = FFFFFFE8
    addiu   s4, $sp, 0x007C            ## s4 = FFFFFFDC
    swc1    $f6, 0x008C($sp)           
    addiu   a0, $zero, 0x0014          ## a0 = 00000014
lbl_80A78CB0:
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0014          ## a1 = 00000014
    sll     s1, v0, 16                 
    jal     func_800CDCCC              ## Rand.Next() float
    sra     s1, s1, 16                 
    c.lt.s  $f0, $f20                  
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bc1f    lbl_80A78CDC               
    nop
    beq     $zero, $zero, lbl_80A78CDC 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80A78CDC:
    multu   v0, s1                     
    lwc1    $f16, 0x0050(s0)           ## 00000050
    lwc1    $f4, 0x0024(s0)            ## 00000024
    mflo    t6                         
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f18, $f4             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x007C($sp)           
    lwc1    $f8, 0x0054(s0)            ## 00000054
    lwc1    $f18, 0x0028(s0)           ## 00000028
    addiu   a0, $zero, 0x0014          ## a0 = 00000014
    mul.s   $f10, $f0, $f8             
    addiu   a1, $zero, 0x0014          ## a1 = 00000014
    mul.s   $f16, $f10, $f22           
    add.s   $f4, $f16, $f18            
    jal     func_80063BF0              
    swc1    $f4, 0x0080($sp)           
    sll     s1, v0, 16                 
    jal     func_800CDCCC              ## Rand.Next() float
    sra     s1, s1, 16                 
    c.lt.s  $f0, $f20                  
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bc1f    lbl_80A78D50               
    nop
    beq     $zero, $zero, lbl_80A78D50 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80A78D50:
    multu   v0, s1                     
    lwc1    $f10, 0x0050(s0)           ## 00000050
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    addiu   a0, $zero, 0x015E          ## a0 = 0000015E
    addiu   a1, $zero, 0x0064          ## a1 = 00000064
    mflo    t7                         
    mtc1    t7, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063BF0              
    swc1    $f4, 0x0084($sp)           
    mtc1    v0, $f6                    ## $f6 = 0.00
    sw      s7, 0x0010($sp)            
    sw      s8, 0x0014($sp)            
    cvt.s.w $f8, $f6                   
    lwc1    $f0, 0x0050(s0)            ## 00000050
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s4, $zero              ## a1 = FFFFFFDC
    or      a2, s5, $zero              ## a2 = FFFFFFE8
    or      a3, s6, $zero              ## a3 = FFFFFFF4
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f18, $f0, $f24            
    trunc.w.s $f16, $f10                 
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f16                   
    mfc1    t1, $f4                    
    sw      t9, 0x0018($sp)            
    jal     func_8001BD94              
    sw      t1, 0x001C($sp)            
    addiu   s2, s2, 0x0001             ## s2 = 00000001
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bnel    s2, $at, lbl_80A78CB0      
    addiu   a0, $zero, 0x0014          ## a0 = 00000014
    lh      v0, 0x0142(s0)             ## 00000142
    bgez    v0, lbl_80A78E30           
    nop
    lw      v1, 0x0118(s0)             ## 00000118
    addiu   t2, $zero, 0x0028          ## t2 = 00000028
    addiu   t5, $zero, 0x0028          ## t5 = 00000028
    beq     v1, $zero, lbl_80A78E08    
    or      a0, s0, $zero              ## a0 = 00000000
    sh      t2, 0x0110(v1)             ## 00000110
    lh      v0, 0x0142(s0)             ## 00000142
lbl_80A78E08:
    addiu   t3, v0, 0x0001             ## t3 = 00000001
    sh      t3, 0x0142(s0)             ## 00000142
    lh      t4, 0x0142(s0)             ## 00000142
    addiu   a1, $zero, 0x28A2          ## a1 = 000028A2
    bnel    t4, $zero, lbl_80A78E90    
    lw      $ra, 0x0064($sp)           
    jal     func_80022FD0              
    sh      t5, 0x0142(s0)             ## 00000142
    beq     $zero, $zero, lbl_80A78E90 
    lw      $ra, 0x0064($sp)           
lbl_80A78E30:
    beq     v0, $zero, lbl_80A78E40    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0142(s0)             ## 00000142
    lh      v0, 0x0142(s0)             ## 00000142
lbl_80A78E40:
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     $at, %hi(var_80A790E0)     ## $at = 80A80000
    lwc1    $f10, %lo(var_80A790E0)($at) 
    cvt.s.w $f8, $f6                   
    lh      t7, 0x001C(s0)             ## 0000001C
    lui     $at, %hi(var_80A790B8)     ## $at = 80A80000
    lbu     t9, 0x0140(s0)             ## 00000140
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    mul.s   $f16, $f8, $f10            
    lwc1    $f4, %lo(var_80A790B8)($at) 
    addiu   t0, t9, 0xFFFA             ## t0 = FFFFFFFA
    sb      t0, 0x0140(s0)             ## 00000140
    add.s   $f18, $f20, $f16           
    mul.s   $f6, $f4, $f18             
    bne     v0, $zero, lbl_80A78E8C    
    swc1    $f6, 0x0054(s0)            ## 00000054
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A78E8C:
    lw      $ra, 0x0064($sp)           
lbl_80A78E90:
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    lw      s5, 0x0054($sp)            
    lw      s6, 0x0058($sp)            
    lw      s7, 0x005C($sp)            
    lw      s8, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


func_80A78EC8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A78EEC:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0058($sp)            
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              ## s0 = 00000000
    lw      a0, 0x0058($sp)            
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80022554              
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a0, $zero, 0x0500          ## a0 = 00000500
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0xFB00          ## a2 = FFFFFB00
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0044($sp)            
    lw      t1, 0x0044($sp)            
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    sw      v0, 0x0004(t1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t0, 0x0001                 ## t0 = 00010000
    addu    t0, t0, s1                 
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      t0, 0x1DE4(t0)             ## 00011DE4
    lw      a0, 0x0000(s1)             ## 00000000
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    sll     t6, t0,  1                 
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    addiu   t8, $zero, 0x0040          ## t8 = 00000040
    addiu   t3, $zero, 0x0020          ## t3 = 00000020
    addiu   t4, $zero, 0x0010          ## t4 = 00000010
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    sw      t8, 0x0024($sp)            
    sw      t7, 0x0020($sp)            
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    sw      v1, 0x0040($sp)            
    jal     func_8007EB84              
    andi    a3, t0, 0x00FF             ## a3 = 00000000
    lw      t2, 0x0040($sp)            
    sw      v0, 0x0004(t2)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0xFB00                 ## t4 = FB000000
    lui     $at, 0x0032                ## $at = 00320000
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0000(v1)             ## 00000000
    lw      t5, 0x0058($sp)            
    ori     $at, $at, 0x6400           ## $at = 00326400
    lui     t3, 0xDE00                 ## t3 = DE000000
    lbu     t7, 0x0140(t5)             ## 00000140
    or      t8, t7, $at                ## t8 = 00326400
    sw      t8, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0x0403                 ## t4 = 04030000
    addiu   t4, t4, 0x4380             ## t4 = 04034380
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t3, 0x0000(v1)             ## 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    nop

.section .data

var_80A79040: .word 0x011E0600, 0x00000010, 0x00010000, 0x000001DC
.word func_80A787D0
.word func_80A78990
.word func_80A78EC8
.word func_80A78EEC
var_80A79060: .word \
0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x02000000, 0x00020800, 0x00000000, 0x19010100, \
0x00320078, 0x00000000, 0x00000000
var_80A7908C: .word \
0x0C000D00, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x4E01F7F6, 0x00000000, 0x00010000, \
0x00320078, 0x00000000, 0x00000000
var_80A790B8: .word 0x3F000000, 0x3F800000, 0x3FC00000
var_80A790C4: .word 0xFFE70000, 0xFFEC0000
var_80A790CC: .word 0xFAFAFAFF
var_80A790D0: .word 0xB4B4B4FF
var_80A790D4: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A790E0: .word 0x3C4CCCCD, 0x00000000, 0x00000000, 0x00000000

