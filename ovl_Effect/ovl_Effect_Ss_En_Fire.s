#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B36E90:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    or      s1, a3, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s2, 0x0020($sp)            
    sw      a0, 0x0048($sp)            
    sw      a1, 0x004C($sp)            
    addiu   v0, $sp, 0x002C            ## v0 = FFFFFFE4
    addiu   v1, $sp, 0x0038            ## v1 = FFFFFFF0
    lui     t6, %hi(var_80B37538)      ## t6 = 80B30000
    addiu   t6, t6, %lo(var_80B37538)  ## t6 = 80B37538
    lw      t8, 0x0000(t6)             ## 80B37538
    addiu   s2, s1, 0x0004             ## s2 = 00000004
    sw      t8, 0x0000(v1)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 80B3753C
    sw      t7, 0x0004(v1)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 80B37540
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    sw      t8, 0x0008(v1)             ## FFFFFFF8
    lw      t0, 0x0000(s2)             ## 00000004
    sw      t0, 0x0000(s0)             ## 00000000
    lw      t9, 0x0004(s2)             ## 00000008
    sw      t9, 0x0004(s0)             ## 00000004
    lw      t0, 0x0008(s2)             ## 0000000C
    sw      t0, 0x0008(s0)             ## 00000008
    lw      t2, 0x0000(v1)             ## FFFFFFF0
    lw      t1, 0x0004(v1)             ## FFFFFFF4
    sw      t2, 0x0000(v0)             ## FFFFFFE4
    lw      t2, 0x0008(v1)             ## FFFFFFF8
    lw      t4, 0x0000(v0)             ## FFFFFFE4
    sw      t1, 0x0004(v0)             ## FFFFFFE8
    sw      t2, 0x0008(v0)             ## FFFFFFEC
    sw      t4, 0x0018(s0)             ## 00000018
    lw      t3, 0x0004(v0)             ## FFFFFFE8
    sw      t3, 0x001C(s0)             ## 0000001C
    lw      t4, 0x0008(v0)             ## FFFFFFEC
    sw      t4, 0x0020(s0)             ## 00000020
    lw      t6, 0x0000(v0)             ## FFFFFFE4
    sw      t6, 0x000C(s0)             ## 0000000C
    lw      t5, 0x0004(v0)             ## FFFFFFE8
    sw      t5, 0x0010(s0)             ## 00000010
    lw      t6, 0x0008(v0)             ## FFFFFFEC
    sh      t7, 0x005C(s0)             ## 0000005C
    lh      t8, 0x005C(s0)             ## 0000005C
    sw      t6, 0x0014(s0)             ## 00000014
    sh      t8, 0x0044(s0)             ## 00000044
    lw      t9, 0x0000(s1)             ## 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    sw      t9, 0x003C(s0)             ## 0000003C
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f4                   ## $f4 = 20.00
    lui     t2, %hi(func_80B37058)     ## t2 = 80B30000
    lui     t3, %hi(func_80B37354)     ## t3 = 80B30000
    mul.s   $f6, $f0, $f4              
    addiu   t2, t2, %lo(func_80B37058) ## t2 = 80B37058
    addiu   t3, t3, %lo(func_80B37354) ## t3 = 80B37354
    addiu   t4, $zero, 0xFFF1          ## t4 = FFFFFFF1
    sw      t2, 0x0028(s0)             ## 00000028
    sw      t3, 0x0024(s0)             ## 00000024
    sh      t4, 0x0046(s0)             ## 00000046
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f8                    
    nop
    sh      t1, 0x0052(s0)             ## 00000052
    lh      t5, 0x0016(s1)             ## 00000016
    bgezl   t5, lbl_80B36FFC           
    lh      t2, 0x0010(s1)             ## 00000010
    lw      a0, 0x0000(s1)             ## 00000000
    or      a1, s2, $zero              ## a1 = 00000004
    jal     func_80063F00              
    addiu   a0, a0, 0x0024             ## a0 = 00000024
    lw      t6, 0x0000(s1)             ## 00000000
    or      a1, s2, $zero              ## a1 = 00000004
    lh      t7, 0x00B6(t6)             ## 000000B6
    subu    t8, v0, t7                 
    sh      t8, 0x004A(s0)             ## 0000004A
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_80063F34              
    addiu   a0, a0, 0x0024             ## a0 = 00000024
    lw      t9, 0x0000(s1)             ## 00000000
    or      a0, s2, $zero              ## a0 = 00000004
    lh      t0, 0x00B4(t9)             ## 000000B4
    subu    t1, v0, t0                 
    sh      t1, 0x0048(s0)             ## 00000048
    lw      a1, 0x0000(s1)             ## 00000000
    jal     func_80063E18              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    swc1    $f0, 0x0034(s0)            ## 00000034
    lh      t2, 0x0010(s1)             ## 00000010
lbl_80B36FFC:
    sh      t2, 0x0040(s0)             ## 00000040
    lh      t3, 0x0012(s1)             ## 00000012
    andi    t4, t3, 0x8000             ## t4 = 00000000
    beql    t4, $zero, lbl_80B37020    
    sh      $zero, 0x0042(s0)          ## 00000042
    lh      t5, 0x0010(s1)             ## 00000010
    beq     $zero, $zero, lbl_80B37020 
    sh      t5, 0x0042(s0)             ## 00000042
    sh      $zero, 0x0042(s0)          ## 00000042
lbl_80B37020:
    lh      t6, 0x0012(s1)             ## 00000012
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    andi    t7, t6, 0x7FFF             ## t7 = 00000000
    sh      t7, 0x004C(s0)             ## 0000004C
    lh      t8, 0x0016(s1)             ## 00000016
    sh      t8, 0x004E(s0)             ## 0000004E
    lh      t9, 0x0014(s1)             ## 00000014
    sh      t9, 0x0050(s0)             ## 00000050
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80B37058:
    addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a2, $zero              ## s1 = 00000000
    or      s2, a0, $zero              ## s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    sw      a1, 0x0084($sp)            
    lw      s0, 0x0000(s2)             ## 00000000
    lwc1    $f12, 0x0000(s1)           ## 00000000
    lwc1    $f14, 0x0004(s1)           ## 00000004
    lw      a2, 0x0008(s1)             ## 00000008
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      t6, 0x07A0(s2)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, s2, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             ## 00000790
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t9, v0, $at                
    sll     t5, t9, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80B37550)     ## $at = 80B30000
    lwc1    $f8, %lo(var_80B37550)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lh      a0, 0x005C(s1)             ## 0000005C
    addiu   $at, $zero, 0x0333         ## $at = 00000333
    multu   a0, $at                    
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lh      t7, 0x0042(s1)             ## 00000042
    lui     $at, %hi(var_80B37554)     ## $at = 80B30000
    lwc1    $f18, %lo(var_80B37554)($at) 
    mtc1    t7, $f10                   ## $f10 = 0.00
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f12, $f4, $f0             
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    sw      v0, 0x0058($sp)            
    lw      v1, 0x0058($sp)            
    sw      v0, 0x0004(v1)             ## 00000004
    lh      t3, 0x005C(s1)             ## 0000005C
    addiu   t3, t3, 0xFFFB             ## t3 = FFFFFFFB
    sll     t3, t3, 16                 
    sra     t3, t3, 16                 
    bgezl   t3, lbl_80B3716C           
    lw      a0, 0x0000(s2)             ## 00000000
    or      t3, $zero, $zero           ## t3 = 00000000
    lw      a0, 0x0000(s2)             ## 00000000
lbl_80B3716C:
    jal     func_8007E2C0              
    sh      t3, 0x0066($sp)            
    lh      t3, 0x0066($sp)            
    lw      v1, 0x02D0(s0)             ## 000002D0
    mtc1    t3, $f6                    ## $f6 = 0.00
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    cvt.s.w $f8, $f6                   
    sw      t5, 0x02D0(s0)             ## 000002D0
    lui     $at, %hi(var_80B37558)     ## $at = 80B30000
    sw      t6, 0x0000(v1)             ## 00000000
    lwc1    $f10, %lo(var_80B37558)($at) 
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    lui     t9, 0xFA00                 ## t9 = FA000000
    mul.s   $f16, $f8, $f10            
    lui     $at, 0x4F00                ## $at = 4F000000
    ori     t9, t9, 0x0080             ## t9 = FA000080
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    cfc1    t7, $f31                   
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f18, $f16                 
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             ## t1 = 00000000
    beql    t1, $zero, lbl_80B37228    
    mfc1    t1, $f18                   
    mtc1    $at, $f18                  ## $f18 = 2147484000.00
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             ## t1 = 00000000
    bne     t1, $zero, lbl_80B3721C    
    nop
    mfc1    t1, $f18                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80B37234 
    or      t1, t1, $at                ## t1 = 80000000
lbl_80B3721C:
    beq     $zero, $zero, lbl_80B37234 
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    mfc1    t1, $f18                   
lbl_80B37228:
    nop
    bltz    t1, lbl_80B3721C           
    nop
lbl_80B37234:
    andi    t1, t1, 0x00FF             ## t1 = 000000FF
    ctc1    t7, $f31                   
    sll     t2, t1, 24                 
    sw      t2, 0x0004(v1)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    sll     t5, t1, 16                 
    or      t6, t2, t5                 ## t6 = 00000008
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    ori     t7, t6, 0x00FF             ## t7 = 000000FF
    sw      t7, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    addiu   t5, $zero, 0x0020          ## t5 = 00000020
    addiu   t6, $zero, 0x0040          ## t6 = 00000040
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    lh      t8, 0x0052(s1)             ## 00000052
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t7, $zero, 0x0080          ## t7 = 00000080
    subu    $at, $zero, t8             
    sll     t9, $at,  2                
    addu    t9, t9, $at                
    sll     t9, t9,  2                 
    andi    t5, t9, 0x01FF             ## t5 = 00000020
    sw      t5, 0x0020($sp)            
    sw      t7, 0x0028($sp)            
    sw      t6, 0x0024($sp)            
    jal     func_8007EB84              
    sw      v0, 0x004C($sp)            
    lw      t4, 0x004C($sp)            
    lui     t7, 0xDE00                 ## t7 = DE000000
    sw      v0, 0x0004(t4)             ## 00000004
    lh      t8, 0x0050(s1)             ## 00000050
    andi    t9, t8, 0x7FFF             ## t9 = 00000000
    bnel    t9, $zero, lbl_80B37300    
    lw      v0, 0x02D0(s0)             ## 000002D0
    lh      t5, 0x005C(s1)             ## 0000005C
    slti    $at, t5, 0x0012            
    beq     $at, $zero, lbl_80B37320   
    lui     t5, 0xDE00                 ## t5 = DE000000
    lw      v0, 0x02D0(s0)             ## 000002D0
lbl_80B37300:
    lui     t8, 0x0405                 ## t8 = 04050000
    addiu   t8, t8, 0x2AD0             ## t8 = 04052AD0
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0004(v0)             ## 00000004
    sw      t7, 0x0000(v0)             ## 00000000
    beq     $zero, $zero, lbl_80B37340 
    lw      $ra, 0x0044($sp)           
lbl_80B37320:
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t6, 0x0405                 ## t6 = 04050000
    addiu   t6, t6, 0x2A10             ## t6 = 04052A10
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v0)             ## 00000004
    sw      t5, 0x0000(v0)             ## 00000000
    lw      $ra, 0x0044($sp)           
lbl_80B37340:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           ## $sp = 00000000


func_80B37354:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lh      t6, 0x0052(s0)             ## 00000052
    lw      v0, 0x003C(s0)             ## 0000003C
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    beq     v0, $zero, lbl_80B37518    
    sh      t7, 0x0052(s0)             ## 00000052
    lbu     t8, 0x0114(v0)             ## 00000114
    addiu   a0, s0, 0x0042             ## a0 = 00000042
    slti    $at, t8, 0x0016            
    bnel    $at, $zero, lbl_80B373A8   
    lw      t1, 0x0130(v0)             ## 00000130
    lh      t9, 0x005C(s0)             ## 0000005C
    lw      v0, 0x003C(s0)             ## 0000003C
    addiu   t0, t9, 0x0001             ## t0 = 00000001
    sh      t0, 0x005C(s0)             ## 0000005C
    lw      t1, 0x0130(v0)             ## 00000130
lbl_80B373A8:
    beql    t1, $zero, lbl_80B37504    
    lh      t9, 0x004C(s0)             ## 0000004C
    lh      a1, 0x0040(s0)             ## 00000040
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    sra     a3, a1,  3                 
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lh      v1, 0x004E(s0)             ## 0000004E
    bgezl   v1, lbl_80B37470           
    lh      t0, 0x0050(s0)             ## 00000050
    lw      v0, 0x003C(s0)             ## 0000003C
    or      a3, $zero, $zero           ## a3 = 00000000
    lwc1    $f12, 0x0024(v0)           ## 00000024
    lwc1    $f14, 0x0028(v0)           ## 00000028
    jal     func_800AA7F4              
    lw      a2, 0x002C(v0)             ## 0000002C
    lw      t3, 0x003C(s0)             ## 0000003C
    lh      t2, 0x004A(s0)             ## 0000004A
    lui     $at, %hi(var_80B3755C)     ## $at = 80B30000
    lh      t4, 0x00B6(t3)             ## 000000B6
    lwc1    $f8, %lo(var_80B3755C)($at) 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addu    t5, t2, t4                 
    mtc1    t5, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lw      t7, 0x003C(s0)             ## 0000003C
    lh      t6, 0x0048(s0)             ## 00000048
    lui     $at, %hi(var_80B37560)     ## $at = 80B30000
    lh      t8, 0x00B4(t7)             ## 000000B4
    lwc1    $f18, %lo(var_80B37560)($at) 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addu    t9, t6, t8                 
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AA9E0              
    nop
    addiu   a0, s0, 0x002C             ## a0 = 0000002C
    jal     func_800AB958              
    or      a1, s0, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80B3751C 
    lw      $ra, 0x0024($sp)           
    lh      t0, 0x0050(s0)             ## 00000050
lbl_80B37470:
    sll     t2, v1,  2                 
    sll     t8, v1,  2                 
    andi    t1, t0, 0x8000             ## t1 = 00000000
    beql    t1, $zero, lbl_80B374D8    
    lw      t6, 0x003C(s0)             ## 0000003C
    lw      t3, 0x003C(s0)             ## 0000003C
    subu    t2, t2, v1                 
    sll     t2, t2,  1                 
    addu    v0, t3, t2                 
    lh      t4, 0x013C(v0)             ## 0000013C
    mtc1    t4, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(s0)            ## 00000000
    lh      t5, 0x013E(v0)             ## 0000013E
    mtc1    t5, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(s0)           ## 00000004
    lh      t7, 0x0140(v0)             ## 00000140
    mtc1    t7, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    beq     $zero, $zero, lbl_80B37518 
    swc1    $f18, 0x0008(s0)           ## 00000008
    lw      t6, 0x003C(s0)             ## 0000003C
lbl_80B374D8:
    subu    t8, t8, v1                 
    sll     t8, t8,  2                 
    addu    v0, t6, t8                 
    lwc1    $f4, 0x013C(v0)            ## 0000013C
    swc1    $f4, 0x0000(s0)            ## 00000000
    lwc1    $f6, 0x0140(v0)            ## 00000140
    swc1    $f6, 0x0004(s0)            ## 00000004
    lwc1    $f8, 0x0144(v0)            ## 00000144
    beq     $zero, $zero, lbl_80B37518 
    swc1    $f8, 0x0008(s0)            ## 00000008
    lh      t9, 0x004C(s0)             ## 0000004C
lbl_80B37504:
    beql    t9, $zero, lbl_80B37518    
    sw      $zero, 0x003C(s0)          ## 0000003C
    beq     $zero, $zero, lbl_80B37518 
    sh      $zero, 0x005C(s0)          ## 0000005C
    sw      $zero, 0x003C(s0)          ## 0000003C
lbl_80B37518:
    lw      $ra, 0x0024($sp)           
lbl_80B3751C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

.word 0x0000001D
.word func_80B36E90
var_80B37538: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B37550: .word 0x38C90FDB
var_80B37554: .word 0x3851B717
var_80B37558: .word 0x414B3333
var_80B3755C: .word 0x38C90FDB
var_80B37560: .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

