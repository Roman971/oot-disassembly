#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B691D0:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0084($sp)            
    lui     a1, %hi(var_80B6A788)      # a1 = 80B70000
    sw      $zero, 0x004C($sp)         
    addiu   a1, a1, %lo(var_80B6A788)  # a1 = 80B6A788
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    sra     t9, t8,  6                 
    sra     t2, t1, 12                 
    andi    t0, t9, 0x003F             # t0 = 00000000
    andi    t3, t2, 0x000F             # t3 = 00000000
    andi    t7, t6, 0x003F             # t7 = 00000000
    sb      t7, 0x0158(s0)             # 00000158
    sb      t0, 0x0159(s0)             # 00000159
    sh      t3, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a1, s0, 0x0160             # a1 = 00000160
    sw      a1, 0x0030($sp)            
    jal     func_8004B064              
    lw      a0, 0x0084($sp)            
    lui     a3, %hi(var_80B6A778)      # a3 = 80B70000
    addiu   t4, s0, 0x0180             # t4 = 00000180
    sw      t4, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6A778)  # a3 = 80B6A778
    lw      a0, 0x0084($sp)            
    lw      a1, 0x0030($sp)            
    jal     func_8004B3EC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t5, 0x001C(s0)             # 0000001C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x6050             # a0 = 06006050
    bne     t5, $zero, lbl_80B69370    
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x6460             # a0 = 06006460
    jal     func_80033EF4              
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFCC
    lui     t6, %hi(func_80B69C18)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B69C18) # t6 = 80B69C18
    lui     v1, %hi(var_80B6A700)      # v1 = 80B70000
    lui     a0, %hi(var_80B6A724)      # a0 = 80B70000
    sw      t6, 0x0154(s0)             # 00000154
    addiu   a0, a0, %lo(var_80B6A724)  # a0 = 80B6A724
    addiu   v1, v1, %lo(var_80B6A700)  # v1 = 80B6A700
    addiu   v0, $sp, 0x0054            # v0 = FFFFFFD4
    addiu   v1, v1, 0x000C             # v1 = 80B6A70C
    beq     v1, a0, lbl_80B692EC       
    lwc1    $f18, 0x000C(v1)           # 80B6A718
lbl_80B692B0:
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0010(v1)           # 80B6A71C
    lwc1    $f12, 0x0014(v1)           # 80B6A720
    add.s   $f16, $f18, $f16           
    lwc1    $f18, 0x0018(v1)           # 80B6A724
    addiu   v1, v1, 0x000C             # v1 = 80B6A718
    addiu   v0, v0, 0x000C             # v0 = FFFFFFE0
    swc1    $f16, -0x000C(v0)          # FFFFFFD4
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f16, $f14, $f16           
    swc1    $f16, -0x0008(v0)          # FFFFFFD8
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f16, $f12, $f16           
    bne     v1, a0, lbl_80B692B0       
    swc1    $f16, -0x0004(v0)          # FFFFFFDC
lbl_80B692EC:
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0010(v1)           # 80B6A728
    lwc1    $f12, 0x0014(v1)           # 80B6A72C
    add.s   $f16, $f18, $f16           
    addiu   v0, v0, 0x000C             # v0 = FFFFFFEC
    swc1    $f16, -0x000C(v0)          # FFFFFFE0
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f16, $f14, $f16           
    swc1    $f16, -0x0008(v0)          # FFFFFFE4
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f16, $f12, $f16           
    swc1    $f16, -0x0004(v0)          # FFFFFFE8
    addiu   t7, $sp, 0x006C            # t7 = FFFFFFEC
    sw      t7, 0x0010($sp)            
    lw      a0, 0x0030($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFD4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFE0
    lwc1    $f18, 0x0054($sp)          
    lwc1    $f4, 0x0074($sp)           
    addiu   t8, $sp, 0x0060            # t8 = FFFFFFE0
    sw      t8, 0x0010($sp)            
    lw      a0, 0x0030($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFD4
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFEC
    swc1    $f18, 0x0060($sp)          
    jal     func_80050BD4              
    swc1    $f4, 0x0068($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    beq     $zero, $zero, lbl_80B6956C 
    swc1    $f6, 0x015C(s0)            # 0000015C
lbl_80B69370:
    jal     func_80033EF4              
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFCC
    lui     t9, %hi(func_80B6A22C)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B6A22C) # t9 = 80B6A22C
    sw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x41F0                 # a1 = 41F00000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0040($sp)           
    lh      a0, 0x00B4(s0)             # 000000B4
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0044($sp)           
    neg.s   $f14, $f0                  
    lh      a0, 0x00B4(s0)             # 000000B4
    jal     func_80063684              # coss?
    swc1    $f14, 0x0038($sp)          
    lui     v1, %hi(var_80B6A73C)      # v1 = 80B70000
    lui     a0, %hi(var_80B6A760)      # a0 = 80B70000
    lwc1    $f2, 0x0040($sp)           
    lwc1    $f12, 0x0044($sp)          
    lwc1    $f14, 0x0038($sp)          
    mov.s   $f16, $f0                  
    addiu   a0, a0, %lo(var_80B6A760)  # a0 = 80B6A760
    addiu   v1, v1, %lo(var_80B6A73C)  # v1 = 80B6A73C
    addiu   v0, $sp, 0x0054            # v0 = FFFFFFD4
    addiu   v1, v1, 0x000C             # v1 = 80B6A748
    lwc1    $f18, 0x0010(v1)           # 80B6A758
    beq     v1, a0, lbl_80B6945C       
    lwc1    $f10, 0x000C(v1)           # 80B6A754
lbl_80B693F4:
    mul.s   $f8, $f18, $f2             
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x0010(v1)            # 80B6A758
    mul.s   $f18, $f12, $f10           
    lwc1    $f10, 0x0010(v1)           # 80B6A758
    addiu   v1, v1, 0x000C             # v1 = 80B6A754
    mul.s   $f4, $f4, $f0              
    addiu   v0, v0, 0x000C             # v0 = FFFFFFE0
    mul.s   $f8, $f8, $f14             
    add.s   $f6, $f6, $f18             
    mul.s   $f18, $f10, $f12           
    lwc1    $f10, 0x0000(v1)           # 80B6A754
    mul.s   $f10, $f2, $f10            
    sub.s   $f8, $f6, $f8              
    mul.s   $f6, $f18, $f14            
    lwc1    $f18, 0x0010(v1)           # 80B6A764
    swc1    $f8, -0x000C(v0)           # FFFFFFD4
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f8, $f4, $f8              
    swc1    $f8, -0x0008(v0)           # FFFFFFD8
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f8, $f8, $f10             
    lwc1    $f10, 0x000C(v1)           # 80B6A760
    add.s   $f8, $f6, $f8              
    bne     v1, a0, lbl_80B693F4       
    swc1    $f8, -0x0004(v0)           # FFFFFFDC
lbl_80B6945C:
    mul.s   $f8, $f18, $f2             
    lwc1    $f4, 0x0010(v1)            # 80B6A764
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f18, $f12, $f10           
    lwc1    $f10, 0x0010(v1)           # 80B6A764
    addiu   v0, v0, 0x000C             # v0 = FFFFFFEC
    mul.s   $f4, $f4, $f0              
    nop
    mul.s   $f8, $f8, $f14             
    add.s   $f6, $f6, $f18             
    mul.s   $f18, $f10, $f12           
    lwc1    $f10, 0x000C(v1)           # 80B6A760
    mul.s   $f10, $f2, $f10            
    sub.s   $f8, $f6, $f8              
    mul.s   $f6, $f18, $f14            
    swc1    $f8, -0x000C(v0)           # FFFFFFE0
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f8, $f4, $f8              
    swc1    $f8, -0x0008(v0)           # FFFFFFE4
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f8, $f8, $f10             
    add.s   $f8, $f6, $f8              
    swc1    $f8, -0x0004(v0)           # FFFFFFE8
    addiu   t0, $sp, 0x006C            # t0 = FFFFFFEC
    sw      t0, 0x0010($sp)            
    lw      a0, 0x0030($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFD4
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFE0
    swc1    $f2, 0x0040($sp)           
    swc1    $f12, 0x0044($sp)          
    swc1    $f14, 0x0038($sp)          
    jal     func_80050BD4              
    swc1    $f16, 0x003C($sp)          
    lui     $at, %hi(var_80B6A754)     # $at = 80B70000
    lwc1    $f12, 0x0044($sp)          
    lwc1    $f6, %lo(var_80B6A754)($at) 
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_80B6A770)     # $at = 80B70000
    mul.s   $f18, $f12, $f6            
    lwc1    $f2, 0x0040($sp)           
    lwc1    $f10, %lo(var_80B6A770)($at) 
    lwc1    $f14, 0x0038($sp)          
    lwc1    $f16, 0x003C($sp)          
    addiu   t1, $sp, 0x0060            # t1 = FFFFFFE0
    lw      a0, 0x0030($sp)            
    add.s   $f4, $f8, $f18             
    mul.s   $f8, $f10, $f2             
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFD4
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFEC
    mul.s   $f18, $f8, $f14            
    sub.s   $f8, $f4, $f18             
    mul.s   $f4, $f10, $f16            
    swc1    $f8, 0x0060($sp)           
    lwc1    $f18, 0x0028(s0)           # 00000028
    add.s   $f8, $f4, $f18             
    mul.s   $f18, $f2, $f6             
    nop
    mul.s   $f6, $f10, $f12            
    swc1    $f8, 0x0064($sp)           
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t1, 0x0010($sp)            
    sub.s   $f8, $f4, $f18             
    mul.s   $f4, $f6, $f14             
    add.s   $f18, $f4, $f8             
    jal     func_80050BD4              
    swc1    $f18, 0x0068($sp)          
lbl_80B6956C:
    lw      a0, 0x0084($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x004C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    sh      $zero, 0x015A(s0)          # 0000015A
    lw      a0, 0x0084($sp)            
    jal     func_8002049C              
    lbu     a1, 0x0158(s0)             # 00000158
    beql    v0, $zero, lbl_80B695A8    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B695A8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_80B695B8:
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
    jal     func_8004B148              
    addiu   a1, a1, 0x0160             # a1 = 00000160
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B69600:
    lui     a3, 0x8012                 # a3 = 80120000
    lui     t0, 0x00FF                 # t0 = 00FF0000
    ori     t0, t0, 0xFFFF             # t0 = 00FFFFFF
    addiu   a3, a3, 0x0C38             # a3 = 80120C38
    lui     t1, 0x8000                 # t1 = 80000000
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x6460             # v1 = 06006460
    sll     t6, v1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, a3, t8                 
    lw      t2, 0x0000(t9)             # 00000000
    and     t3, v1, t0                 
    lui     $at, 0x4120                # $at = 41200000
    addu    t4, t2, t3                 
    addu    v0, t4, t1                 
    lw      a1, 0x0010(v0)             # 00000010
    mtc1    $at, $f10                  # $f10 = 10.00
    sll     t5, a1,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, a3, t7                 
    lw      t9, 0x0000(t8)             # 00000000
    and     t2, a1, t0                 
    addu    t3, t9, t2                 
    addu    t4, t3, t1                 
    sw      t4, 0x0010(v0)             # 00000010
    lwc1    $f6, 0x0028(a0)            # 00000028
    lwc1    $f4, 0x000C(a0)            # 0000000C
    sub.s   $f8, $f4, $f6              
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f18                   
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sh      a2, 0x0056(t4)             # 00000056
    lw      t7, 0x0010(v0)             # 00000010
    sh      a2, 0x004A(t7)             # 0000004A
    lw      t8, 0x0010(v0)             # 00000010
    sh      a2, 0x003E(t8)             # 0000003E
    lw      t9, 0x0010(v0)             # 00000010
    sh      a2, 0x0038(t9)             # 00000038
    lw      t2, 0x0010(v0)             # 00000010
    sh      a2, 0x0026(t2)             # 00000026
    lw      t3, 0x0010(v0)             # 00000010
    sh      a2, 0x0020(t3)             # 00000020
    lw      t4, 0x0010(v0)             # 00000010
    sh      a2, 0x0008(t4)             # 00000008
    lw      t5, 0x0010(v0)             # 00000010
    sh      a2, 0x0002(t5)             # 00000002
    jr      $ra                        
    nop


func_80B696D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sh      t6, 0x015A(a2)             # 0000015A
    sw      a2, 0x0018($sp)            
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800204D0              
    lbu     a1, 0x0158(a2)             # 00000158
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_80B69744)     # t8 = 80B70000
    lui     t9, %hi(func_80B69EF4)     # t9 = 80B70000
    lh      t7, 0x001C(a2)             # 0000001C
    addiu   t8, t8, %lo(func_80B69744) # t8 = 80B69744
    addiu   t9, t9, %lo(func_80B69EF4) # t9 = 80B69EF4
    bnel    t7, $zero, lbl_80B69734    
    sw      t9, 0x0154(a2)             # 00000154
    beq     $zero, $zero, lbl_80B69734 
    sw      t8, 0x0154(a2)             # 00000154
    sw      t9, 0x0154(a2)             # 00000154
lbl_80B69734:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B69744:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s5, 0x008C($sp)            
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    sw      a1, 0x00DC($sp)            
    lh      v0, 0x015A(s5)             # 0000015A
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $zero, lbl_80B697A8    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s5)             # 0000015A
    lh      v0, 0x015A(s5)             # 0000015A
lbl_80B697A8:
    bne     v0, $zero, lbl_80B697C0    
    nop
    jal     func_80020EB4              
    or      a0, s5, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B699D4 
    lw      $ra, 0x009C($sp)           
lbl_80B697C0:
    div     $zero, v0, $at             
    mfhi    t7                         
    bnel    t7, $zero, lbl_80B699D4    
    lw      $ra, 0x009C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B6A7C0)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6A7C0)($at) 
    mtc1    $zero, $f30                # $f30 = 0.00
    lui     $at, 0x40E0                # $at = 40E00000
    mul.s   $f6, $f0, $f4              
    mtc1    $at, $f28                  # $f28 = 7.00
    lui     $at, %hi(var_80B6A7C4)     # $at = 80B70000
    swc1    $f30, 0x00D0($sp)          
    lwc1    $f10, 0x0028(s5)           # 00000028
    lwc1    $f26, %lo(var_80B6A7C4)($at) 
    lui     $at, 0x42F0                # $at = 42F00000
    trunc.w.s $f8, $f6                   
    mtc1    $at, $f24                  # $f24 = 120.00
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s4, s5, 0x0008             # s4 = 00000008
    mfc1    s2, $f8                    
    addiu   s8, $sp, 0x00CC            # s8 = FFFFFFF4
    ori     s7, $zero, 0x8000          # s7 = 00008000
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    addiu   s6, $sp, 0x00C0            # s6 = FFFFFFE8
    swc1    $f10, 0x00C4($sp)          
lbl_80B69830:
    lui     $at, 0x4620                # $at = 46200000
    mtc1    $at, $f12                  # $f12 = 10240.00
    jal     func_80026D90              
    nop
    mtc1    s2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    add.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    sll     s0, v0, 16                 
    sll     a0, v0, 16                 
    sra     s0, s0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s0, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f10, $f24, $f20           
    lwc1    $f8, 0x0024(s5)            # 00000024
    mov.s   $f22, $f0                  
    mul.s   $f4, $f24, $f0             
    or      a0, s4, $zero              # a0 = 00000008
    or      a1, s6, $zero              # a1 = FFFFFFE8
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x00C0($sp)          
    lwc1    $f18, 0x002C(s5)           # 0000002C
    add.s   $f6, $f18, $f4             
    jal     func_80063EB8              
    swc1    $f6, 0x00C8($sp)           
    mul.s   $f12, $f0, $f26            
    lui     $at, %hi(var_80B6A7C8)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6A7C8)($at) 
    addu    s1, s0, s7                 
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    sll     a0, s1, 16                 
    c.lt.s  $f12, $f8                  
    nop
    bc1f    lbl_80B6992C               
    nop
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s1, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f16, $f24, $f20           
    lwc1    $f10, 0x0024(s5)           # 00000024
    mov.s   $f22, $f0                  
    mul.s   $f6, $f24, $f0             
    or      a0, s4, $zero              # a0 = 00000008
    or      a1, s6, $zero              # a1 = FFFFFFE8
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x00C0($sp)          
    lwc1    $f4, 0x002C(s5)            # 0000002C
    add.s   $f8, $f4, $f6              
    jal     func_80063EB8              
    swc1    $f8, 0x00C8($sp)           
    mul.s   $f12, $f0, $f26            
    nop
lbl_80B6992C:
    mul.s   $f10, $f28, $f20           
    lui     a3, %hi(var_80B6A78C)      # a3 = 80B70000
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    mul.s   $f16, $f10, $f12           
    addiu   t5, $zero, 0x00AA          # t5 = 000000AA
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mul.s   $f18, $f28, $f22           
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f16, 0x00CC($sp)          
    swc1    $f30, 0x00D0($sp)          
    sw      t9, 0x003C($sp)            
    mul.s   $f4, $f18, $f12            
    sw      t8, 0x0038($sp)            
    sw      t7, 0x0034($sp)            
    sw      t6, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    sw      t3, 0x001C($sp)            
    swc1    $f4, 0x00D4($sp)           
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6A78C)  # a3 = 80B6A78C
    lw      a0, 0x00DC($sp)            
    or      a1, s4, $zero              # a1 = 00000008
    or      a2, s8, $zero              # a2 = FFFFFFF4
    sw      $zero, 0x002C($sp)         
    jal     func_8001E1D4              
    sw      $zero, 0x0030($sp)         
    addiu   s2, s2, 0x2AAA             # s2 = 00002AAA
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0006         # $at = 00000006
    sll     s2, s2, 16                 
    bne     s3, $at, lbl_80B69830      
    sra     s2, s2, 16                 
    lw      $ra, 0x009C($sp)           
lbl_80B699D4:
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80B69A18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_80B69A38    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_80B69A38:
    bnel    v0, $zero, lbl_80B69A4C    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B69A4C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B69A58:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s8, 0x0050($sp)            
    sw      s3, 0x003C($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f20, 0x0028($sp)          
    lh      v0, 0x015A(s3)             # 0000015A
    beq     v0, $zero, lbl_80B69AA4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s3)             # 0000015A
    lh      v0, 0x015A(s3)             # 0000015A
lbl_80B69AA4:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80B6A7CC)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6A7CC)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lwc1    $f10, 0x015C(s3)           # 0000015C
    lwc1    $f2, 0x000C(s3)            # 0000000C
    lui     $at, 0x433E                # $at = 433E0000
    mul.s   $f16, $f0, $f10            
    mtc1    $at, $f18                  # $f18 = 190.00
    or      a0, s8, $zero              # a0 = 00000000
    addiu   a1, s8, 0x0810             # a1 = 00000810
    add.s   $f12, $f16, $f2            
    sub.s   $f4, $f2, $f12             
    swc1    $f12, 0x0028(s3)           # 00000028
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_80B69BDC               
    nop
    jal     func_800314D8              
    lw      a2, 0x013C(s3)             # 0000013C
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sh      t7, 0x015A(s3)             # 0000015A
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    or      a0, s8, $zero              # a0 = 00000000
    jal     func_800204D0              
    lbu     a1, 0x0158(s3)             # 00000158
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    lwc1    $f6, 0x0028(s3)            # 00000028
    lui     t8, %hi(func_80B69A18)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B69A18) # t8 = 80B69A18
    sub.s   $f8, $f6, $f20             
    sw      t8, 0x0154(s3)             # 00000154
    lui     s6, %hi(var_80B6A79C)      # s6 = 80B70000
    lui     s5, %hi(var_80B6A798)      # s5 = 80B70000
    lui     s2, %hi(var_80B6A7A0)      # s2 = 80B70000
    swc1    $f8, 0x006C($sp)           
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s2, %lo(var_80B6A7A0)  # s2 = 80B6A7A0
    addiu   s5, s5, %lo(var_80B6A798)  # s5 = 80B6A798
    addiu   s6, s6, %lo(var_80B6A79C)  # s6 = 80B6A79C
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0006          # s7 = 00000006
    addiu   s4, $sp, 0x0068            # s4 = FFFFFFF0
lbl_80B69B64:
    sll     a0, s0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f10, $f0, $f20            
    lwc1    $f16, 0x0024(s3)           # 00000024
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    add.s   $f18, $f10, $f16           
    jal     func_80063684              # coss?
    swc1    $f18, 0x0068($sp)          
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x002C(s3)            # 0000002C
    addiu   t9, $zero, 0x03E8          # t9 = 000003E8
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      s6, 0x0014($sp)            
    add.s   $f8, $f4, $f6              
    sw      s5, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF0
    swc1    $f8, 0x0070($sp)           
    or      a2, s2, $zero              # a2 = 80B6A7A0
    jal     func_8001BD94              
    or      a3, s2, $zero              # a3 = 80B6A7A0
    addiu   s0, s0, 0x2AAA             # s0 = 00002AAA
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s0, s0, 16                 
    bne     s1, s7, lbl_80B69B64       
    sra     s0, s0, 16                 
lbl_80B69BDC:
    jal     func_80B69600              
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80B69C18:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    lui     $at, 0x4248                # $at = 42480000
    sw      s0, 0x0018($sp)            
    mtc1    $at, $f0                   # $f0 = 50.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    lwc1    $f4, 0x0024(s0)            # 00000024
    mfc1    a3, $f0                    
    lw      v1, 0x1C44(a0)             # 00001C44
    swc1    $f4, 0x0030($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    lui     a2, 0x428C                 # a2 = 428C0000
    sub.s   $f8, $f6, $f0              
    swc1    $f8, 0x0034($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      v1, 0x003C($sp)            
    jal     func_80079A20              
    swc1    $f10, 0x0038($sp)          
    beq     v0, $zero, lbl_80B69C98    
    lw      v1, 0x003C($sp)            
    lwc1    $f16, 0x08A8(v1)           # 000008A8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f16, 0x0008(s0)           # 00000008
    lwc1    $f18, 0x08B0(v1)           # 000008B0
    swc1    $f18, 0x0010(s0)           # 00000010
    jal     func_80B696D4              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_80B69EE4 
    lw      $ra, 0x001C($sp)           
lbl_80B69C98:
    lbu     t7, 0x0171(s0)             # 00000171
    lw      a1, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80B69CC0    
    nop
    jal     func_80B696D4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B69EE4 
    lw      $ra, 0x001C($sp)           
lbl_80B69CC0:
    jal     func_80035364              
    sw      v1, 0x003C($sp)            
    beq     v0, $zero, lbl_80B69E10    
    lw      v1, 0x003C($sp)            
    lh      t9, 0x0886(v1)             # 00000886
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, %hi(var_80B6A7D0)     # $at = 80B70000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f2, $f4                   
    c.lt.s  $f2, $f14                  
    nop
    bc1fl   lbl_80B69D04               
    mov.s   $f12, $f2                  
    beq     $zero, $zero, lbl_80B69D04 
    mov.s   $f12, $f14                 
    mov.s   $f12, $f2                  
lbl_80B69D04:
    lwc1    $f6, %lo(var_80B6A7D0)($at) 
    sqrt.s  $f0, $f12                  
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_80B69D7C               
    add.s   $f2, $f0, $f0              
    lwc1    $f8, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 80.00
    lui     $at, 0x4348                # $at = 43480000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    c.lt.s  $f8, $f10                  
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2862          # a1 = 00002862
    bc1fl   lbl_80B69D7C               
    add.s   $f2, $f0, $f0              
    lw      t1, 0x0004(s0)             # 00000004
    mtc1    $at, $f16                  # $f16 = 200.00
    sb      t0, 0x0003(s0)             # 00000003
    ori     t2, t1, 0x0010             # t2 = 00000010
    sw      t2, 0x0004(s0)             # 00000004
    sh      t3, 0x015A(s0)             # 0000015A
    jal     func_80022FD0              
    swc1    $f16, 0x015C(s0)           # 0000015C
    lui     t4, %hi(func_80B69A58)     # t4 = 80B70000
    addiu   t4, t4, %lo(func_80B69A58) # t4 = 80B69A58
    beq     $zero, $zero, lbl_80B69EE0 
    sw      t4, 0x0154(s0)             # 00000154
    add.s   $f2, $f0, $f0              
lbl_80B69D7C:
    lwc1    $f18, 0x015C(s0)           # 0000015C
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80B69DB8               
    lwc1    $f4, 0x0068(v1)            # 00000068
    mtc1    $at, $f12                  # $f12 = 2.00
    addiu   t5, $zero, 0x000E          # t5 = 0000000E
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80B69DB8               
    lwc1    $f4, 0x0068(v1)            # 00000068
    swc1    $f2, 0x015C(s0)            # 0000015C
    sh      t5, 0x015A(s0)             # 0000015A
    lwc1    $f4, 0x0068(v1)            # 00000068
lbl_80B69DB8:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    c.eq.s  $f14, $f4                  
    lui     $at, %hi(var_80B6A7D4)     # $at = 80B70000
    bc1tl   lbl_80B69E14               
    lh      v0, 0x015A(s0)             # 0000015A
    lwc1    $f0, 0x015C(s0)            # 0000015C
    lwc1    $f6, %lo(var_80B6A7D4)($at) 
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B69DF8               
    c.lt.s  $f0, $f12                  
    sh      t6, 0x015A(s0)             # 0000015A
    lwc1    $f0, 0x015C(s0)            # 0000015C
    c.lt.s  $f0, $f12                  
lbl_80B69DF8:
    nop
    bc1fl   lbl_80B69E10               
    swc1    $f0, 0x015C(s0)            # 0000015C
    beq     $zero, $zero, lbl_80B69E10 
    swc1    $f12, 0x015C(s0)           # 0000015C
    swc1    $f0, 0x015C(s0)            # 0000015C
lbl_80B69E10:
    lh      v0, 0x015A(s0)             # 0000015A
lbl_80B69E14:
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    beq     v0, $zero, lbl_80B69E28    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_80B69E28:
    bnel    v0, $zero, lbl_80B69E3C    
    mtc1    v0, $f8                    # $f8 = 0.00
    sh      t8, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
    mtc1    v0, $f8                    # $f8 = 0.00
lbl_80B69E3C:
    lui     $at, %hi(var_80B6A7D8)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6A7D8)($at) 
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800CF470              
    nop
    lwc1    $f18, 0x015C(s0)           # 0000015C
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    mul.s   $f4, $f0, $f18             
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f8, $f4, $f6              
    jal     func_800642F0              
    swc1    $f8, 0x0028(s0)            # 00000028
    lh      t9, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     t9, $at, lbl_80B69EC0      
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f16, 0x015C(s0)           # 0000015C
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_80B69EB8               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2861          # a1 = 00002861
    beq     $zero, $zero, lbl_80B69EC0 
    nop
lbl_80B69EB8:
    jal     func_800C9884              
    addiu   a0, $zero, 0x2861          # a0 = 00002861
lbl_80B69EC0:
    jal     func_80B69600              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0044($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0160             # a2 = 00000160
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
lbl_80B69EE0:
    lw      $ra, 0x001C($sp)           
lbl_80B69EE4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B69EF4:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s0, 0x0078($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    sw      a1, 0x00E4($sp)            
    lh      v0, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $zero, lbl_80B69F58    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_80B69F58:
    bne     v0, $zero, lbl_80B69F70    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6A1E8 
    lw      $ra, 0x009C($sp)           
lbl_80B69F70:
    div     $zero, v0, $at             
    mfhi    t7                         
    bnel    t7, $zero, lbl_80B6A1E8    
    lw      $ra, 0x009C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B6A7DC)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6A7DC)($at) 
    lui     $at, %hi(var_80B6A7E0)     # $at = 80B70000
    lwc1    $f30, %lo(var_80B6A7E0)($at) 
    mul.s   $f6, $f0, $f4              
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f28                  # $f28 = 1.00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f26                  # $f26 = 140.00
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, s0, 0x0008             # s5 = 00000008
    trunc.w.s $f8, $f6                   
    addiu   s8, $sp, 0x00D4            # s8 = FFFFFFF4
    ori     s7, $zero, 0x8000          # s7 = 00008000
    addiu   s6, $sp, 0x00C8            # s6 = FFFFFFE8
    mfc1    s3, $f8                    
    nop
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
lbl_80B69FD4:
    lui     $at, 0x4620                # $at = 46200000
    mtc1    $at, $f12                  # $f12 = 10240.00
    jal     func_80026D90              
    nop
    mtc1    s3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sll     s2, v0, 16                 
    sll     a0, v0, 16                 
    sra     s2, s2, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s2, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f24, $f0, $f20            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f20, $f20, $f0            
    add.s   $f18, $f28, $f22           
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f8, $f26, $f24            
    or      a0, s5, $zero              # a0 = 00000008
    or      a1, s6, $zero              # a1 = FFFFFFE8
    mul.s   $f4, $f26, $f18            
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x00C8($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    mul.s   $f10, $f26, $f20           
    add.s   $f6, $f16, $f4             
    swc1    $f6, 0x00CC($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f18, $f8, $f10            
    jal     func_80063E18              
    swc1    $f18, 0x00D0($sp)          
    mul.s   $f12, $f0, $f30            
    lui     $at, %hi(var_80B6A7E4)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6A7E4)($at) 
    addu    s1, s2, s7                 
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    sll     a0, s1, 16                 
    c.lt.s  $f12, $f16                 
    nop
    bc1fl   lbl_80B6A12C               
    lui     $at, 0x40D0                # $at = 40D00000
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s1, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f24, $f0, $f20            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f20, $f20, $f0            
    add.s   $f18, $f28, $f22           
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f6, $f26, $f24            
    or      a0, s5, $zero              # a0 = 00000008
    or      a1, s6, $zero              # a1 = FFFFFFE8
    mul.s   $f16, $f26, $f18           
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00C8($sp)           
    lwc1    $f10, 0x0028(s0)           # 00000028
    mul.s   $f8, $f26, $f20            
    add.s   $f4, $f10, $f16            
    swc1    $f4, 0x00CC($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sub.s   $f18, $f6, $f8             
    jal     func_80063E18              
    swc1    $f18, 0x00D0($sp)          
    mul.s   $f12, $f0, $f30            
    nop
    lui     $at, 0x40D0                # $at = 40D00000
lbl_80B6A12C:
    mtc1    $at, $f0                   # $f0 = 6.50
    lui     $at, 0xC0D0                # $at = C0D00000
    mtc1    $at, $f8                   # $f8 = -6.50
    mul.s   $f10, $f0, $f24            
    lui     a3, %hi(var_80B6A7AC)      # a3 = 80B70000
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    mul.s   $f16, $f10, $f12           
    addiu   t5, $zero, 0x00AA          # t5 = 000000AA
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mul.s   $f4, $f0, $f22             
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f16, 0x00D4($sp)          
    sw      t9, 0x003C($sp)            
    sw      t8, 0x0038($sp)            
    mul.s   $f6, $f4, $f12             
    sw      t7, 0x0034($sp)            
    sw      t6, 0x0028($sp)            
    mul.s   $f18, $f8, $f20            
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    sw      t3, 0x001C($sp)            
    swc1    $f6, 0x00D8($sp)           
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    mul.s   $f10, $f18, $f12           
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6A7AC)  # a3 = 80B6A7AC
    lw      a0, 0x00E4($sp)            
    or      a1, s5, $zero              # a1 = 00000008
    or      a2, s8, $zero              # a2 = FFFFFFF4
    sw      $zero, 0x002C($sp)         
    swc1    $f10, 0x00DC($sp)          
    jal     func_8001E1D4              
    sw      $zero, 0x0030($sp)         
    addiu   s3, s3, 0x2AAA             # s3 = 00002AAA
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   $at, $zero, 0x0006         # $at = 00000006
    sll     s3, s3, 16                 
    bne     s4, $at, lbl_80B69FD4      
    sra     s3, s3, 16                 
    lw      $ra, 0x009C($sp)           
lbl_80B6A1E8:
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_80B6A22C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v1, 0x1C44(s1)             # 00001C44
    lbu     a1, 0x0159(s0)             # 00000159
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    sw      v1, 0x003C($sp)            
    bne     v0, $zero, lbl_80B6A26C    
    lw      v1, 0x003C($sp)            
    lbu     t6, 0x0171(s0)             # 00000171
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80B6A294    
lbl_80B6A26C:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f8, $f4, $f6              
    jal     func_80B696D4              
    swc1    $f8, 0x000C(s0)            # 0000000C
    beq     $zero, $zero, lbl_80B6A344 
    lui     $at, 0x0001                # $at = 00010000
lbl_80B6A294:
    lb      t8, 0x0141(v1)             # 00000141
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t8, $at, lbl_80B6A344      
    lui     $at, 0x0001                # $at = 00010000
    lh      t9, 0x0850(v1)             # 00000850
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    beq     t9, $zero, lbl_80B6A340    
    addiu   a2, v1, 0x08A8             # a2 = 000008A8
    jal     func_8002154C              
    sw      a2, 0x002C($sp)            
    lwc1    $f0, 0x0030($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    abs.s   $f0, $f0                   
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f10                  
    lwc1    $f16, 0x0038($sp)          
    bc1fl   lbl_80B6A344               
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $at, $f18                  # $f18 = 0.00
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f4, 0x0034($sp)           
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80B6A344               
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $at, $f6                   # $f6 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0BCC          # a1 = 00000BCC
    c.lt.s  $f4, $f6                   
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, s0, $zero              # a3 = 00000000
    bc1fl   lbl_80B6A344               
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x0008             # a0 = 00000008
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B696D4              
    or      a1, s1, $zero              # a1 = 00000000
lbl_80B6A340:
    lui     $at, 0x0001                # $at = 00010000
lbl_80B6A344:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0160             # a2 = 00000160
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B6A36C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6A390:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s7, 0x0064($sp)            
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_8007E2C0              
    or      s3, a0, $zero              # s3 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80B6A448      
    lw      t2, 0x0154(s0)             # 00000154
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x5F40             # t0 = 06005F40
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80B6A690 
    lw      $ra, 0x006C($sp)           
    lw      t2, 0x0154(s0)             # 00000154
lbl_80B6A448:
    lui     t1, %hi(func_80B69A18)     # t1 = 80B70000
    addiu   t1, t1, %lo(func_80B69A18) # t1 = 80B69A18
    bne     t1, t2, lbl_80B6A5EC       
    lui     $at, 0x4120                # $at = 41200000
    addiu   s6, $sp, 0x00A0            # s6 = FFFFFFB8
    jal     func_800AA740              
    or      a0, s6, $zero              # a0 = FFFFFFB8
    lh      t3, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bnel    t3, $at, lbl_80B6A51C      
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    sub.s   $f8, $f4, $f6              
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f8, $f20            
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    nop
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    sub.s   $f18, $f10, $f16           
    lui     $at, %hi(var_80B6A7E8)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B6A7E8)($at) 
    mfc1    a2, $f12                   
    add.s   $f4, $f18, $f20            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f4, $f6             
    jal     func_800AA8FC              
    nop
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x61B0             # t7 = 060061B0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80B6A51C:
    mtc1    $at, $f30                  # $f30 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f24                  # $f24 = 3.50
    lui     $at, 0xC461                # $at = C4610000
    mtc1    $at, $f22                  # $f22 = -900.00
    lui     $at, 0x442F                # $at = 442F0000
    lui     s8, 0xDA38                 # s8 = DA380000
    lui     s4, 0x0600                 # s4 = 06000000
    mtc1    $zero, $f28                # $f28 = 0.00
    mtc1    $at, $f20                  # $f20 = 700.00
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   s4, s4, 0x3850             # s4 = 06003850
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s5, 0x0001                 # s5 = 00010000
lbl_80B6A55C:
    jal     func_800AA764              
    or      a0, s6, $zero              # a0 = FFFFFFB8
    sll     a1, s2, 16                 
    sra     a1, a1, 16                 
    addiu   a0, $zero, 0xFA60          # a0 = FFFFFA60
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f22                   
    mov.s   $f12, $f28                 
    mov.s   $f14, $f20                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f30                   
    mov.s   $f12, $f24                 
    mov.s   $f14, $f26                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   s2, s2, 0x2000             # s2 = 00002000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    bne     s2, s5, lbl_80B6A55C       
    nop
    beq     $zero, $zero, lbl_80B6A690 
    lw      $ra, 0x006C($sp)           
lbl_80B6A5EC:
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x0028(s0)           # 00000028
    mtc1    $at, $f20                  # $f20 = 0.00
    mtc1    $zero, $f12                # $f12 = 0.00
    sub.s   $f16, $f8, $f10            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    mul.s   $f14, $f16, $f20           
    jal     func_800AA7F4              
    nop
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    sub.s   $f6, $f18, $f4             
    lui     $at, %hi(var_80B6A7EC)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B6A7EC)($at) 
    mfc1    a2, $f12                   
    add.s   $f8, $f6, $f20             
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f8, $f10            
    jal     func_800AA8FC              
    nop
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t1, s1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x61B0             # t4 = 060061B0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      $ra, 0x006C($sp)           
lbl_80B6A690:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80B6A6E0: .word 0x000F0100, 0x00000000, 0x00360000, 0x00000238
.word func_80B691D0
.word func_80B695B8
.word func_80B6A36C
.word func_80B6A390
var_80B6A700: .word \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, \
0x00000000, 0x00010000, 0x42960000, 0xC1000000, \
0x42960000
var_80B6A724: .word \
0xC2960000, 0xC1000000, 0x42960000, 0xC2960000, \
0xC1000000, 0xC2960000
var_80B6A73C: .word \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, \
0x00000000, 0x00010000
var_80B6A754: .word 0x430C0000, 0x43906666, 0x00000000
var_80B6A760: .word 0xC30C0000, 0x43900000, 0x00000000, 0xC30C0000
var_80B6A770: .word 0x00000000, 0x00000000
var_80B6A778: .word 0x0A000900, 0x20020000, 0x00000002
.word var_80B6A700
var_80B6A788: .word 0x48500064
var_80B6A78C: .word 0x00000000, 0x00000000, 0x00000000
var_80B6A798: .word 0xFAFAFAFF
var_80B6A79C: .word 0xB4B4B4FF
var_80B6A7A0: .word 0x00000000, 0x00000000, 0x00000000
var_80B6A7AC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80B6A7C0: .word 0x462AA800
var_80B6A7C4: .word 0x3C088889
var_80B6A7C8: .word 0x3F333333
var_80B6A7CC: .word 0x3E20D97C
var_80B6A7D0: .word 0x443B8000
var_80B6A7D4: .word 0x3DCCCCCD
var_80B6A7D8: .word 0x3EE5C8FA
var_80B6A7DC: .word 0x462AA800
var_80B6A7E0: .word 0x3BEA0EA1
var_80B6A7E4: .word 0x3F266666
var_80B6A7E8: .word 0x3DCCCCCD
var_80B6A7EC: .word 0x3DCCCCCD

