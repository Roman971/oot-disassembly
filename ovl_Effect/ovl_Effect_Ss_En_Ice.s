#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B35F80:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lh      v0, 0x0038(a3)             ## 00000038
    lui     t6, %hi(var_80B366F8)      ## t6 = 80B30000
    addiu   t6, t6, %lo(var_80B366F8)  ## t6 = 80B366F8
    bne     v0, $zero, lbl_80B360F8    
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   v0, $sp, 0x0020            ## v0 = FFFFFFF0
    lw      t8, 0x0000(t6)             ## 80B366F8
    lui     $at, 0x42C8                ## $at = 42C80000
    sw      t8, 0x0000(v0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 80B366FC
    sw      t7, 0x0004(v0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 80B36700
    sw      t8, 0x0008(v0)             ## FFFFFFF8
    lw      t0, 0x0004(a3)             ## 00000004
    addiu   t8, $zero, 0x000A          ## t8 = 0000000A
    sw      t0, 0x0000(a2)             ## 00000000
    lw      t9, 0x0008(a3)             ## 00000008
    lwc1    $f4, 0x0000(a2)            ## 00000000
    sw      t9, 0x0004(a2)             ## 00000004
    lw      t0, 0x000C(a3)             ## 0000000C
    lwc1    $f10, 0x0004(a2)           ## 00000004
    sw      t0, 0x0008(a2)             ## 00000008
    lw      t1, 0x0000(a3)             ## 00000000
    lui     t0, %hi(func_80B36228)     ## t0 = 80B30000
    addiu   t0, t0, %lo(func_80B36228) ## t0 = 80B36228
    lwc1    $f6, 0x0024(t1)            ## 00000024
    lui     t1, %hi(func_80B36594)     ## t1 = 80B30000
    addiu   t1, t1, %lo(func_80B36594) ## t1 = 80B36594
    sub.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(a2)            ## 00000008
    swc1    $f8, 0x002C(a2)            ## 0000002C
    lw      t2, 0x0000(a3)             ## 00000000
    lwc1    $f16, 0x0028(t2)           ## 00000028
    sub.s   $f18, $f10, $f16           
    mtc1    $at, $f16                  ## $f16 = 100.00
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f12                  ## $f12 = 65536.00
    swc1    $f18, 0x0030(a2)           ## 00000030
    lw      t3, 0x0000(a3)             ## 00000000
    lwc1    $f6, 0x002C(t3)            ## 0000002C
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0034(a2)            ## 00000034
    lw      t5, 0x0000(v0)             ## FFFFFFF0
    sw      t5, 0x000C(a2)             ## 0000000C
    lw      t4, 0x0004(v0)             ## FFFFFFF4
    sw      t4, 0x0010(a2)             ## 00000010
    lw      t5, 0x0008(v0)             ## FFFFFFF8
    sw      t5, 0x0014(a2)             ## 00000014
    lw      t7, 0x0000(v0)             ## FFFFFFF0
    sw      t7, 0x0018(a2)             ## 00000018
    lw      t6, 0x0004(v0)             ## FFFFFFF4
    sw      t6, 0x001C(a2)             ## 0000001C
    lw      t7, 0x0008(v0)             ## FFFFFFF8
    sh      t8, 0x005C(a2)             ## 0000005C
    sw      t7, 0x0020(a2)             ## 00000020
    lw      t9, 0x0000(a3)             ## 00000000
    sw      t0, 0x0028(a2)             ## 00000028
    sw      t1, 0x0024(a2)             ## 00000024
    sw      t9, 0x003C(a2)             ## 0000003C
    lwc1    $f10, 0x0010(a3)           ## 00000010
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t3, $f4                    
    nop
    sh      t3, 0x0058(a2)             ## 00000058
    lbu     t4, 0x002C(a3)             ## 0000002C
    sh      t4, 0x0048(a2)             ## 00000048
    lbu     t5, 0x002D(a3)             ## 0000002D
    sh      t5, 0x004A(a2)             ## 0000004A
    lbu     t6, 0x002E(a3)             ## 0000002E
    sh      t6, 0x004C(a2)             ## 0000004C
    lbu     t7, 0x002F(a3)             ## 0000002F
    sh      t7, 0x004E(a2)             ## 0000004E
    lbu     t8, 0x0030(a3)             ## 00000030
    sh      t8, 0x0050(a2)             ## 00000050
    lbu     t9, 0x0031(a3)             ## 00000031
    sh      t9, 0x0052(a2)             ## 00000052
    lbu     t0, 0x0032(a3)             ## 00000032
    sh      t1, 0x0056(a2)             ## 00000056
    sh      t0, 0x0054(a2)             ## 00000054
    jal     func_80026D90              
    sw      a2, 0x0038($sp)            
    trunc.w.s $f6, $f0                   
    lw      a2, 0x0038($sp)            
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x0044(a2)             ## 00000044
    beq     $zero, $zero, lbl_80B36218 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B360F8:
    bne     v0, $at, lbl_80B3620C      
    addiu   v0, a3, 0x0004             ## v0 = 00000004
    lw      t5, 0x0000(v0)             ## 00000004
    lui     t3, %hi(func_80B36228)     ## t3 = 80B30000
    addiu   t3, t3, %lo(func_80B36228) ## t3 = 80B36228
    sw      t5, 0x0000(a2)             ## 00000000
    lw      t4, 0x0004(v0)             ## 00000008
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f10                  ## $f10 = 100.00
    sw      t4, 0x0004(a2)             ## 00000004
    lw      t5, 0x0008(v0)             ## 0000000C
    lui     t4, %hi(func_80B366C8)     ## t4 = 80B30000
    addiu   t4, t4, %lo(func_80B366C8) ## t4 = 80B366C8
    sw      t5, 0x0008(a2)             ## 00000008
    lw      t7, 0x0000(v0)             ## 00000004
    sw      t7, 0x002C(a2)             ## 0000002C
    lw      t6, 0x0004(v0)             ## 00000008
    sw      t6, 0x0030(a2)             ## 00000030
    lw      t7, 0x0008(v0)             ## 0000000C
    sw      t7, 0x0034(a2)             ## 00000034
    lw      t9, 0x0014(a3)             ## 00000014
    sw      t9, 0x000C(a2)             ## 0000000C
    lw      t8, 0x0018(a3)             ## 00000018
    sw      t8, 0x0010(a2)             ## 00000010
    lw      t9, 0x001C(a3)             ## 0000001C
    sw      t9, 0x0014(a2)             ## 00000014
    lw      t1, 0x0020(a3)             ## 00000020
    sw      t1, 0x0018(a2)             ## 00000018
    lw      t0, 0x0024(a3)             ## 00000024
    sw      t0, 0x001C(a2)             ## 0000001C
    lw      t1, 0x0028(a3)             ## 00000028
    sw      t1, 0x0020(a2)             ## 00000020
    lw      t2, 0x0034(a3)             ## 00000034
    sw      t3, 0x0028(a2)             ## 00000028
    sw      t4, 0x0024(a2)             ## 00000024
    sh      t2, 0x005C(a2)             ## 0000005C
    lw      t5, 0x0034(a3)             ## 00000034
    sh      t5, 0x0040(a2)             ## 00000040
    lwc1    $f8, 0x0010(a3)            ## 00000010
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0058(a2)             ## 00000058
    lwc1    $f14, 0x0014(a3)           ## 00000014
    lwc1    $f12, 0x001C(a3)           ## 0000001C
    sw      a3, 0x003C($sp)            
    jal     func_800AA4F8              
    sw      a2, 0x0038($sp)            
    lw      a2, 0x0038($sp)            
    lw      a3, 0x003C($sp)            
    sh      v0, 0x0042(a2)             ## 00000042
    sh      $zero, 0x0044(a2)          ## 00000044
    lbu     t8, 0x002C(a3)             ## 0000002C
    sh      t8, 0x0048(a2)             ## 00000048
    lbu     t9, 0x002D(a3)             ## 0000002D
    sh      t9, 0x004A(a2)             ## 0000004A
    lbu     t0, 0x002E(a3)             ## 0000002E
    sh      t0, 0x004C(a2)             ## 0000004C
    lbu     t1, 0x002F(a3)             ## 0000002F
    sh      t1, 0x004E(a2)             ## 0000004E
    lbu     t2, 0x0030(a3)             ## 00000030
    sh      t2, 0x0050(a2)             ## 00000050
    lbu     t3, 0x0031(a3)             ## 00000031
    sh      t3, 0x0052(a2)             ## 00000052
    lbu     t4, 0x0032(a3)             ## 00000032
    sh      $zero, 0x0056(a2)          ## 00000056
    beq     $zero, $zero, lbl_80B36214 
    sh      t4, 0x0054(a2)             ## 00000054
lbl_80B3620C:
    beq     $zero, $zero, lbl_80B36218 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B36214:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B36218:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B36228:
    addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
    sw      s2, 0x0048($sp)            
    sw      s0, 0x0040($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    or      s2, a0, $zero              ## s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s1, 0x0044($sp)            
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x009C($sp)            
    lh      t6, 0x0058(s0)             ## 00000058
    lui     $at, %hi(var_80B36710)     ## $at = 80B30000
    lwc1    $f8, %lo(var_80B36710)($at) 
    mtc1    t6, $f4                    ## $f4 = 0.00
    lw      s1, 0x0000(s2)             ## 00000000
    lui     t7, 0x0001                 ## t7 = 00010000
    cvt.s.w $f6, $f4                   
    addu    t7, t7, s2                 
    or      a3, $zero, $zero           ## a3 = 00000000
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x008C($sp)          
    lw      t7, 0x1DE4(t7)             ## 00011DE4
    sw      t7, 0x007C($sp)            
    lh      t8, 0x0056(s0)             ## 00000056
    beql    t8, $zero, lbl_80B362AC    
    lh      v0, 0x0040(s0)             ## 00000040
    lh      t9, 0x005C(s0)             ## 0000005C
    sll     t2, t9,  2                 
    subu    t2, t2, t9                 
    sll     t2, t2,  2                 
    mtc1    t2, $f16                   ## $f16 = 0.00
    beq     $zero, $zero, lbl_80B36300 
    cvt.s.w $f20, $f16                 
    lh      v0, 0x0040(s0)             ## 00000040
lbl_80B362AC:
    blezl   v0, lbl_80B362F8           
    lui     $at, 0x437F                ## $at = 437F0000
    lh      v1, 0x005C(s0)             ## 0000005C
    sra     t3, v0,  1                 
    slt     $at, v1, t3                
    beql    $at, $zero, lbl_80B362F8   
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    v1, $f18                   ## $f18 = 0.00
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     $at, 0x437F                ## $at = 437F0000
    cvt.s.w $f0, $f18                  
    mtc1    $at, $f10                  ## $f10 = 255.00
    cvt.s.w $f8, $f6                   
    add.s   $f4, $f0, $f0              
    div.s   $f20, $f4, $f8             
    mul.s   $f20, $f20, $f10           
    beq     $zero, $zero, lbl_80B36304 
    lwc1    $f12, 0x0000(s0)           ## 00000000
    lui     $at, 0x437F                ## $at = 437F0000
lbl_80B362F8:
    mtc1    $at, $f20                  ## $f20 = 255.00
    nop
lbl_80B36300:
    lwc1    $f12, 0x0000(s0)           ## 00000000
lbl_80B36304:
    lwc1    $f14, 0x0004(s0)           ## 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s0)             ## 00000008
    lwc1    $f12, 0x008C($sp)          
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lh      t4, 0x0042(s0)             ## 00000042
    lui     $at, %hi(var_80B36714)     ## $at = 80B30000
    lwc1    $f6, %lo(var_80B36714)($at) 
    mtc1    t4, $f16                   ## $f16 = 0.00
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    cvt.s.w $f18, $f16                 
    mul.s   $f12, $f18, $f6            
    jal     func_800AAB94              
    nop
    lh      t5, 0x0044(s0)             ## 00000044
    lui     $at, %hi(var_80B36718)     ## $at = 80B30000
    lwc1    $f10, %lo(var_80B36718)($at) 
    mtc1    t5, $f4                    ## $f4 = 0.00
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    cvt.s.w $f8, $f4                   
    mul.s   $f12, $f8, $f10            
    jal     func_800AA9E0              
    nop
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x006C($sp)            
    lw      a1, 0x006C($sp)            
    lui     $at, %hi(var_80B3671C)     ## $at = 80B30000
    lwc1    $f0, %lo(var_80B3671C)($at) 
    sw      v0, 0x0004(a1)             ## 00000004
    mtc1    $zero, $f16                ## $f16 = 0.00
    swc1    $f0, 0x0080($sp)           
    swc1    $f0, 0x0088($sp)           
    swc1    $f16, 0x0084($sp)          
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             ## 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s2, 0x00E0             ## a1 = 000000E0
    addiu   a2, $sp, 0x0080            ## a2 = FFFFFFE8
    jal     func_80022400              
    lw      a3, 0x0000(s2)             ## 00000000
    lw      t1, 0x007C($sp)            
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    sll     t5, t1,  1                 
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t2, $zero, 0x0020          ## t2 = 00000020
    addiu   t3, $zero, 0x0010          ## t3 = 00000010
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t7, $zero, 0x0040          ## t7 = 00000040
    sw      t7, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    sw      t8, 0x0028($sp)            
    sw      t6, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    andi    a3, t1, 0x00FF             ## a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0068($sp)            
    lw      t0, 0x0068($sp)            
    lui     $at, 0x4F00                ## $at = 4F000000
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t2, 0xFA00                 ## t2 = FA000000
    ori     t2, t2, 0x0080             ## t2 = FA000080
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s1)             ## 000002D0
    sw      t2, 0x0000(v1)             ## 00000000
    lh      t6, 0x0048(s0)             ## 00000048
    lh      t3, 0x004E(s0)             ## 0000004E
    lh      t9, 0x004A(s0)             ## 0000004A
    sll     t7, t6, 24                 
    lh      t6, 0x004C(s0)             ## 0000004C
    andi    t4, t3, 0x00FF             ## t4 = 00000000
    or      t8, t4, t7                 ## t8 = 00000000
    andi    t2, t9, 0x00FF             ## t2 = 00000008
    sll     t3, t2, 16                 
    andi    t4, t6, 0x00FF             ## t4 = 00000000
    sll     t7, t4,  8                 
    or      t5, t8, t3                 ## t5 = 00000000
    or      t9, t5, t7                 ## t9 = 00000000
    sw      t9, 0x0004(v1)             ## 00000004
    lw      a1, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xFB00                 ## t8 = FB000000
    addiu   t2, a1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    sw      t8, 0x0000(a1)             ## 00000000
    lh      t3, 0x0054(s0)             ## 00000054
    lh      t7, 0x0050(s0)             ## 00000050
    lh      t8, 0x0052(s0)             ## 00000052
    andi    t6, t3, 0x00FF             ## t6 = 00000000
    sll     t4, t6,  8                 
    sll     t9, t7, 24                 
    or      t2, t4, t9                 ## t2 = 00000000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    cfc1    t7, $f31                   
    ctc1    t4, $f31                   
    andi    t3, t8, 0x00FF             ## t3 = 00000000
    sll     t6, t3, 16                 
    cvt.w.s $f18, $f20                 
    or      t5, t2, t6                 ## t5 = 00000000
    lui     t2, 0xDE00                 ## t2 = DE000000
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             ## t4 = 00000000
    beql    t4, $zero, lbl_80B36540    
    mfc1    t4, $f18                   
    mtc1    $at, $f18                  ## $f18 = 2147484000.00
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    sub.s   $f18, $f20, $f18           
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             ## t4 = 00000000
    bne     t4, $zero, lbl_80B36534    
    nop
    mfc1    t4, $f18                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80B3654C 
    or      t4, t4, $at                ## t4 = 80000000
lbl_80B36534:
    beq     $zero, $zero, lbl_80B3654C 
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    mfc1    t4, $f18                   
lbl_80B36540:
    nop
    bltz    t4, lbl_80B36534           
    nop
lbl_80B3654C:
    andi    t9, t4, 0x00FF             ## t9 = 000000FF
    ctc1    t7, $f31                   
    or      t8, t5, t9                 ## t8 = 000000FF
    sw      t8, 0x0004(a1)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t6, 0x0403                 ## t6 = 04030000
    addiu   t6, t6, 0x3CB8             ## t6 = 04033CB8
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s1)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t2, 0x0000(v1)             ## 00000000
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           ## $sp = 00000000


func_80B36594:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lh      v1, 0x005C(s0)             ## 0000005C
    slti    $at, v1, 0x0009            
    bnel    $at, $zero, lbl_80B3661C   
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    lw      v0, 0x003C(s0)             ## 0000003C
    lbu     t6, 0x0114(v0)             ## 00000114
    beql    t6, $zero, lbl_80B3661C    
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    lhu     t7, 0x0112(v0)             ## 00000112
    andi    t8, t7, 0xC000             ## t8 = 00000000
    bnel    t8, $zero, lbl_80B3661C    
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    lwc1    $f4, 0x0024(v0)            ## 00000024
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    lwc1    $f16, 0x0030(s0)           ## 00000030
    addiu   t9, v1, 0x0001             ## t9 = 00000001
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0034(s0)            ## 00000034
    swc1    $f8, 0x0000(s0)            ## 00000000
    lwc1    $f10, 0x0028(v0)           ## 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(s0)           ## 00000004
    lwc1    $f4, 0x002C(v0)            ## 0000002C
    sh      t9, 0x005C(s0)             ## 0000005C
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80B366B4 
    swc1    $f8, 0x0008(s0)            ## 00000008
    addiu   $at, $zero, 0x0009         ## $at = 00000009
lbl_80B3661C:
    bnel    v1, $at, lbl_80B366B8      
    lw      $ra, 0x001C($sp)           
    lw      a0, 0x003C(s0)             ## 0000003C
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80063F00              
    addiu   a0, a0, 0x0024             ## a0 = 00000024
    sll     a0, v0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f10                  ## $f10 = 1.00
    lwc1    $f18, 0x0024($sp)          
    lw      a0, 0x003C(s0)             ## 0000003C
    add.s   $f16, $f0, $f10            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a0, a0, 0x0024             ## a0 = 00000024
    mul.s   $f4, $f16, $f18            
    jal     func_80063F00              
    swc1    $f4, 0x0018(s0)            ## 00000018
    sll     a0, v0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f10, 0x0024($sp)          
    lui     $at, 0xBFC0                ## $at = BFC00000
    add.s   $f8, $f0, $f6              
    mtc1    $at, $f18                  ## $f18 = -1.50
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    mul.s   $f16, $f8, $f10            
    swc1    $f18, 0x001C(s0)           ## 0000001C
    swc1    $f4, 0x0010(s0)            ## 00000010
    swc1    $f16, 0x0020(s0)           ## 00000020
lbl_80B366B4:
    lw      $ra, 0x001C($sp)           
lbl_80B366B8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B366C8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lh      t6, 0x0044(a2)             ## 00000044
    lh      t7, 0x0046(a2)             ## 00000046
    addu    t8, t6, t7                 
    sh      t8, 0x0044(a2)             ## 00000044
    jr      $ra                        
    nop
    nop
    nop

.section .data

.word 0x0000001B
.word func_80B35F80
var_80B366F8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B36710: .word 0x3C23D70A
var_80B36714: .word 0x38C90FDB
var_80B36718: .word 0x38C90FDB
var_80B3671C: .word 0x42B3999A

