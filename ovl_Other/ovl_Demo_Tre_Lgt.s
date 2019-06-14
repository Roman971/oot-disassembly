#include <mips.h>
.set noreorder
.set noat

.section .text
func_80977770:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, %hi(var_80977E00)      ## a3 = 80970000
    lw      a3, %lo(var_80977E00)(a3)  
    addiu   a2, a2, 0x5EB8             ## a2 = 06005EB8
    lw      a0, 0x0024($sp)            
    jal     func_80059C00              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
    sw      v0, 0x0160(s0)             ## 00000160
    sw      v0, 0x0164(s0)             ## 00000164
    sb      $zero, 0x0168(s0)          ## 00000168
    jal     func_809777F8              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809777CC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_80059CB0              
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809777F8:
    sw      $zero, 0x015C(a0)          ## 0000015C
    jr      $ra                        
    nop


func_80977804:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      v1, 0x0118(a3)             ## 00000118
    lui     a1, 0x4120                 ## a1 = 41200000
    beq     v1, $zero, lbl_8097784C    
    addiu   a0, v1, 0x0154             ## a0 = 00000154
    sw      v1, 0x001C($sp)            
    jal     func_8008D6A8              
    sw      a3, 0x0020($sp)            
    lw      v1, 0x001C($sp)            
    beq     v0, $zero, lbl_8097784C    
    lw      a3, 0x0020($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_8097785C              
    lw      a2, 0x016C(v1)             ## 0000016C
lbl_8097784C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_8097785C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
    mtc1    a2, $f12                   ## $f12 = 0.00
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t7, 0x0030($sp)            
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    lui     v0, 0x8012                 ## v0 = 80120000
    sw      t6, 0x015C(t7)             ## 0000015C
    lw      v0, -0x5A2C(v0)            ## 8011A5D4
    lui     t0, %hi(var_80977DC0)      ## t0 = 80970000
    addiu   t0, t0, %lo(var_80977DC0)  ## t0 = 80977DC0
    sll     t9, v0,  4                 
    addu    v1, t9, t0                 
    lwc1    $f4, 0x0008(v1)            ## 00000008
    lwc1    $f6, 0x0004(v1)            ## 00000004
    lw      a0, 0x0030($sp)            
    lui     a1, %hi(var_80977E00)      ## a1 = 80970000
    add.s   $f8, $f4, $f6              
    sll     t8, v0,  2                 
    addu    a1, a1, t8                 
    mfc1    a2, $f0                    
    mfc1    a3, $f8                    
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    sw      a0, 0x0020($sp)            
    lw      a1, %lo(var_80977E00)(a1)  
    swc1    $f0, 0x0014($sp)           
    jal     func_80059CE0              
    swc1    $f12, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    jal     func_80059D18              
    lw      a1, 0x0020($sp)            
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809778F4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     a2, %hi(var_80977DC0)      ## a2 = 80970000
    lui     a3, 0x8012                 ## a3 = 80120000
    addiu   a3, a3, 0xA5D0             ## a3 = 8011A5D0
    addiu   a2, a2, %lo(var_80977DC0)  ## a2 = 80977DC0
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v1, 0x0004(a3)             ## 8011A5D4
    lwc1    $f0, 0x0154(s0)            ## 00000154
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    sll     t6, v1,  4                 
    addu    t7, a2, t6                 
    lwc1    $f4, 0x0004(t7)            ## 00000004
    sll     t9, v1,  4                 
    lui     $at, 0x437F                ## $at = 437F0000
    c.lt.s  $f0, $f4                   
    addu    v0, a2, t9                 
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    bc1fl   lbl_8097795C               
    lwc1    $f2, 0x0008(v0)            ## 00000008
    mtc1    $at, $f14                  ## $f14 = 255.00
    beq     $zero, $zero, lbl_80977A24 
    sw      t8, 0x0160(s0)             ## 00000160
    lwc1    $f2, 0x0008(v0)            ## 00000008
lbl_8097795C:
    lwc1    $f12, 0x0004(v0)           ## 00000004
    lui     $at, 0x437F                ## $at = 437F0000
    add.s   $f6, $f2, $f12             
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_80977A20               
    mtc1    $at, $f14                  ## $f14 = 255.00
    sub.s   $f8, $f12, $f0             
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f14                  ## $f14 = 255.00
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    div.s   $f10, $f8, $f2             
    lui     $at, 0x4F00                ## $at = 4F000000
    mul.s   $f16, $f10, $f14           
    add.s   $f18, $f16, $f14           
    cfc1    t0, $f31                   
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f4, $f18                  
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             ## t1 = 00000000
    beql    t1, $zero, lbl_80977A04    
    mfc1    t1, $f4                    
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             ## t1 = 00000000
    bne     t1, $zero, lbl_809779F8    
    nop
    mfc1    t1, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80977A10 
    or      t1, t1, $at                ## t1 = 80000000
lbl_809779F8:
    beq     $zero, $zero, lbl_80977A10 
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    mfc1    t1, $f4                    
lbl_80977A04:
    nop
    bltz    t1, lbl_809779F8           
    nop
lbl_80977A10:
    ctc1    t0, $f31                   
    beq     $zero, $zero, lbl_80977A24 
    sw      t1, 0x0160(s0)             ## 00000160
    mtc1    $at, $f14                  ## $f14 = 0.00
lbl_80977A20:
    sw      $zero, 0x0160(s0)          ## 00000160
lbl_80977A24:
    lw      v0, 0x0004(a3)             ## 8011A5D4
    lui     $at, 0x4120                ## $at = 41200000
    sll     t2, v0,  4                 
    addu    t3, a2, t2                 
    lwc1    $f6, 0x000C(t3)            ## 0000000C
    sll     t5, v0,  4                 
    addu    t6, a2, t5                 
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80977A5C               
    mtc1    $at, $f2                   ## $f2 = 10.00
    beq     $zero, $zero, lbl_80977B20 
    sw      t4, 0x0164(s0)             ## 00000164
    mtc1    $at, $f2                   ## $f2 = 10.00
lbl_80977A5C:
    lwc1    $f8, 0x000C(t6)            ## 0000000C
    sll     t7, v0,  4                 
    addu    t8, a2, t7                 
    add.s   $f10, $f8, $f2             
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80977B20               
    sw      $zero, 0x0164(s0)          ## 00000164
    lwc1    $f16, 0x000C(t8)           ## 0000010B
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lui     $at, 0x4F00                ## $at = 4F000000
    sub.s   $f18, $f16, $f0            
    div.s   $f4, $f18, $f2             
    mul.s   $f6, $f4, $f14             
    add.s   $f8, $f6, $f14             
    cfc1    t9, $f31                   
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             ## t0 = 00000000
    beql    t0, $zero, lbl_80977B04    
    mfc1    t0, $f10                   
    mtc1    $at, $f10                  ## $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             ## t0 = 00000000
    bne     t0, $zero, lbl_80977AF8    
    nop
    mfc1    t0, $f10                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80977B10 
    or      t0, t0, $at                ## t0 = 80000000
lbl_80977AF8:
    beq     $zero, $zero, lbl_80977B10 
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    mfc1    t0, $f10                   
lbl_80977B04:
    nop
    bltz    t0, lbl_80977AF8           
    nop
lbl_80977B10:
    ctc1    t9, $f31                   
    beq     $zero, $zero, lbl_80977B20 
    sw      t0, 0x0164(s0)             ## 00000164
    sw      $zero, 0x0164(s0)          ## 00000164
lbl_80977B20:
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f16                  ## $f16 = 30.00
    nop
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80977B7C               
    lw      a0, 0x002C($sp)            
    lbu     v0, 0x0168(s0)             ## 00000168
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    andi    t1, v0, 0x0001             ## t1 = 00000000
    bne     t1, $zero, lbl_80977B78    
    ori     t2, v0, 0x0001             ## t2 = 00000001
    lui     t3, 0x8010                 ## t3 = 80100000
    sb      t2, 0x0168(s0)             ## 00000168
    addiu   t3, t3, 0x43A8             ## t3 = 801043A8
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2884          ## a0 = 00002884
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_80977B78:
    lw      a0, 0x002C($sp)            
lbl_80977B7C:
    jal     func_80059D18              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    beql    v0, $zero, lbl_80977B98    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80977B98:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80977BA8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x015C(a0)             ## 0000015C
    lui     t9, %hi(var_80977E08)      ## t9 = 80970000
    sll     t7, t6,  2                 
    addu    t9, t9, t7                 
    lw      t9, %lo(var_80977E08)(t9)  
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80977BDC:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0038($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a0, 0x0058($sp)            
    sw      a1, 0x005C($sp)            
    sw      a3, 0x0064($sp)            
    lw      t6, 0x0058($sp)            
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    lw      t0, 0x0000(t6)             ## 00000000
    lw      v0, 0x02D0(t0)             ## 000002D0
    addiu   t2, $zero, 0x0040          ## t2 = 00000040
    addiu   t3, $zero, 0x0020          ## t3 = 00000020
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(t0)             ## 000002D0
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t9, 0x0058($sp)            
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t7, $zero, 0x0040          ## t7 = 00000040
    lw      v1, 0x009C(t9)             ## 0000009C
    lw      a0, 0x0000(t9)             ## 00000000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    subu    $at, $zero, v1             
    sll     t5, $at,  1                
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    sll     a2, v1,  1                 
    andi    a2, a2, 0x00FF             ## a2 = 00000000
    sw      t6, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t0, 0x004C($sp)            
    sw      t8, 0x0028($sp)            
    sw      t7, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8007EB84              
    sw      v0, 0x0044($sp)            
    lw      t1, 0x0044($sp)            
    lw      a0, 0x0064($sp)            
    lw      t0, 0x004C($sp)            
    sw      v0, 0x0004(t1)             ## 00000004
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bnel    s0, $at, lbl_80977CD0      
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    lw      v0, 0x02D0(t0)             ## 000002D0
    lui     t2, 0xFA00                 ## t2 = FA000000
    ori     t2, t2, 0x0080             ## t2 = FA000080
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(t0)             ## 000002D0
    sw      t2, 0x0000(v0)             ## 00000000
    lw      t3, 0x0160(a0)             ## 00000160
    addiu   $at, $zero, 0xB400         ## $at = FFFFB400
    andi    t4, t3, 0x00FF             ## t4 = 00000000
    or      t5, t4, $at                ## t5 = FFFFB400
    sw      t5, 0x0004(v0)             ## 00000004
    beq     $zero, $zero, lbl_80977D20 
    lw      $ra, 0x003C($sp)           
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
lbl_80977CD0:
    beq     s0, $at, lbl_80977CF0      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     s0, $at, lbl_80977CF0      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     s0, $at, lbl_80977CF0      
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    s0, $at, lbl_80977D20      
    lw      $ra, 0x003C($sp)           
lbl_80977CF0:
    lw      v0, 0x02D0(t0)             ## 000002D0
    lui     t7, 0xFA00                 ## t7 = FA000000
    ori     t7, t7, 0x0080             ## t7 = FA000080
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(t0)             ## 000002D0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t8, 0x0164(a0)             ## 00000164
    addiu   $at, $zero, 0xB400         ## $at = FFFFB400
    andi    t9, t8, 0x00FF             ## t9 = 00000000
    or      t2, t9, $at                ## t2 = FFFFB400
    sw      t2, 0x0004(v0)             ## 00000004
    lw      $ra, 0x003C($sp)           
lbl_80977D20:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80977D30:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    lw      a2, 0x0000(a1)             ## 00000000
    lw      t6, 0x0030($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    lw      t7, 0x015C(t6)             ## 0000015C
    bnel    t7, $at, lbl_80977DB0      
    lw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8007E2C0              
    sw      a2, 0x002C($sp)            
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0034($sp)            
    lw      t0, 0x002C($sp)            
    lw      v1, 0x02D0(t0)             ## 000002D0
    lui     t9, 0xFB00                 ## t9 = FB000000
    lui     t1, 0xC8FF                 ## t1 = C8FF0000
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(t0)             ## 000002D0
    sw      t1, 0x0004(v1)             ## 00000004
    sw      t9, 0x0000(v1)             ## 00000000
    lui     a3, %hi(func_80977BDC)     ## a3 = 80970000
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sw      t2, 0x0014($sp)            
    addiu   a3, a3, %lo(func_80977BDC) ## a3 = 80977BDC
    addiu   a2, a0, 0x013C             ## a2 = 0000013C
    sw      $zero, 0x0010($sp)         
    jal     func_8005A36C              
    sw      a0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80977DB0:
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80977DC0: .word \
0x3F800000, 0x43080000, 0x433E0000, 0x42200000, \
0x3F800000, 0x43080000, 0x435C0000, 0x42480000
var_80977DE0: .word 0x00AA0700, 0x00000010, 0x000E0000, 0x0000016C
.word func_80977770
.word func_809777CC
.word func_80977BA8
.word func_80977D30
var_80977E00: .word 0x06004B60, 0x06004F70
var_80977E08: .word func_80977804
.word func_809778F4

.section .rodata


