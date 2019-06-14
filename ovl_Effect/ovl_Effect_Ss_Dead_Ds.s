#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B388B0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lw      t7, 0x0000(a3)             ## 00000000
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      t7, 0x0000(a2)             ## 00000000
    lw      t6, 0x0004(a3)             ## 00000004
    sw      t6, 0x0004(a2)             ## 00000004
    lw      t7, 0x0008(a3)             ## 00000008
    sw      t7, 0x0008(a2)             ## 00000008
    lw      t9, 0x000C(a3)             ## 0000000C
    sw      t9, 0x000C(a2)             ## 0000000C
    lw      t8, 0x0010(a3)             ## 00000010
    sw      t8, 0x0010(a2)             ## 00000010
    lw      t9, 0x0014(a3)             ## 00000014
    sw      t9, 0x0014(a2)             ## 00000014
    lw      t1, 0x0018(a3)             ## 00000018
    lui     t9, %hi(func_80B38998)     ## t9 = 80B40000
    addiu   t9, t9, %lo(func_80B38998) ## t9 = 80B38998
    sw      t1, 0x0018(a2)             ## 00000018
    lw      t0, 0x001C(a3)             ## 0000001C
    sw      t0, 0x001C(a2)             ## 0000001C
    lw      t1, 0x0020(a3)             ## 00000020
    lui     t0, %hi(func_80B38C68)     ## t0 = 80B40000
    addiu   t0, t0, %lo(func_80B38C68) ## t0 = 80B38C68
    sw      t1, 0x0020(a2)             ## 00000020
    lw      t2, 0x002C(a3)             ## 0000002C
    sh      t2, 0x005C(a2)             ## 0000005C
    lh      t3, 0x0026(a3)             ## 00000026
    sh      t3, 0x0052(a2)             ## 00000052
    lw      t4, 0x002C(a3)             ## 0000002C
    bgez    t4, lbl_80B38938           
    sra     t5, t4,  1                 
    addiu   $at, t4, 0x0001            ## $at = 00000001
    sra     t5, $at,  1                
lbl_80B38938:
    sh      t5, 0x0056(a2)             ## 00000056
    lh      t6, 0x0028(a3)             ## 00000028
    lh      t7, 0x0056(a2)             ## 00000056
    sw      t9, 0x0028(a2)             ## 00000028
    sw      t0, 0x0024(a2)             ## 00000024
    div     $zero, t6, t7              
    mflo    t8                         
    sh      t8, 0x0054(a2)             ## 00000054
    lh      t1, 0x0024(a3)             ## 00000024
    bne     t7, $zero, lbl_80B38968    
    nop
    break   ## 0x01C00
lbl_80B38968:
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    bne     t7, $at, lbl_80B38980      
    lui     $at, 0x8000                ## $at = 80000000
    bne     t6, $at, lbl_80B38980      
    nop
    break   ## 0x01800
lbl_80B38980:
    sh      t1, 0x0040(a2)             ## 00000040
    lh      t2, 0x0028(a3)             ## 00000028
    sh      $zero, 0x0042(a2)          ## 00000042
    sh      t2, 0x004A(a2)             ## 0000004A
    jr      $ra                        
    nop


func_80B38998:
    addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
    sw      s0, 0x0024($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a0, 0x00C8($sp)            
    sw      a1, 0x00CC($sp)            
    lh      t7, 0x0040(s0)             ## 00000040
    lui     $at, %hi(var_80B38CE0)     ## $at = 80B40000
    lwc1    $f8, %lo(var_80B38CE0)($at) 
    mtc1    t7, $f4                    ## $f4 = 0.00
    lw      t6, 0x00C8($sp)            
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0000(t6)             ## 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    mul.s   $f10, $f6, $f8             
    jal     func_8007E930              
    swc1    $f10, 0x00C0($sp)          
    addiu   a2, $sp, 0x0068            ## a2 = FFFFFFA0
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lh      t0, 0x004A(s0)             ## 0000004A
    andi    t1, t0, 0x00FF             ## t1 = 00000000
    sw      t1, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t3, 0xFB00                 ## t3 = FB000000
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(v1)          ## 00000004
    sw      t3, 0x0000(v1)             ## 00000000
    lw      t5, 0x0000(s0)             ## 00000000
    sw      t5, 0x0000(a2)             ## FFFFFFA0
    lw      t4, 0x0004(s0)             ## 00000004
    sw      t4, 0x0004(a2)             ## FFFFFFA4
    lw      t5, 0x0008(s0)             ## 00000008
    sw      t5, 0x0008(a2)             ## FFFFFFA8
    lh      t6, 0x0042(s0)             ## 00000042
    lwc1    $f16, 0x0068($sp)          
    bnel    t6, $zero, lbl_80B38BA0    
    lwc1    $f12, 0x0000(s0)           ## 00000000
    lwc1    $f18, 0x000C(s0)           ## 0000000C
    lwc1    $f6, 0x006C($sp)           
    lui     $at, 0x3FC0                ## $at = 3FC00000
    sub.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0070($sp)          
    lw      a0, 0x00C8($sp)            
    addiu   t7, $sp, 0x0064            ## t7 = FFFFFF9C
    swc1    $f4, 0x0040($sp)           
    lwc1    $f8, 0x0010(s0)            ## 00000010
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    addiu   a3, $sp, 0x0040            ## a3 = FFFFFF78
    sub.s   $f10, $f6, $f8             
    mtc1    $at, $f6                   ## $f6 = 1.50
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f8                   ## $f8 = 1.00
    swc1    $f10, 0x0044($sp)          
    lwc1    $f18, 0x0014(s0)           ## 00000014
    sw      a0, 0x0030($sp)            
    sw      t7, 0x0014($sp)            
    sub.s   $f4, $f16, $f18            
    swc1    $f6, 0x0010($sp)           
    swc1    $f8, 0x0018($sp)           
    jal     func_8002FF1C              
    swc1    $f4, 0x0048($sp)           
    beq     v0, $zero, lbl_80B38ADC    
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0000(s0)             ## 00000000
    lw      a2, 0x0004(s0)             ## 00000004
    lw      a3, 0x0008(s0)             ## 00000008
    addiu   t8, $sp, 0x0078            ## t8 = FFFFFFB0
    sw      t8, 0x0010($sp)            
    jal     func_8002B668              
    lw      a0, 0x0064($sp)            
    jal     func_800AA764              
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
    beq     $zero, $zero, lbl_80B38B64 
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
lbl_80B38ADC:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f16                  ## $f16 = 1.00
    lwc1    $f10, 0x006C($sp)          
    addiu   a1, $sp, 0x0064            ## a1 = FFFFFF9C
    addiu   a2, $sp, 0x0068            ## a2 = FFFFFFA0
    add.s   $f18, $f10, $f16           
    jal     func_8002F3A4              
    swc1    $f18, 0x006C($sp)          
    lw      t9, 0x0064($sp)            
    lui     $at, 0x3FC0                ## $at = 3FC00000
    or      a3, $zero, $zero           ## a3 = 00000000
    beql    t9, $zero, lbl_80B38B4C    
    lwc1    $f12, 0x0000(s0)           ## 00000000
    mtc1    $at, $f4                   ## $f4 = 1.50
    lw      a1, 0x0000(s0)             ## 00000000
    lw      a3, 0x0008(s0)             ## 00000008
    add.s   $f6, $f0, $f4              
    addiu   t0, $sp, 0x0078            ## t0 = FFFFFFB0
    sw      t0, 0x0010($sp)            
    or      a0, t9, $zero              ## a0 = 00000000
    mfc1    a2, $f6                    
    jal     func_8002B668              
    nop
    jal     func_800AA764              
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
    beq     $zero, $zero, lbl_80B38B64 
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
    lwc1    $f12, 0x0000(s0)           ## 00000000
lbl_80B38B4C:
    lwc1    $f14, 0x0004(s0)           ## 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s0)             ## 00000008
    jal     func_800AA740              
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
    addiu   a0, $sp, 0x0078            ## a0 = FFFFFFB0
lbl_80B38B64:
    addiu   a1, $sp, 0x004C            ## a1 = FFFFFF84
    jal     func_800AC0E8              
    or      a2, $zero, $zero           ## a2 = 00000000
    lh      t1, 0x004C($sp)            
    lh      t4, 0x0042(s0)             ## 00000042
    sh      t1, 0x0044(s0)             ## 00000044
    lh      t2, 0x004E($sp)            
    addiu   t5, t4, 0x0001             ## t5 = 00000001
    sh      t2, 0x0046(s0)             ## 00000046
    lh      t3, 0x0050($sp)            
    sh      t3, 0x0048(s0)             ## 00000048
    lwc1    $f8, 0x00AC($sp)           
    sh      t5, 0x0042(s0)             ## 00000042
    swc1    $f8, 0x0004(s0)            ## 00000004
    lwc1    $f12, 0x0000(s0)           ## 00000000
lbl_80B38BA0:
    lwc1    $f14, 0x0004(s0)           ## 00000004
    lw      a2, 0x0008(s0)             ## 00000008
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      a0, 0x0044(s0)             ## 00000044
    lh      a1, 0x0046(s0)             ## 00000046
    lh      a2, 0x0048(s0)             ## 00000048
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lui     $at, %hi(var_80B38CE4)     ## $at = 80B40000
    lwc1    $f12, %lo(var_80B38CE4)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lwc1    $f12, 0x00C0($sp)          
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, s0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0000(s0)             ## 00000000
    lw      t8, 0x00C8($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t8)             ## 00000000
    sw      v0, 0x0004(s0)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t0, 0xFCFF                 ## t0 = FCFF0000
    lui     t1, 0xFF2D                 ## t1 = FF2D0000
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s1)             ## 000002D0
    ori     t1, t1, 0xFEFF             ## t1 = FF2DFEFF
    ori     t0, t0, 0x97FF             ## t0 = FCFF97FF
    sw      t0, 0x0000(v1)             ## 00000000
    sw      t1, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t4, 0x0403                 ## t4 = 04030000
    addiu   t4, t4, 0x7BD0             ## t4 = 04037BD0
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    lui     t3, 0xDE00                 ## t3 = DE000000
    sw      t3, 0x0000(v1)             ## 00000000
    sw      t4, 0x0004(v1)             ## 00000004
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           ## $sp = 00000000


func_80B38C68:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lh      t6, 0x005C(a2)             ## 0000005C
    lh      t7, 0x0056(a2)             ## 00000056
    slt     $at, t6, t7                
    beq     $at, $zero, lbl_80B38CC4   
    nop
    lh      t8, 0x0040(a2)             ## 00000040
    lh      t9, 0x0052(a2)             ## 00000052
    addu    t0, t8, t9                 
    sh      t0, 0x0040(a2)             ## 00000040
    lh      t1, 0x0040(a2)             ## 00000040
    bgezl   t1, lbl_80B38CA8           
    lh      t2, 0x004A(a2)             ## 0000004A
    sh      $zero, 0x0040(a2)          ## 00000040
    lh      t2, 0x004A(a2)             ## 0000004A
lbl_80B38CA8:
    lh      t3, 0x0054(a2)             ## 00000054
    subu    t4, t2, t3                 
    sh      t4, 0x004A(a2)             ## 0000004A
    lh      t5, 0x004A(a2)             ## 0000004A
    bgez    t5, lbl_80B38CC4           
    nop
    sh      $zero, 0x004A(a2)          ## 0000004A
lbl_80B38CC4:
    jr      $ra                        
    nop
    nop

.section .data

.word 0x00000022
.word func_80B388B0
.word 0x00000000, 0x00000000

.section .rodata

var_80B38CE0: .word 0x3C23D70A
var_80B38CE4: .word 0x3FC8F5C3, 0x00000000, 0x00000000

