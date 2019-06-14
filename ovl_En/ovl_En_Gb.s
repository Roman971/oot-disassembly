#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B6A940:
    lui     t6, 0x8012                 ## t6 = 80120000
    lhu     t6, -0x4B22(t6)            ## 8011B4DE
    addiu   t8, $zero, 0x70F5          ## t8 = 000070F5
    addiu   t9, $zero, 0x70F4          ## t9 = 000070F4
    andi    t7, t6, 0x0040             ## t7 = 00000000
    beql    t7, $zero, lbl_80B6A968    
    sh      t9, 0x036E(a0)             ## 0000036E
    jr      $ra                        
    sh      t8, 0x036E(a0)             ## 0000036E
lbl_80B6A964:
    sh      t9, 0x036E(a0)             ## 0000036E
lbl_80B6A968:
    jr      $ra                        
    nop


func_80B6A970:
    addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    or      s2, a0, $zero              ## s2 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s5, 0x0058($sp)            
    sw      s4, 0x0054($sp)            
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     a1, %hi(var_80B6BEC0)      ## a1 = 80B70000
    sw      $zero, 0x0084($sp)         
    addiu   a1, a1, %lo(var_80B6BEC0)  ## a1 = 80B6BEC0
    jal     func_80063F7C              
    or      a0, s2, $zero              ## a0 = 00000000
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           ## a1 = 00000000
    lui     a0, 0x0601                 ## a0 = 06010000
    addiu   a0, a0, 0xC2D0             ## a0 = 0600C2D0
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0084            ## a1 = FFFFFFF4
    or      a0, s3, $zero              ## a0 = 00000000
    addiu   a1, s3, 0x0810             ## a1 = 00000810
    or      a2, s2, $zero              ## a2 = 00000000
    jal     func_800313A4              ## DynaPolyInfo_setActor
    lw      a3, 0x0084($sp)            
    sw      v0, 0x013C(s2)             ## 0000013C
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s2, 0x0198             ## t6 = 00000198
    addiu   t7, s2, 0x01E0             ## t7 = 000001E0
    addiu   t8, $zero, 0x000C          ## t8 = 0000000C
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x049C             ## a3 = 0600049C
    addiu   a2, a2, 0xC220             ## a2 = 0600C220
    or      a0, s3, $zero              ## a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s2, 0x0154             ## a1 = 00000154
    addiu   s0, s2, 0x022C             ## s0 = 0000022C
    or      a1, s0, $zero              ## a1 = 0000022C
    jal     func_8004AB7C              
    or      a0, s3, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80B6BE10)      ## a3 = 80B70000
    addiu   a3, a3, %lo(var_80B6BE10)  ## a3 = 80B6BE10
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 0000022C
    jal     func_8004AC84              
    or      a2, s2, $zero              ## a2 = 00000000
    lui     s0, %hi(var_80B6BE3C)      ## s0 = 80B70000
    lui     s4, %hi(var_80B6BEC0)      ## s4 = 80B70000
    addiu   s4, s4, %lo(var_80B6BEC0)  ## s4 = 80B6BEC0
    addiu   s0, s0, %lo(var_80B6BE3C)  ## s0 = 80B6BE3C
    addiu   s1, s2, 0x0278             ## s1 = 00000278
lbl_80B6AA60:
    or      a0, s3, $zero              ## a0 = 00000000
    jal     func_8004AB7C              
    or      a1, s1, $zero              ## a1 = 00000278
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000278
    or      a2, s2, $zero              ## a2 = 00000000
    jal     func_8004AC84              
    or      a3, s0, $zero              ## a3 = 80B6BE3C
    addiu   s0, s0, 0x002C             ## s0 = 80B6BE68
    sltu    $at, s0, s4                
    bne     $at, $zero, lbl_80B6AA60   
    addiu   s1, s1, 0x004C             ## s1 = 000002C4
    addiu   s0, s2, 0x0360             ## s0 = 00000360
    or      a2, s0, $zero              ## a2 = 00000360
    or      a0, s3, $zero              ## a0 = 00000000
    jal     func_800665B0              
    addiu   a1, s3, 0x07A8             ## a1 = 000007A8
    lwc1    $f4, 0x0008(s2)            ## 00000008
    lwc1    $f8, 0x000C(s2)            ## 0000000C
    lwc1    $f16, 0x0010(s2)           ## 00000010
    trunc.w.s $f6, $f4                   
    sw      v0, 0x035C(s2)             ## 0000035C
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    addiu   t5, $zero, 0x00C8          ## t5 = 000000C8
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    jal     func_80065BCC              
    or      a0, s0, $zero              ## a0 = 00000360
    mtc1    $zero, $f24                ## $f24 = 0.00
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    mfc1    a1, $f24                   
    addiu   a0, s2, 0x00B4             ## a0 = 000000B4
    jal     func_8001EC20              
    lui     a3, 0x420C                 ## a3 = 420C0000
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s2, $zero              ## a0 = 00000000
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     $at, 0x42C8                ## $at = 42C80000
    addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
    mtc1    $at, $f12                  ## $f12 = 100.00
    sb      t6, 0x00AE(s2)             ## 000000AE
    swc1    $f24, 0x0068(s2)           ## 00000068
    swc1    $f24, 0x0060(s2)           ## 00000060
    jal     func_80026D64              
    swc1    $f4, 0x006C(s2)            ## 0000006C
    trunc.w.s $f6, $f0                   
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f26                  ## $f26 = 30.00
    lui     $at, %hi(var_80B6BF20)     ## $at = 80B70000
    mfc1    t0, $f6                    
    lui     s1, %hi(var_80B6BEC8)      ## s1 = 80B70000
    lui     s5, %hi(var_80B6BEF8)      ## s5 = 80B70000
    addiu   t1, t0, 0x0064             ## t1 = 00000064
    sh      t1, 0x0372(s2)             ## 00000372
    lwc1    $f22, %lo(var_80B6BF20)($at) 
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f20                  ## $f20 = 40.00
    addiu   s5, s5, %lo(var_80B6BEF8)  ## s5 = 80B6BEF8
    addiu   s1, s1, %lo(var_80B6BEC8)  ## s1 = 80B6BEC8
    or      s0, s2, $zero              ## s0 = 00000000
    addiu   s4, $zero, 0x0001          ## s4 = 00000001
    addiu   s3, $zero, 0x0003          ## s3 = 00000003
lbl_80B6ABA4:
    jal     func_80026D64              
    mov.s   $f12, $f26                 
    trunc.w.s $f8, $f0                   
    or      t5, $zero, $zero           ## t5 = 00000000
    mov.s   $f12, $f20                 
    mfc1    t3, $f8                    
    nop
    div     $zero, t3, s3              
    mfhi    t4                         
    sb      t4, 0x0378(s0)             ## 00000378
    lwc1    $f16, 0x0024(s2)           ## 00000024
    lwc1    $f10, 0x0000(s1)           ## 80B6BEC8
    bne     s3, $zero, lbl_80B6ABE0    
    nop
    break   ## 0x01C00
lbl_80B6ABE0:
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    bne     s3, $at, lbl_80B6ABF8      
    lui     $at, 0x8000                ## $at = 80000000
    bne     t3, $at, lbl_80B6ABF8      
    nop
    break   ## 0x01800
lbl_80B6ABF8:
    add.s   $f2, $f10, $f16            
    swc1    $f2, 0x0380(s0)            ## 00000380
    swc1    $f2, 0x038C(s0)            ## 0000038C
    lwc1    $f4, 0x0028(s2)            ## 00000028
    lwc1    $f18, 0x0004(s1)           ## 80B6BECC
    add.s   $f2, $f18, $f4             
    swc1    $f2, 0x0384(s0)            ## 00000384
    swc1    $f2, 0x0390(s0)            ## 00000390
    lwc1    $f8, 0x002C(s2)            ## 0000002C
    lwc1    $f6, 0x0008(s1)            ## 80B6BED0
    sb      s4, 0x0379(s0)             ## 00000379
    sb      t5, 0x037B(s0)             ## 0000037B
    add.s   $f2, $f6, $f8              
    sb      $zero, 0x037A(s0)          ## 0000037A
    swc1    $f24, 0x0398(s0)           ## 00000398
    swc1    $f24, 0x039C(s0)           ## 0000039C
    swc1    $f2, 0x0388(s0)            ## 00000388
    jal     func_80026D64              
    swc1    $f2, 0x0394(s0)            ## 00000394
    trunc.w.s $f10, $f0                  
    addiu   s1, s1, 0x000C             ## s1 = 80B6BED4
    swc1    $f22, 0x03A0(s0)           ## 000003A0
    mfc1    t7, $f10                   
    nop
    sh      t7, 0x037E(s0)             ## 0000037E
    lh      t8, 0x037E(s0)             ## 0000037E
    andi    t9, t8, 0x0001             ## t9 = 00000000
    sb      t9, 0x037C(s0)             ## 0000037C
    bne     s1, s5, lbl_80B6ABA4       
    addiu   s0, s0, 0x002C             ## s0 = 0000002C
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    mul.s   $f16, $f0, $f26            
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f4                   ## $f4 = 100.00
    lui     $at, 0x4320                ## $at = 43200000
    mtc1    $at, $f10                  ## $f10 = 160.00
    mul.s   $f6, $f0, $f4              
    addiu   t5, $zero, 0x00C8          ## t5 = 000000C8
    sb      t5, 0x0377(s2)             ## 00000377
    lwc1    $f12, 0x0024(s2)           ## 00000024
    lwc1    $f14, 0x0028(s2)           ## 00000028
    lw      a2, 0x002C(s2)             ## 0000002C
    trunc.w.s $f18, $f16                 
    mul.s   $f16, $f0, $f10            
    or      a3, $zero, $zero           ## a3 = 00000000
    mfc1    t3, $f18                   
    trunc.w.s $f8, $f6                   
    addiu   t4, t3, 0x00E1             ## t4 = 000000E1
    sb      t4, 0x0374(s2)             ## 00000374
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f8                    
    mfc1    t3, $f18                   
    addiu   t9, t8, 0x009B             ## t9 = 0000009B
    sb      t9, 0x0375(s2)             ## 00000375
    addiu   t4, t3, 0x005F             ## t4 = 0000005F
    jal     func_800AA7F4              
    sb      t4, 0x0376(s2)             ## 00000376
    lh      a0, 0x0030(s2)             ## 00000030
    lh      a1, 0x0032(s2)             ## 00000032
    lh      a2, 0x0034(s2)             ## 00000034
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lui     $at, 0x4230                ## $at = 42300000
    mtc1    $at, $f4                   ## $f4 = 44.00
    swc1    $f24, 0x0074($sp)          
    swc1    $f24, 0x0070($sp)          
    addiu   a0, $sp, 0x0070            ## a0 = FFFFFFE0
    addiu   a1, s2, 0x0038             ## a1 = 00000038
    jal     func_800AB958              
    swc1    $f4, 0x0078($sp)           
    lui     $at, 0x427A                ## $at = 427A0000
    mtc1    $at, $f8                   ## $f8 = 62.50
    lwc1    $f6, 0x003C(s2)            ## 0000003C
    or      a0, s2, $zero              ## a0 = 00000000
    add.s   $f10, $f6, $f8             
    jal     func_80B6A940              
    swc1    $f10, 0x003C(s2)           ## 0000003C
    lui     t6, %hi(func_80B6B000)     ## t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6B000) ## t6 = 80B6B000
    sw      t6, 0x0228(s2)             ## 00000228
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    lw      s4, 0x0054($sp)            
    lw      s5, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           ## $sp = 00000000


func_80B6AD70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      a1, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    sw      a3, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x022C             ## a1 = 0000022C
    lw      a0, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    addiu   a1, a0, 0x07A8             ## a1 = 000007A8
    jal     func_80066610              
    lw      a2, 0x035C(t6)             ## 0000035C
    lw      a0, 0x001C($sp)            
    lw      t7, 0x0018($sp)            
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t7)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6ADCC:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x001C($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    sw      s0, 0x0018($sp)            
    lwc1    $f12, 0x0024(s1)           ## 00000024
    lwc1    $f14, 0x0028(s1)           ## 00000028
    lw      a2, 0x002C(s1)             ## 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      a0, 0x0030(s1)             ## 00000030
    lh      a1, 0x0032(s1)             ## 00000032
    lh      a2, 0x0034(s1)             ## 00000034
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x41C8                ## $at = 41C80000
    mtc1    $at, $f4                   ## $f4 = 25.00
    addiu   s4, $sp, 0x003C            ## s4 = FFFFFFE4
    or      a1, s4, $zero              ## a1 = FFFFFFE4
    addiu   a0, $sp, 0x0048            ## a0 = FFFFFFF0
    swc1    $f0, 0x004C($sp)           
    swc1    $f0, 0x0048($sp)           
    jal     func_800AB958              
    swc1    $f4, 0x0050($sp)           
    lwc1    $f6, 0x003C($sp)           
    lui     s2, %hi(var_80B6BEF8)      ## s2 = 80B70000
    lui     s3, %hi(var_80B6BF1C)      ## s3 = 80B70000
    trunc.w.s $f8, $f6                   
    addiu   s3, s3, %lo(var_80B6BF1C)  ## s3 = 80B6BF1C
    addiu   s2, s2, %lo(var_80B6BEF8)  ## s2 = 80B6BEF8
    or      s0, s1, $zero              ## s0 = 00000000
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x0272(s1)             ## 00000272
    lwc1    $f10, 0x0040($sp)          
    trunc.w.s $f16, $f10                 
    mfc1    t9, $f16                   
    nop
    sh      t9, 0x0274(s1)             ## 00000274
    lwc1    $f18, 0x0044($sp)          
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0276(s1)             ## 00000276
lbl_80B6AE8C:
    lwc1    $f12, 0x0024(s1)           ## 00000024
    lwc1    $f14, 0x0028(s1)           ## 00000028
    lw      a2, 0x002C(s1)             ## 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      a0, 0x0030(s1)             ## 00000030
    lh      a1, 0x0032(s1)             ## 00000032
    lh      a2, 0x0034(s1)             ## 00000034
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    or      a0, s2, $zero              ## a0 = 80B6BEF8
    jal     func_800AB958              
    or      a1, s4, $zero              ## a1 = FFFFFFE4
    lwc1    $f6, 0x003C($sp)           
    addiu   s2, s2, 0x000C             ## s2 = 80B6BF04
    addiu   s0, s0, 0x004C             ## s0 = 0000004C
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    sh      t3, 0x0272(s0)             ## 000002BE
    lwc1    $f10, 0x0040($sp)          
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    nop
    sh      t5, 0x0274(s0)             ## 000002C0
    lwc1    $f18, 0x0044($sp)          
    trunc.w.s $f4, $f18                  
    mfc1    t7, $f4                    
    bne     s2, s3, lbl_80B6AE8C       
    sh      t7, 0x0276(s0)             ## 000002C2
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80B6AF24:
    lbu     t6, 0x037B(a0)             ## 0000037B
    or      v0, a0, $zero              ## v0 = 00000000
    beql    t6, $zero, lbl_80B6AF40    
    lbu     t7, 0x03A7(v0)             ## 000003A7
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B6AF3C:
    lbu     t7, 0x03A7(v0)             ## 000003A8
lbl_80B6AF40:
    beql    t7, $zero, lbl_80B6AF54    
    lbu     t8, 0x03D3(v0)             ## 000003D4
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B6AF50:
    lbu     t8, 0x03D3(v0)             ## 000003D4
lbl_80B6AF54:
    beql    t8, $zero, lbl_80B6AF68    
    lbu     t9, 0x03FF(v0)             ## 00000400
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B6AF64:
    lbu     t9, 0x03FF(v0)             ## 00000400
lbl_80B6AF68:
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     t9, $zero, lbl_80B6AF7C    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B6AF7C:
    jr      $ra                        
    nop


func_80B6AF84:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xC8EC             ## a0 = 0600C8EC
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xC8EC             ## a1 = 0600C8EC
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a0, a0, 0x0154             ## a0 = 00000154
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28B0          ## a1 = 000028B0
    lw      t8, 0x0028($sp)            
    lui     t7, %hi(func_80B6B454)     ## t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6B454) ## t7 = 80B6B454
    sw      t7, 0x0228(t8)             ## 00000228
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B000:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t7, 0x1C44(t6)             ## 00001C44
    jal     func_80B6AF24              
    sw      t7, 0x0024($sp)            
    bne     v0, $zero, lbl_80B6B054    
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x0372(s0)             ## 00000372
    beq     v0, $zero, lbl_80B6B044    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80B6B054 
    sh      t8, 0x0372(s0)             ## 00000372
lbl_80B6B044:
    jal     func_80B6AF84              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B6B10C 
    lw      $ra, 0x001C($sp)           
lbl_80B6B054:
    jal     func_80022930              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80B6B0DC    
    lui     $at, 0x42C8                ## $at = 42C80000
    jal     func_80022B04              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80B6B090    
    addiu   $at, $zero, 0x001B         ## $at = 0000001B
    beq     v0, $at, lbl_80B6B0A8      
    addiu   t0, $zero, 0x70F6          ## t0 = 000070F6
    addiu   $at, $zero, 0x001C         ## $at = 0000001C
    beq     v0, $at, lbl_80B6B0C0      
    addiu   t3, $zero, 0x70F7          ## t3 = 000070F7
    beq     $zero, $zero, lbl_80B6B10C 
    lw      $ra, 0x001C($sp)           
lbl_80B6B090:
    jal     func_80B6A940              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t9, %hi(func_80B6B11C)     ## t9 = 80B70000
    addiu   t9, t9, %lo(func_80B6B11C) ## t9 = 80B6B11C
    beq     $zero, $zero, lbl_80B6B108 
    sw      t9, 0x0228(s0)             ## 00000228
lbl_80B6B0A8:
    lw      t1, 0x0024($sp)            
    lui     t2, %hi(func_80B6B194)     ## t2 = 80B70000
    addiu   t2, t2, %lo(func_80B6B194) ## t2 = 80B6B194
    sh      t0, 0x010E(t1)             ## 0000010E
    beq     $zero, $zero, lbl_80B6B108 
    sw      t2, 0x0228(s0)             ## 00000228
lbl_80B6B0C0:
    lw      t4, 0x0024($sp)            
    lui     t5, %hi(func_80B6B228)     ## t5 = 80B70000
    addiu   t5, t5, %lo(func_80B6B228) ## t5 = 80B6B228
    sh      t3, 0x010E(t4)             ## 0000010E
    sw      t5, 0x0228(s0)             ## 00000228
    beq     $zero, $zero, lbl_80B6B10C 
    lw      $ra, 0x001C($sp)           
lbl_80B6B0DC:
    mtc1    $at, $f0                   ## $f0 = 0.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B6B10C               
    lw      $ra, 0x001C($sp)           
    mfc1    a2, $f0                    
    jal     func_80022A34              
    addiu   a3, $zero, 0x001B          ## a3 = 0000001B
lbl_80B6B108:
    lw      $ra, 0x001C($sp)           
lbl_80B6B10C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B11C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B6B188      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80B6B184    
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
    lhu     v0, 0x0F0E(v1)             ## 8011B4DE
    andi    t6, v0, 0x0040             ## t6 = 00000000
    bne     t6, $zero, lbl_80B6B16C    
    ori     t7, v0, 0x0040             ## t7 = 00000040
    sh      t7, 0x0F0E(v1)             ## 8011B4DE
lbl_80B6B16C:
    jal     func_80B6A940              
    lw      a0, 0x0018($sp)            
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80B6B000)     ## t8 = 80B70000
    addiu   t8, t8, %lo(func_80B6B000) ## t8 = 80B6B000
    sw      t8, 0x0228(t9)             ## 00000228
lbl_80B6B184:
    lw      $ra, 0x0014($sp)           
lbl_80B6B188:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B194:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B6B21C      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80B6B218    
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
    lhu     v0, 0x0F0E(v1)             ## 8011B4DE
    andi    t6, v0, 0x0040             ## t6 = 00000000
    bne     t6, $zero, lbl_80B6B1E4    
    ori     t7, v0, 0x0040             ## t7 = 00000040
    sh      t7, 0x0F0E(v1)             ## 8011B4DE
lbl_80B6B1E4:
    jal     func_80B6A940              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x001E          ## a3 = 0000001E
    jal     func_80079854              
    lw      a1, 0x1C44(a0)             ## 00001C44
    jal     func_800721CC              
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    lw      t0, 0x0018($sp)            
    lui     t9, %hi(func_80B6B000)     ## t9 = 80B70000
    addiu   t9, t9, %lo(func_80B6B000) ## t9 = 80B6B000
    sw      t9, 0x0228(t0)             ## 00000228
lbl_80B6B218:
    lw      $ra, 0x0014($sp)           
lbl_80B6B21C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B228:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B6B308      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80B6B304    
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     v1, 0x0F0E(v0)             ## 8011B4DE
    andi    t6, v1, 0x0040             ## t6 = 00000000
    bne     t6, $zero, lbl_80B6B27C    
    ori     t7, v1, 0x0040             ## t7 = 00000040
    sh      t7, 0x0F0E(v0)             ## 8011B4DE
lbl_80B6B27C:
    jal     func_80B6A940              
    or      a0, s1, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x1C44(s0)             ## 00001C44
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80079854              
    addiu   a3, $zero, 0x001E          ## a3 = 0000001E
    jal     func_800721CC              
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t8, 0x0EBC(v0)             ## 8011B48C
    addiu   $at, $zero, 0x03E8         ## $at = 000003E8
    addiu   t2, $zero, 0x70F8          ## t2 = 000070F8
    addiu   t9, t8, 0x0064             ## t9 = 00000064
    beq     t9, $at, lbl_80B6B2E0      
    sw      t9, 0x0EBC(v0)             ## 8011B48C
    slti    $at, t9, 0x044D            
    bne     $at, $zero, lbl_80B6B2D4   
    lui     t1, %hi(func_80B6B000)     ## t1 = 80B70000
    addiu   t0, $zero, 0x044C          ## t0 = 0000044C
    sw      t0, 0x0EBC(v0)             ## 8011B48C
lbl_80B6B2D4:
    addiu   t1, t1, %lo(func_80B6B000) ## t1 = 80B6B000
    beq     $zero, $zero, lbl_80B6B304 
    sw      t1, 0x0228(s1)             ## 00000228
lbl_80B6B2E0:
    lw      v0, 0x1C44(s0)             ## 00001C44
    or      a0, s0, $zero              ## a0 = 00000000
    andi    a1, t2, 0xFFFF             ## a1 = 000070F8
    sb      $zero, 0x0683(v0)          ## 8011AC53
    jal     func_800DCE80              
    sh      t2, 0x036E(s1)             ## 0000036E
    lui     t3, %hi(func_80B6B318)     ## t3 = 80B70000
    addiu   t3, t3, %lo(func_80B6B318) ## t3 = 80B6B318
    sw      t3, 0x0228(s1)             ## 00000228
lbl_80B6B304:
    lw      $ra, 0x001C($sp)           
lbl_80B6B308:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B6B318:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B6B380      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80B6B37C    
    lw      a0, 0x0020($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x000F          ## a2 = 0000000F
    lui     a3, 0x42C8                 ## a3 = 42C80000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80B6B38C)     ## t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6B38C) ## t6 = 80B6B38C
    sw      t6, 0x0228(t7)             ## 00000228
lbl_80B6B37C:
    lw      $ra, 0x001C($sp)           
lbl_80B6B380:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B38C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80B6B3C0    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80B6B3EC)     ## t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6B3EC) ## t6 = 80B6B3EC
    sw      $zero, 0x0118(a0)          ## 00000118
    beq     $zero, $zero, lbl_80B6B3DC 
    sw      t6, 0x0228(a0)             ## 00000228
lbl_80B6B3C0:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x000F          ## a2 = 0000000F
    lui     a3, 0x42C8                 ## a3 = 42C80000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80B6B3DC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B3EC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B6B448      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80B6B444    
    lw      a0, 0x0018($sp)            
    jal     func_80022930              
    lw      a1, 0x001C($sp)            
    jal     func_80B6A940              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80B6B000)     ## t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6B000) ## t6 = 80B6B000
    sw      t6, 0x0228(t7)             ## 00000228
lbl_80B6B444:
    lw      $ra, 0x0014($sp)           
lbl_80B6B448:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B454:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xC8EC             ## a0 = 0600C8EC
    mtc1    v0, $f4                    ## $f4 = 0.00
    lwc1    $f0, 0x016C(s0)            ## 0000016C
    lui     a0, 0x0600                 ## a0 = 06000000
    cvt.s.w $f6, $f4                   
    lui     $at, 0x4190                ## $at = 41900000
    c.eq.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B6B4E4               
    mtc1    $at, $f16                  ## $f16 = 18.00
    jal     func_8008A194              
    addiu   a0, a0, 0x049C             ## a0 = 0600049C
    mtc1    v0, $f8                    ## $f8 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f10, $f8                  
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x049C             ## a1 = 0600049C
    addiu   a0, s0, 0x0154             ## a0 = 00000154
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f10, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t6, %hi(func_80B6B000)     ## t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6B000) ## t6 = 80B6B000
    beq     $zero, $zero, lbl_80B6B544 
    sw      t6, 0x0228(s0)             ## 00000228
    mtc1    $at, $f16                  ## $f16 = 0.00
lbl_80B6B4E4:
    addiu   v1, $zero, 0x0003          ## v1 = 00000003
    addiu   a0, $zero, 0x0001          ## a0 = 00000001
    c.eq.s  $f16, $f0                  
    lui     $at, 0x4416                ## $at = 44160000
    bc1fl   lbl_80B6B548               
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f12                  ## $f12 = 600.00
    sb      v1, 0x03A5(s0)             ## 000003A5
    sb      a0, 0x03A7(s0)             ## 000003A7
    sb      v1, 0x03D1(s0)             ## 000003D1
    sb      a0, 0x03D3(s0)             ## 000003D3
    sb      v1, 0x03FD(s0)             ## 000003FD
    sb      a0, 0x03FF(s0)             ## 000003FF
    sb      v1, 0x0379(s0)             ## 00000379
    jal     func_80026D64              
    sb      a0, 0x037B(s0)             ## 0000037B
    trunc.w.s $f18, $f0                  
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x2873          ## a1 = 00002873
    mfc1    t0, $f18                   
    nop
    addiu   t1, t0, 0x0258             ## t1 = 00000258
    jal     func_80022FD0              
    sh      t1, 0x0372(s0)             ## 00000372
lbl_80B6B544:
    lw      $ra, 0x002C($sp)           
lbl_80B6B548:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B558:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s3, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    or      s2, a0, $zero              ## s2 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s5, 0x0028($sp)            
    sw      s4, 0x0024($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lh      t6, 0x0370(s2)             ## 00000370
    addiu   a0, s2, 0x0154             ## a0 = 00000154
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    jal     func_8008C9C0              
    sh      t7, 0x0370(s2)             ## 00000370
    lw      t9, 0x0228(s2)             ## 00000228
    or      a0, s2, $zero              ## a0 = 00000000
    or      a1, s3, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lhu     t8, 0x036E(s2)             ## 0000036E
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80B6ADCC              
    sh      t8, 0x010E(s2)             ## 0000010E
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    s4, s3, $at                
    or      a1, s4, $zero              ## a1 = 00000000
    or      a0, s3, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    addiu   a2, s2, 0x022C             ## a2 = 0000022C
    or      s0, $zero, $zero           ## s0 = 00000000
    addiu   s1, s2, 0x0278             ## s1 = 00000278
    addiu   s5, $zero, 0x00E4          ## s5 = 000000E4
lbl_80B6B5E0:
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s4, $zero              ## a1 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a2, s1, $zero              ## a2 = 00000278
    addiu   s0, s0, 0x004C             ## s0 = 0000004C
    bne     s0, s5, lbl_80B6B5E0       
    addiu   s1, s1, 0x004C             ## s1 = 000002C4
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f4                   ## $f4 = 30.00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f10                  ## $f10 = 100.00
    mul.s   $f6, $f0, $f4              
    lui     $at, 0x4320                ## $at = 43200000
    mtc1    $at, $f4                   ## $f4 = 160.00
    mul.s   $f16, $f0, $f10            
    addiu   t5, $zero, 0x00C8          ## t5 = 000000C8
    sb      t5, 0x0377(s2)             ## 00000377
    or      a0, s2, $zero              ## a0 = 00000000
    or      a1, s3, $zero              ## a1 = 00000000
    trunc.w.s $f8, $f6                   
    mul.s   $f6, $f0, $f4              
    mfc1    t3, $f8                    
    trunc.w.s $f18, $f16                 
    addiu   t4, t3, 0x00E1             ## t4 = 000000E1
    sb      t4, 0x0374(s2)             ## 00000374
    trunc.w.s $f8, $f6                   
    mfc1    t9, $f18                   
    mfc1    t3, $f8                    
    addiu   t8, t9, 0x009B             ## t8 = 0000009B
    sb      t8, 0x0375(s2)             ## 00000375
    addiu   t4, t3, 0x005F             ## t4 = 0000005F
    jal     func_80B6B7B0              
    sb      t4, 0x0376(s2)             ## 00000376
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80B6B690:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    sw      a0, 0x0034($sp)            
    lw      t1, 0x0034($sp)            
    lw      v0, 0x02C0(t1)             ## 000002C0
    lui     t8, 0xE700                 ## t8 = E7000000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(t1)             ## 000002C0
    sw      $zero, 0x0004(v0)          ## 00000004
    sw      t8, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(t1)             ## 000002C0
    lui     t2, 0xFB00                 ## t2 = FB000000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(t1)             ## 000002C0
    sw      t2, 0x0000(v0)             ## 00000000
    lbu     t4, 0x0374(s0)             ## 00000374
    lbu     t7, 0x0375(s0)             ## 00000375
    lbu     t3, 0x0376(s0)             ## 00000376
    sll     t5, t4, 24                 
    sll     t8, t7, 16                 
    or      t9, t5, t8                 ## t9 = E7000000
    sll     t4, t3,  8                 
    or      t6, t9, t4                 ## t6 = E7000000
    ori     t7, t6, 0x00FF             ## t7 = E70000FF
    sw      t7, 0x0004(v0)             ## 00000004
    lbu     t3, 0x0374(s0)             ## 00000374
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lwc1    $f16, 0x002C(s0)           ## 0000002C
    sw      t3, 0x0010($sp)            
    lbu     t9, 0x0375(s0)             ## 00000375
    trunc.w.s $f6, $f4                   
    addiu   a0, s0, 0x0360             ## a0 = 00000360
    sw      t9, 0x0014($sp)            
    trunc.w.s $f10, $f8                  
    lbu     t4, 0x0376(s0)             ## 00000376
    mfc1    a1, $f6                    
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    sw      t4, 0x0018($sp)            
    lbu     t6, 0x0377(s0)             ## 00000377
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    jal     func_80065BCC              
    sw      t6, 0x001C($sp)            
    lw      a1, 0x0158(s0)             ## 00000158
    lw      a2, 0x0174(s0)             ## 00000174
    lbu     a3, 0x0156(s0)             ## 00000156
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B6BB08              
    lw      a1, 0x0044($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6B7B0:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s4, 0x0058($sp)            
    or      s4, a0, $zero              ## s4 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x006C($sp)            
    lui     $at, %hi(var_80B6BF24)     ## $at = 80B70000
    lwc1    $f30, %lo(var_80B6BF24)($at) 
    lui     $at, %hi(var_80B6BF28)     ## $at = 80B70000
    lwc1    $f28, %lo(var_80B6BF28)($at) 
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f26                  ## $f26 = 60.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f24                  ## $f24 = 1.00
    mtc1    $zero, $f22                ## $f22 = 0.00
    or      s2, $zero, $zero           ## s2 = 00000000
    or      s0, s4, $zero              ## s0 = 00000000
    addiu   s6, $zero, 0x0003          ## s6 = 00000003
    addiu   s5, $zero, 0x0001          ## s5 = 00000001
    addiu   s3, $zero, 0x0001          ## s3 = 00000001
lbl_80B6B82C:
    lbu     v0, 0x0379(s0)             ## 00000379
    lui     a2, 0x3CA3                 ## a2 = 3CA30000
    ori     a2, a2, 0xD70A             ## a2 = 3CA3D70A
    beq     v0, $zero, lbl_80B6B860    
    addiu   a0, s0, 0x0398             ## a0 = 00000398
    beq     v0, s5, lbl_80B6B8CC       
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_80B6B8F8      
    addiu   a0, s0, 0x0398             ## a0 = 00000398
    beq     v0, s6, lbl_80B6B97C       
    addiu   a0, s0, 0x0398             ## a0 = 00000398
    beq     $zero, $zero, lbl_80B6B9D4 
    lwc1    $f2, 0x0398(s0)            ## 00000398
lbl_80B6B860:
    mfc1    a1, $f24                   
    lw      a3, 0x039C(s0)             ## 0000039C
    jal     func_80064280              
    addiu   s1, s0, 0x039C             ## s1 = 0000039C
    mfc1    a1, $f24                   
    lui     a2, 0x3A83                 ## a2 = 3A830000
    mfc1    a3, $f24                   
    ori     a2, a2, 0x126F             ## a2 = 3A83126F
    jal     func_80064280              
    or      a0, s1, $zero              ## a0 = 0000039C
    lui     $at, %hi(var_80B6BF2C)     ## $at = 80B70000
    lwc1    $f4, %lo(var_80B6BF2C)($at) 
    lwc1    $f0, 0x03A0(s0)            ## 000003A0
    lwc1    $f2, 0x0398(s0)            ## 00000398
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sub.s   $f6, $f0, $f4              
    c.le.s  $f6, $f2                   
    nop
    bc1f    lbl_80B6B9D4               
    nop
    swc1    $f0, 0x0398(s0)            ## 00000398
    swc1    $f22, 0x039C(s0)           ## 0000039C
    sb      s3, 0x0379(s0)             ## 00000379
    sb      t6, 0x037A(s0)             ## 0000037A
    lwc1    $f2, 0x0398(s0)            ## 00000398
    beq     $zero, $zero, lbl_80B6B9D4 
    sh      $zero, 0x037E(s0)          ## 0000037E
lbl_80B6B8CC:
    lh      v0, 0x037E(s0)             ## 0000037E
    beq     v0, $zero, lbl_80B6B8E0    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B6B8F0 
    sh      t7, 0x037E(s0)             ## 0000037E
lbl_80B6B8E0:
    lbu     t8, 0x037A(s0)             ## 0000037A
    sb      $zero, 0x037B(s0)          ## 0000037B
    swc1    $f22, 0x039C(s0)           ## 0000039C
    sb      t8, 0x0379(s0)             ## 00000379
lbl_80B6B8F0:
    beq     $zero, $zero, lbl_80B6B9D4 
    lwc1    $f2, 0x0398(s0)            ## 00000398
lbl_80B6B8F8:
    mfc1    a1, $f22                   
    lui     a2, 0x3CA3                 ## a2 = 3CA30000
    ori     a2, a2, 0xD70A             ## a2 = 3CA3D70A
    lw      a3, 0x039C(s0)             ## 0000039C
    jal     func_80064280              
    addiu   s1, s0, 0x039C             ## s1 = 0000039C
    mfc1    a1, $f24                   
    lui     a2, 0x3A83                 ## a2 = 3A830000
    mfc1    a3, $f24                   
    ori     a2, a2, 0x126F             ## a2 = 3A83126F
    jal     func_80064280              
    or      a0, s1, $zero              ## a0 = 0000039C
    lwc1    $f2, 0x0398(s0)            ## 00000398
    c.le.s  $f2, $f28                  
    nop
    bc1f    lbl_80B6B9D4               
    nop
    lwc1    $f8, 0x03A0(s0)            ## 000003A0
    add.s   $f10, $f8, $f30            
    swc1    $f10, 0x03A0(s0)           ## 000003A0
    lwc1    $f16, 0x03A0(s0)           ## 000003A0
    c.lt.s  $f24, $f16                 
    nop
    bc1fl   lbl_80B6B964               
    swc1    $f22, 0x0398(s0)           ## 00000398
    swc1    $f24, 0x03A0(s0)           ## 000003A0
    swc1    $f22, 0x0398(s0)           ## 00000398
lbl_80B6B964:
    swc1    $f22, 0x039C(s0)           ## 0000039C
    sb      s3, 0x0379(s0)             ## 00000379
    sb      $zero, 0x037A(s0)          ## 0000037A
    lwc1    $f2, 0x0398(s0)            ## 00000398
    beq     $zero, $zero, lbl_80B6B9D4 
    sh      $zero, 0x037E(s0)          ## 0000037E
lbl_80B6B97C:
    mfc1    a1, $f22                   
    mfc1    a3, $f24                   
    jal     func_80064280              
    lui     a2, 0x3F00                 ## a2 = 3F000000
    lwc1    $f2, 0x0398(s0)            ## 00000398
    c.le.s  $f2, $f28                  
    nop
    bc1f    lbl_80B6B9D4               
    nop
    swc1    $f30, 0x03A0(s0)           ## 000003A0
    swc1    $f22, 0x0398(s0)           ## 00000398
    swc1    $f22, 0x039C(s0)           ## 0000039C
    sb      s3, 0x0379(s0)             ## 00000379
    sb      $zero, 0x037A(s0)          ## 0000037A
    jal     func_80026D64              
    mov.s   $f12, $f26                 
    trunc.w.s $f18, $f0                  
    lwc1    $f2, 0x0398(s0)            ## 00000398
    mfc1    t2, $f18                   
    nop
    addiu   t3, t2, 0x003C             ## t3 = 0000003C
    sh      t3, 0x037E(s0)             ## 0000037E
lbl_80B6B9D4:
    mul.s   $f20, $f2, $f26            
    beql    s2, $zero, lbl_80B6B9EC    
    lwc1    $f6, 0x0390(s0)            ## 00000390
    bne     s2, s6, lbl_80B6BA08       
    nop
    lwc1    $f6, 0x0390(s0)            ## 00000390
lbl_80B6B9EC:
    lwc1    $f4, 0x038C(s0)            ## 0000038C
    lwc1    $f10, 0x0394(s0)           ## 00000394
    add.s   $f8, $f6, $f20             
    swc1    $f4, 0x0380(s0)            ## 00000380
    swc1    $f10, 0x0388(s0)           ## 00000388
    beq     $zero, $zero, lbl_80B6BAB8 
    swc1    $f8, 0x0384(s0)            ## 00000384
lbl_80B6BA08:
    bnel    s2, s5, lbl_80B6BA6C       
    lh      s1, 0x0032(s4)             ## 00000032
    lh      s1, 0x0032(s4)             ## 00000032
    addiu   s1, s1, 0xC000             ## s1 = FFFFC39C
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    sll     a0, s1, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    mul.s   $f16, $f0, $f20            
    lwc1    $f18, 0x038C(s0)           ## 0000038C
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    add.s   $f4, $f16, $f18            
    jal     func_80063684              ## coss?
    swc1    $f4, 0x0380(s0)            ## 00000380
    mul.s   $f6, $f0, $f20             
    lwc1    $f8, 0x0394(s0)            ## 00000394
    lwc1    $f16, 0x0390(s0)           ## 00000390
    swc1    $f16, 0x0384(s0)           ## 00000384
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0388(s0)           ## 00000388
    beq     $zero, $zero, lbl_80B6BABC 
    addiu   s2, s2, 0x0001             ## s2 = 00000001
    lh      s1, 0x0032(s4)             ## 00000032
lbl_80B6BA6C:
    addiu   s1, s1, 0x4000             ## s1 = 0000039C
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    sll     a0, s1, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    mul.s   $f18, $f0, $f20            
    lwc1    $f4, 0x038C(s0)            ## 0000038C
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    add.s   $f6, $f18, $f4             
    jal     func_80063684              ## coss?
    swc1    $f6, 0x0380(s0)            ## 00000380
    mul.s   $f8, $f0, $f20             
    lwc1    $f10, 0x0394(s0)           ## 00000394
    lwc1    $f18, 0x0390(s0)           ## 00000390
    swc1    $f18, 0x0384(s0)           ## 00000384
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0388(s0)           ## 00000388
lbl_80B6BAB8:
    addiu   s2, s2, 0x0001             ## s2 = 00000002
lbl_80B6BABC:
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     s2, $at, lbl_80B6B82C      
    addiu   s0, s0, 0x002C             ## s0 = 0000002C
    lw      $ra, 0x0064($sp)           
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
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80B6BB08:
    addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
    sw      s6, 0x0060($sp)            
    or      s6, a1, $zero              ## s6 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s7, 0x0064($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    sw      a0, 0x0070($sp)            
    lw      a0, 0x0000(s6)             ## 00000000
    jal     func_8007E2C0              
    or      s2, a0, $zero              ## s2 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1DA0           ## $at = 00011DA0
    addu    s7, s6, $at                
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f22                  ## $f22 = 1.00
    lui     $at, %hi(var_80B6BF30)     ## $at = 80B70000
    lui     s8, 0x0601                 ## s8 = 06010000
    lw      s3, 0x0070($sp)            
    addiu   s8, s8, 0xC0B0             ## s8 = 0600C0B0
    lwc1    $f20, %lo(var_80B6BF30)($at) 
    or      s5, $zero, $zero           ## s5 = 00000000
lbl_80B6BB7C:
    lw      v1, 0x0070($sp)            
    lbu     v0, 0x0378(s3)             ## 00000378
    lw      s4, 0x02D0(s2)             ## 000002D0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0020             ## t7 = DB060020
    addiu   t6, s4, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s2)             ## 000002D0
    sw      t7, 0x0000(s4)             ## 00000000
    lw      a0, 0x0000(s6)             ## 00000000
    lui     t2, %hi(var_80B6BDE0)      ## t2 = 80B70000
    addiu   t2, t2, %lo(var_80B6BDE0)  ## t2 = 80B6BDE0
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t9, $zero, 0x0040          ## t9 = 00000040
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    sll     t1, v0,  4                 
    addu    s1, t1, t2                 
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    lh      t4, 0x0370(v1)             ## 00000370
    lh      t3, 0x000C(s1)             ## 0000000C
    addiu   t8, $zero, 0x0080          ## t8 = 00000080
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    multu   t3, t4                     
    sw      t7, 0x0024($sp)            
    sw      t8, 0x0028($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    mflo    t5                         
    andi    t6, t5, 0x01FF             ## t6 = 00000000
    jal     func_8007EB84              
    sw      t6, 0x0020($sp)            
    sw      v0, 0x0004(s4)             ## 00000004
    lw      s0, 0x02D0(s2)             ## 000002D0
    lui     t0, 0xDB06                 ## t0 = DB060000
    ori     t0, t0, 0x0024             ## t0 = DB060024
    addiu   t9, s0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s2)             ## 000002D0
    sw      t0, 0x0000(s0)             ## 00000000
    lw      a0, 0x0008(s1)             ## 00000008
    lui     t5, 0x8012                 ## t5 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t2, a0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t1, a0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t6, t1, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
    lw      s0, 0x02D0(s2)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    ori     t9, t9, 0x8080             ## t9 = FA008080
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s2)             ## 000002D0
    sw      t9, 0x0000(s0)             ## 00000000
    lbu     t4, 0x0000(s1)             ## 00000000
    lbu     t7, 0x0001(s1)             ## 00000001
    lbu     t2, 0x0003(s1)             ## 00000003
    lbu     t3, 0x0002(s1)             ## 00000002
    sll     t1, t4, 24                 
    sll     t8, t7, 16                 
    or      t5, t2, t1                 ## t5 = 00000000
    or      t9, t5, t8                 ## t9 = 00000008
    sll     t4, t3,  8                 
    or      t2, t9, t4                 ## t2 = 00000008
    sw      t2, 0x0004(s0)             ## 00000004
    lw      s0, 0x02D0(s2)             ## 000002D0
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   t1, s0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s2)             ## 000002D0
    sw      t6, 0x0000(s0)             ## 00000000
    lbu     t0, 0x0004(s1)             ## 00000004
    lbu     t2, 0x0005(s1)             ## 00000005
    lbu     t5, 0x0007(s1)             ## 00000007
    lbu     t8, 0x0006(s1)             ## 00000006
    sll     t3, t0, 24                 
    sll     t1, t2, 16                 
    or      t9, t5, t3                 ## t9 = 00000000
    or      t6, t9, t1                 ## t6 = 00000008
    sll     t0, t8,  8                 
    or      t5, t6, t0                 ## t5 = DB06002C
    sw      t5, 0x0004(s0)             ## 00000004
    jal     func_800AA6EC              
    nop
    lwc1    $f12, 0x0380(s3)           ## 00000380
    lwc1    $f14, 0x0384(s3)           ## 00000384
    lw      a2, 0x0388(s3)             ## 00000388
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_800ABE54              
    or      a0, s7, $zero              ## a0 = 00000000
    lbu     t3, 0x037C(s3)             ## 0000037C
    or      a0, $zero, $zero           ## a0 = 00000000
    addiu   a1, $zero, 0x8000          ## a1 = FFFF8000
    beq     t3, $zero, lbl_80B6BD1C    
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80B6BD1C:
    mfc1    a2, $f22                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      s1, 0x02D0(s2)             ## 000002D0
    lui     t2, 0xDA38                 ## t2 = DA380000
    ori     t2, t2, 0x0003             ## t2 = DA380003
    addiu   t4, s1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s2)             ## 000002D0
    sw      t2, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s6)             ## 00000000
    sw      v0, 0x0004(s1)             ## 00000004
    lw      s0, 0x02D0(s2)             ## 000002D0
    lui     t1, 0xDE00                 ## t1 = DE000000
    addiu   t9, s0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s2)             ## 000002D0
    sw      s8, 0x0004(s0)             ## 00000004
    sw      t1, 0x0000(s0)             ## 00000000
    jal     func_800AA724              
    nop
    addiu   s5, s5, 0x002C             ## s5 = 0000002C
    addiu   $at, $zero, 0x00B0         ## $at = 000000B0
    bne     s5, $at, lbl_80B6BB7C      
    addiu   s3, s3, 0x002C             ## s3 = 0000002C
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
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
    addiu   $sp, $sp, 0x0070           ## $sp = 00000000
    nop

.section .data

var_80B6BDC0: .word 0x01B80400, 0x00000009, 0x01890000, 0x00000428
.word func_80B6A970
.word func_80B6AD70
.word func_80B6B558
.word func_80B6B690
var_80B6BDE0: .word \
0xFFFFAAFF, 0xFFC800FF, 0x0600A870, 0xFFF10000, \
0xFFFFAAFF, 0x009600FF, 0x0600B070, 0xFFF40000, \
0xFFAAFFFF, 0x640096FF, 0x0600B870, 0xFFF80000
var_80B6BE10: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0028004B, 0x00000000, 0x00000000
var_80B6BE3C: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00040014, 0x00000000, 0x00000000, 0x0A000039, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00040014, \
0x00000000, 0x00000000, 0x0A000039, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x000A0014, 0x00000000, \
0x00000000
var_80B6BEC0: .word 0x801F0006, 0x304C0898
var_80B6BEC8: .word \
0xC1000000, 0x42E00000, 0xC1000000, 0xC0400000, \
0x42E00000, 0x41E80000, 0x41F80000, 0x42E00000, \
0x41E80000, 0x41F80000, 0x42E00000, 0xC1000000
var_80B6BEF8: .word \
0xC2400000, 0x00000000, 0x42080000, 0xC25C0000, \
0x00000000, 0x42440000, 0xC2400000, 0x00000000, \
0x42700000
var_80B6BF1C: .word 0x00000000

.section .rodata

var_80B6BF20: .word 0x3E4CCCCD
var_80B6BF24: .word 0x3E4CCCCD
var_80B6BF28: .word 0x3C23D70A
var_80B6BF2C: .word 0x3C23D70A
var_80B6BF30: .word 0x3BE56042, 0x00000000, 0x00000000, 0x00000000

