.section .text
func_80A62630:
    sw      a1, 0x0158(a0)             # 00000158
    jr      $ra                        
    nop


func_80A6263C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A64400)      # a1 = 80A60000
    addiu   a1, a1, %lo(var_80A64400)  # a1 = 80A64400
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     a1, %hi(func_80A626DC)     # a1 = 80A60000
    sh      $zero, 0x013C(s0)          # 0000013C
    addiu   a1, a1, %lo(func_80A626DC) # a1 = 80A626DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A62630              
    swc1    $f4, 0x0150(s0)            # 00000150
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0082          # t6 = 00000082
    sb      t6, 0x0140(s0)             # 00000140
    sh      $zero, 0x013E(s0)          # 0000013E
    swc1    $f6, 0x0154(s0)            # 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A626B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80072548              
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A626DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    lw      v0, 0x0118(a0)             # 00000118
    beq     v0, $zero, lbl_80A62700    
    nop
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_80A62714    
    lh      v1, 0x013C(a0)             # 0000013C
lbl_80A62700:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80A627C4 
    lw      $ra, 0x0014($sp)           
    lh      v1, 0x013C(a0)             # 0000013C
lbl_80A62714:
    slti    $at, v1, 0x000A            
    beq     $at, $zero, lbl_80A62724   
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x013C(a0)             # 0000013C
lbl_80A62724:
    lw      t9, 0x0024(v0)             # 00000024
    addiu   v1, a0, 0x0024             # v1 = 00000024
    addiu   a1, $zero, 0x007F          # a1 = 0000007F
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
    bnel    t2, $zero, lbl_80A627C4    
    lw      $ra, 0x0014($sp)           
    lw      t4, 0x0000(v1)             # 00000000
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    lui     a1, %hi(func_80A629F4)     # a1 = 80A60000
    sw      t4, 0x0144(a0)             # 00000144
    lw      t3, 0x0004(v1)             # 00000004
    addiu   a1, a1, %lo(func_80A629F4) # a1 = 80A629F4
    sw      t3, 0x0148(a0)             # 00000148
    lw      t4, 0x0008(v1)             # 00000008
    sh      t5, 0x013C(a0)             # 0000013C
    sw      t4, 0x014C(a0)             # 0000014C
    jal     func_80A62630              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x0140(a0)             # 00000140
    lw      $ra, 0x0014($sp)           
lbl_80A627C4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A627D0:
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


func_80A62828:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f0, 0x00F0(a0)            # 000000F0
    lui     $at, %hi(var_80A64418)     # $at = 80A60000
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80A62864               
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    beq     $zero, $zero, lbl_80A628A8 
    lhu     v1, 0x013E(a0)             # 0000013E
lbl_80A62864:
    lwc1    $f4, %lo(var_80A64418)($at) 
    lui     $at, %hi(var_80A6441C)     # $at = 80A60000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A62890               
    sub.s   $f6, $f0, $f2              
    lui     $at, 0x439B                # $at = 439B0000
    mtc1    $at, $f12                  # $f12 = 310.00
    beq     $zero, $zero, lbl_80A628A8 
    lhu     v1, 0x013E(a0)             # 0000013E
    sub.s   $f6, $f0, $f2              
lbl_80A62890:
    lwc1    $f8, %lo(var_80A6441C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    mul.s   $f10, $f6, $f8             
    add.s   $f12, $f10, $f16           
    lhu     v1, 0x013E(a0)             # 0000013E
lbl_80A628A8:
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    beq     v1, $zero, lbl_80A62954    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    andi    v1, t6, 0xFFFF             # v1 = 0000FFFF
    slti    $at, v1, 0x0008            
    sh      t6, 0x013E(a0)             # 0000013E
    bne     $at, $zero, lbl_80A62954   
    or      v0, v1, $zero              # v0 = 0000FFFF
    addiu   t7, v0, 0xFFF8             # t7 = 0000FFF7
    mtc1    t7, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80A64420)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A64420)($at) 
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
    lui     $at, %hi(var_80A64424)     # $at = 80A60000
    mul.s   $f16, $f10, $f12           
    sub.s   $f10, $f8, $f2             
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    sh      t9, 0x013C(a0)             # 0000013C
    lwc1    $f16, %lo(var_80A64424)($at) 
    slti    $at, v0, 0x0010            
    mul.s   $f18, $f10, $f16           
    add.s   $f4, $f2, $f18             
    beq     $at, $zero, lbl_80A62954   
    swc1    $f4, 0x0150(a0)            # 00000150
    sb      t1, 0x0140(a0)             # 00000140
lbl_80A62954:
    slti    $at, v1, 0x0009            
    bne     $at, $zero, lbl_80A62994   
    or      v0, v1, $zero              # v0 = 0000FFFF
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f0, 0x0154(a0)            # 00000154
    lui     $at, 0x3E80                # $at = 3E800000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A629C4               
    slti    $at, v0, 0x0008            
    mtc1    $at, $f8                   # $f8 = 0.25
    lhu     v0, 0x013E(a0)             # 0000013E
    add.s   $f10, $f0, $f8             
    beq     $zero, $zero, lbl_80A629C0 
    swc1    $f10, 0x0154(a0)           # 00000154
lbl_80A62994:
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3E00                # $at = 3E000000
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80A629C4               
    slti    $at, v0, 0x0008            
    mtc1    $at, $f18                  # $f18 = 0.13
    lhu     v0, 0x013E(a0)             # 0000013E
    sub.s   $f4, $f0, $f18             
    swc1    $f4, 0x0154(a0)            # 00000154
lbl_80A629C0:
    slti    $at, v0, 0x0008            
lbl_80A629C4:
    beq     $at, $zero, lbl_80A629D4   
    nop
    sb      $zero, 0x0140(a0)          # 00000140
    lhu     v0, 0x013E(a0)             # 0000013E
lbl_80A629D4:
    bnel    v0, $zero, lbl_80A629E8    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    sh      t2, 0x013E(a0)             # 0000013E
    lw      $ra, 0x0014($sp)           
lbl_80A629E8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A629F4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80A62A20    
    nop
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_80A62A34    
    lw      t8, 0x0024(v0)             # 00000024
lbl_80A62A20:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A62B38 
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x0024(v0)             # 00000024
lbl_80A62A34:
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
    lui     $at, %hi(var_80A64428)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A64428)($at) 
    lw      v0, 0x0034($sp)            
    lw      a0, 0x0024($sp)            
    mul.s   $f2, $f0, $f4              
    lw      a1, 0x0028($sp)            
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x0150(s0)            # 00000150
    bc1f    lbl_80A62AB4               
    nop
    swc1    $f12, 0x0150(s0)           # 00000150
lbl_80A62AB4:
    jal     func_80A627D0              
    sw      v0, 0x0034($sp)            
    lw      v0, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x0239(v0)             # 00000239
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80A62B04    
    lbu     t5, 0x0238(v0)             # 00000238
    jal     func_80022FD0              
    addiu   a1, $zero, 0x183C          # a1 = 0000183C
    lui     a1, %hi(func_80A62828)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A62828) # a1 = 80A62828
    jal     func_80A62630              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sh      t3, 0x013E(s0)             # 0000013E
    beq     $zero, $zero, lbl_80A62B34 
    sb      t4, 0x0140(s0)             # 00000140
    lbu     t5, 0x0238(v0)             # 00000238
lbl_80A62B04:
    slti    $at, t5, 0x0022            
    beql    $at, $zero, lbl_80A62B38   
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0140(s0)             # 00000140
    slti    $at, v0, 0x0023            
    beq     $at, $zero, lbl_80A62B30   
    addiu   t6, v0, 0xFFE7             # t6 = FFFFFFE7
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A62B38 
    lw      $ra, 0x001C($sp)           
lbl_80A62B30:
    sb      t6, 0x0140(s0)             # 00000140
lbl_80A62B34:
    lw      $ra, 0x001C($sp)           
lbl_80A62B38:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A62B48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1                 
    lbu     v0, 0x03DC(v0)             # 000103DC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_80A62B70      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v0, $at, lbl_80A62B84      
    lw      t9, 0x0158(a0)             # 00000158
lbl_80A62B70:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80A62B90 
    lw      $ra, 0x0014($sp)           
    lw      t9, 0x0158(a0)             # 00000158
lbl_80A62B84:
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A62B90:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A62B9C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    lw      t6, 0x009C(a1)             # 0000009C
    sw      t6, 0x0074($sp)            
    lw      v1, 0x0118(s1)             # 00000118
    beql    v1, $zero, lbl_80A62FAC    
    lw      $ra, 0x003C($sp)           
    lw      t7, 0x0130(v1)             # 00000130
    beql    t7, $zero, lbl_80A62FAC    
    lw      $ra, 0x003C($sp)           
    lhu     t8, 0x013E(s1)             # 0000013E
    or      a3, $zero, $zero           # a3 = 00000000
    slti    $at, t8, 0x00FF            
    beql    $at, $zero, lbl_80A62FAC   
    lw      $ra, 0x003C($sp)           
    lbu     t9, 0x0239(v1)             # 00000239
    andi    t5, t9, 0x0002             # t5 = 00000000
    beql    t5, $zero, lbl_80A62C00    
    or      v0, v1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_80A62C00 
    or      v0, s1, $zero              # v0 = 00000000
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A62C00:
    lw      s0, 0x0000(a1)             # 00000000
    lwc1    $f12, 0x0024(v0)           # 00000024
    lwc1    $f14, 0x0028(v0)           # 00000028
    lw      a2, 0x002C(v0)             # 0000002C
    sw      a1, 0x0084($sp)            
    jal     func_800AA7F4              
    sw      v0, 0x006C($sp)            
    lw      v0, 0x006C($sp)            
    lui     $at, %hi(var_80A6442C)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A6442C)($at) 
    lh      t6, 0x00B6(v0)             # 000000B6
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lw      v0, 0x006C($sp)            
    lui     $at, %hi(var_80A64430)     # $at = 80A60000
    lwc1    $f18, %lo(var_80A64430)($at) 
    lh      t7, 0x00B4(v0)             # 000000B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AA9E0              
    nop
    lw      v0, 0x006C($sp)            
    lui     $at, %hi(var_80A64434)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A64434)($at) 
    lh      t8, 0x00B8(v0)             # 000000B8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lui     $at, %hi(var_80A64438)     # $at = 80A60000
    lwc1    $f12, %lo(var_80A64438)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0154(s1)           # 00000154
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80A62DAC               
    lw      t6, 0x0084($sp)            
    jal     func_8007E008              
    lw      a0, 0x02D0(s0)             # 000002D0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    sw      t5, 0x0000(v0)             # 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f0, 0x0154(s1)            # 00000154
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    mul.s   $f4, $f0, $f18             
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f6, $f4                   
    mul.s   $f4, $f18, $f0             
    mfc1    t9, $f6                    
    trunc.w.s $f16, $f10                 
    sll     t5, t9, 24                 
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f16                   
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t9, 16                 
    or      t7, t5, t6                 # t7 = FA000000
    mfc1    t5, $f6                    
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t8, t7, t6                 # t8 = FA000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xE300                 # t5 = E3000000
    ori     t5, t5, 0x1A01             # t5 = E3001A01
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    addiu   t7, $zero, 0x0030          # t7 = 00000030
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xF64F                 # t7 = F64F0000
    ori     t7, t7, 0xC3BC             # t7 = F64FC3BC
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      t6, 0x0084($sp)            
lbl_80A62DAC:
    jal     func_8007E2C0              
    lw      a0, 0x0000(t6)             # 00000008
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x8080             # t9 = FA008080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t7, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    lui     t9, 0xFB00                 # t9 = FB000000
    or      t6, t7, $at                # t6 = FFFFAA00
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFFFF                 # t5 = FFFF0000
    ori     t5, t5, 0x0080             # t5 = FFFF0080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lhu     t7, 0x013E(s1)             # 0000013E
    lui     $at, %hi(var_80A6443C)     # $at = 80A60000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     t7, $zero, lbl_80A62E40    
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    beq     $zero, $zero, lbl_80A62E50 
    lh      t6, 0x013C(s1)             # 0000013C
lbl_80A62E40:
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AA7F4              
    lwc1    $f14, %lo(var_80A6443C)($at) 
    lh      t6, 0x013C(s1)             # 0000013C
lbl_80A62E50:
    lui     $at, %hi(var_80A64440)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A64440)($at) 
    mtc1    t6, $f8                    # $f8 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
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
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t5, 0x0084($sp)            
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      t2, 0x0048($sp)            
    lw      t4, 0x0074($sp)            
    addiu   t1, $zero, 0x01FF          # t1 = 000001FF
    lui     s1, 0xDE00                 # s1 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_80A64270)      # t6 = 80A60000
    addiu   t6, t6, %lo(var_80A64270)  # t6 = 80A64270
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    sll     t5, t4,  2                 
    addu    t5, t5, t4                 
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      s1, 0x0000(v1)             # 00000000
    lw      t9, 0x0084($sp)            
    andi    t7, t5, 0x01FF             # t7 = 00000000
    sll     t5, t4,  2                 
    lw      a0, 0x0000(t9)             # 00000000
    addu    t5, t5, t4                 
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0014($sp)            
    sll     t5, t5,  1                 
    subu    a2, t1, t7                 
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0010($sp)            
    andi    t7, t5, 0x01FF             # t7 = 00000000
    sll     t8, t4,  4                 
    subu    t8, t8, t4                 
    subu    t6, t1, t7                 
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    sll     t8, t8,  1                 
    andi    t9, t8, 0x01FF             # t9 = 00000020
    sw      t6, 0x001C($sp)            
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    subu    t5, t1, t9                 
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t7, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      t6, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0040($sp)            
    lw      t3, 0x0040($sp)            
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, %hi(var_80A64320)      # t9 = 80A60000
    addiu   t9, t9, %lo(var_80A64320)  # t9 = 80A64320
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
lbl_80A62FAC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    nop

.section .data

var_80A62FC0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00000000, \
0x00000102, 0x01000001, 0x00000000, 0x00000000, \
0x00010000, 0x00000000, 0x00000001, 0x00000000, \
0x00000204, 0x02000101, 0x00000000, 0x00000000, \
0x00010101, 0x00000001, 0x00000001, 0x00000000, \
0x00000307, 0x03010102, 0x00000000, 0x00000000, \
0x01010102, 0x00000002, 0x01010001, 0x00000000, \
0x00010509, 0x04010103, 0x01000000, 0x00000000, \
0x01020202, 0x00000104, 0x03020101, 0x00000000, \
0x0001060C, 0x06010103, 0x01000000, 0x00000000, \
0x02020202, 0x00000206, 0x05040101, 0x00000000, \
0x0001080F, 0x07010103, 0x01000001, 0x00000000, \
0x03030202, 0x00010408, 0x07060201, 0x00000000, \
0x00010911, 0x08010103, 0x01000001, 0x00000001, \
0x04040303, 0x0101050B, 0x0A080301, 0x00000000, \
0x00020B14, 0x0A010103, 0x01000001, 0x00010102, \
0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, \
0x00030D17, 0x0B020103, 0x01010001, 0x00010205, \
0x09080503, 0x0205090E, 0x0E0D0501, 0x00000000, \
0x01050F18, 0x0C020102, 0x01010001, 0x00010408, \
0x0D0B0502, 0x03070B0F, 0x0F0F0601, 0x00000000, \
0x02081219, 0x0D030102, 0x00010001, 0x0001050B, \
0x130F0702, 0x04080B0F, 0x10110801, 0x00000000, \
0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, \
0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001, \
0x05121719, 0x0E040100, 0x00010102, 0x01020A13, \
0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, \
0x08181B19, 0x0F050201, 0x01020102, 0x02040D18, \
0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, \
0x0B1E1E19, 0x10070403, 0x02030202, 0x0408111D, \
0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, \
0x0E242119, 0x11090606, 0x04040304, 0x070C1623, \
0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, \
0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29, \
0x413B291B, 0x13101216, 0x181B1209, 0x08080304, \
0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, \
0x4A433223, 0x1813161D, 0x1D1E140B, 0x0A0A0608, \
0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, \
0x534C3B2B, 0x1E161C25, 0x2221160D, 0x0B0C0A0E, \
0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, \
0x5C564534, 0x251B242F, 0x2924190F, 0x0E0E0F17, \
0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, \
0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520, \
0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, \
0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, \
0x3D4D483F, 0x31231A14, 0x171E252E, 0x38444F5B, \
0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, \
0x4957524A, 0x3A2A1D15, 0x1A252E37, 0x43505B66, \
0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, \
0x57625D54, 0x43312216, 0x1F2D3741, 0x4D5B6671, \
0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, \
0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B, \
0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, \
0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, \
0xA2A08B76, 0x685D5651, 0x3F343A43, 0x484D5F70, \
0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, \
0xACA99581, 0x72655B53, 0x42394450, 0x585E6D7C, \
0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, \
0xB4B09E8C, 0x7C6E6155, 0x46414F5F, 0x676E7B87, \
0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, \
0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791, \
0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, \
0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, \
0xA5A99D90, 0x8478695E, 0x5F697F93, 0x9DA6ACB2, \
0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, \
0xADB2A89C, 0x8F83766C, 0x6A718AA1, 0xA9AFB2B8, \
0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, \
0xB5BBB3A9, 0x9B8E8279, 0x737693AE, 0xB4B6B9BE, \
0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, \
0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5, \
0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, \
0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, \
0xE0D4D3D1, 0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, \
0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, \
0xE5DBDAD8, 0xD0C4B6AB, 0xA6A8B1B8, 0xAEA4B5C7, \
0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, \
0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC, 0xB1A7B9CE, \
0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, \
0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5, \
0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, \
0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, \
0xEBF3F8F5, 0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, \
0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, \
0xF0F5FBF7, 0xE3CACACC, 0xBBB0C5DC, 0xE5ECF4F6, \
0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, \
0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0, 0xE9F1F9FB, \
0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, \
0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE, \
0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, \
0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, \
0xFEFDFCF6, 0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, \
0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, \
0xFEFDFDF8, 0xFCFDFDFA, 0xF1EAE9E7, 0xD9CFE7F9, \
0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, \
0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE, 0xE0D5ECFB, \
0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, \
0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD, \
0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, \
0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, \
0xFFFEFBF5, 0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, \
0xFFFEFCF7, 0xF4F3FAFE, 0xFBF6F8FB, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, \
0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC, 0xFFFFFFFF, \
0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, \
0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF, \
0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, \
0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A637C0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00000000, 0x00000000, 0x00000001, 0x01000000, \
0x00000102, 0x02010000, 0x00000001, 0x01010202, \
0x00000000, 0x00000000, 0x00000202, 0x02000000, \
0x01010205, 0x07050200, 0x00000001, 0x01010304, \
0x02010000, 0x00000000, 0x00000305, 0x04010001, \
0x05030307, 0x0A090401, 0x00000101, 0x01020206, \
0x05030200, 0x00000000, 0x01010408, 0x08030003, \
0x08080607, 0x09090602, 0x01000001, 0x01010104, \
0x05060603, 0x02010002, 0x0505060A, 0x0C080404, \
0x07090707, 0x06050709, 0x07010000, 0x01010101, \
0x05080B0A, 0x06020205, 0x090A0A0C, 0x0F0E0A05, \
0x05080905, 0x05040810, 0x10060000, 0x00010102, \
0x050A1113, 0x0E080608, 0x0A0C0D10, 0x1514120D, \
0x0E0C0D0B, 0x09080B15, 0x190F0402, 0x01000308, \
0x0A0F161A, 0x180F0A0A, 0x0A0B0B12, 0x191B2A20, \
0x221B1F1B, 0x1815141C, 0x22170806, 0x03030611, \
0x1A1F201E, 0x1C140E0E, 0x0D0E0F11, 0x181D2F3D, \
0x3F333532, 0x2C261F24, 0x2E230F0D, 0x0A090E18, \
0x242E2D24, 0x1B141010, 0x11161813, 0x1618274A, \
0x4E464948, 0x42383030, 0x39311712, 0x16151F24, \
0x2331362A, 0x1B111013, 0x191D201C, 0x1E273145, \
0x4F51565B, 0x584C4140, 0x4A3F1C14, 0x1E202D32, \
0x242B3631, 0x22140F14, 0x1D23221D, 0x273C4A4E, \
0x675F636D, 0x70645452, 0x564C2616, 0x2D363842, \
0x38333F3F, 0x35241817, 0x242C2A25, 0x2F4F656C, \
0x948A7E81, 0x887D6A63, 0x60583B2F, 0x4454575F, \
0x5B555C5E, 0x56493E34, 0x39414644, 0x49627089, \
0xBBBAA89B, 0x9B917A70, 0x67595152, 0x677A8184, \
0x857F7A7C, 0x756D6A63, 0x5C5D626E, 0x767F8795, \
0xC4D1CABB, 0xB5A68C82, 0x7D706B76, 0x8B969DA7, \
0xAEA69592, 0x928C8B8A, 0x857D8094, 0xA5AAA8A5, \
0xC4CEC9C7, 0xC2B69E94, 0x948F8991, 0x9EA4A9B7, \
0xBEBDAFA2, 0xA2A49F9A, 0x99959BB7, 0xC9CECAC4, \
0xD7CDC8C8, 0xCBC8B6AB, 0xAAAAA7A0, 0xA0A2ACBD, \
0xC6CCC9BD, 0xB4BAB6A8, 0xA3A3AECF, 0xE3E4E0DE, \
0xE6DBD4CE, 0xD0D0C6BA, 0xB6B6B3A7, 0x9FA7B4C7, \
0xD5D7D8D3, 0xC9C9CDBF, 0xB1B2BED9, 0xF2ECE3E5, \
0xECEAE1DA, 0xDBDDD7CB, 0xC2BFBCB4, 0xADB4C4D7, \
0xE4E7E4DD, 0xD6D6E0DC, 0xC7BABFD4, 0xE9E8DFE2, \
0xF0F4EDE8, 0xE6E7E7DD, 0xCFC9CAC9, 0xC8CEDCEA, \
0xF3F6F1E7, 0xE0DEE3E7, 0xDAC2C3D6, 0xE4E8E3E5, \
0xF7FBF8F1, 0xECEAEFEB, 0xDFDCDDE0, 0xE2E4E7EF, \
0xF7FCFAF4, 0xEFE9E5E7, 0xE2CDC8D7, 0xE5E9EAEE, \
0xFDFEFCF7, 0xF1EBEDF0, 0xE9E8EDF1, 0xF3F0EEF0, \
0xF5FBFBF8, 0xF7F3E9E2, 0xDDD6D3E1, 0xEBEBEBF4, \
0xFCFEFEFC, 0xF6F0F1F4, 0xEDEAF3FA, 0xFCF5EBEA, \
0xF0F8F8F6, 0xF7F6EEE6, 0xE2E0E4ED, 0xEDE9E1EE, \
0xFAFFFDFD, 0xFAF7F7F7, 0xF2EFF6FB, 0xFBF2E1DF, \
0xEEF8F6F2, 0xF4F6F2EE, 0xEAE7ECF2, 0xEEE6E0E5, \
0xF6FCFCFD, 0xFDFCFCF9, 0xF2F0F5FA, 0xFAF3DED8, \
0xE8F7F7F3, 0xF4F8F7F6, 0xF2EEEEF0, 0xECE5E2E5, \
0xF8FBF5F7, 0xFAFBFAF5, 0xEBE7F4FC, 0xFAF6E8DD, \
0xE8F8FCF8, 0xF8F9FAFA, 0xF9F4EEE9, 0xE4DFE0E9, \
0xF9FAF1EE, 0xF2F5F7F5, 0xEBE1EDFB, 0xFBFAF5EF, \
0xF4FCFEFD, 0xFBF8F8FB, 0xFBF7F2EA, 0xE4DCD8E5, \
0xF6FBF0EA, 0xECEFF3F2, 0xEDE5EAF9, 0xFDFCFDFC, \
0xFCFDFDFC, 0xF9F5F7FA, 0xFCF9F6F2, 0xEBE0D6E1, \
0xEDF9F5EE, 0xEDEEF0F0, 0xEEEBEFFA, 0xFEFEFFFC, \
0xF9F6F8FB, 0xFAF7F6FA, 0xFDFDFBFA, 0xF7E8DCDB, \
0xECF7F9F4, 0xF3F1F0EF, 0xECECF3FC, 0xFEFEFEF9, \
0xF1EDEEF7, 0xFBFAF9FC, 0xFEFEFDFC, 0xFBF3DFE0, \
0xF0F5FBFA, 0xF7F3F3F4, 0xF1EFF2F8, 0xFAFCFEFA, \
0xF1EAE7F0, 0xFAFEFDFE, 0xFFFEFEFD, 0xFDFBE7E9, \
0xF6FBFDFB, 0xF8F3F2F7, 0xF9F4EFF0, 0xF3F6FBFB, \
0xF5EEEDF0, 0xFAFFFFFF, 0xFEFDFDFE, 0xFEFDF7F0, \
0xF9FDFCFA, 0xF5ECEAF4, 0xFCF8ECE8, 0xEBEFF7FC, \
0xF8F6F7F6, 0xF9FCFEFD, 0xFBFAF8FB, 0xFEFFFEF7, \
0xF3FAFCF7, 0xEFE4E1EA, 0xF7F8EBE1, 0xE4EAEDF5, \
0xF6F3F7F8, 0xF7F9FAF9, 0xF5F3F1F0, 0xF4FBFFFA, \
0xECEEF6F4, 0xECE1DBE1, 0xEFF5EDE0, 0xE0E2E0E6, \
0xEDEBEFF2, 0xF3F6F6F5, 0xEEECEDE6, 0xE2EEFEFA, \
0xEAE3E6E6, 0xE5E2DEDF, 0xE7EDE7DD, 0xDBDDD8DA, \
0xE5E6E8ED, 0xEEF2F4EF, 0xE3D9DFE4, 0xDDE2F7FB, \
0xF2E5D8D2, 0xD4DDE3DB, 0xD7DCDCD4, 0xCFD1D5DC, \
0xE6E7E8E8, 0xE5E9EBE3, 0xD1C5CEE0, 0xE2E2F3FD, \
0xF8EAD6C2, 0xC1CDDCD7, 0xC5BFC4C1, 0xB7B9CCE7, \
0xF0EDE2DD, 0xD8D4D7CA, 0xB4AFBFD6, 0xE4EBF2FC, \
0xEEEAD8C2, 0xBABECCCF, 0xB9A1A3AA, 0xA6A2B0DB, \
0xF0E9D8CE, 0xC6BFBDAE, 0x9292ACCC, 0xE0E4E3EB, \
0xCFD5CFBF, 0xB3AEB1B6, 0xA68D8A95, 0x9A99A1C2, \
0xE3DBC6BA, 0xB4ACA292, 0x757299C0, 0xD7D8CBC6, \
0xA5B3BAB0, 0xA59A9293, 0x8C7A757E, 0x889198AE, \
0xCACAB7A7, 0xA09C9480, 0x63597696, 0xAEC0BEA8, \
0x8C959F97, 0x89807772, 0x6752536B, 0x79808896, \
0xAEB8A894, 0x827E796B, 0x59556374, 0x849EB6A5, \
0x918F8D7B, 0x6A676A66, 0x53363453, 0x6A6D6E76, \
0x8A9D9E90, 0x73625D58, 0x5157605F, 0x5E749CA7, \
0x96898163, 0x4E506064, 0x4A2A1E36, 0x565D5B5F, \
0x697D8D8C, 0x714E4240, 0x44525E59, 0x5161869C, \
0x81776D54, 0x3D3A4D5A, 0x46281B22, 0x363E424A, \
0x545D6E7B, 0x714F3630, 0x313E4E4C, 0x44537384, \
0x625B4E3E, 0x2E293646, 0x37201C20, 0x1E1D1F2D, \
0x3E454A59, 0x5F4D2D20, 0x2229363E, 0x3B4A6A70, \
0x453C3329, 0x211F2835, 0x2A1A1B20, 0x1307050F, \
0x242C2933, 0x43442C18, 0x15151C2A, 0x3140655C, \
0x251B1F1B, 0x15161F27, 0x261D1C20, 0x15040005, \
0x141E1516, 0x26312716, 0x0E0C0D19, 0x28385556, \
0x170D1511, 0x0A0B141E, 0x2222201F, 0x170B0403, \
0x0D190F0B, 0x151F1B10, 0x0B08050C, 0x17264546, \
0x130C140C, 0x03030C12, 0x13181F1C, 0x16100A07, \
0x090E0F09, 0x11160F08, 0x0C0F0A09, 0x0F1B2E32, \
0x12171D11, 0x0301070D, 0x0B0D1414, 0x110F110F, \
0x0A07070A, 0x11150B04, 0x0C15130F, 0x0E0E1B23, \
0x10172113, 0x0401050C, 0x0E09090B, 0x09090E13, \
0x10090505, 0x0D120C04, 0x07141911, 0x0C0A1016, \
0x09101811, 0x05020308, 0x0D090606, 0x0504060C, \
0x110F0903, 0x060B0804, 0x030A100D, 0x0A090B0C, \
0x05060A06, 0x01010204, 0x07080403, 0x02010307, \
0x0A0D0B04, 0x02020302, 0x02030606, 0x04040708, \
0x02020200, 0x00000201, 0x02030200, 0x00000102, \
0x05060704, 0x01000001, 0x01020201, 0x00010406, \
0x01000201, 0x00000000, 0x00000000, 0x00000001, \
0x02020202, 0x01000000, 0x00000101, 0x00000102, \
0x00000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000001, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A63FC0: .word \
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
var_80A641C0: .word \
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
var_80A64270: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A62FC0
.word \
0xF5900000, 0x0705BC5D, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0005BC5D, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A637C0
.word \
0xF5900100, 0x0705B85E, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0105B85E, 0xF2000000, 0x0107C0FC, \
0xFC262A60, 0x350CE37F, 0xE200001C, 0x0C184B50, \
0xD9F2FBFF, 0x00000000, 0xD9FFFFFF, 0x00020000, \
0xDF000000, 0x00000000
var_80A64320: .word 0x01020040
.word var_80A63FC0
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
.word var_80A641C0
.word \
0x06000204, 0x0006080A, 0x06060A02, 0x00020A0C, \
0x06020C04, 0x00040C0E, 0x05101214, 0x00000000, \
0xDF000000, 0x00000000
var_80A643E0: .word 0x010C0700, 0x02000010, 0x00010000, 0x0000015C
.word func_80A6263C
.word func_80A626B8
.word func_80A62B48
.word func_80A62B9C
var_80A64400: .word 0x30F407D0, 0x00000000, 0x00000000, 0x00000000

.section .rodata

.word 0xBEC3CCC7, 0x00000000
var_80A64418: .word 0x446D8000
var_80A6441C: .word 0x3EAAAAAB
var_80A64420: .word 0x3D2AAAAB
var_80A64424: .word 0x3DCCCCCD
var_80A64428: .word 0x3D2AAAAB
var_80A6442C: .word 0x38C90FDB
var_80A64430: .word 0x38C90FDB
var_80A64434: .word 0x38C90FDB
var_80A64438: .word 0x3C23D70A
var_80A6443C: .word 0x44BB8000
var_80A64440: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

