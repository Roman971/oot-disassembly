#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B789D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80B7912C)      # a1 = 80B80000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80B7912C)  # a1 = 80B7912C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x2594             # a0 = 06002594
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80B790E0)      # a3 = 80B80000
    addiu   a3, a3, %lo(var_80B790E0)  # a3 = 80B790E0
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0020($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t7, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   t9, $zero, 0x8000          # t9 = FFFF8000
    bne     t7, $zero, lbl_80B78A80    
    lui     $at, 0x4496                # $at = 44960000
    lui     t8, %hi(func_80B78CD4)     # t8 = 80B80000
    addiu   t8, t8, %lo(func_80B78CD4) # t8 = 80B78CD4
    beq     $zero, $zero, lbl_80B78A98 
    sw      t8, 0x0154(s0)             # 00000154
lbl_80B78A80:
    mtc1    $at, $f4                   # $f4 = 1200.00
    lui     t0, %hi(func_80B78D3C)     # t0 = 80B80000
    addiu   t0, t0, %lo(func_80B78D3C) # t0 = 80B78D3C
    sh      t9, 0x00B4(s0)             # 000000B4
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f4, 0x00BC(s0)            # 000000BC
lbl_80B78A98:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B78AAC:
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
    addiu   a1, a1, 0x015C             # a1 = 0000015C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B78AF4:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s8, 0x0078($sp)            
    sw      s1, 0x005C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s7, 0x0074($sp)            
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a2, 0x00B0($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_80058FF8              
    addiu   a3, $zero, 0x28CB          # a3 = 000028CB
    lui     $at, %hi(var_80B79150)     # $at = 80B80000
    lwc1    $f30, %lo(var_80B79150)($at) 
    lui     $at, %hi(var_80B79154)     # $at = 80B80000
    lwc1    $f28, %lo(var_80B79154)($at) 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f26                  # $f26 = 4.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f22                  # $f22 = 7.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s6, %hi(var_80B7914C)      # s6 = 80B80000
    lui     s5, %hi(var_80B79148)      # s5 = 80B80000
    lui     s4, %hi(var_80B7913C)      # s4 = 80B80000
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s4, s4, %lo(var_80B7913C)  # s4 = 80B7913C
    addiu   s5, s5, %lo(var_80B79148)  # s5 = 80B79148
    addiu   s6, s6, %lo(var_80B7914C)  # s6 = 80B7914C
    sw      $zero, 0x0088($sp)         
    addiu   s7, $zero, 0x000A          # s7 = 0000000A
    addiu   s3, $sp, 0x009C            # s3 = FFFFFFF4
    addiu   s2, $sp, 0x0090            # s2 = FFFFFFE8
lbl_80B78BA8:
    lw      v0, 0x0088($sp)            
    lwc1    $f8, 0x00B0($sp)           
    or      s0, $zero, $zero           # s0 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f24, $f6, $f8             
    nop
lbl_80B78BC8:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f10, 0x0024(s1)           # 00000024
    add.s   $f16, $f0, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0090($sp)          
    lwc1    $f18, 0x00B0($sp)          
    lwc1    $f6, 0x0028(s1)            # 00000028
    mov.s   $f12, $f20                 
    mul.s   $f4, $f0, $f18             
    add.s   $f8, $f4, $f6              
    add.s   $f10, $f8, $f24            
    jal     func_80026D90              
    swc1    $f10, 0x0094($sp)          
    lwc1    $f16, 0x002C(s1)           # 0000002C
    mov.s   $f12, $f22                 
    add.s   $f18, $f0, $f16            
    jal     func_80026D90              
    swc1    $f18, 0x0098($sp)          
    swc1    $f0, 0x009C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x00A4($sp)           
    mul.s   $f4, $f0, $f26             
    add.s   $f6, $f4, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00A0($sp)           
    mul.s   $f8, $f0, $f28             
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sw      t6, 0x001C($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFE8
    or      a3, s3, $zero              # a3 = FFFFFFF4
    sw      s4, 0x0010($sp)            
    add.s   $f10, $f8, $f30            
    sw      s5, 0x0014($sp)            
    sw      s6, 0x0018($sp)            
    mfc1    a2, $f10                   
    jal     func_8001DDB8              
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s7, lbl_80B78BC8       
    nop
    lw      t7, 0x0088($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t8, t7, 0x0001             # t8 = 00000001
    bne     t8, $at, lbl_80B78BA8      
    sw      t8, 0x0088($sp)            
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80B78CD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x016D(a3)             # 0000016D
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80B78D20    
    lw      a0, 0x001C($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_80B78AF4              
    sw      a3, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B78D30 
    lw      $ra, 0x0014($sp)           
lbl_80B78D20:
    addu    a1, a0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a3, 0x015C             # a2 = 0000015C
    lw      $ra, 0x0014($sp)           
lbl_80B78D30:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B78D3C:
    sw      a1, 0x0004($sp)            
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lui     t7, %hi(func_80B78D74)     # t7 = 80B80000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    c.lt.s  $f4, $f6                   
    addiu   t7, t7, %lo(func_80B78D74) # t7 = 80B78D74
    bc1f    lbl_80B78D6C               
    nop
    sh      t6, 0x0158(a0)             # 00000158
    sw      t7, 0x0154(a0)             # 00000154
lbl_80B78D6C:
    jr      $ra                        
    nop


func_80B78D74:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lh      v0, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B78DA0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_80B78DA0:
    bgez    v0, lbl_80B78DB4           
    andi    t7, v0, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_80B78DB4    
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFC
lbl_80B78DB4:
    bne     t7, $zero, lbl_80B78DC8    
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28D4          # a1 = 000028D4
    lh      v0, 0x0158(s0)             # 00000158
lbl_80B78DC8:
    bne     v0, $zero, lbl_80B78E28    
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f6, 0x0010(s0)            # 00000010
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x002C(s0)            # 0000002C
    sw      a2, 0x0024($sp)            
    jal     func_80050B00              
    or      a1, a2, $zero              # a1 = 0000015C
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0024($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
    lw      a0, 0x0034($sp)            
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_800314D8              
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     t9, %hi(func_80B78EE0)     # t9 = 80B80000
    addiu   t9, t9, %lo(func_80B78EE0) # t9 = 80B78EE0
    beq     $zero, $zero, lbl_80B78ECC 
    sw      t9, 0x0154(s0)             # 00000154
lbl_80B78E28:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0028($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lwc1    $f16, 0x0028($sp)          
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f0, $f2                   
    mul.s   $f18, $f2, $f16            
    bc1f    lbl_80B78E60               
    nop
    beq     $zero, $zero, lbl_80B78E60 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80B78E60:
    mtc1    v0, $f8                    # $f8 = NaN
    add.s   $f4, $f18, $f2             
    cvt.s.w $f10, $f8                  
    lwc1    $f8, 0x0008(s0)            # 00000008
    mul.s   $f6, $f10, $f4             
    add.s   $f16, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0024(s0)           # 00000024
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0028($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lwc1    $f4, 0x0028($sp)           
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f0, $f2                   
    mul.s   $f6, $f2, $f4              
    bc1f    lbl_80B78EB0               
    nop
    beq     $zero, $zero, lbl_80B78EB0 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80B78EB0:
    mtc1    v0, $f18                   # $f18 = NaN
    add.s   $f8, $f6, $f2              
    cvt.s.w $f10, $f18                 
    lwc1    $f18, 0x0010(s0)           # 00000010
    mul.s   $f16, $f10, $f8            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x002C(s0)            # 0000002C
lbl_80B78ECC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B78EE0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     v0, 0x016C(s0)             # 0000016C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    bnel    t6, $zero, lbl_80B78F24    
    lwc1    $f0, 0x0080(s0)            # 00000080
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B78FA4    
    nop
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_80B78F24:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lhu     t0, 0x0088(s0)             # 00000088
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    c.lt.s  $f4, $f0                   
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sb      t9, 0x016C(s0)             # 0000016C
    sh      t1, 0x0088(s0)             # 00000088
    bc1f    lbl_80B78F4C               
    nop
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_80B78F4C:
    jal     func_80B78AF4              
    lui     a2, 0x4220                 # a2 = 42200000
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t2, $at, lbl_80B78F94      
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    add.s   $f10, $f6, $f8             
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80031530              
    swc1    $f10, 0x0028(s0)           # 00000028
    lui     t3, %hi(func_80B79038)     # t3 = 80B80000
    addiu   t3, t3, %lo(func_80B79038) # t3 = 80B79038
    beq     $zero, $zero, lbl_80B79024 
    sw      t3, 0x0154(s0)             # 00000154
lbl_80B78F94:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B79028 
    lw      $ra, 0x0024($sp)           
lbl_80B78FA4:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    add.s   $f4, $f16, $f18            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f4, 0x0028(s0)            # 00000028
    sw      t4, 0x0014($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    or      a1, a2, $zero              # a1 = 0000015C
    sub.s   $f10, $f6, $f8             
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_80050B00              
    sw      a2, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B79024:
    lw      $ra, 0x0024($sp)           
lbl_80B79028:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B79038:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     v0, $zero, lbl_80B79078    
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80B78D3C)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B78D3C) # t6 = 80B78D3C
    sw      t6, 0x0154(a3)             # 00000154
    swc1    $f4, 0x0060(a3)            # 00000060
lbl_80B79078:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B79088:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B790AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x23D0             # a1 = 060023D0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B790E0: .word \
0x0A110900, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0x4FC007CA, 0x00000000, 0x01010000, \
0x000D0078, 0x00000000, 0x00000000
var_80B7910C: .word 0x01C70600, 0x00000000, 0x006B0000, 0x000001A8
.word func_80B789D0
.word func_80B78AAC
.word func_80B79088
.word func_80B790AC
var_80B7912C: .word 0xB0F80258, 0xB06CFFFD, 0xB070FFE2, 0x48500064
var_80B7913C: .word 0x00000000, 0xBF800000, 0x00000000
var_80B79148: .word 0xAAFFFFFF
var_80B7914C: .word 0x003264FF

.section .rodata

var_80B79150: .word 0x3DCCCCCD
var_80B79154: .word 0x3E4CCCCD, 0x00000000, 0x00000000

