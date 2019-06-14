#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B2E900:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a2, $zero              ## s0 = 00000000
    or      s1, a3, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a1, s1, 0x0004             ## a1 = 00000004
    addiu   a0, s0, 0x000C             ## a0 = 0000000C
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a1, s1, 0x0010             ## a1 = 00000010
    addiu   a0, s0, 0x0018             ## a0 = 00000018
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a1, s1, 0x001C             ## a1 = 0000001C
    lui     v0, 0x0402                 ## v0 = 04020000
    addiu   v0, v0, 0x59F0             ## v0 = 040259F0
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    lui     t9, 0x8012                 ## t9 = 80120000
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t0, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t1, t9, t0                 
    addu    t2, t1, $at                
    sw      t2, 0x0038(s0)             ## 00000038
    lbu     t3, 0x0034(s1)             ## 00000034
    lui     t1, %hi(func_80B2EA70)     ## t1 = 80B30000
    addiu   t9, $zero, 0x0005          ## t9 = 00000005
    bne     t3, $zero, lbl_80B2E9E8    
    addiu   t1, t1, %lo(func_80B2EA70) ## t1 = 80B2EA70
    addiu   t4, $zero, 0x000A          ## t4 = 0000000A
    sh      t4, 0x005C(s0)             ## 0000005C
    lw      t5, 0x0000(s1)             ## 00000000
    lwc1    $f4, 0x0004(s1)            ## 00000004
    lui     t8, %hi(func_80B2EC64)     ## t8 = 80B30000
    lwc1    $f6, 0x0024(t5)            ## 00000024
    addiu   t8, t8, %lo(func_80B2EC64) ## t8 = 80B2EC64
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x002C(s0)            ## 0000002C
    lw      t6, 0x0000(s1)             ## 00000000
    lwc1    $f10, 0x0008(s1)           ## 00000008
    lwc1    $f16, 0x0028(t6)           ## 00000028
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0030(s0)           ## 00000030
    lw      t7, 0x0000(s1)             ## 00000000
    lwc1    $f4, 0x000C(s1)            ## 0000000C
    lwc1    $f6, 0x002C(t7)            ## 0000002C
    sw      t8, 0x0024(s0)             ## 00000024
    sub.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80B2E9F8 
    swc1    $f8, 0x0034(s0)            ## 00000034
lbl_80B2E9E8:
    lui     t0, %hi(func_80B2ED6C)     ## t0 = 80B30000
    addiu   t0, t0, %lo(func_80B2ED6C) ## t0 = 80B2ED6C
    sh      t9, 0x005C(s0)             ## 0000005C
    sw      t0, 0x0024(s0)             ## 00000024
lbl_80B2E9F8:
    sw      t1, 0x0028(s0)             ## 00000028
    lbu     t2, 0x0028(s1)             ## 00000028
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sh      t2, 0x0040(s0)             ## 00000040
    lbu     t3, 0x0029(s1)             ## 00000029
    sh      t3, 0x0042(s0)             ## 00000042
    lbu     t4, 0x002A(s1)             ## 0000002A
    sh      t4, 0x0044(s0)             ## 00000044
    lbu     t5, 0x002B(s1)             ## 0000002B
    sh      t5, 0x0046(s0)             ## 00000046
    lbu     t6, 0x002C(s1)             ## 0000002C
    sh      t6, 0x0048(s0)             ## 00000048
    lbu     t7, 0x002D(s1)             ## 0000002D
    sh      t7, 0x004A(s0)             ## 0000004A
    lbu     t8, 0x002E(s1)             ## 0000002E
    sh      t8, 0x004C(s0)             ## 0000004C
    lbu     t9, 0x002F(s1)             ## 0000002F
    sh      $zero, 0x0050(s0)          ## 00000050
    sh      t9, 0x004E(s0)             ## 0000004E
    lh      t0, 0x0030(s1)             ## 00000030
    sh      t0, 0x0052(s0)             ## 00000052
    lh      t1, 0x0032(s1)             ## 00000032
    sh      t1, 0x0054(s0)             ## 00000054
    lw      t2, 0x0000(s1)             ## 00000000
    sw      t2, 0x003C(s0)             ## 0000003C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B2EA70:
    addiu   $sp, $sp, 0xFEB0           ## $sp = FFFFFEB0
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a0, 0x0150($sp)            
    sw      a1, 0x0154($sp)            
    lw      t6, 0x0150($sp)            
    lw      s0, 0x0000(t6)             ## 00000000
    lh      t7, 0x0052(s1)             ## 00000052
    lui     $at, %hi(var_80B2EE50)     ## $at = 80B30000
    lwc1    $f8, %lo(var_80B2EE50)($at) 
    mtc1    t7, $f4                    ## $f4 = 0.00
    lw      a1, 0x0000(s1)             ## 00000000
    lw      a2, 0x0004(s1)             ## 00000004
    cvt.s.w $f6, $f4                   
    lw      a3, 0x0008(s1)             ## 00000008
    addiu   a0, $sp, 0x010C            ## a0 = FFFFFFBC
    mul.s   $f0, $f6, $f8              
    jal     func_8008F82C              ## guTranslateF
    swc1    $f0, 0x0044($sp)           
    lwc1    $f0, 0x0044($sp)           
    addiu   a0, $sp, 0x00CC            ## a0 = FFFFFF7C
    lui     a3, 0x3F80                 ## a3 = 3F800000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_8008F4A8              ## guScaleF
    nop
    lw      a1, 0x0150($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1DA0           ## $at = 00011DA0
    addiu   a0, $sp, 0x010C            ## a0 = FFFFFFBC
    addiu   a2, $sp, 0x004C            ## a2 = FFFFFEFC
    jal     func_8008EDB8              
    addu    a1, a1, $at                
    addiu   a0, $sp, 0x004C            ## a0 = FFFFFEFC
    addiu   a1, $sp, 0x00CC            ## a1 = FFFFFF7C
    jal     func_8008EDB8              
    addiu   a2, $sp, 0x008C            ## a2 = FFFFFF3C
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8008FC98              
    addiu   a1, $sp, 0x008C            ## a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2EC50    
    or      a3, v0, $zero              ## a3 = 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      a3, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t1, 0xDB06                 ## t1 = DB060000
    ori     t1, t1, 0x0020             ## t1 = DB060020
    addiu   t0, v0, 0x0008             ## t0 = 00000008
    sw      t0, 0x02D0(s0)             ## 000002D0
    sw      t1, 0x0000(v0)             ## 00000000
    lh      t2, 0x0050(s1)             ## 00000050
    lui     a2, %hi(var_80B2EE38)      ## a2 = 80B30000
    lui     t8, 0x8012                 ## t8 = 80120000
    sll     t3, t2,  2                 
    addu    a2, a2, t3                 
    lw      a2, %lo(var_80B2EE38)(a2)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t5, a2,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             ## 80120C38
    and     t4, a2, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t9, t4, t8                 
    addu    t0, t9, $at                
    sw      t0, 0x0004(v0)             ## 00000004
    jal     func_8007E930              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t2, 0xFA00                 ## t2 = FA000000
    addiu   t1, v0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s0)             ## 000002D0
    sw      t2, 0x0000(v0)             ## 00000000
    lh      t3, 0x0044(s1)             ## 00000044
    lh      t0, 0x0042(s1)             ## 00000042
    lh      t4, 0x0040(s1)             ## 00000040
    andi    t5, t3, 0x00FF             ## t5 = 00000000
    sll     t6, t5,  8                 
    andi    t1, t0, 0x00FF             ## t1 = 00000000
    sll     t8, t4, 24                 
    or      t9, t6, t8                 ## t9 = 00000000
    sll     t2, t1, 16                 
    or      t3, t9, t2                 ## t3 = FA000000
    ori     t5, t3, 0x00FF             ## t5 = FA0000FF
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t4, 0xFB00                 ## t4 = FB000000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0000(v0)             ## 00000000
    lh      t6, 0x004E(s1)             ## 0000004E
    lh      t3, 0x004A(s1)             ## 0000004A
    lh      t1, 0x0048(s1)             ## 00000048
    andi    t8, t6, 0x00FF             ## t8 = 00000000
    lh      t6, 0x004C(s1)             ## 0000004C
    andi    t5, t3, 0x00FF             ## t5 = 00000000
    sll     t9, t1, 24                 
    or      t2, t8, t9                 ## t2 = 00000000
    sll     t7, t5, 16                 
    andi    t0, t6, 0x00FF             ## t0 = 00000000
    sll     t1, t0,  8                 
    or      t4, t2, t7                 ## t4 = 00000008
    or      t8, t4, t1                 ## t8 = 00000008
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t3, 0xDE00                 ## t3 = DE000000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t3, 0x0000(v0)             ## 00000000
    lw      t5, 0x0038(s1)             ## 00000038
    sw      t5, 0x0004(v0)             ## 00000004
lbl_80B2EC50:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0150           ## $sp = 00000000


func_80B2EC64:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    sw      a2, 0x0020($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f8                   ## $f8 = 3.00
    sub.s   $f6, $f0, $f4              
    lw      a2, 0x0020($sp)            
    mul.s   $f10, $f6, $f8             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f10, 0x0018(a2)           ## 00000018
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f4                   ## $f4 = 3.00
    sub.s   $f18, $f0, $f16            
    lw      a2, 0x0020($sp)            
    mul.s   $f6, $f18, $f4             
    lw      v0, 0x003C(a2)             ## 0000003C
    beq     v0, $zero, lbl_80B2ED14    
    swc1    $f6, 0x0020(a2)            ## 00000020
    lbu     t6, 0x0002(v0)             ## 00000002
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bnel    t6, $at, lbl_80B2ED18      
    lh      t8, 0x0050(a2)             ## 00000050
    lw      t7, 0x0130(v0)             ## 00000130
    beql    t7, $zero, lbl_80B2ED18    
    lh      t8, 0x0050(a2)             ## 00000050
    lwc1    $f8, 0x0024(v0)            ## 00000024
    lwc1    $f10, 0x002C(a2)           ## 0000002C
    lwc1    $f4, 0x0030(a2)            ## 00000030
    add.s   $f16, $f8, $f10            
    lwc1    $f10, 0x0034(a2)           ## 00000034
    swc1    $f16, 0x0000(a2)           ## 00000000
    lwc1    $f18, 0x0028(v0)           ## 00000028
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0004(a2)            ## 00000004
    lwc1    $f8, 0x002C(v0)            ## 0000002C
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(a2)           ## 00000008
lbl_80B2ED14:
    lh      t8, 0x0050(a2)             ## 00000050
lbl_80B2ED18:
    lwc1    $f18, 0x002C(a2)           ## 0000002C
    lwc1    $f4, 0x0018(a2)            ## 00000018
    lwc1    $f8, 0x0034(a2)            ## 00000034
    lwc1    $f10, 0x0020(a2)           ## 00000020
    addiu   t9, t8, 0x0001             ## t9 = 00000001
    sh      t9, 0x0050(a2)             ## 00000050
    add.s   $f6, $f18, $f4             
    lh      t0, 0x0050(a2)             ## 00000050
    lh      t2, 0x0052(a2)             ## 00000052
    add.s   $f16, $f8, $f10            
    lh      t3, 0x0054(a2)             ## 00000054
    andi    t1, t0, 0x0003             ## t1 = 00000000
    swc1    $f6, 0x002C(a2)            ## 0000002C
    addu    t4, t2, t3                 
    swc1    $f16, 0x0034(a2)           ## 00000034
    sh      t1, 0x0050(a2)             ## 00000050
    sh      t4, 0x0052(a2)             ## 00000052
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2ED6C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      v0, 0x003C(a2)             ## 0000003C
    beql    v0, $zero, lbl_80B2EDF4    
    lh      t9, 0x0050(a2)             ## 00000050
    lbu     t6, 0x0002(v0)             ## 00000002
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bnel    t6, $at, lbl_80B2EDF4      
    lh      t9, 0x0050(a2)             ## 00000050
    lw      t7, 0x0130(v0)             ## 00000130
    beql    t7, $zero, lbl_80B2EDF4    
    lh      t9, 0x0050(a2)             ## 00000050
    lh      a0, 0x0032(v0)             ## 00000032
    jal     func_800636C4              ## sins?
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lw      v0, 0x003C(a2)             ## 0000003C
    lwc1    $f4, 0x0000(a2)            ## 00000000
    lwc1    $f6, 0x0068(v0)            ## 00000068
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0000(a2)           ## 00000000
    jal     func_80063684              ## coss?
    lh      a0, 0x0032(v0)             ## 00000032
    lw      a2, 0x0020($sp)            
    lw      t8, 0x003C(a2)             ## 0000003C
    lwc1    $f16, 0x0008(a2)           ## 00000008
    lwc1    $f18, 0x0068(t8)           ## 00000068
    mul.s   $f6, $f0, $f18             
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0008(a2)            ## 00000008
    lh      t9, 0x0050(a2)             ## 00000050
lbl_80B2EDF4:
    lh      t3, 0x0052(a2)             ## 00000052
    lh      t4, 0x0054(a2)             ## 00000054
    addiu   t0, t9, 0x0001             ## t0 = 00000001
    sh      t0, 0x0050(a2)             ## 00000050
    lh      t1, 0x0050(a2)             ## 00000050
    addu    t5, t3, t4                 
    sh      t5, 0x0052(a2)             ## 00000052
    andi    t2, t1, 0x0003             ## t2 = 00000000
    sh      t2, 0x0050(a2)             ## 00000050
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

.word 0x00000005
.word func_80B2E900
var_80B2EE38: .word \
0x0405B4E0, 0x0405B6E0, 0x0405B8E0, 0x0405BAE0, \
0x00000000, 0x00000000

.section .rodata

var_80B2EE50: .word 0x3B23D70A, 0x00000000, 0x00000000, 0x00000000

