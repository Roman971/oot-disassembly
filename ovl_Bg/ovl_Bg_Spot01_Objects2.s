#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B4B500:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a2)             ## 0000001C
    andi    t7, t6, 0x0007             ## t7 = 00000000
    sltiu   $at, t7, 0x0005            
    beq     $at, $zero, lbl_80B4B558   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80B4B900)     ## $at = 80B50000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B4B900)($at) 
    jr      t7                         
    nop
var_80B4B538:
    addiu   t8, $zero, 0x0180          ## t8 = 00000180
    beq     $zero, $zero, lbl_80B4B558 
    sw      t8, 0x0168(a2)             ## 00000168
var_80B4B544:
    addiu   t9, $zero, 0x0181          ## t9 = 00000181
    beq     $zero, $zero, lbl_80B4B558 
    sw      t9, 0x0168(a2)             ## 00000168
var_80B4B550:
    addiu   t0, $zero, 0x0180          ## t0 = 00000180
    sw      t0, 0x0168(a2)             ## 00000168
lbl_80B4B558:
    lw      v0, 0x0168(a2)             ## 00000168
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    bltz    v0, lbl_80B4B5A4           
    or      a0, a2, $zero              ## a0 = 00000000
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addu    a0, a3, $at                
    jal     func_80081628              ## ObjectIndex
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sb      v0, 0x016C(a2)             ## 0000016C
    lb      t1, 0x016C(a2)             ## 0000016C
    bgez    t1, lbl_80B4B5B0           
    nop
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4B5D0 
    lw      $ra, 0x0014($sp)           
lbl_80B4B5A4:
    jal     func_80020EB4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
lbl_80B4B5B0:
    lui     t2, %hi(func_80B4B680)     ## t2 = 80B50000
    addiu   t2, t2, %lo(func_80B4B680) ## t2 = 80B4B680
    lui     a1, %hi(var_80B4B8D0)      ## a1 = 80B50000
    sw      t2, 0x0154(a2)             ## 00000154
    addiu   a1, a1, %lo(var_80B4B8D0)  ## a1 = 80B4B8D0
    jal     func_80063F7C              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80B4B5D0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4B5DC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B4B5EC:
    sll     t6, a2,  3                 
    addu    t7, a0, t6                 
    lw      t0, 0x0004(t7)             ## 00000004
    lui     t2, 0x8012                 ## t2 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t8, t0,  4                 
    srl     t9, t8, 28                 
    sll     t1, t9,  2                 
    addu    t2, t2, t1                 
    lw      t2, 0x0C38(t2)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t5, a3,  2                 
    subu    t5, t5, a3                 
    and     t3, t0, $at                
    sll     t5, t5,  1                 
    addu    t4, t2, t3                 
    addu    v1, t4, t5                 
    lui     $at, 0x8000                ## $at = 80000000
    addu    v1, v1, $at                
    lh      t6, 0x0000(v1)             ## 00000000
    or      v0, $zero, $zero           ## v0 = 00000000
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a1)            ## 00000000
    lh      t7, 0x0002(v1)             ## 00000002
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a1)           ## 00000004
    lh      t8, 0x0004(v1)             ## 00000004
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a1)           ## 00000008
    jr      $ra                        
    nop


func_80B4B680:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     $at, 0x0001                ## $at = 00010000
    sw      $zero, 0x0054($sp)         
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a0, s1, $at                
    jal     func_80081688              
    lb      a1, 0x016C(s0)             ## 0000016C
    beql    v0, $zero, lbl_80B4B820    
    lw      $ra, 0x003C($sp)           
    lb      t6, 0x016C(s0)             ## 0000016C
    lui     t9, 0x0001                 ## t9 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, s1, t7                 
    addu    t9, t9, t8                 
    lw      t9, 0x17B4(t9)             ## 000117B4
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addu    t0, t9, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t0, 0x0C50($at)            ## 80120C50
    lb      t1, 0x016C(s0)             ## 0000016C
    jal     func_80035260              
    sb      t1, 0x001E(s0)             ## 0000001E
    lh      t2, 0x001C(s0)             ## 0000001C
    andi    t3, t2, 0x0007             ## t3 = 00000000
    sltiu   $at, t3, 0x0005            
    beq     $at, $zero, lbl_80B4B804   
    sll     t3, t3,  2                 
    lui     $at, %hi(var_80B4B914)     ## $at = 80B50000
    addu    $at, $at, t3               
    lw      t3, %lo(var_80B4B914)($at) 
    jr      t3                         
    nop
var_80B4B724:
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x1A38             ## a0 = 06001A38
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0054            ## a1 = FFFFFFFC
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s1, 0x0810             ## a1 = 00000810
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_800313A4              ## DynaPolyInfo_setActor
    lw      a3, 0x0054($sp)            
    beq     $zero, $zero, lbl_80B4B804 
    sw      v0, 0x013C(s0)             ## 0000013C
var_80B4B750:
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x1C58             ## a0 = 06001C58
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0054            ## a1 = FFFFFFFC
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s1, 0x0810             ## a1 = 00000810
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_800313A4              ## DynaPolyInfo_setActor
    lw      a3, 0x0054($sp)            
    sw      v0, 0x013C(s0)             ## 0000013C
    lui     t4, 0x8012                 ## t4 = 80120000
    lw      t4, -0x5A20(t4)            ## 8011A5E0
    lui     a0, 0x0001                 ## a0 = 00010000
    addu    a0, a0, s1                 
    bne     t4, $zero, lbl_80B4B804    
    addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
    lh      a2, 0x001C(s0)             ## 0000001C
    lw      a0, 0x1E08(a0)             ## 00011E08
    or      a3, $zero, $zero           ## a3 = 00000000
    sra     a2, a2,  8                 
    jal     func_80B4B5EC              
    andi    a2, a2, 0x00FF             ## a2 = 00000000
    lwc1    $f4, 0x0040($sp)           
    lwc1    $f6, 0x0044($sp)           
    lwc1    $f8, 0x0048($sp)           
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    swc1    $f8, 0x0018($sp)           
    lh      t5, 0x0030(s0)             ## 00000030
    addiu   a0, s1, 0x1C24             ## a0 = 00001C24
    or      a1, s0, $zero              ## a1 = 00000000
    sw      t5, 0x001C($sp)            
    lh      t6, 0x0032(s0)             ## 00000032
    or      a2, s1, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x01BC          ## a3 = 000001BC
    sw      t6, 0x0020($sp)            
    lh      t7, 0x0034(s0)             ## 00000034
    sw      t7, 0x0024($sp)            
    lh      t8, 0x001C(s0)             ## 0000001C
    sra     t9, t8,  8                 
    andi    t0, t9, 0x00FF             ## t0 = 00000000
    sll     t1, t0,  8                 
    addiu   t2, t1, 0x0001             ## t2 = 00000001
    jal     func_800253F0              
    sw      t2, 0x0028($sp)            
lbl_80B4B804:
    lui     t3, %hi(func_80B4B864)     ## t3 = 80B50000
    lui     t4, %hi(func_80B4B830)     ## t4 = 80B50000
    addiu   t3, t3, %lo(func_80B4B864) ## t3 = 80B4B864
    addiu   t4, t4, %lo(func_80B4B830) ## t4 = 80B4B830
    sw      t3, 0x0134(s0)             ## 00000134
    sw      t4, 0x0154(s0)             ## 00000154
    lw      $ra, 0x003C($sp)           
lbl_80B4B820:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80B4B830:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B4B840:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             ## 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4B864:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    or      a2, a1, $zero              ## a2 = 00000000
    lh      t6, 0x001C(a3)             ## 0000001C
    lui     a1, %hi(var_80B4B8E0)      ## a1 = 80B50000
    or      a0, a2, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0007             ## t7 = 00000000
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    jal     func_80028048              
    lw      a1, %lo(var_80B4B8E0)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80B4B8B0: .word 0x019D0100, 0x00000010, 0x00010000, 0x00000170
.word func_80B4B500
.word func_80B4B5DC
.word func_80B4B840
.word 0x00000000
var_80B4B8D0: .word 0xB0F43200, 0xB0F807D0, 0xB0FC05DC, 0x48500064
var_80B4B8E0: .word \
0x06001EB0, 0x06002780, 0x06003078, 0x06001228, \
0x06001528, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B4B900: .word var_80B4B538
.word var_80B4B538
.word var_80B4B538
.word var_80B4B544
.word var_80B4B550
var_80B4B914: .word lbl_80B4B804
.word lbl_80B4B804
.word lbl_80B4B804
.word var_80B4B750
.word var_80B4B724
.word 0x00000000, 0x00000000

