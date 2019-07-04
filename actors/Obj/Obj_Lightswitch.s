.section .text
func_80ABC320:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0028($sp)            
    jal     func_8004A484              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80ABD5F4)      # a3 = 80AC0000
    addiu   t6, s0, 0x0160             # t6 = 00000160
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80ABD5F4)  # a3 = 80ABD5F4
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0028($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x0024(s0)           # 00000024
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x002C(s0)             # 0000002C
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    jal     func_800AB510              
    add.s   $f14, $f10, $f8            
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4              
    lw      a1, 0x0028($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC3BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x001C(a3)             # 0000001C
    sw      a3, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80ABC46C    
    lw      a3, 0x0028($sp)            
    lh      v0, 0x001C(a3)             # 0000001C
    sw      a3, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    sra     v1, v0,  4                 
    andi    v1, v1, 0x0003             # v1 = 00000000
    sra     a1, v0,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0              
    sw      v1, 0x0020($sp)            
    lw      v1, 0x0020($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a3, 0x0028($sp)            
    bne     v1, $at, lbl_80ABC43C      
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_8006BB7C              
    addiu   a2, $zero, 0x4807          # a2 = 00004807
    beq     $zero, $zero, lbl_80ABC470 
    lw      $ra, 0x001C($sp)           
lbl_80ABC43C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_80ABC460      
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_8006BB7C              
    addiu   a2, $zero, 0x4806          # a2 = 00004806
    beq     $zero, $zero, lbl_80ABC470 
    lw      $ra, 0x001C($sp)           
lbl_80ABC460:
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_8006BB7C              
    addiu   a2, $zero, 0x4802          # a2 = 00004802
lbl_80ABC46C:
    lw      $ra, 0x001C($sp)           
lbl_80ABC470:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC480:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ABC4F0    
    lw      t7, 0x0018($sp)            
    lh      a1, 0x001C(t7)             # 0000001C
    lw      a0, 0x001C($sp)            
    sra     a1, a1,  8                 
    jal     func_80020510              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t8, 0x0018($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x001C($sp)            
    lh      t9, 0x001C(t8)             # 0000001C
    or      a1, t8, $zero              # a1 = 00000000
    sra     t0, t9,  4                 
    andi    t1, t0, 0x0003             # t1 = 00000000
    bnel    t1, $at, lbl_80ABC4F4      
    lw      $ra, 0x0014($sp)           
    jal     func_8006BB7C              
    addiu   a2, $zero, 0x4807          # a2 = 00004807
lbl_80ABC4F0:
    lw      $ra, 0x0014($sp)           
lbl_80ABC4F4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC500:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      a1, 0x0084($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0070($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x006C($sp)           
    lh      v0, 0x01AC(s0)             # 000001AC
    slti    $at, v0, 0x1900            
    bnel    $at, $zero, lbl_80ABC718   
    lw      $ra, 0x004C($sp)           
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    cvt.s.w $f6, $f4                   
    lui     $at, %hi(var_80ABD640)     # $at = 80AC0000
    lwc1    $f8, %lo(var_80ABD640)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x43C8                # $at = 43C80000
    mul.s   $f10, $f6, $f8             
    mtc1    $at, $f8                   # $f8 = 400.00
    sub.s   $f6, $f4, $f10             
    mul.s   $f0, $f6, $f8              
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80ABC58C               
    mov.s   $f14, $f0                  
    beq     $zero, $zero, lbl_80ABC58C 
    mov.s   $f14, $f2                  
    mov.s   $f14, $f0                  
lbl_80ABC58C:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f14, 0x0058($sp)          
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f14, 0x0058($sp)          
    sub.s   $f4, $f14, $f16            
    add.s   $f10, $f4, $f16            
    mul.s   $f2, $f0, $f10             
    c.lt.s  $f16, $f2                  
    sub.s   $f12, $f2, $f16            
    bc1f    lbl_80ABC5C4               
    swc1    $f12, 0x0064($sp)          
    beq     $zero, $zero, lbl_80ABC5FC 
    mov.s   $f2, $f16                  
lbl_80ABC5C4:
    mul.s   $f8, $f12, $f12            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f6                   # $f6 = 900.00
    nop
    sub.s   $f2, $f6, $f8              
    c.lt.s  $f2, $f14                  
    nop
    bc1fl   lbl_80ABC5F8               
    sqrt.s  $f0, $f2                   
    mov.s   $f2, $f14                  
    sqrt.s  $f0, $f2                   
lbl_80ABC5F8:
    mov.s   $f2, $f0                   
lbl_80ABC5FC:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0068($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f2, 0x0068($sp)           
    sub.s   $f10, $f0, $f4             
    mul.s   $f12, $f10, $f2            
    add.s   $f2, $f12, $f12            
    abs.s   $f14, $f2                  
    swc1    $f2, 0x0068($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f14, 0x0058($sp)          
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f14, 0x0058($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    sub.s   $f6, $f16, $f14            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f2, 0x0068($sp)           
    lui     a2, %hi(var_80ABD624)      # a2 = 80AC0000
    mul.s   $f4, $f6, $f8              
    lwc1    $f6, 0x0070($sp)           
    addiu   a2, a2, %lo(var_80ABD624)  # a2 = 80ABD624
    mul.s   $f10, $f0, $f18            
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00A0          # t9 = 000000A0
    addiu   t0, $zero, 0x00A0          # t0 = 000000A0
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    add.s   $f12, $f10, $f4            
    lwc1    $f10, 0x006C($sp)          
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    mul.s   $f8, $f12, $f6             
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    or      a3, a2, $zero              # a3 = 80ABD624
    mul.s   $f4, $f2, $f10             
    lw      a0, 0x0084($sp)            
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    add.s   $f8, $f8, $f4              
    lwc1    $f4, 0x0024(s0)            # 00000024
    add.s   $f4, $f4, $f8              
    swc1    $f4, 0x0074($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0064($sp)           
    add.s   $f8, $f8, $f4              
    add.s   $f4, $f8, $f18             
    mul.s   $f8, $f12, $f10            
    swc1    $f4, 0x0078($sp)           
    mul.s   $f4, $f2, $f6              
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t4, 0x003C($sp)            
    sw      t3, 0x0038($sp)            
    sw      t2, 0x0034($sp)            
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sub.s   $f10, $f8, $f4             
    sw      t1, 0x0028($sp)            
    sw      t0, 0x0024($sp)            
    sw      t9, 0x0020($sp)            
    add.s   $f8, $f6, $f10             
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x007C($sp)           
    jal     func_8001E1D4              
    sw      t6, 0x0010($sp)            
    lw      $ra, 0x004C($sp)           
lbl_80ABC718:
    lw      s0, 0x0048($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC728:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0054($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0054($sp)            
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     a1, %hi(var_80ABD630)      # a1 = 80AC0000
    sw      v0, 0x0048($sp)            
    sw      $zero, 0x0044($sp)         
    addiu   a1, a1, %lo(var_80ABD630)  # a1 = 80ABD630
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t6, 0x0048($sp)            
    beq     t6, $zero, lbl_80ABC7B4    
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sra     t7, v0,  4                 
    andi    t8, t7, 0x0003             # t8 = 00000000
    bne     t8, $at, lbl_80ABC7A4      
    nop
    beq     $zero, $zero, lbl_80ABC7C0 
    sw      t9, 0x0044($sp)            
lbl_80ABC7A4:
    jal     func_80ABCB14              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABC7C0 
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80ABC7B4:
    jal     func_80ABC8E8              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80ABC7C0:
    andi    t0, v0, 0x0001             # t0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t0, $at, lbl_80ABC874      
    lw      t1, 0x0048($sp)            
    beq     t1, $zero, lbl_80ABC7F4    
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a1, %hi(var_80ABD618)      # a1 = 80AC0000
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, %lo(var_80ABD618)  # a1 = 80ABD618
    lui     a1, %hi(var_80ABD618)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80ABD618)  # a1 = 80ABD618
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x0008             # a0 = 00000008
lbl_80ABC7F4:
    lw      a2, 0x0054($sp)            
    addiu   t2, $zero, 0xC000          # t2 = FFFFC000
    sh      t2, 0x00B4(s0)             # 000000B4
    lh      v0, 0x00B4(s0)             # 000000B4
    sh      $zero, 0x00B8(s0)          # 000000B8
    lw      t3, 0x0004(s0)             # 00000004
    sh      v0, 0x0014(s0)             # 00000014
    sh      v0, 0x0030(s0)             # 00000030
    lh      v0, 0x00B8(s0)             # 000000B8
    lwc1    $f4, 0x0008(s0)            # 00000008
    ori     t4, t3, 0x0020             # t4 = 00000020
    sw      t4, 0x0004(s0)             # 00000004
    sh      v0, 0x0018(s0)             # 00000018
    sh      v0, 0x0034(s0)             # 00000034
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x000C(s0)            # 0000000C
    addiu   t6, $zero, 0xFF00          # t6 = FFFFFF00
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x0010(s0)            # 00000010
    sw      $zero, 0x001C($sp)         
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    swc1    $f8, 0x0018($sp)           
    lh      t5, 0x0016(s0)             # 00000016
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0              
    sw      t5, 0x0020($sp)            
    bne     v0, $zero, lbl_80ABC874    
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0044($sp)            
lbl_80ABC874:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABC320              
    lw      a1, 0x0054($sp)            
    lui     a2, %hi(var_80ABD604)      # a2 = 80AC0000
    addiu   a2, a2, %lo(var_80ABD604)  # a2 = 80ABD604
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t8, 0x0044($sp)            
    beql    t8, $zero, lbl_80ABC8AC    
    lw      $ra, 0x003C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)           
lbl_80ABC8AC:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC8BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a3, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC8E8:
    addiu   v0, $zero, 0x3FC0          # v0 = 00003FC0
    lui     t6, %hi(func_80ABC91C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABC91C) # t6 = 80ABC91C
    addiu   t7, $zero, 0x26C0          # t7 = 000026C0
    addiu   t8, $zero, 0x1F40          # t8 = 00001F40
    sw      t6, 0x013C(a0)             # 0000013C
    sh      $zero, 0x01A4(a0)          # 000001A4
    sh      t7, 0x01A6(a0)             # 000001A6
    sh      t8, 0x01A8(a0)             # 000001A8
    sh      v0, 0x01AA(a0)             # 000001AA
    sh      v0, 0x01AC(a0)             # 000001AC
    jr      $ra                        
    nop


func_80ABC91C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v0, v0,  4                 
    andi    v0, v0, 0x0003             # v0 = 00000000
    beql    v0, $zero, lbl_80ABC964    
    lbu     t6, 0x0151(a0)             # 00000151
    beq     v0, $at, lbl_80ABC98C      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80ABC960      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80ABC9CC      
    lbu     t2, 0x0151(a0)             # 00000151
    beq     $zero, $zero, lbl_80ABC9F0 
    lw      $ra, 0x0014($sp)           
lbl_80ABC960:
    lbu     t6, 0x0151(a0)             # 00000151
lbl_80ABC964:
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80ABC9F0    
    lw      $ra, 0x0014($sp)           
    jal     func_80ABC9FC              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80ABC3BC              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80ABC9F0 
    lw      $ra, 0x0014($sp)           
lbl_80ABC98C:
    lbu     t8, 0x0151(a0)             # 00000151
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80ABC9F0    
    lw      $ra, 0x0014($sp)           
    lbu     t0, 0x01B2(a0)             # 000001B2
    andi    t1, t0, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_80ABC9F0    
    lw      $ra, 0x0014($sp)           
    jal     func_80ABC9FC              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80ABC3BC              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80ABC9F0 
    lw      $ra, 0x0014($sp)           
    lbu     t2, 0x0151(a0)             # 00000151
lbl_80ABC9CC:
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80ABC9F0    
    lw      $ra, 0x0014($sp)           
    jal     func_80ABCD80              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80ABC3BC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80ABC9F0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABC9FC:
    lui     t6, %hi(func_80ABCA20)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABCA20) # t6 = 80ABCA20
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x01A2(a0)             # 000001A2
    sh      $zero, 0x01A0(a0)          # 000001A0
    sh      $zero, 0x01A4(a0)          # 000001A4
    jr      $ra                        
    nop


func_80ABCA20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80049DA4              
    nop
    lbu     t6, 0x0002(s0)             # 00000002
    beql    v0, t6, lbl_80ABCA58       
    lh      v1, 0x01A0(s0)             # 000001A0
    lh      t7, 0x01A2(s0)             # 000001A2
    bgtzl   t7, lbl_80ABCB04           
    lw      $ra, 0x001C($sp)           
    lh      v1, 0x01A0(s0)             # 000001A0
lbl_80ABCA58:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $zero, lbl_80ABCA74    
    addiu   t8, v1, 0x0001             # t8 = 00000001
    jal     func_80022FD0              
    addiu   a1, $zero, 0x286F          # a1 = 0000286F
    lh      v1, 0x01A0(s0)             # 000001A0
    addiu   t8, v1, 0x0001             # t8 = 00000001
lbl_80ABCA74:
    sh      t8, 0x01A0(s0)             # 000001A0
    addiu   a0, s0, 0x01B0             # a0 = 000001B0
    addiu   a1, $zero, 0xFF56          # a1 = FFFFFF56
    jal     func_800637D4              
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lh      v1, 0x01A0(s0)             # 000001A0
    lh      t9, 0x01AE(s0)             # 000001AE
    lh      t0, 0x01B0(s0)             # 000001B0
    sll     t4, v1,  2                 
    subu    t4, t4, v1                 
    sll     t4, t4,  2                 
    sll     t2, v1,  2                 
    addu    t2, t2, v1                 
    addu    t4, t4, v1                 
    sll     t2, t2,  6                 
    sll     t4, t4,  5                 
    addiu   t3, t2, 0x26C0             # t3 = 000026C0
    addiu   t5, t4, 0x1F40             # t5 = 00001F40
    slti    $at, v1, 0x0014            
    addu    t1, t9, t0                 
    sh      t1, 0x01AE(s0)             # 000001AE
    sh      t3, 0x01A6(s0)             # 000001A6
    bne     $at, $zero, lbl_80ABCAE4   
    sh      t5, 0x01A8(s0)             # 000001A8
    jal     func_80ABCB14              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABCB04 
    lw      $ra, 0x001C($sp)           
lbl_80ABCAE4:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v1, $at, lbl_80ABCB00      
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x01A4(s0)             # 000001A4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2815          # a1 = 00002815
lbl_80ABCB00:
    lw      $ra, 0x001C($sp)           
lbl_80ABCB04:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABCB14:
    addiu   v0, $zero, 0x3FC0          # v0 = 00003FC0
    lui     t6, %hi(func_80ABCB50)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABCB50) # t6 = 80ABCB50
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0xFF56          # t8 = FFFFFF56
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x01A4(a0)             # 000001A4
    sh      v0, 0x01A6(a0)             # 000001A6
    sh      v0, 0x01A8(a0)             # 000001A8
    sh      v0, 0x01AA(a0)             # 000001AA
    sh      v0, 0x01AC(a0)             # 000001AC
    sh      t8, 0x01B0(a0)             # 000001B0
    sh      $zero, 0x01A0(a0)          # 000001A0
    jr      $ra                        
    nop


func_80ABCB50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    sra     v0, v1,  4                 
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $zero, lbl_80ABCB98    
    sra     a1, v1,  8                 
    beq     v0, $at, lbl_80ABCBB8      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80ABCBFC      
    lbu     t0, 0x0151(s0)             # 00000151
    beq     $zero, $zero, lbl_80ABCC48 
    lh      t3, 0x01AE(s0)             # 000001AE
lbl_80ABCB98:
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    bnel    v0, $zero, lbl_80ABCC48    
    lh      t3, 0x01AE(s0)             # 000001AE
    jal     func_80ABCC64              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABCC48 
    lh      t3, 0x01AE(s0)             # 000001AE
lbl_80ABCBB8:
    lbu     t6, 0x0151(s0)             # 00000151
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80ABCC48    
    lh      t3, 0x01AE(s0)             # 000001AE
    lbu     t8, 0x01B2(s0)             # 000001B2
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80ABCC48    
    lh      t3, 0x01AE(s0)             # 000001AE
    jal     func_80ABCC64              
    sw      a2, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80ABC480              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABCC48 
    lh      t3, 0x01AE(s0)             # 000001AE
    lbu     t0, 0x0151(s0)             # 00000151
lbl_80ABCBFC:
    andi    t1, t0, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_80ABCC44    
    sh      $zero, 0x01A0(s0)          # 000001A0
    lh      v0, 0x01A0(s0)             # 000001A0
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0x0007            
    bne     $at, $zero, lbl_80ABCC38   
    addiu   t2, v0, 0x0001             # t2 = 00000001
    jal     func_80ABCC64              
    sw      a2, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80ABC480              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABCC48 
    lh      t3, 0x01AE(s0)             # 000001AE
lbl_80ABCC38:
    beq     $zero, $zero, lbl_80ABCC44 
    sh      t2, 0x01A0(s0)             # 000001A0
    sh      $zero, 0x01A0(s0)          # 000001A0
lbl_80ABCC44:
    lh      t3, 0x01AE(s0)             # 000001AE
lbl_80ABCC48:
    lh      t4, 0x01B0(s0)             # 000001B0
    addu    t5, t3, t4                 
    sh      t5, 0x01AE(s0)             # 000001AE
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80ABCC64:
    lui     t6, %hi(func_80ABCC90)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABCC90) # t6 = 80ABCC90
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x01A2(a0)             # 000001A2
    sh      t8, 0x01A0(a0)             # 000001A0
    sh      t9, 0x01A4(a0)             # 000001A4
    jr      $ra                        
    nop


func_80ABCC90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t7, t6,  4                 
    andi    t8, t7, 0x0003             # t8 = 00000000
    bnel    t8, $at, lbl_80ABCCE0      
    lh      t1, 0x01A0(a3)             # 000001A0
    jal     func_80049DA4              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lbu     t9, 0x0002(a3)             # 00000002
    beql    v0, t9, lbl_80ABCCE0       
    lh      t1, 0x01A0(a3)             # 000001A0
    lh      t0, 0x01A2(a3)             # 000001A2
    bgtzl   t0, lbl_80ABCD74           
    lw      $ra, 0x0014($sp)           
    lh      t1, 0x01A0(a3)             # 000001A0
lbl_80ABCCE0:
    addiu   a0, a3, 0x01B0             # a0 = 000001B0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01A0(a3)             # 000001A0
    sw      a3, 0x0018($sp)            
    jal     func_800637D4              
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      a3, 0x0018($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lh      v1, 0x01A0(a3)             # 000001A0
    lh      t3, 0x01AE(a3)             # 000001AE
    lh      t4, 0x01B0(a3)             # 000001B0
    sll     t8, v1,  2                 
    subu    t8, t8, v1                 
    sll     t8, t8,  2                 
    sll     t6, v1,  2                 
    addu    t6, t6, v1                 
    addu    t8, t8, v1                 
    sll     t6, t6,  6                 
    sll     t8, t8,  5                 
    addiu   t7, t6, 0x26C0             # t7 = 000026C0
    addiu   t9, t8, 0x1F40             # t9 = 00001F40
    addu    t5, t3, t4                 
    sh      t5, 0x01AE(a3)             # 000001AE
    sh      t7, 0x01A6(a3)             # 000001A6
    bgtz    v1, lbl_80ABCD5C           
    sh      t9, 0x01A8(a3)             # 000001A8
    jal     func_80ABC8E8              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABCD74 
    lw      $ra, 0x0014($sp)           
lbl_80ABCD5C:
    bne     v1, $at, lbl_80ABCD70      
    or      a0, a3, $zero              # a0 = 00000000
    sh      $zero, 0x01A4(a3)          # 000001A4
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2815          # a1 = 00002815
lbl_80ABCD70:
    lw      $ra, 0x0014($sp)           
lbl_80ABCD74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABCD80:
    lui     t6, %hi(func_80ABCD9C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABCD9C) # t6 = 80ABCD9C
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x01A2(a0)             # 000001A2
    jr      $ra                        
    nop


func_80ABCD9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80049DA4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lbu     t6, 0x0002(a0)             # 00000002
    beq     v0, t6, lbl_80ABCDCC       
    nop
    lh      t7, 0x01A2(a0)             # 000001A2
    bgtzl   t7, lbl_80ABCDD8           
    lw      $ra, 0x0014($sp)           
lbl_80ABCDCC:
    jal     func_80ABCDE4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80ABCDD8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABCDE4:
    lui     t6, %hi(func_80ABCE00)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80ABCE00) # t6 = 80ABCE00
    addiu   t7, $zero, 0x3FC0          # t7 = 00003FC0
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x01AC(a0)             # 000001AC
    jr      $ra                        
    nop


func_80ABCE00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01AC(a0)             # 000001AC
    addiu   t7, t6, 0xFF38             # t7 = FFFFFF38
    sh      t7, 0x01AC(a0)             # 000001AC
    jal     func_80ABC500              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t8, 0x01AC(a0)             # 000001AC
    bgezl   t8, lbl_80ABCE38           
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80ABCE38:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80ABCE44:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x01A2(s0)             # 000001A2
    blez    v0, lbl_80ABCE6C           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01A2(s0)             # 000001A2
lbl_80ABCE6C:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t7, 0x0130(s0)             # 00000130
    beql    t7, $zero, lbl_80ABCF18    
    lw      $ra, 0x001C($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t0, t8, 0x0001             # t0 = 00000000
    bnel    t0, $at, lbl_80ABCED8      
    lbu     v0, 0x0151(s0)             # 00000151
    lw      v0, 0x011C(s0)             # 0000011C
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0028(v0)            # 00000028
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x002C(v0)           # 0000002C
    jal     func_80020F04              
    swc1    $f16, 0x002C(s0)           # 0000002C
    lbu     v0, 0x0151(s0)             # 00000151
lbl_80ABCED8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    sb      t1, 0x0151(s0)             # 00000151
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0140             # a2 = 00000140
    sb      v0, 0x01B2(s0)             # 000001B2
    sw      a2, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80ABCF18:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80ABCF28:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x001C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s2, 0x0020($sp)            
    sw      s0, 0x0018($sp)            
    sw      a1, 0x0074($sp)            
    lw      t6, 0x0074($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    or      s2, a0, $zero              # s2 = 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s2)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x01AA(s1)             # 000001AA
    lh      t5, 0x01A6(s1)             # 000001A6
    sra     t2, t9,  6                 
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sra     t8, t5,  6                 
    lh      t2, 0x01A8(s1)             # 000001A8
    sll     t9, t8, 24                 
    sll     t4, t3,  8                 
    or      t1, t4, t9                 # t1 = 00000000
    lh      t4, 0x01AC(s1)             # 000001AC
    sra     t5, t2,  6                 
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t7, t6, 16                 
    sra     t2, t4,  6                 
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t8, t1, t7                 # t8 = 00000008
    or      t5, t8, t3                 # t5 = 00000008
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s2)             # 000002C0
    addiu   t7, t7, 0x8520             # t7 = 800E8520
    ori     t1, t1, 0x0024             # t1 = DB060024
    sw      t1, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lh      t4, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t9, t4, 0x0001             # t9 = 00000000
    bnel    t9, $at, lbl_80ABD050      
    lwc1    $f18, 0x0024(s1)           # 00000024
    lw      v0, 0x011C(s1)             # 0000011C
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    addiu   a1, s1, 0x0024             # a1 = 00000024
    swc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f6, 0x0028(v0)            # 00000028
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s1)           # 00000028
    lwc1    $f16, 0x002C(v0)           # 0000002C
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f16, 0x002C(s1)           # 0000002C
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    lw      a2, 0x0068($sp)            
    jal     func_800AB510              
    addiu   a3, s1, 0x00B4             # a3 = 000000B4
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_80ABD078 
    lw      s0, 0x02C0(s2)             # 000002C0
    lwc1    $f18, 0x0024(s1)           # 00000024
lbl_80ABD050:
    swc1    $f18, 0x0060($sp)          
    lwc1    $f6, 0x0054(s1)            # 00000054
    lwc1    $f4, 0x00BC(s1)            # 000000BC
    lwc1    $f10, 0x0028(s1)           # 00000028
    mul.s   $f8, $f4, $f6              
    add.s   $f16, $f10, $f8            
    swc1    $f16, 0x0064($sp)          
    lwc1    $f18, 0x002C(s1)           # 0000002C
    swc1    $f18, 0x0068($sp)          
    lw      s0, 0x02C0(s2)             # 000002C0
lbl_80ABD078:
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s2)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t3, 0x0074($sp)            
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0044($sp)            
    lw      t0, 0x0044($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s2)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lh      t1, 0x01A4(s1)             # 000001A4
    lui     a1, %hi(var_80ABD60C)      # a1 = 80AC0000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t7, t1,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80ABD60C)(a1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, a1,  4                 
    srl     t2, t9, 28                 
    sll     t8, t2,  2                 
    addu    t3, t3, t8                 
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t4, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t4, t3                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0260             # t9 = 06000260
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    lh      t2, 0x00B4(s1)             # 000000B4
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    sh      t2, 0x0058($sp)            
    lh      t8, 0x00B6(s1)             # 000000B6
    lw      a2, 0x0068($sp)            
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
    sh      t8, 0x005A($sp)            
    lh      t3, 0x01AE(s1)             # 000001AE
    lh      t4, 0x00B8(s1)             # 000000B8
    addu    t5, t4, t3                 
    jal     func_800AB510              
    sh      t5, 0x005C($sp)            
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t7, 0x0074($sp)            
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0038($sp)            
    lw      a1, 0x0038($sp)            
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0398             # t8 = 06000398
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s2)             # 000002C0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lh      t4, 0x00B8(s1)             # 000000B8
    lh      t3, 0x01AE(s1)             # 000001AE
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    subu    t5, t4, t3                 
    sh      t5, 0x005C($sp)            
    jal     func_800AB510              
    lw      a2, 0x0068($sp)            
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02C0(s2)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      t1, 0x0000(s1)             # 00000000
    lw      t7, 0x0074($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0408             # t8 = 06000408
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s2)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80ABD254:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x001C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s2, 0x0020($sp)            
    sw      s0, 0x0018($sp)            
    sw      a1, 0x0074($sp)            
    lw      t6, 0x0074($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    or      s2, a0, $zero              # s2 = 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x01AA(s1)             # 000001AA
    lh      t5, 0x01A6(s1)             # 000001A6
    sra     t2, t9,  6                 
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sra     t8, t5,  6                 
    lh      t2, 0x01A8(s1)             # 000001A8
    sll     t9, t8, 24                 
    sll     t4, t3,  8                 
    or      t1, t4, t9                 # t1 = 00000000
    lh      t4, 0x01AC(s1)             # 000001AC
    sra     t5, t2,  6                 
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t7, t6, 16                 
    sra     t2, t4,  6                 
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t8, t1, t7                 # t8 = 00000008
    or      t5, t8, t3                 # t5 = 00000008
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    addiu   t7, t7, 0x8510             # t7 = 800E8510
    ori     t1, t1, 0x0024             # t1 = DB060024
    sw      t1, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lwc1    $f4, 0x0024(s1)            # 00000024
    swc1    $f4, 0x0060($sp)           
    lwc1    $f8, 0x0054(s1)            # 00000054
    lwc1    $f6, 0x00BC(s1)            # 000000BC
    lwc1    $f16, 0x0028(s1)           # 00000028
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x0064($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    swc1    $f4, 0x0068($sp)           
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t2, 0x0074($sp)            
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0044($sp)            
    lw      t0, 0x0044($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lh      t5, 0x01A4(s1)             # 000001A4
    lui     a1, %hi(var_80ABD60C)      # a1 = 80AC0000
    lui     t2, 0x8012                 # t2 = 80120000
    sll     t6, t5,  2                 
    addu    a1, a1, t6                 
    lw      a1, %lo(var_80ABD60C)(a1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a1,  4                 
    srl     t4, t7, 28                 
    sll     t9, t4,  2                 
    addu    t2, t2, t9                 
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t1, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t1, t2                 
    addu    t3, t8, $at                
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0260             # t7 = 06000260
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lh      t4, 0x00B4(s1)             # 000000B4
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    sh      t4, 0x0058($sp)            
    lh      t9, 0x00B6(s1)             # 000000B6
    lw      a2, 0x0068($sp)            
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
    sh      t9, 0x005A($sp)            
    lh      t2, 0x01AE(s1)             # 000001AE
    lh      t1, 0x00B8(s1)             # 000000B8
    addu    t8, t1, t2                 
    jal     func_800AB510              
    sh      t8, 0x005C($sp)            
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t6, 0x0074($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0038($sp)            
    lw      a1, 0x0038($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0398             # t9 = 06000398
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lh      t1, 0x00B8(s1)             # 000000B8
    lh      t2, 0x01AE(s1)             # 000001AE
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    subu    t8, t1, t2                 
    sh      t8, 0x005C($sp)            
    jal     func_800AB510              
    lw      a2, 0x0068($sp)            
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t3, s1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(s1)             # 00000000
    lw      t6, 0x0074($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t6)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0408             # t9 = 06000408
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80ABD508:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v1, 0x01AC(a2)             # 000001AC
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v1, v1,  6                 
    andi    t6, v0, 0x0001             # t6 = 00000000
    bne     t6, $at, lbl_80ABD55C      
    andi    v1, v1, 0x00FF             # v1 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    sw      v1, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    jal     func_80050CE4              
    sw      a3, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      v1, 0x0018($sp)            
    lw      a3, 0x0024($sp)            
    lh      v0, 0x001C(a2)             # 0000001C
lbl_80ABD55C:
    sra     t7, v0,  4                 
    andi    t8, t7, 0x0003             # t8 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t8, $at, lbl_80ABD594      
    or      a0, a2, $zero              # a0 = 00000000
    bgtz    v1, lbl_80ABD580           
    slti    $at, v1, 0x00FF            
    beq     $at, $zero, lbl_80ABD594   
    nop
lbl_80ABD580:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80ABD254              
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80ABD5A0 
    lw      $ra, 0x0014($sp)           
lbl_80ABD594:
    jal     func_80ABCF28              
    or      a1, a3, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80ABD5A0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80ABD5B0: .word 0x01500000, 0x00000010, 0x012A0000, 0x000001B4
.word func_80ABC728
.word func_80ABC8BC
.word func_80ABCE44
.word func_80ABD508
var_80ABD5D0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00200000, \
0x00000000, 0x00010100, 0x00000000, 0x00000000, \
0x00130064
var_80ABD5F4: .word 0x0A000939, 0x20000000, 0x00000001
.word var_80ABD5D0
var_80ABD604: .word 0x0000000C, 0x003CFF00
var_80ABD60C: .word 0x06000C20, 0x06000420, 0x06001420
var_80ABD618: .word 0xC4D56000, 0x4452C000, 0xC3340000
var_80ABD624: .word 0x00000000, 0x00000000, 0x00000000
var_80ABD630: .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8

.section .rodata

var_80ABD640: .word 0x38808081, 0x00000000, 0x00000000, 0x00000000

