.section .text
func_80A60750:
    sw      a1, 0x0158(a0)             # 00000158
    jr      $ra                        
    nop


func_80A6075C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A62510)      # a1 = 80A60000
    addiu   a1, a1, %lo(var_80A62510)  # a1 = 80A62510
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     a1, %hi(func_80A607FC)     # a1 = 80A60000
    sh      $zero, 0x013C(s0)          # 0000013C
    addiu   a1, a1, %lo(func_80A607FC) # a1 = 80A607FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A60750              
    swc1    $f4, 0x0150(s0)            # 00000150
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sb      t6, 0x0140(s0)             # 00000140
    sh      $zero, 0x013E(s0)          # 0000013E
    swc1    $f6, 0x0154(s0)            # 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A607D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80072548              
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A607FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    lw      v0, 0x0118(a0)             # 00000118
    beq     v0, $zero, lbl_80A60820    
    nop
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_80A60834    
    lh      v1, 0x013C(a0)             # 0000013C
lbl_80A60820:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80A608E4 
    lw      $ra, 0x0014($sp)           
    lh      v1, 0x013C(a0)             # 0000013C
lbl_80A60834:
    slti    $at, v1, 0x000A            
    beq     $at, $zero, lbl_80A60844   
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x013C(a0)             # 0000013C
lbl_80A60844:
    lw      t9, 0x0024(v0)             # 00000024
    addiu   v1, a0, 0x0024             # v1 = 00000024
    addiu   a1, $zero, 0x007E          # a1 = 0000007E
    sw      t9, 0x0000(v1)             # 00000024
    lw      t8, 0x0028(v0)             # 00000028
    sw      t8, 0x0004(v1)             # 00000028
    lw      t9, 0x002C(v0)             # 0000002C
    sw      t9, 0x0008(v1)             # 0000002C
    lwl     t1, 0x00B4(v0)             # 000000B4
    lwr     t1, 0x00B7(v0)             # 000000B7
    swl     t1, 0x00B4(a0)             # 000000B4
    swr     t1, 0x00B7(a0)             # 000000B7
    lhu     t1, 0x00B8(v0)             # 000000B8
    sh      t1, 0x00B8(a0)             # 000000B8
    sw      a0, 0x0020($sp)            
    sw      v1, 0x0018($sp)            
    jal     func_8002313C              
    sw      v0, 0x001C($sp)            
    lw      v0, 0x001C($sp)            
    lw      v1, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
    lw      t2, 0x0118(v0)             # 00000118
    bnel    t2, $zero, lbl_80A608E4    
    lw      $ra, 0x0014($sp)           
    lw      t4, 0x0000(v1)             # 00000000
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    lui     a1, %hi(func_80A60B14)     # a1 = 80A60000
    sw      t4, 0x0144(a0)             # 00000144
    lw      t3, 0x0004(v1)             # 00000004
    addiu   a1, a1, %lo(func_80A60B14) # a1 = 80A60B14
    sw      t3, 0x0148(a0)             # 00000148
    lw      t4, 0x0008(v1)             # 00000008
    sh      t5, 0x013C(a0)             # 0000013C
    sw      t4, 0x014C(a0)             # 0000014C
    jal     func_80A60750              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x0140(a0)             # 00000140
    lw      $ra, 0x0014($sp)           
lbl_80A608E4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A608F0:
    mtc1    a2, $f12                   # $f12 = 0.00
    nop
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f2, 0x0004(a0)            # 00000004
    lwc1    $f14, 0x0008(a0)           # 00000008
    sub.s   $f6, $f4, $f0              
    mul.s   $f8, $f6, $f12             
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    sub.s   $f18, $f16, $f2            
    mul.s   $f4, $f18, $f12            
    add.s   $f6, $f2, $f4              
    swc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0008(a1)            # 00000008
    sub.s   $f10, $f8, $f14            
    mul.s   $f16, $f10, $f12           
    add.s   $f18, $f14, $f16           
    swc1    $f18, 0x0008(a0)           # 00000008
    jr      $ra                        
    nop


func_80A60948:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f0, 0x00F0(a0)            # 000000F0
    lui     $at, %hi(var_80A62528)     # $at = 80A60000
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80A60984               
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    beq     $zero, $zero, lbl_80A609C8 
    lhu     v1, 0x013E(a0)             # 0000013E
lbl_80A60984:
    lwc1    $f4, %lo(var_80A62528)($at) 
    lui     $at, %hi(var_80A6252C)     # $at = 80A60000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A609B0               
    sub.s   $f6, $f0, $f2              
    lui     $at, 0x439B                # $at = 439B0000
    mtc1    $at, $f12                  # $f12 = 310.00
    beq     $zero, $zero, lbl_80A609C8 
    lhu     v1, 0x013E(a0)             # 0000013E
    sub.s   $f6, $f0, $f2              
lbl_80A609B0:
    lwc1    $f8, %lo(var_80A6252C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    mul.s   $f10, $f6, $f8             
    add.s   $f12, $f10, $f16           
    lhu     v1, 0x013E(a0)             # 0000013E
lbl_80A609C8:
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    beq     v1, $zero, lbl_80A60A74    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    andi    v1, t6, 0xFFFF             # v1 = 0000FFFF
    slti    $at, v1, 0x0008            
    sh      t6, 0x013E(a0)             # 0000013E
    bne     $at, $zero, lbl_80A60A74   
    or      v0, v1, $zero              # v0 = 0000FFFF
    addiu   t7, v0, 0xFFF8             # t7 = 0000FFF7
    mtc1    t7, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80A62530)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A62530)($at) 
    cvt.s.w $f4, $f18                  
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f0, $f4, $f6              
    lwc1    $f2, 0x0150(a0)            # 00000150
    sll     t0, v0,  3                 
    addu    t0, t0, v0                 
    sll     t0, t0,  2                 
    subu    t0, t0, v0                 
    addiu   t1, t0, 0xFEE8             # t1 = FFFFFEE8
    mul.s   $f0, $f0, $f0              
    sub.s   $f10, $f8, $f0             
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     $at, %hi(var_80A62534)     # $at = 80A60000
    mul.s   $f16, $f10, $f12           
    sub.s   $f10, $f8, $f2             
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    sh      t9, 0x013C(a0)             # 0000013C
    lwc1    $f16, %lo(var_80A62534)($at) 
    slti    $at, v0, 0x0010            
    mul.s   $f18, $f10, $f16           
    add.s   $f4, $f2, $f18             
    beq     $at, $zero, lbl_80A60A74   
    swc1    $f4, 0x0150(a0)            # 00000150
    sb      t1, 0x0140(a0)             # 00000140
lbl_80A60A74:
    slti    $at, v1, 0x0009            
    bne     $at, $zero, lbl_80A60AB4   
    or      v0, v1, $zero              # v0 = 0000FFFF
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f0, 0x0154(a0)            # 00000154
    lui     $at, 0x3E80                # $at = 3E800000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A60AE4               
    slti    $at, v0, 0x0008            
    mtc1    $at, $f8                   # $f8 = 0.25
    lhu     v0, 0x013E(a0)             # 0000013E
    add.s   $f10, $f0, $f8             
    beq     $zero, $zero, lbl_80A60AE0 
    swc1    $f10, 0x0154(a0)           # 00000154
lbl_80A60AB4:
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3E00                # $at = 3E000000
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80A60AE4               
    slti    $at, v0, 0x0008            
    mtc1    $at, $f18                  # $f18 = 0.13
    lhu     v0, 0x013E(a0)             # 0000013E
    sub.s   $f4, $f0, $f18             
    swc1    $f4, 0x0154(a0)            # 00000154
lbl_80A60AE0:
    slti    $at, v0, 0x0008            
lbl_80A60AE4:
    beq     $at, $zero, lbl_80A60AF4   
    nop
    sb      $zero, 0x0140(a0)          # 00000140
    lhu     v0, 0x013E(a0)             # 0000013E
lbl_80A60AF4:
    bnel    v0, $zero, lbl_80A60B08    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    sh      t2, 0x013E(a0)             # 0000013E
    lw      $ra, 0x0014($sp)           
lbl_80A60B08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A60B14:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80A60B40    
    nop
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_80A60B54    
    lw      t8, 0x0024(v0)             # 00000024
lbl_80A60B40:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A60C58 
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x0024(v0)             # 00000024
lbl_80A60B54:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a0, s0, 0x0144             # a0 = 00000144
    sw      t8, 0x0000(a1)             # 00000024
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x0004(a1)             # 00000028
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x0008(a1)             # 0000002C
    lwl     t0, 0x00B4(v0)             # 000000B4
    lwr     t0, 0x00B7(v0)             # 000000B7
    swl     t0, 0x00B4(s0)             # 000000B4
    swr     t0, 0x00B7(s0)             # 000000B7
    lhu     t0, 0x00B8(v0)             # 000000B8
    sh      t0, 0x00B8(s0)             # 000000B8
    sw      a1, 0x0028($sp)            
    sw      a0, 0x0024($sp)            
    jal     func_80063E18              
    sw      v0, 0x0034($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, %hi(var_80A62538)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A62538)($at) 
    lw      v0, 0x0034($sp)            
    lw      a0, 0x0024($sp)            
    mul.s   $f2, $f0, $f4              
    lw      a1, 0x0028($sp)            
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x0150(s0)            # 00000150
    bc1f    lbl_80A60BD4               
    nop
    swc1    $f12, 0x0150(s0)           # 00000150
lbl_80A60BD4:
    jal     func_80A608F0              
    sw      v0, 0x0034($sp)            
    lw      v0, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x0239(v0)             # 00000239
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80A60C24    
    lbu     t5, 0x0238(v0)             # 00000238
    jal     func_80022FD0              
    addiu   a1, $zero, 0x183B          # a1 = 0000183B
    lui     a1, %hi(func_80A60948)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A60948) # a1 = 80A60948
    jal     func_80A60750              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sh      t3, 0x013E(s0)             # 0000013E
    beq     $zero, $zero, lbl_80A60C54 
    sb      t4, 0x0140(s0)             # 00000140
    lbu     t5, 0x0238(v0)             # 00000238
lbl_80A60C24:
    slti    $at, t5, 0x0022            
    beql    $at, $zero, lbl_80A60C58   
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0140(s0)             # 00000140
    slti    $at, v0, 0x0023            
    beq     $at, $zero, lbl_80A60C50   
    addiu   t6, v0, 0xFFE7             # t6 = FFFFFFE7
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A60C58 
    lw      $ra, 0x001C($sp)           
lbl_80A60C50:
    sb      t6, 0x0140(s0)             # 00000140
lbl_80A60C54:
    lw      $ra, 0x001C($sp)           
lbl_80A60C58:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A60C68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1                 
    lbu     v0, 0x03DC(v0)             # 000103DC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_80A60C90      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v0, $at, lbl_80A60CA4      
    lw      t9, 0x0158(a0)             # 00000158
lbl_80A60C90:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80A60CB0 
    lw      $ra, 0x0014($sp)           
    lw      t9, 0x0158(a0)             # 00000158
lbl_80A60CA4:
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A60CB0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A60CBC:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    lw      t6, 0x009C(a1)             # 0000009C
    sw      t6, 0x0070($sp)            
    lw      v1, 0x0118(s1)             # 00000118
    beql    v1, $zero, lbl_80A610BC    
    lw      $ra, 0x003C($sp)           
    lw      t7, 0x0130(v1)             # 00000130
    beql    t7, $zero, lbl_80A610BC    
    lw      $ra, 0x003C($sp)           
    lhu     t8, 0x013E(s1)             # 0000013E
    or      a3, $zero, $zero           # a3 = 00000000
    slti    $at, t8, 0x00FF            
    beql    $at, $zero, lbl_80A610BC   
    lw      $ra, 0x003C($sp)           
    lbu     t9, 0x0239(v1)             # 00000239
    andi    t6, t9, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A60D20    
    or      v0, v1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_80A60D20 
    or      v0, s1, $zero              # v0 = 00000000
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A60D20:
    lw      s0, 0x0000(a1)             # 00000000
    lwc1    $f12, 0x0024(v0)           # 00000024
    lwc1    $f14, 0x0028(v0)           # 00000028
    lw      a2, 0x002C(v0)             # 0000002C
    sw      a1, 0x0084($sp)            
    jal     func_800AA7F4              
    sw      v0, 0x0074($sp)            
    lw      v0, 0x0074($sp)            
    lui     $at, %hi(var_80A6253C)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A6253C)($at) 
    lh      t7, 0x00B6(v0)             # 000000B6
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lw      v0, 0x0074($sp)            
    lui     $at, %hi(var_80A62540)     # $at = 80A60000
    lwc1    $f18, %lo(var_80A62540)($at) 
    lh      t8, 0x00B4(v0)             # 000000B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AA9E0              
    nop
    lw      v0, 0x0074($sp)            
    lui     $at, %hi(var_80A62544)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A62544)($at) 
    lh      t9, 0x00B8(v0)             # 000000B8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lui     $at, %hi(var_80A62548)     # $at = 80A60000
    lwc1    $f12, %lo(var_80A62548)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0154(s1)           # 00000154
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80A60ED0               
    lw      t6, 0x0084($sp)            
    jal     func_8007E008              
    lw      a0, 0x02D0(s0)             # 000002D0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(v0)             # 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f0, 0x0154(s1)            # 00000154
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    mul.s   $f4, $f0, $f18             
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f6, $f4                   
    mul.s   $f4, $f18, $f0             
    mfc1    t6, $f6                    
    trunc.w.s $f16, $f10                 
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sll     t8, t7, 16                 
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f16                   
    nop
    andi    t9, t7, 0x00FF             # t9 = 00000008
    sll     t6, t9,  8                 
    or      t7, t8, t6                 # t7 = 00000008
    mfc1    t6, $f6                    
    nop
    andi    t9, t6, 0x00FF             # t9 = 00000008
    or      t8, t7, t9                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xE300                 # t7 = E3000000
    ori     t7, t7, 0x1A01             # t7 = E3001A01
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0030          # t9 = 00000030
    sw      t9, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1801             # t6 = E3001801
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t7, $zero, 0x00C0          # t7 = 000000C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xF64F                 # t8 = F64F0000
    ori     t8, t8, 0xC3BC             # t8 = F64FC3BC
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      t6, 0x0084($sp)            
lbl_80A60ED0:
    jal     func_8007E2C0              
    lw      a0, 0x0000(t6)             # E3001801
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x8080             # t9 = FA008080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t6, 0x0140(s1)             # 00000140
    lui     $at, 0xAAFF                # $at = AAFF0000
    ori     $at, $at, 0xFF00           # $at = AAFFFF00
    or      t7, t6, $at                # t7 = AAFFFF00
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    ori     t6, $zero, 0xFF80          # t6 = 0000FF80
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lhu     t7, 0x013E(s1)             # 0000013E
    lui     $at, %hi(var_80A6254C)     # $at = 80A60000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     t7, $zero, lbl_80A60F64    
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    beq     $zero, $zero, lbl_80A60F74 
    lh      t9, 0x013C(s1)             # 0000013C
lbl_80A60F64:
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AA7F4              
    lwc1    $f14, %lo(var_80A6254C)($at) 
    lh      t9, 0x013C(s1)             # 0000013C
lbl_80A60F74:
    lui     $at, %hi(var_80A62550)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A62550)($at) 
    mtc1    t9, $f8                    # $f8 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    cvt.s.w $f10, $f8                  
    lwc1    $f18, 0x0150(s1)           # 00000150
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f10, $f16           
    mfc1    a2, $f12                   
    mul.s   $f14, $f18, $f4            
    jal     func_800AA8FC              
    nop
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0xC42F                # $at = C42F0000
    mtc1    $at, $f14                  # $f14 = -700.00
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0084($sp)            
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      t2, 0x0048($sp)            
    lw      t5, 0x0070($sp)            
    addiu   t4, $zero, 0x01FF          # t4 = 000001FF
    lui     s1, 0xDE00                 # s1 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, %hi(var_80A62380)      # t8 = 80A60000
    addiu   t8, t8, %lo(var_80A62380)  # t8 = 80A62380
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    sll     t9, t5,  2                 
    addu    t9, t9, t5                 
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      s1, 0x0000(v1)             # 00000000
    lw      t7, 0x0084($sp)            
    andi    t8, t9, 0x01FF             # t8 = 00000008
    subu    a2, t4, t8                 
    lw      a0, 0x0000(t7)             # 00000000
    sll     t8, t5,  2                 
    addu    t8, t8, t5                 
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    sw      t6, 0x0010($sp)            
    sll     t8, t8,  1                 
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    andi    t6, t8, 0x01FF             # t6 = 00000008
    subu    t1, t4, t6                 
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0028($sp)            
    sw      t7, 0x0024($sp)            
    sw      t1, 0x001C($sp)            
    sw      t1, 0x0020($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0040($sp)            
    lw      t3, 0x0040($sp)            
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_80A62430)      # t6 = 80A60000
    addiu   t6, t6, %lo(var_80A62430)  # t6 = 80A62430
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
lbl_80A610BC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    nop

.section .data

var_80A610D0: .word \
0x00061507, 0x00000000, 0x295A2B08, 0x10030F03, \
0x0D070006, 0x00031625, 0x3F230012, 0x79590000, \
0x00102C2A, 0x254A1B0E, 0xAFF66600, 0x00467E29, \
0x08020000, 0x03383E0B, 0x0501000A, 0x31211C05, \
0x00031C27, 0x4CA92F13, 0xB2EF5500, 0x057EBF37, \
0x00000000, 0x0E493F13, 0x00000002, 0x335C3E03, \
0x00000E07, 0x3C761200, 0x447E2200, 0x00426710, \
0x00000000, 0x071C2208, 0x00000168, 0xE18F0F00, \
0x00060E00, 0x0A100000, 0x0514022D, 0x1B020400, \
0x00000000, 0x093A3F0A, 0x050010AE, 0xDA360000, \
0x00070500, 0x00000000, 0x00001461, 0x3E050024, \
0x24000000, 0x184E3755, 0x9132043C, 0x2F000000, \
0x12020A54, 0x3C000200, 0x00000F3E, 0x2B041159, \
0x2C000000, 0x030B22CE, 0xF9420000, 0x00000301, \
0x371160EF, 0xAC6D2B00, 0x00000008, 0x05000D27, \
0x06000000, 0x00001A91, 0x760B0000, 0x000B030A, \
0x747DB0BD, 0xBDA31D00, 0x00000000, 0x00000000, \
0x00000511, 0x01000209, 0x03020015, 0x583A0010, \
0xC1E0892D, 0x532D0000, 0x03160600, 0x00050001, \
0x15142E4E, 0x07000500, 0x100D004C, 0xB65C001B, \
0xB2DF9417, 0x00000020, 0x57420400, 0x45882F00, \
0x18093B3E, 0x01182F0D, 0x1405003F, 0xB75B001E, \
0x5DC2E14F, 0x00000161, 0xBC4A005A, 0xECF84A00, \
0x0011330F, 0x0044591C, 0x01001C7C, 0xB122001F, \
0x5DE4FF71, 0x00000177, 0xBA3218D9, 0xFFC41700, \
0x1E7B5A1C, 0x2B769635, 0x0044D5FA, 0x9E000530, \
0xC7FFCE35, 0x00000035, 0x663441CF, 0xC9380000, \
0x3D733C28, 0x3E709726, 0x0086FAF1, 0x9B170D4C, \
0xC9812700, 0x000E1A02, 0x4C642544, 0x2B000000, \
0x0D0E0508, 0x0A252F03, 0x00335297, 0xC75B014E, \
0x77470600, 0x00160F00, 0x3A350016, 0x29070000, \
0x0C3A3911, 0x00000003, 0x0100004B, 0x8F4B051C, \
0x7F6C1C00, 0x00000000, 0x00000437, 0x2E030001, \
0x2A6E6B2C, 0x0604000E, 0x0B000004, 0x19350814, \
0x3E63813D, 0x13000000, 0x00000117, 0x06000000, \
0x14362911, 0x312E021F, 0x13000000, 0x010C000C, \
0x10B9EF72, 0x2D010000, 0x040C0C10, 0x02000000, \
0x33410306, 0x3B30071D, 0x07000000, 0x00000000, \
0x1BC2A129, 0x0D000000, 0x050E1112, 0x0100002E, \
0xD2C22E00, 0x21593403, 0x00000000, 0x01010000, \
0x0E451B00, 0x00000000, 0x0000060D, 0x00000061, \
0xFFEA2E00, 0x3DA04200, 0x00000000, 0x06140B00, \
0x00040200, 0x00000000, 0x00061B0C, 0x00000037, \
0x8D620500, 0x2A8F5801, 0x00000000, 0x082E3404, \
0x00000000, 0x00000003, 0x0A201B02, 0x00000000, \
0x06000000, 0x11826503, 0x00060400, 0x07303402, \
0x07010007, 0x2F1E0B0A, 0x09080000, 0x03000000, \
0x00000000, 0x07452500, 0x0E361100, 0x000B0A00, \
0x06000018, 0x3E170600, 0x00060F0D, 0x3E190000, \
0x00000000, 0x00000000, 0x21360700, 0x00000000, \
0x00000007, 0x09000000, 0x0A857124, 0x703C0000, \
0x01000000, 0x00000000, 0x08050000, 0x00000000, \
0x00000000, 0x00000000, 0x32D97112, 0x4A1B0001, \
0x02050000, 0x00000000, 0x021A0A00, 0x00000613, \
0x07000000, 0x00000000, 0x1E5D1700, 0x04000000, \
0x37550400, 0x00000000, 0x14300600, 0x00003E5B, \
0x08000000, 0x00000000, 0x2F2F0000, 0x00000007, \
0x90840300, 0x0F070000, 0x06070000, 0x00055A62, \
0x00000000, 0x00000020, 0xA77B0700, 0x0106000F, \
0x612D0006, 0x1B030000, 0x00000001, 0x0000211A, \
0x00000000, 0x0000002E, 0x944A0103, 0x3B390200, \
0x04000011, 0x14000005, 0x302F0D10, 0x01000000, \
0x00000000, 0x00000009, 0x10000015, 0x5D290000, \
0x00000015, 0x09000027, 0x73510F09, 0x37410700, \
0x00061408, 0x00000000, 0x25582D09, 0x12020E03, \
0x0C070007, 0x00031627, 0x41240011, 0x795B0000, \
0x00102D29, 0x244B1C0D, 0xB0F76600, 0x00467C28, \
0x08020000, 0x02383E0B, 0x0401000A, 0x32231C04, \
0x00031B28, 0x4CA83112, 0xB2EF5500, 0x057EBE38, \
0x00000000, 0x0D493D13, 0x00000002, 0x325C3F03, \
0x00000E08, 0x3D761200, 0x457F2200, 0x0043660F, \
0x00000000, 0x071D2208, 0x00000168, 0xE1901000, \
0x00070E00, 0x09110000, 0x0515022D, 0x1B020400, \
0x00000000, 0x093B3E09, 0x050011AE, 0xD9370000, \
0x00070500, 0x00000000, 0x00001462, 0x3E050024, \
0x25000000, 0x184E3554, 0x9431043C, 0x2E000000, \
0x12010955, 0x3C000300, 0x0000103E, 0x2B04115A, \
0x2D000000, 0x030B22CE, 0xF9420000, 0x00000301, \
0x361161EF, 0xAC6B2B00, 0x00000008, 0x05000D27, \
0x07000000, 0x00001A8F, 0x760B0000, 0x000B030A, \
0x727DB1BD, 0xBCA21C00, 0x00000000, 0x00000000, \
0x00000610, 0x00000208, 0x03030016, 0x57390010, \
0xC1E1892E, 0x522C0000, 0x03160600, 0x00060001, \
0x14142F4E, 0x07000500, 0x100E004B, 0xB55C001B, \
0xB0DD9416, 0x0000001F, 0x57430500, 0x468A3000, \
0x16093B3E, 0x01192F0D, 0x1405003E, 0xB65B001D, \
0x5CC1E04E, 0x0000005E, 0xBC4B0058, 0xEBFA4B00, \
0x0011340E, 0x0045591C, 0x02001C7C, 0xB223001E, \
0x5CE5FF71, 0x00000176, 0xB93216D8, 0xFFC21700, \
0x1D7B5B1C, 0x2B759636, 0x0041D4FC, 0x9D000530, \
0xC7FFCE36, 0x00000036, 0x663540CE, 0xC6360000, \
0x3C743E29, 0x3E719827, 0x0085FAF0, 0x9B160D4E, \
0xC9812600, 0x000F1A03, 0x4B642646, 0x2B000000, \
0x0D0E0608, 0x0A253002, 0x00345299, 0xC85B014E, \
0x75470600, 0x00160F00, 0x39350015, 0x29070000, \
0x0C3A3911, 0x00000003, 0x0100004B, 0x914B051E, \
0x7D6C1C01, 0x00000000, 0x00000437, 0x2E030001, \
0x2A6F6A2A, 0x0604000E, 0x0B000003, 0x1A350814, \
0x3E63813E, 0x13000000, 0x00000118, 0x07000000, \
0x13382911, 0x302E0320, 0x14000000, 0x010D000C, \
0x0FB9EE73, 0x2F000000, 0x040B0C11, 0x02000000, \
0x36440307, 0x3B30071D, 0x07000000, 0x00000000, \
0x1ABF9F29, 0x0E000000, 0x050F1112, 0x0100002D, \
0xD3C42B00, 0x22593404, 0x00000000, 0x01010000, \
0x0E451B00, 0x00000000, 0x0000070C, 0x00000061, \
0xFFED2F00, 0x3EA04300, 0x00000000, 0x05140B00, \
0x00030200, 0x00000000, 0x00061C0B, 0x00000037, \
0x8F640500, 0x2A8F5901, 0x00000000, 0x082D3504, \
0x00000000, 0x00010003, 0x0A201B02, 0x00000000, \
0x07000000, 0x11826503, 0x00050400, 0x072F3503, \
0x07010007, 0x2F1E0C0B, 0x09080000, 0x03000000, \
0x00000000, 0x07462500, 0x0E361100, 0x000B0900, \
0x04000018, 0x3E160600, 0x00060F0B, 0x3D190000, \
0x00000000, 0x00000000, 0x21370600, 0x00000000, \
0x00000007, 0x09000000, 0x0B866F22, 0x713C0000, \
0x02000000, 0x00000000, 0x08060000, 0x00000000, \
0x00000000, 0x00000000, 0x30D76F12, 0x4B1A0001, \
0x02050000, 0x00000000, 0x021A0A00, 0x00000714, \
0x08000000, 0x00000000, 0x1E5C1700, 0x03000000, \
0x36560400, 0x00000000, 0x15300600, 0x00003F5D, \
0x07000000, 0x00000000, 0x2E2F0000, 0x00000008, \
0x8F840300, 0x0F060000, 0x06070000, 0x00065B61, \
0x00000000, 0x00000020, 0xA67C0700, 0x0006000E, \
0x612D0006, 0x1B030000, 0x00000001, 0x0001211B, \
0x00000000, 0x0000002F, 0x93490103, 0x3B390200, \
0x04000011, 0x13000005, 0x2F2E0C11, 0x02000000, \
0x00000000, 0x00000008, 0x14030015, 0x5D2C0000, \
0x00000115, 0x08000027, 0x724F0F0A, 0x353D0600
var_80A618D0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x02030404, 0x04040303, 0x03030303, \
0x03020202, 0x02020201, 0x01010000, 0x00000000, \
0x01010305, 0x090B0D0D, 0x0C0B0A0A, 0x0A0A0B0A, \
0x09080707, 0x07070707, 0x07070705, 0x04030201, \
0x0304070B, 0x11141717, 0x16141313, 0x14151514, \
0x110D0B0B, 0x0C0D0F12, 0x13141413, 0x110C0905, \
0x07070B12, 0x181E2121, 0x201F1F20, 0x2225221D, \
0x17120F0F, 0x13171D23, 0x292D2D2A, 0x2219120A, \
0x07080C13, 0x1B202223, 0x22232629, 0x2C2B261F, \
0x17121112, 0x18202B36, 0x4046453D, 0x3022150C, \
0x07080D15, 0x1C202325, 0x272A2E33, 0x3431281E, \
0x16121217, 0x202E3F4F, 0x595D5A4E, 0x3B27170C, \
0x07090F16, 0x1C202327, 0x2B32383C, 0x3B34291E, \
0x1613161E, 0x2D425866, 0x6D6E6856, 0x3F28160B, \
0x070A1117, 0x1C20252A, 0x333B4245, 0x41382C21, \
0x18161B28, 0x3D586E7A, 0x7D7A6F58, 0x3C231309, \
0x070C1318, 0x1E222932, 0x3C464E4F, 0x4A413529, \
0x1F1D2232, 0x4C6A8189, 0x88816D50, 0x331D0E07, \
0x090F181F, 0x252B343F, 0x4A555E5F, 0x5C524537, \
0x2B272D40, 0x5D7C9197, 0x91816444, 0x29160B07, \
0x0F19222A, 0x323B4550, 0x5D6D787D, 0x796B5B49, \
0x3C373E52, 0x7190A2A2, 0x93785537, 0x20110A0A, \
0x1D28343E, 0x47505A64, 0x738698A1, 0x9C8D7761, \
0x534E566D, 0x8DA6B0A6, 0x8D69472C, 0x190F0E13, \
0x36434F57, 0x5F676E77, 0x869BB0BC, 0xBBAF9A84, \
0x74717D93, 0xADBCBBA5, 0x835E412A, 0x1D1A1E27, \
0x5360696E, 0x73777C82, 0x8C9EB3C5, 0xCECBBEAB, \
0x9F9FA9BC, 0xCACEBFA0, 0x7A593F2F, 0x282B3545, \
0x6F767778, 0x78787A7F, 0x8593A8C2, 0xD6DDDAD2, \
0xCCCBD2DA, 0xDFD7BE9B, 0x775A473C, 0x3A445463, \
0x7E7D7875, 0x716D6D71, 0x78849BBA, 0xD8EAEDED, \
0xEBEBEDED, 0xEBDABB97, 0x7862554F, 0x5562727B, \
0x7F766E67, 0x625D5C5F, 0x697991B2, 0xD6EFF7F5, \
0xF3F4F7F7, 0xEDD5B496, 0x7F70696B, 0x74808787, \
0x796C5F57, 0x514D4C52, 0x5E738EAF, 0xD1EAF1ED, \
0xEBEDF4F4, 0xE6CCB099, 0x8A818087, 0x91959288, \
0x7261534A, 0x4541434A, 0x597290AE, 0xCADCE0DC, \
0xDADDE5E6, 0xD9C2AD9D, 0x9390949D, 0xA2A09584, \
0x6C5A4B41, 0x3B3B3D46, 0x57718EA9, 0xBDC9CBCA, \
0xCACED2CF, 0xC3B3A398, 0x92939AA1, 0xA39D907F, \
0x6955453C, 0x38373C46, 0x58718DA5, 0xB7C1C5C6, \
0xC9CCCAC2, 0xB4A59A91, 0x8D91979D, 0x9E998D7D, \
0x6752423A, 0x38383C46, 0x576F8AA2, 0xB3BFC6CB, \
0xCECCC5B7, 0xA7988D86, 0x83868E95, 0x98968D7D, \
0x644F403B, 0x393A3E47, 0x566C859C, 0xAFBDC7CE, \
0xCEC8BCAA, 0x9A8A7F78, 0x777A838D, 0x94958C7A, \
0x5E4C423E, 0x3E3E4047, 0x54677D94, 0xA9BAC7CD, \
0xC9C0AF9F, 0x8E80746D, 0x6B707A86, 0x91928975, \
0x5A4B4543, 0x43434448, 0x5161768C, 0xA3B5C3C7, \
0xC1B4A394, 0x85776D66, 0x63687480, 0x8C8D836F, \
0x574D4848, 0x4848484A, 0x505D7087, 0x9DB1BDBE, \
0xB6A9998B, 0x7F746A63, 0x62656F7B, 0x84847A67, \
0x554F4D4D, 0x4D4D4E4F, 0x535F6F85, 0x9BAEB8B8, \
0xAFA29488, 0x7E756B65, 0x62656D75, 0x7B797061, \
0x56535353, 0x5556585A, 0x6069788A, 0x9EAEB6B4, \
0xAB9F948A, 0x817A726B, 0x67686B6F, 0x726E665D, \
0x585A5C5E, 0x62676C70, 0x767E8A98, 0xA6B2B6B4, \
0xACA1978E, 0x89837C76, 0x716E6C6C, 0x6A66605C, \
0x5F62686F, 0x7680888F, 0x94999FA7, 0xAFB6B7B5, \
0xAEA49C96, 0x928E8983, 0x7D76716B, 0x67625F5D, \
0x676D7681, 0x8E9BA6AD, 0xB0B1B1B2, 0xB4B7B9B6, \
0xB1A8A29E, 0x9B999590, 0x877F7770, 0x6A656364, \
0x71788392, 0xA3B2BDC3, 0xC3BFBAB7, 0xB6B8B9B7, \
0xB3ABA6A3, 0xA3A19E98, 0x91888079, 0x736E6C6D, \
0x7A818C9C, 0xAFBFC9CE, 0xCBC4BDB7, 0xB7B8BBBA, \
0xB4ACA6A4, 0xA4A5A4A0, 0x9A958F89, 0x837E7A79, \
0x868A94A3, 0xB5C4CED0, 0xCCC5BEBA, 0xBBBFC1BF, \
0xB7AEA8A5, 0xA7A9ABAC, 0xACAAA8A4, 0x9D968D88, \
0x8F9199A7, 0xB7C5CCCD, 0xC9C4C0BF, 0xC3C7C8C2, \
0xB7ADA7A6, 0xA8ADB3BA, 0xBFC3C4BF, 0xB7AB9E94, \
0x97979FAB, 0xB9C3C8C9, 0xC7C5C4C7, 0xCCCFCBC2, \
0xB6ADA8A8, 0xADB5C1CD, 0xD8E0E0D9, 0xCCBBAB9E, \
0x9C9DA4AE, 0xBAC1C5C6, 0xC6C7CAD0, 0xD4D3CBC0, \
0xB5ADABAD, 0xB6C2D2E3, 0xF1F9F8ED, 0xDAC5B2A3, \
0xA2A4ABB4, 0xBBC1C4C5, 0xC8CCD2D7, 0xD8D3CABE, \
0xB4B0B0B6, 0xC1D2E5F7, 0xFFFFFFF5, 0xE0C9B6A9, \
0xA9ABB1B7, 0xBDC1C4C7, 0xCBD1D8DC, 0xDAD4C9BF, \
0xB7B4B7BF, 0xCEE1F5FF, 0xFFFFFFF5, 0xDEC8B7AD, \
0xB0B2B7BC, 0xC0C3C7CB, 0xD1D8DEDF, 0xDCD6CDC4, \
0xBEBBBFC9, 0xD9EDFFFF, 0xFFFFFFEE, 0xD9C6B9B1, \
0xB6BABEC2, 0xC5C8CCD2, 0xD8DFE3E4, 0xE1DBD4CC, \
0xC6C4C8D2, 0xE2F6FFFF, 0xFFFFF7E5, 0xD3C5BBB6, \
0xBEC2C6C9, 0xCDD0D5DA, 0xE1E6EAEB, 0xE9E4DED6, \
0xD0CED1DB, 0xEAFAFFFF, 0xFFFDEEDD, 0xCFC5BFBD, \
0xC7CBCFD3, 0xD6DADEE3, 0xE9EFF4F7, 0xF4EFE7E0, \
0xDBD8DBE4, 0xF2FFFFFF, 0xFFF4E6D8, 0xCEC7C4C4, \
0xD1D5D9DD, 0xE0E3E7EB, 0xF0F7FEFF, 0xFFFAF2EA, \
0xE5E3E6EE, 0xFAFFFFFF, 0xFAEDE0D7, 0xD0CDCCCD, \
0xDCE0E3E6, 0xE9EBEDF0, 0xF5FBFFFF, 0xFFFFFBF4, \
0xEFEEF2F9, 0xFFFFFFFE, 0xF4E8DFD8, 0xD4D3D5D7, \
0xE6E9EBED, 0xEEEFF1F2, 0xF5F9FFFF, 0xFFFFFFFD, \
0xFAFAFDFF, 0xFFFFFFFA, 0xF0E7E1DD, 0xDBDCDEE2, \
0xEDEFEFF0, 0xF0F0F0F1, 0xF2F5FAFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFF7, 0xEFE9E5E2, 0xE2E4E7EB, \
0xF1F1F0F0, 0xEFEEEEEF, 0xF0F3F6FC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDF6, 0xF0ECEAE8, 0xEAECEFF1, \
0xF2F1EFEF, 0xEEEDEDED, 0xEFF1F5FA, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFBF6, 0xF2F0EFEF, 0xF1F2F3F3, \
0xF3F1EFEE, 0xEDEDEDED, 0xEFF2F5FA, 0xFEFFFFFF, \
0xFFFFFFFF, 0xFFFDFAF7, 0xF5F4F4F5, 0xF6F7F6F5, \
0xF3F1F0EF, 0xEEEEEEEF, 0xF1F3F6FA, 0xFDFFFFFF, \
0xFFFFFFFF, 0xFFFCFAF8, 0xF7F6F7F8, 0xF8F8F7F5, \
0xF5F3F2F1, 0xF0F0F0F1, 0xF3F5F8FA, 0xFCFDFDFD, \
0xFDFEFEFE, 0xFDFBFAF9, 0xF8F9F9FA, 0xFAF9F8F7, \
0xF7F5F3F3, 0xF3F2F3F4, 0xF5F7F9FB, 0xFDFDFEFE, \
0xFEFEFEFD, 0xFCFBFAFA, 0xF9FAFAFB, 0xFBFAF9F8, \
0xF8F7F6F5, 0xF5F5F5F6, 0xF7F9FAFC, 0xFDFEFEFF, \
0xFFFFFEFD, 0xFDFBFBFA, 0xFAFAFBFB, 0xFBFBFBFA, \
0xFAF9F8F7, 0xF7F7F8F8, 0xF9FAFBFC, 0xFEFFFFFF, \
0xFFFFFEFD, 0xFCFCFBFB, 0xFBFBFBFC, 0xFCFCFCFB, \
0xFBFAFAFA, 0xFAFAFAFA, 0xFBFBFCFD, 0xFEFFFFFF, \
0xFFFFFEFE, 0xFDFCFCFC, 0xFBFCFCFD, 0xFDFDFDFC, \
0xFCFCFBFB, 0xFBFBFBFC, 0xFCFCFDFE, 0xFFFFFFFF, \
0xFFFFFFFE, 0xFEFDFDFD, 0xFDFDFDFD, 0xFEFEFDFD, \
0xFDFDFDFD, 0xFDFDFDFD, 0xFDFDFEFE, 0xFFFFFFFF, \
0xFFFFFFFE, 0xFEFEFEFD, 0xFDFEFEFE, 0xFEFEFEFE, \
0xFEFEFEFE, 0xFEFEFEFE, 0xFEFEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFE, 0xFEFEFFFF, 0xFFFFFFFE, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A620D0: .word \
0x00420271, 0xFFBE0000, 0x060006C2, 0x3E52C2FF, \
0x000002BC, 0x00000000, 0x07000800, 0x007800FF, \
0x005D0271, 0x00000000, 0x080006C2, 0x575200FF, \
0x00BD01DB, 0xFFB20000, 0x07000419, 0x5E3FD9FF, \
0x00BD01DB, 0x004E0000, 0x09000419, 0x5E3F27FF, \
0x01AF001B, 0x00000000, 0x08000005, 0x6B3500FF, \
0x0131001B, 0x01310000, 0x0A000005, 0x4C354CFF, \
0x000002BC, 0x00000000, 0x09000800, 0x007800FF, \
0x00420271, 0x00420000, 0x0A0006C2, 0x3E523EFF, \
0x004E01DB, 0x00BD0000, 0x0B000419, 0x273F5EFF, \
0x0000001B, 0x01AF0000, 0x0C000005, 0x00356BFF, \
0x000002BC, 0x00000000, 0x0B000800, 0x007800FF, \
0x00000271, 0x005D0000, 0x0C0006C2, 0x005257FF, \
0xFFB201DB, 0x00BD0000, 0x0D000419, 0xD93F5EFF, \
0xFECF001B, 0x01310000, 0x0E000005, 0xB4354CFF, \
0x000002BC, 0x00000000, 0x0D000800, 0x007800FF, \
0xFFBE0271, 0x00420000, 0x0E0006C2, 0xC2523EFF, \
0xFF4301DB, 0x004E0000, 0x0F000419, 0xA23F27FF, \
0xFE51001B, 0x00000000, 0x10000005, 0x953500FF, \
0xFFA30271, 0x00000000, 0x100006C2, 0xA95200FF, \
0xFF4301DB, 0xFFB20000, 0x11000419, 0xA23FD9FF, \
0xFE51001B, 0x00000000, 0x00000005, 0x953500FF, \
0xFF4301DB, 0xFFB20000, 0x01000419, 0xA23FD9FF, \
0xFECF001B, 0xFECF0000, 0x02000005, 0xB435B4FF, \
0xFFA30271, 0x00000000, 0x000006C2, 0xA95200FF, \
0x000002BC, 0x00000000, 0x01000800, 0x007800FF, \
0xFFBE0271, 0xFFBE0000, 0x020006C2, 0xC252C2FF, \
0xFFB201DB, 0xFF430000, 0x03000419, 0xD93FA2FF, \
0x0000001B, 0xFE510000, 0x04000005, 0x003595FF, \
0x000002BC, 0x00000000, 0x03000800, 0x007800FF, \
0x00000271, 0xFFA30000, 0x040006C2, 0x0052A9FF, \
0x004E01DB, 0xFF430000, 0x05000419, 0x273FA2FF
var_80A622D0: .word \
0x0000001B, 0xFE510000, 0x04000005, 0x003595FF, \
0x004E01DB, 0xFF430000, 0x05000419, 0x273FA2FF, \
0x0131001B, 0xFECF0000, 0x06000005, 0x4C35B4FF, \
0x00000271, 0xFFA30000, 0x040006C2, 0x0052A9FF, \
0x000002BC, 0x00000000, 0x05000800, 0x007800FF, \
0x00420271, 0xFFBE0000, 0x060006C2, 0x3E52C2FF, \
0x00BD01DB, 0xFFB20000, 0x07000419, 0x5E3FD9FF, \
0x01AF001B, 0x00000000, 0x08000005, 0x6B3500FF, \
0xFFBE0271, 0x00420000, 0x060006C2, 0xC2523EFF, \
0x000002BC, 0x00000000, 0x07000800, 0x007800FF, \
0xFFA30271, 0x00000000, 0x080006C2, 0xA95200FF
var_80A62380: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A618D0
.word \
0xF5900000, 0x0705BC51, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0005BC51, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A610D0
.word \
0xF5900100, 0x0705B85D, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0105B85D, 0xF2000000, 0x0107C0FC, \
0xFC262A60, 0x350CF37F, 0xE200001C, 0x0C184B50, \
0xD9F2FBFF, 0x00000000, 0xD9FFFFFF, 0x00020000, \
0xDF000000, 0x00000000
var_80A62430: .word 0x01020040
.word var_80A620D0
.word \
0x06000204, 0x00000406, 0x06060408, 0x0006080A, \
0x060A080C, 0x00040E10, 0x06041008, 0x00081012, \
0x0608120C, 0x000C1214, 0x06101618, 0x00101812, \
0x0612181A, 0x00121A14, 0x06141A1C, 0x00181E20, \
0x0618201A, 0x001A2022, 0x061A221C, 0x001C2224, \
0x06202622, 0x00222628, 0x06222824, 0x002A2C2E, \
0x06303234, 0x0030342C, 0x062C3436, 0x002C362E, \
0x062E3638, 0x00343A3C, 0x06343C36, 0x00363C3E, \
0x05363E38, 0x00000000, 0x0100B016
.word var_80A622D0
.word \
0x06000204, 0x0006080A, 0x06060A02, 0x00020A0C, \
0x06020C04, 0x00040C0E, 0x05101214, 0x00000000, \
0xDF000000, 0x00000000
var_80A624F0: .word 0x010B0700, 0x02000010, 0x00010000, 0x0000015C
.word func_80A6075C
.word func_80A607D8
.word func_80A60C68
.word func_80A60CBC
var_80A62510: .word 0x30F407D0, 0x00000000, 0x00000000, 0x00000000

.section .rodata

.word 0xBEC3CCC7, 0x00000000
var_80A62528: .word 0x446D8000
var_80A6252C: .word 0x3EAAAAAB
var_80A62530: .word 0x3D2AAAAB
var_80A62534: .word 0x3DCCCCCD
var_80A62538: .word 0x3D2AAAAB
var_80A6253C: .word 0x38C90FDB
var_80A62540: .word 0x38C90FDB
var_80A62544: .word 0x38C90FDB
var_80A62548: .word 0x3C23D70A
var_80A6254C: .word 0x44BB8000
var_80A62550: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

