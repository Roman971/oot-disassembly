#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B72BD0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_80B7408C)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B7408C)  # a1 = 80B7408C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01BA             # t6 = 000001BA
    addiu   t7, s0, 0x01F0             # t7 = 000001F0
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x00F0             # a3 = 060000F0
    addiu   a2, a2, 0x10C0             # a2 = 060010C0
    lw      a0, 0x003C($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    addiu   a1, s0, 0x0228             # a1 = 00000228
    sw      a1, 0x0030($sp)            
    jal     func_8004A484              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80B74050)      # a3 = 80B70000
    addiu   t9, s0, 0x0248             # t9 = 00000248
    lw      a1, 0x0030($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B74050)  # a3 = 80B74050
    lw      a0, 0x003C($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     t0, %hi(var_80B7405C)      # t0 = 80B70000
    lw      t0, %lo(var_80B7405C)(t0)  
    lw      t2, 0x0244(s0)             # 00000244
    lui     a1, %hi(var_80B74068)      # a1 = 80B70000
    lh      t1, 0x0020(t0)             # 80B70020
    lui     a2, %hi(var_80B74060)      # a2 = 80B70000
    addiu   a2, a2, %lo(var_80B74060)  # a2 = 80B74060
    addiu   a1, a1, %lo(var_80B74068)  # a1 = 80B74068
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    sh      t1, 0x0036(t2)             # 00000036
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0x44FA                 # a1 = 44FA0000
    jal     func_8001EC20              
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     $at, %hi(var_80B74088)     # $at = 80B70000
    sw      $zero, %lo(var_80B74088)($at) 
    jal     func_80B72CEC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B72CC0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a2, 0x0228             # a1 = 00000228
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B72CEC:
    lbu     t7, 0x0239(a0)             # 00000239
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t9, %hi(func_80B73208)     # t9 = 80B70000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t9, t9, %lo(func_80B73208) # t9 = 80B73208
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x01B4(a0)             # 000001B4
    sb      t8, 0x0239(a0)             # 00000239
    sw      t9, 0x01B0(a0)             # 000001B0
    swc1    $f4, 0x0188(a0)            # 00000188
    jr      $ra                        
    nop


func_80B72D20:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     t7, %hi(func_80B73634)     # t7 = 80B70000
    addiu   t6, $zero, 0x012C          # t6 = 0000012C
    addiu   t7, t7, %lo(func_80B73634) # t7 = 80B73634
    sh      t6, 0x01B4(a0)             # 000001B4
    sw      t7, 0x01B0(a0)             # 000001B0
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f6, 0x0188(a0)            # 00000188
    jr      $ra                        
    nop


func_80B72D54:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s5, 0x0070($sp)            
    sw      s1, 0x0060($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s4, 0x006C($sp)            
    sw      s3, 0x0068($sp)            
    sw      s2, 0x0064($sp)            
    sw      s0, 0x005C($sp)            
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    jal     func_80063684              # coss?
    lh      a0, 0x0030(s1)             # 00000030
    lwc1    $f4, 0x0068(s1)            # 00000068
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mul.s   $f6, $f4, $f0              
    mtc1    $at, $f8                   # $f8 = -3.00
    swc1    $f2, 0x0060(s1)            # 00000060
    lui     a1, 0x0600                 # a1 = 06000000
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mfc1    a3, $f2                    
    swc1    $f6, 0x0068(s1)            # 00000068
    sw      t6, 0x0014($sp)            
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a1, a1, 0x00F0             # a1 = 060000F0
    addiu   a0, s1, 0x016C             # a0 = 0000016C
    swc1    $f2, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f10, 0x0050(s1)           # 00000050
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    mul.s   $f24, $f10, $f16           
    lwc1    $f18, 0x0028(s1)           # 00000028
    lhu     t7, 0x0088(s1)             # 00000088
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      t8, 0x0088(s1)             # 00000088
    mul.s   $f6, $f4, $f24             
    addiu   a1, $zero, 0x38EB          # a1 = 000038EB
    swc1    $f0, 0x00BC(s1)            # 000000BC
    swc1    $f0, 0x004C(s1)            # 0000004C
    add.s   $f8, $f18, $f6             
    jal     func_80022FD0              
    swc1    $f8, 0x0028(s1)            # 00000028
    lbu     v0, 0x00B1(s1)             # 000000B1
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $at, lbl_80B72F5C      
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sw      t9, 0x0010($sp)            
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80B740B0)     # $at = 80B70000
    lwc1    $f28, %lo(var_80B740B0)($at) 
    lui     $at, %hi(var_80B740B4)     # $at = 80B70000
    lwc1    $f26, %lo(var_80B740B4)($at) 
    lui     $at, 0xC0E0                # $at = C0E00000
    mtc1    $at, $f22                  # $f22 = -7.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f20                  # $f20 = 7.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    addiu   s2, $sp, 0x0084            # s2 = FFFFFFEC
    andi    t0, s0, 0x0001             # t0 = 00000000
lbl_80B72E84:
    beql    t0, $zero, lbl_80B72E98    
    mov.s   $f0, $f22                  
    beq     $zero, $zero, lbl_80B72E98 
    mov.s   $f0, $f20                  
    mov.s   $f0, $f22                  
lbl_80B72E98:
    mul.s   $f10, $f0, $f24            
    lwc1    $f16, 0x0024(s1)           # 00000024
    andi    t1, s0, 0x0002             # t1 = 00000000
    add.s   $f4, $f10, $f16            
    beq     t1, $zero, lbl_80B72EB8    
    swc1    $f4, 0x0084($sp)           
    beq     $zero, $zero, lbl_80B72EBC 
    mov.s   $f0, $f20                  
lbl_80B72EB8:
    mov.s   $f0, $f22                  
lbl_80B72EBC:
    mul.s   $f18, $f0, $f24            
    lwc1    $f6, 0x0028(s1)            # 00000028
    andi    t2, s0, 0x0004             # t2 = 00000000
    add.s   $f8, $f18, $f6             
    beq     t2, $zero, lbl_80B72EDC    
    swc1    $f8, 0x0088($sp)           
    beq     $zero, $zero, lbl_80B72EE0 
    mov.s   $f0, $f20                  
lbl_80B72EDC:
    mov.s   $f0, $f22                  
lbl_80B72EE0:
    mul.s   $f10, $f0, $f24            
    lwc1    $f16, 0x002C(s1)           # 0000002C
    add.s   $f4, $f10, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x008C($sp)           
    mul.s   $f18, $f0, $f26            
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    addiu   t5, $zero, 0x00FA          # t5 = 000000FA
    addiu   t6, $zero, 0x00EB          # t6 = 000000EB
    addiu   t7, $zero, 0x00F5          # t7 = 000000F5
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    add.s   $f6, $f18, $f28            
    sw      t8, 0x0024($sp)            
    sw      t7, 0x0020($sp)            
    sw      t6, 0x001C($sp)            
    mul.s   $f8, $f6, $f24             
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFEC
    swc1    $f8, 0x0028($sp)           
    jal     func_8001DC4C              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_80B72E84       
    andi    t0, s0, 0x0001             # t0 = 00000001
    beq     $zero, $zero, lbl_80B73004 
    lw      v0, 0x0004(s1)             # 00000004
lbl_80B72F5C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B72FE8      
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sw      t9, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s1, 0x0024             # s2 = 00000024
    mul.s   $f16, $f10, $f24           
    addiu   s4, $zero, 0x0004          # s4 = 00000004
    trunc.w.s $f4, $f16                  
    mfc1    s3, $f4                    
    nop
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    sll     a3, s3, 16                 
lbl_80B72FB4:
    sra     a3, a3, 16                 
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000024
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8001DFEC              
    sw      s0, 0x0018($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s4, lbl_80B72FB4       
    sll     a3, s3, 16                 
    beq     $zero, $zero, lbl_80B73004 
    lw      v0, 0x0004(s1)             # 00000004
lbl_80B72FE8:
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    sw      t1, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v0, 0x0004(s1)             # 00000004
lbl_80B73004:
    lui     t6, %hi(func_80B737D8)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B737D8) # t6 = 80B737D8
    andi    t2, v0, 0x8000             # t2 = 00000000
    beql    t2, $zero, lbl_80B73028    
    lbu     t3, 0x0239(s1)             # 00000239
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      v0, 0x0004(s1)             # 00000004
    swc1    $f18, 0x0068(s1)           # 00000068
    lbu     t3, 0x0239(s1)             # 00000239
lbl_80B73028:
    ori     t5, v0, 0x0010             # t5 = 00000010
    sw      t5, 0x0004(s1)             # 00000004
    andi    t4, t3, 0xFFFE             # t4 = 00000000
    sb      t4, 0x0239(s1)             # 00000239
    sw      t6, 0x01B0(s1)             # 000001B0
    lw      $ra, 0x0074($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    lw      s0, 0x005C($sp)            
    lw      s1, 0x0060($sp)            
    lw      s2, 0x0064($sp)            
    lw      s3, 0x0068($sp)            
    lw      s4, 0x006C($sp)            
    lw      s5, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80B73074:
    lui     t6, %hi(func_80B73900)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B73900) # t6 = 80B73900
    sb      $zero, 0x0114(a0)          # 00000114
    sw      t6, 0x01B0(a0)             # 000001B0
    jr      $ra                        
    nop


func_80B7308C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      t8, 0x008A(a0)             # 0000008A
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f4                   # $f4 = 3.50
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t9, t8, $at                
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0xF000          # t7 = FFFFF000
    sh      t6, 0x01B4(a0)             # 000001B4
    sh      t7, 0x01B6(a0)             # 000001B6
    sh      t9, 0x01B8(a0)             # 000001B8
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f6, 0x0188(a0)            # 00000188
    sw      a0, 0x0020($sp)            
    sw      t0, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lw      a0, 0x0020($sp)            
    lui     t1, %hi(func_80B739B0)     # t1 = 80B70000
    addiu   t1, t1, %lo(func_80B739B0) # t1 = 80B739B0
    sw      t1, 0x01B0(a0)             # 000001B0
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73114:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, %hi(var_80B74088)      # v0 = 80B70000
    addiu   v0, v0, %lo(var_80B74088)  # v0 = 80B74088
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0000(v0)             # 80B74088
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bne     t6, $at, lbl_80B73184      
    lui     t8, %hi(var_80B7405C)      # t8 = 80B70000
    sh      t7, 0x001C(a2)             # 0000001C
    sw      $zero, 0x0000(v0)          # 80B74088
    lw      t8, %lo(var_80B7405C)(t8)  
    lui     $at, %hi(var_80B740B8)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B740B8)($at) 
    lh      t9, 0x0020(t8)             # 80B70020
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    mtc1    t9, $f4                    # $f4 = 0.00
    lw      t2, 0x0244(a2)             # 00000244
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    beq     $zero, $zero, lbl_80B7319C 
    sh      t1, 0x0036(t2)             # 00000036
lbl_80B73184:
    sh      $zero, 0x001C(a2)          # 0000001C
    lui     t3, %hi(var_80B7405C)      # t3 = 80B70000
    lw      t3, %lo(var_80B7405C)(t3)  
    lw      t5, 0x0244(a2)             # 00000244
    lh      t4, 0x0020(t3)             # 80B70020
    sh      t4, 0x0036(t5)             # 00000036
lbl_80B7319C:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00F0             # a1 = 060000F0
    addiu   a0, a2, 0x016C             # a0 = 0000016C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a2, 0x0008             # a1 = 00000008
    lw      a2, 0x0018($sp)            
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f6                   # $f6 = 2000.00
    mtc1    $at, $f8                   # $f8 = 2000.00
    lui     t7, %hi(func_80B73A54)     # t7 = 80B70000
    addiu   t6, $zero, 0x012C          # t6 = 0000012C
    addiu   t7, t7, %lo(func_80B73A54) # t7 = 80B73A54
    sh      $zero, 0x00B4(a2)          # 000000B4
    sh      $zero, 0x00B8(a2)          # 000000B8
    sh      t6, 0x01B4(a2)             # 000001B4
    sw      $zero, 0x0134(a2)          # 00000134
    sw      t7, 0x01B0(a2)             # 000001B0
    swc1    $f6, 0x00BC(a2)            # 000000BC
    swc1    $f8, 0x004C(a2)            # 0000004C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73208:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    addiu   a0, s0, 0x016C             # a0 = 0000016C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0028($sp)            
    jal     func_8008C9C0              
    sw      t7, 0x003C($sp)            
    lw      a0, 0x0028($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0038($sp)            
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    mul.s   $f6, $f0, $f4              
    lhu     t8, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0008             # a1 = 00000008
    andi    t9, t8, 0x0008             # t9 = 00000000
    add.s   $f10, $f6, $f8             
    beq     t9, $zero, lbl_80B73284    
    swc1    $f10, 0x0068(s0)           # 00000068
    lh      t0, 0x007E(s0)             # 0000007E
    beq     $zero, $zero, lbl_80B732B4 
    sh      t0, 0x01B8(s0)             # 000001B8
lbl_80B73284:
    jal     func_80021528              
    sw      a1, 0x0028($sp)            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f16                  # $f16 = 300.00
    lw      a1, 0x0028($sp)            
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B732B8               
    lh      a1, 0x01B8(s0)             # 000001B8
    jal     func_8002140C              
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x01B8(s0)             # 000001B8
lbl_80B732B4:
    lh      a1, 0x01B8(s0)             # 000001B8
lbl_80B732B8:
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    sw      t1, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x0300          # a3 = 00000300
    bne     v0, $zero, lbl_80B733A8    
    lw      t2, 0x0038($sp)            
    beql    t2, $zero, lbl_80B733AC    
    lui     $at, 0xC220                # $at = C2200000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B740BC)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B740BC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B733AC               
    lui     $at, 0xC220                # $at = C2200000
    jal     func_8002140C              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lh      t3, 0x00B6(s0)             # 000000B6
    subu    v1, v0, t3                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    blez    v1, lbl_80B73360           
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f2                   # $f2 = 4096.00
    lh      t4, 0x01B8(s0)             # 000001B8
    mul.s   $f8, $f2, $f0              
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f2, $f8             
    add.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    beq     $zero, $zero, lbl_80B7339C 
    sh      t6, 0x01B8(s0)             # 000001B8
lbl_80B73360:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f2                   # $f2 = 4096.00
    lh      t7, 0x01B8(s0)             # 000001B8
    mul.s   $f6, $f2, $f0              
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    add.s   $f10, $f2, $f6             
    sub.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x01B8(s0)             # 000001B8
lbl_80B7339C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B6          # a1 = 000038B6
lbl_80B733A8:
    lui     $at, 0xC220                # $at = C2200000
lbl_80B733AC:
    mtc1    $at, $f4                   # $f4 = -40.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    lui     $at, 0x4248                # $at = 42480000
    addiu   t0, $zero, 0xF000          # t0 = FFFFF000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B733D8               
    mtc1    $at, $f12                  # $f12 = 50.00
    beq     $zero, $zero, lbl_80B73464 
    sh      t0, 0x01B6(s0)             # 000001B6
    mtc1    $at, $f12                  # $f12 = 50.00
lbl_80B733D8:
    lwc1    $f2, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0028(s0)            # 00000028
    sub.s   $f8, $f2, $f12             
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80B73428               
    add.s   $f6, $f2, $f12             
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f2                   # $f2 = 2048.00
    lui     $at, 0xC500                # $at = C5000000
    mtc1    $at, $f10                  # $f10 = -2048.00
    mul.s   $f16, $f0, $f2             
    sub.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t2, $f4                    
    beq     $zero, $zero, lbl_80B73464 
    sh      t2, 0x01B6(s0)             # 000001B6
    add.s   $f6, $f2, $f12             
lbl_80B73428:
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B73468               
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f2                   # $f2 = 2048.00
    nop
    mul.s   $f8, $f0, $f2              
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x01B6(s0)             # 000001B6
lbl_80B73464:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80B73468:
    lh      a1, 0x01B6(s0)             # 000001B6
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    sw      t5, 0x0010($sp)            
    sw      a0, 0x0028($sp)            
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    bne     v0, $zero, lbl_80B73578    
    lw      t6, 0x0038($sp)            
    beql    t6, $zero, lbl_80B7357C    
    lhu     t4, 0x0088(s0)             # 00000088
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B740C0)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B740C0)($at) 
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B7357C               
    lhu     t4, 0x0088(s0)             # 00000088
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0028(s0)            # 00000028
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80B73508               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f2                   # $f2 = 1024.00
    lh      t7, 0x01B6(s0)             # 000001B6
    mul.s   $f16, $f2, $f0             
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f18, $f16, $f2            
    sub.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    beq     $zero, $zero, lbl_80B73544 
    sh      t9, 0x01B6(s0)             # 000001B6
lbl_80B73508:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f2                   # $f2 = 1024.00
    lh      t0, 0x01B6(s0)             # 000001B6
    mul.s   $f10, $f2, $f0             
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    add.s   $f18, $f10, $f2            
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f6                    
    nop
    sh      t2, 0x01B6(s0)             # 000001B6
lbl_80B73544:
    lh      v0, 0x01B6(s0)             # 000001B6
    addiu   t3, $zero, 0xF000          # t3 = FFFFF000
    slti    $at, v0, 0xF000            
    beql    $at, $zero, lbl_80B73564   
    slti    $at, v0, 0x1001            
    beq     $zero, $zero, lbl_80B73578 
    sh      t3, 0x01B6(s0)             # 000001B6
    slti    $at, v0, 0x1001            
lbl_80B73564:
    bne     $at, $zero, lbl_80B73574   
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80B73574 
    addiu   v1, $zero, 0x1000          # v1 = 00001000
lbl_80B73574:
    sh      v1, 0x01B6(s0)             # 000001B6
lbl_80B73578:
    lhu     t4, 0x0088(s0)             # 00000088
lbl_80B7357C:
    lw      a0, 0x0028($sp)            
    addiu   a1, $zero, 0xFF00          # a1 = FFFFFF00
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80B7359C    
    lh      v0, 0x01B4(s0)             # 000001B4
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lh      v0, 0x01B4(s0)             # 000001B4
lbl_80B7359C:
    lui     $at, 0x4396                # $at = 43960000
    beq     v0, $zero, lbl_80B735B0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01B4(s0)             # 000001B4
    lh      v0, 0x01B4(s0)             # 000001B4
lbl_80B735B0:
    bnel    v0, $zero, lbl_80B73624    
    lw      $ra, 0x0024($sp)           
    lwc1    $f8, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 300.00
    lw      t7, 0x003C($sp)            
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80B73624               
    lw      $ra, 0x0024($sp)           
    lw      t8, 0x066C(t7)             # 0000066C
    lui     $at, 0xC220                # $at = C2200000
    sll     t9, t8,  8                 
    bltzl   t9, lbl_80B73624           
    lw      $ra, 0x0024($sp)           
    lwc1    $f16, 0x0084(s0)           # 00000084
    mtc1    $at, $f18                  # $f18 = -40.00
    nop
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80B73624               
    lw      $ra, 0x0024($sp)           
    jal     func_80079B44              
    lw      a0, 0x0044($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80B73624      
    lw      $ra, 0x0024($sp)           
    jal     func_80B72D20              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B73624:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73634:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    addiu   a0, s0, 0x016C             # a0 = 0000016C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x003C($sp)            
    lh      v1, 0x01B4(s0)             # 000001B4
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_80B73670    
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01B4(s0)             # 000001B4
lbl_80B73670:
    jal     func_80021A28              
    addiu   a1, $zero, 0x2800          # a1 = 00002800
    beq     v0, $zero, lbl_80B736E0    
    sw      v0, 0x0038($sp)            
    lw      v0, 0x003C($sp)            
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0028(v0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x002C(v0)           # 0000002C
    jal     func_80021488              
    swc1    $f16, 0x0034($sp)          
    sll     a1, v0, 16                 
    slti    $at, v0, 0x3001            
    bne     $at, $zero, lbl_80B736C8   
    sra     a1, a1, 16                 
    addiu   a1, $zero, 0x3000          # a1 = 00003000
lbl_80B736C8:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    beq     $zero, $zero, lbl_80B736F8 
    lw      t9, 0x0038($sp)            
lbl_80B736E0:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xF000          # a1 = FFFFF000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    lw      t9, 0x0038($sp)            
lbl_80B736F8:
    lui     $at, 0x42A0                # $at = 42A00000
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    bne     t9, $zero, lbl_80B73720    
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $at, $f18                  # $f18 = 80.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80B73730               
    lh      t0, 0x01B4(s0)             # 000001B4
lbl_80B73720:
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064624              
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    lh      t0, 0x01B4(s0)             # 000001B4
lbl_80B73730:
    beql    t0, $zero, lbl_80B737A0    
    lbu     v0, 0x0238(s0)             # 00000238
    jal     func_80079B44              
    lw      a0, 0x0044($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80B737A0      
    lbu     v0, 0x0238(s0)             # 00000238
    lbu     t1, 0x0238(s0)             # 00000238
    andi    t2, t1, 0x0002             # t2 = 00000000
    bnel    t2, $zero, lbl_80B737A0    
    lbu     v0, 0x0238(s0)             # 00000238
    lhu     t3, 0x0088(s0)             # 00000088
    lw      t5, 0x003C($sp)            
    andi    t4, t3, 0x0009             # t4 = 00000000
    bnel    t4, $zero, lbl_80B737A0    
    lbu     v0, 0x0238(s0)             # 00000238
    lw      t6, 0x066C(t5)             # 0000066C
    lui     $at, 0xC220                # $at = C2200000
    sll     t7, t6,  8                 
    bltzl   t7, lbl_80B737A0           
    lbu     v0, 0x0238(s0)             # 00000238
    mtc1    $at, $f6                   # $f6 = -40.00
    lwc1    $f8, 0x0084(s0)            # 00000084
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80B737C8               
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0238(s0)             # 00000238
lbl_80B737A0:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38B7          # a1 = 000038B7
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80B737BC    
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    jal     func_80022FD0              
    sb      t9, 0x0238(s0)             # 00000238
lbl_80B737BC:
    jal     func_80B72CEC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B737C8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B737D8:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      a1, 0x0054($sp)            
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sb      t6, 0x0114(s0)             # 00000114
    andi    t8, t7, 0x8000             # t8 = 00000000
    bnel    t8, $zero, lbl_80B738F0    
    lw      $ra, 0x004C($sp)           
    lhu     t9, 0x0112(s0)             # 00000112
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    andi    t0, t9, 0x4000             # t0 = 00000000
    beql    t0, $zero, lbl_80B73844    
    lhu     t3, 0x0088(s0)             # 00000088
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lh      t1, 0x00B8(s0)             # 000000B8
    addiu   t2, t1, 0x1780             # t2 = 00001780
    sh      t2, 0x00B8(s0)             # 000000B8
    lhu     t3, 0x0088(s0)             # 00000088
lbl_80B73844:
    lui     a2, %hi(var_80B74000)      # a2 = 80B70000
    addiu   a2, a2, %lo(var_80B74000)  # a2 = 80B74000
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80B7386C    
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lwc1    $f6, 0x0080(s0)            # 00000080
    c.eq.s  $f4, $f6                   
    nop
    bc1f    lbl_80B738EC               
lbl_80B7386C:
    lui     $at, %hi(var_80B740C4)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B740C4)($at) 
    lwc1    $f8, 0x0050(s0)            # 00000050
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    mul.s   $f16, $f8, $f10            
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    trunc.w.s $f18, $f16                 
    sw      t4, 0x003C($sp)            
    sw      t3, 0x0038($sp)            
    sw      t2, 0x0034($sp)            
    mfc1    t6, $f18                   
    sw      t1, 0x0028($sp)            
    sw      t0, 0x0024($sp)            
    sw      t9, 0x0020($sp)            
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0014($sp)         
    lw      a0, 0x0054($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    or      a3, a2, $zero              # a3 = 80B74000
    jal     func_8001E1D4              
    sw      t6, 0x0010($sp)            
    jal     func_80B73074              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B738EC:
    lw      $ra, 0x004C($sp)           
lbl_80B738F0:
    lw      s0, 0x0048($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73900:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80B740CC)     # $at = 80B70000
    addiu   a0, s0, 0x0050             # a0 = 00000050
    beq     t6, $zero, lbl_80B73934    
    nop
    lui     $at, %hi(var_80B740C8)     # $at = 80B70000
    beq     $zero, $zero, lbl_80B73938 
    lwc1    $f0, %lo(var_80B740C8)($at) 
lbl_80B73934:
    lwc1    $f0, %lo(var_80B740CC)($at) 
lbl_80B73938:
    mfc1    a2, $f0                    
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80B73994    
    lw      a0, 0x0024($sp)            
    lh      t7, 0x001C(s0)             # 0000001C
    lui     v0, %hi(var_80B74088)      # v0 = 80B70000
    addiu   v0, v0, %lo(var_80B74088)  # v0 = 80B74088
    bne     t7, $zero, lbl_80B73984    
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lw      t8, 0x0000(v0)             # 80B74088
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0000(v0)             # 80B74088
    jal     func_80013A84              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80B7398C 
    nop
lbl_80B73984:
    jal     func_80013678              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_80B7398C:
    jal     func_80B73114              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B73994:
    lwc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B739B0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x016C             # a0 = 0000016C
    lhu     t6, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80B739F0    
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    lh      t8, 0x007E(s0)             # 0000007E
    beq     $zero, $zero, lbl_80B73A00 
    sh      t8, 0x01B8(s0)             # 000001B8
lbl_80B739F0:
    lh      t9, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t0, t9, $at                
    sh      t0, 0x01B8(s0)             # 000001B8
lbl_80B73A00:
    jal     func_80064624              
    lh      a1, 0x01B8(s0)             # 000001B8
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      a1, 0x01B6(s0)             # 000001B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    lh      v0, 0x01B4(s0)             # 000001B4
    beq     v0, $zero, lbl_80B73A30    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01B4(s0)             # 000001B4
    lh      v0, 0x01B4(s0)             # 000001B4
lbl_80B73A30:
    bnel    v0, $zero, lbl_80B73A44    
    lw      $ra, 0x001C($sp)           
    jal     func_80B72CEC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B73A44:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73A54:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x01B4(s0)             # 000001B4
    beq     v0, $zero, lbl_80B73A7C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01B4(s0)             # 000001B4
    lh      v0, 0x01B4(s0)             # 000001B4
lbl_80B73A7C:
    bnel    v0, $zero, lbl_80B73B10    
    lw      $ra, 0x001C($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x016C             # a0 = 0000016C
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t7, %hi(func_80B73F98)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B73F98) # t7 = 80B73F98
    beq     t8, $zero, lbl_80B73AAC    
    sw      t7, 0x0134(s0)             # 00000134
    lui     $at, %hi(var_80B740D0)     # $at = 80B70000
    beq     $zero, $zero, lbl_80B73AB4 
    lwc1    $f0, %lo(var_80B740D0)($at) 
lbl_80B73AAC:
    lui     $at, %hi(var_80B740D4)     # $at = 80B70000
    lwc1    $f0, %lo(var_80B740D4)($at) 
lbl_80B73AB4:
    lui     $at, %hi(var_80B740D8)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B740D8)($at) 
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0050             # a0 = 00000050
    mul.s   $f6, $f0, $f4              
    mfc1    a2, $f6                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80B73B00    
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t9, 0x0004(s0)             # 00000004
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x00AF(s0)             # 000000AF
    ori     t0, t9, 0x0001             # t0 = 00000001
    sw      t0, 0x0004(s0)             # 00000004
    and     t2, t0, $at                
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_80B72CEC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B73B00:
    lwc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    lw      $ra, 0x001C($sp)           
lbl_80B73B10:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73B20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x0239(s0)             # 00000239
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B73BBC    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0239(s0)             # 00000239
    jal     func_800283BC              
    lw      a1, 0x0244(s0)             # 00000244
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B73B74    
    nop
    lbu     t8, 0x00B0(s0)             # 000000B0
    beql    t8, $zero, lbl_80B73BC0    
    lw      $ra, 0x001C($sp)           
lbl_80B73B74:
    bne     v0, $at, lbl_80B73B8C      
    nop
    jal     func_80B7308C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B73BC0 
    lw      $ra, 0x001C($sp)           
lbl_80B73B8C:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a1, s0, $zero              # a1 = 00000000
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_80025B4C              
    lw      a0, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B72D54              
    lw      a1, 0x0024($sp)            
lbl_80B73BBC:
    lw      $ra, 0x001C($sp)           
lbl_80B73BC0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73BD0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B73B20              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x01B0(s0)             # 000001B0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t7, 0x00B4(s0)             # 000000B4
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     t0, %hi(func_80B73A54)     # t0 = 80B70000
    subu    t8, $zero, t7              
    lwc1    $f4, 0x0050(s0)            # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    sh      t8, 0x0030(s0)             # 00000030
    addiu   t0, t0, %lo(func_80B73A54) # t0 = 80B73A54
    sh      t6, 0x0032(s0)             # 00000032
    mtc1    $at, $f6                   # $f6 = 100.00
    sw      t0, 0x002C($sp)            
    lw      t1, 0x01B0(s0)             # 000001B0
    mul.s   $f0, $f4, $f6              
    beql    t0, t1, lbl_80B73CDC       
    mtc1    $zero, $f18                # $f18 = 0.00
    lbu     t2, 0x00AF(s0)             # 000000AF
    lui     $at, 0x41A0                # $at = 41A00000
    or      a0, s0, $zero              # a0 = 00000000
    beql    t2, $zero, lbl_80B73C7C    
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $at, $f8                   # $f8 = 20.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0030($sp)           
    mul.s   $f10, $f8, $f0             
    jal     func_800212B8              
    swc1    $f10, 0x0034($sp)          
    beq     $zero, $zero, lbl_80B73C8C 
    lwc1    $f0, 0x0030($sp)           
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_80B73C7C:
    swc1    $f0, 0x0030($sp)           
    jal     func_8002121C              
    swc1    $f16, 0x0034($sp)          
    lwc1    $f0, 0x0030($sp)           
lbl_80B73C8C:
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f18                  # $f18 = 12.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mul.s   $f4, $f18, $f0             
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mul.s   $f8, $f6, $f0              
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    sw      t3, 0x0014($sp)            
    mul.s   $f16, $f10, $f0            
    mfc1    a2, $f4                    
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a3, $f8                    
    jal     func_80021E6C              
    swc1    $f16, 0x0010($sp)          
    beq     $zero, $zero, lbl_80B73CE8 
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_80B73CDC:
    nop
    swc1    $f18, 0x0034($sp)          
    lwc1    $f4, 0x0024(s0)            # 00000024
lbl_80B73CE8:
    lw      t9, 0x0244(s0)             # 00000244
    lui     t3, %hi(func_80B73634)     # t3 = 80B70000
    trunc.w.s $f6, $f4                   
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, t3, %lo(func_80B73634) # t3 = 80B73634
    ori     $at, $at, 0x1E60           # $at = 00011E60
    mfc1    t5, $f6                    
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    sh      t5, 0x0030(t9)             # 00000030
    lwc1    $f10, 0x0034($sp)          
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      t8, 0x0244(s0)             # 00000244
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0032(t8)             # 00000032
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lw      t2, 0x0244(s0)             # 00000244
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    sh      t1, 0x0034(t2)             # 00000034
    lw      t4, 0x01B0(s0)             # 000001B0
    bnel    t3, t4, lbl_80B73D60       
    lbu     t5, 0x0239(s0)             # 00000239
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0228             # a2 = 00000228
    lbu     t5, 0x0239(s0)             # 00000239
lbl_80B73D60:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t9, t5, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B73D80    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0228             # a2 = 00000228
lbl_80B73D80:
    lw      t6, 0x002C($sp)            
    lw      t7, 0x01B0(s0)             # 000001B0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    beq     t6, t7, lbl_80B73DA4       
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0228             # a2 = 00000228
lbl_80B73DA4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lw      a1, 0x0034($sp)            
    lbu     t8, 0x00AF(s0)             # 000000AF
    addiu   a0, s0, 0x016C             # a0 = 0000016C
    beql    t8, $zero, lbl_80B73DDC    
    lw      $ra, 0x0024($sp)           
    jal     func_8008D6A8              
    lui     a1, 0x4040                 # a1 = 40400000
    beq     v0, $zero, lbl_80B73DD8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3897          # a1 = 00003897
lbl_80B73DD8:
    lw      $ra, 0x0024($sp)           
lbl_80B73DDC:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B73DEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a0, 0x0018($sp)            
    lw      a0, 0x002C($sp)            
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    lbu     t6, 0x00AF(a0)             # 000000AF
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    t6, $zero, lbl_80B73EC8    
    or      v0, $zero, $zero           # v0 = 00000000
    bne     a1, $at, lbl_80B73E64      
    lui     $at, %hi(var_80B740DC)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B740DC)($at) 
    lwc1    $f4, 0x0184(a0)            # 00000184
    mul.s   $f12, $f4, $f6             
    jal     func_800CF470              
    nop
    lw      v0, 0x0028($sp)            
    lui     $at, 0x4540                # $at = 45400000
    mtc1    $at, $f16                  # $f16 = 3072.00
    lh      t7, 0x0002(v0)             # 00000002
    mul.s   $f18, $f16, $f0            
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    beq     $zero, $zero, lbl_80B73EC4 
    sh      t9, 0x0002(v0)             # 00000002
lbl_80B73E64:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80B73EC4      
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f16                  # $f16 = 2.50
    lwc1    $f8, 0x0184(a0)            # 00000184
    lui     $at, %hi(var_80B740E0)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B740E0)($at) 
    add.s   $f10, $f8, $f16            
    mul.s   $f12, $f10, $f18           
    jal     func_800CF470              
    nop
    lw      v0, 0x0028($sp)            
    lui     $at, 0x45A0                # $at = 45A00000
    mtc1    $at, $f8                   # $f8 = 5120.00
    lh      t0, 0x0002(v0)             # 00000002
    mul.s   $f16, $f8, $f0             
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f16            
    trunc.w.s $f18, $f10                 
    mfc1    t2, $f18                   
    nop
    sh      t2, 0x0002(v0)             # 00000002
lbl_80B73EC4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B73EC8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73ED8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a3, 0x0034($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a2, $at, lbl_80B73F2C      
    lui     a0, %hi(var_80B7409C)      # a0 = 80B70000
    lw      a1, 0x0038($sp)            
    addiu   a0, a0, %lo(var_80B7409C)  # a0 = 80B7409C
    jal     func_800AB958              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      v0, 0x0038($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0140(v0)            # 00000140
    sub.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80B73F88 
    swc1    $f8, 0x0140(v0)            # 00000140
lbl_80B73F2C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a2, $at, lbl_80B73F48      
    lui     a0, %hi(var_80B74000)      # a0 = 80B70000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a2, $at, lbl_80B73F48      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a2, $at, lbl_80B73F88      
lbl_80B73F48:
    sra     t7, a2,  1                 
    lw      t6, 0x0038($sp)            
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    a1, t6, t8                 
    addiu   a1, a1, 0x0130             # a1 = 00000130
    sw      a1, 0x001C($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80B74000)  # a0 = 80B74000
    lw      a1, 0x001C($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f10, 0x0004(a1)           # 00000004
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(a1)           # 00000004
lbl_80B73F88:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B73F98:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_80B73DEC)     # t7 = 80B70000
    lui     t8, %hi(func_80B73ED8)     # t8 = 80B70000
    lw      a1, 0x0170(v0)             # 00000170
    lw      a2, 0x018C(v0)             # 0000018C
    lbu     a3, 0x016E(v0)             # 0000016E
    addiu   t8, t8, %lo(func_80B73ED8) # t8 = 80B73ED8
    addiu   t7, t7, %lo(func_80B73DEC) # t7 = 80B73DEC
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B74000: .word 0x00000000, 0x00000000, 0x00000000
var_80B7400C: .word 0x01C00500, 0x00005005, 0x00080000, 0x00000288
.word func_80B72BD0
.word func_80B72CC0
.word func_80B73BD0
.word func_80B73F98
var_80B7402C: .word \
0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x09010100, 0x01000000, 0x00000000, \
0x00140064
var_80B74050: .word 0x03110939, 0x10000000, 0x00000001
var_80B7405C: .word var_80B7402C
var_80B74060: .word 0x0100000F, 0x001E1E00
var_80B74068: .word \
0x10020102, 0x01020202, 0x01020424, 0x32020402, \
0x02240000, 0x00000104, 0x02020804, 0x00000400
var_80B74088: .word 0x00000000
var_80B7408C: .word 0xB0F80BB8, 0x89170058, 0xB86CFF38, 0x304C07D0
var_80B7409C: .word \
0x451C4000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80B740B0: .word 0x3F59999A
var_80B740B4: .word 0x3E19999A
var_80B740B8: .word 0x3CF5C28F
var_80B740BC: .word 0x3DCCCCCD
var_80B740C0: .word 0x3DCCCCCD
var_80B740C4: .word 0x461C4000
var_80B740C8: .word 0x3BC49BA6
var_80B740CC: .word 0x3B03126F
var_80B740D0: .word 0x3CF5C28F
var_80B740D4: .word 0x3C23D70A
var_80B740D8: .word 0x3DCCCCCD
var_80B740DC: .word 0x3F490FDB
var_80B740E0: .word 0x3F490FDB, 0x00000000, 0x00000000, 0x00000000

