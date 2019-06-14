#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA1BA0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    lw      v0, 0x0078(t6)             ## 00000078
    beql    v0, $zero, lbl_80AA1C50    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x0008(v0)             ## 00000008
    lui     $at, %hi(var_80AA4AD0)     ## $at = 80AA0000
    lwc1    $f2, %lo(var_80AA4AD0)($at) 
    mtc1    t7, $f4                    ## $f4 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f14                  ## $f14 = 1.00
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f2              
    swc1    $f8, 0x001C($sp)           
    lh      t8, 0x000A(v0)             ## 0000000A
    lh      t9, 0x000C(v0)             ## 0000000C
    mtc1    t8, $f10                   ## $f10 = 0.00
    mtc1    t9, $f4                    ## $f4 = 0.00
    cvt.s.w $f18, $f10                 
    cvt.s.w $f6, $f4                   
    mul.s   $f16, $f18, $f2            
    nop
    mul.s   $f0, $f6, $f2              
    swc1    $f16, 0x0018($sp)          
    neg.s   $f8, $f0                   
    mul.s   $f12, $f8, $f16            
    jal     func_800CD76C              
    nop
    lw      t0, 0x0020($sp)            
    neg.s   $f10, $f0                  
    lwc1    $f16, 0x0018($sp)          
    swc1    $f10, 0x0178(t0)           ## 00000178
    lwc1    $f18, 0x001C($sp)          
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f14                  ## $f14 = 1.00
    neg.s   $f4, $f18                  
    mul.s   $f12, $f4, $f16            
    jal     func_800CD76C              
    nop
    lw      t1, 0x0020($sp)            
    swc1    $f0, 0x0180(t1)            ## 00000180
    lw      $ra, 0x0014($sp)           
lbl_80AA1C50:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA1C5C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0xFFDD         ## $at = FFFFFFDD
    beql    t6, $at, lbl_80AA1D74      
    lw      $ra, 0x0024($sp)           
    lw      t7, 0x0004(s0)             ## 00000004
    sb      $zero, 0x001F(s0)          ## 0000001F
    addiu   a1, s0, 0x0190             ## a1 = 00000190
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sw      t8, 0x0004(s0)             ## 00000004
    sw      a1, 0x0028($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80AA3F80)      ## a3 = 80AA0000
    lw      a1, 0x0028($sp)            
    addiu   a3, a3, %lo(var_80AA3F80)  ## a3 = 80AA3F80
    lw      a0, 0x0034($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0300         ## $at = 00000300
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    bne     v0, $at, lbl_80AA1D04      
    ori     t4, $zero, 0xFFFF          ## t4 = 0000FFFF
    lui     t9, 0x8012                 ## t9 = 80120000
    lw      t9, -0x5A2C(t9)            ## 8011A5D4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t0, $zero, 0x409D          ## t0 = 0000409D
    bne     t9, $at, lbl_80AA1CFC      
    addiu   t1, $zero, 0x4090          ## t1 = 00004090
    beq     $zero, $zero, lbl_80AA1D0C 
    sh      t0, 0x010E(s0)             ## 0000010E
lbl_80AA1CFC:
    beq     $zero, $zero, lbl_80AA1D0C 
    sh      t1, 0x010E(s0)             ## 0000010E
lbl_80AA1D04:
    ori     t2, v0, 0x0300             ## t2 = 00000300
    sh      t2, 0x010E(s0)             ## 0000010E
lbl_80AA1D0C:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f0                   ## $f0 = 10.00
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    sh      t3, 0x0166(s0)             ## 00000166
    sh      t4, 0x0146(s0)             ## 00000146
    addiu   t5, $zero, 0x0004          ## t5 = 00000004
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t5, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    jal     func_80AA1BA0              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A2C(t6)            ## 8011A5D4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t6, $at, lbl_80AA1D70      
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f8                   ## $f8 = 15.00
    lwc1    $f6, 0x0028(s0)            ## 00000028
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s0)           ## 00000028
lbl_80AA1D70:
    lw      $ra, 0x0024($sp)           
lbl_80AA1D74:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA1D84:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lbu     t6, 0x0144(a2)             ## 00000144
    or      a0, a3, $zero              ## a0 = 00000000
    bnel    t6, $zero, lbl_80AA1DB0    
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0190             ## a1 = 00000190
    lw      $ra, 0x0014($sp)           
lbl_80AA1DB0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA1DBC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x018C(a0)             ## 0000018C
    bne     t6, $zero, lbl_80AA1E48    
    nop
    lbu     v0, 0x018D(a0)             ## 0000018D
    bne     v0, $zero, lbl_80AA1E40    
    addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
    lh      t7, 0x008A(a0)             ## 0000008A
    lh      t8, 0x00B6(a0)             ## 000000B6
    subu    v0, t7, t8                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AA1E00           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80AA1E00 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80AA1E00:
    slti    $at, v1, 0x2800            
    beql    $at, $zero, lbl_80AA1E68   
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022930              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA1E30    
    lw      a1, 0x001C($sp)            
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    beq     $zero, $zero, lbl_80AA1E64 
    sb      t9, 0x018C(a0)             ## 0000018C
lbl_80AA1E30:
    jal     func_80022A68              
    lui     a2, 0x4288                 ## a2 = 42880000
    beq     $zero, $zero, lbl_80AA1E68 
    lw      $ra, 0x0014($sp)           
lbl_80AA1E40:
    beq     $zero, $zero, lbl_80AA1E64 
    sb      t0, 0x018D(a0)             ## 0000018D
lbl_80AA1E48:
    jal     func_80022AD0              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA1E64    
    lw      a0, 0x0018($sp)            
    addiu   t1, $zero, 0x0014          ## t1 = 00000014
    sb      $zero, 0x018C(a0)          ## 0000018C
    sb      t1, 0x018D(a0)             ## 0000018D
lbl_80AA1E64:
    lw      $ra, 0x0014($sp)           
lbl_80AA1E68:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA1E74:
    addiu   $sp, $sp, 0xFF00           ## $sp = FFFFFF00
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a1, 0x0104($sp)            
    lw      t6, 0x0104($sp)            
    sb      $zero, 0x00FF($sp)         
    lw      t7, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x00E8($sp)            
    lbu     t8, 0x0140(s1)             ## 00000140
    lbu     t1, 0x0144(s1)             ## 00000144
    addiu   t9, t8, 0x0001             ## t9 = 00000001
    sltiu   $at, t1, 0x0006            
    beq     $at, $zero, lbl_80AA36DC   
    sb      t9, 0x0140(s1)             ## 00000140
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80AA4AD4)     ## $at = 80AA0000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80AA4AD4)($at) 
    jr      t1                         
    nop
var_80AA1ECC:
    lh      v0, 0x014A(s1)             ## 0000014A
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AA1EE4    
    addiu   t2, v0, 0xFFFF             ## t2 = FFFFFFFF
    sh      t2, 0x014A(s1)             ## 0000014A
lbl_80AA1EE4:
    lh      v0, 0x018A(s1)             ## 0000018A
    beq     v0, $zero, lbl_80AA1EF8    
    addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
    sh      t3, 0x018A(s1)             ## 0000018A
    lh      v0, 0x018A(s1)             ## 0000018A
lbl_80AA1EF8:
    bnel    v0, $at, lbl_80AA1F14      
    lhu     t6, 0x0146(s1)             ## 00000146
    lw      t4, 0x0004(s1)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t5, t4, $at                
    sw      t5, 0x0004(s1)             ## 00000004
    lhu     t6, 0x0146(s1)             ## 00000146
lbl_80AA1F14:
    ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
    bnel    t6, $at, lbl_80AA1F2C      
    lh      t7, 0x014A(s1)             ## 0000014A
    jal     func_80AA1DBC              
    lw      a1, 0x0104($sp)            
    lh      t7, 0x014A(s1)             ## 0000014A
lbl_80AA1F2C:
    bnel    t7, $zero, lbl_80AA2528    
    lw      t1, 0x0028(s1)             ## 00000028
    lbu     v0, 0x01A1(s1)             ## 000001A1
    addiu   t1, $zero, 0x0006          ## t1 = 00000006
    andi    t8, v0, 0x0002             ## t8 = 00000000
    beq     t8, $zero, lbl_80AA2524    
    andi    t9, v0, 0xFFFD             ## t9 = 00000000
    lwc1    $f4, 0x0024(s1)            ## 00000024
    sb      t9, 0x01A1(s1)             ## 000001A1
    sh      t1, 0x014A(s1)             ## 0000014A
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0028(s1)            ## 00000028
    lw      a2, 0x0104($sp)            
    addiu   t6, $zero, 0xFFDD          ## t6 = FFFFFFDD
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x002C(s1)            ## 0000002C
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a3, $zero, 0x0141          ## a3 = 00000141
    swc1    $f8, 0x0018($sp)           
    lh      t3, 0x00B4(s1)             ## 000000B4
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    sw      t3, 0x001C($sp)            
    lh      t4, 0x00B6(s1)             ## 000000B6
    sw      t4, 0x0020($sp)            
    lh      t5, 0x00B8(s1)             ## 000000B8
    sw      t6, 0x0028($sp)            
    jal     func_800253F0              
    sw      t5, 0x0024($sp)            
    beq     v0, $zero, lbl_80AA2524    
    or      s0, v0, $zero              ## s0 = 00000000
    lw      v1, 0x01CC(s1)             ## 000001CC
    lh      t7, 0x008A(s1)             ## 0000008A
    lh      t8, 0x00B6(s1)             ## 000000B6
    lw      t9, 0x0000(v1)             ## 00000000
    lui     a1, %hi(var_80AA41A8)      ## a1 = 80AA0000
    subu    a0, t7, t8                 
    sll     a0, a0, 16                 
    andi    t1, t9, 0x0700             ## t1 = 00000000
    beq     t1, $zero, lbl_80AA1FE8    
    sra     a0, a0, 16                 
    lw      t2, 0x00E8($sp)            
    lui     t4, %hi(var_80AA418C)      ## t4 = 80AA0000
    lb      t3, 0x0832(t2)             ## 00000832
    addu    t4, t4, t3                 
    lbu     t4, %lo(var_80AA418C)(t4)  
    beq     $zero, $zero, lbl_80AA1FEC 
    sb      t4, 0x0184(s1)             ## 00000184
lbl_80AA1FE8:
    sb      $zero, 0x0184(s1)          ## 00000184
lbl_80AA1FEC:
    bltz    a0, lbl_80AA1FFC           
    subu    v1, $zero, a0              
    beq     $zero, $zero, lbl_80AA1FFC 
    or      v1, a0, $zero              ## v1 = 00000000
lbl_80AA1FFC:
    slti    $at, v1, 0x4001            
    bne     $at, $zero, lbl_80AA2034   
    lui     a0, %hi(var_80AA3FAC)      ## a0 = 80AA0000
    lbu     v1, 0x0184(s1)             ## 00000184
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    addiu   t5, $zero, 0x0003          ## t5 = 00000003
    bnel    v1, $at, lbl_80AA2028      
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     $zero, $zero, lbl_80AA2034 
    sb      t5, 0x0184(s1)             ## 00000184
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80AA2028:
    bne     v1, $at, lbl_80AA2034      
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sb      t6, 0x0184(s1)             ## 00000184
lbl_80AA2034:
    lbu     t7, 0x0184(s1)             ## 00000184
    addiu   a1, a1, %lo(var_80AA41A8)  ## a1 = 80AA41A8
    lhu     t2, 0x0146(s1)             ## 00000146
    sll     t8, t7,  1                 
    addu    t9, a1, t8                 
    lhu     t1, 0x0000(t9)             ## 00000000
    or      v1, $zero, $zero           ## v1 = 00000000
    addiu   a0, a0, %lo(var_80AA3FAC)  ## a0 = 80AA3FAC
    and     t3, t1, t2                 
    andi    t4, t3, 0xFFFF             ## t4 = 00000000
    bne     t4, $zero, lbl_80AA2074    
    sh      t3, 0x0146(v0)             ## 00000146
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AA36E0 
    lw      $ra, 0x003C($sp)           
lbl_80AA2074:
    sb      $zero, 0x0148(v0)          ## 00000148
    sll     t5, v1,  1                 
lbl_80AA207C:
    addu    t6, a0, t5                 
    lhu     t7, 0x0000(t6)             ## 00000000
    lhu     t8, 0x0146(v0)             ## 00000146
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    andi    v1, v1, 0x00FF             ## v1 = 00000001
    and     t9, t7, t8                 
    beq     t9, $zero, lbl_80AA20A8    
    slti    $at, v1, 0x000B            
    lbu     t1, 0x0148(v0)             ## 00000148
    addiu   t2, t1, 0x0001             ## t2 = 00000001
    sb      t2, 0x0148(v0)             ## 00000148
lbl_80AA20A8:
    bnel    $at, $zero, lbl_80AA207C   
    sll     t5, v1,  1                 
    lbu     t4, 0x0184(s1)             ## 00000184
    lhu     t3, 0x0146(s1)             ## 00000146
    sll     t5, t4,  1                 
    addu    t6, a1, t5                 
    lhu     t7, 0x0000(t6)             ## 00000000
    nor     t8, t7, $zero              
    and     t1, t3, t8                 
    andi    t2, t1, 0x03FF             ## t2 = 00000000
    bne     t2, $zero, lbl_80AA20E0    
    sh      t1, 0x0146(s1)             ## 00000146
    addiu   t4, $zero, 0x000A          ## t4 = 0000000A
    sh      t4, 0x018A(s1)             ## 0000018A
lbl_80AA20E0:
    lhu     v1, 0x0146(v0)             ## 00000146
    andi    a1, v1, 0x0001             ## a1 = 00000001
    beq     a1, $zero, lbl_80AA2100    
    andi    t5, v1, 0x0080             ## t5 = 00000000
    beql    t5, $zero, lbl_80AA2104    
    andi    t0, v1, 0x0002             ## t0 = 00000000
    beq     $zero, $zero, lbl_80AA228C 
    sb      $zero, 0x0185(v0)          ## 00000185
lbl_80AA2100:
    andi    t0, v1, 0x0002             ## t0 = 00000000
lbl_80AA2104:
    beq     t0, $zero, lbl_80AA211C    
    andi    t6, v1, 0x0008             ## t6 = 00000000
    beq     t6, $zero, lbl_80AA211C    
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    beq     $zero, $zero, lbl_80AA228C 
    sb      t7, 0x0185(v0)             ## 00000185
lbl_80AA211C:
    andi    a3, v1, 0x0004             ## a3 = 00000000
    beq     a3, $zero, lbl_80AA2138    
    andi    t3, v1, 0x0010             ## t3 = 00000000
    beq     t3, $zero, lbl_80AA2138    
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    beq     $zero, $zero, lbl_80AA228C 
    sb      t8, 0x0185(v0)             ## 00000185
lbl_80AA2138:
    andi    a2, v1, 0x0040             ## a2 = 00000000
    beq     a2, $zero, lbl_80AA2154    
    andi    t9, v1, 0x0080             ## t9 = 00000000
    beq     t9, $zero, lbl_80AA2154    
    addiu   t1, $zero, 0x0003          ## t1 = 00000003
    beq     $zero, $zero, lbl_80AA228C 
    sb      t1, 0x0185(v0)             ## 00000185
lbl_80AA2154:
    beq     a1, $zero, lbl_80AA216C    
    andi    t2, v1, 0x0020             ## t2 = 00000000
    beq     t2, $zero, lbl_80AA216C    
    addiu   t4, $zero, 0x0004          ## t4 = 00000004
    beq     $zero, $zero, lbl_80AA228C 
    sb      t4, 0x0185(v0)             ## 00000185
lbl_80AA216C:
    beq     a1, $zero, lbl_80AA2184    
    nop
    beq     t0, $zero, lbl_80AA2184    
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    beq     $zero, $zero, lbl_80AA228C 
    sb      t5, 0x0185(v0)             ## 00000185
lbl_80AA2184:
    beq     a2, $zero, lbl_80AA219C    
    andi    t6, v1, 0x0008             ## t6 = 00000000
    beq     t6, $zero, lbl_80AA219C    
    addiu   t7, $zero, 0x0006          ## t7 = 00000006
    beq     $zero, $zero, lbl_80AA228C 
    sb      t7, 0x0185(v0)             ## 00000185
lbl_80AA219C:
    beq     a3, $zero, lbl_80AA21B4    
    andi    t3, v1, 0x0020             ## t3 = 00000000
    beq     t3, $zero, lbl_80AA21B4    
    addiu   t8, $zero, 0x0007          ## t8 = 00000007
    beq     $zero, $zero, lbl_80AA228C 
    sb      t8, 0x0185(v0)             ## 00000185
lbl_80AA21B4:
    andi    a0, v1, 0x0010             ## a0 = 00000000
    beq     a0, $zero, lbl_80AA21D0    
    andi    t9, v1, 0x0080             ## t9 = 00000000
    beq     t9, $zero, lbl_80AA21D0    
    addiu   t1, $zero, 0x0008          ## t1 = 00000008
    beq     $zero, $zero, lbl_80AA228C 
    sb      t1, 0x0185(v0)             ## 00000185
lbl_80AA21D0:
    beq     a1, $zero, lbl_80AA21E0    
    addiu   t2, $zero, 0x0009          ## t2 = 00000009
    beq     $zero, $zero, lbl_80AA228C 
    sb      t2, 0x0185(v0)             ## 00000185
lbl_80AA21E0:
    beq     t0, $zero, lbl_80AA21F0    
    addiu   t4, $zero, 0x000A          ## t4 = 0000000A
    beq     $zero, $zero, lbl_80AA228C 
    sb      t4, 0x0185(v0)             ## 00000185
lbl_80AA21F0:
    beq     a3, $zero, lbl_80AA2204    
    andi    t6, v1, 0x0020             ## t6 = 00000000
    addiu   t5, $zero, 0x000B          ## t5 = 0000000B
    beq     $zero, $zero, lbl_80AA228C 
    sb      t5, 0x0185(v0)             ## 00000185
lbl_80AA2204:
    beq     t6, $zero, lbl_80AA2214    
    addiu   t7, $zero, 0x000C          ## t7 = 0000000C
    beq     $zero, $zero, lbl_80AA228C 
    sb      t7, 0x0185(v0)             ## 00000185
lbl_80AA2214:
    beq     a2, $zero, lbl_80AA2228    
    andi    t8, v1, 0x0008             ## t8 = 00000000
    addiu   t3, $zero, 0x000D          ## t3 = 0000000D
    beq     $zero, $zero, lbl_80AA228C 
    sb      t3, 0x0185(v0)             ## 00000185
lbl_80AA2228:
    beq     t8, $zero, lbl_80AA2238    
    addiu   t9, $zero, 0x000E          ## t9 = 0000000E
    beq     $zero, $zero, lbl_80AA228C 
    sb      t9, 0x0185(v0)             ## 00000185
lbl_80AA2238:
    beq     a0, $zero, lbl_80AA224C    
    andi    t2, v1, 0x0080             ## t2 = 00000000
    addiu   t1, $zero, 0x000F          ## t1 = 0000000F
    beq     $zero, $zero, lbl_80AA228C 
    sb      t1, 0x0185(v0)             ## 00000185
lbl_80AA224C:
    beq     t2, $zero, lbl_80AA2260    
    andi    t5, v1, 0x0100             ## t5 = 00000000
    addiu   t4, $zero, 0x0010          ## t4 = 00000010
    beq     $zero, $zero, lbl_80AA228C 
    sb      t4, 0x0185(v0)             ## 00000185
lbl_80AA2260:
    beq     t5, $zero, lbl_80AA2274    
    andi    t7, v1, 0x0200             ## t7 = 00000000
    addiu   t6, $zero, 0x0011          ## t6 = 00000011
    beq     $zero, $zero, lbl_80AA228C 
    sb      t6, 0x0185(v0)             ## 00000185
lbl_80AA2274:
    beq     t7, $zero, lbl_80AA2288    
    addiu   t8, $zero, 0x0064          ## t8 = 00000064
    addiu   t3, $zero, 0x0012          ## t3 = 00000012
    beq     $zero, $zero, lbl_80AA228C 
    sb      t3, 0x0185(v0)             ## 00000185
lbl_80AA2288:
    sb      t8, 0x0185(v0)             ## 00000185
lbl_80AA228C:
    lbu     t9, 0x0185(v0)             ## 00000185
    addiu   $at, $zero, 0x0064         ## $at = 00000064
    bnel    t9, $at, lbl_80AA22A4      
    lh      t1, 0x00B6(s1)             ## 000000B6
    sb      $zero, 0x0185(v0)          ## 00000185
    lh      t1, 0x00B6(s1)             ## 000000B6
lbl_80AA22A4:
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t1, $f10                   ## $f10 = 0.00
    lui     $at, %hi(var_80AA4AEC)     ## $at = 80AA0000
    or      a1, $zero, $zero           ## a1 = 00000000
    cvt.s.w $f4, $f10                  
    lwc1    $f10, %lo(var_80AA4AEC)($at) 
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAB94              
    nop
    lbu     t2, 0x0185(s0)             ## 00000185
    lui     t5, %hi(var_80AA3FC4)      ## t5 = 80AA0000
    addiu   t5, t5, %lo(var_80AA3FC4)  ## t5 = 80AA3FC4
    sll     t4, t2,  2                 
    subu    t4, t4, t2                 
    sll     t4, t4,  2                 
    addu    a0, t4, t5                 
    jal     func_800AB958              
    addiu   a1, $sp, 0x00DC            ## a1 = FFFFFFDC
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x00DC($sp)           
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lbu     $at, 0x0185(s0)            ## 00000185
    add.s   $f8, $f4, $f6              
    lui     t6, %hi(var_80AA3FC4)      ## t6 = 80AA0000
    sll     v1, $at,  2                
    subu    v1, v1, $at                
    swc1    $f8, 0x0024(s0)            ## 00000024
    lwc1    $f4, 0x00E0($sp)           
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    sll     v1, v1,  2                 
    add.s   $f6, $f10, $f4             
    addiu   t6, t6, %lo(var_80AA3FC4)  ## t6 = 80AA3FC4
    addu    v0, v1, t6                 
    lui     t7, %hi(var_80AA40A8)      ## t7 = 80AA0000
    swc1    $f6, 0x0028(s0)            ## 00000028
    lwc1    $f10, 0x00E4($sp)          
    addiu   t7, t7, %lo(var_80AA40A8)  ## t7 = 80AA40A8
    addu    a0, v1, t7                 
    add.s   $f4, $f8, $f10             
    lui     $at, 0xBF80                ## $at = BF800000
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    swc1    $f4, 0x002C(s0)            ## 0000002C
    lwc1    $f6, 0x0000(v0)            ## 00000000
    lwc1    $f10, 0x0050(s1)           ## 00000050
    neg.s   $f8, $f6                   
    div.s   $f4, $f8, $f10             
    swc1    $f4, 0x014C(s0)            ## 0000014C
    lwc1    $f6, 0x0004(v0)            ## 00000004
    lwc1    $f10, 0x0050(s1)           ## 00000050
    neg.s   $f8, $f6                   
    div.s   $f4, $f8, $f10             
    swc1    $f4, 0x0150(s0)            ## 00000150
    lwc1    $f6, 0x0008(v0)            ## 00000008
    lwc1    $f10, 0x0050(s1)           ## 00000050
    neg.s   $f8, $f6                   
    div.s   $f4, $f8, $f10             
    mtc1    $at, $f10                  ## $f10 = -1.00
    lui     $at, 0x4640                ## $at = 46400000
    mtc1    $at, $f12                  ## $f12 = 12288.00
    swc1    $f4, 0x0154(s0)            ## 00000154
    lwc1    $f6, 0x0000(a0)            ## 00000000
    swc1    $f6, 0x016C(s0)            ## 0000016C
    lwc1    $f8, 0x0004(a0)            ## 00000004
    sb      t3, 0x0144(s0)             ## 00000144
    swc1    $f10, 0x006C(s0)           ## 0000006C
    jal     func_80026D90              
    swc1    $f8, 0x0170(s0)            ## 00000170
    trunc.w.s $f4, $f0                   
    lh      t4, 0x008A(s1)             ## 0000008A
    ori     $at, $zero, 0x8000         ## $at = 00008000
    mfc1    t2, $f4                    
    nop
    addu    t5, t2, t4                 
    addu    t6, t5, $at                
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f12                  ## $f12 = 2.00
    jal     func_80026D64              
    sh      t6, 0x0032(s0)             ## 00000032
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f6                   ## $f6 = 3.00
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f12                  ## $f12 = 2.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x0060(s0)            ## 00000060
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f10                  ## $f10 = 3.00
    lbu     t7, 0x0148(s0)             ## 00000148
    add.s   $f4, $f0, $f10             
    slti    $at, t7, 0x0004            
    bne     $at, $zero, lbl_80AA2464   
    swc1    $f4, 0x0068(s0)            ## 00000068
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    mfc1    t1, $f6                    
    nop
    addiu   t2, t1, 0x0006             ## t2 = 00000006
    jal     func_80026D64              
    sh      t2, 0x0166(s0)             ## 00000166
    trunc.w.s $f8, $f0                   
    mfc1    t7, $f8                    
    nop
    addiu   t3, t7, 0x0006             ## t3 = 00000006
    beq     $zero, $zero, lbl_80AA24A8 
    sh      t3, 0x0168(s0)             ## 00000168
lbl_80AA2464:
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    mfc1    t2, $f10                   
    nop
    addiu   t4, t2, 0x0003             ## t4 = 00000003
    jal     func_80026D64              
    sh      t4, 0x0166(s0)             ## 00000166
    trunc.w.s $f4, $f0                   
    mfc1    t3, $f4                    
    nop
    addiu   t8, t3, 0x0003             ## t8 = 00000003
    sh      t8, 0x0168(s0)             ## 00000168
lbl_80AA24A8:
    lui     $at, 0x45C0                ## $at = 45C00000
    mtc1    $at, $f12                  ## $f12 = 6144.00
    jal     func_80026D90              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    t1, $f6                    
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t1, 0x0160(s0)             ## 00000160
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    c.lt.s  $f0, $f8                   
    addiu   t5, $zero, 0x0064          ## t5 = 00000064
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   t9, $zero, 0x0005          ## t9 = 00000005
    bc1f    lbl_80AA24F8               
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AA24FC 
    sh      t2, 0x0174(s0)             ## 00000174
lbl_80AA24F8:
    sh      t4, 0x0174(s0)             ## 00000174
lbl_80AA24FC:
    lw      t6, 0x0004(s0)             ## 00000004
    sh      t5, 0x0142(s0)             ## 00000142
    addiu   a1, $zero, 0x1811          ## a1 = 00001811
    and     t7, t6, $at                
    lui     $at, 0x0200                ## $at = 02000000
    sw      t7, 0x0004(s0)             ## 00000004
    or      t8, t7, $at                ## t8 = 02000000
    sw      t8, 0x0004(s0)             ## 00000004
    jal     func_80022FD0              
    sh      t9, 0x0186(s1)             ## 00000186
lbl_80AA2524:
    lw      t1, 0x0028(s1)             ## 00000028
lbl_80AA2528:
    lui     $at, 0x4230                ## $at = 42300000
    lw      t2, 0x0024(s1)             ## 00000024
    sw      t1, 0x003C(s1)             ## 0000003C
    lwc1    $f10, 0x003C(s1)           ## 0000003C
    mtc1    $at, $f4                   ## $f4 = 44.00
    sw      t2, 0x0038(s1)             ## 00000038
    lw      t2, 0x002C(s1)             ## 0000002C
    add.s   $f6, $f10, $f4             
    addiu   s0, s1, 0x0190             ## s0 = 00000190
    or      a1, s0, $zero              ## a1 = 00000190
    or      a0, s1, $zero              ## a0 = 00000000
    swc1    $f6, 0x003C(s1)            ## 0000003C
    jal     func_80050B00              
    sw      t2, 0x0040(s1)             ## 00000040
    lw      a0, 0x0104($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x0054($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    or      a2, s0, $zero              ## a2 = 00000190
    lw      a1, 0x0054($sp)            
    lw      a0, 0x0104($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a2, s0, $zero              ## a2 = 00000190
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f8                   ## $f8 = 500.00
    lwc1    $f10, 0x0090(s1)           ## 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80AA25C0               
    lh      v0, 0x0186(s1)             ## 00000186
    lw      t5, 0x0004(s1)             ## 00000004
    ori     t7, $zero, 0xFFFF          ## t7 = 0000FFFF
    sh      t7, 0x0146(s1)             ## 00000146
    ori     t6, t5, 0x0001             ## t6 = 00000001
    sw      t6, 0x0004(s1)             ## 00000004
    lh      v0, 0x0186(s1)             ## 00000186
lbl_80AA25C0:
    beq     v0, $zero, lbl_80AA36DC    
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_80AA25FC   
    lh      t2, 0x0188(s1)             ## 00000188
    lh      t3, 0x0188(s1)             ## 00000188
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    addiu   t8, t3, 0x00FF             ## t8 = 000000FF
    sh      t8, 0x0188(s1)             ## 00000188
    lh      t9, 0x0188(s1)             ## 00000188
    slti    $at, t9, 0x0100            
    bnel    $at, $zero, lbl_80AA2618   
    lh      t6, 0x0186(s1)             ## 00000186
    beq     $zero, $zero, lbl_80AA2614 
    sh      t1, 0x0188(s1)             ## 00000188
    lh      t2, 0x0188(s1)             ## 00000188
lbl_80AA25FC:
    addiu   t4, t2, 0xFFBF             ## t4 = FFFFFFBF
    sh      t4, 0x0188(s1)             ## 00000188
    lh      t5, 0x0188(s1)             ## 00000188
    bgezl   t5, lbl_80AA2618           
    lh      t6, 0x0186(s1)             ## 00000186
    sh      $zero, 0x0188(s1)          ## 00000188
lbl_80AA2614:
    lh      t6, 0x0186(s1)             ## 00000186
lbl_80AA2618:
    addiu   t7, t6, 0xFFFF             ## t7 = 00000000
    beq     $zero, $zero, lbl_80AA36DC 
    sh      t7, 0x0186(s1)             ## 00000186
var_80AA2624:
    jal     func_8002121C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f0                   ## $f0 = 30.00
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    addiu   t3, $zero, 0x0005          ## t3 = 00000005
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t3, 0x0014($sp)            
    lw      a0, 0x0104($sp)            
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0024(s1)            ## 00000024
    lui     $at, 0xC248                ## $at = C2480000
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    swc1    $f6, 0x00CC($sp)           
    lwc1    $f0, 0x0028(s1)            ## 00000028
    mtc1    $at, $f6                   ## $f6 = -50.00
    lui     $at, 0x42C8                ## $at = 42C80000
    swc1    $f0, 0x00C8($sp)           
    lwc1    $f2, 0x002C(s1)            ## 0000002C
    or      a1, s1, $zero              ## a1 = 00000000
    lui     a2, 0x4120                 ## a2 = 41200000
    swc1    $f2, 0x00C4($sp)           
    lwc1    $f8, 0x0084(s1)            ## 00000084
    lhu     s0, 0x0088(s1)             ## 00000088
    lui     a3, 0x4120                 ## a3 = 41200000
    swc1    $f8, 0x00C0($sp)           
    lwc1    $f10, 0x0080(s1)           ## 00000080
    sub.s   $f4, $f0, $f10             
    mtc1    $at, $f10                  ## $f10 = 100.00
    lui     $at, 0x4248                ## $at = 42480000
    mul.s   $f8, $f4, $f6              
    div.s   $f4, $f8, $f10             
    mtc1    $at, $f8                   ## $f8 = 50.00
    add.s   $f6, $f2, $f4              
    swc1    $f6, 0x002C(s1)            ## 0000002C
    sw      t8, 0x0014($sp)            
    lw      a0, 0x0104($sp)            
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    jal     func_80AA1BA0              
    or      a0, s1, $zero              ## a0 = 00000000
    lwc1    $f10, 0x00CC($sp)          
    swc1    $f10, 0x0024(s1)           ## 00000024
    lwc1    $f4, 0x00C8($sp)           
    swc1    $f4, 0x0028(s1)            ## 00000028
    lwc1    $f6, 0x00C4($sp)           
    sh      s0, 0x0088(s1)             ## 00000088
    swc1    $f6, 0x002C(s1)            ## 0000002C
    lwc1    $f8, 0x00C0($sp)           
    swc1    $f8, 0x0084(s1)            ## 00000084
    lhu     s0, 0x0088(s1)             ## 00000088
    lb      t9, 0x0164(s1)             ## 00000164
    andi    s0, s0, 0x0001             ## s0 = 00000000
    beq     t9, $zero, lbl_80AA2748    
    andi    s0, s0, 0x00FF             ## s0 = 00000000
    lh      v0, 0x015E(s1)             ## 0000015E
    lh      t1, 0x0158(s1)             ## 00000158
    addiu   t4, v0, 0xF800             ## t4 = FFFFF800
    addu    t2, t1, v0                 
    sh      t2, 0x0158(s1)             ## 00000158
    lh      t5, 0x0158(s1)             ## 00000158
    sh      t4, 0x015E(s1)             ## 0000015E
    bgtzl   t5, lbl_80AA2780           
    lh      t9, 0x015E(s1)             ## 0000015E
    beql    s0, $zero, lbl_80AA2780    
    lh      t9, 0x015E(s1)             ## 0000015E
    sh      $zero, 0x0158(s1)          ## 00000158
    beq     $zero, $zero, lbl_80AA277C 
    sh      $zero, 0x015E(s1)          ## 0000015E
lbl_80AA2748:
    lh      v0, 0x015E(s1)             ## 0000015E
    lh      t6, 0x0158(s1)             ## 00000158
    addiu   t3, v0, 0xF800             ## t3 = FFFFF800
    subu    t7, t6, v0                 
    sh      t7, 0x0158(s1)             ## 00000158
    lh      t8, 0x0158(s1)             ## 00000158
    sh      t3, 0x015E(s1)             ## 0000015E
    bltzl   t8, lbl_80AA2780           
    lh      t9, 0x015E(s1)             ## 0000015E
    beql    s0, $zero, lbl_80AA2780    
    lh      t9, 0x015E(s1)             ## 0000015E
    sh      $zero, 0x0158(s1)          ## 00000158
    sh      $zero, 0x015E(s1)          ## 0000015E
lbl_80AA277C:
    lh      t9, 0x015E(s1)             ## 0000015E
lbl_80AA2780:
    addiu   t1, $zero, 0xF400          ## t1 = FFFFF400
    slti    $at, t9, 0xF400            
    beql    $at, $zero, lbl_80AA2798   
    lb      t2, 0x0165(s1)             ## 00000165
    sh      t1, 0x015E(s1)             ## 0000015E
    lb      t2, 0x0165(s1)             ## 00000165
lbl_80AA2798:
    beql    t2, $zero, lbl_80AA27DC    
    lh      v0, 0x0162(s1)             ## 00000162
    lh      v0, 0x0162(s1)             ## 00000162
    lh      t4, 0x015C(s1)             ## 0000015C
    addiu   t6, v0, 0xF800             ## t6 = FFFFF800
    addu    t5, t4, v0                 
    sh      t5, 0x015C(s1)             ## 0000015C
    lh      t7, 0x015C(s1)             ## 0000015C
    sh      t6, 0x0162(s1)             ## 00000162
    bgtzl   t7, lbl_80AA2810           
    lh      t2, 0x0162(s1)             ## 00000162
    beql    s0, $zero, lbl_80AA2810    
    lh      t2, 0x0162(s1)             ## 00000162
    sh      $zero, 0x015C(s1)          ## 0000015C
    beq     $zero, $zero, lbl_80AA280C 
    sh      $zero, 0x0162(s1)          ## 00000162
    lh      v0, 0x0162(s1)             ## 00000162
lbl_80AA27DC:
    lh      t3, 0x015C(s1)             ## 0000015C
    addiu   t9, v0, 0xF800             ## t9 = FFFFF800
    subu    t8, t3, v0                 
    sh      t8, 0x015C(s1)             ## 0000015C
    lh      t1, 0x015C(s1)             ## 0000015C
    sh      t9, 0x0162(s1)             ## 00000162
    bltzl   t1, lbl_80AA2810           
    lh      t2, 0x0162(s1)             ## 00000162
    beql    s0, $zero, lbl_80AA2810    
    lh      t2, 0x0162(s1)             ## 00000162
    sh      $zero, 0x015C(s1)          ## 0000015C
    sh      $zero, 0x0162(s1)          ## 00000162
lbl_80AA280C:
    lh      t2, 0x0162(s1)             ## 00000162
lbl_80AA2810:
    addiu   t4, $zero, 0xF400          ## t4 = FFFFF400
    slti    $at, t2, 0xF400            
    beql    $at, $zero, lbl_80AA2828   
    lhu     v0, 0x0088(s1)             ## 00000088
    sh      t4, 0x0162(s1)             ## 00000162
    lhu     v0, 0x0088(s1)             ## 00000088
lbl_80AA2828:
    lui     $at, 0xBF00                ## $at = BF000000
    andi    t5, v0, 0x0008             ## t5 = 00000000
    beql    t5, $zero, lbl_80AA285C    
    andi    t6, v0, 0x0040             ## t6 = 00000000
    lwc1    $f10, 0x0068(s1)           ## 00000068
    mtc1    $at, $f4                   ## $f4 = -0.50
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x28B4          ## a1 = 000028B4
    mul.s   $f6, $f10, $f4             
    jal     func_80022FD0              
    swc1    $f6, 0x0068(s1)            ## 00000068
    lhu     v0, 0x0088(s1)             ## 00000088
    andi    t6, v0, 0x0040             ## t6 = 00000000
lbl_80AA285C:
    beq     t6, $zero, lbl_80AA290C    
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    sb      t7, 0x0144(s1)             ## 00000144
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2817          ## a1 = 00002817
    lwc1    $f8, 0x0028(s1)            ## 00000028
    lwc1    $f10, 0x0084(s1)           ## 00000084
    sh      $zero, 0x0168(s1)          ## 00000168
    lh      t3, 0x0168(s1)             ## 00000168
    add.s   $f4, $f8, $f10             
    addiu   s0, s1, 0x0024             ## s0 = 00000024
    sh      t3, 0x0166(s1)             ## 00000166
    or      a1, s0, $zero              ## a1 = 00000024
    swc1    $f4, 0x0028(s1)            ## 00000028
    sw      $zero, 0x0010($sp)         
    lbu     t8, 0x0148(s1)             ## 00000148
    lw      a0, 0x0104($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    sll     t9, t8,  2                 
    addu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addiu   t1, t9, 0x012C             ## t1 = 0000012C
    sw      t1, 0x0014($sp)            
    jal     func_8001CF94              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      a0, 0x0104($sp)            
    or      a1, s0, $zero              ## a1 = 00000024
    addiu   a2, $zero, 0x0096          ## a2 = 00000096
    addiu   a3, $zero, 0x028A          ## a3 = 0000028A
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    sw      t2, 0x0010($sp)            
    lw      a0, 0x0104($sp)            
    or      a1, s0, $zero              ## a1 = 00000024
    addiu   a2, $zero, 0x012C          ## a2 = 0000012C
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x0320          ## a3 = 00000320
    mtc1    $zero, $f6                 ## $f6 = 0.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    swc1    $f6, 0x0060(s1)            ## 00000060
    beq     $zero, $zero, lbl_80AA36DC 
    swc1    $f8, 0x006C(s1)            ## 0000006C
lbl_80AA290C:
    beql    s0, $zero, lbl_80AA2A88    
    lh      t8, 0x0174(s1)             ## 00000174
    lbu     v0, 0x016A(s1)             ## 0000016A
    lui     $at, %hi(var_80AA4AF0)     ## $at = 80AA0000
    bgtz    v0, lbl_80AA2960           
    addiu   t4, v0, 0x0001             ## t4 = 00000001
    sb      t4, 0x016A(s1)             ## 0000016A
    lwc1    $f4, %lo(var_80AA4AF0)($at) 
    lwc1    $f10, 0x0060(s1)           ## 00000060
    lui     $at, 0x4680                ## $at = 46800000
    mtc1    $at, $f12                  ## $f12 = 16384.00
    mul.s   $f6, $f10, $f4             
    jal     func_80026D90              
    swc1    $f6, 0x0060(s1)            ## 00000060
    trunc.w.s $f8, $f0                   
    lh      t5, 0x0032(s1)             ## 00000032
    mfc1    t8, $f8                    
    nop
    addu    t9, t5, t8                 
    beq     $zero, $zero, lbl_80AA296C 
    sh      t9, 0x0032(s1)             ## 00000032
lbl_80AA2960:
    mtc1    $zero, $f10                ## $f10 = 0.00
    nop
    swc1    $f10, 0x0060(s1)           ## 00000060
lbl_80AA296C:
    lui     $at, %hi(var_80AA4AF4)     ## $at = 80AA0000
    lwc1    $f6, %lo(var_80AA4AF4)($at) 
    lwc1    $f4, 0x0068(s1)            ## 00000068
    lh      t1, 0x0158(s1)             ## 00000158
    mul.s   $f8, $f4, $f6              
    bne     t1, $zero, lbl_80AA29EC    
    swc1    $f8, 0x0068(s1)            ## 00000068
    lh      v0, 0x0166(s1)             ## 00000166
    beq     v0, $zero, lbl_80AA29EC    
    sll     t2, v0,  9                 
    beq     v0, $zero, lbl_80AA29B4    
    sh      t2, 0x015E(s1)             ## 0000015E
    addiu   t4, v0, 0xFFFB             ## t4 = FFFFFFFB
    sh      t4, 0x0166(s1)             ## 00000166
    lh      t6, 0x0166(s1)             ## 00000166
    bgtz    t6, lbl_80AA29B4           
    nop
    sh      $zero, 0x0166(s1)          ## 00000166
lbl_80AA29B4:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AA29E8               
    sb      $zero, 0x0164(s1)          ## 00000164
    beq     $zero, $zero, lbl_80AA29E8 
    sb      t7, 0x0164(s1)             ## 00000164
    sb      $zero, 0x0164(s1)          ## 00000164
lbl_80AA29E8:
    sb      t3, 0x00FF($sp)            
lbl_80AA29EC:
    lh      t5, 0x015C(s1)             ## 0000015C
    bnel    t5, $zero, lbl_80AA2A60    
    lh      a1, 0x0174(s1)             ## 00000174
    lh      v0, 0x0168(s1)             ## 00000168
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    beq     v0, $zero, lbl_80AA2A5C    
    sll     t8, v0,  9                 
    sh      t8, 0x0162(s1)             ## 00000162
    beq     v0, $zero, lbl_80AA2A2C    
    sb      t9, 0x00FF($sp)            
    addiu   t1, v0, 0xFFFB             ## t1 = FFFFFFFB
    sh      t1, 0x0168(s1)             ## 00000168
    lh      t2, 0x0168(s1)             ## 00000168
    bgtz    t2, lbl_80AA2A2C           
    nop
    sh      $zero, 0x0168(s1)          ## 00000168
lbl_80AA2A2C:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80AA2A5C               
    sb      $zero, 0x0165(s1)          ## 00000165
    beq     $zero, $zero, lbl_80AA2A5C 
    sb      t4, 0x0165(s1)             ## 00000165
    sb      $zero, 0x0165(s1)          ## 00000165
lbl_80AA2A5C:
    lh      a1, 0x0174(s1)             ## 00000174
lbl_80AA2A60:
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    sll     a1, a1, 14                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064624              
    addiu   a3, $zero, 0x2000          ## a3 = 00002000
    beq     $zero, $zero, lbl_80AA2ABC 
    lbu     t2, 0x00FF($sp)            
    lh      t8, 0x0174(s1)             ## 00000174
lbl_80AA2A88:
    lh      t6, 0x00B6(s1)             ## 000000B6
    lh      t7, 0x0160(s1)             ## 00000160
    sll     t9, t8,  5                 
    subu    t9, t9, t8                 
    lh      t5, 0x00B4(s1)             ## 000000B4
    sll     t9, t9,  2                 
    addu    t9, t9, t8                 
    sll     t9, t9,  4                 
    addu    t3, t6, t7                 
    addu    t1, t5, t9                 
    sh      t3, 0x00B6(s1)             ## 000000B6
    sh      t1, 0x00B4(s1)             ## 000000B4
    lbu     t2, 0x00FF($sp)            
lbl_80AA2ABC:
    lui     t6, %hi(var_80AA41B4)      ## t6 = 80AA0000
    addiu   t6, t6, %lo(var_80AA41B4)  ## t6 = 80AA41B4
    beq     t2, $zero, lbl_80AA2C44    
    addiu   t4, $sp, 0x00AC            ## t4 = FFFFFFAC
    lw      t3, 0x0000(t6)             ## 80AA41B4
    lw      t7, 0x0004(t6)             ## 80AA41B8
    or      a0, s1, $zero              ## a0 = 00000000
    sw      t3, 0x0000(t4)             ## FFFFFFAC
    lw      t3, 0x0008(t6)             ## 80AA41BC
    addiu   a1, $zero, 0x28B4          ## a1 = 000028B4
    sw      t7, 0x0004(t4)             ## FFFFFFB0
    jal     func_80022FD0              
    sw      t3, 0x0008(t4)             ## FFFFFFB4
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, %hi(var_80AA4AF8)     ## $at = 80AA0000
    lwc1    $f8, %lo(var_80AA4AF8)($at) 
    mtc1    $zero, $f10                ## $f10 = 0.00
    swc1    $f6, 0x00A0($sp)           
    lui     $at, 0x4040                ## $at = 40400000
    swc1    $f8, 0x00A4($sp)           
    swc1    $f10, 0x00A8($sp)          
    lwc1    $f4, 0x0080(s1)            ## 00000080
    mtc1    $at, $f6                   ## $f6 = 3.00
    lui     $at, 0x4F80                ## $at = 4F800000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0098($sp)           
    lbu     t8, 0x0148(s1)             ## 00000148
    mtc1    t8, $f10                   ## $f10 = 0.00
    bgez    t8, lbl_80AA2B48           
    cvt.s.w $f4, $f10                  
    mtc1    $at, $f6                   ## $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80AA2B48:
    mul.s   $f8, $f4, $f0              
    or      s0, $zero, $zero           ## s0 = 00000000
    trunc.w.s $f10, $f8                  
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v1, v0, 0x0003             ## v1 = 00000003
    blezl   v1, lbl_80AA2C48           
    lh      v0, 0x0142(s1)             ## 00000142
    sw      v1, 0x0054($sp)            
    lbu     t9, 0x0148(s1)             ## 00000148
lbl_80AA2B78:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f0                   ## $f0 = 0.50
    mtc1    t9, $f6                    ## $f6 = 0.00
    lui     $at, 0x4F80                ## $at = 4F800000
    bgez    t9, lbl_80AA2B9C           
    cvt.s.w $f4, $f6                   
    mtc1    $at, $f8                   ## $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8              
lbl_80AA2B9C:
    mul.s   $f10, $f4, $f0             
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f6                   ## $f6 = 20.00
    jal     func_80026D90              
    add.s   $f12, $f10, $f6            
    lwc1    $f8, 0x0024(s1)            ## 00000024
    lui     $at, 0x4F80                ## $at = 4F800000
    add.s   $f4, $f0, $f8              
    swc1    $f4, 0x0094($sp)           
    lbu     t1, 0x0148(s1)             ## 00000148
    mtc1    t1, $f10                   ## $f10 = 0.00
    bgez    t1, lbl_80AA2BDC           
    cvt.s.w $f6, $f10                  
    mtc1    $at, $f8                   ## $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80AA2BDC:
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f8                   ## $f8 = 20.00
    mul.s   $f10, $f6, $f4             
    jal     func_80026D90              
    add.s   $f12, $f10, $f8            
    lwc1    $f6, 0x002C(s1)            ## 0000002C
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    addiu   t4, $zero, 0x0005          ## t4 = 00000005
    add.s   $f4, $f0, $f6              
    sw      t4, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x0104($sp)            
    swc1    $f4, 0x009C($sp)           
    addiu   a1, $sp, 0x0094            ## a1 = FFFFFF94
    addiu   a2, $sp, 0x00AC            ## a2 = FFFFFFAC
    jal     func_8001C1C4              
    addiu   a3, $sp, 0x00A0            ## a3 = FFFFFFA0
    lw      t6, 0x0054($sp)            
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slt     $at, s0, t6                
    bnel    $at, $zero, lbl_80AA2B78   
    lbu     t9, 0x0148(s1)             ## 00000148
lbl_80AA2C44:
    lh      v0, 0x0142(s1)             ## 00000142
lbl_80AA2C48:
    addiu   t3, $zero, 0x0003          ## t3 = 00000003
    bne     v0, $zero, lbl_80AA2C5C    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80AA2C64 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80AA2C5C:
    sh      t7, 0x0142(s1)             ## 00000142
    lh      v1, 0x0142(s1)             ## 00000142
lbl_80AA2C64:
    bne     v1, $zero, lbl_80AA2C70    
    nop
    sb      t3, 0x0144(s1)             ## 00000144
lbl_80AA2C70:
    lw      s0, 0x0118(s1)             ## 00000118
    ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
    lhu     t8, 0x0146(s0)             ## 00000147
    bnel    t8, $at, lbl_80AA2C90      
    addiu   a0, s1, 0x00BC             ## a0 = 000000BC
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a0, s1, 0x00BC             ## a0 = 000000BC
lbl_80AA2C90:
    lui     a1, 0x42C8                 ## a1 = 42C80000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x40A0                 ## a3 = 40A00000
    lbu     t5, 0x0144(s1)             ## 00000144
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    lw      t9, 0x00E8($sp)            
    bne     t5, $at, lbl_80AA3040      
    lw      t4, 0x0104($sp)            
    lwc1    $f0, 0x0068(t9)            ## 00000068
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   t1, s1, 0x00B4             ## t1 = 000000B4
    sw      t1, 0x0050($sp)            
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AA2DAC               
    lhu     t3, 0x0088(s1)             ## 00000088
    lwc1    $f8, 0x0028(t9)            ## 00000028
    lwc1    $f6, 0x0028(s1)            ## 00000028
    lui     $at, %hi(var_80AA4AFC)     ## $at = 80AA0000
    c.lt.s  $f8, $f6                   
    nop
    bc1fl   lbl_80AA2DAC               
    lhu     t3, 0x0088(s1)             ## 00000088
    lwc1    $f4, 0x008C(s1)            ## 0000008C
    lwc1    $f10, %lo(var_80AA4AFC)($at) 
    addiu   a0, s1, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    c.lt.s  $f4, $f10                  
    lui     a3, 0x3E4C                 ## a3 = 3E4C0000
    bc1fl   lbl_80AA2DAC               
    lhu     t3, 0x0088(s1)             ## 00000088
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             ## a3 = 3E4CCCCD
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
    lwc1    $f8, 0x0068(s1)            ## 00000068
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addiu   a0, s1, 0x0032             ## a0 = 00000032
    c.lt.s  $f0, $f8                   
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    bc1fl   lbl_80AA2D48               
    lh      a1, 0x008A(s1)             ## 0000008A
    swc1    $f0, 0x0068(s1)            ## 00000068
    lh      a1, 0x008A(s1)             ## 0000008A
lbl_80AA2D48:
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    blez    v0, lbl_80AA2D88           
    lui     $at, 0xC47A                ## $at = C47A0000
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f4                   ## $f4 = 1000.00
    lwc1    $f6, 0x0068(s1)            ## 00000068
    mul.s   $f10, $f6, $f4             
    trunc.w.s $f8, $f10                  
    mfc1    t4, $f8                    
    beq     $zero, $zero, lbl_80AA2DA8 
    sh      t4, 0x0160(s1)             ## 00000160
lbl_80AA2D88:
    lwc1    $f6, 0x0068(s1)            ## 00000068
    mtc1    $at, $f4                   ## $f4 = 1000.00
    nop
    mul.s   $f10, $f6, $f4             
    trunc.w.s $f8, $f10                  
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x0160(s1)             ## 00000160
lbl_80AA2DA8:
    lhu     t3, 0x0088(s1)             ## 00000088
lbl_80AA2DAC:
    andi    t8, t3, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80AA2DC4    
    nop
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    swc1    $f6, 0x0068(s1)            ## 00000068
lbl_80AA2DC4:
    jal     func_8002121C              
    or      a0, s1, $zero              ## a0 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lwc1    $f10, 0x0068(s1)           ## 00000068
    lui     $at, 0x4120                ## $at = 41200000
    lw      a0, 0x0104($sp)            
    c.eq.s  $f4, $f10                  
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    addiu   s0, s1, 0x0068             ## s0 = 00000068
    bc1tl   lbl_80AA2E68               
    lh      t7, 0x00B6(s1)             ## 000000B6
    mtc1    $at, $f0                   ## $f0 = 10.00
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f8                   ## $f8 = 50.00
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t5, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    lhu     t1, 0x0088(s1)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000068
    lui     a1, 0x3F80                 ## a1 = 3F800000
    andi    t9, t1, 0x0008             ## t9 = 00000000
    beq     t9, $zero, lbl_80AA2E5C    
    lui     a2, 0x3E19                 ## a2 = 3E190000
    lui     $at, 0xBF00                ## $at = BF000000
    mtc1    $at, $f4                   ## $f4 = -0.50
    lwc1    $f6, 0x0068(s1)            ## 00000068
    lh      t2, 0x0160(s1)             ## 00000160
    addiu   t4, $zero, 0xF830          ## t4 = FFFFF830
    mul.s   $f10, $f6, $f4             
    addiu   t6, $zero, 0x07D0          ## t6 = 000007D0
    blez    t2, lbl_80AA2E58           
    swc1    $f10, 0x0068(s1)           ## 00000068
    beq     $zero, $zero, lbl_80AA2E5C 
    sh      t4, 0x0160(s1)             ## 00000160
lbl_80AA2E58:
    sh      t6, 0x0160(s1)             ## 00000160
lbl_80AA2E5C:
    jal     func_800642F0              
    ori     a2, a2, 0x999A             ## a2 = 3E19999A
    lh      t7, 0x00B6(s1)             ## 000000B6
lbl_80AA2E68:
    lh      t3, 0x0160(s1)             ## 00000160
    addiu   a0, s1, 0x0160             ## a0 = 00000160
    or      a1, $zero, $zero           ## a1 = 00000000
    addu    t8, t7, t3                 
    sh      t8, 0x00B6(s1)             ## 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064624              
    addiu   a3, $zero, 0x003A          ## a3 = 0000003A
    lh      a1, 0x0174(s1)             ## 00000174
    lw      a0, 0x0050($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    sll     a1, a1, 14                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064624              
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    lbu     a0, 0x0140(s1)             ## 00000140
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f8                   ## $f8 = 500.00
    addiu   a0, s1, 0x0158             ## a0 = 00000158
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    mul.s   $f6, $f0, $f8              
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    trunc.w.s $f4, $f6                   
    mfc1    a1, $f4                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lbu     a0, 0x0140(s1)             ## 00000140
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f10                  ## $f10 = 500.00
    addiu   a0, s1, 0x015C             ## a0 = 0000015C
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    mul.s   $f8, $f0, $f10             
    addiu   a3, $zero, 0x1000          ## a3 = 00001000
    trunc.w.s $f6, $f8                   
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
    addiu   a0, s1, 0x0178             ## a0 = 00000178
    jal     func_800642F0              
    lui     a1, 0x3F00                 ## a1 = 3F000000
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
    addiu   a0, s1, 0x0180             ## a0 = 00000180
    jal     func_800642F0              
    lui     a1, 0x3F00                 ## a1 = 3F000000
    lwc1    $f2, 0x0068(s1)            ## 00000068
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    abs.s   $f2, $f2                   
    lui     $at, 0x3F00                ## $at = 3F000000
    c.lt.s  $f4, $f2                   
    lw      a0, 0x0104($sp)            
    addiu   a1, s1, 0x0024             ## a1 = 00000024
    bc1fl   lbl_80AA2FC4               
    mtc1    $at, $f10                  ## $f10 = 0.50
    beq     $zero, $zero, lbl_80AA2FE0 
    or      v0, $zero, $zero           ## v0 = 00000000
    mtc1    $at, $f10                  ## $f10 = 0.50
lbl_80AA2FC4:
    addiu   v0, $zero, 0x0007          ## v0 = 00000007
    c.lt.s  $f10, $f2                  
    nop
    bc1f    lbl_80AA2FE0               
    nop
    beq     $zero, $zero, lbl_80AA2FE0 
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
lbl_80AA2FE0:
    lbu     t9, 0x0140(s1)             ## 00000140
    and     t2, t9, v0                 
    bnel    t2, $zero, lbl_80AA31E0    
    lh      t8, 0x0166(s1)             ## 00000166
    lbu     v0, 0x0148(s1)             ## 00000148
    slti    $at, v0, 0x0003            
    beql    $at, $zero, lbl_80AA300C   
    slti    $at, v0, 0x0006            
    beq     $zero, $zero, lbl_80AA301C 
    or      v0, $zero, $zero           ## v0 = 00000000
    slti    $at, v0, 0x0006            
lbl_80AA300C:
    beq     $at, $zero, lbl_80AA301C   
    addiu   v0, $zero, 0x00C8          ## v0 = 000000C8
    beq     $zero, $zero, lbl_80AA301C 
    addiu   v0, $zero, 0x0064          ## v0 = 00000064
lbl_80AA301C:
    addiu   a3, v0, 0x01F4             ## a3 = 00000258
    sll     a3, a3, 16                 
    sll     a2, v0, 16                 
    sra     a2, a2, 16                 
    sra     a3, a3, 16                 
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_80AA31E0 
    lh      t8, 0x0166(s1)             ## 00000166
lbl_80AA3040:
    lbu     t6, 0x1C26(t4)             ## 00001C26
    lui     $at, %hi(var_80AA4B00)     ## $at = 80AA0000
    beql    t6, $zero, lbl_80AA31E0    
    lh      t8, 0x0166(s1)             ## 00000166
    lwc1    $f2, 0x008C(s1)            ## 0000008C
    lwc1    $f8, %lo(var_80AA4B00)($at) 
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_80AA31E0               
    lh      t8, 0x0166(s1)             ## 00000166
    sqrt.s  $f0, $f2                   
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    lui     $at, %hi(var_80AA4B04)     ## $at = 80AA0000
    lwc1    $f10, %lo(var_80AA4B04)($at) 
    lui     $at, 0xBF80                ## $at = BF800000
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sub.s   $f4, $f6, $f0              
    mtc1    $at, $f6                   ## $f6 = -1.00
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f12                  ## $f12 = 65536.00
    mul.s   $f8, $f4, $f10             
    swc1    $f8, 0x0088($sp)           
    sb      t7, 0x0144(s1)             ## 00000144
    jal     func_80026D90              
    swc1    $f6, 0x006C(s1)            ## 0000006C
    trunc.w.s $f4, $f0                   
    lbu     t5, 0x0148(s1)             ## 00000148
    mfc1    t8, $f4                    
    slti    $at, t5, 0x0004            
    bne     $at, $zero, lbl_80AA3128   
    sh      t8, 0x0032(s1)             ## 00000032
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    mfc1    t4, $f10                   
    nop
    addiu   t6, t4, 0x0006             ## t6 = 00000006
    jal     func_80026D64              
    sh      t6, 0x0166(s1)             ## 00000166
    trunc.w.s $f8, $f0                   
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f6                   ## $f6 = 2.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mfc1    t5, $f8                    
    mtc1    $at, $f12                  ## $f12 = 1.00
    addiu   t1, t5, 0x0006             ## t1 = 00000006
    sh      t1, 0x0168(s1)             ## 00000168
    lwc1    $f4, 0x0088($sp)           
    add.s   $f10, $f6, $f4             
    jal     func_80026D64              
    swc1    $f10, 0x0060(s1)           ## 00000060
    beq     $zero, $zero, lbl_80AA318C 
    swc1    $f0, 0x0068(s1)            ## 00000068
lbl_80AA3128:
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    mfc1    t6, $f8                    
    nop
    addiu   t7, t6, 0x0003             ## t7 = 00000003
    jal     func_80026D64              
    sh      t7, 0x0166(s1)             ## 00000166
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f4                   ## $f4 = 3.00
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mfc1    t1, $f6                    
    mtc1    $at, $f12                  ## $f12 = 1.50
    addiu   t9, t1, 0x0003             ## t9 = 00000003
    sh      t9, 0x0168(s1)             ## 00000168
    lwc1    $f10, 0x0088($sp)          
    add.s   $f8, $f4, $f10             
    jal     func_80026D64              
    swc1    $f8, 0x0060(s1)            ## 00000060
    swc1    $f0, 0x0068(s1)            ## 00000068
lbl_80AA318C:
    lui     $at, 0x45C0                ## $at = 45C00000
    mtc1    $at, $f12                  ## $f12 = 6144.00
    jal     func_80026D90              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    t4, $f6                    
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t4, 0x0160(s1)             ## 00000160
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
    c.lt.s  $f0, $f4                   
    addiu   t3, $zero, 0x0046          ## t3 = 00000046
    bc1fl   lbl_80AA31D8               
    sh      t7, 0x0174(s1)             ## 00000174
    beq     $zero, $zero, lbl_80AA31D8 
    sh      t6, 0x0174(s1)             ## 00000174
    sh      t7, 0x0174(s1)             ## 00000174
lbl_80AA31D8:
    sh      t3, 0x0142(s1)             ## 00000142
    lh      t8, 0x0166(s1)             ## 00000166
lbl_80AA31E0:
    lw      t5, 0x0104($sp)            
    bnel    t8, $zero, lbl_80AA33E8    
    lbu     v1, 0x018E(s1)             ## 0000018E
    lw      s0, 0x1C4C(t5)             ## 00001C4C
    lui     $at, 0x42C8                ## $at = 42C80000
    beq     s0, $zero, lbl_80AA33E4    
    nop
    mtc1    $at, $f18                  ## $f18 = 100.00
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lh      t1, 0x001C(s0)             ## 00000084
lbl_80AA3208:
    beql    t0, t1, lbl_80AA321C       
    lwc1    $f10, 0x0024(s1)           ## 00000024
    beq     $zero, $zero, lbl_80AA33DC 
    lw      s0, 0x0124(s0)             ## 0000018C
    lwc1    $f10, 0x0024(s1)           ## 00000024
lbl_80AA321C:
    lwc1    $f8, 0x0024(s0)            ## 0000008C
    lwc1    $f6, 0x0028(s1)            ## 00000028
    lwc1    $f4, 0x0028(s0)            ## 00000090
    sub.s   $f12, $f10, $f8            
    lwc1    $f8, 0x002C(s0)            ## 00000094
    lwc1    $f10, 0x002C(s1)           ## 0000002C
    sub.s   $f2, $f6, $f4              
    mul.s   $f6, $f12, $f12            
    lui     $at, %hi(var_80AA4B08)     ## $at = 80AA0000
    sub.s   $f14, $f10, $f8            
    mul.s   $f4, $f2, $f2              
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    mul.s   $f8, $f14, $f14            
    add.s   $f10, $f6, $f4             
    add.s   $f16, $f10, $f8            
    sqrt.s  $f16, $f16                 
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80AA33DC               
    lw      s0, 0x0124(s0)             ## 0000018C
    sub.s   $f6, $f18, $f16            
    lwc1    $f4, %lo(var_80AA4B08)($at) 
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f8                   ## $f8 = -1.00
    mul.s   $f10, $f6, $f4             
    swc1    $f10, 0x0074($sp)          
    sb      t9, 0x0144(s1)             ## 00000144
    jal     func_800CD76C              
    swc1    $f8, 0x006C(s1)            ## 0000006C
    lui     $at, %hi(var_80AA4B0C)     ## $at = 80AA0000
    lwc1    $f6, %lo(var_80AA4B0C)($at) 
    lbu     t6, 0x0148(s1)             ## 00000148
    mul.s   $f4, $f0, $f6              
    slti    $at, t6, 0x0004            
    trunc.w.s $f10, $f4                  
    mfc1    t4, $f10                   
    bne     $at, $zero, lbl_80AA331C   
    sh      t4, 0x0032(s1)             ## 00000032
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    mfc1    t5, $f8                    
    nop
    addiu   t1, t5, 0x0006             ## t1 = 00000006
    jal     func_80026D64              
    sh      t1, 0x0166(s1)             ## 00000166
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4020                ## $at = 40200000
    mtc1    $at, $f4                   ## $f4 = 2.50
    lwc1    $f2, 0x0074($sp)           
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f8                   ## $f8 = 3.00
    mfc1    t6, $f6                    
    add.s   $f10, $f4, $f2             
    addiu   t7, t6, 0x0006             ## t7 = 00000006
    add.s   $f6, $f8, $f2              
    sh      t7, 0x0168(s1)             ## 00000168
    swc1    $f10, 0x0060(s1)           ## 00000060
    beq     $zero, $zero, lbl_80AA3380 
    swc1    $f6, 0x0068(s1)            ## 00000068
lbl_80AA331C:
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f12                  ## $f12 = 7.00
    mfc1    t1, $f4                    
    nop
    addiu   t9, t1, 0x0003             ## t9 = 00000003
    jal     func_80026D64              
    sh      t9, 0x0166(s1)             ## 00000166
    lui     $at, 0x40A0                ## $at = 40A00000
    trunc.w.s $f10, $f0                  
    mtc1    $at, $f8                   ## $f8 = 5.00
    lwc1    $f2, 0x0074($sp)           
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f4                   ## $f4 = 4.00
    mfc1    t7, $f10                   
    add.s   $f6, $f8, $f2              
    addiu   t3, t7, 0x0003             ## t3 = 00000003
    add.s   $f10, $f4, $f2             
    sh      t3, 0x0168(s1)             ## 00000168
    swc1    $f6, 0x0060(s1)            ## 00000060
    swc1    $f10, 0x0068(s1)           ## 00000068
lbl_80AA3380:
    lui     $at, 0x45C0                ## $at = 45C00000
    mtc1    $at, $f12                  ## $f12 = 6144.00
    jal     func_80026D90              
    nop
    trunc.w.s $f8, $f0                   
    mfc1    t5, $f8                    
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t5, 0x0160(s1)             ## 00000160
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f18                  ## $f18 = 100.00
    c.lt.s  $f0, $f6                   
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
    addiu   t2, $zero, 0x0046          ## t2 = 00000046
    bc1f    lbl_80AA33D0               
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    beq     $zero, $zero, lbl_80AA33D4 
    sh      t1, 0x0174(s1)             ## 00000174
lbl_80AA33D0:
    sh      t9, 0x0174(s1)             ## 00000174
lbl_80AA33D4:
    sh      t2, 0x0142(s1)             ## 00000142
    lw      s0, 0x0124(s0)             ## 0000018C
lbl_80AA33DC:
    bnel    s0, $zero, lbl_80AA3208    
    lh      t1, 0x001C(s0)             ## 00000084
lbl_80AA33E4:
    lbu     v1, 0x018E(s1)             ## 0000018E
lbl_80AA33E8:
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lw      t4, 0x0104($sp)            
    beq     v1, $zero, lbl_80AA3408    
    lui     t6, 0x0001                 ## t6 = 00010000
    beq     v1, t0, lbl_80AA3424       
    lw      v0, 0x0104($sp)            
    beq     $zero, $zero, lbl_80AA36E0 
    lw      $ra, 0x003C($sp)           
lbl_80AA3408:
    addu    t6, t6, t4                 
    lhu     t6, 0x04C6(t6)             ## 000104C6
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    bnel    t0, t6, lbl_80AA36E0       
    lw      $ra, 0x003C($sp)           
    beq     $zero, $zero, lbl_80AA36DC 
    sb      t7, 0x018E(s1)             ## 0000018E
lbl_80AA3424:
    lui     $at, 0x0001                ## $at = 00010000
    addu    v0, v0, $at                
    lhu     t3, 0x04C6(v0)             ## 000004C6
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bnel    t3, $at, lbl_80AA36E0      
    lw      $ra, 0x003C($sp)           
    lhu     t8, 0x04CA(v0)             ## 000004CA
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    lui     a3, 0x8010                 ## a3 = 80100000
    bne     t8, $at, lbl_80AA36DC      
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    lui     t1, 0x8010                 ## t1 = 80100000
    sb      t5, 0x0144(s1)             ## 00000144
    sh      t0, 0x0166(s1)             ## 00000166
    addiu   t1, t1, 0x43A8             ## t1 = 801043A8
    lui     a1, 0x8010                 ## a1 = 80100000
    addiu   a1, a1, 0x4394             ## a1 = 80104394
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    beq     $zero, $zero, lbl_80AA36E0 
    lw      $ra, 0x003C($sp)           
var_80AA3488:
    lw      s0, 0x0118(s1)             ## 00000118
    ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
    lhu     t9, 0x0146(s0)             ## 000001AE
    bnel    t9, $at, lbl_80AA34A8      
    lh      t2, 0x00B6(s0)             ## 0000011E
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    lh      t2, 0x00B6(s0)             ## 0000011E
lbl_80AA34A8:
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f8                   ## $f8 = 32768.00
    mtc1    t2, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80AA4B10)     ## $at = 80AA0000
    or      a1, $zero, $zero           ## a1 = 00000000
    cvt.s.w $f10, $f4                  
    lwc1    $f4, %lo(var_80AA4B10)($at) 
    div.s   $f6, $f10, $f8             
    mul.s   $f12, $f6, $f4             
    jal     func_800AAB94              
    nop
    lbu     t4, 0x0185(s1)             ## 00000185
    lui     t7, %hi(var_80AA3FC4)      ## t7 = 80AA0000
    addiu   t7, t7, %lo(var_80AA3FC4)  ## t7 = 80AA3FC4
    sll     t6, t4,  2                 
    subu    t6, t6, t4                 
    sll     t6, t6,  2                 
    addu    a0, t6, t7                 
    jal     func_800AB958              
    addiu   a1, $sp, 0x00DC            ## a1 = FFFFFFDC
    lwc1    $f10, 0x0024(s0)           ## 0000008C
    lwc1    $f8, 0x00DC($sp)           
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, s1, 0x0024             ## a0 = 00000024
    add.s   $f6, $f10, $f8             
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4040                 ## a3 = 40400000
    swc1    $f4, 0x0010($sp)           
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    swc1    $f0, 0x0070($sp)           
    lwc1    $f10, 0x0028(s0)           ## 00000090
    lwc1    $f8, 0x00E0($sp)           
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, s1, 0x0028             ## a0 = 00000028
    add.s   $f6, $f10, $f8             
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4040                 ## a3 = 40400000
    swc1    $f4, 0x0010($sp)           
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    swc1    $f0, 0x006C($sp)           
    lwc1    $f10, 0x002C(s0)           ## 00000094
    lwc1    $f8, 0x00E4($sp)           
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, s1, 0x002C             ## a0 = 0000002C
    add.s   $f6, $f10, $f8             
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4040                 ## a3 = 40400000
    swc1    $f4, 0x0010($sp)           
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    swc1    $f0, 0x0068($sp)           
    lh      a1, 0x00B4(s0)             ## 0000011C
    sw      $zero, 0x0010($sp)         
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0200          ## a3 = 00000200
    sh      v0, 0x0066($sp)            
    lh      a1, 0x00B6(s0)             ## 0000011E
    sw      $zero, 0x0010($sp)         
    addiu   a0, s1, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0200          ## a3 = 00000200
    sh      v0, 0x0064($sp)            
    lh      a1, 0x00B8(s0)             ## 00000120
    sw      $zero, 0x0010($sp)         
    addiu   a0, s1, 0x00B8             ## a0 = 000000B8
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0200          ## a3 = 00000200
    sh      v0, 0x0062($sp)            
    addiu   a0, s1, 0x0158             ## a0 = 00000158
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064624              
    addiu   a3, $zero, 0x0200          ## a3 = 00000200
    addiu   a0, s1, 0x015C             ## a0 = 0000015C
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064624              
    addiu   a3, $zero, 0x0200          ## a3 = 00000200
    lui     a2, 0x3D4C                 ## a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
    addiu   a0, s1, 0x0178             ## a0 = 00000178
    jal     func_800642F0              
    lui     a1, 0x3F80                 ## a1 = 3F800000
    lui     a2, 0x3D4C                 ## a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
    addiu   a0, s1, 0x0180             ## a0 = 00000180
    jal     func_800642F0              
    lui     a1, 0x3F80                 ## a1 = 3F800000
    addiu   a0, s1, 0x00BC             ## a0 = 000000BC
    lui     a1, 0x3F80                 ## a1 = 3F800000
    jal     func_800642F0              
    lui     a2, 0x4000                 ## a2 = 40000000
    lwc1    $f10, 0x0070($sp)          
    lwc1    $f8, 0x006C($sp)           
    lwc1    $f4, 0x0068($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    add.s   $f6, $f10, $f8             
    lh      t3, 0x0066($sp)            
    lh      t8, 0x0064($sp)            
    lh      t1, 0x0062($sp)            
    add.s   $f10, $f6, $f4             
    addu    t5, t3, t8                 
    c.eq.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AA36E0               
    lw      $ra, 0x003C($sp)           
    lh      t2, 0x0158(s1)             ## 00000158
    lh      t6, 0x015C(s1)             ## 0000015C
    addu    t9, t5, t1                 
    addu    t4, t9, t2                 
    addu    t7, t4, t6                 
    bnel    t7, $zero, lbl_80AA36E0    
    lw      $ra, 0x003C($sp)           
    lwc1    $f8, 0x0178(s1)            ## 00000178
    c.eq.s  $f0, $f8                   
    nop
    bc1fl   lbl_80AA36E0               
    lw      $ra, 0x003C($sp)           
    lwc1    $f6, 0x0180(s1)            ## 00000180
    c.eq.s  $f0, $f6                   
    nop
    bc1fl   lbl_80AA36E0               
    lw      $ra, 0x003C($sp)           
    lhu     t3, 0x0146(s0)             ## 000001AE
    lhu     t8, 0x0146(s1)             ## 00000146
    lw      t1, 0x0004(s0)             ## 0000006C
    or      a0, s1, $zero              ## a0 = 00000000
    or      t5, t3, t8                 ## t5 = 00000000
    ori     t9, t1, 0x0001             ## t9 = 00000001
    sh      t5, 0x0146(s0)             ## 000001AE
    jal     func_80020EB4              
    sw      t9, 0x0004(s0)             ## 0000006C
lbl_80AA36DC:
    lw      $ra, 0x003C($sp)           
lbl_80AA36E0:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0100           ## $sp = 00000000


func_80AA36F0:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s3, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    lw      a0, 0x0000(a1)             ## 00000000
    lw      s3, 0x02C4(a0)             ## 000002C4
    addiu   s3, s3, 0xFC00             ## s3 = FFFFFC00
    sw      s3, 0x02C4(a0)             ## 000002C4
    lw      a0, 0x0000(a1)             ## 00000000
    sw      a1, 0x008C($sp)            
    jal     func_8007E298              
    or      s1, a0, $zero              ## s1 = 00000000
    lw      t6, 0x008C($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t6)             ## 00000000
    lui     s2, 0xDE00                 ## s2 = DE000000
    lw      a1, 0x02C0(s1)             ## 000002C0
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x0C30             ## t8 = 06000C30
    addiu   t7, a1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s1)             ## 000002C0
    sw      t8, 0x0004(a1)             ## 00000004
    sw      s2, 0x0000(a1)             ## 00000000
    lbu     t9, 0x0144(s0)             ## 00000144
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     a2, 0xC2C8                 ## a2 = C2C80000
    beql    t9, $zero, lbl_80AA39BC    
    mtc1    $zero, $f12                ## $f12 = 0.00
    lwc1    $f12, 0x0024(s0)           ## 00000024
    lwc1    $f14, 0x0028(s0)           ## 00000028
    jal     func_800AA7F4              
    lw      a2, 0x002C(s0)             ## 0000002C
    lwc1    $f12, 0x0050(s0)           ## 00000050
    lwc1    $f14, 0x0054(s0)           ## 00000054
    lw      a2, 0x0058(s0)             ## 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lwc1    $f12, 0x0178(s0)           ## 00000178
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lwc1    $f12, 0x0180(s0)           ## 00000180
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    mtc1    $zero, $f12                ## $f12 = 0.00
    lwc1    $f14, 0x00BC(s0)           ## 000000BC
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    nop
    lh      t0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f8                   ## $f8 = 32768.00
    mtc1    t0, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80AA4B14)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B14)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f18           
    jal     func_800AAB94              
    nop
    lh      t1, 0x00B4(s0)             ## 000000B4
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f8                   ## $f8 = 32768.00
    mtc1    t1, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80AA4B18)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B18)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f18           
    jal     func_800AA9E0              
    nop
    jal     func_800636C4              ## sins?
    lh      a0, 0x0158(s0)             ## 00000158
    lwc1    $f4, 0x0170(s0)            ## 00000170
    lh      a0, 0x015C(s0)             ## 0000015C
    mul.s   $f0, $f0, $f4              
    abs.s   $f2, $f0                   
    jal     func_800636C4              ## sins?
    swc1    $f2, 0x0080($sp)           
    lwc1    $f6, 0x016C(s0)            ## 0000016C
    lwc1    $f2, 0x0080($sp)           
    mul.s   $f0, $f0, $f6              
    abs.s   $f0, $f0                   
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80AA3868               
    lh      t2, 0x0174(s0)             ## 00000174
    mov.s   $f2, $f0                   
    lh      t2, 0x0174(s0)             ## 00000174
lbl_80AA3868:
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mtc1    t2, $f8                    ## $f8 = 0.00
    mov.s   $f14, $f12                 
    cvt.s.w $f10, $f8                  
    neg.s   $f18, $f10                 
    mul.s   $f2, $f2, $f18             
    mfc1    a2, $f2                    
    jal     func_800AA7F4              
    nop
    lh      t3, 0x0158(s0)             ## 00000158
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f8                   ## $f8 = 32768.00
    mtc1    t3, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80AA4B1C)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B1C)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f18           
    jal     func_800AA9E0              
    nop
    lh      t4, 0x015C(s0)             ## 0000015C
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f8                   ## $f8 = 32768.00
    mtc1    t4, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_80AA4B20)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B20)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f18           
    jal     func_800AAB94              
    nop
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    lwc1    $f4, 0x0154(s0)            ## 00000154
    lwc1    $f12, 0x014C(s0)           ## 0000014C
    lwc1    $f14, 0x0150(s0)           ## 00000150
    sub.s   $f8, $f4, $f6              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    lw      a1, 0x02C0(s1)             ## 000002C0
    lui     t6, 0xDA38                 ## t6 = DA380000
    ori     t6, t6, 0x0003             ## t6 = DA380003
    addiu   t5, a1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(s1)             ## 000002C0
    sw      t6, 0x0000(a1)             ## 00000000
    lw      t7, 0x008C($sp)            
    lw      a0, 0x0000(t7)             ## 00000000
    jal     func_800AB900              
    sw      a1, 0x0064($sp)            
    lw      a2, 0x0064($sp)            
    or      v1, $zero, $zero           ## v1 = 00000000
    lui     a0, %hi(var_80AA3FAC)      ## a0 = 80AA0000
    sw      v0, 0x0004(a2)             ## 00000004
    lui     a2, %hi(var_80AA41C0)      ## a2 = 80AA0000
    addiu   a2, a2, %lo(var_80AA41C0)  ## a2 = 80AA41C0
    addiu   a0, a0, %lo(var_80AA3FAC)  ## a0 = 80AA3FAC
    sll     t8, v1,  1                 
lbl_80AA3960:
    addu    t9, a0, t8                 
    lhu     t0, 0x0000(t9)             ## 00000000
    lhu     t1, 0x0146(s0)             ## 00000146
    and     t2, t0, t1                 
    beql    t2, $zero, lbl_80AA399C    
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    lw      a1, 0x02C0(s1)             ## 000002C0
    sll     t4, v1,  2                 
    addu    t5, a2, t4                 
    addiu   t3, a1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s1)             ## 000002C0
    sw      s2, 0x0000(a1)             ## 00000000
    lw      t6, 0x0000(t5)             ## 00000000
    sw      t6, 0x0004(a1)             ## 00000004
    addiu   v1, v1, 0x0001             ## v1 = 00000002
lbl_80AA399C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x000B            
    bnel    $at, $zero, lbl_80AA3960   
    sll     t8, v1,  1                 
    beq     $zero, $zero, lbl_80AA3BB8 
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $zero, $f12                ## $f12 = 0.00
lbl_80AA39BC:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    lw      a1, 0x02C0(s1)             ## 000002C0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, a1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s1)             ## 000002C0
    sw      t8, 0x0000(a1)             ## 00000000
    lw      t9, 0x008C($sp)            
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_800AB900              
    sw      a1, 0x005C($sp)            
    lw      v1, 0x005C($sp)            
    lui     a2, %hi(var_80AA41C0)      ## a2 = 80AA0000
    addiu   a2, a2, %lo(var_80AA41C0)  ## a2 = 80AA41C0
    sw      v0, 0x0004(v1)             ## 00000004
    lhu     t0, 0x0146(s0)             ## 00000146
    ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
    or      v1, $zero, $zero           ## v1 = 00000000
    bne     t0, $at, lbl_80AA3A38      
    lui     a0, %hi(var_80AA3FAC)      ## a0 = 80AA0000
    lw      a1, 0x02C0(s1)             ## 000002C0
    lui     t2, 0x0404                 ## t2 = 04040000
    addiu   t2, t2, 0xD560             ## t2 = 0403D560
    addiu   t1, a1, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(s1)             ## 000002C0
    sw      t2, 0x0004(a1)             ## 00000004
    sw      s2, 0x0000(a1)             ## 00000000
    beq     $zero, $zero, lbl_80AA3A94 
    lh      t2, 0x0188(s0)             ## 00000188
lbl_80AA3A38:
    addiu   a0, a0, %lo(var_80AA3FAC)  ## a0 = 80AA3FAC
    sll     t3, v1,  1                 
lbl_80AA3A40:
    addu    t4, a0, t3                 
    lhu     t5, 0x0000(t4)             ## 00000000
    lhu     t6, 0x0146(s0)             ## 00000146
    and     t7, t5, t6                 
    beql    t7, $zero, lbl_80AA3A7C    
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    lw      a1, 0x02C0(s1)             ## 000002C0
    sll     t9, v1,  2                 
    addu    t0, a2, t9                 
    addiu   t8, a1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s1)             ## 000002C0
    sw      s2, 0x0000(a1)             ## 00000000
    lw      t1, 0x0000(t0)             ## 00000000
    sw      t1, 0x0004(a1)             ## 00000004
    addiu   v1, v1, 0x0001             ## v1 = 00000002
lbl_80AA3A7C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x000B            
    bnel    $at, $zero, lbl_80AA3A40   
    sll     t3, v1,  1                 
    lh      t2, 0x0188(s0)             ## 00000188
lbl_80AA3A94:
    lui     a2, 0x4348                 ## a2 = 43480000
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    beql    t2, $zero, lbl_80AA3BB8    
    lui     $at, 0x43C8                ## $at = 43C80000
    lbu     t3, 0x0184(s0)             ## 00000184
    bne     t3, $zero, lbl_80AA3ABC    
    lui     $at, 0xC496                ## $at = C4960000
    mtc1    $at, $f0                   ## $f0 = -1200.00
    beq     $zero, $zero, lbl_80AA3AC4 
    nop
lbl_80AA3ABC:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    nop
lbl_80AA3AC4:
    lui     $at, %hi(var_80AA4B24)     ## $at = 80AA0000
    lwc1    $f10, %lo(var_80AA4B24)($at) 
    mtc1    $zero, $f12                ## $f12 = 0.00
    jal     func_800AA7F4              
    add.s   $f14, $f10, $f0            
    lbu     t4, 0x0184(s0)             ## 00000184
    lui     $at, %hi(var_80AA49EC)     ## $at = 80AA0000
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    sll     t5, t4,  2                 
    addu    $at, $at, t5               
    jal     func_800AAD4C              
    lwc1    $f12, %lo(var_80AA49EC)($at) 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f14                  ## $f14 = 10.00
    mtc1    $zero, $f12                ## $f12 = 0.00
    lui     a2, 0x4000                 ## a2 = 40000000
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xE700                 ## t7 = E7000000
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(v1)          ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lh      t0, 0x0188(s0)             ## 00000188
    andi    t1, t0, 0x00FF             ## t1 = 00000000
    or      t2, t1, $at                ## t2 = FFFFFF00
    sw      t2, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t4, 0xFB00                 ## t4 = FB000000
    addiu   t5, $zero, 0x9600          ## t5 = FFFF9600
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s1)             ## 000002D0
    sw      t5, 0x0004(v1)             ## 00000004
    sw      t4, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    lw      t8, 0x008C($sp)            
    lw      a0, 0x0000(t8)             ## 00000008
    jal     func_800AB900              
    sw      v1, 0x0040($sp)            
    lw      a2, 0x0040($sp)            
    sw      v0, 0x0004(a2)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t0, 0x0600                 ## t0 = 06000000
    addiu   t0, t0, 0x1630             ## t0 = 06001630
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s1)             ## 000002D0
    sw      t0, 0x0004(v1)             ## 00000004
    sw      s2, 0x0000(v1)             ## 00000000
    lui     $at, 0x43C8                ## $at = 43C80000
lbl_80AA3BB8:
    mtc1    $at, $f12                  ## $f12 = 400.00
    lwc1    $f2, 0x00EC(s0)            ## 000000EC
    c.le.s  $f2, $f12                  
    nop
    bc1fl   lbl_80AA3F3C               
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f16                ## $f16 = 0.00
    lui     $at, %hi(var_80AA4B28)     ## $at = 80AA0000
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_80AA3F3C               
    lw      $ra, 0x0024($sp)           
    lwc1    $f18, %lo(var_80AA4B28)($at) 
    lwc1    $f4, 0x0080(s0)            ## 00000080
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80AA3F3C               
    lw      $ra, 0x0024($sp)           
    lh      t1, 0x0166(s0)             ## 00000166
    lui     a0, 0x8012                 ## a0 = 80120000
    addiu   a0, a0, 0xA5D0             ## a0 = 8011A5D0
    bne     t1, $zero, lbl_80AA3C20    
    nop
    lh      t2, 0x0168(s0)             ## 00000168
    beql    t2, $zero, lbl_80AA3F3C    
    lw      $ra, 0x0024($sp)           
lbl_80AA3C20:
    lhu     v0, 0x000C(a0)             ## 8011A5DC
    ori     $at, $zero, 0x8000         ## $at = 00008000
    slt     $at, v0, $at               
    bne     $at, $zero, lbl_80AA3C40   
    or      v1, v0, $zero              ## v1 = 00000000
    ori     t3, $zero, 0xFFFF          ## t3 = 0000FFFF
    subu    v0, t3, v1                 
    andi    v0, v0, 0xFFFF             ## v0 = 00000000
lbl_80AA3C40:
    mtc1    v0, $f6                    ## $f6 = 0.00
    bgez    v0, lbl_80AA3C5C           
    cvt.s.w $f8, $f6                   
    lui     $at, 0x4F80                ## $at = 4F800000
    mtc1    $at, $f10                  ## $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80AA3C5C:
    lui     $at, %hi(var_80AA4B2C)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B2C)($at) 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lui     $at, 0x4396                ## $at = 43960000
    mtc1    $at, $f10                  ## $f10 = 300.00
    mul.s   $f4, $f8, $f18             
    c.lt.s  $f10, $f2                  
    nop
    bc1f    lbl_80AA3CA4               
    add.s   $f0, $f4, $f6              
    sub.s   $f8, $f12, $f2             
    lui     $at, %hi(var_80AA4B30)     ## $at = 80AA0000
    lwc1    $f18, %lo(var_80AA4B30)($at) 
    mul.s   $f4, $f8, $f18             
    nop
    mul.s   $f0, $f0, $f4              
    nop
lbl_80AA3CA4:
    trunc.w.s $f6, $f0                   
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t5, 0xFA00                 ## t5 = FA000000
    mfc1    t9, $f6                    
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 000002D0
    andi    t0, t9, 0x00FF             ## t0 = 00000008
    sw      t0, 0x0004(v1)             ## 00000004
    sw      t5, 0x0000(v1)             ## 00000000
    lbu     t1, 0x0144(s0)             ## 00000144
    bnel    t1, $zero, lbl_80AA3CF4    
    lwc1    $f14, 0x0080(s0)           ## 00000080
    lw      t2, 0x0004(a0)             ## 8011A5D4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bnel    t2, $at, lbl_80AA3CF4      
    lwc1    $f14, 0x0080(s0)           ## 00000080
    mov.s   $f2, $f16                  
    beq     $zero, $zero, lbl_80AA3D14 
    lwc1    $f14, 0x0080(s0)           ## 00000080
    lwc1    $f14, 0x0080(s0)           ## 00000080
lbl_80AA3CF4:
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lui     $at, 0xC248                ## $at = C2480000
    mtc1    $at, $f18                  ## $f18 = -50.00
    sub.s   $f8, $f10, $f14            
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    mul.s   $f4, $f8, $f18             
    div.s   $f2, $f4, $f6              
lbl_80AA3D14:
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    lwc1    $f12, 0x0024(s0)           ## 00000024
    or      a3, $zero, $zero           ## a3 = 00000000
    add.s   $f8, $f10, $f2             
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    lwc1    $f12, 0x0178(s0)           ## 00000178
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lwc1    $f12, 0x0180(s0)           ## 00000180
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    mtc1    $zero, $f14                ## $f14 = 0.00
    lwc1    $f12, 0x0050(s0)           ## 00000050
    lw      a2, 0x0058(s0)             ## 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lbu     t3, 0x0144(s0)             ## 00000144
    bne     t3, $zero, lbl_80AA3D74    
    lui     $at, %hi(var_80AA4B34)     ## $at = 80AA0000
    lwc1    $f12, %lo(var_80AA4B34)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
lbl_80AA3D74:
    lh      t4, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t4, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_80AA4B38)     ## $at = 80AA0000
    lwc1    $f8, %lo(var_80AA4B38)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f4, $f6             
    mul.s   $f12, $f10, $f8            
    jal     func_800AAB94              
    nop
    lh      t5, 0x00B4(s0)             ## 000000B4
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t5, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_80AA4B3C)     ## $at = 80AA0000
    lwc1    $f8, %lo(var_80AA4B3C)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f4, $f6             
    mul.s   $f12, $f10, $f8            
    jal     func_800AA9E0              
    nop
    lh      t6, 0x0158(s0)             ## 00000158
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t6, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_80AA4B40)     ## $at = 80AA0000
    lwc1    $f8, %lo(var_80AA4B40)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f4, $f6             
    mul.s   $f12, $f10, $f8            
    jal     func_800AA9E0              
    nop
    lh      t7, 0x015C(s0)             ## 0000015C
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t7, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_80AA4B44)     ## $at = 80AA0000
    lwc1    $f8, %lo(var_80AA4B44)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f10, $f4, $f6             
    mul.s   $f12, $f10, $f8            
    jal     func_800AAB94              
    nop
    lwc1    $f12, 0x014C(s0)           ## 0000014C
    lwc1    $f14, 0x0150(s0)           ## 00000150
    lw      a2, 0x0154(s0)             ## 00000154
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      t0, 0x008C($sp)            
    lw      a0, 0x0000(t0)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
    or      v1, $zero, $zero           ## v1 = 00000000
    addiu   a0, $zero, 0x00FF          ## a0 = 000000FF
    sw      v0, 0x0004(a1)             ## 00000004
    lui     v0, %hi(var_80AA41EC)      ## v0 = 80AA0000
    addiu   v0, v0, %lo(var_80AA41EC)  ## v0 = 80AA41EC
    sll     t1, v1,  1                 
lbl_80AA3E8C:
    addu    t2, v0, t1                 
    lhu     t3, 0x0000(t2)             ## 00000000
    lhu     t4, 0x0146(s0)             ## 00000146
    addu    t6, s3, v1                 
    addu    t7, s3, v1                 
    and     t5, t3, t4                 
    beql    t5, $zero, lbl_80AA3EB8    
    sb      $zero, 0x0000(t7)          ## 00000000
    beq     $zero, $zero, lbl_80AA3EB8 
    sb      a0, 0x0000(t6)             ## 00000000
    sb      $zero, 0x0000(t7)          ## 00000000
lbl_80AA3EB8:
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x0400            
    bnel    $at, $zero, lbl_80AA3E8C   
    sll     t1, v1,  1                 
    lw      v1, 0x02D0(s1)             ## 000002D0
    sll     t0, s3,  4                 
    srl     t1, t0, 28                 
    lui     t9, 0xDB06                 ## t9 = DB060000
    addiu   t8, v1, 0x0008             ## t8 = 00000009
    sw      t8, 0x02D0(s1)             ## 000002D0
    ori     t9, t9, 0x0020             ## t9 = DB060020
    sll     t2, t1,  2                 
    lui     t3, 0x8012                 ## t3 = 80120000
    addu    t3, t3, t2                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t9, 0x0000(v1)             ## 00000001
    lw      t3, 0x0C38(t3)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t4, s3, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t5, t3, t4                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(v1)             ## 00000005
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t8, %hi(var_80AA4A50)      ## t8 = 80AA0000
    addiu   t8, t8, %lo(var_80AA4A50)  ## t8 = 80AA4A50
    addiu   t7, v1, 0x0008             ## t7 = 00000009
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t8, 0x0004(v1)             ## 00000005
    sw      s2, 0x0000(v1)             ## 00000001
    lw      $ra, 0x0024($sp)           
lbl_80AA3F3C:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000
    nop
    nop
    nop

.section .data

var_80AA3F60: .word 0x01410600, 0x00000019, 0x012F0000, 0x000001DC
.word func_80AA1C5C
.word func_80AA1D84
.word func_80AA1E74
.word func_80AA36F0
var_80AA3F80: .word \
0x0A110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x00140032, 0x00050000, 0x00000000
var_80AA3FAC: .word \
0x00010002, 0x00040008, 0x00100020, 0x00400080, \
0x01000200, 0x04000000
var_80AA3FC4: .word \
0x00000000, 0x42300000, 0x00000000, 0x00000000, \
0x42480000, 0x00000000, 0x00000000, 0x42180000, \
0x00000000, 0x41200000, 0x42300000, 0x00000000, \
0xC1200000, 0x42300000, 0x00000000, 0xC1200000, \
0x42480000, 0x00000000, 0x41200000, 0x42480000, \
0x00000000, 0xC1200000, 0x42180000, 0x00000000, \
0x41200000, 0x42180000, 0x00000000, 0xC0F00000, \
0x424C0000, 0x00000000, 0xC1480000, 0x42400000, \
0x00000000, 0xC1480000, 0x42200000, 0x00000000, \
0xC0F00000, 0x42140000, 0x00000000, 0x40F00000, \
0x424C0000, 0x00000000, 0x41480000, 0x42400000, \
0x00000000, 0x41480000, 0x42200000, 0x00000000, \
0x40F00000, 0x42140000, 0x00000000, 0x00000000, \
0x42480000, 0x00000000, 0x00000000, 0x42180000, \
0x00000000
var_80AA40A8: .word \
0x44BB8000, 0x447A0000, 0x00000000, 0x44BB8000, \
0x43FA0000, 0x00000000, 0x44BB8000, 0x43FA0000, \
0x00000000, 0x442F0000, 0x447A0000, 0x00000000, \
0x442F0000, 0x447A0000, 0x00000000, 0x442F0000, \
0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, \
0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, \
0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, \
0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, \
0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, \
0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, \
0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, \
0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, \
0x442F0000, 0x43FA0000, 0x00000000, 0x43480000, \
0x43FA0000, 0x00000000, 0x43480000, 0x43FA0000, \
0x00000000
var_80AA418C: .word \
0x01010404, 0x02020202, 0x02020202, 0x00000000, \
0x01010101, 0x02020000, 0x00000000
var_80AA41A8: .word 0x03FF0027, 0x014B0147, 0x015900D8
var_80AA41B4: .word 0x00000000, 0x00000000, 0x00000000
var_80AA41C0: .word \
0x06000CB0, 0x06000DB8, 0x06000E78, 0x06000F38, \
0x06000FF8, 0x060010B8, 0x060011C0, 0x060012C8, \
0x060013D0, 0x06001488, 0x06001540
var_80AA41EC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000100, \
0x01000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000100, \
0x01000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000100, \
0x01000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x01010101, \
0x01400140, 0x00400040, 0x00400040, 0x00400040, \
0x00400040, 0x00400040, 0x00400040, 0x00400040, \
0x00020002, 0x00020001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x01010101, \
0x01400140, 0x00400040, 0x00400040, 0x00400040, \
0x00400040, 0x00400040, 0x00400008, 0x00080008, \
0x00020002, 0x00020002, 0x00020002, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x01010101, \
0x01400140, 0x00400040, 0x00400040, 0x00400040, \
0x00400040, 0x00080008, 0x00080008, 0x00080008, \
0x00020002, 0x00020002, 0x00020002, 0x00020002, \
0x00020001, 0x00010001, 0x00010001, 0x01010101, \
0x01400140, 0x00400040, 0x00400040, 0x00400008, \
0x00080008, 0x00080008, 0x00080008, 0x00080008, \
0x00020002, 0x00020002, 0x00020002, 0x00020002, \
0x00020002, 0x00020002, 0x00010001, 0x01010101, \
0x01400140, 0x00400040, 0x00080008, 0x00080008, \
0x00080008, 0x00080008, 0x00080008, 0x00080008, \
0x00020002, 0x00020002, 0x00020002, 0x00020002, \
0x00020002, 0x00020002, 0x00020002, 0x01020301, \
0x03400108, 0x00080008, 0x00080008, 0x00080008, \
0x00080008, 0x00080008, 0x00080008, 0x00080008, \
0x00040004, 0x00040004, 0x00040004, 0x00040004, \
0x00040004, 0x00040004, 0x00040004, 0x02040220, \
0x02800210, 0x00100010, 0x00100010, 0x00100010, \
0x00100010, 0x00100010, 0x00100010, 0x00100010, \
0x00040004, 0x00040004, 0x00040004, 0x00040004, \
0x00040004, 0x00040004, 0x00200020, 0x02200220, \
0x02800280, 0x00800080, 0x00100010, 0x00100010, \
0x00100010, 0x00100010, 0x00100010, 0x00100010, \
0x00040004, 0x00040004, 0x00040004, 0x00040004, \
0x00040020, 0x00200020, 0x00200020, 0x02200220, \
0x02800280, 0x00800080, 0x00800080, 0x00800010, \
0x00100010, 0x00100010, 0x00100010, 0x00100010, \
0x00040004, 0x00040004, 0x00040004, 0x00200020, \
0x00200020, 0x00200020, 0x00200020, 0x02200220, \
0x02800280, 0x00800080, 0x00800080, 0x00800080, \
0x00800080, 0x00100010, 0x00100010, 0x00100010, \
0x00040004, 0x00040020, 0x00200020, 0x00200020, \
0x00200020, 0x00200020, 0x00200020, 0x02200220, \
0x02800280, 0x00800080, 0x00800080, 0x00800080, \
0x00800080, 0x00800080, 0x00800010, 0x00100010, \
0x00200020, 0x00200020, 0x00200020, 0x00200020, \
0x00200020, 0x00200020, 0x00200020, 0x02200620, \
0x06800280, 0x00800080, 0x00800080, 0x00800080, \
0x00800080, 0x00800080, 0x00800080, 0x00800080, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04000400, \
0x04000400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80AA49EC: .word \
0x3FC90FDB, 0x00000000, 0x3FC90FDB, 0x4004B36D, \
0x3F88B8DD, 0x00000000, 0x00000000, 0x00000000, \
0x00000000
var_80AA4A10: .word \
0xF8300000, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x07D00000, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x07D01770, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xF8301770, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80AA4A50: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x08000000, \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098260, 0xF2000000, 0x0007C07C, \
0xFC3097FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80AA4A10
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000

.section .rodata

var_80AA4AD0: .word 0x38000100
var_80AA4AD4: .word var_80AA1ECC
.word var_80AA2624
.word var_80AA2624
.word lbl_80AA2C70
.word lbl_80AA2C70
.word var_80AA3488
var_80AA4AEC: .word 0x40490FDB
var_80AA4AF0: .word 0xBE99999A
var_80AA4AF4: .word 0x3F333333
var_80AA4AF8: .word 0x3DCCCCCD
var_80AA4AFC: .word 0x451C4000
var_80AA4B00: .word 0x461C4000
var_80AA4B04: .word 0x3D4CCCCD
var_80AA4B08: .word 0x3D4CCCCD
var_80AA4B0C: .word 0x4622F983
var_80AA4B10: .word 0x40490FDB
var_80AA4B14: .word 0x40490FDB
var_80AA4B18: .word 0x40490FDB
var_80AA4B1C: .word 0x40490FDB
var_80AA4B20: .word 0x40490FDB
var_80AA4B24: .word 0x45898000
var_80AA4B28: .word 0xC53B8000
var_80AA4B2C: .word 0x3B343958
var_80AA4B30: .word 0x3C23D70A
var_80AA4B34: .word 0xBF20D97C
var_80AA4B38: .word 0x40490FDB
var_80AA4B3C: .word 0x40490FDB
var_80AA4B40: .word 0x40490FDB
var_80AA4B44: .word 0x40490FDB, 0x00000000, 0x00000000

