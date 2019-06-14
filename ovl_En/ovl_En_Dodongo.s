#include <mips.h>
.set noreorder
.set noat

.section .text
func_808732E0:
    sw      a1, 0x02F8(a0)             ## 000002F8
    jr      $ra                        
    nop


func_808732EC:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      s0, 0x0040($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0044($sp)           
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    sw      a1, 0x008C($sp)            
    lui     t7, %hi(var_80875AAC)      ## t7 = 80870000
    addiu   t7, t7, %lo(var_80875AAC)  ## t7 = 80875AAC
    lw      t9, 0x0000(t7)             ## 80875AAC
    addiu   t6, $sp, 0x0078            ## t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             ## 80875AB0
    sw      t9, 0x0000(t6)             ## FFFFFFF0
    lw      t9, 0x0008(t7)             ## 80875AB4
    lui     t1, %hi(var_80875AB8)      ## t1 = 80870000
    addiu   t1, t1, %lo(var_80875AB8)  ## t1 = 80875AB8
    sw      t8, 0x0004(t6)             ## FFFFFFF4
    sw      t9, 0x0008(t6)             ## FFFFFFF8
    lw      t3, 0x0000(t1)             ## 80875AB8
    addiu   t0, $sp, 0x006C            ## t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             ## 80875ABC
    sw      t3, 0x0000(t0)             ## FFFFFFE4
    lw      t3, 0x0008(t1)             ## 80875AC0
    sw      t2, 0x0004(t0)             ## FFFFFFE8
    addiu   t4, $sp, 0x0060            ## t4 = FFFFFFD8
    sw      t3, 0x0008(t0)             ## FFFFFFEC
    lw      t6, 0x0330(s0)             ## 00000330
    lui     $at, 0x4680                ## $at = 46800000
    mtc1    $at, $f12                  ## $f12 = 16384.00
    sw      t6, 0x0000(t4)             ## FFFFFFD8
    lw      t5, 0x0334(s0)             ## 00000334
    sw      t5, 0x0004(t4)             ## FFFFFFDC
    lw      t6, 0x0338(s0)             ## 00000338
    jal     func_80026D90              
    sw      t6, 0x0008(t4)             ## FFFFFFE0
    trunc.w.s $f4, $f0                   
    mfc1    t0, $f4                    
    nop
    sh      t0, 0x005E($sp)            
    lh      t8, 0x00B6(s0)             ## 000000B6
    addu    a0, t8, t0                 
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lh      t1, 0x00B6(s0)             ## 000000B6
    lh      t2, 0x005E($sp)            
    mov.s   $f20, $f0                  
    addu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lbu     v0, 0x03B4(s0)             ## 000003B4
    mov.s   $f22, $f0                  
    slti    $at, v0, 0x001F            
    bnel    $at, $zero, lbl_808733E4   
    lbu     v0, 0x03B6(s0)             ## 000003B6
    lbu     t4, 0x03B5(s0)             ## 000003B5
    addiu   t3, v0, 0xFFF0             ## t3 = FFFFFFF0
    sb      t3, 0x03B4(s0)             ## 000003B4
    addiu   t5, t4, 0xFFF0             ## t5 = FFFFFFF0
    sb      t5, 0x03B5(s0)             ## 000003B5
    lbu     v0, 0x03B6(s0)             ## 000003B6
lbl_808733E4:
    slti    $at, v0, 0x001E            
    beql    $at, $zero, lbl_80873414   
    lui     $at, 0x4060                ## $at = 40600000
    lbu     t7, 0x03B7(s0)             ## 000003B7
    lbu     t8, 0x03BB(s0)             ## 000003BB
    addiu   t6, v0, 0x0005             ## t6 = 00000005
    addiu   t9, t7, 0x0008             ## t9 = 00000008
    addiu   t0, t8, 0x0008             ## t0 = 00000008
    sb      t6, 0x03B6(s0)             ## 000003B6
    sb      t9, 0x03B7(s0)             ## 000003B7
    sb      t0, 0x03BB(s0)             ## 000003BB
    lui     $at, 0x4060                ## $at = 40600000
lbl_80873414:
    mtc1    $at, $f0                   ## $f0 = 3.50
    lbu     v0, 0x03B8(s0)             ## 000003B8
    mul.s   $f6, $f22, $f0             
    beq     v0, $zero, lbl_8087342C    
    addiu   t1, v0, 0xFFF1             ## t1 = FFFFFFF1
    sb      t1, 0x03B8(s0)             ## 000003B8
lbl_8087342C:
    lbu     v0, 0x03B9(s0)             ## 000003B9
    beq     v0, $zero, lbl_8087343C    
    addiu   t2, v0, 0xFFFF             ## t2 = FFFFFFFF
    sb      t2, 0x03B9(s0)             ## 000003B9
lbl_8087343C:
    swc1    $f6, 0x0078($sp)           
    lbu     t3, 0x03B8(s0)             ## 000003B8
    mul.s   $f6, $f20, $f0             
    mtc1    t3, $f8                    ## $f8 = NaN
    bgez    t3, lbl_80873464           
    cvt.s.w $f10, $f8                  
    lui     $at, 0x4F80                ## $at = 4F800000
    mtc1    $at, $f16                  ## $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16           
lbl_80873464:
    lui     $at, %hi(var_80875C10)     ## $at = 80870000
    lwc1    $f18, %lo(var_80875C10)($at) 
    swc1    $f6, 0x0080($sp)           
    mul.s   $f4, $f10, $f18            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f4, 0x007C($sp)           
    lui     $at, %hi(var_80875C14)     ## $at = 80870000
    lwc1    $f8, %lo(var_80875C14)($at) 
    lui     $at, %hi(var_80875C18)     ## $at = 80870000
    lwc1    $f10, %lo(var_80875C18)($at) 
    mul.s   $f16, $f0, $f8             
    neg.s   $f4, $f22                  
    add.s   $f18, $f16, $f10           
    mul.s   $f6, $f18, $f4             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x006C($sp)           
    lui     $at, %hi(var_80875C1C)     ## $at = 80870000
    lwc1    $f8, %lo(var_80875C1C)($at) 
    lui     $at, %hi(var_80875C20)     ## $at = 80870000
    lwc1    $f10, %lo(var_80875C20)($at) 
    mul.s   $f16, $f0, $f8             
    neg.s   $f4, $f20                  
    addiu   v0, s0, 0x03B4             ## v0 = 000003B4
    addiu   v1, s0, 0x03B8             ## v1 = 000003B8
    addiu   t4, $zero, 0x0064          ## t4 = 00000064
    addiu   t5, $zero, 0x0019          ## t5 = 00000019
    addiu   t6, $zero, 0x0014          ## t6 = 00000014
    add.s   $f18, $f16, $f10           
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    mul.s   $f6, $f18, $f4             
    sw      v1, 0x0014($sp)            
    sw      v1, 0x004C($sp)            
    sw      v0, 0x0010($sp)            
    sw      v0, 0x0050($sp)            
    lw      a0, 0x008C($sp)            
    addiu   a1, $sp, 0x0060            ## a1 = FFFFFFD8
    swc1    $f6, 0x0074($sp)           
    addiu   a2, $sp, 0x0078            ## a2 = FFFFFFF0
    jal     func_8001BE64              
    addiu   a3, $sp, 0x006C            ## a3 = FFFFFFE4
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4600                ## $at = 46000000
    mtc1    $at, $f8                   ## $f8 = 8192.00
    nop
    mul.s   $f16, $f0, $f8             
    trunc.w.s $f10, $f16                 
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x005E($sp)            
    lh      t9, 0x00B6(s0)             ## 000000B6
    addu    a0, t9, t0                 
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lh      t1, 0x00B6(s0)             ## 000000B6
    lh      t2, 0x005E($sp)            
    mov.s   $f20, $f0                  
    addu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f2                   ## $f2 = 6.00
    lwc1    $f18, 0x0060($sp)          
    lui     $at, 0x4060                ## $at = 40600000
    mul.s   $f4, $f20, $f2             
    mtc1    $at, $f12                  ## $f12 = 3.50
    lwc1    $f8, 0x0068($sp)           
    mul.s   $f16, $f0, $f2             
    mov.s   $f22, $f0                  
    sub.s   $f6, $f18, $f4             
    neg.s   $f18, $f20                 
    add.s   $f10, $f8, $f16            
    mul.s   $f4, $f18, $f12            
    swc1    $f6, 0x0060($sp)           
    swc1    $f10, 0x0068($sp)          
    swc1    $f4, 0x0078($sp)           
    lbu     t3, 0x03B8(s0)             ## 000003B8
    mul.s   $f4, $f0, $f12             
    mtc1    t3, $f6                    ## $f6 = 0.00
    bgez    t3, lbl_808735C8           
    cvt.s.w $f8, $f6                   
    lui     $at, 0x4F80                ## $at = 4F800000
    mtc1    $at, $f16                  ## $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16             
lbl_808735C8:
    lui     $at, %hi(var_80875C24)     ## $at = 80870000
    lwc1    $f10, %lo(var_80875C24)($at) 
    swc1    $f4, 0x0080($sp)           
    mul.s   $f18, $f8, $f10            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f18, 0x007C($sp)          
    lui     $at, %hi(var_80875C28)     ## $at = 80870000
    lwc1    $f6, %lo(var_80875C28)($at) 
    lui     $at, %hi(var_80875C2C)     ## $at = 80870000
    lwc1    $f8, %lo(var_80875C2C)($at) 
    mul.s   $f16, $f0, $f6             
    add.s   $f10, $f16, $f8            
    mul.s   $f18, $f10, $f20           
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f18, 0x006C($sp)          
    lui     $at, %hi(var_80875C30)     ## $at = 80870000
    lwc1    $f4, %lo(var_80875C30)($at) 
    lui     $at, %hi(var_80875C34)     ## $at = 80870000
    lwc1    $f16, %lo(var_80875C34)($at) 
    mul.s   $f6, $f0, $f4              
    neg.s   $f10, $f22                 
    lw      t4, 0x0050($sp)            
    lw      t5, 0x004C($sp)            
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    addiu   t7, $zero, 0x0019          ## t7 = 00000019
    addiu   t8, $zero, 0x0014          ## t8 = 00000014
    add.s   $f8, $f6, $f16             
    sw      t8, 0x0020($sp)            
    sw      t7, 0x001C($sp)            
    sw      t6, 0x0018($sp)            
    mul.s   $f18, $f8, $f10            
    lw      a0, 0x008C($sp)            
    addiu   a1, $sp, 0x0060            ## a1 = FFFFFFD8
    addiu   a2, $sp, 0x0078            ## a2 = FFFFFFF0
    addiu   a3, $sp, 0x006C            ## a3 = FFFFFFE4
    sw      t4, 0x0010($sp)            
    sw      t5, 0x0014($sp)            
    jal     func_8001BE64              
    swc1    $f18, 0x0074($sp)          
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4600                ## $at = 46000000
    mtc1    $at, $f4                   ## $f4 = 8192.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f16, $f6                  
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x005E($sp)            
    lh      t0, 0x00B6(s0)             ## 000000B6
    addu    a0, t0, t2                 
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lh      t3, 0x00B6(s0)             ## 000000B6
    lh      t4, 0x005E($sp)            
    mov.s   $f20, $f0                  
    addu    a0, t3, t4                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f2                   ## $f2 = 6.00
    lwc1    $f8, 0x0330(s0)            ## 00000330
    lui     $at, 0x4060                ## $at = 40600000
    mul.s   $f10, $f20, $f2            
    mov.s   $f22, $f0                  
    mul.s   $f6, $f0, $f2              
    add.s   $f18, $f8, $f10            
    mtc1    $at, $f8                   ## $f8 = 3.50
    lui     $at, 0x4F80                ## $at = 4F800000
    swc1    $f18, 0x0060($sp)          
    mul.s   $f10, $f20, $f8            
    lwc1    $f4, 0x0338(s0)            ## 00000338
    sub.s   $f16, $f4, $f6             
    swc1    $f10, 0x0078($sp)          
    swc1    $f16, 0x0068($sp)          
    lbu     t5, 0x03B8(s0)             ## 000003B8
    mtc1    t5, $f18                   ## $f18 = 0.00
    bgez    t5, lbl_80873718           
    cvt.s.w $f4, $f18                  
    mtc1    $at, $f6                   ## $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80873718:
    lui     $at, %hi(var_80875C38)     ## $at = 80870000
    lwc1    $f16, %lo(var_80875C38)($at) 
    lui     $at, 0x4060                ## $at = 40600000
    mtc1    $at, $f18                  ## $f18 = 3.50
    mul.s   $f8, $f4, $f16             
    neg.s   $f10, $f0                  
    mul.s   $f6, $f10, $f18            
    swc1    $f8, 0x007C($sp)           
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x0080($sp)           
    lui     $at, %hi(var_80875C3C)     ## $at = 80870000
    lwc1    $f4, %lo(var_80875C3C)($at) 
    lui     $at, %hi(var_80875C40)     ## $at = 80870000
    lwc1    $f8, %lo(var_80875C40)($at) 
    mul.s   $f16, $f0, $f4             
    neg.s   $f18, $f20                 
    add.s   $f10, $f16, $f8            
    mul.s   $f6, $f10, $f18            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x006C($sp)           
    lui     $at, %hi(var_80875C44)     ## $at = 80870000
    lwc1    $f4, %lo(var_80875C44)($at) 
    lui     $at, %hi(var_80875C48)     ## $at = 80870000
    lwc1    $f8, %lo(var_80875C48)($at) 
    mul.s   $f16, $f0, $f4             
    lw      t6, 0x0050($sp)            
    lw      t7, 0x004C($sp)            
    addiu   t8, $zero, 0x0064          ## t8 = 00000064
    addiu   t9, $zero, 0x0019          ## t9 = 00000019
    addiu   t1, $zero, 0x0014          ## t1 = 00000014
    sw      t1, 0x0020($sp)            
    add.s   $f10, $f16, $f8            
    sw      t9, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    lw      a0, 0x008C($sp)            
    mul.s   $f18, $f10, $f22           
    addiu   a1, $sp, 0x0060            ## a1 = FFFFFFD8
    addiu   a2, $sp, 0x0078            ## a2 = FFFFFFF0
    addiu   a3, $sp, 0x006C            ## a3 = FFFFFFE4
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    jal     func_8001BE64              
    swc1    $f18, 0x0074($sp)          
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000


func_808737DC:
    addiu   $sp, $sp, 0xFE08           ## $sp = FFFFFE08
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    lui     a1, %hi(var_80875AC4)      ## a1 = 80870000
    sb      t6, 0x001F(s0)             ## 0000001F
    addiu   a1, a1, %lo(var_80875AC4)  ## a1 = 80875AC4
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
    addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
    addiu   t9, $zero, 0x00C8          ## t9 = 000000C8
    addiu   t1, $zero, 0x000A          ## t1 = 0000000A
    lui     a2, 0x8002                 ## a2 = 80020000
    sb      v0, 0x03B8(s0)             ## 000003B8
    sb      v0, 0x03B5(s0)             ## 000003B5
    sb      v0, 0x03B4(s0)             ## 000003B4
    sb      t9, 0x03BB(s0)             ## 000003BB
    sb      t9, 0x03B7(s0)             ## 000003B7
    sb      t1, 0x03B9(s0)             ## 000003B9
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lui     a3, 0x4240                 ## a3 = 42400000
    swc1    $f0, 0x0344(s0)            ## 00000344
    swc1    $f0, 0x0340(s0)            ## 00000340
    jal     func_8001EC20              
    swc1    $f0, 0x033C(s0)            ## 0000033C
    lui     a1, 0x3C99                 ## a1 = 3C990000
    ori     a1, a1, 0x999A             ## a1 = 3C99999A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t2, s0, 0x0180             ## t2 = 00000180
    addiu   t3, s0, 0x023A             ## t3 = 0000023A
    addiu   t4, $zero, 0x001F          ## t4 = 0000001F
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, 0x4C20             ## a3 = 06004C20
    addiu   a2, a2, 0x8318             ## a2 = 06008318
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    lui     t7, %hi(var_80875A8C)      ## t7 = 80870000
    addiu   t5, $zero, 0x0004          ## t5 = 00000004
    addiu   t6, $zero, 0x00FE          ## t6 = 000000FE
    addiu   t7, t7, %lo(var_80875A8C)  ## t7 = 80875A8C
    sb      t5, 0x00AF(s0)             ## 000000AF
    sb      t6, 0x00AE(s0)             ## 000000AE
    sw      t7, 0x0098(s0)             ## 00000098
    addiu   a1, s0, 0x03C4             ## a1 = 000003C4
    sw      a1, 0x0034($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0444             ## a1 = 00000444
    sw      a1, 0x0038($sp)            
    jal     func_8004B064              
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0578             ## a1 = 00000578
    sw      a1, 0x003C($sp)            
    jal     func_8004A484              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80875A3C)      ## a3 = 80870000
    addiu   a3, a3, %lo(var_80875A3C)  ## a3 = 80875A3C
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_8004B960              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a3, %hi(var_80875A2C)      ## a3 = 80870000
    addiu   t8, s0, 0x0464             ## t8 = 00000464
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80875A2C)  ## a3 = 80875A2C
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0038($sp)            
    jal     func_8004B3EC              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a3, %hi(var_80875968)      ## a3 = 80870000
    addiu   t9, s0, 0x0598             ## t9 = 00000598
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80875968)  ## a3 = 80875968
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x003C($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
    addiu   t1, $zero, 0x0040          ## t1 = 00000040
    addiu   t2, $zero, 0x0008          ## t2 = 00000008
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    addiu   t4, $sp, 0x0054            ## t4 = FFFFFE5C
    sb      v0, 0x01E5($sp)            
    sb      v0, 0x01E4($sp)            
    sb      v0, 0x01E2($sp)            
    sb      v0, 0x01E1($sp)            
    sb      v0, 0x01E0($sp)            
    sb      v0, 0x01DE($sp)            
    sb      v0, 0x01DD($sp)            
    sb      v0, 0x01DC($sp)            
    sb      v0, 0x01DB($sp)            
    sb      v0, 0x01DA($sp)            
    sb      v0, 0x01D9($sp)            
    sb      v0, 0x01D8($sp)            
    sb      $zero, 0x01E3($sp)         
    sb      t1, 0x01DF($sp)            
    sw      t2, 0x01E8($sp)            
    sw      $zero, 0x01EC($sp)         
    sw      t3, 0x01F0($sp)            
    sw      t4, 0x0014($sp)            
    sb      v0, 0x01E6($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x03C0             ## a1 = 000003C0
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8001AA5C              
    sb      $zero, 0x01E7($sp)         
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f4                   ## $f4 = 70.00
    addiu   t5, $zero, 0x001D          ## t5 = 0000001D
    sw      t5, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x4296                 ## a2 = 42960000
    lui     a3, 0x4270                 ## a3 = 42700000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    jal     func_80873A64              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01F8           ## $sp = 00000000


func_80873A04:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8001AE04              
    lw      a1, 0x03C0(t6)             ## 000003C0
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B148              
    addiu   a1, a1, 0x0444             ## a1 = 00000444
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0578             ## a1 = 00000578
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x03C4             ## a1 = 000003C4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873A64:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4C20             ## a1 = 06004C20
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    addiu   a1, $zero, 0x0032          ## a1 = 00000032
    jal     func_80063BF0              
    swc1    $f4, 0x0068(a3)            ## 00000068
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    lui     a1, %hi(func_80873D2C)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80873D2C) ## a1 = 80873D2C
    sh      v0, 0x02FC(a0)             ## 000002FC
    jal     func_808732E0              
    sw      t6, 0x02F4(a0)             ## 000002F4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873ACC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8B1C             ## a0 = 06008B1C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -4.00
    lui     a1, 0x0601                 ## a1 = 06010000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x8B1C             ## a1 = 06008B1C
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f10                  ## $f10 = 1.50
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    jal     func_80063BF0              
    swc1    $f10, 0x0068(s0)           ## 00000068
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0008          ## t7 = 00000008
    lui     a1, %hi(func_808744C4)     ## a1 = 80870000
    sh      v0, 0x02FC(s0)             ## 000002FC
    sh      t6, 0x0306(s0)             ## 00000306
    sw      t7, 0x02F4(s0)             ## 000002F4
    addiu   a1, a1, %lo(func_808744C4) ## a1 = 808744C4
    jal     func_808732E0              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873B70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x28F0             ## a1 = 060028F0
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    lui     a1, %hi(func_80873DF4)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80873DF4) ## a1 = 80873DF4
    sw      t6, 0x02F4(a0)             ## 000002F4
    jal     func_808732E0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873BC4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x3088             ## a1 = 06003088
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    lui     a1, %hi(func_80873DA4)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80873DA4) ## a1 = 80873DA4
    sw      t6, 0x02F4(a0)             ## 000002F4
    jal     func_808732E0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873C14:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f6                   ## $f6 = -4.00
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x28F0             ## a1 = 060028F0
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0xBF80                 ## a2 = BF800000
    lui     a3, 0x420C                 ## a3 = 420C0000
    swc1    $f6, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f4, 0x0010($sp)           
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t8, $zero, 0x0019          ## t8 = 00000019
    lui     a1, %hi(func_80873FCC)     ## a1 = 80870000
    sw      t7, 0x02F4(s0)             ## 000002F4
    sh      t8, 0x02FC(s0)             ## 000002FC
    addiu   a1, a1, %lo(func_80873FCC) ## a1 = 80873FCC
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808732E0              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873C94:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f4                   ## $f4 = -4.00
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a2, $f0                    
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x28F0             ## a1 = 060028F0
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a3, 0x41C8                 ## a3 = 41C80000
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    lbu     t8, 0x03BC(s0)             ## 000003BC
    mtc1    $zero, $f6                 ## $f6 = 0.00
    addiu   t7, $zero, 0x0007          ## t7 = 00000007
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    sw      t7, 0x02F4(s0)             ## 000002F4
    bne     t8, $at, lbl_80873CFC      
    swc1    $f6, 0x0068(s0)            ## 00000068
    addiu   t9, $zero, 0x0024          ## t9 = 00000024
    sh      t9, 0x0302(s0)             ## 00000302
lbl_80873CFC:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
    lui     a1, %hi(func_80874CEC)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80874CEC) ## a1 = 80874CEC
    jal     func_808732E0              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873D2C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lw      a0, 0x0018($sp)            
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lh      v1, 0x02FC(a2)             ## 000002FC
    bne     v1, $zero, lbl_80873D6C    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80873D74 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80873D6C:
    sh      t6, 0x02FC(a2)             ## 000002FC
    lh      v0, 0x02FC(a2)             ## 000002FC
lbl_80873D74:
    bnel    v0, $zero, lbl_80873D98    
    lw      $ra, 0x0014($sp)           
    jal     func_8008D6A8              
    sw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_80873D94    
    lw      a2, 0x0020($sp)            
    jal     func_80873ACC              
    or      a0, a2, $zero              ## a0 = 00000000
lbl_80873D94:
    lw      $ra, 0x0014($sp)           
lbl_80873D98:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873DA4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80873DE8    
    lw      $ra, 0x0014($sp)           
    jal     func_80873A64              
    lw      a0, 0x0018($sp)            
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0014          ## a1 = 00000014
    lw      t6, 0x0018($sp)            
    sh      v0, 0x02FC(t6)             ## 000002FC
    lw      $ra, 0x0014($sp)           
lbl_80873DE8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873DF4:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x005C($sp)            
    lui     t7, %hi(var_80875AD0)      ## t7 = 80870000
    addiu   t7, t7, %lo(var_80875AD0)  ## t7 = 80875AD0
    lw      t9, 0x0000(t7)             ## 80875AD0
    addiu   t6, $sp, 0x0048            ## t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             ## 80875AD4
    sw      t9, 0x0000(t6)             ## FFFFFFF0
    lw      t9, 0x0008(t7)             ## 80875AD8
    lui     t1, %hi(var_80875ADC)      ## t1 = 80870000
    addiu   t1, t1, %lo(var_80875ADC)  ## t1 = 80875ADC
    sw      t8, 0x0004(t6)             ## FFFFFFF4
    sw      t9, 0x0008(t6)             ## FFFFFFF8
    lw      t3, 0x0000(t1)             ## 80875ADC
    addiu   t0, $sp, 0x003C            ## t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             ## 80875AE0
    sw      t3, 0x0000(t0)             ## FFFFFFE4
    lw      t3, 0x0008(t1)             ## 80875AE4
    sw      t2, 0x0004(t0)             ## FFFFFFE8
    addiu   $at, $zero, 0x0018         ## $at = 00000018
    sw      t3, 0x0008(t0)             ## FFFFFFEC
    lwc1    $f0, 0x0154(s0)            ## 00000154
    or      a0, s0, $zero              ## a0 = 00000000
    trunc.w.s $f4, $f0                   
    mfc1    t5, $f4                    
    nop
    bnel    t5, $at, lbl_80873E80      
    lui     $at, 0x41E8                ## $at = 41E80000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3801          ## a1 = 00003801
    lwc1    $f0, 0x0154(s0)            ## 00000154
    lui     $at, 0x41E8                ## $at = 41E80000
lbl_80873E80:
    mtc1    $at, $f6                   ## $f6 = 29.00
    lui     $at, 0x422C                ## $at = 422C0000
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80873F68               
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    or      a0, s0, $zero              ## a0 = 00000000
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_80873F68               
    lui     $at, 0x4000                ## $at = 40000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3002          ## a1 = 00003002
    lui     $at, 0x41E8                ## $at = 41E80000
    mtc1    $at, $f16                  ## $f16 = 29.00
    lwc1    $f10, 0x0154(s0)           ## 00000154
    addiu   a2, $sp, 0x0030            ## a2 = FFFFFFD8
    lui     $at, 0x420C                ## $at = 420C0000
    sub.s   $f18, $f10, $f16           
    mtc1    $at, $f8                   ## $f8 = 35.00
    lui     a1, 0x41F0                 ## a1 = 41F00000
    trunc.w.s $f4, $f18                  
    mfc1    t7, $f4                    
    nop
    sh      t7, 0x002C($sp)            
    lw      t9, 0x0024(s0)             ## 00000024
    sw      t9, 0x0000(a2)             ## FFFFFFD8
    lw      t8, 0x0028(s0)             ## 00000028
    sw      t8, 0x0004(a2)             ## FFFFFFDC
    lw      t9, 0x002C(s0)             ## 0000002C
    sw      t9, 0x0008(a2)             ## FFFFFFE0
    lwc1    $f6, 0x0034($sp)           
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0034($sp)          
    jal     func_80875730              
    lh      a0, 0x0032(s0)             ## 00000032
    lh      a0, 0x0032(s0)             ## 00000032
    lui     a1, 0x4020                 ## a1 = 40200000
    jal     func_80875730              
    addiu   a2, $sp, 0x003C            ## a2 = FFFFFFE4
    lh      v0, 0x002C($sp)            
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    lw      a0, 0x005C($sp)            
    sll     t0, v0,  2                 
    addu    t0, t0, v0                 
    sll     t0, t0,  1                 
    subu    t2, t1, t0                 
    addiu   t3, v0, 0x0003             ## t3 = 00000003
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a1, $sp, 0x0030            ## a1 = FFFFFFD8
    addiu   a2, $sp, 0x0048            ## a2 = FFFFFFF0
    jal     func_8001CE98              
    addiu   a3, $sp, 0x003C            ## a3 = FFFFFFE4
    beq     $zero, $zero, lbl_80873FA0 
    nop
    lui     $at, 0x4000                ## $at = 40000000
lbl_80873F68:
    mtc1    $at, $f16                  ## $f16 = 2.00
    lui     $at, 0x41A0                ## $at = 41A00000
    c.le.s  $f16, $f0                  
    nop
    bc1f    lbl_80873FA0               
    nop
    mtc1    $at, $f18                  ## $f18 = 20.00
    or      a0, s0, $zero              ## a0 = 00000000
    c.le.s  $f0, $f18                  
    nop
    bc1f    lbl_80873FA0               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3058          ## a1 = 00003058
lbl_80873FA0:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80873FBC    
    lw      $ra, 0x0024($sp)           
    jal     func_80873BC4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80873FBC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80873FCC:
    addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
    sw      s3, 0x0048($sp)            
    sw      s1, 0x0040($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s2, 0x0044($sp)            
    sw      s0, 0x003C($sp)            
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    addiu   v1, $sp, 0x008C            ## v1 = FFFFFFE4
    lui     t7, %hi(var_80875AE8)      ## t7 = 80870000
    addiu   t7, t7, %lo(var_80875AE8)  ## t7 = 80875AE8
    lw      t9, 0x0000(t7)             ## 80875AE8
    addiu   t6, $sp, 0x009C            ## t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             ## 80875AEC
    sw      t9, 0x0000(t6)             ## FFFFFFF4
    lw      t9, 0x0008(t7)             ## 80875AF0
    lui     t1, %hi(var_80875AF4)      ## t1 = 80870000
    addiu   t1, t1, %lo(var_80875AF4)  ## t1 = 80875AF4
    sw      t8, 0x0004(t6)             ## FFFFFFF8
    sw      t9, 0x0008(t6)             ## FFFFFFFC
    lw      t3, 0x0000(t1)             ## 80875AF4
    addiu   t0, $sp, 0x0090            ## t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             ## 80875AF8
    sw      t3, 0x0000(t0)             ## FFFFFFE8
    lw      t3, 0x0008(t1)             ## 80875AFC
    lui     t4, %hi(var_80875B00)      ## t4 = 80870000
    addiu   t4, t4, %lo(var_80875B00)  ## t4 = 80875B00
    sw      t2, 0x0004(t0)             ## FFFFFFEC
    sw      t3, 0x0008(t0)             ## FFFFFFF0
    lw      t6, 0x0000(t4)             ## 80875B00
    lui     t8, %hi(var_80875B04)      ## t8 = 80870000
    addiu   t8, t8, %lo(var_80875B04)  ## t8 = 80875B04
    sw      t6, 0x0000(v1)             ## FFFFFFE4
    lw      t0, 0x0000(t8)             ## 80875B04
    addiu   t7, $sp, 0x0080            ## t7 = FFFFFFD8
    lw      t9, 0x0004(t8)             ## 80875B08
    sw      t0, 0x0000(t7)             ## FFFFFFD8
    lw      t0, 0x0008(t8)             ## 80875B0C
    lui     t2, %hi(var_80875B10)      ## t2 = 80870000
    addiu   t2, t2, %lo(var_80875B10)  ## t2 = 80875B10
    sw      t9, 0x0004(t7)             ## FFFFFFDC
    sw      t0, 0x0008(t7)             ## FFFFFFE0
    lw      t4, 0x0000(t2)             ## 80875B10
    addiu   t1, $sp, 0x0074            ## t1 = FFFFFFCC
    lw      t3, 0x0004(t2)             ## 80875B14
    sw      t4, 0x0000(t1)             ## FFFFFFCC
    lw      t4, 0x0008(t2)             ## 80875B18
    sw      t3, 0x0004(t1)             ## FFFFFFD0
    addiu   a1, $zero, 0x385B          ## a1 = 0000385B
    sw      t4, 0x0008(t1)             ## FFFFFFD4
    lw      a2, 0x011C(s1)             ## 0000011C
    beql    a2, $zero, lbl_808740D8    
    lw      a0, 0x0118(s1)             ## 00000118
    lw      t6, 0x0324(s1)             ## 00000324
    sw      t6, 0x0024(a2)             ## 00000024
    lw      t5, 0x0328(s1)             ## 00000328
    sw      t5, 0x0028(a2)             ## 00000028
    lw      t6, 0x032C(s1)             ## 0000032C
    sw      t6, 0x002C(a2)             ## 0000002C
    lw      a2, 0x011C(s1)             ## 0000011C
    lh      t7, 0x01E8(a2)             ## 000001E8
    addiu   t8, t7, 0x0001             ## t8 = FFFFFFD9
    beq     $zero, $zero, lbl_80874108 
    sh      t8, 0x01E8(a2)             ## 000001E8
    lw      a0, 0x0118(s1)             ## 00000118
lbl_808740D8:
    beql    a0, $zero, lbl_8087410C    
    lwc1    $f4, 0x0154(s1)            ## 00000154
    lw      t0, 0x0324(s1)             ## 00000324
    sw      t0, 0x0024(a0)             ## 00000024
    lw      t9, 0x0328(s1)             ## 00000328
    sw      t9, 0x0028(a0)             ## 00000028
    lw      t0, 0x032C(s1)             ## 0000032C
    sw      t0, 0x002C(a0)             ## 0000002C
    lw      a0, 0x0118(s1)             ## 00000118
    lh      t1, 0x01E8(a0)             ## 000001E8
    addiu   t2, t1, 0x0001             ## t2 = FFFFFFCD
    sh      t2, 0x01E8(a0)             ## 000001E8
lbl_80874108:
    lwc1    $f4, 0x0154(s1)            ## 00000154
lbl_8087410C:
    addiu   $at, $zero, 0x001C         ## $at = 0000001C
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    bnel    v0, $at, lbl_80874170      
    addiu   $at, $zero, 0x0018         ## $at = 00000018
    jal     func_80022FD0              
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a2, 0x011C(s1)             ## 0000011C
    beql    a2, $zero, lbl_80874150    
    lw      a0, 0x0118(s1)             ## 00000118
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    sw      $zero, 0x011C(s1)          ## 0000011C
    beq     $zero, $zero, lbl_808742D8 
    addiu   v1, $sp, 0x008C            ## v1 = FFFFFFE4
    lw      a0, 0x0118(s1)             ## 00000118
lbl_80874150:
    beq     a0, $zero, lbl_80874164    
    nop
    jal     func_80020EB4              
    nop
    sw      $zero, 0x0118(s1)          ## 00000118
lbl_80874164:
    beq     $zero, $zero, lbl_808742D8 
    addiu   v1, $sp, 0x008C            ## v1 = FFFFFFE4
    addiu   $at, $zero, 0x0018         ## $at = 00000018
lbl_80874170:
    bnel    v0, $at, lbl_808742DC      
    lwc1    $f16, 0x0154(s1)           ## 00000154
    lh      t4, 0x02FC(s1)             ## 000002FC
    lui     $at, 0x3F80                ## $at = 3F800000
    addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
    sh      t5, 0x02FC(s1)             ## 000002FC
    lh      v0, 0x02FC(s1)             ## 000002FC
    beql    v0, $zero, lbl_808742DC    
    lwc1    $f16, 0x0154(s1)           ## 00000154
    lwc1    $f8, 0x0154(s1)            ## 00000154
    mtc1    $at, $f10                  ## $f10 = 1.00
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    addiu   s0, $zero, 0x000A          ## s0 = 0000000A
    add.s   $f16, $f8, $f10            
    addiu   t6, s1, 0x03B4             ## t6 = 000003B4
    addiu   t7, s1, 0x03B8             ## t7 = 000003B8
    bne     v0, $at, lbl_808742D8      
    swc1    $f16, 0x0154(s1)           ## 00000154
    lui     $at, %hi(var_80875C4C)     ## $at = 80870000
    lwc1    $f22, %lo(var_80875C4C)($at) 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f20                  ## $f20 = 10.00
    sw      t6, 0x0058($sp)            
    sw      t7, 0x0054($sp)            
    addiu   s2, $sp, 0x0064            ## s2 = FFFFFFBC
lbl_808741D4:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0080($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0084($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f18, 0x0080($sp)          
    lwc1    $f6, 0x0084($sp)           
    swc1    $f0, 0x0088($sp)           
    mul.s   $f4, $f18, $f22            
    lw      t1, 0x0058($sp)            
    lw      t2, 0x0054($sp)            
    mul.s   $f8, $f6, $f22             
    addiu   t3, $zero, 0x0190          ## t3 = 00000190
    addiu   t4, $zero, 0x000A          ## t4 = 0000000A
    mul.s   $f10, $f0, $f22            
    swc1    $f4, 0x0074($sp)           
    addiu   t5, $zero, 0x000A          ## t5 = 0000000A
    or      a0, s3, $zero              ## a0 = 00000000
    swc1    $f8, 0x0078($sp)           
    or      a1, s2, $zero              ## a1 = FFFFFFBC
    addiu   a2, $sp, 0x0080            ## a2 = FFFFFFD8
    swc1    $f10, 0x007C($sp)          
    lh      t8, 0x05C8(s1)             ## 000005C8
    addiu   a3, $sp, 0x0074            ## a3 = FFFFFFCC
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f4, $f16                  
    add.s   $f8, $f4, $f18             
    swc1    $f8, 0x0064($sp)           
    lh      t9, 0x05CA(s1)             ## 000005CA
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0068($sp)           
    lh      t0, 0x05CC(s1)             ## 000005CC
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    mtc1    t0, $f18                   ## $f18 = 0.00
    sw      t3, 0x0018($sp)            
    sw      t1, 0x0010($sp)            
    cvt.s.w $f8, $f18                  
    sw      t2, 0x0014($sp)            
    add.s   $f10, $f8, $f0             
    jal     func_8001BE64              
    swc1    $f10, 0x006C($sp)          
    addiu   s0, s0, 0xFFFF             ## s0 = 00000009
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    bgez    s0, lbl_808741D4           
    nop
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x180E          ## a1 = 0000180E
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    sw      t6, 0x0010($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    addiu   v1, $sp, 0x008C            ## v1 = FFFFFFE4
lbl_808742D8:
    lwc1    $f16, 0x0154(s1)           ## 00000154
lbl_808742DC:
    addiu   s2, $sp, 0x0064            ## s2 = FFFFFFBC
    trunc.w.s $f6, $f16                  
    mfc1    v0, $f6                    
    nop
    slti    $at, v0, 0x001C            
    beq     $at, $zero, lbl_80874430   
    slti    $at, v0, 0x001A            
    beql    $at, $zero, lbl_80874328   
    lw      t0, 0x0330(s1)             ## 00000330
    lh      t8, 0x02FC(s1)             ## 000002FC
    or      a0, s1, $zero              ## a0 = 00000000
    slti    $at, t8, 0x000B            
    beql    $at, $zero, lbl_80874328   
    lw      t0, 0x0330(s1)             ## 00000330
    jal     func_808732EC              
    or      a1, s3, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80874434 
    lbu     a0, 0x0114(s1)             ## 00000114
    lw      t0, 0x0330(s1)             ## 00000330
lbl_80874328:
    addiu   t1, $zero, 0x0032          ## t1 = 00000032
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    sw      t0, 0x0000(s2)             ## FFFFFFBC
    lw      t9, 0x0334(s1)             ## 00000334
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s2, $zero              ## a1 = FFFFFFBC
    sw      t9, 0x0004(s2)             ## FFFFFFC0
    lw      t0, 0x0338(s1)             ## 00000338
    addiu   a2, $sp, 0x009C            ## a2 = FFFFFFF4
    addiu   a3, $sp, 0x0090            ## a3 = FFFFFFE8
    sw      t0, 0x0008(s2)             ## FFFFFFC4
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    sw      v1, 0x0014($sp)            
    jal     func_8001BD94              
    sw      v1, 0x0010($sp)            
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s1)             ## 000000B6
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f20                  ## $f20 = 6.00
    lwc1    $f4, 0x0064($sp)           
    mul.s   $f18, $f0, $f20            
    sub.s   $f8, $f4, $f18             
    swc1    $f8, 0x0064($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s1)             ## 000000B6
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x006C($sp)          
    addiu   t3, $sp, 0x008C            ## t3 = FFFFFFE4
    addiu   t4, $zero, 0x0032          ## t4 = 00000032
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    add.s   $f6, $f10, $f16            
    sw      t3, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    swc1    $f6, 0x006C($sp)           
    or      a1, s2, $zero              ## a1 = FFFFFFBC
    addiu   a2, $sp, 0x009C            ## a2 = FFFFFFF4
    jal     func_8001BD94              
    addiu   a3, $sp, 0x0090            ## a3 = FFFFFFE8
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s1)             ## 000000B6
    mul.s   $f4, $f0, $f20             
    lwc1    $f18, 0x0330(s1)           ## 00000330
    add.s   $f8, $f4, $f18             
    swc1    $f8, 0x0064($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s1)             ## 000000B6
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x0338(s1)           ## 00000338
    addiu   t6, $sp, 0x008C            ## t6 = FFFFFFE4
    addiu   t7, $zero, 0x0032          ## t7 = 00000032
    addiu   t8, $zero, 0x0005          ## t8 = 00000005
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sub.s   $f6, $f10, $f16            
    sw      t6, 0x0010($sp)            
    sw      t6, 0x0014($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    swc1    $f6, 0x006C($sp)           
    or      a1, s2, $zero              ## a1 = FFFFFFBC
    addiu   a2, $sp, 0x009C            ## a2 = FFFFFFF4
    jal     func_8001BD94              
    addiu   a3, $sp, 0x0090            ## a3 = FFFFFFE8
lbl_80874430:
    lbu     a0, 0x0114(s1)             ## 00000114
lbl_80874434:
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f20                  ## $f20 = 1.00
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lbu     a0, 0x0114(s1)             ## 00000114
    mul.s   $f18, $f0, $f4             
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f2, $f18, $f20            
    swc1    $f2, 0x0344(s1)            ## 00000344
    jal     func_800636C4              ## sins?
    swc1    $f2, 0x0340(s1)            ## 00000340
    add.s   $f8, $f0, $f20             
    addiu   a0, s1, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f8, 0x033C(s1)            ## 0000033C
    lh      t9, 0x02FC(s1)             ## 000002FC
    or      a0, s1, $zero              ## a0 = 00000000
    bnel    t9, $zero, lbl_808744A4    
    lw      $ra, 0x004C($sp)           
    jal     func_80874B28              
    or      a1, s3, $zero              ## a1 = 00000000
    lw      $ra, 0x004C($sp)           
lbl_808744A4:
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    lw      s2, 0x0044($sp)            
    lw      s3, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           ## $sp = 00000000


func_808744C4:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lw      t7, 0x1C44(t6)             ## 00001C44
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    sw      t7, 0x0044($sp)            
    lh      t9, 0x00B6(s0)             ## 000000B6
    lh      t8, 0x008A(s0)             ## 0000008A
    lui     a1, 0x3FC0                 ## a1 = 3FC00000
    lui     a3, 0x3F80                 ## a3 = 3F800000
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_80874528           
    swc1    $f4, 0x0010($sp)           
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    swc1    $f4, 0x0010($sp)           
lbl_80874528:
    jal     func_80064178              
    sh      v0, 0x0042($sp)            
    lwc1    $f2, 0x0068(s0)            ## 00000068
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lui     $at, 0x3F40                ## $at = 3F400000
    mtc1    $at, $f6                   ## $f6 = 0.75
    c.le.s  $f8, $f2                   
    lui     $at, 0xBFC0                ## $at = BFC00000
    mul.s   $f12, $f2, $f6             
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    bc1fl   lbl_80874580               
    mtc1    $at, $f0                   ## $f0 = -1.50
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f0                   ## $f0 = 1.50
    nop
    c.lt.s  $f0, $f12                  
    nop
    bc1f    lbl_80874598               
    nop
    beq     $zero, $zero, lbl_80874598 
    mov.s   $f12, $f0                  
    mtc1    $at, $f0                   ## $f0 = 1.50
lbl_80874580:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1f    lbl_80874598               
    nop
    mov.s   $f12, $f0                  
lbl_80874598:
    jal     func_8008C9C0              
    swc1    $f12, 0x0158(s0)           ## 00000158
    lwc1    $f10, 0x0154(s0)           ## 00000154
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    nop
    slti    $at, t1, 0x0015            
    beql    $at, $zero, lbl_80874620   
    lh      t7, 0x0306(s0)             ## 00000306
    lh      t2, 0x0306(s0)             ## 00000306
    or      a0, s0, $zero              ## a0 = 00000000
    bnel    t2, $zero, lbl_80874678    
    lw      a1, 0x0044($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3800          ## a1 = 00003800
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f18                  ## $f18 = 2.00
    addiu   t3, $zero, 0x0003          ## t3 = 00000003
    addiu   t4, $zero, 0x00C8          ## t4 = 000000C8
    addiu   t5, $zero, 0x000F          ## t5 = 0000000F
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0010($sp)            
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x030C             ## a2 = 0000030C
    lui     a3, 0x4120                 ## a3 = 41200000
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f18, 0x0014($sp)          
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    beq     $zero, $zero, lbl_80874674 
    sh      t6, 0x0306(s0)             ## 00000306
    lh      t7, 0x0306(s0)             ## 00000306
lbl_80874620:
    or      a0, s0, $zero              ## a0 = 00000000
    beql    t7, $zero, lbl_80874678    
    lw      a1, 0x0044($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3800          ## a1 = 00003800
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f4                   ## $f4 = 2.00
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    addiu   t9, $zero, 0x00C8          ## t9 = 000000C8
    addiu   t0, $zero, 0x000F          ## t0 = 0000000F
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0318             ## a2 = 00000318
    lui     a3, 0x4120                 ## a3 = 41200000
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f4, 0x0014($sp)           
    sh      $zero, 0x0306(s0)          ## 00000306
lbl_80874674:
    lw      a1, 0x0044($sp)            
lbl_80874678:
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    sw      a0, 0x003C($sp)            
    jal     func_80063EB8              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $at, $f6                   ## $f6 = 400.00
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    c.lt.s  $f0, $f6                   
    addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
    bc1fl   lbl_80874710               
    lw      t4, 0x0004(s0)             ## 00000004
    lh      a1, 0x008A(s0)             ## 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f10                  ## $f10 = 100.00
    lwc1    $f8, 0x0090(s0)            ## 00000090
    lw      t1, 0x0004(s0)             ## 00000004
    c.lt.s  $f8, $f10                  
    ori     t2, t1, 0x0001             ## t2 = 00000001
    sw      t2, 0x0004(s0)             ## 00000004
    lh      t3, 0x0042($sp)            
    bc1f    lbl_808747EC               
    slti    $at, t3, 0x1388            
    beq     $at, $zero, lbl_808747EC   
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f18                  ## $f18 = 60.00
    lwc1    $f16, 0x0094(s0)           ## 00000094
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_808747F0               
    lh      t0, 0x0032(s0)             ## 00000032
    jal     func_80873B70              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808747F0 
    lh      t0, 0x0032(s0)             ## 00000032
    lw      t4, 0x0004(s0)             ## 00000004
lbl_80874710:
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    and     t5, t4, $at                
    sw      t5, 0x0004(s0)             ## 00000004
    sw      a0, 0x0038($sp)            
    jal     func_80063EB8              
    lw      a1, 0x003C($sp)            
    lui     $at, 0x4316                ## $at = 43160000
    mtc1    $at, $f4                   ## $f4 = 150.00
    lw      a0, 0x0038($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1t    lbl_80874754               
    nop
    lh      v1, 0x02FE(s0)             ## 000002FE
    beq     v1, $zero, lbl_8087477C    
    nop
lbl_80874754:
    jal     func_80063F00              
    lw      a1, 0x003C($sp)            
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      v1, 0x02FE(s0)             ## 000002FE
lbl_8087477C:
    beq     v1, $zero, lbl_80874788    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x02FE(s0)             ## 000002FE
lbl_80874788:
    lh      t7, 0x02FC(s0)             ## 000002FC
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x02FC(s0)             ## 000002FC
    lh      t9, 0x02FC(s0)             ## 000002FC
    bnel    t9, $zero, lbl_808747F0    
    lh      t0, 0x0032(s0)             ## 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80875C50)     ## $at = 80870000
    lwc1    $f6, %lo(var_80875C50)($at) 
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_808747E4               
    nop
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    sh      v0, 0x02FC(s0)             ## 000002FC
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0028          ## a1 = 00000028
    beq     $zero, $zero, lbl_808747EC 
    sh      v0, 0x02FE(s0)             ## 000002FE
lbl_808747E4:
    jal     func_80873A64              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808747EC:
    lh      t0, 0x0032(s0)             ## 00000032
lbl_808747F0:
    sh      t0, 0x00B6(s0)             ## 000000B6
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80874804:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1A44             ## a1 = 06001A44
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3803          ## a1 = 00003803
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, %hi(func_80874864)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80874864) ## a1 = 80874864
    sw      $zero, 0x02F4(a0)          ## 000002F4
    sh      $zero, 0x02FC(a0)          ## 000002FC
    jal     func_808732E0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874864:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0064($sp)            
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    sw      a0, 0x0038($sp)            
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_8008C9C0              
    sh      v1, 0x005E($sp)            
    beq     v0, $zero, lbl_808749C4    
    lh      v1, 0x005E($sp)            
    lh      t8, 0x02FC(s0)             ## 000002FC
    or      a0, s0, $zero              ## a0 = 00000000
    bnel    t8, $zero, lbl_808748D4    
    sb      $zero, 0x062D(s0)          ## 0000062D
    bltz    v1, lbl_808748C4           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808748C4 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_808748C4:
    slti    $at, v0, 0x4000            
    beq     $at, $zero, lbl_80874904   
    ori     t1, $zero, 0xFFFF          ## t1 = 0000FFFF
    sb      $zero, 0x062D(s0)          ## 0000062D
lbl_808748D4:
    sb      $zero, 0x05ED(s0)          ## 000005ED
    sb      $zero, 0x0588(s0)          ## 00000588
    sw      $zero, 0x0618(s0)          ## 00000618
    sw      $zero, 0x05D8(s0)          ## 000005D8
    sb      $zero, 0x061D(s0)          ## 0000061D
    jal     func_80873B70              
    sb      $zero, 0x05DD(s0)          ## 000005DD
    addiu   a0, $zero, 0x0005          ## a0 = 00000005
    jal     func_80063BF0              
    addiu   a1, $zero, 0x000A          ## a1 = 0000000A
    beq     $zero, $zero, lbl_80874B14 
    sh      v0, 0x02FC(s0)             ## 000002FC
lbl_80874904:
    lh      t9, 0x008A(s0)             ## 0000008A
    lh      t0, 0x00B6(s0)             ## 000000B6
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    addiu   a1, $zero, 0x3859          ## a1 = 00003859
    subu    a0, t9, t0                 
    sll     v1, a0, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80874930           
    sll     t4, a0, 16                 
    beq     $zero, $zero, lbl_80874934 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80874930:
    subu    v0, $zero, v1              
lbl_80874934:
    subu    t2, t1, v0                 
    div     $zero, t2, $at             
    mflo    t3                         
    sra     t5, t4, 16                 
    bltz    t5, lbl_80874964           
    sh      t3, 0x0300(s0)             ## 00000300
    lh      t6, 0x0300(s0)             ## 00000300
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x42C4             ## a3 = 060042C4
    subu    t7, $zero, t6              
    beq     $zero, $zero, lbl_8087496C 
    sh      t7, 0x0300(s0)             ## 00000300
lbl_80874964:
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x3B14             ## a3 = 06003B14
lbl_8087496C:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    sw      a3, 0x0058($sp)            
    lw      a1, 0x0058($sp)            
    lw      a0, 0x0038($sp)            
    jal     func_8008D278              
    lui     a2, 0x4000                 ## a2 = 40000000
    lui     v1, 0xFFCF                 ## v1 = FFCF0000
    addiu   v0, $zero, 0x0011          ## v0 = 00000011
    ori     v1, v1, 0xFFFF             ## v1 = FFCFFFFF
    addiu   t1, $zero, 0x0008          ## t1 = 00000008
    addiu   t8, $zero, 0x0012          ## t8 = 00000012
    sh      t8, 0x02FC(s0)             ## 000002FC
    sb      v0, 0x062D(s0)             ## 0000062D
    sb      v0, 0x05ED(s0)             ## 000005ED
    sb      v0, 0x0588(s0)             ## 00000588
    sw      v1, 0x0618(s0)             ## 00000618
    sw      v1, 0x05D8(s0)             ## 000005D8
    sb      t1, 0x061D(s0)             ## 0000061D
    sb      t1, 0x05DD(s0)             ## 000005DD
    beq     $zero, $zero, lbl_80874B18 
    lw      $ra, 0x0034($sp)           
lbl_808749C4:
    lh      v0, 0x02FC(s0)             ## 000002FC
    slti    $at, v0, 0x0002            
    bnel    $at, $zero, lbl_80874B18   
    lw      $ra, 0x0034($sp)           
    lh      t7, 0x0608(s0)             ## 00000608
    lh      t3, 0x0032(s0)             ## 00000032
    lh      t4, 0x0300(s0)             ## 00000300
    mtc1    t7, $f4                    ## $f4 = 0.00
    addiu   t2, v0, 0xFFFF             ## t2 = 00000010
    addu    t5, t3, t4                 
    cvt.s.w $f6, $f4                   
    sh      t5, 0x0032(s0)             ## 00000032
    lh      t6, 0x0032(s0)             ## 00000032
    sh      t2, 0x02FC(s0)             ## 000002FC
    lui     $at, 0x4000                ## $at = 40000000
    sh      t6, 0x00B6(s0)             ## 000000B6
    swc1    $f6, 0x004C($sp)           
    lh      t8, 0x060A(s0)             ## 0000060A
    mtc1    $at, $f4                   ## $f4 = 2.00
    addiu   t2, $zero, 0x000F          ## t2 = 0000000F
    mtc1    t8, $f8                    ## $f8 = 0.00
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   t1, $zero, 0x0064          ## t1 = 00000064
    cvt.s.w $f10, $f8                  
    lw      a0, 0x0064($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, $sp, 0x004C            ## a2 = FFFFFFEC
    lui     a3, 0x40A0                 ## a3 = 40A00000
    swc1    $f10, 0x0050($sp)          
    lh      t9, 0x060C(s0)             ## 0000060C
    sw      $zero, 0x0020($sp)         
    sw      t2, 0x001C($sp)            
    mtc1    t9, $f16                   ## $f16 = 0.00
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0010($sp)            
    cvt.s.w $f18, $f16                 
    swc1    $f4, 0x0014($sp)           
    jal     func_800260E8              
    swc1    $f18, 0x0054($sp)          
    lh      t3, 0x0648(s0)             ## 00000648
    lui     $at, 0x4000                ## $at = 40000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    mtc1    t3, $f6                    ## $f6 = 0.00
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    addiu   t8, $zero, 0x000F          ## t8 = 0000000F
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f6                   ## $f6 = 2.00
    lw      a0, 0x0064($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, $sp, 0x004C            ## a2 = FFFFFFEC
    lui     a3, 0x40A0                 ## a3 = 40A00000
    swc1    $f8, 0x004C($sp)           
    lh      t4, 0x064A(s0)             ## 0000064A
    mtc1    t4, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0050($sp)          
    lh      t5, 0x064C(s0)             ## 0000064C
    sw      $zero, 0x0020($sp)         
    sw      t8, 0x001C($sp)            
    mtc1    t5, $f18                   ## $f18 = 0.00
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    cvt.s.w $f4, $f18                  
    swc1    $f6, 0x0014($sp)           
    jal     func_800260E8              
    swc1    $f4, 0x0054($sp)           
    lbu     t9, 0x0588(s0)             ## 00000588
    lw      t1, 0x0064($sp)            
    andi    t0, t9, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_80874B00    
    lw      a0, 0x0064($sp)            
    lw      a0, 0x1C44(t1)             ## 00001C44
    lw      t2, 0x057C(s0)             ## 0000057C
    bnel    a0, t2, lbl_80874B00       
    lw      a0, 0x0064($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x083E          ## a1 = 0000083E
    lw      a0, 0x0064($sp)            
lbl_80874B00:
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addiu   a2, s0, 0x0578             ## a2 = 00000578
    jal     func_8004BD50              ## CollisionCheck_setAT
    addu    a1, a0, $at                
lbl_80874B14:
    lw      $ra, 0x0034($sp)           
lbl_80874B18:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874B28:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x13C4             ## a1 = 060013C4
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC100                 ## a2 = C1000000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   a1, $zero, 0x3804          ## a1 = 00003804
    jal     func_80022FD0              
    sh      $zero, 0x02FC(a0)          ## 000002FC
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lw      t7, 0x0004(a0)             ## 00000004
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    lui     a1, %hi(func_80874BA0)     ## a1 = 80870000
    and     t8, t7, $at                
    addiu   a1, a1, %lo(func_80874BA0) ## a1 = 80874BA0
    sw      t6, 0x02F4(a0)             ## 000002F4
    sw      t8, 0x0004(a0)             ## 00000004
    jal     func_808732E0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874BA0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, 0x420C                ## $at = 420C0000
    mtc1    $at, $f6                   ## $f6 = 35.00
    lwc1    $f4, 0x0154(s0)            ## 00000154
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80874BF4               
    lbu     t7, 0x0114(s0)             ## 00000114
    lh      t6, 0x001C(s0)             ## 0000001C
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t6, $zero, lbl_80874C14    
    nop
    jal     func_808732EC              
    lw      a1, 0x003C($sp)            
    beq     $zero, $zero, lbl_80874C14 
    nop
    lbu     t7, 0x0114(s0)             ## 00000114
lbl_80874BF4:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    bne     t7, $zero, lbl_80874C14    
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    sw      t8, 0x0010($sp)            
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
lbl_80874C14:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80874C80    
    lwc1    $f16, 0x0154(s0)           ## 00000154
    lh      t9, 0x02FC(s0)             ## 000002FC
    lw      a1, 0x003C($sp)            
    addiu   a2, $zero, 0x0010          ## a2 = 00000010
    bne     t9, $zero, lbl_80874CA4    
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lw      a3, 0x0024(s0)             ## 00000024
    addiu   t1, $zero, 0x0006          ## t1 = 00000006
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sw      $zero, 0x0024($sp)         
    sw      t1, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              ## ActorSpawn
    swc1    $f10, 0x0014($sp)          
    beq     v0, $zero, lbl_80874CA4    
    addiu   t2, $zero, 0x0008          ## t2 = 00000008
    sh      $zero, 0x01E8(v0)          ## 000001E8
    sh      t2, 0x02FC(s0)             ## 000002FC
    beq     $zero, $zero, lbl_80874CA8 
    lh      v0, 0x02FC(s0)             ## 000002FC
    lwc1    $f16, 0x0154(s0)           ## 00000154
lbl_80874C80:
    addiu   $at, $zero, 0x0034         ## $at = 00000034
    or      a0, s0, $zero              ## a0 = 00000000
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    nop
    bnel    t4, $at, lbl_80874CA8      
    lh      v0, 0x02FC(s0)             ## 000002FC
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          ## a1 = 0000387A
lbl_80874CA4:
    lh      v0, 0x02FC(s0)             ## 000002FC
lbl_80874CA8:
    beq     v0, $zero, lbl_80874CD8    
    addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
    sh      t5, 0x02FC(s0)             ## 000002FC
    lh      t6, 0x02FC(s0)             ## 000002FC
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    bne     t6, $zero, lbl_80874CD8    
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x0040          ## a3 = 00000040
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80874CD8:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874CEC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lbu     t6, 0x0114(a2)             ## 00000114
    bnel    t6, $zero, lbl_80874D44    
    lw      $ra, 0x0014($sp)           
    lbu     t7, 0x00AF(a2)             ## 000000AF
    or      a0, a2, $zero              ## a0 = 00000000
    bne     t7, $zero, lbl_80874D38    
    nop
    jal     func_80874B28              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80874D44 
    lw      $ra, 0x0014($sp)           
lbl_80874D38:
    jal     func_80873A64              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80874D44:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874D50:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0455(s0)             ## 00000455
    andi    t6, v0, 0x0080             ## t6 = 00000000
    beql    t6, $zero, lbl_80874D90    
    lbu     v0, 0x0589(s0)             ## 00000589
    lbu     t8, 0x0589(s0)             ## 00000589
    andi    t7, v0, 0xFF7F             ## t7 = 00000000
    sb      t7, 0x0455(s0)             ## 00000455
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    beq     $zero, $zero, lbl_80874E64 
    sb      t9, 0x0589(s0)             ## 00000589
    lbu     v0, 0x0589(s0)             ## 00000589
lbl_80874D90:
    andi    t0, v0, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_80874E68    
    lw      $ra, 0x0024($sp)           
    lw      t1, 0x02F4(s0)             ## 000002F4
    andi    t2, v0, 0xFFFD             ## t2 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t1, 0x0003            
    bne     $at, $zero, lbl_80874E64   
    addiu   a1, s0, 0x0578             ## a1 = 00000578
    sb      t2, 0x0589(s0)             ## 00000589
    jal     func_800284A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    lbu     v1, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x000E         ## $at = 0000000E
    beq     v1, $at, lbl_80874E64      
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v1, $at, lbl_80874DE4      
    sb      v1, 0x03BC(s0)             ## 000003BC
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     v1, $at, lbl_80874E24      
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80874DE4:
    lw      t3, 0x02F4(s0)             ## 000002F4
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t3, $at, lbl_80874E64      
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   t4, $zero, 0x0050          ## t4 = 00000050
    sw      t4, 0x0010($sp)            
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80873C94              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80874E68 
    lw      $ra, 0x0024($sp)           
lbl_80874E24:
    addiu   t5, $zero, 0x0008          ## t5 = 00000008
    sw      t5, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80874E5C    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80874B28              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80874E68 
    lw      $ra, 0x0024($sp)           
lbl_80874E5C:
    jal     func_80874804              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80874E64:
    lw      $ra, 0x0024($sp)           
lbl_80874E68:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874E78:
    addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x00A4($sp)            
    lui     t7, %hi(var_80875B1C)      ## t7 = 80870000
    addiu   t7, t7, %lo(var_80875B1C)  ## t7 = 80875B1C
    lw      t9, 0x0000(t7)             ## 80875B1C
    addiu   t6, $sp, 0x0094            ## t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             ## 80875B20
    sw      t9, 0x0000(t6)             ## FFFFFFF4
    lw      t9, 0x0008(t7)             ## 80875B24
    lui     t1, %hi(var_80875B28)      ## t1 = 80870000
    addiu   t1, t1, %lo(var_80875B28)  ## t1 = 80875B28
    sw      t8, 0x0004(t6)             ## FFFFFFF8
    sw      t9, 0x0008(t6)             ## FFFFFFFC
    lw      t3, 0x0000(t1)             ## 80875B28
    addiu   t0, $sp, 0x0088            ## t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             ## 80875B2C
    sw      t3, 0x0000(t0)             ## FFFFFFE8
    lw      t3, 0x0008(t1)             ## 80875B30
    lui     t5, %hi(var_80875B34)      ## t5 = 80870000
    addiu   t5, t5, %lo(var_80875B34)  ## t5 = 80875B34
    sw      t2, 0x0004(t0)             ## FFFFFFEC
    sw      t3, 0x0008(t0)             ## FFFFFFF0
    lw      t7, 0x0000(t5)             ## 80875B34
    addiu   t4, $sp, 0x007C            ## t4 = FFFFFFDC
    lw      t6, 0x0004(t5)             ## 80875B38
    sw      t7, 0x0000(t4)             ## FFFFFFDC
    lw      t7, 0x0008(t5)             ## 80875B3C
    lui     t9, %hi(var_80875B40)      ## t9 = 80870000
    addiu   t9, t9, %lo(var_80875B40)  ## t9 = 80875B40
    sw      t6, 0x0004(t4)             ## FFFFFFE0
    sw      t7, 0x0008(t4)             ## FFFFFFE4
    lw      t1, 0x0000(t9)             ## 80875B40
    addiu   t8, $sp, 0x0070            ## t8 = FFFFFFD0
    lw      t0, 0x0004(t9)             ## 80875B44
    sw      t1, 0x0000(t8)             ## FFFFFFD0
    lw      t1, 0x0008(t9)             ## 80875B48
    lui     $at, 0x41E0                ## $at = 41E00000
    sw      t0, 0x0004(t8)             ## FFFFFFD4
    sw      t1, 0x0008(t8)             ## FFFFFFD8
    lwc1    $f4, 0x0154(s0)            ## 00000154
    mtc1    $at, $f6                   ## $f6 = 28.00
    lui     $at, %hi(var_80875C54)     ## $at = 80870000
    lwc1    $f10, %lo(var_80875C54)($at) 
    sub.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800A45FC              
    nop
    lui     $at, %hi(var_80875C58)     ## $at = 80870000
    lwc1    $f16, %lo(var_80875C58)($at) 
    lwc1    $f18, 0x007C($sp)          
    lwc1    $f6, 0x0094($sp)           
    mul.s   $f2, $f0, $f16             
    lwc1    $f10, 0x0088($sp)          
    addiu   a1, s0, 0x0410             ## a1 = 00000410
    sw      a1, 0x0030($sp)            
    addiu   a0, $sp, 0x0094            ## a0 = FFFFFFF4
    sub.s   $f4, $f18, $f2             
    sub.s   $f8, $f6, $f2              
    swc1    $f4, 0x007C($sp)           
    sub.s   $f16, $f10, $f2            
    swc1    $f8, 0x0094($sp)           
    jal     func_800AB958              
    swc1    $f16, 0x0088($sp)          
    addiu   a1, s0, 0x0404             ## a1 = 00000404
    sw      a1, 0x0034($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0088            ## a0 = FFFFFFE8
    addiu   a1, s0, 0x0428             ## a1 = 00000428
    sw      a1, 0x0028($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x007C            ## a0 = FFFFFFDC
    addiu   a3, s0, 0x041C             ## a3 = 0000041C
    or      a1, a3, $zero              ## a1 = 0000041C
    sw      a3, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0070            ## a0 = FFFFFFD0
    lw      t2, 0x0028($sp)            
    lw      a3, 0x002C($sp)            
    addiu   a0, s0, 0x03C4             ## a0 = 000003C4
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0030($sp)            
    jal     func_80050B64              
    sw      t2, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
    jr      $ra                        
    nop


func_80874FE4:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80874D50              
    or      a1, s1, $zero              ## a1 = 00000000
    lbu     t6, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x000E         ## $at = 0000000E
    beql    t6, $at, lbl_8087507C      
    lui     $at, 0x0001                ## $at = 00010000
    lw      t9, 0x02F8(s0)             ## 000002F8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f4                   ## $f4 = 70.00
    addiu   t7, $zero, 0x001D          ## t7 = 0000001D
    sw      t7, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x4296                 ## a2 = 42960000
    lui     a3, 0x4270                 ## a3 = 42700000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lhu     t8, 0x0088(s0)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t0, t8, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_8087507C    
    lui     $at, 0x0001                ## $at = 00010000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          ## a1 = 0000387A
    lui     $at, 0x0001                ## $at = 00010000
lbl_8087507C:
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0578             ## a2 = 00000578
    sw      a2, 0x002C($sp)            
    sw      a1, 0x0034($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      v1, 0x02F4(s0)             ## 000002F4
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v1, $at, lbl_808750B8      
    lw      a1, 0x0034($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s0, 0x0444             ## a2 = 00000444
    lw      v1, 0x02F4(s0)             ## 000002F4
lbl_808750B8:
    slti    $at, v1, 0x0003            
    bne     $at, $zero, lbl_808750D4   
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x002C($sp)            
    lw      v1, 0x02F4(s0)             ## 000002F4
lbl_808750D4:
    slti    $at, v1, 0x0004            
    bne     $at, $zero, lbl_808750F8   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80875790              
    or      a1, s1, $zero              ## a1 = 00000000
    beql    v0, $zero, lbl_808750FC    
    lw      t1, 0x02F4(s0)             ## 000002F4
    jal     func_80873C14              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808750F8:
    lw      t1, 0x02F4(s0)             ## 000002F4
lbl_808750FC:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     t1, $at, lbl_80875148      
    lui     $at, 0x41E8                ## $at = 41E80000
    mtc1    $at, $f6                   ## $f6 = 29.00
    lwc1    $f0, 0x0154(s0)            ## 00000154
    lui     $at, 0x422C                ## $at = 422C0000
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80875148               
    nop
    mtc1    $at, $f8                   ## $f8 = 43.00
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80875148               
    nop
    jal     func_8004BD50              ## CollisionCheck_setAT
    addiu   a2, s0, 0x03C4             ## a2 = 000003C4
lbl_80875148:
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0xC1F0                ## $at = C1F00000
    mtc1    $at, $f10                  ## $f10 = -30.00
    lui     $at, 0x41A0                ## $at = 41A00000
    lwc1    $f18, 0x0024(s0)           ## 00000024
    mul.s   $f16, $f0, $f10            
    mtc1    $at, $f8                   ## $f8 = 20.00
    lwc1    $f6, 0x0028(s0)            ## 00000028
    lh      a0, 0x00B6(s0)             ## 000000B6
    add.s   $f10, $f6, $f8             
    add.s   $f4, $f16, $f18            
    swc1    $f10, 0x003C(s0)           ## 0000003C
    jal     func_80063684              ## coss?
    swc1    $f4, 0x0038(s0)            ## 00000038
    lui     $at, 0xC1F0                ## $at = C1F00000
    mtc1    $at, $f16                  ## $f16 = -30.00
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0040(s0)            ## 00000040
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808751B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    beq     a1, $at, lbl_808751DC      
    lw      v0, 0x002C($sp)            
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    bnel    a1, $at, lbl_808751F4      
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_808751DC:
    lwc1    $f12, 0x033C(v0)           ## 0000033C
    lwc1    $f14, 0x0340(v0)           ## 00000340
    lw      a2, 0x0344(v0)             ## 00000344
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_808751F4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80875204:
    addiu   $sp, $sp, 0xFE78           ## $sp = FFFFFE78
    sw      s6, 0x0038($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    addiu   s1, $sp, 0x017C            ## s1 = FFFFFFF4
    or      s2, a0, $zero              ## s2 = 00000000
    lw      s6, 0x0198($sp)            
    sw      $ra, 0x003C($sp)           
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      a2, 0x0190($sp)            
    sw      a3, 0x0194($sp)            
    lui     t6, %hi(var_80875B4C)      ## t6 = 80870000
    addiu   t6, t6, %lo(var_80875B4C)  ## t6 = 80875B4C
    lw      t8, 0x0000(t6)             ## 80875B4C
    lui     t0, %hi(var_80875B58)      ## t0 = 80870000
    addiu   t0, t0, %lo(var_80875B58)  ## t0 = 80875B58
    sw      t8, 0x0000(s1)             ## FFFFFFF4
    lw      t7, 0x0004(t6)             ## 80875B50
    addiu   t9, $sp, 0x0170            ## t9 = FFFFFFE8
    lui     t4, %hi(var_80875B64)      ## t4 = 80870000
    sw      t7, 0x0004(s1)             ## FFFFFFF8
    lw      t8, 0x0008(t6)             ## 80875B54
    addiu   t4, t4, %lo(var_80875B64)  ## t4 = 80875B64
    addiu   t7, t4, 0x0024             ## t7 = 80875B88
    sw      t8, 0x0008(s1)             ## FFFFFFFC
    lw      t2, 0x0000(t0)             ## 80875B58
    lw      t1, 0x0004(t0)             ## 80875B5C
    addiu   t3, $sp, 0x00C0            ## t3 = FFFFFF38
    sw      t2, 0x0000(t9)             ## FFFFFFE8
    lw      t2, 0x0008(t0)             ## 80875B60
    addiu   t8, $sp, 0x009C            ## t8 = FFFFFF14
    sw      t1, 0x0004(t9)             ## FFFFFFEC
    sw      t2, 0x0008(t9)             ## FFFFFFF0
lbl_80875298:
    lw      t6, 0x0000(t4)             ## 80875B64
    addiu   t4, t4, 0x000C             ## t4 = 80875B70
    addiu   t3, t3, 0x000C             ## t3 = FFFFFF44
    sw      t6, -0x000C(t3)            ## FFFFFF38
    lw      t5, -0x0008(t4)            ## 80875B68
    sw      t5, -0x0008(t3)            ## FFFFFF3C
    lw      t6, -0x0004(t4)            ## 80875B6C
    bne     t4, t7, lbl_80875298       
    sw      t6, -0x0004(t3)            ## FFFFFF40
    lui     t9, %hi(var_80875B88)      ## t9 = 80870000
    addiu   t9, t9, %lo(var_80875B88)  ## t9 = 80875B88
    addiu   t2, t9, 0x0024             ## t2 = 80875BAC
lbl_808752C8:
    lw      t1, 0x0000(t9)             ## 80875B88
    addiu   t9, t9, 0x000C             ## t9 = 80875B94
    addiu   t8, t8, 0x000C             ## t8 = FFFFFF20
    sw      t1, -0x000C(t8)            ## FFFFFF14
    lw      t0, -0x0008(t9)            ## 80875B8C
    sw      t0, -0x0008(t8)            ## FFFFFF18
    lw      t1, -0x0004(t9)            ## 80875B90
    bne     t9, t2, lbl_808752C8       
    sw      t1, -0x0004(t8)            ## FFFFFF1C
    lui     t4, %hi(var_80875BAC)      ## t4 = 80870000
    addiu   t4, t4, %lo(var_80875BAC)  ## t4 = 80875BAC
    addiu   t6, t4, 0x0024             ## t6 = 80875BD0
    addiu   t7, $sp, 0x0078            ## t7 = FFFFFEF0
lbl_808752FC:
    lw      t5, 0x0000(t4)             ## 80875BAC
    addiu   t4, t4, 0x000C             ## t4 = 80875BB8
    addiu   t7, t7, 0x000C             ## t7 = FFFFFEFC
    sw      t5, -0x000C(t7)            ## FFFFFEF0
    lw      t3, -0x0008(t4)            ## 80875BB0
    sw      t3, -0x0008(t7)            ## FFFFFEF4
    lw      t5, -0x0004(t4)            ## 80875BB4
    bne     t4, t6, lbl_808752FC       
    sw      t5, -0x0004(t7)            ## FFFFFEF8
    lui     t9, %hi(var_80875BD0)      ## t9 = 80870000
    addiu   t9, t9, %lo(var_80875BD0)  ## t9 = 80875BD0
    lw      t0, 0x0000(t9)             ## 80875BD0
    addiu   t2, $sp, 0x006C            ## t2 = FFFFFEE4
    lw      t8, 0x0004(t9)             ## 80875BD4
    sw      t0, 0x0000(t2)             ## FFFFFEE4
    lw      t0, 0x0008(t9)             ## 80875BD8
    lui     t6, %hi(var_80875BDC)      ## t6 = 80870000
    addiu   t6, t6, %lo(var_80875BDC)  ## t6 = 80875BDC
    sw      t8, 0x0004(t2)             ## FFFFFEE8
    sw      t0, 0x0008(t2)             ## FFFFFEEC
    lw      t7, 0x0000(t6)             ## 80875BDC
    addiu   t1, $sp, 0x0060            ## t1 = FFFFFED8
    lw      t4, 0x0004(t6)             ## 80875BE0
    sw      t7, 0x0000(t1)             ## FFFFFED8
    lw      t7, 0x0008(t6)             ## 80875BE4
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s6, 0x0578             ## a1 = 00000578
    sw      t4, 0x0004(t1)             ## FFFFFEDC
    jal     func_80050CE4              
    sw      t7, 0x0008(t1)             ## FFFFFEE0
    addiu   t5, s0, 0xFFFE             ## t5 = FFFFFFFE
    sltiu   $at, t5, 0x001B            
    beq     $at, $zero, lbl_80875574   
    sw      s0, 0x0058($sp)            
    sll     t5, t5,  2                 
    lui     $at, %hi(var_80875C5C)     ## $at = 80870000
    addu    $at, $at, t5               
    lw      t5, %lo(var_80875C5C)($at) 
    jr      t5                         
    nop
var_8087539C:
    lw      t2, 0x02F4(s6)             ## 000002F4
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     t2, $at, lbl_80875574      
    lui     $at, 0x41E8                ## $at = 41E80000
    mtc1    $at, $f4                   ## $f4 = 29.00
    lwc1    $f0, 0x0154(s6)            ## 00000154
    lui     $at, 0x422C                ## $at = 422C0000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80875578               
    lh      t7, 0x0302(s6)             ## 00000302
    mtc1    $at, $f6                   ## $f6 = 43.00
    or      a0, s6, $zero              ## a0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80875578               
    lh      t7, 0x0302(s6)             ## 00000302
    jal     func_80874E78              
    or      a1, s2, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80875578 
    lh      t7, 0x0302(s6)             ## 00000302
var_808753F0:
    addiu   s1, $sp, 0x00C0            ## s1 = FFFFFF38
    addiu   s2, $sp, 0x0148            ## s2 = FFFFFFC0
    addiu   s3, $sp, 0x009C            ## s3 = FFFFFF14
    addiu   s4, $sp, 0x0124            ## s4 = FFFFFF9C
    addiu   s5, $sp, 0x0078            ## s5 = FFFFFEF0
    addiu   s0, $sp, 0x0100            ## s0 = FFFFFF78
lbl_80875408:
    or      a0, s1, $zero              ## a0 = FFFFFF38
    jal     func_800AB958              
    or      a1, s2, $zero              ## a1 = FFFFFFC0
    or      a0, s3, $zero              ## a0 = FFFFFF14
    jal     func_800AB958              
    or      a1, s4, $zero              ## a1 = FFFFFF9C
    or      a0, s5, $zero              ## a0 = FFFFFEF0
    jal     func_800AB958              
    or      a1, s0, $zero              ## a1 = FFFFFF78
    addiu   s0, s0, 0x000C             ## s0 = FFFFFF84
    addiu   t9, $sp, 0x0124            ## t9 = FFFFFF9C
    addiu   s1, s1, 0x000C             ## s1 = FFFFFF44
    addiu   s2, s2, 0x000C             ## s2 = FFFFFFCC
    addiu   s3, s3, 0x000C             ## s3 = FFFFFF20
    addiu   s4, s4, 0x000C             ## s4 = FFFFFFA8
    bne     s0, t9, lbl_80875408       
    addiu   s5, s5, 0x000C             ## s5 = FFFFFEFC
    addiu   s0, s6, 0x0444             ## s0 = 00000444
    addiu   t8, $sp, 0x0160            ## t8 = FFFFFFD8
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000444
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $sp, 0x0148            ## a2 = FFFFFFC0
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0154            ## a3 = FFFFFFCC
    addiu   t0, $sp, 0x013C            ## t0 = FFFFFFB4
    sw      t0, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000444
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addiu   a2, $sp, 0x0124            ## a2 = FFFFFF9C
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0130            ## a3 = FFFFFFA8
    addiu   t1, $sp, 0x0118            ## t1 = FFFFFF90
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000444
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    addiu   a2, $sp, 0x0100            ## a2 = FFFFFF78
    jal     func_80050BD4              
    addiu   a3, $sp, 0x010C            ## a3 = FFFFFF84
    addiu   a0, $sp, 0x006C            ## a0 = FFFFFEE4
    jal     func_800AB958              
    addiu   a1, s6, 0x0324             ## a1 = 00000324
    addiu   a0, $sp, 0x0060            ## a0 = FFFFFED8
    jal     func_800AB958              
    addiu   a1, s6, 0x0330             ## a1 = 00000330
    beq     $zero, $zero, lbl_80875578 
    lh      t7, 0x0302(s6)             ## 00000302
var_808754C4:
    lw      v0, 0x02F4(s6)             ## 000002F4
    bne     v0, $zero, lbl_80875520    
    nop
    lh      t6, 0x02FC(s6)             ## 000002FC
    addiu   s0, $sp, 0x00F4            ## s0 = FFFFFF6C
    or      a0, s1, $zero              ## a0 = FFFFFF44
    slti    $at, t6, 0x0002            
    bne     $at, $zero, lbl_80875520   
    nop
    jal     func_800AB958              
    or      a1, s0, $zero              ## a1 = FFFFFF6C
    addiu   s1, $sp, 0x00E8            ## s1 = FFFFFF60
    or      a1, s1, $zero              ## a1 = FFFFFF60
    jal     func_800AB958              
    addiu   a0, $sp, 0x0170            ## a0 = FFFFFFE8
    jal     func_8001A890              
    lw      a0, 0x03C0(s6)             ## 000003C0
    or      a0, v0, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = FFFFFF6C
    jal     func_80013F30              
    or      a2, s1, $zero              ## a2 = FFFFFF60
    beq     $zero, $zero, lbl_80875578 
    lh      t7, 0x0302(s6)             ## 00000302
lbl_80875520:
    bnel    v0, $zero, lbl_80875578    
    lh      t7, 0x0302(s6)             ## 00000302
    lh      t4, 0x02FC(s6)             ## 000002FC
    beql    t4, $zero, lbl_80875578    
    lh      t7, 0x0302(s6)             ## 00000302
    jal     func_8001A890              
    lw      a0, 0x03C0(s6)             ## 000003C0
    jal     func_80014254              
    or      a0, v0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80875578 
    lh      t7, 0x0302(s6)             ## 00000302
var_8087554C:
    lui     a0, %hi(var_80875BF4)      ## a0 = 80870000
    addiu   a0, a0, %lo(var_80875BF4)  ## a0 = 80875BF4
    jal     func_800AB958              
    addiu   a1, s6, 0x030C             ## a1 = 0000030C
    beq     $zero, $zero, lbl_80875578 
    lh      t7, 0x0302(s6)             ## 00000302
var_80875564:
    lui     a0, %hi(var_80875BF4)      ## a0 = 80870000
    addiu   a0, a0, %lo(var_80875BF4)  ## a0 = 80875BF4
    jal     func_800AB958              
    addiu   a1, s6, 0x0318             ## a1 = 00000318
lbl_80875574:
    lh      t7, 0x0302(s6)             ## 00000302
lbl_80875578:
    lw      t3, 0x0058($sp)            
    beq     t7, $zero, lbl_80875618    
    addiu   t5, t3, 0xFFF9             ## t5 = FFFFFFF9
    sltiu   $at, t5, 0x0017            
    beq     $at, $zero, lbl_808755F8   
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
    sll     t5, t5,  2                 
    lui     $at, %hi(var_80875CC8)     ## $at = 80870000
    addu    $at, $at, t5               
    lw      t5, %lo(var_80875CC8)($at) 
    jr      t5                         
    nop
var_808755A8:
    lui     $at, 0x4496                ## $at = 44960000
    mtc1    $at, $f8                   ## $f8 = 1200.00
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     $zero, $zero, lbl_808755F8 
    swc1    $f8, 0x0170($sp)           
var_808755BC:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
var_808755C4:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
var_808755CC:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
var_808755D4:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0004          ## v0 = 00000004
var_808755DC:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0005          ## v0 = 00000005
var_808755E4:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0006          ## v0 = 00000006
var_808755EC:
    beq     $zero, $zero, lbl_808755F8 
    addiu   v0, $zero, 0x0007          ## v0 = 00000007
var_808755F4:
    addiu   v0, $zero, 0x0008          ## v0 = 00000008
lbl_808755F8:
    bltz    v0, lbl_80875618           
    addiu   a0, $sp, 0x0170            ## a0 = FFFFFFE8
    sll     t2, v0,  2                 
    subu    t2, t2, v0                 
    sll     t2, t2,  2                 
    addu    a1, s6, t2                 
    jal     func_800AB958              
    addiu   a1, a1, 0x0348             ## a1 = 00000348
lbl_80875618:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0188           ## $sp = 00000000


func_80875640:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lui     t7, %hi(func_80875204)     ## t7 = 80870000
    addiu   t7, t7, %lo(func_80875204) ## t7 = 80875204
    lw      a1, 0x0140(s0)             ## 00000140
    lw      a2, 0x015C(s0)             ## 0000015C
    lui     a3, %hi(func_808751B0)     ## a3 = 80870000
    addiu   a3, a3, %lo(func_808751B0) ## a3 = 808751B0
    sw      s0, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    jal     func_8008993C              
    lw      a0, 0x0044($sp)            
    lh      t8, 0x0302(s0)             ## 00000302
    beql    t8, $zero, lbl_80875720    
    lw      $ra, 0x003C($sp)           
    lh      t1, 0x0302(s0)             ## 00000302
    lbu     t9, 0x0114(s0)             ## 00000114
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
    sh      t2, 0x0302(s0)             ## 00000302
    lh      v1, 0x0302(s0)             ## 00000302
    addiu   t0, t9, 0x0001             ## t0 = 00000001
    sb      t0, 0x0114(s0)             ## 00000114
    andi    t3, v1, 0x0003             ## t3 = 00000000
    bne     t3, $zero, lbl_8087571C    
    sra     v0, v1,  2                 
    sll     t4, v0,  2                 
    subu    t4, t4, v0                 
    lui     $at, %hi(var_80875D24)     ## $at = 80870000
    lwc1    $f4, %lo(var_80875D24)($at) 
    sll     t4, t4,  2                 
    addu    a2, s0, t4                 
    addiu   t5, $zero, 0x0096          ## t5 = 00000096
    addiu   t6, $zero, 0x0096          ## t6 = 00000096
    addiu   t7, $zero, 0x00FA          ## t7 = 000000FA
    addiu   t8, $zero, 0x00EB          ## t8 = 000000EB
    addiu   t9, $zero, 0x00F5          ## t9 = 000000F5
    addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
    sw      t0, 0x0024($sp)            
    sw      t9, 0x0020($sp)            
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a2, a2, 0x0348             ## a2 = 00000348
    lw      a0, 0x0044($sp)            
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    jal     func_8001DC4C              
    swc1    $f4, 0x0028($sp)           
lbl_8087571C:
    lw      $ra, 0x003C($sp)           
lbl_80875720:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80875730:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    jal     func_800636C4              ## sins?
    lh      a0, 0x001A($sp)            
    lwc1    $f6, 0x001C($sp)           
    lw      v0, 0x0020($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f4, 0x0000(v0)            ## 00000000
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0000(v0)           ## 00000000
    jal     func_80063684              ## coss?
    lh      a0, 0x001A($sp)            
    lwc1    $f18, 0x001C($sp)          
    lw      v0, 0x0020($sp)            
    mul.s   $f6, $f0, $f18             
    lwc1    $f16, 0x0008(v0)           ## 00000008
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0008(v0)            ## 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80875790:
    lw      v1, 0x1C4C(a1)             ## 00001C4C
    lui     $at, 0x4120                ## $at = 41200000
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     v1, $zero, lbl_80875868    
    nop
    mtc1    $at, $f18                  ## $f18 = 10.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    nop
    lh      t6, 0x001C(v1)             ## 0000001C
lbl_808757B8:
    bne     t6, $zero, lbl_808757CC    
    nop
    lw      t7, 0x0118(v1)             ## 00000118
    beql    t7, $zero, lbl_808757D8    
    lwc1    $f4, 0x0024(v1)            ## 00000024
lbl_808757CC:
    beq     $zero, $zero, lbl_80875860 
    lw      v1, 0x0124(v1)             ## 00000124
    lwc1    $f4, 0x0024(v1)            ## 00000024
lbl_808757D8:
    lwc1    $f6, 0x0324(a0)            ## 00000324
    lwc1    $f8, 0x0028(v1)            ## 00000028
    lwc1    $f10, 0x0328(a0)           ## 00000328
    sub.s   $f2, $f4, $f6              
    lwc1    $f6, 0x032C(a0)            ## 0000032C
    lwc1    $f4, 0x002C(v1)            ## 0000002C
    sub.s   $f12, $f8, $f10            
    abs.s   $f0, $f2                   
    sub.s   $f14, $f4, $f6             
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80875860               
    lw      v1, 0x0124(v1)             ## 00000124
    abs.s   $f0, $f12                  
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80875860               
    lw      v1, 0x0124(v1)             ## 00000124
    abs.s   $f0, $f14                  
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80875860               
    lw      v1, 0x0124(v1)             ## 00000124
    lh      t8, 0x0000(v1)             ## 00000000
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bnel    t8, $at, lbl_80875854      
    sw      v1, 0x0118(a0)             ## 00000118
    beq     $zero, $zero, lbl_80875854 
    sw      v1, 0x011C(a0)             ## 0000011C
    sw      v1, 0x0118(a0)             ## 00000118
lbl_80875854:
    jr      $ra                        
    sw      a0, 0x0118(v1)             ## 00000118
lbl_8087585C:
    lw      v1, 0x0124(v1)             ## 00000124
lbl_80875860:
    bnel    v1, $zero, lbl_808757B8    
    lh      t6, 0x001C(v1)             ## 0000001C
lbl_80875868:
    jr      $ra                        
    nop

.section .data

var_80875870: .word 0x00120500, 0x00000015, 0x000C0000, 0x00000718
.word func_808737DC
.word func_80873A04
.word func_80874FE4
.word func_80875640
var_80875890: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010100, 0x0F000000, 0x00000000, \
0x00110064, 0x00000000, 0x00000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x00010100, 0x0E000000, \
0x00000000, 0x000F0064, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x0D000000, 0x00000000, 0x000A0064, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000100, 0x15000000, 0x00000000, 0x00140064, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x1C000000, 0x00000000, \
0x00140064, 0x00000000, 0x00000000, 0x00000000, \
0x0D800691, 0x00000000, 0x00010900, 0x06000000, \
0x00000000, 0x00230064
var_80875968: .word 0x00110939, 0x10000000, 0x00000006
.word var_80875890
var_80875978: .word \
0x02000000, 0x00000000, 0x00000000, 0xF24BF96E, \
0x00000000, 0x000D0000, 0xC1200000, 0x41600000, \
0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0x41600000, 0x40000000, 0x02000000, \
0x00000000, 0x00000000, 0xFFCBF96E, 0x00000000, \
0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0xC0C00000, 0x40000000, 0x41100000, \
0x41600000, 0x40000000, 0x02000000, 0x00000000, \
0x00000000, 0xFFCBF96E, 0x00000000, 0x000D0000, \
0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, \
0xC0C00000, 0x40000000, 0x41100000, 0x41600000, \
0x40000000
var_80875A2C: .word 0x09000D00, 0x00020000, 0x00000003
.word var_80875978
var_80875A3C: .word \
0x0A110000, 0x00030000, 0x00000000, 0x20000000, \
0x01100000, 0x00000000, 0x00000000, 0x81000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80875A8C: .word \
0x10020102, 0x10010210, 0x01020402, 0xF4020202, \
0x0260F360, 0x00000104, 0x02020804, 0x00000400
var_80875AAC: .word 0x00000000, 0x00000000, 0x00000000
var_80875AB8: .word 0x00000000, 0x3E99999A, 0x00000000
var_80875AC4: .word 0x8917000D, 0xB86CFC18, 0x304C0AF0
var_80875AD0: .word 0x00000000, 0x00000000, 0x00000000
var_80875ADC: .word 0x00000000, 0x00000000, 0x00000000
var_80875AE8: .word 0x00000000, 0x00000000, 0x00000000
var_80875AF4: .word 0x00000000, 0x3F19999A, 0x00000000
var_80875B00: .word 0xFFFFFFFF
var_80875B04: .word 0x00000000, 0x00000000, 0x00000000
var_80875B10: .word 0x00000000, 0x3F800000, 0x00000000
var_80875B1C: .word 0xC47A0000, 0xC4BB8000, 0x00000000
var_80875B28: .word 0xC47A0000, 0xC3480000, 0x44BB8000
var_80875B34: .word 0xC47A0000, 0xC3480000, 0xC4BB8000
var_80875B40: .word 0x00000000, 0x00000000, 0x00000000
var_80875B4C: .word 0x453B8000, 0x00000000, 0x00000000
var_80875B58: .word 0x00000000, 0x00000000, 0x00000000
var_80875B64: .word \
0xC3960000, 0xC51C4000, 0x00000000, 0xC3960000, \
0x44960000, 0xC528C000, 0x453B8000, 0x44960000, \
0x00000000
var_80875B88: .word \
0xC3960000, 0xC51C4000, 0x00000000, 0xC3960000, \
0x44960000, 0x4528C000, 0x453B8000, 0x44960000, \
0x00000000
var_80875BAC: .word \
0xC4160000, 0x44960000, 0xC52F0000, 0xC4160000, \
0x44960000, 0x452F0000, 0x453B8000, 0x44960000, \
0x00000000
var_80875BD0: .word 0x44E10000, 0x44960000, 0x00000000
var_80875BDC: .word \
0x44BB8000, 0x43960000, 0x00000000, 0x44898000, \
0xC42F0000, 0x00000000
var_80875BF4: .word \
0x00000000, 0x00000000, 0x00000000, 0x4508E000, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80875C10: .word 0x3CA3D70A
var_80875C14: .word 0x3DCCCCCD
var_80875C18: .word 0x3E19999A
var_80875C1C: .word 0x3DCCCCCD
var_80875C20: .word 0x3E19999A
var_80875C24: .word 0x3CA3D70A
var_80875C28: .word 0x3DCCCCCD
var_80875C2C: .word 0x3E19999A
var_80875C30: .word 0x3DCCCCCD
var_80875C34: .word 0x3E19999A
var_80875C38: .word 0x3CA3D70A
var_80875C3C: .word 0x3DCCCCCD
var_80875C40: .word 0x3E19999A
var_80875C44: .word 0x3DCCCCCD
var_80875C48: .word 0x3E19999A
var_80875C4C: .word 0xBDCCCCCD
var_80875C50: .word 0x3F333333
var_80875C54: .word 0x3DA3D70A
var_80875C58: .word 0x45ABE000
var_80875C5C: .word var_8087539C
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word var_808753F0
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word var_808754C4
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word var_8087554C
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word lbl_80875574
.word var_80875564
var_80875CC8: .word var_808755A8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word var_808755BC
.word var_808755C4
.word var_808755CC
.word var_808755D4
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word var_808755EC
.word var_808755DC
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word lbl_808755F8
.word var_808755F4
.word var_808755E4
var_80875D24: .word 0x3FE66666, 0x00000000, 0x00000000

