#include <mips.h>
.set noreorder
.set noat

.section .text
func_8095B3D0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_8095B9F0)      ## a1 = 80960000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_8095B9F0)  ## a1 = 8095B9F0
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           ## a1 = 00000000
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x0428             ## a0 = 06000428
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              ## a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lui     t6, %hi(func_8095B510)     ## t6 = 80960000
    addiu   t6, t6, %lo(func_8095B510) ## t6 = 8095B510
    sw      v0, 0x013C(s0)             ## 0000013C
    sw      t6, 0x0154(s0)             ## 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B44C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B480:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a3, a1, $zero              ## a3 = 00000000
    addiu   a1, $sp, 0x001C            ## a1 = FFFFFFF4
    addiu   a2, a3, 0x0024             ## a2 = 00000024
    jal     func_8002154C              
    sw      a3, 0x002C($sp)            
    lwc1    $f0, 0x001C($sp)           
    lui     $at, %hi(var_8095BA00)     ## $at = 80960000
    lwc1    $f4, %lo(var_8095BA00)($at) 
    abs.s   $f0, $f0                   
    lw      a3, 0x002C($sp)            
    c.lt.s  $f0, $f4                   
    lwc1    $f0, 0x0024($sp)           
    lui     $at, %hi(var_8095BA04)     ## $at = 80960000
    bc1fl   lbl_8095B504               
    lw      $ra, 0x0014($sp)           
    lwc1    $f6, %lo(var_8095BA04)($at) 
    lui     $at, 0xC210                ## $at = C2100000
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_8095B504               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f8                   ## $f8 = -36.00
    nop
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8095B504               
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x0670(a3)             ## 00000670
    ori     t7, t6, 0x0200             ## t7 = 00000200
    sw      t7, 0x0670(a3)             ## 00000670
    lw      $ra, 0x0014($sp)           
lbl_8095B504:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B510:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    mtc1    $zero, $f2                 ## $f2 = 0.00
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    or      a2, a1, $zero              ## a2 = 00000000
    lwc1    $f0, 0x0140(a3)            ## 00000140
    lw      s0, 0x1C44(a2)             ## 00001C44
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_8095B648               
    or      a0, a3, $zero              ## a0 = 00000000
    lh      v0, 0x00A4(a2)             ## 000000A4
    addiu   $at, $zero, 0x0053         ## $at = 00000053
    lui     v1, 0x8012                 ## v1 = 80120000
    bne     v0, $at, lbl_8095B5C8      
    addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
    lw      t6, 0x0004(v1)             ## 8011A5D4
    beql    t6, $zero, lbl_8095B5CC    
    c.lt.s  $f2, $f0                   
    lw      t7, 0x0010(v1)             ## 8011A5E0
    bnel    t7, $zero, lbl_8095B5CC    
    c.lt.s  $f2, $f0                   
    swc1    $f2, 0x0140(a3)            ## 00000140
    lw      t8, 0x0670(s0)             ## 00000670
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    or      a0, a2, $zero              ## a0 = 00000000
    and     t9, t8, $at                
    sw      t9, 0x0670(s0)             ## 00000670
    sw      a3, 0x0020($sp)            
    jal     func_8009CB08              
    sw      a2, 0x0024($sp)            
    bne     v0, $zero, lbl_8095B644    
    lw      a3, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x5073          ## a1 = 00005073
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800DCE14              
    sw      a3, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lui     t1, %hi(func_8095B818)     ## t1 = 80960000
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    addiu   t1, t1, %lo(func_8095B818) ## t1 = 8095B818
    sh      t0, 0x001C(a3)             ## 0000001C
    beq     $zero, $zero, lbl_8095B644 
    sw      t1, 0x0154(a3)             ## 00000154
lbl_8095B5C8:
    c.lt.s  $f2, $f0                   
lbl_8095B5CC:
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
    addiu   $at, $zero, 0x0057         ## $at = 00000057
    bc1tl   lbl_8095B614               
    swc1    $f2, 0x0140(a3)            ## 00000140
    bnel    v0, $at, lbl_8095B62C      
    lh      t5, 0x00B6(a3)             ## 000000B6
    lw      t2, 0x0004(v1)             ## 8011A5D4
    or      a0, a2, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    beql    t2, $zero, lbl_8095B62C    
    lh      t5, 0x00B6(a3)             ## 000000B6
    jal     func_8002049C              
    sw      a3, 0x0020($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    bne     v0, $zero, lbl_8095B628    
    lw      a3, 0x0020($sp)            
    swc1    $f2, 0x0140(a3)            ## 00000140
lbl_8095B614:
    lw      t3, 0x0670(s0)             ## 00000670
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    and     t4, t3, $at                
    beq     $zero, $zero, lbl_8095B644 
    sw      t4, 0x0670(s0)             ## 00000670
lbl_8095B628:
    lh      t5, 0x00B6(a3)             ## 000000B6
lbl_8095B62C:
    ori     $at, $zero, 0x8000         ## $at = 00008000
    lui     t7, %hi(func_8095B664)     ## t7 = 80960000
    addiu   t7, t7, %lo(func_8095B664) ## t7 = 8095B664
    addu    t6, t5, $at                
    sh      t6, 0x0032(a3)             ## 00000032
    sw      t7, 0x0154(a3)             ## 00000154
lbl_8095B644:
    or      a0, a3, $zero              ## a0 = 00000000
lbl_8095B648:
    jal     func_8095B480              
    or      a1, s0, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B664:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    lui     $at, 0x3FC0                ## $at = 3FC00000
    sw      s0, 0x0030($sp)            
    mtc1    $at, $f2                   ## $f2 = 1.50
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lui     $at, %hi(var_8095BA08)     ## $at = 80960000
    lwc1    $f6, %lo(var_8095BA08)($at) 
    lw      t7, 0x1C44(t6)             ## 00001C44
    addiu   a0, s0, 0x0070             ## a0 = 00000070
    lui     a1, 0x4270                 ## a1 = 42700000
    sw      t7, 0x003C($sp)            
    lwc1    $f4, 0x0068(s0)            ## 00000068
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f0, 0x0068(s0)            ## 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8095B6C8               
    swc1    $f0, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_8095B6C8 
    swc1    $f2, 0x0068(s0)            ## 00000068
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_8095B6C8:
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             ## 00000068
    sw      v0, 0x0038($sp)            
    jal     func_800636C4              ## sins?
    lh      a0, 0x0032(s0)             ## 00000032
    lwc1    $f10, 0x0070(s0)           ## 00000070
    lwc1    $f18, 0x0008(s0)           ## 00000008
    lh      a0, 0x0032(s0)             ## 00000032
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063684              ## coss?
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x0070(s0)            ## 00000070
    lwc1    $f10, 0x0010(s0)           ## 00000010
    mul.s   $f8, $f0, $f6              
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x002C(s0)           ## 0000002C
    lw      t8, 0x0038($sp)            
    beql    t8, $zero, lbl_8095B7C0    
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f18                ## $f18 = 0.00
    lw      v0, 0x003C($sp)            
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    swc1    $f18, 0x0140(s0)           ## 00000140
    lw      t9, 0x0670(v0)             ## 00000670
    lui     t2, 0x8012                 ## t2 = 80120000
    and     t0, t9, $at                
    sw      t0, 0x0670(v0)             ## 00000670
    lh      t1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t1, $at, lbl_8095B758      
    nop
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    beq     $zero, $zero, lbl_8095B7B0 
    nop
lbl_8095B758:
    lw      t2, -0x5A20(t2)            ## FFFFA5E0
    lw      a1, 0x0044($sp)            
    beq     t2, $zero, lbl_8095B7B0    
    nop
    lh      t3, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x0053         ## $at = 00000053
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    bne     t3, $at, lbl_8095B7B0      
    nop
    lwc1    $f4, 0x000C(s0)            ## 0000000C
    lw      a3, 0x0008(s0)             ## 00000008
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0010(s0)            ## 00000010
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x000D          ## a2 = 0000000D
    swc1    $f6, 0x0014($sp)           
    lh      t4, 0x00B6(s0)             ## 000000B6
    sw      t5, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              ## ActorSpawn
    sw      t4, 0x001C($sp)            
lbl_8095B7B0:
    lui     t6, %hi(func_8095B7DC)     ## t6 = 80960000
    addiu   t6, t6, %lo(func_8095B7DC) ## t6 = 8095B7DC
    sw      t6, 0x0154(s0)             ## 00000154
    or      a0, s0, $zero              ## a0 = 00000000
lbl_8095B7C0:
    jal     func_8002313C              
    addiu   a1, $zero, 0x200A          ## a1 = 0000200A
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B7DC:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    nop
    lwc1    $f4, 0x0140(a0)            ## 00000140
    lw      v0, 0x1C44(a1)             ## 00001C44
    c.eq.s  $f0, $f4                   
    nop
    bc1t    lbl_8095B810               
    nop
    swc1    $f0, 0x0140(a0)            ## 00000140
    lw      t6, 0x0670(v0)             ## 00000670
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    and     t7, t6, $at                
    sw      t7, 0x0670(v0)             ## 00000670
lbl_8095B810:
    jr      $ra                        
    nop


func_8095B818:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             ## 0000001C
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a2, 0x1C44(a1)             ## 00001C44
    beq     v0, $zero, lbl_8095B838    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x001C(a0)             ## 0000001C
lbl_8095B838:
    lwc1    $f4, 0x0140(a0)            ## 00000140
    lui     t0, %hi(func_8095B510)     ## t0 = 80960000
    addiu   t0, t0, %lo(func_8095B510) ## t0 = 8095B510
    c.eq.s  $f0, $f4                   
    nop
    bc1tl   lbl_8095B86C               
    lh      t9, 0x001C(a0)             ## 0000001C
    swc1    $f0, 0x0140(a0)            ## 00000140
    lw      t7, 0x0670(a2)             ## 00000670
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    and     t8, t7, $at                
    sw      t8, 0x0670(a2)             ## 00000670
    lh      t9, 0x001C(a0)             ## 0000001C
lbl_8095B86C:
    bne     t9, $zero, lbl_8095B878    
    nop
    sw      t0, 0x0154(a0)             ## 00000154
lbl_8095B878:
    jal     func_8095B480              
    or      a1, a2, $zero              ## a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B890:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             ## 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8095B8B4:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              ## s0 = 00000000
    lw      t7, 0x003C($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t7)             ## 00000000
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      t0, 0x003C($sp)            
    lw      a0, 0x0000(t0)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
    mtc1    $zero, $f12                ## $f12 = 0.00
    lui     t2, 0xDE00                 ## t2 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t3, 0x0600                 ## t3 = 06000000
    addiu   t3, t3, 0x01B0             ## t3 = 060001B0
    addiu   t1, v1, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(s0)             ## 000002C0
    sw      t3, 0x0004(v1)             ## 00000004
    sw      t2, 0x0000(v1)             ## 00000000
    lw      t4, 0x0038($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f4, 0x0070(t4)            ## 00000070
    mov.s   $f14, $f12                 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, 0xDA38                 ## t6 = DA380000
    ori     t6, t6, 0x0003             ## t6 = DA380003
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0000(v1)             ## 00000000
    lw      t7, 0x003C($sp)            
    lw      a0, 0x0000(t7)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lui     t9, 0xDE00                 ## t9 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t0, 0x0600                 ## t0 = 06000000
    addiu   t0, t0, 0x02A8             ## t0 = 060002A8
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t0, 0x0004(v1)             ## 00000004
    sw      t9, 0x0000(v1)             ## 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_8095B9D0: .word 0x009D0100, 0x00000000, 0x00A20000, 0x00000158
.word func_8095B3D0
.word func_8095B44C
.word func_8095B890
.word func_8095B8B4
var_8095B9F0: .word 0xB0700000, 0x48500064, 0x00000000, 0x00000000

.section .rodata

var_8095BA00: .word 0x420A6666
var_8095BA04: .word 0xC2E1999A
var_8095BA08: .word 0x3D4CCCCD, 0x00000000

