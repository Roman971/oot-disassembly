#include <mips.h>
.set noreorder
.set noat

.section .text
func_80917B70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x001C(a0)             ## 0000001C
    lui     a1, %hi(var_80918860)      ## a1 = 80920000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80917BA0    
    addiu   a1, a1, %lo(var_80918860)  ## a1 = 80918860
    beq     v0, $at, lbl_80917BBC      
    lui     t7, 0x8012                 ## t7 = 80120000
    beq     $zero, $zero, lbl_80917BF0 
    lw      $ra, 0x0014($sp)           
lbl_80917BA0:
    jal     func_80063F7C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80917C0C)     ## t6 = 80910000
    addiu   t6, t6, %lo(func_80917C0C) ## t6 = 80917C0C
    beq     $zero, $zero, lbl_80917BEC 
    sw      t6, 0x0140(a0)             ## 00000140
lbl_80917BBC:
    lhu     t7, -0x4B54(t7)            ## FFFFB4AC
    lui     t9, %hi(func_80917E3C)     ## t9 = 80910000
    addiu   t9, t9, %lo(func_80917E3C) ## t9 = 80917E3C
    andi    t8, t7, 0x0800             ## t8 = 00000000
    bne     t8, $zero, lbl_80917BE4    
    nop
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sw      t9, 0x0140(a0)             ## 00000140
    beq     $zero, $zero, lbl_80917BEC 
    swc1    $f4, 0x013C(a0)            ## 0000013C
lbl_80917BE4:
    jal     func_80020EB4              
    nop
lbl_80917BEC:
    lw      $ra, 0x0014($sp)           
lbl_80917BF0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80917BFC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80917C0C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80917C1C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0140(a0)             ## 00000140
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80917C40:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80917C68    
    nop
    beq     v0, $at, lbl_80917C78      
    nop
    beq     $zero, $zero, lbl_80917C84 
    lw      $ra, 0x0014($sp)           
lbl_80917C68:
    jal     func_80917C90              
    nop
    beq     $zero, $zero, lbl_80917C84 
    lw      $ra, 0x0014($sp)           
lbl_80917C78:
    jal     func_80917F04              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80917C84:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80917C90:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s2, 0x0028($sp)            
    or      s2, a1, $zero              ## s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sw      a0, 0x0060($sp)            
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              ## s1 = 00000000
    lw      v0, 0x02C0(s1)             ## 000002C0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(s1)             ## 000002C0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    or      s0, v0, $zero              ## s0 = 00000000
    sw      v0, 0x0004(s0)             ## 00000004
    lui     t8, 0x8012                 ## t8 = 80120000
    lw      t8, -0x5A2C(t8)            ## 8011A5D4
    lui     t5, 0xDE00                 ## t5 = DE000000
    bnel    t8, $zero, lbl_80917D20    
    lw      v0, 0x02C0(s1)             ## 000002C0
    lw      v0, 0x02C0(s1)             ## 000002C0
    lui     t3, 0x0601                 ## t3 = 06010000
    addiu   t3, t3, 0x8190             ## t3 = 06008190
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s1)             ## 000002C0
    lui     t2, 0xDE00                 ## t2 = DE000000
    sw      t2, 0x0000(v0)             ## 00000000
    sw      t3, 0x0004(v0)             ## 00000004
    beq     $zero, $zero, lbl_80917E28 
    lw      $ra, 0x002C($sp)           
    lw      v0, 0x02C0(s1)             ## 000002C0
lbl_80917D20:
    lui     t6, 0x0600                 ## t6 = 06000000
    addiu   t6, t6, 0x7E20             ## t6 = 06007E20
    addiu   t4, v0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02C0(s1)             ## 000002C0
    sw      t6, 0x0004(v0)             ## 00000004
    sw      t5, 0x0000(v0)             ## 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             ## 00000000
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    lui     $at, 0x0001                ## $at = 00010000
    addu    t1, s2, $at                
    sw      t8, 0x0000(s0)             ## 00000000
    lw      a2, 0x1DE4(t1)             ## 00001DE4
    lw      a0, 0x0000(s2)             ## 00000000
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    sw      t9, 0x0010($sp)            
    sw      t1, 0x0034($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a3, $zero, 0x0040          ## a3 = 00000040
    sw      s0, 0x0044($sp)            
    jal     func_8007EB00              
    andi    a2, a2, 0x007F             ## a2 = 00000000
    lw      v1, 0x0044($sp)            
    lw      t1, 0x0034($sp)            
    lui     t3, 0xDB06                 ## t3 = DB060000
    sw      v0, 0x0004(v1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    ori     t3, t3, 0x0024             ## t3 = DB060024
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    addiu   t2, s0, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    sw      t3, 0x0000(s0)             ## 00000000
    lw      a2, 0x1DE4(t1)             ## 00001DE4
    lw      a0, 0x0000(s2)             ## 00000000
    sw      t4, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a3, $zero, 0x0040          ## a3 = 00000040
    sw      s0, 0x0040($sp)            
    jal     func_8007EB00              
    andi    a2, a2, 0x007F             ## a2 = 00000000
    lw      t0, 0x0040($sp)            
    sw      v0, 0x0004(t0)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t6, 0xDA38                 ## t6 = DA380000
    ori     t6, t6, 0x0003             ## t6 = DA380003
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 000002D0
    sw      t6, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x003C($sp)            
    lw      a1, 0x003C($sp)            
    lui     t8, 0xDE00                 ## t8 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t9, 0x0600                 ## t9 = 06000000
    addiu   t9, t9, 0x7EE0             ## t9 = 06007EE0
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0004(s0)             ## 00000004
    sw      t8, 0x0000(s0)             ## 00000000
    lw      $ra, 0x002C($sp)           
lbl_80917E28:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80917E3C:
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, a1                 
    lh      t6, 0x1D32(t6)             ## 00011D32
    lui     t7, %hi(func_80917E64)     ## t7 = 80910000
    addiu   t7, t7, %lo(func_80917E64) ## t7 = 80917E64
    beq     t6, $zero, lbl_80917E5C    
    nop
    sw      t7, 0x0140(a0)             ## 00000140
lbl_80917E5C:
    jr      $ra                        
    nop


func_80917E64:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f2                   ## $f2 = 1.00
    sw      a1, 0x0004($sp)            
    lwc1    $f0, 0x013C(a0)            ## 0000013C
    lui     t6, %hi(func_80917EAC)     ## t6 = 80910000
    lui     $at, %hi(var_80918870)     ## $at = 80920000
    c.lt.s  $f0, $f2                   
    addiu   t6, t6, %lo(func_80917EAC) ## t6 = 80917EAC
    bc1fl   lbl_80917EA0               
    swc1    $f2, 0x013C(a0)            ## 0000013C
    lwc1    $f4, %lo(var_80918870)($at) 
    add.s   $f6, $f0, $f4              
    jr      $ra                        
    swc1    $f6, 0x013C(a0)            ## 0000013C
lbl_80917E9C:
    swc1    $f2, 0x013C(a0)            ## 0000013C
lbl_80917EA0:
    sw      t6, 0x0140(a0)             ## 00000140
    jr      $ra                        
    nop


func_80917EAC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, %hi(var_80918874)     ## $at = 80920000
    lwc1    $f4, %lo(var_80918874)($at) 
    lwc1    $f0, 0x013C(a0)            ## 0000013C
    lui     $at, %hi(var_80918878)     ## $at = 80920000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80917EEC               
    mtc1    $zero, $f10                ## $f10 = 0.00
    lwc1    $f6, %lo(var_80918878)($at) 
    sub.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80917EF4 
    swc1    $f8, 0x013C(a0)            ## 0000013C
    mtc1    $zero, $f10                ## $f10 = 0.00
lbl_80917EEC:
    jal     func_80020EB4              
    swc1    $f10, 0x013C(a0)           ## 0000013C
lbl_80917EF4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80917F04:
    addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    or      s2, a0, $zero              ## s2 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    lui     $at, 0x438A                ## $at = 438A0000
    mtc1    $at, $f14                  ## $f14 = 276.00
    mtc1    $zero, $f12                ## $f12 = 0.00
    lui     a2, 0x448C                 ## a2 = 448C0000
    lw      s1, 0x0000(s3)             ## 00000000
    ori     a2, a2, 0x4000             ## a2 = 448C4000
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     $at, %hi(var_8091887C)     ## $at = 80920000
    lwc1    $f12, %lo(var_8091887C)($at) 
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f6                   ## $f6 = 7.00
    lwc1    $f4, 0x013C(s2)            ## 0000013C
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mov.s   $f14, $f12                 
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_800AA8FC              
    nop
    lui     $at, %hi(var_80918880)     ## $at = 80920000
    lwc1    $f12, %lo(var_80918880)($at) 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    jal     func_8007E298              
    lw      a0, 0x0000(s3)             ## 00000000
    jal     func_800AA6EC              
    nop
    lui     $at, 0x431B                ## $at = 431B0000
    mtc1    $at, $f2                   ## $f2 = 155.00
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f12                  ## $f12 = 255.00
    nop
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xE700                 ## t7 = E7000000
    addiu   t6, s0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t7, 0x0000(s0)             ## 00000000
    lw      a0, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    ori     t9, t9, 0x0080             ## t9 = FA000080
    addiu   t8, a0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(a0)             ## 00000000
    lwc1    $f0, 0x013C(s2)            ## 0000013C
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    mul.s   $f10, $f0, $f12            
    cfc1    t2, $f31                   
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    beq     v0, $zero, lbl_80918048    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f16                  ## $f16 = 2147484000.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    bne     v0, $zero, lbl_80918040    
    nop
    mfc1    v0, $f16                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918058 
    or      v0, v0, $at                ## v0 = 80000000
lbl_80918040:
    beq     $zero, $zero, lbl_80918058 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80918048:
    mfc1    v0, $f16                   
    nop
    bltz    v0, lbl_80918040           
    nop
lbl_80918058:
    ctc1    t2, $f31                   
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    andi    v0, v0, 0x00FF             ## v0 = 000000FF
    mul.s   $f18, $f2, $f0             
    sll     t3, v0, 24                 
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f4, $f18                  
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             ## t5 = 00000000
    beq     t5, $zero, lbl_809180D4    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             ## t5 = 00000000
    bne     t5, $zero, lbl_809180CC    
    nop
    mfc1    t5, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_809180E4 
    or      t5, t5, $at                ## t5 = 80000000
lbl_809180CC:
    beq     $zero, $zero, lbl_809180E4 
    addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
lbl_809180D4:
    mfc1    t5, $f4                    
    nop
    bltz    t5, lbl_809180CC           
    nop
lbl_809180E4:
    or      t6, t5, $zero              ## t6 = FFFFFFFF
    addiu   t7, t6, 0x0064             ## t7 = 00000063
    andi    t8, t7, 0x00FF             ## t8 = 00000063
    sll     t9, t8, 16                 
    ctc1    t4, $f31                   
    sll     t4, v0,  8                 
    or      t2, t3, t9                 ## t2 = FA000080
    or      t5, t2, t4                 ## t5 = FA000080
    or      t6, t5, v0                 ## t6 = FA0000FF
    sw      t6, 0x0004(a0)             ## 00000004
    lw      a1, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xFB00                 ## t8 = FB000000
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    addiu   t7, a1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t8, 0x0000(a1)             ## 00000000
    lwc1    $f0, 0x013C(s2)            ## 0000013C
    mul.s   $f6, $f0, $f2              
    cfc1    t3, $f31                   
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             ## t9 = 00000000
    beq     t9, $zero, lbl_80918194    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f8                   ## $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             ## t9 = 00000000
    bne     t9, $zero, lbl_8091818C    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_809181A4 
    or      t9, t9, $at                ## t9 = 80000000
lbl_8091818C:
    beq     $zero, $zero, lbl_809181A4 
    addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
lbl_80918194:
    mfc1    t9, $f8                    
    nop
    bltz    t9, lbl_8091818C           
    nop
lbl_809181A4:
    ctc1    t3, $f31                   
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t5, t9, 0x0064             ## t5 = 00000063
    mul.s   $f10, $f12, $f0            
    sll     t6, t5, 24                 
    cfc1    t7, $f31                   
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             ## t8 = 00000000
    beq     t8, $zero, lbl_80918220    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f16                  ## $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             ## t8 = 00000000
    bne     t8, $zero, lbl_80918218    
    nop
    mfc1    t8, $f16                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918230 
    or      t8, t8, $at                ## t8 = 80000000
lbl_80918218:
    beq     $zero, $zero, lbl_80918230 
    addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
lbl_80918220:
    mfc1    t8, $f16                   
    nop
    bltz    t8, lbl_80918218           
    nop
lbl_80918230:
    andi    t9, t8, 0x00FF             ## t9 = 000000FF
    sll     t2, t9, 16                 
    or      t4, t6, t2                 ## t4 = FA0000FF
    ctc1    t7, $f31                   
    ori     t5, t4, 0x0080             ## t5 = FA0000FF
    sw      t5, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t8, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s3)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x0078($sp)            
    lw      t0, 0x0078($sp)            
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    sw      v0, 0x0004(t0)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     v1, 0x0001                 ## v1 = 00010000
    addu    v1, v1, s3                 
    addiu   t3, s0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(s0)             ## 00000000
    lw      v1, 0x1DE4(v1)             ## 00011DE4
    lw      a0, 0x0000(s3)             ## 00000000
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    andi    v1, v1, 0x007F             ## v1 = 00000000
    subu    $at, $zero, v1             
    sll     t5, v1,  2                 
    addiu   t2, $zero, 0x0040          ## t2 = 00000040
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    addiu   t8, $zero, 0x0040          ## t8 = 00000040
    sw      t8, 0x0028($sp)            
    sw      t7, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t5, 0x001C($sp)            
    sll     a2, $at,  1                
    sw      t6, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x0074($sp)            
    lw      t1, 0x0074($sp)            
    lui     t9, 0xDE00                 ## t9 = DE000000
    sw      v0, 0x0004(t1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t6, 0x0600                 ## t6 = 06000000
    addiu   t6, t6, 0x0880             ## t6 = 06000880
    addiu   t3, s0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s1)             ## 000002D0
    sw      t6, 0x0004(s0)             ## 00000004
    sw      t9, 0x0000(s0)             ## 00000000
    jal     func_800AA724              
    nop
    jal     func_800AA6EC              
    nop
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f2                   ## $f2 = 200.00
    nop
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t4, 0xE700                 ## t4 = E7000000
    addiu   t2, s0, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t4, 0x0000(s0)             ## 00000000
    lw      a0, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xFA00                 ## t7 = FA000000
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    addiu   t5, a0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0000(a0)             ## 00000000
    lwc1    $f18, 0x013C(s2)           ## 0000013C
    lui     t5, 0xFB00                 ## t5 = FB000000
    mul.s   $f4, $f18, $f2             
    cfc1    t8, $f31                   
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f6, $f4                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    beq     t3, $zero, lbl_809183D4    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f6                   ## $f6 = 2147484000.00
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    bne     t3, $zero, lbl_809183CC    
    nop
    mfc1    t3, $f6                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_809183E4 
    or      t3, t3, $at                ## t3 = 80000000
lbl_809183CC:
    beq     $zero, $zero, lbl_809183E4 
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
lbl_809183D4:
    mfc1    t3, $f6                    
    nop
    bltz    t3, lbl_809183CC           
    nop
lbl_809183E4:
    andi    t6, t3, 0x00FF             ## t6 = 000000FF
    addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
    ctc1    t8, $f31                   
    or      t2, t6, $at                ## t2 = FFFFFFFF
    sw      t2, 0x0004(a0)             ## 00000004
    lw      a1, 0x02D0(s1)             ## 000002D0
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f8                   ## $f8 = 255.00
    addiu   t4, a1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 000002D0
    sw      t5, 0x0000(a1)             ## 00000000
    lwc1    $f0, 0x013C(s2)            ## 0000013C
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    mul.s   $f10, $f0, $f8             
    cfc1    t7, $f31                   
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    beq     v0, $zero, lbl_80918484    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f16                  ## $f16 = 2147484000.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    bne     v0, $zero, lbl_8091847C    
    nop
    mfc1    v0, $f16                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918494 
    or      v0, v0, $at                ## v0 = 80000000
lbl_8091847C:
    beq     $zero, $zero, lbl_80918494 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80918484:
    mfc1    v0, $f16                   
    nop
    bltz    v0, lbl_8091847C           
    nop
lbl_80918494:
    ctc1    t7, $f31                   
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    andi    v0, v0, 0x00FF             ## v0 = 000000FF
    mul.s   $f18, $f2, $f0             
    sll     t8, v0, 24                 
    sll     t3, v0, 16                 
    or      t9, t8, t3                 ## t9 = FFFFFFFF
    sll     t6, v0,  8                 
    or      t2, t9, t6                 ## t2 = FFFFFFFF
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f4, $f18                  
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             ## t5 = 00000000
    beq     t5, $zero, lbl_80918520    
    lui     $at, 0x4F00                ## $at = 4F000000
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             ## t5 = 00000000
    bne     t5, $zero, lbl_80918518    
    nop
    mfc1    t5, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918530 
    or      t5, t5, $at                ## t5 = 80000000
lbl_80918518:
    beq     $zero, $zero, lbl_80918530 
    addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
lbl_80918520:
    mfc1    t5, $f4                    
    nop
    bltz    t5, lbl_80918518           
    nop
lbl_80918530:
    andi    t8, t5, 0x00FF             ## t8 = 000000FF
    ctc1    t4, $f31                   
    or      t3, t2, t8                 ## t3 = FFFFFFFF
    sw      t3, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t6, 0xDA38                 ## t6 = DA380000
    ori     t6, t6, 0x0003             ## t6 = DA380003
    addiu   t9, s0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s1)             ## 000002D0
    sw      t6, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s3)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x0060($sp)            
    lw      a1, 0x0060($sp)            
    lui     t5, 0xDE00                 ## t5 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t7, 0x0600                 ## t7 = 06000000
    addiu   t7, t7, 0x09C0             ## t7 = 060009C0
    addiu   t4, s0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0004(s0)             ## 00000004
    sw      t5, 0x0000(s0)             ## 00000000
    jal     func_800AA724              
    nop
    jal     func_800AA6EC              
    nop
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f2                   ## $f2 = 200.00
    nop
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xE700                 ## t8 = E7000000
    addiu   t2, s0, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t8, 0x0000(s0)             ## 00000000
    lw      a0, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t3, a0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(a0)             ## 00000000
    lwc1    $f6, 0x013C(s2)            ## 0000013C
    lui     $at, 0x4F00                ## $at = 4F000000
    lui     t3, 0xFB00                 ## t3 = FB000000
    mul.s   $f8, $f6, $f2              
    cfc1    t6, $f31                   
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             ## t4 = 00000000
    beql    t4, $zero, lbl_80918654    
    mfc1    t4, $f10                   
    mtc1    $at, $f10                  ## $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             ## t4 = 00000000
    bne     t4, $zero, lbl_80918648    
    nop
    mfc1    t4, $f10                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918660 
    or      t4, t4, $at                ## t4 = 80000000
lbl_80918648:
    beq     $zero, $zero, lbl_80918660 
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    mfc1    t4, $f10                   
lbl_80918654:
    nop
    bltz    t4, lbl_80918648           
    nop
lbl_80918660:
    andi    t7, t4, 0x00FF             ## t7 = 000000FF
    addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
    ctc1    t6, $f31                   
    or      t2, t7, $at                ## t2 = FFFFFFFF
    sw      t2, 0x0004(a0)             ## 00000004
    lw      a1, 0x02D0(s1)             ## 000002D0
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f16                  ## $f16 = 255.00
    addiu   t8, a1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t3, 0x0000(a1)             ## 00000000
    lwc1    $f0, 0x013C(s2)            ## 0000013C
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lui     $at, 0x4F00                ## $at = 4F000000
    mul.s   $f18, $f0, $f16            
    cfc1    t9, $f31                   
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f4, $f18                  
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    beql    v0, $zero, lbl_80918708    
    mfc1    v0, $f4                    
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    bne     v0, $zero, lbl_809186FC    
    nop
    mfc1    v0, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80918714 
    or      v0, v0, $at                ## v0 = 80000000
lbl_809186FC:
    beq     $zero, $zero, lbl_80918714 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
    mfc1    v0, $f4                    
lbl_80918708:
    nop
    bltz    v0, lbl_809186FC           
    nop
lbl_80918714:
    ctc1    t9, $f31                   
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    andi    v0, v0, 0x00FF             ## v0 = 000000FF
    mul.s   $f6, $f2, $f0              
    sll     t6, v0, 24                 
    sll     t4, v0, 16                 
    or      t5, t6, t4                 ## t5 = FFFFFFFF
    sll     t7, v0,  8                 
    or      t2, t5, t7                 ## t2 = FFFFFFFF
    lui     $at, 0x4F00                ## $at = 4F000000
    cfc1    t8, $f31                   
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    beql    t3, $zero, lbl_809187A8    
    mfc1    t3, $f8                    
    mtc1    $at, $f8                   ## $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    bne     t3, $zero, lbl_8091879C    
    nop
    mfc1    t3, $f8                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_809187B4 
    or      t3, t3, $at                ## t3 = 80000000
lbl_8091879C:
    beq     $zero, $zero, lbl_809187B4 
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
    mfc1    t3, $f8                    
lbl_809187A8:
    nop
    bltz    t3, lbl_8091879C           
    nop
lbl_809187B4:
    andi    t6, t3, 0x00FF             ## t6 = 000000FF
    ctc1    t8, $f31                   
    or      t4, t2, t6                 ## t4 = FFFFFFFF
    sw      t4, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s3)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x004C($sp)            
    lw      a1, 0x004C($sp)            
    lui     t3, 0xDE00                 ## t3 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t9, 0x0600                 ## t9 = 06000000
    addiu   t9, t9, 0x0A10             ## t9 = 06000A10
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0004(s0)             ## 00000004
    sw      t3, 0x0000(s0)             ## 00000000
    jal     func_800AA724              
    nop
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           ## $sp = 00000000
    nop
    nop
    nop

.section .data

var_80918840: .word 0x006A0100, 0x00000020, 0x005E0000, 0x00000144
.word func_80917B70
.word func_80917BFC
.word func_80917C1C
.word func_80917C40
var_80918860: .word 0x485003E8, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80918870: .word 0x3D4CCCCD
var_80918874: .word 0x3E4CCCCD
var_80918878: .word 0x3CCCCCCD
var_8091887C: .word 0x3EA3D70A
var_80918880: .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000

