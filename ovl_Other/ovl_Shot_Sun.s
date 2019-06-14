#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B226C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    lui     t0, %hi(func_80B22904)     # t0 = 80B20000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_80B226F4      
    addiu   t0, t0, %lo(func_80B22904) # t0 = 80B22904
    addiu   $at, $zero, 0x0041         # $at = 00000041
    bne     v0, $at, lbl_80B22724      
    lw      a0, 0x002C($sp)            
lbl_80B226F4:
    lw      t6, 0x0004(a2)             # 00000004
    lui     $at, 0x0200                # $at = 02000000
    sb      $zero, 0x0194(a2)          # 00000194
    ori     t7, t6, 0x0010             # t7 = 00000010
    or      t9, t7, $at                # t9 = 02000010
    sw      t7, 0x0004(a2)             # 00000004
    lui     $at, 0x0800                # $at = 08000000
    sw      t9, 0x0004(a2)             # 00000004
    or      t2, t9, $at                # t2 = 0A000010
    sw      t0, 0x0188(a2)             # 00000188
    beq     $zero, $zero, lbl_80B2276C 
    sw      t2, 0x0004(a2)             # 00000004
lbl_80B22724:
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    sw      a1, 0x001C($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0028($sp)            
    lui     a3, %hi(var_80B22CD0)      # a3 = 80B20000
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0028($sp)            
    addiu   a3, a3, %lo(var_80B22CD0)  # a3 = 80B22CD0
    jal     func_8004ACEC              
    lw      a0, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    lui     t3, %hi(func_80B22A54)     # t3 = 80B20000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t4, 0x0004(a2)             # 00000004
    addiu   t3, t3, %lo(func_80B22A54) # t3 = 80B22A54
    sw      t3, 0x0188(a2)             # 00000188
    and     t5, t4, $at                
    sw      t5, 0x0004(a2)             # 00000004
lbl_80B2276C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B2277C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_80B227B0      
    addiu   $at, $zero, 0x0041         # $at = 00000041
    beq     v0, $at, lbl_80B227B0      
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             # a1 = 0000013C
lbl_80B227B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B227C0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    lh      v1, 0x0192(s0)             # 00000192
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    blez    v1, lbl_80B227F0           
    andi    v0, v0, 0x00FF             # v0 = 00000000
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B22854 
    sh      t6, 0x0192(s0)             # 00000192
lbl_80B227F0:
    beq     v0, $at, lbl_80B2280C      
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   $at, $zero, 0x0041         # $at = 00000041
    beq     v0, $at, lbl_80B22818      
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    beq     $zero, $zero, lbl_80B22820 
    lwc1    $f4, 0x000C(s0)            # 0000000C
lbl_80B2280C:
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    beq     $zero, $zero, lbl_80B2281C 
    sw      t7, 0x0038($sp)            
lbl_80B22818:
    sw      t8, 0x0038($sp)            
lbl_80B2281C:
    lwc1    $f4, 0x000C(s0)            # 0000000C
lbl_80B22820:
    lw      a3, 0x0008(s0)             # 00000008
    lw      t9, 0x0038($sp)            
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0010(s0)            # 00000010
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    sw      t9, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B22854:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B22868:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_80049DA4              
    nop
    lbu     t6, 0x0002(s0)             # 00000002
    lui     t8, %hi(func_80B227C0)     # t8 = 80B20000
    lw      a1, 0x003C($sp)            
    beq     v0, t6, lbl_80B228A4       
    addiu   t8, t8, %lo(func_80B227C0) # t8 = 80B227C0
    lh      t7, 0x0192(s0)             # 00000192
    beql    t7, $zero, lbl_80B228F4    
    lw      $ra, 0x0034($sp)           
lbl_80B228A4:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sw      t8, 0x0188(s0)             # 00000188
    sh      t9, 0x0192(s0)             # 00000192
    lw      a3, 0x0008(s0)             # 00000008
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0010(s0)            # 00000010
    addiu   t0, $zero, 0x0011          # t0 = 00000011
    sw      t0, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x008C          # a2 = 0000008C
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x287B          # a1 = 0000287B
    lw      $ra, 0x0034($sp)           
lbl_80B228F4:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B22904:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v1, 0x1C44(a3)             # 00001C44
    lh      t0, 0x001C(a2)             # 0000001C
    sw      a3, 0x002C($sp)            
    sw      a2, 0x0028($sp)            
    andi    t0, t0, 0x00FF             # t0 = 00000000
    sw      t0, 0x001C($sp)            
    addiu   a0, a2, 0x0024             # a0 = 00000024
    sw      v1, 0x0024($sp)            
    jal     func_800A5538              
    addiu   a1, v1, 0x0024             # a1 = 00000024
    lui     $at, %hi(var_80B22D00)     # $at = 80B20000
    lwc1    $f4, %lo(var_80B22D00)($at) 
    lw      v1, 0x0024($sp)            
    lw      a2, 0x0028($sp)            
    c.lt.s  $f4, $f0                   
    lw      a3, 0x002C($sp)            
    lw      t0, 0x001C($sp)            
    bc1fl   lbl_80B2296C               
    lbu     v0, 0x0194(a2)             # 00000194
    beq     $zero, $zero, lbl_80B22A44 
    sb      $zero, 0x0194(a2)          # 00000194
    lbu     v0, 0x0194(a2)             # 00000194
lbl_80B2296C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B229A4    
    nop
    lw      v0, 0x0670(v1)             # 00000670
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     t6, v0,  7                 
    bltzl   t6, lbl_80B229A0           
    sb      t8, 0x0194(a2)             # 00000194
    lui     $at, 0x0080                # $at = 00800000
    or      t7, v0, $at                # t7 = 00800000
    beq     $zero, $zero, lbl_80B22A44 
    sw      t7, 0x0670(v1)             # 00000670
    sb      t8, 0x0194(a2)             # 00000194
lbl_80B229A0:
    andi    v0, t8, 0x00FF             # v0 = 00000001
lbl_80B229A4:
    bne     v0, $at, lbl_80B229C8      
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800DD400              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    beq     $zero, $zero, lbl_80B22A44 
    sb      t9, 0x0194(a2)             # 00000194
lbl_80B229C8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B22A44      
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a3, $at                
    lhu     t1, 0x04C6(v0)             # 000004C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t1, $at, lbl_80B22A44      
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bnel    t0, $at, lbl_80B22A00      
    addiu   $at, $zero, 0x0041         # $at = 00000041
    lhu     t2, 0x04C4(v0)             # 000004C4
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     t2, $at, lbl_80B22A14      
    addiu   $at, $zero, 0x0041         # $at = 00000041
lbl_80B22A00:
    bnel    t0, $at, lbl_80B22A44      
    sb      $zero, 0x0194(a2)          # 00000194
    lhu     t3, 0x04C4(v0)             # 000004C4
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t3, $at, lbl_80B22A40      
lbl_80B22A14:
    lui     t4, %hi(func_80B22868)     # t4 = 80B20000
    addiu   t4, t4, %lo(func_80B22868) # t4 = 80B22868
    sw      t4, 0x0188(a2)             # 00000188
    sw      a2, 0x0028($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8006BA10              
    or      a1, a2, $zero              # a1 = 00000000
    lw      a2, 0x0028($sp)            
    sh      $zero, 0x0192(a2)          # 00000192
    beq     $zero, $zero, lbl_80B22A44 
    sb      $zero, 0x0194(a2)          # 00000194
lbl_80B22A40:
    sb      $zero, 0x0194(a2)          # 00000194
lbl_80B22A44:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B22A54:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0030($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x014D(a3)             # 0000014D
    lw      v1, 0x1C44(s0)             # 00001C44
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80B22B8C    
    lui     $at, 0x42F0                # $at = 42F00000
    jal     func_800646F0              
    sw      a3, 0x0060($sp)            
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x70C8(t8)            # 800F8F38
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addu    t9, t9, t8                 
    lbu     t9, -0x59BC(t9)            # 8011A644
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE0
    bne     t9, $at, lbl_80B22B3C      
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
    lui     $at, 0xC448                # $at = C4480000
    mtc1    $at, $f4                   # $f4 = -800.00
    lui     $at, %hi(var_80B22D04)     # $at = 80B20000
    lwc1    $f6, %lo(var_80B22D04)($at) 
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sw      t0, 0x0024($sp)            
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x010F          # a2 = 0000010F
    lui     a3, 0x442F                 # a3 = 442F0000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f4, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    lui     v1, 0x0200                 # v1 = 02000000
    addiu   v1, v1, 0x7020             # v1 = 02007020
    sll     t1, v1,  4                 
    srl     t2, t1, 28                 
    sll     t3, t2,  2                 
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x1D68(s0)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_80B22B7C 
    sb      t8, -0x461C($at)           # 8011B9E4
lbl_80B22B3C:
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f8                   # $f8 = 700.00
    lui     $at, 0xC448                # $at = C4480000
    mtc1    $at, $f10                  # $f10 = -800.00
    lui     $at, %hi(var_80B22D08)     # $at = 80B20000
    lwc1    $f16, %lo(var_80B22D08)($at) 
    swc1    $f8, 0x0040($sp)           
    swc1    $f10, 0x0044($sp)          
    jal     func_80013678              
    swc1    $f16, 0x0048($sp)          
    beq     v0, $zero, lbl_80B22B7C    
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t9, $zero, 0x1770          # t9 = 00001770
    sh      t9, 0x014A(v0)             # 0000014A
    swc1    $f18, 0x0068(v0)           # 00000068
lbl_80B22B7C:
    jal     func_80020EB4              
    lw      a0, 0x0060($sp)            
    beq     $zero, $zero, lbl_80B22C7C 
    lw      $ra, 0x0034($sp)           
lbl_80B22B8C:
    mtc1    $at, $f4                   # $f4 = 0.00
    lwc1    $f6, 0x0090(a3)            # 00000090
    lui     v0, 0x8012                 # v0 = 80120000
    c.lt.s  $f4, $f6                   
    nop
    bc1tl   lbl_80B22C7C               
    lw      $ra, 0x0034($sp)           
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    slti    $at, v0, 0x4555            
    bne     $at, $zero, lbl_80B22C78   
    slti    $at, v0, 0x5000            
    beq     $at, $zero, lbl_80B22C78   
    lui     $at, %hi(var_80B22D0C)     # $at = 80B20000
    lwc1    $f0, %lo(var_80B22D0C)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at                
    lwc1    $f10, 0x0A28(v0)           # 80120A28
    lwc1    $f8, 0x094C(v1)            # 0000094C
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f16, $f10, $f0            
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF8
    addiu   a2, a3, 0x013C             # a2 = 0000013C
    or      a0, a2, $zero              # a0 = 0000013C
    add.s   $f18, $f8, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0058($sp)            
    lwc1    $f16, 0x0A2C(v0)           # 80120A2C
    lwc1    $f6, 0x0950(v1)            # 00000950
    mul.s   $f18, $f16, $f0            
    sub.s   $f8, $f6, $f10             
    add.s   $f4, $f8, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x005A($sp)            
    lwc1    $f16, 0x0A30(v0)           # 80120A30
    lwc1    $f10, 0x0954(v1)           # 00000954
    mul.s   $f8, $f16, $f0             
    add.s   $f18, $f10, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t5, $f4                    
    nop
    sh      t5, 0x005C($sp)            
    lw      t7, 0x0000(a1)             # FFFFFFF8
    swl     t7, 0x018C(a3)             # 0000018C
    swr     t7, 0x018F(a3)             # 0000018F
    lhu     t7, 0x0004(a1)             # FFFFFFFC
    sh      t7, 0x0190(a3)             # 00000190
    jal     func_80050B44              
    sw      a2, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x003C($sp)            
    addu    a1, s0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B22C78:
    lw      $ra, 0x0034($sp)           
lbl_80B22C7C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_80B22C8C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0188(a0)             # 00000188
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B22CB0: .word 0x01830600, 0x00000009, 0x00010000, 0x00000198
.word func_80B226C0
.word func_80B2277C
.word func_80B22C8C
.word 0x00000000
var_80B22CD0: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000020, 0x00000000, 0x00010100, \
0x001E003C, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B22D00: .word 0x46AFC800
var_80B22D04: .word 0x45E2E800
var_80B22D08: .word 0x45E2E800
var_80B22D0C: .word 0x3E2AAAAB

