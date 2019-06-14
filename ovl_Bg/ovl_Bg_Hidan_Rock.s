#include <mips.h>
.set noreorder
.set noat

.section .text
func_808D9560:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, %hi(var_808DA478)      # a1 = 808E0000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_808DA478)  # a1 = 808DA478
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t7, 0x001C(s0)             # 0000001C
    sb      $zero, 0x0159(s0)          # 00000159
    sra     t9, t8,  8                 
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    sb      t7, 0x0158(s0)             # 00000158
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808DA44C)      # a3 = 808E0000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_808DA44C)  # a3 = 808DA44C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lbu     t1, 0x0158(s0)             # 00000158
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xDF78             # a0 = 0600DF78
    bne     t1, $zero, lbl_808D9668    
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_808D963C    
    lui     t4, %hi(func_808D9750)     # t4 = 808E0000
    lui     a1, %hi(var_808DA420)      # a1 = 808E0000
    addiu   a1, a1, %lo(var_808DA420)  # a1 = 808DA420
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lui     a1, %hi(var_808DA420)      # a1 = 808E0000
    addiu   a1, a1, %lo(var_808DA420)  # a1 = 808DA420
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     t3, %hi(func_808D9AE0)     # t3 = 808E0000
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    addiu   t3, t3, %lo(func_808D9AE0) # t3 = 808D9AE0
    sh      t2, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_808D9644 
    sw      t3, 0x0154(s0)             # 00000154
lbl_808D963C:
    addiu   t4, t4, %lo(func_808D9750) # t4 = FFFF9750
    sw      t4, 0x0154(s0)             # 00000154
lbl_808D9644:
    lw      t5, 0x0004(s0)             # 00000004
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xCB80             # a0 = 0600CB80
    ori     t6, t5, 0x0030             # t6 = 00000030
    sw      t6, 0x0004(s0)             # 00000004
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    beq     $zero, $zero, lbl_808D96B0 
    or      a0, s1, $zero              # a0 = 00000000
lbl_808D9668:
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0010(s0)           # 00000010
    trunc.w.s $f6, $f4                   
    lui     t3, %hi(func_808D9B20)     # t3 = 808E0000
    addiu   t3, t3, %lo(func_808D9B20) # t3 = 808D9B20
    trunc.w.s $f10, $f8                  
    mfc1    t8, $f6                    
    sw      t3, 0x0154(s0)             # 00000154
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f10                   
    sh      t8, 0x01B2(s0)             # 000001B2
    mfc1    t2, $f18                   
    sh      t0, 0x01B4(s0)             # 000001B4
    sh      t2, 0x01B6(s0)             # 000001B6
    or      a0, s1, $zero              # a0 = 00000000
lbl_808D96B0:
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0024($sp)            
    sw      v0, 0x013C(s0)             # 0000013C
    sh      $zero, 0x015A(s0)          # 0000015A
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808D96DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x016C             # a1 = 0000016C
    lw      a0, 0x0018($sp)            
    jal     func_800C9568              
    addiu   a0, a0, 0x0160             # a0 = 00000160
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9730:
    lw      t6, 0x0004(a0)             # 00000004
    lui     t8, %hi(func_808D9E80)     # t8 = 808E0000
    addiu   t8, t8, %lo(func_808D9E80) # t8 = 808D9E80
    ori     t7, t6, 0x0030             # t7 = 00000030
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_808D9750:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0020($sp)            
    lwc1    $f0, 0x0140(s0)            # 00000140
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_808D9944               
    sh      $zero, 0x015A(s0)          # 0000015A
    lh      t8, 0x015A(s0)             # 0000015A
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    lw      t3, 0x0020($sp)            
    bnel    t8, $zero, lbl_808D991C    
    lw      t4, 0x0670(t3)             # 00000670
    lwc1    $f4, %lo(var_808DA480)($at) 
    lui     a0, %hi(var_808DA480)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808DA480)  # a0 = 808DA480
    c.eq.s  $f4, $f2                   
    lui     a1, 0xC1A0                 # a1 = C1A00000
    bc1fl   lbl_808D97FC               
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f2, $f0                   
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    bc1f    lbl_808D97E0               
    nop
    lui     $at, %hi(var_808DA4B0)     # $at = 808E0000
    lwc1    $f6, %lo(var_808DA4B0)($at) 
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_808D97F8 
    swc1    $f8, %lo(var_808DA480)($at) 
lbl_808D97E0:
    lwc1    $f10, %lo(var_808DA480)($at) 
    lui     $at, %hi(var_808DA4B4)     # $at = 808E0000
    lwc1    $f16, %lo(var_808DA4B4)($at) 
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    sub.s   $f18, $f10, $f16           
    swc1    $f18, %lo(var_808DA480)($at) 
lbl_808D97F8:
    lui     $at, 0x4000                # $at = 40000000
lbl_808D97FC:
    mtc1    $at, $f12                  # $f12 = 2.00
    lui     $at, %hi(var_808DA4B8)     # $at = 808E0000
    lwc1    $f6, %lo(var_808DA4B8)($at) 
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_808D9838               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_808D9838 
    swc1    $f12, 0x0068(s0)           # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_808D9838:
    lwc1    $f10, %lo(var_808DA480)($at) 
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_808D9868               
    nop
    lui     a0, %hi(var_808DA480)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808DA480)  # a0 = 808DA480
    lui     a1, 0x41A0                 # a1 = 41A00000
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             # 00000068
    beq     $zero, $zero, lbl_808D9874 
    or      v1, v0, $zero              # v1 = 00000000
lbl_808D9868:
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             # 00000068
    or      v1, v0, $zero              # v1 = 00000000
lbl_808D9874:
    lh      a0, 0x0148(s0)             # 00000148
    jal     func_800636C4              # sins?
    sw      v1, 0x0028($sp)            
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    lwc1    $f16, %lo(var_808DA480)($at) 
    lwc1    $f4, 0x0008(s0)            # 00000008
    lh      a0, 0x0148(s0)             # 00000148
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DA480)($at) 
    lwc1    $f16, 0x0010(s0)           # 00000010
    lw      v1, 0x0028($sp)            
    mul.s   $f10, $f0, $f8             
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f10, $f16           
    beq     v1, $zero, lbl_808D9904    
    swc1    $f18, 0x002C(s0)           # 0000002C
    lw      t9, 0x0020($sp)            
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    lw      t0, 0x0670(t9)             # 00000670
    and     t1, t0, $at                
    sw      t1, 0x0670(t9)             # 00000670
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    swc1    $f2, 0x0140(s0)            # 00000140
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    swc1    $f4, 0x0008(s0)            # 00000008
    swc1    $f6, 0x0010(s0)            # 00000010
    swc1    $f2, %lo(var_808DA480)($at) 
    swc1    $f2, 0x0068(s0)            # 00000068
    sh      t2, 0x015A(s0)             # 0000015A
lbl_808D9904:
    jal     func_8002313C              
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     $zero, $zero, lbl_808D9944 
    nop
    lw      t4, 0x0670(t3)             # 00000670
lbl_808D991C:
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t5, t4, $at                
    sw      t5, 0x0670(t3)             # 00000670
    lh      v0, 0x015A(s0)             # 0000015A
    swc1    $f2, 0x0140(s0)            # 00000140
    beq     v0, $zero, lbl_808D9944    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808D9944 
    sh      t6, 0x015A(s0)             # 0000015A
    sh      $zero, 0x015A(s0)          # 0000015A
lbl_808D9944:
    lui     $at, %hi(var_808DA428)     # $at = 808E0000
    lwc1    $f10, %lo(var_808DA428)($at) 
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    sub.s   $f16, $f8, $f10            
    lw      a0, 0x0034($sp)            
    swc1    $f16, 0x002C($sp)          
    lwc1    $f18, 0x002C($sp)          
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_808D99DC               
    lw      t9, 0x0034($sp)            
    jal     func_800204D0              
    lh      a1, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_808DA420)      # a1 = 808E0000
    addiu   a1, a1, %lo(var_808DA420)  # a1 = 808DA420
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lui     v0, %hi(var_808DA420)      # v0 = 808E0000
    addiu   v0, v0, %lo(var_808DA420)  # v0 = 808DA420
    lwc1    $f6, 0x0000(v0)            # 808DA420
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_808DA480)     # $at = 808E0000
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0008(v0)            # 808DA428
    swc1    $f2, 0x0068(s0)            # 00000068
    lui     t1, %hi(func_808D9C8C)     # t1 = 808E0000
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      t7, 0x0020($sp)            
    swc1    $f2, %lo(var_808DA480)($at) 
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t8, 0x0670(t7)             # 00000670
    addiu   t1, t1, %lo(func_808D9C8C) # t1 = 808D9C8C
    and     t0, t8, $at                
    sw      t0, 0x0670(t7)             # 00000670
    sw      t1, 0x0154(s0)             # 00000154
    lw      t9, 0x0034($sp)            
lbl_808D99DC:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, t9                 
    lw      v0, 0x1DE4(v0)             # 00011DE4
    andi    t2, v0, 0x0100             # t2 = 00000000
    beq     t2, $zero, lbl_808D99FC    
    andi    v1, v0, 0x00FF             # v1 = 00000000
    beq     $zero, $zero, lbl_808D9A88 
    swc1    $f2, 0x015C(s0)            # 0000015C
lbl_808D99FC:
    slti    $at, v1, 0x0080            
    beql    $at, $zero, lbl_808D9A40   
    slti    $at, v1, 0x00E6            
    mtc1    v1, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_808DA4BC)     # $at = 808E0000
    lwc1    $f18, %lo(var_808DA4BC)($at) 
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800CF470              
    nop
    lui     $at, 0x419D                # $at = 419D0000
    mtc1    $at, $f4                   # $f4 = 19.63
    nop
    mul.s   $f6, $f0, $f4              
    beq     $zero, $zero, lbl_808D9A88 
    swc1    $f6, 0x015C(s0)            # 0000015C
    slti    $at, v1, 0x00E6            
lbl_808D9A40:
    beq     $at, $zero, lbl_808D9A54   
    lui     $at, 0x419D                # $at = 419D0000
    mtc1    $at, $f8                   # $f8 = 19.63
    beq     $zero, $zero, lbl_808D9A88 
    swc1    $f8, 0x015C(s0)            # 0000015C
lbl_808D9A54:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x015C(s0)           # 0000015C
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x015C(s0)           # 0000015C
    lwc1    $f0, 0x015C(s0)            # 0000015C
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808D9A88               
    swc1    $f0, 0x015C(s0)            # 0000015C
    beq     $zero, $zero, lbl_808D9A88 
    swc1    $f2, 0x015C(s0)            # 0000015C
    swc1    $f0, 0x015C(s0)            # 0000015C
lbl_808D9A88:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x002C($sp)           
    lui     $at, 0x40C4                # $at = 40C40000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_808D9AD0               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f2                   # $f2 = 6.13
    lwc1    $f0, 0x015C(s0)            # 0000015C
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808D9ACC               
    swc1    $f0, 0x015C(s0)            # 0000015C
    beq     $zero, $zero, lbl_808D9ACC 
    swc1    $f2, 0x015C(s0)            # 0000015C
    swc1    $f0, 0x015C(s0)            # 0000015C
lbl_808D9ACC:
    lw      $ra, 0x001C($sp)           
lbl_808D9AD0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9AE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_808D9B00    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_808D9B00:
    bnel    v0, $zero, lbl_808D9B14    
    lw      $ra, 0x0014($sp)           
    jal     func_808D9730              
    nop
    lw      $ra, 0x0014($sp)           
lbl_808D9B14:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9B20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80035364              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_808D9B7C    
    lw      v1, 0x001C($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t6, 0x015A(t7)             # 0000015A
    lh      t8, 0x07A0(v1)             # 000007A0
    sll     t9, t8,  2                 
    addu    t0, v1, t9                 
    jal     func_8004977C              
    lw      a0, 0x0790(t0)             # 00000790
    lw      t2, 0x0018($sp)            
    addiu   t1, v0, 0x4000             # t1 = 00004000
    lui     t3, %hi(func_808D9B8C)     # t3 = 808E0000
    sh      t1, 0x0032(t2)             # 00000032
    lw      t4, 0x0018($sp)            
    addiu   t3, t3, %lo(func_808D9B8C) # t3 = 808D9B8C
    sw      t3, 0x0154(t4)             # 00000154
lbl_808D9B7C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9B8C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_808D9BB4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_808D9BB4:
    beql    v0, $zero, lbl_808D9C28    
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t7, 0x0032(s0)             # 00000032
    sll     t8, v0, 14                 
    addu    a0, t7, t8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t0, 0x015A(s0)             # 0000015A
    mul.s   $f6, $f0, $f4              
    lh      t9, 0x0032(s0)             # 00000032
    sll     t1, t0, 14                 
    addu    a0, t9, t1                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f4, 0x0010(s0)            # 00000010
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_808D9C3C 
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0008(s0)            # 00000008
lbl_808D9C28:
    lwc1    $f10, 0x0010(s0)           # 00000010
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0024(s0)            # 00000024
    jal     func_808D9730              
    swc1    $f10, 0x002C(s0)           # 0000002C
lbl_808D9C3C:
    lh      t2, 0x015A(s0)             # 0000015A
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    bgez    t2, lbl_808D9C5C           
    andi    t3, t2, 0x0003             # t3 = 00000000
    beq     t3, $zero, lbl_808D9C5C    
    nop
    addiu   t3, t3, 0xFFFC             # t3 = FFFFFFFC
lbl_808D9C5C:
    bne     t3, $zero, lbl_808D9C78    
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_800915CC              
    lwc1    $f12, 0x008C(s0)           # 0000008C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2838          # a1 = 00002838
lbl_808D9C78:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9C8C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x015A(s0)             # 0000015A
    lhu     t8, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_808D9D38    
    sh      t7, 0x015A(s0)             # 0000015A
    lbu     t0, 0x0158(s0)             # 00000158
    lui     t3, %hi(func_808D9DFC)     # t3 = 808E0000
    lui     $at, 0x4170                # $at = 41700000
    bne     t0, $zero, lbl_808D9CE8    
    addiu   t3, t3, %lo(func_808D9DFC) # t3 = 808D9DFC
    lui     t2, %hi(func_808D9AE0)     # t2 = 808E0000
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    addiu   t2, t2, %lo(func_808D9AE0) # t2 = 808D9AE0
    sh      t1, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_808D9D0C 
    sw      t2, 0x0154(s0)             # 00000154
lbl_808D9CE8:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 15.00
    lw      t4, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFCF         # $at = FFFFFFCF
    sub.s   $f8, $f4, $f6              
    and     t5, t4, $at                
    sw      t3, 0x0154(s0)             # 00000154
    sw      t5, 0x0004(s0)             # 00000004
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_808D9D0C:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lw      a0, 0x0024($sp)            
    lw      a1, 0x0078(s0)             # 00000078
    lbu     a2, 0x007D(s0)             # 0000007D
    jal     func_800345DC              
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, v0, 0x0800             # a1 = 00000800
    andi    a1, a1, 0xFFFF             # a1 = 00000800
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808D9D38:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lwc1    $f10, 0x015C(s0)           # 0000015C
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x015C(s0)           # 0000015C
    lwc1    $f0, 0x015C(s0)            # 0000015C
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808D9D70               
    swc1    $f0, 0x015C(s0)            # 0000015C
    beq     $zero, $zero, lbl_808D9D70 
    swc1    $f2, 0x015C(s0)            # 0000015C
    swc1    $f0, 0x015C(s0)            # 0000015C
lbl_808D9D70:
    lbu     t6, 0x0158(s0)             # 00000158
    bnel    t6, $zero, lbl_808D9DEC    
    lw      $ra, 0x001C($sp)           
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D9DB8    
    nop
    lbu     t7, 0x0159(s0)             # 00000159
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bnel    t7, $zero, lbl_808D9DA4    
    lw      t9, 0x0024($sp)            
    sb      t8, 0x0159(s0)             # 00000159
    lw      t9, 0x0024($sp)            
lbl_808D9DA4:
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    jal     func_800495BC              
    lw      a0, 0x0790(t9)             # 00000790
    beq     $zero, $zero, lbl_808D9DEC 
    lw      $ra, 0x001C($sp)           
lbl_808D9DB8:
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_808D9DEC    
    lw      $ra, 0x001C($sp)           
    lbu     t0, 0x0159(s0)             # 00000159
    lw      t1, 0x0024($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    t0, $zero, lbl_808D9DE8    
    sb      $zero, 0x0159(s0)          # 00000159
    jal     func_800495BC              
    lw      a0, 0x0790(t1)             # 00000790
    sb      $zero, 0x0159(s0)          # 00000159
lbl_808D9DE8:
    lw      $ra, 0x001C($sp)           
lbl_808D9DEC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9DFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     v0, $zero, lbl_808D9E34    
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_808D9B20)     # t6 = 808E0000
    addiu   t6, t6, %lo(func_808D9B20) # t6 = 808D9B20
    sw      t6, 0x0154(a3)             # 00000154
lbl_808D9E34:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808D9E44:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    lui     t7, %hi(func_808D9C8C)     # t7 = 808E0000
    beq     v0, $zero, lbl_808D9E60    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_808D9E60:
    bne     v0, $zero, lbl_808D9E78    
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, t7, %lo(func_808D9C8C) # t7 = 808D9C8C
    sw      t7, 0x0154(a0)             # 00000154
    swc1    $f4, 0x0060(a0)            # 00000060
lbl_808D9E78:
    jr      $ra                        
    nop


func_808D9E80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f4, 0x0140(s0)            # 00000140
    lw      t6, 0x002C($sp)            
    lh      t7, 0x015A(s0)             # 0000015A
    c.eq.s  $f0, $f4                   
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x015A(s0)             # 0000015A
    bc1tl   lbl_808D9ED4               
    lbu     v0, 0x0158(s0)             # 00000158
    swc1    $f0, 0x0068(s0)            # 00000068
    lw      t9, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t0, t9, $at                
    sw      t0, 0x0670(v0)             # 00000670
    lbu     v0, 0x0158(s0)             # 00000158
lbl_808D9ED4:
    lui     $at, %hi(var_808DA4C0)     # $at = 808E0000
    bne     v0, $zero, lbl_808D9F28    
    nop
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f8, %lo(var_808DA4C0)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    add.s   $f10, $f6, $f8             
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3E80                 # a2 = 3E800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    mfc1    a1, $f10                   
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, %hi(var_808DA4C4)     # $at = 808E0000
    lwc1    $f18, %lo(var_808DA4C4)($at) 
    c.lt.s  $f0, $f18                  
    nop
    bc1tl   lbl_808D9F88               
    lbu     t1, 0x0158(s0)             # 00000158
    lbu     v0, 0x0158(s0)             # 00000158
lbl_808D9F28:
    beq     v0, $zero, lbl_808D9FB0    
    lui     $at, 0x407E                # $at = 407E0000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f9                   # $f9 = 3.97
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.d.s $f6, $f4                   
    lui     $at, 0x3F00                # $at = 3F000000
    add.d   $f10, $f6, $f8             
    mtc1    $at, $f18                  # $f18 = 0.50
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3E80                 # a2 = 3E800000
    cvt.s.d $f16, $f10                 
    lui     a3, 0x41A0                 # a3 = 41A00000
    swc1    $f18, 0x0010($sp)          
    mfc1    a1, $f16                   
    jal     func_80064178              
    nop
    lui     $at, %hi(var_808DA4C8)     # $at = 808E0000
    lwc1    $f4, %lo(var_808DA4C8)($at) 
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808D9FB4               
    lui     $at, 0x4248                # $at = 42480000
    lbu     t1, 0x0158(s0)             # 00000158
lbl_808D9F88:
    or      a0, s0, $zero              # a0 = 00000000
    bne     t1, $zero, lbl_808D9F9C    
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2835          # a1 = 00002835
lbl_808D9F9C:
    lui     t3, %hi(func_808D9E44)     # t3 = 808E0000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, t3, %lo(func_808D9E44) # t3 = 808D9E44
    sh      t2, 0x015A(s0)             # 0000015A
    sw      t3, 0x0154(s0)             # 00000154
lbl_808D9FB0:
    lui     $at, 0x4248                # $at = 42480000
lbl_808D9FB4:
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lui     $at, 0x4220                # $at = 42200000
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    sub.s   $f18, $f10, $f16           
    lbu     t4, 0x0158(s0)             # 00000158
    add.s   $f6, $f18, $f4             
    div.s   $f10, $f6, $f8             
    bne     t4, $zero, lbl_808DA058    
    swc1    $f10, 0x015C(s0)           # 0000015C
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808DA028    
    nop
    lbu     t5, 0x0159(s0)             # 00000159
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    bnel    t5, $zero, lbl_808DA014    
    lw      t7, 0x002C($sp)            
    sb      t6, 0x0159(s0)             # 00000159
    lw      t7, 0x002C($sp)            
lbl_808DA014:
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    jal     func_800495BC              
    lw      a0, 0x0790(t7)             # 00000790
    beq     $zero, $zero, lbl_808DA05C 
    lw      $ra, 0x0024($sp)           
lbl_808DA028:
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_808DA05C    
    lw      $ra, 0x0024($sp)           
    lbu     t8, 0x0159(s0)             # 00000159
    lw      t9, 0x002C($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    t8, $zero, lbl_808DA058    
    sb      $zero, 0x0159(s0)          # 00000159
    jal     func_800495BC              
    lw      a0, 0x0790(t9)             # 00000790
    sb      $zero, 0x0159(s0)          # 00000159
lbl_808DA058:
    lw      $ra, 0x0024($sp)           
lbl_808DA05C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808DA06C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jalr    $ra, t9                    
    nop
    lw      t7, 0x0154(s0)             # 00000154
    lui     t6, %hi(func_808D9C8C)     # t6 = 808E0000
    addiu   t6, t6, %lo(func_808D9C8C) # t6 = 808D9C8C
    bnel    t6, t7, lbl_808DA0D8       
    lwc1    $f0, 0x015C(s0)            # 0000015C
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lwc1    $f0, 0x015C(s0)            # 0000015C
lbl_808DA0D8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t0, %hi(var_808DA46E)      # t0 = 808E0000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_808DA12C               
    lw      $ra, 0x0024($sp)           
    lh      t0, %lo(var_808DA46E)(t0)  
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    mtc1    t0, $f6                    # $f6 = 0.00
    addiu   a2, s0, 0x016C             # a2 = 0000016C
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x01AE(s0)             # 000001AE
    lw      a0, 0x002C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
lbl_808DA12C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808DA13C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x0018($sp)            
    lw      s0, 0x0000(s1)             # 00000000
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    jal     func_8007DFBC              
    lw      a0, 0x02D0(s0)             # 000002D0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     t8, 0xFFFF                 # t8 = FFFF0000
    ori     t8, t8, 0x0096             # t8 = FFFF0096
    ori     t7, t7, 0x0001             # t7 = FA000001
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFF00                 # t1 = FF000000
    ori     t1, t1, 0x00FF             # t1 = FF0000FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lbu     t2, 0x0158(s2)             # 00000158
    lui     v0, %hi(var_808DA420)      # v0 = 808E0000
    lui     $at, 0x4220                # $at = 42200000
    bne     t2, $zero, lbl_808DA1E8    
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   v0, v0, %lo(var_808DA420)  # v0 = 808DA420
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0004(v0)            # 808DA424
    lwc1    $f12, 0x0000(v0)           # 808DA420
    lw      a2, 0x0008(v0)             # 808DA428
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4              
    sub.s   $f14, $f4, $f6             
    beq     $zero, $zero, lbl_808DA204 
    lh      t3, 0x07A0(s1)             # 000007A0
lbl_808DA1E8:
    lwc1    $f8, 0x000C(s2)            # 0000000C
    mtc1    $at, $f10                  # $f10 = 0.00
    lwc1    $f12, 0x0008(s2)           # 00000008
    lw      a2, 0x0010(s2)             # 00000010
    jal     func_800AA7F4              
    sub.s   $f14, $f8, $f10            
    lh      t3, 0x07A0(s1)             # 000007A0
lbl_808DA204:
    sll     t4, t3,  2                 
    addu    t5, s1, t4                 
    jal     func_8004977C              
    lw      a0, 0x0790(t5)             # 00000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, v0, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    or      a0, $zero, $zero           # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC128                # $at = C1280000
    mtc1    $at, $f12                  # $f12 = -10.50
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    lwc1    $f14, 0x015C(s2)           # 0000015C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s1                 
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x1DE4(t8)             # 00011DE4
    lui     a1, %hi(var_808DA484)      # a1 = 808E0000
    lui     t5, 0x8012                 # t5 = 80120000
    andi    t9, t8, 0x0007             # t9 = 00000000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_808DA484)(a1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, a1,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t1, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x002C($sp)            
    lw      a2, 0x002C($sp)            
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0xCA10             # t3 = 0600CA10
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_808DA338:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x0158(s0)             # 00000158
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    bne     t6, $zero, lbl_808DA37C    
    nop
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC100             # a1 = 0600C100
    jal     func_80028048              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808DA388 
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_808DA37C:
    jal     func_80028048              
    addiu   a1, a1, 0xC1F0             # a1 = FFFFC1F0
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_808DA388:
    lwc1    $f6, 0x015C(s0)            # 0000015C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_808DA408               
    lw      $ra, 0x001C($sp)           
    lbu     t7, 0x0158(s0)             # 00000158
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    bne     t7, $zero, lbl_808DA3D8    
    addu    a0, s1, $at                
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a1, %hi(var_808DA420)      # a1 = 808E0000
    addiu   a2, s0, 0x0160             # a2 = 00000160
    sw      a2, 0x0024($sp)            
    addiu   a1, a1, %lo(var_808DA420)  # a1 = 808DA420
    jal     func_8008ED08              
    addu    a0, s1, $at                
    beq     $zero, $zero, lbl_808DA3EC 
    lw      a2, 0x0024($sp)            
lbl_808DA3D8:
    addiu   a2, s0, 0x0160             # a2 = 00000160
    sw      a2, 0x0024($sp)            
    jal     func_8008ED08              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      a2, 0x0024($sp)            
lbl_808DA3EC:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80064780              
    addiu   a1, $zero, 0x2033          # a1 = 00002033
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808DA13C              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_808DA408:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop

.section .data

var_808DA420: .word 0x454EE000, 0x42F00000
var_808DA428: .word 0x00000000
var_808DA42C: .word 0x00430100, 0x00000000, 0x002C0000, 0x000001B8
.word func_808D9560
.word func_808D96DC
.word func_808DA06C
.word func_808DA338
var_808DA44C: .byte \
0x0A, 0x11, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, \
0x01, 0x04, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, \
0x00, 0x2D
var_808DA46E: .byte 0x00, 0x4D, 0xFF, 0xD8, 0x0C, 0xEE, 0x00, 0x78, 0x00, 0x00
var_808DA478: .word 0xC8500064, 0x386CFDA8
var_808DA480: .word 0x00000000
var_808DA484: .word \
0x06012120, 0x060128A0, 0x06013020, 0x060137A0, \
0x06013F20, 0x060146A0, 0x06014E20, 0x060155A0, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808DA4B0: .word 0x3C23D70A
var_808DA4B4: .word 0x3C23D70A
var_808DA4B8: .word 0x3D4CCCCD
var_808DA4BC: .word 0x3C4DE32F
var_808DA4C0: .word 0x44E38000
var_808DA4C4: .word 0x3DCCCCCD
var_808DA4C8: .word 0x3DCCCCCD, 0x00000000

