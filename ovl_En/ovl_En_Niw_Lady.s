#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A9DF70:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a0, a0, $at                
    sw      a0, 0x001C($sp)            
    addiu   a1, $zero, 0x0110          ## a1 = 00000110
    jal     func_80081628              ## ObjectIndex
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lw      a0, 0x001C($sp)            
    addiu   a1, $zero, 0x00C5          ## a1 = 000000C5
    jal     func_80081628              ## ObjectIndex
    sb      v0, 0x0270(a2)             ## 00000270
    lw      a2, 0x0028($sp)            
    sb      v0, 0x0271(a2)             ## 00000271
    lb      t6, 0x0271(a2)             ## 00000271
    bltz    t6, lbl_80A9DFD4           
    nop
    lb      t7, 0x0270(a2)             ## 00000270
    bgezl   t7, lbl_80A9DFE8           
    sh      $zero, 0x0268(a2)          ## 00000268
lbl_80A9DFD4:
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A9E04C 
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0268(a2)          ## 00000268
lbl_80A9DFE8:
    lw      t8, 0x002C($sp)            
    addiu   $at, $zero, 0x0037         ## $at = 00000037
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lh      t9, 0x00A4(t8)             ## 000000A4
    lui     t2, 0x8012                 ## t2 = 80120000
    lui     t3, %hi(func_80A9E24C)     ## t3 = 80AA0000
    bnel    t9, $at, lbl_80A9E010      
    lh      t1, 0x0268(a2)             ## 00000268
    sh      t0, 0x0268(a2)             ## 00000268
    lh      t1, 0x0268(a2)             ## 00000268
lbl_80A9E010:
    lui     $at, 0x4416                ## $at = 44160000
    beql    t1, $zero, lbl_80A9E03C    
    mtc1    $at, $f4                   ## $f4 = 600.00
    lw      t2, -0x5A20(t2)            ## 8011A5E0
    bnel    t2, $zero, lbl_80A9E03C    
    mtc1    $at, $f4                   ## $f4 = 600.00
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A9E04C 
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f4                   ## $f4 = 0.00
lbl_80A9E03C:
    addiu   t3, t3, %lo(func_80A9E24C) ## t3 = FFFFE24C
    sw      t3, 0x0240(a2)             ## 00000240
    swc1    $f4, 0x00F4(a2)            ## 000000F4
    lw      $ra, 0x0014($sp)           
lbl_80A9E04C:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9E058:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x02A0             ## a1 = 000002A0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9E084:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    jal     func_800597C0              
    sw      a2, 0x0030($sp)            
    lw      v1, 0x0028($sp)            
    beq     v0, $zero, lbl_80A9E0B4    
    lw      a2, 0x0030($sp)            
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
lbl_80A9E0B4:
    lh      t6, 0x0260(v1)             ## 00000260
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    slti    $at, a2, 0x001E            
    beql    a2, t6, lbl_80A9E240       
    lw      $ra, 0x0024($sp)           
    sb      $zero, 0x0265(v1)          ## 00000265
    sb      v0, 0x0266(v1)             ## 00000266
    bne     $at, $zero, lbl_80A9E0EC   
    sh      a2, 0x0260(v1)             ## 00000260
    addiu   $at, $zero, 0x0064         ## $at = 00000064
    beq     a2, $at, lbl_80A9E1F4      
    lui     a0, 0x0601                 ## a0 = 06010000
    beq     $zero, $zero, lbl_80A9E240 
    lw      $ra, 0x0024($sp)           
lbl_80A9E0EC:
    sltiu   $at, a2, 0x001E            
    beq     $at, $zero, lbl_80A9E23C   
    sll     t7, a2,  2                 
    lui     $at, %hi(var_80A9F5F0)     ## $at = 80AA0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80A9F5F0)($at) 
    jr      t7                         
    nop
var_80A9E10C:
    sb      v0, 0x0265(v1)             ## 00000265
var_80A9E110:
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x07D0             ## a0 = 060007D0
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -10.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x07D0             ## a1 = 060007D0
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_80A9E240 
    lw      $ra, 0x0024($sp)           
var_80A9E15C:
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x9F94             ## a0 = 06009F94
    mtc1    v0, $f10                   ## $f10 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  ## $f18 = -10.00
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9F94             ## a1 = 06009F94
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f16, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_80A9E240 
    lw      $ra, 0x0024($sp)           
var_80A9E1A8:
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0718             ## a0 = 06000718
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -10.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0718             ## a1 = 06000718
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_80A9E240 
    lw      $ra, 0x0024($sp)           
lbl_80A9E1F4:
    jal     func_8008A194              
    addiu   a0, a0, 0xA630             ## a0 = FFFFA630
    mtc1    v0, $f10                   ## $f10 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  ## $f18 = -10.00
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xA630             ## a1 = 0600A630
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f16, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lw      v1, 0x0028($sp)            
    sb      $zero, 0x0266(v1)          ## 00000266
lbl_80A9E23C:
    lw      $ra, 0x0024($sp)           
lbl_80A9E240:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9E24C:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lw      a0, 0x004C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    lb      a1, 0x0270(s0)             ## 00000270
    addu    a0, a0, $at                
    jal     func_80081688              
    sw      a0, 0x0038($sp)            
    beq     v0, $zero, lbl_80A9E534    
    lw      a0, 0x0038($sp)            
    jal     func_80081688              
    lb      a1, 0x0271(s0)             ## 00000271
    beq     v0, $zero, lbl_80A9E534    
    lw      a0, 0x004C($sp)            
    lb      t6, 0x0270(s0)             ## 00000270
    lui     t9, 0x0001                 ## t9 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, a0, t7                 
    addu    t9, t9, t8                 
    lw      t9, 0x17B4(t9)             ## 000117B4
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    lui     a2, 0x0600                 ## a2 = 06000000
    addu    t0, t9, $at                
    lui     $at, 0x8012                ## $at = 80120000
    addiu   t1, s0, 0x0180             ## t1 = 00000180
    addiu   t2, s0, 0x01E0             ## t2 = 000001E0
    addiu   t3, $zero, 0x0010          ## t3 = 00000010
    sw      t0, 0x0C50($at)            ## 80120C50
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    sw      a1, 0x0038($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           ## a3 = 00000000
    lb      t5, 0x0271(s0)             ## 00000271
    lw      t4, 0x004C($sp)            
    lui     t8, 0x0001                 ## t8 = 00010000
    sll     t6, t5,  4                 
    addu    t6, t6, t5                 
    sll     t6, t6,  2                 
    addu    t7, t4, t6                 
    addu    t8, t8, t7                 
    lw      t8, 0x17B4(t8)             ## 000117B4
    lui     $at, 0x8000                ## $at = 80000000
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    addu    t9, t8, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t9, 0x0C50($at)            ## 80120C50
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f4                   ## $f4 = -3.00
    lui     a1, 0x3C23                 ## a1 = 3C230000
    sh      t0, 0x026E(s0)             ## 0000026E
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    swc1    $f4, 0x006C(s0)            ## 0000006C
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41A0                 ## a3 = 41A00000
    addiu   a1, s0, 0x02A0             ## a1 = 000002A0
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x004C($sp)            
    lui     a3, %hi(var_80A9F594)      ## a3 = 80AA0000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80A9F594)  ## a3 = 80A9F594
    lw      a0, 0x004C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      v1, 0x0268(s0)             ## 00000268
    lui     t2, %hi(func_80A9F434)     ## t2 = 80AA0000
    addiu   t1, $zero, 0x0006          ## t1 = 00000006
    addiu   t2, t2, %lo(func_80A9F434) ## t2 = 80A9F434
    sb      $zero, 0x0262(s0)          ## 00000262
    sb      t1, 0x001F(s0)             ## 0000001F
    beq     v1, $zero, lbl_80A9E3C0    
    sw      t2, 0x0134(s0)             ## 00000134
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v1, $at, lbl_80A9E4D0      
    lui     a0, 0x0600                 ## a0 = 06000000
    beq     $zero, $zero, lbl_80A9E538 
    lw      $ra, 0x002C($sp)           
lbl_80A9E3C0:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t3, 0x0EF0(v0)             ## 8011B4C0
    lui     a0, 0x0600                 ## a0 = 06000000
    andi    t5, t3, 0x1000             ## t5 = 00000000
    bne     t5, $zero, lbl_80A9E44C    
    nop
    lw      t4, 0x0004(v0)             ## 8011A5D4
    beq     t4, $zero, lbl_80A9E44C    
    nop
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xA630             ## a0 = 0600A630
    mtc1    v0, $f6                    ## $f6 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    cvt.s.w $f8, $f6                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0xA630             ## a1 = 0600A630
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f10, $f8                  
    swc1    $f0, 0x0018($sp)           
    mfc1    t7, $f10                   
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_8008D17C              
    swc1    $f18, 0x0010($sp)          
    beq     $zero, $zero, lbl_80A9E4A4 
    nop
lbl_80A9E44C:
    jal     func_8008A194              
    addiu   a0, a0, 0x07D0             ## a0 = 000007D0
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x07D0             ## a1 = 060007D0
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f8, $f6                   
    swc1    $f0, 0x0018($sp)           
    mfc1    t1, $f8                    
    nop
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    mtc1    t3, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
lbl_80A9E4A4:
    lui     t5, 0x8012                 ## t5 = 80120000
    lw      t5, -0x5A2C(t5)            ## 8011A5D4
    lui     t6, %hi(func_80A9E548)     ## t6 = 80AA0000
    lui     t4, %hi(func_80A9E9D4)     ## t4 = 80AA0000
    bne     t5, $zero, lbl_80A9E4C8    
    addiu   t6, t6, %lo(func_80A9E548) ## t6 = 80A9E548
    addiu   t4, t4, %lo(func_80A9E9D4) ## t4 = 80A9E9D4
    beq     $zero, $zero, lbl_80A9E534 
    sw      t4, 0x0240(s0)             ## 00000240
lbl_80A9E4C8:
    beq     $zero, $zero, lbl_80A9E534 
    sw      t6, 0x0240(s0)             ## 00000240
lbl_80A9E4D0:
    jal     func_8008A194              
    addiu   a0, a0, 0x07D0             ## a0 = 000007D0
    mtc1    v0, $f18                   ## $f18 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f4, $f18                  
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x07D0             ## a1 = 060007D0
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f6, $f4                   
    swc1    $f0, 0x0018($sp)           
    mfc1    t8, $f6                    
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    mtc1    t0, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    jal     func_8008D17C              
    swc1    $f10, 0x0010($sp)          
    lui     t1, %hi(func_80A9EF68)     ## t1 = 80AA0000
    addiu   t1, t1, %lo(func_80A9EF68) ## t1 = 80A9EF68
    sw      t1, 0x0240(s0)             ## 00000240
lbl_80A9E534:
    lw      $ra, 0x002C($sp)           
lbl_80A9E538:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9E548:
    sw      a1, 0x0004($sp)            
    lui     t6, %hi(var_80A9F570)      ## t6 = 80AA0000
    lh      t6, %lo(var_80A9F570)(t6)  
    lui     t8, %hi(func_80A9E574)     ## t8 = 80AA0000
    addiu   t7, $zero, 0x0006          ## t7 = 00000006
    addiu   t8, t8, %lo(func_80A9E574) ## t8 = 80A9E574
    sh      t7, 0x0252(a0)             ## 00000252
    sw      t8, 0x0240(a0)             ## 00000240
    sh      t6, 0x010E(a0)             ## 0000010E
    jr      $ra                        
    nop


func_80A9E574:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    sh      $zero, 0x0258(a3)          ## 00000258
    lw      t6, 0x0034($sp)            
    lui     a2, 0x8012                 ## a2 = 80120000
    addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
    lw      v0, 0x1C64(t6)             ## 00001C64
    lui     $at, 0x433E                ## $at = 433E0000
    addiu   a1, $zero, 0x0019          ## a1 = 00000019
    beq     v0, $zero, lbl_80A9E678    
    lui     a0, %hi(var_80A9F584)      ## a0 = 80AA0000
    mtc1    $at, $f16                  ## $f16 = 190.00
    lui     $at, %hi(var_80A9F668)     ## $at = 80AA0000
    lwc1    $f14, %lo(var_80A9F668)($at) 
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f12                  ## $f12 = 90.00
    lui     $at, 0x43A5                ## $at = 43A50000
    mtc1    $at, $f2                   ## $f2 = 330.00
    addiu   a0, a0, %lo(var_80A9F584)  ## a0 = 80A9F584
    lh      t7, 0x0000(v0)             ## 00000000
lbl_80A9E5CC:
    bnel    a1, t7, lbl_80A9E670       
    lw      v0, 0x0124(v0)             ## 00000124
    lwc1    $f4, 0x0024(v0)            ## 00000024
    lh      v1, 0x025C(a3)             ## 0000025C
    sub.s   $f0, $f4, $f2              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1f    lbl_80A9E644               
    nop
    lwc1    $f6, 0x002C(v0)            ## 0000002C
    sub.s   $f0, $f6, $f14             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80A9E644               
    nop
    bnel    v1, $zero, lbl_80A9E638    
    lh      t5, 0x0258(a3)             ## 00000258
    lh      t9, 0x029A(v0)             ## 0000029A
    lhu     t8, 0x0F2A(a2)             ## 8011B4FA
    sll     t1, t9,  1                 
    addu    t2, a0, t1                 
    lh      t3, 0x0000(t2)             ## 00000000
    or      t4, t8, t3                 ## t4 = 00000000
    sh      t4, 0x0F2A(a2)             ## 8011B4FA
    lh      t5, 0x0258(a3)             ## 00000258
lbl_80A9E638:
    addiu   t6, t5, 0x0001             ## t6 = 00000001
    beq     $zero, $zero, lbl_80A9E66C 
    sh      t6, 0x0258(a3)             ## 00000258
lbl_80A9E644:
    bnel    v1, $zero, lbl_80A9E670    
    lw      v0, 0x0124(v0)             ## 00000124
    lh      t9, 0x029A(v0)             ## 0000029A
    lhu     t7, 0x0F2A(a2)             ## 8011B4FA
    sll     t1, t9,  1                 
    addu    t2, a0, t1                 
    lh      t8, 0x0000(t2)             ## 00000000
    nor     t3, t8, $zero              
    and     t4, t7, t3                 
    sh      t4, 0x0F2A(a2)             ## 8011B4FA
lbl_80A9E66C:
    lw      v0, 0x0124(v0)             ## 00000124
lbl_80A9E670:
    bnel    v0, $zero, lbl_80A9E5CC    
    lh      t7, 0x0000(v0)             ## 00000000
lbl_80A9E678:
    lw      a0, 0x0034($sp)            
    lh      t0, 0x0258(a3)             ## 00000258
    sw      a3, 0x0030($sp)            
    addiu   a0, a0, 0x20D8             ## a0 = 80AA165C
    sw      a0, 0x001C($sp)            
    jal     func_800DD464              
    sw      t0, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    lw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_80A9E6C0    
    lw      t0, 0x0020($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_800DD464              
    sw      t0, 0x0020($sp)            
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    lw      a3, 0x0030($sp)            
    bne     v0, $at, lbl_80A9E6C8      
    lw      t0, 0x0020($sp)            
lbl_80A9E6C0:
    addiu   t5, $zero, 0x0065          ## t5 = 00000065
    sh      t5, 0x025E(a3)             ## 0000025E
lbl_80A9E6C8:
    lh      t6, 0x0258(a3)             ## 00000258
    lui     t2, %hi(var_80A9F570)      ## t2 = 80AA0000
    slti    $at, t6, 0x0007            
    bnel    $at, $zero, lbl_80A9E700   
    lh      t9, 0x025C(a3)             ## 0000025C
    lh      v1, 0x025C(a3)             ## 0000025C
    addiu   t0, $zero, 0x0008          ## t0 = 00000008
    slti    $at, v1, 0x0002            
    beql    $at, $zero, lbl_80A9E700   
    lh      t9, 0x025C(a3)             ## 0000025C
    bnel    v1, $zero, lbl_80A9E700    
    lh      t9, 0x025C(a3)             ## 0000025C
    addiu   t0, $zero, 0x0007          ## t0 = 00000007
    lh      t9, 0x025C(a3)             ## 0000025C
lbl_80A9E700:
    slti    $at, t0, 0x0007            
    beql    t9, $zero, lbl_80A9E71C    
    sll     t1, t0,  1                 
    beql    $at, $zero, lbl_80A9E71C   
    sll     t1, t0,  1                 
    addiu   t0, $zero, 0x0009          ## t0 = 00000009
    sll     t1, t0,  1                 
lbl_80A9E71C:
    addu    t2, t2, t1                 
    lh      t2, %lo(var_80A9F570)(t2)  
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    sh      t2, 0x010E(a3)             ## 0000010E
    sw      t0, 0x0020($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_800597C0              
    lw      a0, 0x0034($sp)            
    lw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_80A9E770    
    lw      t0, 0x0020($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    sw      a3, 0x0030($sp)            
    jal     func_800597C0              
    sw      t0, 0x0020($sp)            
    lw      a3, 0x0030($sp)            
    lw      t0, 0x0020($sp)            
    addiu   t8, $zero, 0x0006          ## t8 = 00000006
    sh      v0, 0x010E(a3)             ## 0000010E
    sh      t8, 0x0252(a3)             ## 00000252
lbl_80A9E770:
    lh      t7, 0x025C(a3)             ## 0000025C
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    or      a0, a3, $zero              ## a0 = 00000000
    beql    t7, $zero, lbl_80A9E798    
    lw      a1, 0x0034($sp)            
    beq     t0, $at, lbl_80A9E794      
    addiu   t3, $zero, 0x000B          ## t3 = 0000000B
    addiu   t0, $zero, 0x000A          ## t0 = 0000000A
    sh      t3, 0x025E(a3)             ## 0000025E
lbl_80A9E794:
    lw      a1, 0x0034($sp)            
lbl_80A9E798:
    sw      a3, 0x0030($sp)            
    jal     func_80022930              
    sw      t0, 0x0020($sp)            
    lw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_80A9E8BC    
    lw      t0, 0x0020($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    sw      a3, 0x0030($sp)            
    jal     func_800597C0              
    sw      t0, 0x0020($sp)            
    lw      a3, 0x0030($sp)            
    bne     v0, $zero, lbl_80A9E8CC    
    lw      t0, 0x0020($sp)            
    addiu   a1, t0, 0x0001             ## a1 = 00000001
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    bne     t0, $at, lbl_80A9E82C      
    sh      a1, 0x025E(a3)             ## 0000025E
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    jal     func_800646F0              
    sw      a3, 0x0030($sp)            
    lw      a3, 0x0030($sp)            
    lui     a2, 0x8012                 ## a2 = 80120000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    lh      t6, 0x0258(a3)             ## 00000258
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
    sh      t4, 0x025C(a3)             ## 0000025C
    sh      t5, 0x0252(a3)             ## 00000252
    sh      t6, 0x025A(a3)             ## 0000025A
    lhu     t9, 0x0F2A(a2)             ## 8011B4FA
    lui     t2, %hi(func_80A9E8DC)     ## t2 = 80AA0000
    addiu   t2, t2, %lo(func_80A9E8DC) ## t2 = 80A9E8DC
    andi    t1, t9, 0x01FF             ## t1 = 00000000
    sh      t1, 0x0F2A(a2)             ## 8011B4FA
    beq     $zero, $zero, lbl_80A9E8CC 
    sw      t2, 0x0240(a3)             ## 00000240
lbl_80A9E82C:
    lh      v0, 0x0258(a3)             ## 00000258
    lh      v1, 0x025A(a3)             ## 0000025A
    beq     v0, v1, lbl_80A9E8A8       
    slt     $at, v0, v1                
    beq     $at, $zero, lbl_80A9E888   
    addiu   a0, $zero, 0x4806          ## a0 = 00004806
    sw      a1, 0x0018($sp)            
    jal     func_800646F0              
    sw      a3, 0x0030($sp)            
    lw      a1, 0x0018($sp)            
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    lw      a3, 0x0030($sp)            
    bne     a1, $at, lbl_80A9E87C      
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    lui     t3, %hi(func_80A9E8DC)     ## t3 = 80AA0000
    addiu   t7, $zero, 0x0005          ## t7 = 00000005
    addiu   t3, t3, %lo(func_80A9E8DC) ## t3 = 80A9E8DC
    sh      t8, 0x025C(a3)             ## 0000025C
    sh      t7, 0x0252(a3)             ## 00000252
    sw      t3, 0x0240(a3)             ## 00000240
lbl_80A9E87C:
    lh      v0, 0x0258(a3)             ## 00000258
    beq     $zero, $zero, lbl_80A9E8A8 
    lh      v1, 0x025A(a3)             ## 0000025A
lbl_80A9E888:
    slti    $at, a1, 0x0009            
    beq     $at, $zero, lbl_80A9E8A8   
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    jal     func_800646F0              
    sw      a3, 0x0030($sp)            
    lw      a3, 0x0030($sp)            
    lh      v0, 0x0258(a3)             ## 00000258
    lh      v1, 0x025A(a3)             ## 0000025A
lbl_80A9E8A8:
    slt     $at, v1, v0                
    beql    $at, $zero, lbl_80A9E8D0   
    lw      $ra, 0x0014($sp)           
    beq     $zero, $zero, lbl_80A9E8CC 
    sh      v0, 0x025A(a3)             ## 0000025A
lbl_80A9E8BC:
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_80022A68              
    lui     a2, 0x42C8                 ## a2 = 42C80000
lbl_80A9E8CC:
    lw      $ra, 0x0014($sp)           
lbl_80A9E8D0:
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9E8DC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             ## a0 = 000020D8
    lh      t6, 0x0252(s0)             ## 00000252
    bnel    t6, v0, lbl_80A9E9C4       
    lw      $ra, 0x0024($sp)           
    jal     func_800D6110              
    or      a0, s1, $zero              ## a0 = 00000000
    beql    v0, $zero, lbl_80A9E9C4    
    lw      $ra, 0x0024($sp)           
    jal     func_800D6218              
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   t7, $zero, 0x000B          ## t7 = 0000000B
    sh      t7, 0x025E(s0)             ## 0000025E
    lui     t8, 0x8012                 ## t8 = 80120000
    lhu     t8, -0x4B40(t8)            ## 8011B4C0
    addiu   t0, $zero, 0x000F          ## t0 = 0000000F
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0x1000             ## t9 = 00000000
    bne     t9, $zero, lbl_80A9E974    
    or      a1, s1, $zero              ## a1 = 00000000
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    sw      $zero, 0x0118(s0)          ## 00000118
    sw      t0, 0x0274(s0)             ## 00000274
    addiu   a2, $zero, 0x000F          ## a2 = 0000000F
    lui     a3, 0x42C8                 ## a3 = 42C80000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lui     t1, %hi(func_80A9EE38)     ## t1 = 80AA0000
    addiu   t1, t1, %lo(func_80A9EE38) ## t1 = 80A9EE38
    beq     $zero, $zero, lbl_80A9E9C0 
    sw      t1, 0x0240(s0)             ## 00000240
lbl_80A9E974:
    lh      t2, 0x025C(s0)             ## 0000025C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t3, $zero, 0x0055          ## t3 = 00000055
    bne     t2, $at, lbl_80A9E9B4      
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f6                   ## $f6 = 50.00
    sw      t3, 0x0274(s0)             ## 00000274
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a2, $zero, 0x0055          ## a2 = 00000055
    lui     a3, 0x42C8                 ## a3 = 42C80000
    jal     func_80022BD4              
    swc1    $f6, 0x0010($sp)           
    lui     t4, %hi(func_80A9EE38)     ## t4 = 80AA0000
    addiu   t4, t4, %lo(func_80A9EE38) ## t4 = 80A9EE38
    sw      t4, 0x0240(s0)             ## 00000240
lbl_80A9E9B4:
    lui     t5, %hi(func_80A9E574)     ## t5 = 80AA0000
    addiu   t5, t5, %lo(func_80A9E574) ## t5 = 80A9E574
    sw      t5, 0x0240(s0)             ## 00000240
lbl_80A9E9C0:
    lw      $ra, 0x0024($sp)           
lbl_80A9E9C4:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A9E9D4:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    sh      t6, 0x0252(a0)             ## 00000252
    sb      $zero, 0x0263(a0)          ## 00000263
    lhu     t7, 0x0EF4(v0)             ## 8011B4C4
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    addiu   t2, $zero, 0x0004          ## t2 = 00000004
    andi    t8, t7, 0x1000             ## t8 = 00000000
    bne     t8, $zero, lbl_80A9EA2C    
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    lbu     t9, 0x0264(a0)             ## 00000264
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    beql    t9, $zero, lbl_80A9EA20    
    sh      $zero, 0x026A(a0)          ## 0000026A
    beq     $zero, $zero, lbl_80A9EA20 
    sh      t0, 0x026A(a0)             ## 0000026A
    sh      $zero, 0x026A(a0)          ## 0000026A
lbl_80A9EA20:
    sb      t1, 0x0263(a0)             ## 00000263
    beq     $zero, $zero, lbl_80A9EA7C 
    sh      t2, 0x0252(a0)             ## 00000252
lbl_80A9EA2C:
    sh      t3, 0x026A(a0)             ## 0000026A
    lhu     t4, 0x0EF4(v0)             ## 8011B4C4
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    andi    t5, t4, 0x4000             ## t5 = 00000000
    bnel    t5, $zero, lbl_80A9EA80    
    lh      t3, 0x026A(a0)             ## 0000026A
    sh      t6, 0x026A(a0)             ## 0000026A
    lhu     t7, 0x0EE0(v0)             ## 8011B4B0
    addiu   t2, $zero, 0x0004          ## t2 = 00000004
    andi    t8, t7, 0x0400             ## t8 = 00000000
    beql    t8, $zero, lbl_80A9EA7C    
    sh      t2, 0x026A(a0)             ## 0000026A
    lbu     t0, 0x0267(a0)             ## 00000267
    addiu   t9, $zero, 0x0009          ## t9 = 00000009
    sh      t9, 0x026A(a0)             ## 0000026A
    beq     t0, $zero, lbl_80A9EA7C    
    addiu   t1, $zero, 0x000A          ## t1 = 0000000A
    beq     $zero, $zero, lbl_80A9EA7C 
    sh      t1, 0x026A(a0)             ## 0000026A
    sh      t2, 0x026A(a0)             ## 0000026A
lbl_80A9EA7C:
    lh      t3, 0x026A(a0)             ## 0000026A
lbl_80A9EA80:
    lui     t5, %hi(var_80A9F5C0)      ## t5 = 80AA0000
    lui     t6, %hi(func_80A9EAA8)     ## t6 = 80AA0000
    sll     t4, t3,  1                 
    addu    t5, t5, t4                 
    lh      t5, %lo(var_80A9F5C0)(t5)  
    addiu   t6, t6, %lo(func_80A9EAA8) ## t6 = 80A9EAA8
    sw      t6, 0x0240(a0)             ## 00000240
    sh      t5, 0x010E(a0)             ## 0000010E
    jr      $ra                        
    nop


func_80A9EAA8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x1C44(a1)             ## 00001C44
    addiu   a0, a1, 0x20D8             ## a0 = 000020D8
    sw      a0, 0x0024($sp)            
    sw      a1, 0x0034($sp)            
    jal     func_800DD464              
    sw      t6, 0x002C($sp)            
    beq     v0, $zero, lbl_80A9EAE8    
    lw      a0, 0x0024($sp)            
    jal     func_800DD464              
    nop
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     v0, $at, lbl_80A9EAF0      
lbl_80A9EAE8:
    addiu   t7, $zero, 0x000B          ## t7 = 0000000B
    sh      t7, 0x025E(s0)             ## 0000025E
lbl_80A9EAF0:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x0034($sp)            
    beql    v0, $zero, lbl_80A9EBC8    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022B04              
    lw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     v0, $at, lbl_80A9EB64      
    lui     t8, 0x8012                 ## t8 = 80120000
    lhu     t8, -0x4B50(t8)            ## 8011B4B0
    andi    t9, t8, 0x0400             ## t9 = 00000000
    beq     t9, $zero, lbl_80A9EB64    
    nop
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    lui     t0, %hi(var_80A9F5CA)      ## t0 = 80AA0000
    lh      t0, %lo(var_80A9F5CA)(t0)  
    lw      t1, 0x002C($sp)            
    lui     t5, %hi(func_80A9ED40)     ## t5 = 80AA0000
    addiu   t4, $zero, 0x0004          ## t4 = 00000004
    sh      t0, 0x010E(t1)             ## 0000010E
    lh      t2, 0x026A(s0)             ## 0000026A
    addiu   t5, t5, %lo(func_80A9ED40) ## t5 = 80A9ED40
    sh      t4, 0x0252(s0)             ## 00000252
    addiu   t3, t2, 0x0015             ## t3 = 00000015
    sh      t3, 0x025E(s0)             ## 0000025E
    beq     $zero, $zero, lbl_80A9EBD8 
    sw      t5, 0x0240(s0)             ## 00000240
lbl_80A9EB64:
    beq     v0, $zero, lbl_80A9EB8C    
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lui     t6, %hi(var_80A9F5CE)      ## t6 = 80AA0000
    lh      t6, %lo(var_80A9F5CE)(t6)  
    lw      t7, 0x002C($sp)            
    sh      t6, 0x010E(t7)             ## 0000010E
    lh      t8, 0x026A(s0)             ## 0000026A
    addiu   t9, t8, 0x0015             ## t9 = 00000015
    beq     $zero, $zero, lbl_80A9EBD8 
    sh      t9, 0x025E(s0)             ## 0000025E
lbl_80A9EB8C:
    lh      t1, 0x026A(s0)             ## 0000026A
    lbu     t3, 0x0263(s0)             ## 00000263
    sb      t0, 0x0264(s0)             ## 00000264
    addiu   t2, t1, 0x0015             ## t2 = 00000015
    bne     t3, $zero, lbl_80A9EBB4    
    sh      t2, 0x025E(s0)             ## 0000025E
    lui     t4, %hi(func_80A9E9D4)     ## t4 = 80AA0000
    addiu   t4, t4, %lo(func_80A9E9D4) ## t4 = 80A9E9D4
    beq     $zero, $zero, lbl_80A9EBD8 
    sw      t4, 0x0240(s0)             ## 00000240
lbl_80A9EBB4:
    lui     t5, %hi(func_80A9EBEC)     ## t5 = 80AA0000
    addiu   t5, t5, %lo(func_80A9EBEC) ## t5 = 80A9EBEC
    beq     $zero, $zero, lbl_80A9EBD8 
    sw      t5, 0x0240(s0)             ## 00000240
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A9EBC8:
    lw      a1, 0x0034($sp)            
    lui     a2, 0x4248                 ## a2 = 42480000
    jal     func_80022A34              
    addiu   a3, $zero, 0x0006          ## a3 = 00000006
lbl_80A9EBD8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9EBEC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             ## a0 = 000020D8
    lh      t6, 0x0252(s0)             ## 00000252
    bnel    t6, v0, lbl_80A9ECC0       
    lw      $ra, 0x0024($sp)           
    jal     func_800D6110              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A9ECBC    
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, s1                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80A9EC4C    
    nop
    beq     v0, $at, lbl_80A9EC88      
    lui     t8, %hi(var_80A9F5C6)      ## t8 = 80AA0000
    beq     $zero, $zero, lbl_80A9ECC0 
    lw      $ra, 0x0024($sp)           
lbl_80A9EC4C:
    jal     func_800D6218              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f4                   ## $f4 = 100.00
    sw      $zero, 0x0118(s0)          ## 00000118
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a2, $zero, 0x001D          ## a2 = 0000001D
    lui     a3, 0x4348                 ## a3 = 43480000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lui     t7, %hi(func_80A9EE38)     ## t7 = 80AA0000
    addiu   t7, t7, %lo(func_80A9EE38) ## t7 = 80A9EE38
    beq     $zero, $zero, lbl_80A9ECBC 
    sw      t7, 0x0240(s0)             ## 00000240
lbl_80A9EC88:
    lh      t9, 0x026A(s0)             ## 0000026A
    lh      t8, %lo(var_80A9F5C6)(t8)  
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   t0, t9, 0x0015             ## t0 = 00000015
    sh      t0, 0x025E(s0)             ## 0000025E
    sh      t8, 0x010E(s0)             ## 0000010E
    jal     func_800DCE80              
    andi    a1, t8, 0xFFFF             ## a1 = 00000000
    lui     t2, %hi(func_80A9ECD0)     ## t2 = 80AA0000
    addiu   t1, $zero, 0x0005          ## t1 = 00000005
    addiu   t2, t2, %lo(func_80A9ECD0) ## t2 = 80A9ECD0
    sh      t1, 0x0252(s0)             ## 00000252
    sw      t2, 0x0240(s0)             ## 00000240
lbl_80A9ECBC:
    lw      $ra, 0x0024($sp)           
lbl_80A9ECC0:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A9ECD0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x000B          ## t6 = 0000000B
    sh      t6, 0x025E(t7)             ## 0000025E
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    lw      t8, 0x0018($sp)            
    lh      t9, 0x0252(t8)             ## 00000252
    bnel    t9, v0, lbl_80A9ED34       
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beql    v0, $zero, lbl_80A9ED34    
    lw      $ra, 0x0014($sp)           
    jal     func_800D6218              
    lw      a0, 0x001C($sp)            
    lw      t1, 0x0018($sp)            
    lui     t0, %hi(func_80A9E9D4)     ## t0 = 80AA0000
    addiu   t0, t0, %lo(func_80A9E9D4) ## t0 = 80A9E9D4
    sw      t0, 0x0240(t1)             ## 00000240
    lw      $ra, 0x0014($sp)           
lbl_80A9ED34:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9ED40:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             ## a0 = 000020D8
    lh      t6, 0x0252(s0)             ## 00000252
    bnel    t6, v0, lbl_80A9EE28       
    lw      $ra, 0x0024($sp)           
    jal     func_800D6110              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A9EE24    
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, s1                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80A9EDA0    
    nop
    beq     v0, $at, lbl_80A9EDDC      
    nop
    beq     $zero, $zero, lbl_80A9EE28 
    lw      $ra, 0x0024($sp)           
lbl_80A9EDA0:
    jal     func_800D6218              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f4                   ## $f4 = 100.00
    sw      $zero, 0x0118(s0)          ## 00000118
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a2, $zero, 0x000E          ## a2 = 0000000E
    lui     a3, 0x4348                 ## a3 = 43480000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lui     t7, %hi(func_80A9EE38)     ## t7 = 80AA0000
    addiu   t7, t7, %lo(func_80A9EE38) ## t7 = 80A9EE38
    beq     $zero, $zero, lbl_80A9EE24 
    sw      t7, 0x0240(s0)             ## 00000240
lbl_80A9EDDC:
    jal     func_800D6218              
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    lh      t0, 0x026A(s0)             ## 0000026A
    sb      t8, 0x0267(s0)             ## 00000267
    lui     t9, %hi(var_80A9F5D0)      ## t9 = 80AA0000
    lh      t9, %lo(var_80A9F5D0)(t9)  
    addiu   t1, t0, 0x0015             ## t1 = 00000015
    sh      t1, 0x025E(s0)             ## 0000025E
    or      a0, s1, $zero              ## a0 = 00000000
    sh      t9, 0x010E(s0)             ## 0000010E
    jal     func_800DCE80              
    andi    a1, t9, 0xFFFF             ## a1 = 00000000
    lui     t3, %hi(func_80A9ECD0)     ## t3 = 80AA0000
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    addiu   t3, t3, %lo(func_80A9ECD0) ## t3 = 80A9ECD0
    sh      t2, 0x0252(s0)             ## 00000252
    sw      t3, 0x0240(s0)             ## 00000240
lbl_80A9EE24:
    lw      $ra, 0x0024($sp)           
lbl_80A9EE28:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A9EE38:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80A9EE68    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80A9EEC0)     ## t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9EEC0) ## t6 = 80A9EEC0
    beq     $zero, $zero, lbl_80A9EEB0 
    sw      t6, 0x0240(a0)             ## 00000240
lbl_80A9EE68:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t7, 0x0004(v0)             ## 8011A5D4
    lw      a2, 0x0274(a0)             ## 00000274
    lw      a1, 0x0024($sp)            
    bne     t7, $zero, lbl_80A9EEA0    
    lui     $at, 0x42C8                ## $at = 42C80000
    lhu     t8, 0x0EF4(v0)             ## 8011B4C4
    addiu   a2, $zero, 0x000E          ## a2 = 0000000E
    andi    t9, t8, 0x1000             ## t9 = 00000000
    bne     t9, $zero, lbl_80A9EEA0    
    nop
    beq     $zero, $zero, lbl_80A9EEA0 
    addiu   a2, $zero, 0x001D          ## a2 = 0000001D
lbl_80A9EEA0:
    mtc1    $at, $f4                   ## $f4 = 100.00
    lui     a3, 0x4348                 ## a3 = 43480000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80A9EEB0:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9EEC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80A9EF5C      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80A9EF58    
    lw      a1, 0x0018($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t6, 0x0004(v0)             ## 8011A5D4
    lui     t0, %hi(func_80A9E9D4)     ## t0 = 80AA0000
    addiu   t0, t0, %lo(func_80A9E9D4) ## t0 = 80A9E9D4
    bne     t6, $zero, lbl_80A9EF3C    
    addiu   t3, $zero, 0x0006          ## t3 = 00000006
    lhu     v1, 0x0EF4(v0)             ## 8011B4C4
    andi    t7, v1, 0x1000             ## t7 = 00000000
    bne     t7, $zero, lbl_80A9EF30    
    ori     t9, v1, 0x4000             ## t9 = 00004000
    ori     t8, v1, 0x1000             ## t8 = 00001000
    beq     $zero, $zero, lbl_80A9EF34 
    sh      t8, 0x0EF4(v0)             ## 8011B4C4
lbl_80A9EF30:
    sh      t9, 0x0EF4(v0)             ## 8011B4C4
lbl_80A9EF34:
    beq     $zero, $zero, lbl_80A9EF58 
    sw      t0, 0x0240(a1)             ## 00000240
lbl_80A9EF3C:
    lhu     t1, 0x0EF0(v0)             ## 8011B4C0
    lui     t4, %hi(func_80A9E574)     ## t4 = 80AA0000
    addiu   t4, t4, %lo(func_80A9E574) ## t4 = 80A9E574
    ori     t2, t1, 0x1000             ## t2 = 00001000
    sh      t2, 0x0EF0(v0)             ## 8011B4C0
    sh      t3, 0x0252(a1)             ## 00000252
    sw      t4, 0x0240(a1)             ## 00000240
lbl_80A9EF58:
    lw      $ra, 0x0014($sp)           
lbl_80A9EF5C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9EF68:
    sw      a1, 0x0004($sp)            
    lui     t7, %hi(func_80A9EF88)     ## t7 = 80AA0000
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    addiu   t7, t7, %lo(func_80A9EF88) ## t7 = 80A9EF88
    sh      t6, 0x0252(a0)             ## 00000252
    sw      t7, 0x0240(a0)             ## 00000240
    jr      $ra                        
    nop


func_80A9EF88:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0x503D          ## t6 = 0000503D
    sh      t6, 0x010E(s0)             ## 0000010E
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_800597C0              
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    beq     v0, $zero, lbl_80A9EFC8    
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_800597C0              
    addiu   a1, $zero, 0x0008          ## a1 = 00000008
    sh      v0, 0x010E(s0)             ## 0000010E
lbl_80A9EFC8:
    addiu   a0, s1, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80A9EFEC    
    lw      a0, 0x0024($sp)            
    jal     func_800DD464              
    nop
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     v0, $at, lbl_80A9EFF4      
lbl_80A9EFEC:
    addiu   t7, $zero, 0x0008          ## t7 = 00000008
    sh      t7, 0x025E(s0)             ## 0000025E
lbl_80A9EFF4:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022930              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80A9F02C    
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t9, 0x026A(s0)             ## 0000026A
    lui     t1, %hi(func_80A9EF68)     ## t1 = 80AA0000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t1, t1, %lo(func_80A9EF68) ## t1 = 80A9EF68
    addiu   t0, t9, 0x0009             ## t0 = 00000009
    sb      t8, 0x0264(s0)             ## 00000264
    sh      t0, 0x025E(s0)             ## 0000025E
    beq     $zero, $zero, lbl_80A9F038 
    sw      t1, 0x0240(s0)             ## 00000240
lbl_80A9F02C:
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80022A68              
    lui     a2, 0x42C8                 ## a2 = 42C80000
lbl_80A9F038:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A9F04C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x4270                 ## a1 = 42700000
    lw      v0, 0x1C44(t6)             ## 00001C44
    jal     func_80020F04              
    sw      v0, 0x002C($sp)            
    lw      v0, 0x002C($sp)            
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     $at, 0x4120                ## $at = 41200000
    lw      t8, 0x0024(v0)             ## 00000024
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0278             ## a1 = 00000278
    sw      t8, 0x0290(s0)             ## 00000290
    lw      t7, 0x0028(v0)             ## 00000028
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    sw      t7, 0x0294(s0)             ## 00000294
    lw      t8, 0x002C(v0)             ## 0000002C
    sw      t8, 0x0298(s0)             ## 00000298
    lw      t9, -0x5A2C(t9)            ## 8011A5D4
    beq     t9, $zero, lbl_80A9F0C8    
    nop
    lwc1    $f4, 0x0028(v0)            ## 00000028
    mtc1    $at, $f6                   ## $f6 = 10.00
    nop
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0294(s0)            ## 00000294
lbl_80A9F0C8:
    jal     func_80027854              
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    lwl     t1, 0x0280(s0)             ## 00000280
    lwl     t3, 0x0286(s0)             ## 00000286
    lwr     t1, 0x0283(s0)             ## 00000283
    lwr     t3, 0x0289(s0)             ## 00000289
    lbu     t4, 0x0266(s0)             ## 00000266
    swl     t1, 0x0244(s0)             ## 00000244
    swl     t3, 0x024A(s0)             ## 0000024A
    swr     t1, 0x0247(s0)             ## 00000247
    swr     t3, 0x024D(s0)             ## 0000024D
    lhu     t1, 0x0284(s0)             ## 00000284
    lhu     t3, 0x028A(s0)             ## 0000028A
    addiu   a0, s0, 0x0246             ## a0 = 00000246
    sh      t1, 0x0248(s0)             ## 00000248
    bne     t4, $zero, lbl_80A9F120    
    sh      t3, 0x024E(s0)             ## 0000024E
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80A9F120:
    lb      t6, 0x0271(s0)             ## 00000271
    lw      t5, 0x003C($sp)            
    lui     t9, 0x0001                 ## t9 = 00010000
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, t5, t7                 
    addu    t9, t9, t8                 
    lw      t9, 0x17B4(t9)             ## 000117B4
    lui     $at, 0x8000                ## $at = 80000000
    addu    t0, t9, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t0, 0x0C50($at)            ## 80120C50
    lb      t1, 0x0271(s0)             ## 00000271
    bltzl   t1, lbl_80A9F2A4           
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x026E(s0)             ## 0000026E
    beql    t2, $zero, lbl_80A9F19C    
    lw      a0, 0x003C($sp)            
    lh      v0, 0x025E(s0)             ## 0000025E
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A9F190    
    addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
    sh      t3, 0x025E(s0)             ## 0000025E
    lh      a2, 0x025E(s0)             ## 0000025E
    jal     func_80A9E084              
    lw      a1, 0x003C($sp)            
    sh      $zero, 0x025E(s0)          ## 0000025E
lbl_80A9F190:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lw      a0, 0x003C($sp)            
lbl_80A9F19C:
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addiu   a1, $zero, 0x0110          ## a1 = 00000110
    jal     func_80081628              ## ObjectIndex
    addu    a0, a0, $at                
    sb      v0, 0x0270(s0)             ## 00000270
    lb      t4, 0x0270(s0)             ## 00000270
    bltzl   t4, lbl_80A9F2A4           
    lw      $ra, 0x0024($sp)           
    lw      t9, 0x0240(s0)             ## 00000240
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lh      v0, 0x0254(s0)             ## 00000254
    beq     v0, $zero, lbl_80A9F1E4    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0254(s0)             ## 00000254
lbl_80A9F1E4:
    lh      v0, 0x0256(s0)             ## 00000256
    beq     v0, $zero, lbl_80A9F1F8    
    addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
    sh      t5, 0x0256(s0)             ## 00000256
    lh      v0, 0x0256(s0)             ## 00000256
lbl_80A9F1F8:
    lh      t7, 0x0250(s0)             ## 00000250
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    bne     v0, $zero, lbl_80A9F244    
    sh      t8, 0x0250(s0)             ## 00000250
    lh      t0, 0x026C(s0)             ## 0000026C
    addiu   t1, t0, 0x0001             ## t1 = 00000001
    sh      t1, 0x026C(s0)             ## 0000026C
    lh      t2, 0x026C(s0)             ## 0000026C
    slti    $at, t2, 0x0003            
    bne     $at, $zero, lbl_80A9F244   
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f12                  ## $f12 = 60.00
    jal     func_80026D64              
    sh      $zero, 0x026C(s0)          ## 0000026C
    trunc.w.s $f10, $f0                  
    mfc1    t6, $f10                   
    nop
    addiu   t5, t6, 0x0014             ## t5 = 00000014
    sh      t5, 0x0256(s0)             ## 00000256
lbl_80A9F244:
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f0                   ## $f0 = 20.00
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f16                  ## $f16 = 60.00
    addiu   t7, $zero, 0x001D          ## t7 = 0000001D
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f16, 0x0010($sp)          
    addiu   a2, s0, 0x02A0             ## a2 = 000002A0
    or      a1, a2, $zero              ## a1 = 000002A0
    sw      a2, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
lbl_80A9F2A4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9F2B4:
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xDF00                 ## t6 = DF000000
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    sw      $zero, 0x0004(v1)          ## FFFFFFF4
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80A9F2D8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_80A9F320      
    addiu   a0, $zero, 0x0008          ## a0 = 00000008
    lw      v0, 0x0038($sp)            
    lw      v1, 0x003C($sp)            
    lh      t6, 0x0000(v0)             ## 00000000
    lh      t7, 0x0246(v1)             ## 00000246
    lh      t9, 0x0004(v0)             ## 00000004
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v0)             ## 00000000
    lh      t0, 0x0244(v1)             ## 00000244
    addu    t1, t9, t0                 
    sh      t1, 0x0004(v0)             ## 00000004
lbl_80A9F320:
    lw      v0, 0x0038($sp)            
    bne     a1, a0, lbl_80A9F33C       
    lw      v1, 0x003C($sp)            
    lh      t2, 0x0000(v0)             ## 00000000
    lh      t3, 0x024C(v1)             ## 0000024C
    addu    t4, t2, t3                 
    sh      t4, 0x0000(v0)             ## 00000000
lbl_80A9F33C:
    lbu     t5, 0x0265(v1)             ## 00000265
    beql    t5, $zero, lbl_80A9F424    
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     a1, a0, lbl_80A9F360       
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     a1, $at, lbl_80A9F360      
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    bnel    a1, $at, lbl_80A9F424      
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A9F360:
    lw      t6, 0x0028($sp)            
    sll     v1, a1,  2                 
    subu    v1, v1, a1                 
    sll     v1, v1,  3                 
    lw      t7, 0x009C(t6)             ## 0000009C
    addu    v1, v1, a1                 
    sll     v1, v1,  1                 
    addiu   t8, v1, 0x0814             ## t8 = 00000814
    multu   t7, t8                     
    sw      v1, 0x0018($sp)            
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lw      v0, 0x0038($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f8                   ## $f8 = 200.00
    lh      t9, 0x0002(v0)             ## 00000002
    lw      v1, 0x0018($sp)            
    mul.s   $f10, $f0, $f8             
    mtc1    t9, $f4                    ## $f4 = 0.00
    addiu   t4, v1, 0x0940             ## t4 = 00000940
    cvt.s.w $f6, $f4                   
    add.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0002(v0)             ## 00000002
    lw      t2, 0x0028($sp)            
    lw      t3, 0x009C(t2)             ## 0000009C
    multu   t3, t4                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lw      v0, 0x0038($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f6                   ## $f6 = 200.00
    lh      t5, 0x0004(v0)             ## 00000004
    mul.s   $f10, $f0, $f6             
    mtc1    t5, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0004(v0)             ## 00000004
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A9F424:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9F434:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x026E(s0)             ## 0000026E
    lw      a2, 0x0000(a1)             ## 00000000
    beq     t6, $zero, lbl_80A9F538    
    or      a0, a2, $zero              ## a0 = 00000000
    sw      a2, 0x0044($sp)            
    jal     func_8007E298              
    sw      a1, 0x0054($sp)            
    lw      v1, 0x0044($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t8, 0xFB00                 ## t8 = FB000000
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(v1)             ## 000002C0
    sw      t9, 0x0004(v0)             ## 00000004
    sw      t8, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t2, 0xDB06                 ## t2 = DB060000
    ori     t2, t2, 0x0020             ## t2 = DB060020
    addiu   t1, v0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(v1)             ## 000002C0
    sw      t2, 0x0000(v0)             ## 00000000
    lh      t3, 0x026C(s0)             ## 0000026C
    lui     a3, %hi(var_80A9F5D8)      ## a3 = 80AA0000
    lui     t9, 0x8012                 ## t9 = 80120000
    sll     t4, t3,  2                 
    addu    a3, a3, t4                 
    lw      a3, %lo(var_80A9F5D8)(a3)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t6, a3,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, 0x0C38(t9)             ## 80120C38
    and     t5, a3, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t1, t5, t9                 
    addu    t2, t1, $at                
    sw      t2, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t4, 0xDB06                 ## t4 = DB060000
    ori     t4, t4, 0x0030             ## t4 = DB060030
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(v1)             ## 000002C0
    sw      t4, 0x0000(v0)             ## 00000000
    lw      t6, 0x0054($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_80A9F2B4              
    sw      v0, 0x0034($sp)            
    lw      t0, 0x0034($sp)            
    lui     t7, %hi(func_80A9F2D8)     ## t7 = 80AA0000
    addiu   t7, t7, %lo(func_80A9F2D8) ## t7 = 80A9F2D8
    sw      v0, 0x0004(t0)             ## 00000004
    lw      a1, 0x0140(s0)             ## 00000140
    lw      a2, 0x015C(s0)             ## 0000015C
    lbu     a3, 0x013E(s0)             ## 0000013E
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      t7, 0x0010($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0054($sp)            
lbl_80A9F538:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A9F550: .word 0x013C0400, 0x00000019, 0x01100000, 0x000002EC
.word func_80A9DF70
.word func_80A9E058
.word func_80A9F04C
.word 0x00000000
var_80A9F570: .word \
0x50365070, 0x50725037, 0x50385039, 0x503A503B, \
0x503D503C
var_80A9F584: .word 0x02000400, 0x08001000, 0x20004000, 0x80000000
var_80A9F594: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010100, \
0x000A000A, 0x00000000, 0x00000000
var_80A9F5C0: .byte 0x50, 0x3E, 0x50, 0x3F, 0x50, 0x47
var_80A9F5C6: .word 0x50405042
var_80A9F5CA: .word 0x50435044
var_80A9F5CE: .byte 0x00, 0xCF
var_80A9F5D0: .word 0x50455042, 0x50270000
var_80A9F5D8: .word \
0x060008C8, 0x060010C8, 0x060018C8, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A9F5F0: .word var_80A9E15C
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E1A8
.word var_80A9E15C
.word var_80A9E110
.word var_80A9E10C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word lbl_80A9E23C
.word var_80A9E1A8
.word var_80A9E15C
.word var_80A9E15C
.word var_80A9E1A8
.word var_80A9E15C
.word var_80A9E1A8
.word var_80A9E1A8
.word var_80A9E1A8
.word var_80A9E1A8
.word var_80A9E15C
var_80A9F668: .word 0x44C94000, 0x00000000

