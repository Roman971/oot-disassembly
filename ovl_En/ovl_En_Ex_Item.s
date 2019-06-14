#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AD9430:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AD9440:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      v0, 0x001C(a2)             ## 0000001C
    lw      t2, 0x0024(a2)             ## 00000024
    lw      t6, 0x0004(a2)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    andi    t8, v0, 0x00FF             ## t8 = 00000000
    sw      t2, 0x0160(a2)             ## 00000160
    lw      t2, 0x002C(a2)             ## 0000002C
    lw      t1, 0x0028(a2)             ## 00000028
    andi    t4, t8, 0xFFFF             ## t4 = 00000000
    sra     t9, v0,  8                 
    and     t7, t6, $at                
    andi    t0, t9, 0x00FF             ## t0 = 00000000
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
    sltiu   $at, t4, 0x0014            
    sw      t7, 0x0004(a2)             ## 00000004
    sh      t8, 0x0142(a2)             ## 00000142
    sh      t0, 0x0144(a2)             ## 00000144
    sh      t3, 0x0140(a2)             ## 00000140
    sw      t2, 0x0168(a2)             ## 00000168
    beq     $at, $zero, lbl_80AD953C   
    sw      t1, 0x0164(a2)             ## 00000164
    sll     t4, t4,  2                 
    lui     $at, %hi(var_80ADA290)     ## $at = 80AE0000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80ADA290)($at) 
    jr      t4                         
    nop
var_80AD94BC:
    addiu   t5, $zero, 0x00BF          ## t5 = 000000BF
    beq     $zero, $zero, lbl_80AD953C 
    sh      t5, 0x0140(a2)             ## 00000140
var_80AD94C8:
    addiu   t6, $zero, 0x00BD          ## t6 = 000000BD
    beq     $zero, $zero, lbl_80AD953C 
    sh      t6, 0x0140(a2)             ## 00000140
var_80AD94D4:
    addiu   t7, $zero, 0x00D9          ## t7 = 000000D9
    beq     $zero, $zero, lbl_80AD953C 
    sh      t7, 0x0140(a2)             ## 00000140
var_80AD94E0:
    addiu   t8, $zero, 0x00CE          ## t8 = 000000CE
    beq     $zero, $zero, lbl_80AD953C 
    sh      t8, 0x0140(a2)             ## 00000140
var_80AD94EC:
    addiu   t9, $zero, 0x017F          ## t9 = 0000017F
    beq     $zero, $zero, lbl_80AD953C 
    sh      t9, 0x0140(a2)             ## 00000140
var_80AD94F8:
    lui     $at, %hi(var_80ADA2E0)     ## $at = 80AE0000
    lwc1    $f4, %lo(var_80ADA2E0)($at) 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lui     t1, %hi(func_80AD9B64)     ## t1 = 80AE0000
    addiu   t0, $zero, 0x0007          ## t0 = 00000007
    addiu   t1, t1, %lo(func_80AD9B64) ## t1 = 80AD9B64
    sh      t0, 0x014A(a2)             ## 0000014A
    sw      t1, 0x013C(a2)             ## 0000013C
    swc1    $f4, 0x0154(a2)            ## 00000154
    beq     $zero, $zero, lbl_80AD953C 
    swc1    $f6, 0x0060(a2)            ## 00000060
var_80AD9528:
    addiu   t2, $zero, 0x015D          ## t2 = 0000015D
    beq     $zero, $zero, lbl_80AD953C 
    sh      t2, 0x0140(a2)             ## 00000140
var_80AD9534:
    addiu   t3, $zero, 0x017B          ## t3 = 0000017B
    sh      t3, 0x0140(a2)             ## 00000140
lbl_80AD953C:
    lh      a1, 0x0140(a2)             ## 00000140
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    bltz    a1, lbl_80AD958C           
    addu    a0, a3, $at                
    jal     func_80081628              ## ObjectIndex
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t5, %hi(func_80AD959C)     ## t5 = 80AE0000
    addiu   t5, t5, %lo(func_80AD959C) ## t5 = 80AD959C
    sb      v0, 0x015C(a2)             ## 0000015C
    lb      t4, 0x015C(a2)             ## 0000015C
    sw      $zero, 0x0134(a2)          ## 00000134
    bgezl   t4, lbl_80AD958C           
    sw      t5, 0x013C(a2)             ## 0000013C
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD9590 
    lw      $ra, 0x0014($sp)           
    sw      t5, 0x013C(a2)             ## 0000013C
lbl_80AD958C:
    lw      $ra, 0x0014($sp)           
lbl_80AD9590:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD959C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    lb      a1, 0x015C(a2)             ## 0000015C
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_80AD9908    
    lw      a2, 0x0018($sp)            
    lh      v1, 0x0142(a2)             ## 00000142
    lb      t6, 0x015C(a2)             ## 0000015C
    lui     t7, %hi(func_80AD9F78)     ## t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AD9F78) ## t7 = 80AD9F78
    sltiu   $at, v1, 0x0014            
    sw      t7, 0x0134(a2)             ## 00000134
    sh      $zero, 0x0148(a2)          ## 00000148
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     $at, $zero, lbl_80AD9908   
    sb      t6, 0x001E(a2)             ## 0000001E
    sll     t8, v1,  2                 
    lui     $at, %hi(var_80ADA2E4)     ## $at = 80AE0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80ADA2E4)($at) 
    jr      t8                         
    nop
var_80AD960C:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
var_80AD9610:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     t9, 0x8002                 ## t9 = 80020000
    addiu   t9, t9, 0x2438             ## t9 = 80022438
    addiu   t0, $zero, 0x0018          ## t0 = 00000018
    addiu   t1, $zero, 0x0041          ## t1 = 00000041
    addiu   t2, $zero, 0x0023          ## t2 = 00000023
    sw      t9, 0x016C(a2)             ## 0000016C
    sh      t0, 0x0146(a2)             ## 00000146
    sh      t1, 0x014A(a2)             ## 0000014A
    sh      t2, 0x014E(a2)             ## 0000014E
    bne     v0, $zero, lbl_80AD9654    
    swc1    $f0, 0x0154(a2)            ## 00000154
    lui     t3, %hi(func_80AD9918)     ## t3 = 80AE0000
    addiu   t3, t3, %lo(func_80AD9918) ## t3 = 80AD9918
    beq     $zero, $zero, lbl_80AD9908 
    sw      t3, 0x013C(a2)             ## 0000013C
lbl_80AD9654:
    lui     $at, 0xC190                ## $at = C1900000
    mtc1    $at, $f4                   ## $f4 = -18.00
    lui     t4, %hi(func_80AD9B04)     ## t4 = 80AE0000
    addiu   t4, t4, %lo(func_80AD9B04) ## t4 = 80AD9B04
    sw      t4, 0x013C(a2)             ## 0000013C
    beq     $zero, $zero, lbl_80AD9908 
    swc1    $f4, 0x00BC(a2)            ## 000000BC
var_80AD9670:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
var_80AD9674:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     t5, 0x8002                 ## t5 = 80020000
    addiu   t5, t5, 0x2554             ## t5 = 80022554
    addiu   t6, $zero, 0x0041          ## t6 = 00000041
    addiu   t7, $zero, 0x0023          ## t7 = 00000023
    sw      t5, 0x016C(a2)             ## 0000016C
    sh      t6, 0x014A(a2)             ## 0000014A
    sh      t7, 0x014E(a2)             ## 0000014E
    bne     v0, $zero, lbl_80AD96C0    
    swc1    $f0, 0x0154(a2)            ## 00000154
    addiu   a0, $zero, 0x4823          ## a0 = 00004823
    jal     func_800646F0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_80AD9918)     ## t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AD9918) ## t8 = 80AD9918
    beq     $zero, $zero, lbl_80AD9908 
    sw      t8, 0x013C(a2)             ## 0000013C
lbl_80AD96C0:
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f6                   ## $f6 = -10.00
    lui     t9, %hi(func_80AD9B04)     ## t9 = 80AE0000
    addiu   t9, t9, %lo(func_80AD9B04) ## t9 = 80AD9B04
    sw      t9, 0x013C(a2)             ## 0000013C
    beq     $zero, $zero, lbl_80AD9908 
    swc1    $f6, 0x00BC(a2)            ## 000000BC
var_80AD96DC:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
var_80AD96E0:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     t0, 0x8002                 ## t0 = 80020000
    addiu   t0, t0, 0x2438             ## t0 = 80022438
    addiu   t1, $zero, 0x0027          ## t1 = 00000027
    addiu   t2, $zero, 0x0041          ## t2 = 00000041
    addiu   t3, $zero, 0x0023          ## t3 = 00000023
    sw      t0, 0x016C(a2)             ## 0000016C
    sh      t1, 0x0146(a2)             ## 00000146
    sh      t2, 0x014A(a2)             ## 0000014A
    sh      t3, 0x014E(a2)             ## 0000014E
    bne     v0, $zero, lbl_80AD9724    
    swc1    $f0, 0x0154(a2)            ## 00000154
    lui     t4, %hi(func_80AD9918)     ## t4 = 80AE0000
    addiu   t4, t4, %lo(func_80AD9918) ## t4 = 80AD9918
    beq     $zero, $zero, lbl_80AD9908 
    sw      t4, 0x013C(a2)             ## 0000013C
lbl_80AD9724:
    lui     t5, %hi(func_80AD9B04)     ## t5 = 80AE0000
    addiu   t5, t5, %lo(func_80AD9B04) ## t5 = 80AD9B04
    beq     $zero, $zero, lbl_80AD9908 
    sw      t5, 0x013C(a2)             ## 0000013C
var_80AD9734:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     t6, 0x8002                 ## t6 = 80020000
    addiu   t6, t6, 0x2438             ## t6 = 80022438
    addiu   t7, $zero, 0x001F          ## t7 = 0000001F
    addiu   t8, $zero, 0x0041          ## t8 = 00000041
    addiu   t9, $zero, 0x0023          ## t9 = 00000023
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    sw      t6, 0x016C(a2)             ## 0000016C
    sh      t7, 0x0146(a2)             ## 00000146
    sh      t8, 0x014A(a2)             ## 0000014A
    sh      t9, 0x014E(a2)             ## 0000014E
    swc1    $f0, 0x0154(a2)            ## 00000154
    bne     v1, $at, lbl_80AD9780      
    swc1    $f0, 0x0158(a2)            ## 00000158
    lui     t0, %hi(func_80AD9918)     ## t0 = 80AE0000
    addiu   t0, t0, %lo(func_80AD9918) ## t0 = 80AD9918
    beq     $zero, $zero, lbl_80AD9908 
    sw      t0, 0x013C(a2)             ## 0000013C
lbl_80AD9780:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lui     t1, %hi(func_80AD9B04)     ## t1 = 80AE0000
    addiu   t1, t1, %lo(func_80AD9B04) ## t1 = 80AD9B04
    sw      t1, 0x013C(a2)             ## 0000013C
    beq     $zero, $zero, lbl_80AD9908 
    swc1    $f8, 0x00BC(a2)            ## 000000BC
var_80AD979C:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     t2, 0x8002                 ## t2 = 80020000
    lui     t3, 0x8002                 ## t3 = 80020000
    addiu   t2, t2, 0x2438             ## t2 = 80022438
    addiu   t3, t3, 0x2554             ## t3 = 80022554
    addiu   t4, $zero, 0x0070          ## t4 = 00000070
    addiu   t5, $zero, 0x0041          ## t5 = 00000041
    addiu   t6, $zero, 0x0023          ## t6 = 00000023
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    sw      t2, 0x016C(a2)             ## 0000016C
    sw      t3, 0x0170(a2)             ## 00000170
    sh      t4, 0x0146(a2)             ## 00000146
    sh      t5, 0x014A(a2)             ## 0000014A
    sh      t6, 0x014E(a2)             ## 0000014E
    swc1    $f0, 0x0154(a2)            ## 00000154
    bne     v1, $at, lbl_80AD97F4      
    swc1    $f0, 0x0158(a2)            ## 00000158
    lui     t7, %hi(func_80AD9918)     ## t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AD9918) ## t7 = 80AD9918
    beq     $zero, $zero, lbl_80AD9908 
    sw      t7, 0x013C(a2)             ## 0000013C
lbl_80AD97F4:
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f10                  ## $f10 = 40.00
    lui     t8, %hi(func_80AD9B04)     ## t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AD9B04) ## t8 = 80AD9B04
    sw      t8, 0x013C(a2)             ## 0000013C
    beq     $zero, $zero, lbl_80AD9908 
    swc1    $f10, 0x00BC(a2)           ## 000000BC
var_80AD9810:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f16                  ## $f16 = 10.00
    lui     t9, 0x8002                 ## t9 = 80020000
    lui     t0, 0x8002                 ## t0 = 80020000
    addiu   t9, t9, 0x2438             ## t9 = 80022438
    addiu   t0, t0, 0x2554             ## t0 = 80022554
    addiu   t1, $zero, 0x0007          ## t1 = 00000007
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    sw      t9, 0x016C(a2)             ## 0000016C
    sw      t0, 0x0170(a2)             ## 00000170
    sh      t1, 0x014A(a2)             ## 0000014A
    swc1    $f0, 0x0154(a2)            ## 00000154
    swc1    $f0, 0x0158(a2)            ## 00000158
    beq     v1, $at, lbl_80AD9880      
    swc1    $f16, 0x0060(a2)           ## 00000060
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     v1, $at, lbl_80AD988C      
    addiu   t3, $zero, 0x006D          ## t3 = 0000006D
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     v1, $at, lbl_80AD9894      
    addiu   t4, $zero, 0x006E          ## t4 = 0000006E
    addiu   $at, $zero, 0x000E         ## $at = 0000000E
    beq     v1, $at, lbl_80AD989C      
    addiu   t5, $zero, 0x0070          ## t5 = 00000070
    beq     $zero, $zero, lbl_80AD98A0 
    nop
lbl_80AD9880:
    addiu   t2, $zero, 0x006C          ## t2 = 0000006C
    beq     $zero, $zero, lbl_80AD98A0 
    sh      t2, 0x0146(a2)             ## 00000146
lbl_80AD988C:
    beq     $zero, $zero, lbl_80AD98A0 
    sh      t3, 0x0146(a2)             ## 00000146
lbl_80AD9894:
    beq     $zero, $zero, lbl_80AD98A0 
    sh      t4, 0x0146(a2)             ## 00000146
lbl_80AD989C:
    sh      t5, 0x0146(a2)             ## 00000146
lbl_80AD98A0:
    lui     t6, %hi(func_80AD9B64)     ## t6 = 80AE0000
    addiu   t6, t6, %lo(func_80AD9B64) ## t6 = 80AD9B64
    beq     $zero, $zero, lbl_80AD9908 
    sw      t6, 0x013C(a2)             ## 0000013C
var_80AD98B0:
    lui     $at, %hi(var_80ADA334)     ## $at = 80AE0000
    lwc1    $f18, %lo(var_80ADA334)($at) 
    lui     t7, %hi(func_80AD9BCC)     ## t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AD9BCC) ## t7 = 80AD9BCC
    sw      t7, 0x013C(a2)             ## 0000013C
    beq     $zero, $zero, lbl_80AD9908 
    swc1    $f18, 0x0154(a2)           ## 00000154
var_80AD98CC:
    lui     t8, 0x8002                 ## t8 = 80020000
    addiu   t8, t8, 0x2438             ## t8 = 80022438
    addiu   t9, $zero, 0x006B          ## t9 = 0000006B
    sw      t8, 0x016C(a2)             ## 0000016C
    sh      t9, 0x0146(a2)             ## 00000146
    lui     $at, %hi(var_80ADA338)     ## $at = 80AE0000
    lwc1    $f4, %lo(var_80ADA338)($at) 
    lui     t2, %hi(func_80AD9BE4)     ## t2 = 80AE0000
    addiu   t0, $zero, 0x0050          ## t0 = 00000050
    addiu   t1, $zero, 0x0023          ## t1 = 00000023
    addiu   t2, t2, %lo(func_80AD9BE4) ## t2 = 80AD9BE4
    sh      t0, 0x014A(a2)             ## 0000014A
    sh      t1, 0x014E(a2)             ## 0000014E
    sw      t2, 0x013C(a2)             ## 0000013C
    swc1    $f4, 0x0154(a2)            ## 00000154
lbl_80AD9908:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9918:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t9, 0x0148(s0)             ## 00000148
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    or      a1, $zero, $zero           ## a1 = 00000000
    bne     t9, $zero, lbl_80AD997C    
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    lh      t0, 0x00B6(s0)             ## 000000B6
    lh      t2, 0x014E(s0)             ## 0000014E
    addiu   t1, t0, 0x1000             ## t1 = 00001000
    bne     t2, $zero, lbl_80AD9988    
    sh      t1, 0x00B6(s0)             ## 000000B6
    lh      t3, 0x00B6(s0)             ## 000000B6
    ori     $at, $zero, 0x9000         ## $at = 00009000
    andi    t4, t3, 0xFFFF             ## t4 = 00000000
    bnel    t4, $at, lbl_80AD998C      
    lh      t7, 0x014A(s0)             ## 0000014A
    lh      t5, 0x0148(s0)             ## 00000148
    addiu   t6, t5, 0x0001             ## t6 = 00000001
    beq     $zero, $zero, lbl_80AD9988 
    sh      t6, 0x0148(s0)             ## 00000148
lbl_80AD997C:
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80AD9988:
    lh      t7, 0x014A(s0)             ## 0000014A
lbl_80AD998C:
    beql    t7, $zero, lbl_80AD9ACC    
    lw      v0, 0x0118(s0)             ## 00000118
    lh      t8, 0x014E(s0)             ## 0000014E
    lui     $at, 0x437A                ## $at = 437A0000
    beql    t8, $zero, lbl_80AD9AF4    
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f10                  ## $f10 = 250.00
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    swc1    $f10, 0x003C($sp)          
    lh      t9, 0x0142(s0)             ## 00000142
    bne     t9, $at, lbl_80AD99C8      
    lui     $at, 0x435C                ## $at = 435C0000
    mtc1    $at, $f4                   ## $f4 = 220.00
    nop
    swc1    $f4, 0x003C($sp)           
lbl_80AD99C8:
    lwc1    $f12, 0x00E0(s1)           ## 000000E0
    lwc1    $f8, 0x00EC(s1)            ## 000000EC
    lwc1    $f10, 0x00E8(s1)           ## 000000E8
    lwc1    $f16, 0x00E4(s1)           ## 000000E4
    lwc1    $f6, 0x00F0(s1)            ## 000000F0
    sub.s   $f2, $f8, $f12             
    swc1    $f10, 0x0038($sp)          
    lwc1    $f4, 0x00F4(s1)            ## 000000F4
    lwc1    $f8, 0x003C($sp)           
    sub.s   $f14, $f6, $f16            
    lwc1    $f10, 0x0038($sp)          
    lui     $at, 0x40A0                ## $at = 40A00000
    add.s   $f6, $f4, $f8              
    mul.s   $f4, $f2, $f2              
    nop
    mul.s   $f8, $f14, $f14            
    sub.s   $f18, $f6, $f10            
    add.s   $f6, $f4, $f8              
    mul.s   $f4, $f18, $f18            
    add.s   $f0, $f6, $f4              
    mtc1    $at, $f6                   ## $f6 = 5.00
    sqrt.s  $f0, $f0                   
    div.s   $f8, $f18, $f0             
    mul.s   $f4, $f8, $f6              
    div.s   $f6, $f2, $f0              
    swc1    $f4, 0x0040($sp)           
    lwc1    $f8, 0x0024(s0)            ## 00000024
    swc1    $f8, 0x0034($sp)           
    mtc1    $at, $f8                   ## $f8 = 5.00
    nop
    mul.s   $f6, $f6, $f8              
    add.s   $f8, $f12, $f6             
    lwc1    $f6, 0x0034($sp)           
    sub.s   $f2, $f8, $f6              
    lwc1    $f8, 0x0028(s0)            ## 00000028
    swc1    $f10, 0x0028($sp)          
    mtc1    $at, $f10                  ## $f10 = 5.00
    swc1    $f8, 0x0030($sp)           
    div.s   $f8, $f14, $f0             
    lwc1    $f12, 0x002C(s0)           ## 0000002C
    mul.s   $f8, $f8, $f10             
    add.s   $f10, $f16, $f8            
    lwc1    $f8, 0x0030($sp)           
    sub.s   $f14, $f10, $f8            
    lwc1    $f10, 0x0028($sp)          
    add.s   $f8, $f10, $f4             
    mtc1    $at, $f4                   ## $f4 = 5.00
    div.s   $f10, $f2, $f0             
    sub.s   $f18, $f8, $f12            
    mul.s   $f8, $f10, $f4             
    div.s   $f4, $f14, $f0             
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f6                   ## $f6 = 5.00
    swc1    $f10, 0x0024(s0)           ## 00000024
    lwc1    $f10, 0x0030($sp)          
    mul.s   $f8, $f4, $f6              
    div.s   $f6, $f18, $f0             
    add.s   $f4, $f10, $f8             
    mtc1    $at, $f10                  ## $f10 = 5.00
    swc1    $f4, 0x0028(s0)            ## 00000028
    mul.s   $f8, $f6, $f10             
    add.s   $f4, $f12, $f8             
    beq     $zero, $zero, lbl_80AD9AF0 
    swc1    $f4, 0x002C(s0)            ## 0000002C
    lw      v0, 0x0118(s0)             ## 00000118
lbl_80AD9ACC:
    beq     v0, $zero, lbl_80AD9AE8    
    nop
    lw      t0, 0x0130(v0)             ## 00000130
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    beq     t0, $zero, lbl_80AD9AE8    
    nop
    sh      t1, 0x0146(v0)             ## 00000146
lbl_80AD9AE8:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AD9AF0:
    lw      $ra, 0x0024($sp)           
lbl_80AD9AF4:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80AD9B04:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x4268          ## t6 = 00004268
    sh      t6, 0x00B6(a0)             ## 000000B6
    lh      t7, 0x00B6(a0)             ## 000000B6
    lui     t8, %hi(func_80AD9B2C)     ## t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AD9B2C) ## t8 = 80AD9B2C
    sw      t8, 0x013C(a0)             ## 0000013C
    sh      t7, 0x0032(a0)             ## 00000032
    jr      $ra                        
    nop


func_80AD9B2C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x00B6(a0)             ## 000000B6
    lh      t8, 0x0150(a0)             ## 00000150
    addiu   t7, t6, 0x0800             ## t7 = 00000800
    beq     t8, $zero, lbl_80AD9B54    
    sh      t7, 0x00B6(a0)             ## 000000B6
    jal     func_80020EB4              
    nop
lbl_80AD9B54:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9B64:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x00B6(a0)             ## 000000B6
    lh      v0, 0x014A(a0)             ## 0000014A
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t7, t6, 0x1000             ## t7 = 00001000
    beq     v0, $zero, lbl_80AD9B98    
    sh      t7, 0x00B6(a0)             ## 000000B6
    bne     v0, $at, lbl_80AD9BB4      
    addiu   t8, $zero, 0x0014          ## t8 = 00000014
    beq     $zero, $zero, lbl_80AD9BB4 
    sh      t8, 0x014C(a0)             ## 0000014C
lbl_80AD9B98:
    lh      t9, 0x014C(a0)             ## 0000014C
    mtc1    $zero, $f4                 ## $f4 = 0.00
    bne     t9, $zero, lbl_80AD9BB4    
    swc1    $f4, 0x0060(a0)            ## 00000060
    jal     func_80020EB4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_80AD9BB4:
    jal     func_8002121C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9BCC:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x00B6(a0)             ## 000000B6
    addiu   t7, t6, 0x0800             ## t7 = 00000800
    sh      t7, 0x00B6(a0)             ## 000000B6
    jr      $ra                        
    nop


func_80AD9BE4:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x3F4C                 ## a1 = 3F4C0000
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    lui     a3, 0x3CA3                 ## a3 = 3CA30000
    ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             ## a1 = 3F4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0154             ## a0 = 00000154
    lh      t2, 0x0148(s0)             ## 00000148
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    bne     t2, $zero, lbl_80AD9C68    
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    lh      t3, 0x00B6(s0)             ## 000000B6
    lh      t5, 0x014E(s0)             ## 0000014E
    addiu   t4, t3, 0x1000             ## t4 = 00001000
    bne     t5, $zero, lbl_80AD9C74    
    sh      t4, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x00B6(s0)             ## 000000B6
    ori     $at, $zero, 0x9000         ## $at = 00009000
    andi    t7, t6, 0xFFFF             ## t7 = 00000000
    bnel    t7, $at, lbl_80AD9C78      
    lh      t0, 0x014A(s0)             ## 0000014A
    lh      t8, 0x0148(s0)             ## 00000148
    addiu   t9, t8, 0x0001             ## t9 = 00000001
    beq     $zero, $zero, lbl_80AD9C74 
    sh      t9, 0x0148(s0)             ## 00000148
lbl_80AD9C68:
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80AD9C74:
    lh      t0, 0x014A(s0)             ## 0000014A
lbl_80AD9C78:
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    beq     t0, $zero, lbl_80AD9DBC    
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    lh      t1, 0x014E(s0)             ## 0000014E
    lui     $at, 0x4120                ## $at = 41200000
    beql    t1, $zero, lbl_80AD9E28    
    lw      $ra, 0x0024($sp)           
    lwc1    $f12, 0x00E0(s1)           ## 000000E0
    lwc1    $f4, 0x00EC(s1)            ## 000000EC
    lwc1    $f8, 0x00F0(s1)            ## 000000F0
    mtc1    $at, $f6                   ## $f6 = 10.00
    sub.s   $f2, $f4, $f12             
    lwc1    $f4, 0x00E8(s1)            ## 000000E8
    lwc1    $f16, 0x00E4(s1)           ## 000000E4
    sub.s   $f10, $f8, $f6             
    swc1    $f4, 0x003C($sp)           
    lwc1    $f8, 0x00F4(s1)            ## 000000F4
    mtc1    $at, $f6                   ## $f6 = 10.00
    sub.s   $f14, $f10, $f16           
    lwc1    $f4, 0x003C($sp)           
    lui     $at, 0x40A0                ## $at = 40A00000
    add.s   $f10, $f8, $f6             
    mul.s   $f8, $f2, $f2              
    nop
    mul.s   $f6, $f14, $f14            
    sub.s   $f18, $f10, $f4            
    add.s   $f10, $f8, $f6             
    mul.s   $f8, $f18, $f18            
    add.s   $f0, $f10, $f8             
    mtc1    $at, $f10                  ## $f10 = 5.00
    sqrt.s  $f0, $f0                   
    div.s   $f6, $f18, $f0             
    mul.s   $f8, $f6, $f10             
    div.s   $f10, $f2, $f0             
    swc1    $f8, 0x0044($sp)           
    lwc1    $f6, 0x0024(s0)            ## 00000024
    swc1    $f6, 0x0038($sp)           
    mtc1    $at, $f6                   ## $f6 = 5.00
    nop
    mul.s   $f10, $f10, $f6            
    add.s   $f6, $f12, $f10            
    lwc1    $f10, 0x0038($sp)          
    sub.s   $f2, $f6, $f10             
    lwc1    $f6, 0x0028(s0)            ## 00000028
    swc1    $f4, 0x0028($sp)           
    mtc1    $at, $f4                   ## $f4 = 5.00
    swc1    $f6, 0x0034($sp)           
    div.s   $f6, $f14, $f0             
    lui     $at, 0x4120                ## $at = 41200000
    lwc1    $f12, 0x002C(s0)           ## 0000002C
    mul.s   $f6, $f6, $f4              
    mtc1    $at, $f4                   ## $f4 = 10.00
    nop
    sub.s   $f4, $f16, $f4             
    add.s   $f4, $f4, $f6              
    lwc1    $f6, 0x0034($sp)           
    sub.s   $f14, $f4, $f6             
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f4, 0x0028($sp)           
    lui     $at, 0x40A0                ## $at = 40A00000
    add.s   $f4, $f4, $f6              
    add.s   $f6, $f4, $f8              
    mtc1    $at, $f8                   ## $f8 = 5.00
    div.s   $f4, $f2, $f0              
    sub.s   $f18, $f6, $f12            
    mul.s   $f6, $f4, $f8              
    div.s   $f8, $f14, $f0             
    add.s   $f4, $f10, $f6             
    mtc1    $at, $f10                  ## $f10 = 5.00
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f4, 0x0034($sp)           
    mul.s   $f6, $f8, $f10             
    div.s   $f10, $f18, $f0            
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   ## $f4 = 5.00
    swc1    $f8, 0x0028(s0)            ## 00000028
    mul.s   $f6, $f10, $f4             
    add.s   $f8, $f12, $f6             
    beq     $zero, $zero, lbl_80AD9E24 
    swc1    $f8, 0x002C(s0)            ## 0000002C
lbl_80AD9DBC:
    jal     func_800218EC              
    sw      $zero, 0x0134(s0)          ## 00000134
    sw      $zero, 0x0118(s0)          ## 00000118
    lui     t2, 0x8012                 ## t2 = 80120000
    lui     t3, 0x8010                 ## t3 = 80100000
    lw      t3, -0x736C(t3)            ## 800F8C94
    lw      t2, -0x5990(t2)            ## 8011A670
    lui     t5, 0x8010                 ## t5 = 80100000
    lbu     t5, -0x7337(t5)            ## 800F8CC9
    and     t4, t2, t3                 
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    srav    t6, t4, t5                 
    bne     t6, $at, lbl_80AD9DFC      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD9E00 
    addiu   a2, $zero, 0x0060          ## a2 = 00000060
lbl_80AD9DFC:
    addiu   a2, $zero, 0x007B          ## a2 = 0000007B
lbl_80AD9E00:
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f10                  ## $f10 = 1000.00
    or      a1, s1, $zero              ## a1 = 00000000
    lui     a3, 0x44FA                 ## a3 = 44FA0000
    jal     func_80022BD4              
    swc1    $f10, 0x0010($sp)          
    lui     t7, %hi(func_80AD9E38)     ## t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AD9E38) ## t7 = 80AD9E38
    sw      t7, 0x013C(s0)             ## 0000013C
lbl_80AD9E24:
    lw      $ra, 0x0024($sp)           
lbl_80AD9E28:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80AD9E38:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80AD9E68    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80AD9EC4)     ## t6 = 80AE0000
    addiu   t6, t6, %lo(func_80AD9EC4) ## t6 = 80AD9EC4
    beq     $zero, $zero, lbl_80AD9EB4 
    sw      t6, 0x013C(a0)             ## 0000013C
lbl_80AD9E68:
    lui     t7, 0x8012                 ## t7 = 80120000
    lui     t8, 0x8010                 ## t8 = 80100000
    lw      t8, -0x736C(t8)            ## 800F8C94
    lw      t7, -0x5990(t7)            ## 8011A670
    lui     t0, 0x8010                 ## t0 = 80100000
    lbu     t0, -0x7337(t0)            ## 800F8CC9
    and     t9, t7, t8                 
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    srav    t1, t9, t0                 
    bne     t1, $at, lbl_80AD9E9C      
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80AD9EA0 
    addiu   a2, $zero, 0x007B          ## a2 = 0000007B
lbl_80AD9E9C:
    addiu   a2, $zero, 0x0060          ## a2 = 00000060
lbl_80AD9EA0:
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f4                   ## $f4 = 1000.00
    lui     a3, 0x44FA                 ## a3 = 44FA0000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80AD9EB4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9EC4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80AD9F18      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AD9F14    
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EF2(v0)             ## 8011B4C2
    lw      a0, 0x0018($sp)            
    ori     t7, t6, 0x2000             ## t7 = 00002000
    jal     func_80020EB4              
    sh      t7, 0x0EF2(v0)             ## 8011B4C2
lbl_80AD9F14:
    lw      $ra, 0x0014($sp)           
lbl_80AD9F18:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9F24:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x014A(a0)             ## 0000014A
    beq     v0, $zero, lbl_80AD9F3C    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x014A(a0)             ## 0000014A
lbl_80AD9F3C:
    lh      v0, 0x014C(a0)             ## 0000014C
    beq     v0, $zero, lbl_80AD9F4C    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x014C(a0)             ## 0000014C
lbl_80AD9F4C:
    lh      v0, 0x014E(a0)             ## 0000014E
    beq     v0, $zero, lbl_80AD9F5C    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x014E(a0)             ## 0000014E
lbl_80AD9F5C:
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9F78:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a1, $zero              ## a3 = 00000000
    lw      a1, 0x0154(a0)             ## 00000154
    sw      a3, 0x001C($sp)            
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      a3, 0x001C($sp)            
    lh      v1, 0x0142(a0)             ## 00000142
    sltiu   $at, v1, 0x0014            
    beq     $at, $zero, lbl_80ADA018   
    sll     t6, v1,  2                 
    lui     $at, %hi(var_80ADA33C)     ## $at = 80AE0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80ADA33C)($at) 
    jr      t6                         
    nop
var_80AD9FC0:
    jal     func_80ADA028              
    or      a1, a3, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80ADA01C 
    lw      $ra, 0x0014($sp)           
var_80AD9FD0:
    jal     func_80ADA08C              
    or      a1, a3, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80ADA01C 
    lw      $ra, 0x0014($sp)           
var_80AD9FE0:
    jal     func_80ADA1F4              
    or      a1, a3, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80ADA01C 
    lw      $ra, 0x0014($sp)           
var_80AD9FF0:
    or      a1, a3, $zero              ## a1 = 00000000
    jal     func_80ADA108              
    or      a2, $zero, $zero           ## a2 = 00000000
    beq     $zero, $zero, lbl_80ADA01C 
    lw      $ra, 0x0014($sp)           
var_80ADA004:
    addiu   v0, v1, 0xFFF0             ## v0 = FFFFFFF0
    sll     a2, v0, 16                 
    sra     a2, a2, 16                 
    jal     func_80ADA0C0              
    or      a1, a3, $zero              ## a1 = 00000000
lbl_80ADA018:
    lw      $ra, 0x0014($sp)           
lbl_80ADA01C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ADA028:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      v0, 0x016C(a3)             ## 0000016C
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80ADA058    
    or      a2, $zero, $zero           ## a2 = 00000000
    jalr    $ra, v0                    
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80ADA058:
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_80022554              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    lh      a1, 0x0146(a3)             ## 00000146
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ADA08C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    addiu   a1, $zero, 0x0013          ## a1 = 00000013
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ADA0C0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           ## a2 = 00000000
    lh      t6, 0x0022($sp)            
    lui     a1, %hi(var_80ADA280)      ## a1 = 80AE0000
    lw      a0, 0x001C($sp)            
    sll     t7, t6,  1                 
    addu    a1, a1, t7                 
    jal     func_800570C0              
    lh      a1, %lo(var_80ADA280)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ADA108:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E690              
    sw      a0, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    lw      v1, 0x02C0(a3)             ## 000002C0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(a3)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      t0, 0x001C($sp)            
    lw      a3, 0x0024($sp)            
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02C0(a3)             ## 000002C0
    lui     t2, 0xDB06                 ## t2 = DB060000
    ori     t2, t2, 0x0020             ## t2 = DB060020
    addiu   t1, v1, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(a3)             ## 000002C0
    sw      t2, 0x0000(v1)             ## 00000000
    lw      t3, 0x0030($sp)            
    lui     a1, %hi(var_80ADA288)      ## a1 = 80AE0000
    lui     t9, 0x8012                 ## t9 = 80120000
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    lw      a1, %lo(var_80ADA288)(a1)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t6, a1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, 0x0C38(t9)             ## 80120C38
    and     t5, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t1, t5, t9                 
    addu    t2, t1, $at                
    sw      t2, 0x0004(v1)             ## 00000004
    lw      v1, 0x02C0(a3)             ## 000002C0
    lui     t6, 0x0404                 ## t6 = 04040000
    addiu   t6, t6, 0x1D80             ## t6 = 04041D80
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(a3)             ## 000002C0
    lui     t4, 0xDE00                 ## t4 = DE000000
    sw      t4, 0x0000(v1)             ## 00000000
    sw      t6, 0x0004(v1)             ## 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ADA1F4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      v0, 0x016C(a3)             ## 0000016C
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80ADA224    
    or      a2, $zero, $zero           ## a2 = 00000000
    jalr    $ra, v0                    
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80ADA224:
    lw      v0, 0x0170(a3)             ## 00000170
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80ADA244    
    or      a2, $zero, $zero           ## a2 = 00000000
    jalr    $ra, v0                    
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80ADA244:
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    lh      a1, 0x0146(a3)             ## 00000146
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80ADA260: .word 0x01680600, 0x00000030, 0x00010000, 0x00000174
.word func_80AD9440
.word func_80AD9430
.word func_80AD9F24
.word func_80AD9F78
var_80ADA280: .word 0x00630064, 0x00650000
var_80ADA288: .word 0x04041E50, 0x00000000

.section .rodata

var_80ADA290: .word var_80AD94BC
.word var_80AD94C8
.word var_80AD94D4
.word var_80AD94E0
.word var_80AD94EC
.word var_80AD94BC
.word var_80AD94C8
.word var_80AD94D4
.word var_80AD94E0
.word var_80AD94EC
.word var_80AD94EC
.word var_80AD94EC
.word var_80AD94EC
.word var_80AD94EC
.word var_80AD94EC
.word var_80AD94F8
.word var_80AD9528
.word var_80AD9528
.word var_80AD9528
.word var_80AD9534
var_80ADA2E0: .word 0x3D4CCCCD
var_80ADA2E4: .word var_80AD9610
.word var_80AD9674
.word var_80AD96E0
.word var_80AD9734
.word var_80AD979C
.word var_80AD960C
.word var_80AD9670
.word var_80AD96DC
.word var_80AD9734
.word var_80AD979C
.word var_80AD9810
.word var_80AD9810
.word var_80AD9810
.word var_80AD9810
.word var_80AD9810
.word lbl_80AD9908
.word var_80AD98B0
.word var_80AD98B0
.word var_80AD98B0
.word var_80AD98CC
var_80ADA334: .word 0x3EB33333
var_80ADA338: .word 0x3DCCCCCD
var_80ADA33C: .word var_80AD9FC0
.word var_80AD9FD0
.word var_80AD9FC0
.word var_80AD9FC0
.word var_80AD9FE0
.word var_80AD9FC0
.word var_80AD9FD0
.word var_80AD9FC0
.word var_80AD9FC0
.word var_80AD9FE0
.word var_80AD9FE0
.word var_80AD9FE0
.word var_80AD9FE0
.word var_80AD9FE0
.word var_80AD9FE0
.word var_80AD9FF0
.word var_80ADA004
.word var_80ADA004
.word var_80ADA004
.word var_80AD9FC0
.word 0x00000000

