.section .text
func_8091A570:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_8091A57C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    mfc1    a1, $f0                    
    lw      t7, 0x1C44(t6)             # 00001C44
    mfc1    a3, $f0                    
    sw      a0, 0x0038($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20              
    sw      t7, 0x004C($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0023         # $at = 00000023
    lw      a0, 0x005C($sp)            
    beq     v0, $at, lbl_8091A5E0      
    addiu   a1, s0, 0x01A0             # a1 = 000001A0
    addiu   $at, $zero, 0x0024         # $at = 00000024
    beq     v0, $at, lbl_8091A5E0      
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v0, $at, lbl_8091A604      
    lui     $at, 0x4348                # $at = 43480000
lbl_8091A5E0:
    jal     func_8004AB7C              
    sw      a1, 0x0034($sp)            
    lui     a3, %hi(var_8091C940)      # a3 = 80920000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_8091C940)  # a3 = 8091C940
    lw      a0, 0x005C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x4348                # $at = 43480000
lbl_8091A604:
    mtc1    $at, $f4                   # $f4 = 200.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80020F88              
    swc1    $f4, 0x0150(s0)            # 00000150
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_8091A648      
    lui     a1, %hi(func_8091A9FC)     # a1 = 80920000
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091A9FC) # a1 = 8091A9FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38A2          # a1 = 000038A2
    beq     $zero, $zero, lbl_8091A680 
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8091A648:
    slti    $at, v0, 0x0064            
    bne     $at, $zero, lbl_8091A680   
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091AD94)     # a1 = 80920000
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091AD94) # a1 = 8091AD94
    lwl     t0, 0x0030(s0)             # 00000030
    lw      t8, 0x0038($sp)            
    lwr     t0, 0x0033(s0)             # 00000033
    swl     t0, 0x0000(t8)             # 00000000
    swr     t0, 0x0003(t8)             # 00000003
    lhu     t0, 0x0034(s0)             # 00000034
    sh      t0, 0x0004(t8)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8091A680:
    addiu   $at, $zero, 0x0023         # $at = 00000023
    bne     v0, $at, lbl_8091A6BC      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091AF34)     # a1 = 80920000
    sw      $zero, 0x0134(s0)          # 00000134
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091AF34) # a1 = 8091AF34
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38A3          # a1 = 000038A3
    jal     func_80022FD0              
    swc1    $f6, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8091A97C 
    lw      $ra, 0x002C($sp)           
lbl_8091A6BC:
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bne     v0, $at, lbl_8091A73C      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091B078)     # a1 = 80920000
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091B078) # a1 = 8091B078
    lh      t4, 0x0030(s0)             # 00000030
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    cvt.s.w $f0, $f10                  
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t1, 0x0140(s0)             # 00000140
    sh      t2, 0x0142(s0)             # 00000142
    div.s   $f4, $f0, $f18             
    sh      t3, 0x01EE(s0)             # 000001EE
    lui     $at, %hi(var_8091C9F0)     # $at = 80920000
    swc1    $f8, 0x0150(s0)            # 00000150
    swc1    $f4, 0x017C(s0)            # 0000017C
    lwc1    $f6, %lo(var_8091C9F0)($at) 
    sh      $zero, 0x01E4(s0)          # 000001E4
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    v0, $f10                   
    nop
    sh      v0, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_8091A978 
    sh      v0, 0x01E2(s0)             # 000001E2
lbl_8091A73C:
    addiu   $at, $zero, 0x0026         # $at = 00000026
    bne     v0, $at, lbl_8091A768      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091B2F4)     # a1 = 80920000
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091B2F4) # a1 = 8091B2F4
    lh      t6, 0x0030(s0)             # 00000030
    lh      t7, 0x0032(s0)             # 00000032
    sh      t6, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_8091A978 
    sh      t7, 0x0148(s0)             # 00000148
lbl_8091A768:
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     v0, $at, lbl_8091A788      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0028         # $at = 00000028
    beq     v0, $at, lbl_8091A788      
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bnel    v0, $at, lbl_8091A7F0      
    addiu   $at, $zero, 0x0032         # $at = 00000032
lbl_8091A788:
    jal     func_80020F88              
    lui     a1, 0x40E0                 # a1 = 40E00000
    lui     a1, %hi(func_8091C194)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091C194) # a1 = 8091C194
    jal     func_8091A570              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0029         # $at = 00000029
    addiu   t0, $zero, 0x004C          # t0 = 0000004C
    bne     t8, $at, lbl_8091A7CC      
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    addiu   t9, $zero, 0x01B8          # t9 = 000001B8
    sh      t9, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_8091A978 
    swc1    $f18, 0x0058(s0)           # 00000058
lbl_8091A7CC:
    sh      t0, 0x0140(s0)             # 00000140
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283F          # a1 = 0000283F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2853          # a1 = 00002853
    beq     $zero, $zero, lbl_8091A97C 
    lw      $ra, 0x002C($sp)           
    addiu   $at, $zero, 0x0032         # $at = 00000032
lbl_8091A7F0:
    bne     v0, $at, lbl_8091A978      
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x0030(s0)             # 00000030
    lui     $at, 0x4040                # $at = 40400000
    lui     a1, %hi(func_8091B4E8)     # a1 = 80920000
    bnel    t1, $zero, lbl_8091A820    
    mtc1    $at, $f6                   # $f6 = 3.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    beq     $zero, $zero, lbl_8091A828 
    swc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $at, $f6                   # $f6 = 8.00
lbl_8091A820:
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8091A828:
    jal     func_8091A570              
    addiu   a1, a1, %lo(func_8091B4E8) # a1 = 8091B4E8
    lw      v0, 0x004C($sp)            
    addiu   t2, $zero, 0x0046          # t2 = 00000046
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t2, 0x0140(s0)             # 00000140
    sh      t3, 0x0142(s0)             # 00000142
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f10, 0x0024(s0)           # 00000024
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f18, 0x0028(v0)           # 00000028
    sub.s   $f12, $f8, $f10            
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f6, $f18, $f4             
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0044($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f18, 0x002C(v0)           # 0000002C
    swc1    $f12, 0x0048($sp)          
    sub.s   $f14, $f18, $f4            
    jal     func_800CD76C              
    swc1    $f14, 0x0040($sp)          
    lui     $at, %hi(var_8091C9F4)     # $at = 80920000
    lwc1    $f6, %lo(var_8091C9F4)($at) 
    lwc1    $f2, 0x0048($sp)           
    lwc1    $f16, 0x0040($sp)          
    mul.s   $f8, $f0, $f6              
    nop
    mul.s   $f18, $f2, $f2             
    nop
    mul.s   $f4, $f16, $f16            
    trunc.w.s $f10, $f8                  
    add.s   $f0, $f18, $f4             
    mfc1    t5, $f10                   
    nop
    sh      t5, 0x0032(s0)             # 00000032
    sqrt.s  $f14, $f0                  
    jal     func_800CD76C              
    lwc1    $f12, 0x0044($sp)          
    lui     $at, %hi(var_8091C9F8)     # $at = 80920000
    lwc1    $f6, %lo(var_8091C9F8)($at) 
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    mul.s   $f8, $f0, $f6              
    addiu   t0, $zero, 0xFFE7          # t0 = FFFFFFE7
    sh      t8, 0x01E0(s0)             # 000001E0
    sh      t9, 0x01E2(s0)             # 000001E2
    sh      t0, 0x01E4(s0)             # 000001E4
    addiu   a2, s0, 0x0190             # a2 = 00000190
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    nop
    sh      t7, 0x0030(s0)             # 00000030
    lw      a0, 0x005C($sp)            
    sw      a2, 0x0038($sp)            
    jal     func_800665B0              
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18                  
    sw      v0, 0x018C(s0)             # 0000018C
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f4                    
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    trunc.w.s $f18, $f10                 
    mfc1    a2, $f8                    
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    jal     func_80065BCC              
    lw      a0, 0x0038($sp)            
lbl_8091A978:
    lw      $ra, 0x002C($sp)           
lbl_8091A97C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_8091A98C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0023         # $at = 00000023
    lw      a0, 0x001C($sp)            
    beq     v0, $at, lbl_8091A9C4      
    addiu   a1, a3, 0x01A0             # a1 = 000001A0
    addiu   $at, $zero, 0x0024         # $at = 00000024
    beq     v0, $at, lbl_8091A9C4      
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v0, $at, lbl_8091A9D8      
    addiu   $at, $zero, 0x0032         # $at = 00000032
lbl_8091A9C4:
    jal     func_8004ABCC              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lh      v0, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0032         # $at = 00000032
lbl_8091A9D8:
    bne     v0, $at, lbl_8091A9EC      
    lw      a0, 0x001C($sp)            
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_80066610              
    lw      a2, 0x018C(a3)             # 0000018C
lbl_8091A9EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091A9FC:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s4, 0x0050($sp)            
    sw      s1, 0x0044($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s3, 0x004C($sp)            
    sw      s2, 0x0048($sp)            
    sw      s0, 0x0040($sp)            
    sdc1    $f20, 0x0038($sp)          
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v1, 0x0148(s1)             # 00000148
    or      a0, v0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    beq     v1, $zero, lbl_8091AA60    
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8091AA6C      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v1, $at, lbl_8091AC10      
    nop
    beq     $zero, $zero, lbl_8091AD68 
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091AA60:
    sh      t6, 0x0148(s1)             # 00000148
    beq     $zero, $zero, lbl_8091AD64 
    sh      t7, 0x0140(s1)             # 00000140
lbl_8091AA6C:
    jal     func_80049708              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lh      t9, 0x0146(s1)             # 00000146
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    mfc1    a1, $f0                    
    sll     t0, t9, 15                 
    addu    t1, t0, v0                 
    mfc1    a2, $f0                    
    sh      t1, 0x00B6(s1)             # 000000B6
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s1, 0x015C             # a0 = 0000015C
    lh      t2, 0x0140(s1)             # 00000140
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    ori     $at, $zero, 0x8000         # $at = 00008000
    bne     t2, $zero, lbl_8091AD64    
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    lh      t4, 0x00B8(s1)             # 000000B8
    lwc1    $f4, 0x0028(s1)            # 00000028
    lwc1    $f10, 0x0024(s1)           # 00000024
    addu    t5, t4, $at                
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    sh      t3, 0x0148(s1)             # 00000148
    sh      t5, 0x00B8(s1)             # 000000B8
    sub.s   $f8, $f4, $f6              
    sh      t6, 0x0140(s1)             # 00000140
    addiu   t7, $zero, 0x01F4          # t7 = 000001F4
    addiu   t8, $zero, 0x0024          # t8 = 00000024
    swc1    $f8, 0x0028(s1)            # 00000028
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s1)           # 00000028
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f16, 0x0014($sp)          
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      t7, 0x001C($sp)            
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    addiu   s3, $sp, 0x0070            # s3 = FFFFFFE0
    lui     t9, %hi(var_8091C96C)      # t9 = 80920000
    addiu   t9, t9, %lo(var_8091C96C)  # t9 = 8091C96C
    lw      t1, 0x0000(t9)             # 8091C96C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    sw      t1, 0x0000(s3)             # FFFFFFE0
    lw      t0, 0x0004(t9)             # 8091C970
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s1, 0x0024             # s2 = 00000024
    sw      t0, 0x0004(s3)             # FFFFFFE4
    lw      t1, 0x0008(t9)             # 8091C974
    sw      t1, 0x0008(s3)             # FFFFFFE8
lbl_8091AB58:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    swc1    $f0, 0x007C($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    mov.s   $f12, $f20                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0080($sp)           
    lui     $at, %hi(var_8091C9FC)     # $at = 80920000
    lwc1    $f8, %lo(var_8091C9FC)($at) 
    swc1    $f0, 0x0084($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0074($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000024
    mul.s   $f16, $f0, $f10            
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFEC
    or      a3, s3, $zero              # a3 = FFFFFFE0
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    addiu   t6, t5, 0x00F0             # t6 = 000000F0
    jal     func_8001D7F8              
    sw      t6, 0x0010($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0023            
    bne     $at, $zero, lbl_8091AB58   
    nop
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80026CF4              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    beq     $zero, $zero, lbl_8091AD68 
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091AC10:
    jal     func_80049708              
    nop
    lh      t8, 0x0146(s1)             # 00000146
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    sll     t9, t8, 15                 
    addu    t0, t9, v0                 
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    mfc1    a2, $f0                    
    sh      t0, 0x00B6(s1)             # 000000B6
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a0, s1, 0x015C             # a0 = 0000015C
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lh      v0, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v0, $at, lbl_8091AD54      
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    c.lt.s  $f0, $f4                   
    addiu   s3, s4, 0x1C24             # s3 = 00001C24
    bc1f    lbl_8091AC88               
    nop
    beq     $zero, $zero, lbl_8091AC88 
    addiu   s2, $zero, 0x1000          # s2 = 00001000
lbl_8091AC88:
    lwc1    $f6, 0x0024(s1)            # 00000024
lbl_8091AC8C:
    sll     t1, s0, 13                 
    addu    t2, t1, s2                 
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x0028(s1)            # 00000028
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    addiu   t4, s0, 0x0064             # t4 = 00000064
    swc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x002C(s1)           # 0000002C
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      t2, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    or      a0, s3, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    jal     func_800253F0              
    swc1    $f10, 0x0018($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0008            
    bnel    $at, $zero, lbl_8091AC8C   
    lwc1    $f6, 0x0024(s1)            # 00000024
    or      s0, $zero, $zero           # s0 = 00000000
    lwc1    $f16, 0x0024(s1)           # 00000024
lbl_8091ACF4:
    sll     t5, s0, 13                 
    addu    t6, t5, s2                 
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    or      a0, s3, $zero              # a0 = 00001C24
    swc1    $f18, 0x0014($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sw      t7, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      t6, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    jal     func_800253F0              
    swc1    $f4, 0x0018($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0008            
    bnel    $at, $zero, lbl_8091ACF4   
    lwc1    $f16, 0x0024(s1)           # 00000024
    lh      v0, 0x0140(s1)             # 00000140
lbl_8091AD54:
    bnel    v0, $zero, lbl_8091AD68    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091AD64:
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091AD68:
    jal     func_80020F88              
    lw      a1, 0x015C(s1)             # 0000015C
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_8091AD94:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f4                   # $f4 = 4000.00
    lh      t6, 0x00B4(s0)             # 000000B4
    lh      v0, 0x0148(s0)             # 00000148
    mul.s   $f6, $f0, $f4              
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    addu    t1, t6, t0                 
    addiu   t2, t1, 0x4000             # t2 = 00004000
    beq     v0, $zero, lbl_8091AE00    
    sh      t2, 0x00B4(s0)             # 000000B4
    beq     v0, $at, lbl_8091AE2C      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8091AECC      
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    beq     $zero, $zero, lbl_8091AEF4 
    lwc1    $f0, 0x015C(s0)            # 0000015C
lbl_8091AE00:
    jal     func_800CDCCC              # Rand.Next() float
    sh      t3, 0x0148(s0)             # 00000148
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f10                  # $f10 = 7.00
    nop
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    addiu   t9, t8, 0x0007             # t9 = 00000007
    sh      t9, 0x0140(s0)             # 00000140
lbl_8091AE2C:
    lui     a1, 0x3FD9                 # a1 = 3FD90000
    lui     a3, 0x3EAE                 # a3 = 3EAE0000
    ori     a3, a3, 0x147B             # a3 = 3EAE147B
    ori     a1, a1, 0x999A             # a1 = 3FD9999A
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t6, 0x0140(s0)             # 00000140
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    bne     t6, $zero, lbl_8091AEC4    
    nop
    sh      t0, 0x0148(s0)             # 00000148
    sh      t1, 0x0140(s0)             # 00000140
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f4                   # $f4 = -200.00
    lwc1    $f8, 0x015C(s0)            # 0000015C
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mul.s   $f6, $f0, $f4              
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f16, $f10           
    jal     func_80063684              # coss?
    swc1    $f18, 0x002C(s0)           # 0000002C
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x015C(s0)            # 0000015C
    lwc1    $f10, 0x0024(s0)           # 00000024
    mul.s   $f6, $f0, $f4              
    lh      t2, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t3, t2, $at                
    sh      t3, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f6, $f8             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0024(s0)           # 00000024
lbl_8091AEC4:
    beq     $zero, $zero, lbl_8091AEF4 
    lwc1    $f0, 0x015C(s0)            # 0000015C
lbl_8091AECC:
    lui     a2, 0x3EAE                 # a2 = 3EAE0000
    ori     a2, a2, 0x147B             # a2 = 3EAE147B
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lh      t4, 0x0140(s0)             # 00000140
    bnel    t4, $zero, lbl_8091AEF4    
    lwc1    $f0, 0x015C(s0)            # 0000015C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x015C(s0)            # 0000015C
lbl_8091AEF4:
    mfc1    a1, $f0                    
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lwc1    $f4, 0x0050(s0)            # 00000050
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_8091AF24               
    lw      $ra, 0x001C($sp)           
    swc1    $f0, 0x0050(s0)            # 00000050
    lw      $ra, 0x001C($sp)           
lbl_8091AF24:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8091AF34:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38A8          # a1 = 000038A8
    sw      t6, 0x003C($sp)            
    lbu     v0, 0x01B0(s0)             # 000001B0
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8091AF74    
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    jal     func_80022FD0              
    sb      t8, 0x01B0(s0)             # 000001B0
lbl_8091AF74:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_8091AFD8               
    nop
    lw      t0, 0x0024(s0)             # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    sw      t0, 0x0000(a2)             # FFFFFFF0
    lw      t9, 0x0028(s0)             # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t9, 0x0004(a2)             # FFFFFFF4
    lw      t0, 0x002C(s0)             # 0000002C
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    sw      t0, 0x0008(a2)             # FFFFFFF8
    lwc1    $f6, 0x0034($sp)           
    sw      $zero, 0x0010($sp)         
    sub.s   $f10, $f6, $f8             
    jal     func_8001D864              
    swc1    $f10, 0x0034($sp)          
lbl_8091AFD8:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, s0, 0x01A0             # a2 = 000001A0
    or      a1, a2, $zero              # a1 = 000001A0
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lw      a2, 0x002C($sp)            
    lb      t2, 0x0A68(t1)             # 00000A68
    ori     $at, $at, 0x1E60           # $at = 00011E60
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t2, $zero, lbl_8091B020    
    lui     $at, 0x4248                # $at = 42480000
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, s1, $at                
    lui     $at, 0x4248                # $at = 42480000
lbl_8091B020:
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t3, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f16, 0x0010($sp)          
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t5, t4, 0x0008             # t5 = 00000000
    beql    t5, $zero, lbl_8091B068    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_8091B068:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8091B078:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      t6, 0x1C44(s1)             # 00001C44
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sw      t6, 0x002C($sp)            
    sb      t0, 0x0B05($at)            # 00010B05
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      v0, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x0031         # $at = 00000031
    addiu   t8, t7, 0x1000             # t8 = 00001000
    bne     v0, $at, lbl_8091B0E0      
    sh      t8, 0x00B6(s0)             # 000000B6
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sb      t0, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x0AFA($at)            # 00010AFA
    lh      v0, 0x0142(s0)             # 00000142
lbl_8091B0E0:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bne     v0, $at, lbl_8091B108      
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sh      t1, 0x0AFA($at)            # 00010AFA
    lh      v0, 0x0142(s0)             # 00000142
lbl_8091B108:
    slti    $at, v0, 0x0030            
    bne     $at, $zero, lbl_8091B14C   
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at                
    sb      v1, 0x0B08(v0)             # 00000B08
    sb      v1, 0x0B07(v0)             # 00000B07
    sb      v1, 0x0B06(v0)             # 00000B06
    lh      t3, 0x0140(s0)             # 00000140
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_8091B144    
    nop
    beq     $zero, $zero, lbl_8091B158 
    sb      t5, 0x0B09(v0)             # 00000B09
lbl_8091B144:
    beq     $zero, $zero, lbl_8091B158 
    sb      $zero, 0x0B09(v0)          # 00000B09
lbl_8091B14C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sb      $zero, 0x0B09($at)         # 00010B09
lbl_8091B158:
    lh      t6, 0x0140(s0)             # 00000140
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    lui     a2, 0x3F00                 # a2 = 3F000000
    slti    $at, t6, 0x0015            
    beq     $at, $zero, lbl_8091B198   
    lui     a3, 0x4040                 # a3 = 40400000
    addiu   a0, s0, 0x0150             # a0 = 00000150
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0              
    lui     a2, 0x4234                 # a2 = 42340000
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0              
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_8091B1A4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_8091B198:
    jal     func_80064280              
    lw      a1, 0x017C(s0)             # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8091B1A4:
    jal     func_80020F88              
    lw      a1, 0x015C(s0)             # 0000015C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f6, 0x017C(s0)            # 0000017C
    addiu   a2, s0, 0x01A0             # a2 = 000001A0
    or      a1, a2, $zero              # a1 = 000001A0
    c.lt.s  $f4, $f6                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_8091B204               
    lh      t9, 0x0140(s0)             # 00000140
    jal     func_80050B00              
    sw      a2, 0x0024($sp)            
    lw      t7, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lw      a2, 0x0024($sp)            
    lb      t8, 0x0A68(t7)             # 00000A68
    ori     $at, $at, 0x1E60           # $at = 00011E60
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_8091B204    
    lh      t9, 0x0140(s0)             # 00000140
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, s1, $at                
    lh      t9, 0x0140(s0)             # 00000140
lbl_8091B204:
    bnel    t9, $zero, lbl_8091B224    
    lh      v0, 0x01EE(s0)             # 000001EE
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sb      $zero, 0x0B05($at)         # 00010B05
    lh      v0, 0x01EE(s0)             # 000001EE
lbl_8091B224:
    addiu   a0, s0, 0x01F0             # a0 = 000001F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     v0, $zero, lbl_8091B260    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     a2, 0x3E99                 # a2 = 3E990000
    sh      t1, 0x01EE(s0)             # 000001EE
    sb      t2, 0x01EC(s0)             # 000001EC
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x01F0             # a0 = 000001F0
    lui     a1, 0x4220                 # a1 = 42200000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    beq     $zero, $zero, lbl_8091B288 
    lbu     t3, 0x01EC(s0)             # 000001EC
lbl_8091B260:
    jal     func_800642F0              
    lui     a2, 0x40A0                 # a2 = 40A00000
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    c.eq.s  $f8, $f10                  
    nop
    bc1fl   lbl_8091B288               
    lbu     t3, 0x01EC(s0)             # 000001EC
    sb      $zero, 0x01EC(s0)          # 000001EC
    lbu     t3, 0x01EC(s0)             # 000001EC
lbl_8091B288:
    lui     $at, 0x8012                # $at = 80120000
    lui     t4, 0x8012                 # t4 = 80120000
    sb      t3, -0x4326($at)           # 8011BCDA
    lw      t6, 0x0024(s0)             # 00000024
    addiu   t4, t4, 0xBCE0             # t4 = 8011BCE0
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, 0x0000(t4)             # 8011BCE0
    lw      t5, 0x0028(s0)             # 00000028
    sw      t5, 0x0004(t4)             # 8011BCE4
    lw      t6, 0x002C(s0)             # 0000002C
    sw      t6, 0x0008(t4)             # 8011BCE8
    lwc1    $f16, 0x01F0(s0)           # 000001F0
    lw      $ra, 0x001C($sp)           
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    sh      t8, -0x4314($at)           # 8011BCEC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f4, -0x4310($at)          # 8011BCF0
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x430C($at)        # 8011BCF4
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8091B2F4:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s5, 0x0048($sp)            
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    sw      s0, 0x0034($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lh      t6, 0x0146(s1)             # 00000146
    lw      s0, 0x0118(s1)             # 00000118
    lui     a1, 0x40C0                 # a1 = 40C00000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8091B350    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020F88              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091B35C 
    lw      t9, 0x01F0(s0)             # 000001F0
lbl_8091B350:
    jal     func_80020F88              
    lui     a1, 0x40A8                 # a1 = 40A80000
    lw      t9, 0x01F0(s0)             # 000001F0
lbl_8091B35C:
    sw      t9, 0x0024(s1)             # 00000024
    lw      t8, 0x01F4(s0)             # 000001F4
    sw      t8, 0x0028(s1)             # 00000028
    lw      t9, 0x01F8(s0)             # 000001F8
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x002C(s1)             # 0000002C
    lui     $at, %hi(var_8091CA00)     # $at = 80920000
    lwc1    $f4, %lo(var_8091CA00)($at) 
    lh      t0, 0x00B8(s1)             # 000000B8
    lh      t7, 0x0148(s1)             # 00000148
    mul.s   $f6, $f0, $f4              
    lui     t8, %hi(var_8091C978)      # t8 = 80920000
    addiu   s2, $sp, 0x0060            # s2 = FFFFFFE0
    addiu   s3, $sp, 0x0054            # s3 = FFFFFFD4
    addiu   t8, t8, %lo(var_8091C978)  # t8 = 8091C978
    trunc.w.s $f8, $f6                   
    mfc1    t4, $f8                    
    nop
    addu    t5, t0, t4                 
    addiu   t6, t5, 0x4000             # t6 = 00004000
    bne     t7, $zero, lbl_8091B4A4    
    sh      t6, 0x00B8(s1)             # 000000B8
    lw      t1, 0x0000(t8)             # 8091C978
    lui     t2, %hi(var_8091C984)      # t2 = 80920000
    addiu   t2, t2, %lo(var_8091C984)  # t2 = 8091C984
    sw      t1, 0x0000(s2)             # FFFFFFE0
    lw      t9, 0x0004(t8)             # 8091C97C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f24                  # $f24 = 80.00
    sw      t9, 0x0004(s2)             # FFFFFFE4
    lw      t1, 0x0008(t8)             # 8091C980
    lui     $at, %hi(var_8091CA04)     # $at = 80920000
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t1, 0x0008(s2)             # FFFFFFE8
    lw      t0, 0x0000(t2)             # 8091C984
    addiu   s4, $sp, 0x006C            # s4 = FFFFFFEC
    sw      t0, 0x0000(s3)             # FFFFFFD4
    lw      t3, 0x0004(t2)             # 8091C988
    sw      t3, 0x0004(s3)             # FFFFFFD8
    lw      t0, 0x0008(t2)             # 8091C98C
    sw      t0, 0x0008(s3)             # FFFFFFDC
    lwc1    $f22, %lo(var_8091CA04)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    nop
lbl_8091B410:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f10, 0x0024(s1)           # 00000024
    mov.s   $f12, $f20                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x006C($sp)          
    lwc1    $f18, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lwc1    $f6, 0x002C(s1)            # 0000002C
    swc1    $f22, 0x0058($sp)          
    add.s   $f8, $f0, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0074($sp)           
    mul.s   $f10, $f0, $f24            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFEC
    or      a2, s2, $zero              # a2 = FFFFFFE0
    or      a3, s3, $zero              # a3 = FFFFFFD4
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    nop
    sll     t6, t5, 16                 
    sra     t7, t6, 16                 
    addiu   t8, t7, 0x0096             # t8 = 00000096
    jal     func_8001D7F8              
    sw      t8, 0x0010($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0002            
    bne     $at, $zero, lbl_8091B410   
    nop
lbl_8091B4A4:
    lh      t9, 0x0140(s1)             # 00000140
    bnel    t9, $zero, lbl_8091B4BC    
    lw      $ra, 0x004C($sp)           
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)           
lbl_8091B4BC:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_8091B4E8:
    addiu   $sp, $sp, 0xFEF0           # $sp = FFFFFEF0
    sw      s1, 0x0040($sp)            
    sw      s0, 0x003C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sdc1    $f20, 0x0030($sp)          
    sb      $zero, 0x00F3($sp)         
    lh      v0, 0x014C(s0)             # 0000014C
    lw      v1, 0x1C44(s1)             # 00001C44
    beq     v0, $zero, lbl_8091B538    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x014C(s0)             # 0000014C
    lh      t7, 0x014C(s0)             # 0000014C
    bnel    t7, $zero, lbl_8091C180    
    lw      $ra, 0x0044($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091C180 
    lw      $ra, 0x0044($sp)           
lbl_8091B538:
    lw      v0, 0x0118(s0)             # 00000118
    lwc1    $f0, 0x0024(s0)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f4, 0x01FC(v0)            # 000001FC
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f6, $f4, $f0              
    swc1    $f6, 0x00FC($sp)           
    lwc1    $f2, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0200(v0)            # 00000200
    sub.s   $f10, $f8, $f2             
    swc1    $f10, 0x00F8($sp)          
    lwc1    $f12, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0204(v0)            # 00000204
    sub.s   $f6, $f4, $f12             
    swc1    $f6, 0x00F4($sp)           
    lwc1    $f8, 0x0024(v1)            # 00000024
    mtc1    $at, $f6                   # $f6 = 40.00
    sub.s   $f10, $f8, $f0             
    swc1    $f10, 0x010C($sp)          
    lwc1    $f4, 0x0028(v1)            # 00000028
    add.s   $f8, $f4, $f6              
    sub.s   $f10, $f8, $f2             
    swc1    $f10, 0x0108($sp)          
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sw      v1, 0x00EC($sp)            
    sw      v0, 0x00E4($sp)            
    sub.s   $f6, $f4, $f12             
    jal     func_80021248              
    swc1    $f6, 0x0104($sp)           
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x0146(s0)             # 00000146
    lui     a1, 0x40C0                 # a1 = 40C00000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8091B5DC    
    nop
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091B5E4 
    nop
lbl_8091B5DC:
    jal     func_80020F88              
    lui     a1, 0x40A8                 # a1 = 40A80000
lbl_8091B5E4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8091CA08)     # $at = 80920000
    lwc1    $f8, %lo(var_8091CA08)($at) 
    lh      t0, 0x00B8(s0)             # 000000B8
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f10, $f0, $f8             
    lui     t8, %hi(var_8091C990)      # t8 = 80920000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   t8, t8, %lo(var_8091C990)  # t8 = 8091C990
    addiu   t7, $sp, 0x00C8            # t7 = FFFFFFB8
    trunc.w.s $f4, $f10                  
    mfc1    t4, $f4                    
    nop
    addu    t5, t0, t4                 
    addiu   t6, t5, 0x4000             # t6 = 00004000
    sh      t6, 0x00B8(s0)             # 000000B8
    lw      t1, 0x0000(t8)             # 8091C990
    lw      t9, 0x0004(t8)             # 8091C994
    lui     t3, %hi(var_8091C99C)      # t3 = 80920000
    sw      t1, 0x0000(t7)             # FFFFFFB8
    lw      t1, 0x0008(t8)             # 8091C998
    addiu   t3, t3, %lo(var_8091C99C)  # t3 = 8091C99C
    sw      t9, 0x0004(t7)             # FFFFFFBC
    sw      t1, 0x0008(t7)             # FFFFFFC0
    lw      t4, 0x0000(t3)             # 8091C99C
    addiu   t2, $sp, 0x00BC            # t2 = FFFFFFAC
    lw      t0, 0x0004(t3)             # 8091C9A0
    sw      t4, 0x0000(t2)             # FFFFFFAC
    lw      t4, 0x0008(t3)             # 8091C9A4
    sw      t0, 0x0004(t2)             # FFFFFFB0
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t4, 0x0008(t2)             # FFFFFFB4
    lh      t5, 0x0148(s0)             # 00000148
    blezl   t5, lbl_8091B67C           
    sh      $zero, 0x00E0($sp)         
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x00E0($sp)         
lbl_8091B67C:
    sb      v0, 0x00E3($sp)            
lbl_8091B680:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f6, 0x0024(s0)            # 00000024
    mov.s   $f12, $f20                 
    add.s   $f8, $f0, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x00D4($sp)           
    lwc1    $f10, 0x0028(s0)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f4, $f0, $f10             
    jal     func_80026D90              
    swc1    $f4, 0x00D8($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_8091CA0C)     # $at = 80920000
    lwc1    $f10, %lo(var_8091CA0C)($at) 
    add.s   $f8, $f0, $f6              
    swc1    $f10, 0x00C0($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00DC($sp)           
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lbu     t2, 0x00E3($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4              
    addiu   a1, $sp, 0x00D4            # a1 = FFFFFFC4
    addiu   a2, $sp, 0x00C8            # a2 = FFFFFFB8
    addiu   a3, $sp, 0x00BC            # a3 = FFFFFFAC
    sw      t2, 0x0014($sp)            
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    addiu   t1, t9, 0x0096             # t1 = 00000096
    jal     func_8001D7F8              
    sw      t1, 0x0010($sp)            
    lh      v0, 0x00E0($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0003            
    bne     $at, $zero, lbl_8091B680   
    sh      v0, 0x00E0($sp)            
    lh      v0, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t3, 0x00EC($sp)            
    beql    v0, $zero, lbl_8091B760    
    lw      t0, 0x066C(t3)             # 0000066C
    beq     v0, $at, lbl_8091BBA0      
    lw      t4, 0x00E4($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_8091BDC0      
    lh      t6, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_8091BF0C 
    lh      t1, 0x0142(s0)             # 00000142
    lw      t0, 0x066C(t3)             # 0000066C
lbl_8091B760:
    lw      t6, 0x00E4($sp)            
    andi    t4, t0, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_8091B7F0    
    lwc1    $f2, 0x0108($sp)           
    lh      t7, 0x008A(t6)             # 0000008A
    lh      t5, 0x00B6(t3)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, t7, $at                
    subu    v0, t5, t1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8091B79C           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8091B79C 
    or      v1, v0, $zero              # v1 = 00000001
lbl_8091B79C:
    slti    $at, v1, 0x2000            
    beq     $at, $zero, lbl_8091B7EC   
    lwc1    $f12, 0x010C($sp)          
    mul.s   $f10, $f12, $f12           
    lwc1    $f2, 0x0108($sp)           
    lwc1    $f14, 0x0104($sp)          
    lui     $at, 0x41C8                # $at = 41C80000
    mul.s   $f4, $f2, $f2              
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mul.s   $f8, $f14, $f14            
    add.s   $f6, $f10, $f4             
    mtc1    $at, $f10                  # $f10 = 25.00
    add.s   $f0, $f6, $f8              
    sqrt.s  $f0, $f0                   
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_8091B7F0               
    lwc1    $f2, 0x0108($sp)           
    beq     $zero, $zero, lbl_8091B7FC 
    sb      t2, 0x00F2($sp)            
lbl_8091B7EC:
    lwc1    $f2, 0x0108($sp)           
lbl_8091B7F0:
    lwc1    $f12, 0x010C($sp)          
    lwc1    $f14, 0x0104($sp)          
    sb      $zero, 0x00F2($sp)         
lbl_8091B7FC:
    lbu     t0, 0x01B1(s0)             # 000001B1
    lbu     t3, 0x00F2($sp)            
    andi    t4, t0, 0x0002             # t4 = 00000000
    bnel    t4, $zero, lbl_8091B81C    
    lw      t6, 0x01DC(s0)             # 000001DC
    beq     t3, $zero, lbl_8091BAFC    
    nop
    lw      t6, 0x01DC(s0)             # 000001DC
lbl_8091B81C:
    lui     t8, %hi(var_8091C9A8)      # t8 = 80920000
    addiu   t8, t8, %lo(var_8091C9A8)  # t8 = 8091C9A8
    sw      t6, 0x00B8($sp)            
    lw      t5, 0x0000(t8)             # 8091C9A8
    addiu   t7, $sp, 0x009C            # t7 = FFFFFF8C
    lw      t9, 0x0004(t8)             # 8091C9AC
    sw      t5, 0x0000(t7)             # FFFFFF8C
    lw      t5, 0x0008(t8)             # 8091C9B0
    sw      t9, 0x0004(t7)             # FFFFFF90
    addiu   t1, s0, 0x0024             # t1 = 00000024
    sw      t5, 0x0008(t7)             # FFFFFF94
    sw      t1, 0x0050($sp)            
    sh      $zero, 0x00B6($sp)         
lbl_8091B850:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x00A8($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x00AC($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x00B0($sp)           
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0050($sp)            
    mul.s   $f6, $f0, $f4              
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFF98
    addiu   a3, $sp, 0x009C            # a3 = FFFFFF8C
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    sll     t4, t0, 16                 
    sra     t3, t4, 16                 
    addiu   t6, t3, 0x0032             # t6 = 00000032
    jal     func_8001D7F8              
    sw      t6, 0x0010($sp)            
    lh      v0, 0x00B6($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x001E            
    bne     $at, $zero, lbl_8091B850   
    sh      v0, 0x00B6($sp)            
    lbu     v0, 0x00F2($sp)            
    lw      t7, 0x00B8($sp)            
    lw      t2, 0x00E4($sp)            
    bnel    v0, $zero, lbl_8091B948    
    lbu     t0, 0x01B9(t2)             # 000001B9
    lw      t8, 0x0000(t7)             # 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sll     t9, t8, 11                 
    bgez    t9, lbl_8091B944           
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    lw      a1, 0x00EC($sp)            
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sb      t5, 0x00F3($sp)            
    sw      t1, 0x0014($sp)            
    addiu   a0, $zero, 0x180C          # a0 = 0000180C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    beq     $zero, $zero, lbl_8091BF0C 
    lh      t1, 0x0142(s0)             # 00000142
lbl_8091B944:
    lbu     t0, 0x01B9(t2)             # 000001B9
lbl_8091B948:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t0, $at, lbl_8091B998      
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f12                  # $f12 = 8192.00
    jal     func_80026D90              
    nop
    trunc.w.s $f10, $f0                  
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f12                  # $f12 = 8192.00
    mfc1    t3, $f10                   
    jal     func_80026D90              
    sh      t3, 0x009A($sp)            
    trunc.w.s $f4, $f0                   
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    mfc1    v1, $f4                    
    swc1    $f6, 0x0068(s0)            # 00000068
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_8091BA28 
    sra     v1, v1, 16                 
lbl_8091B998:
    sh      $zero, 0x009A($sp)         
    lh      t7, 0x014A(s0)             # 0000014A
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x014A(s0)             # 0000014A
    lh      t9, 0x014A(s0)             # 0000014A
    slti    $at, t9, 0x0004            
    bne     $at, $zero, lbl_8091B9EC   
    nop
    sw      v0, 0x0050($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sh      $zero, 0x0098($sp)         
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      v0, 0x0050($sp)            
    lh      v1, 0x0098($sp)            
    c.lt.s  $f0, $f8                   
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    bc1f    lbl_8091B9EC               
    nop
    sh      t5, 0x014A(s0)             # 0000014A
lbl_8091B9EC:
    bne     v0, $zero, lbl_8091BA14    
    lw      t1, 0x00EC($sp)            
    lb      t2, 0x0832(t1)             # 00000832
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    slti    $at, t2, 0x0018            
    bnel    $at, $zero, lbl_8091BA18   
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f20, 0x0068(s0)           # 00000068
    beq     $zero, $zero, lbl_8091BA28 
    sh      t0, 0x014A(s0)             # 0000014A
lbl_8091BA14:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8091BA18:
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    add.s   $f6, $f10, $f4             
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8091BA28:
    lwc1    $f12, 0x00FC($sp)          
    lwc1    $f14, 0x00F4($sp)          
    jal     func_800CD76C              
    sh      v1, 0x0098($sp)            
    lui     $at, %hi(var_8091CA10)     # $at = 80920000
    lwc1    $f8, %lo(var_8091CA10)($at) 
    lh      v1, 0x0098($sp)            
    mul.s   $f10, $f0, $f8             
    trunc.w.s $f4, $f10                  
    mfc1    t7, $f4                    
    nop
    addu    t8, t7, v1                 
    sh      t8, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x00FC($sp)           
    lwc1    $f10, 0x00F4($sp)          
    lwc1    $f12, 0x00F8($sp)          
    mul.s   $f8, $f6, $f6              
    nop
    mul.s   $f4, $f10, $f10            
    add.s   $f0, $f8, $f4              
    jal     func_800CD76C              
    sqrt.s  $f14, $f0                  
    lui     $at, %hi(var_8091CA14)     # $at = 80920000
    lwc1    $f6, %lo(var_8091CA14)($at) 
    lh      t0, 0x009A($sp)            
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mul.s   $f10, $f0, $f6             
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t3, 0x0148(s0)             # 00000148
    sh      t6, 0x0142(s0)             # 00000142
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    trunc.w.s $f8, $f10                  
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a0, $zero, 0x182A          # a0 = 0000182A
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mfc1    t2, $f8                    
    nop
    addu    t4, t2, t0                 
    sh      t4, 0x0030(s0)             # 00000030
    lw      a1, 0x00EC($sp)            
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    beq     $zero, $zero, lbl_8091BF0C 
    lh      t1, 0x0142(s0)             # 00000142
lbl_8091BAFC:
    mul.s   $f4, $f12, $f12            
    lui     $at, 0x41C8                # $at = 41C80000
    mul.s   $f6, $f2, $f2              
    add.s   $f10, $f4, $f6             
    mul.s   $f8, $f14, $f14            
    mtc1    $at, $f4                   # $f4 = 25.00
    add.s   $f0, $f10, $f8             
    sqrt.s  $f0, $f0                   
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_8091BF08               
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x00F3($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38A8          # a1 = 000038A8
    lw      t9, 0x00E4($sp)            
    lbu     t5, 0x01B9(t9)             # 000001B9
    slti    $at, t5, 0x0002            
    bnel    $at, $zero, lbl_8091BB70   
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t1, 0x014A(s0)             # 0000014A
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t1, 0x0002            
    bnel    $at, $zero, lbl_8091BB70   
    mtc1    $zero, $f6                 # $f6 = 0.00
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8091BB70:
    lh      a3, 0x0032(s0)             # 00000032
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    sw      t0, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_80022E3C              
    swc1    $f6, 0x0010($sp)           
    beq     $zero, $zero, lbl_8091BF0C 
    lh      t1, 0x0142(s0)             # 00000142
lbl_8091BBA0:
    lbu     t3, 0x01B9(t4)             # 000001B9
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t3, $at, lbl_8091BC50      
    lh      t0, 0x014A(s0)             # 0000014A
    lh      t6, 0x014A(s0)             # 0000014A
    lwc1    $f12, 0x00FC($sp)          
    slti    $at, t6, 0x0064            
    beql    $at, $zero, lbl_8091BC50   
    lh      t0, 0x014A(s0)             # 0000014A
    jal     func_800CD76C              
    lwc1    $f14, 0x00F4($sp)          
    lui     $at, %hi(var_8091CA18)     # $at = 80920000
    lwc1    $f10, %lo(var_8091CA18)($at) 
    lwc1    $f2, 0x00FC($sp)           
    lwc1    $f12, 0x00F4($sp)          
    mul.s   $f8, $f0, $f10             
    lui     $at, 0x4100                # $at = 41000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    mul.s   $f6, $f2, $f2              
    nop
    mul.s   $f10, $f12, $f12           
    trunc.w.s $f4, $f8                   
    lwc1    $f8, 0x0068(s0)            # 00000068
    add.s   $f0, $f6, $f10             
    mfc1    t8, $f4                    
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4316                # $at = 43160000
    sqrt.s  $f0, $f0                   
    mtc1    $at, $f10                  # $f10 = 150.00
    sh      t8, 0x0032(s0)             # 00000032
    mul.s   $f6, $f8, $f4              
    add.s   $f8, $f10, $f6             
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_8091BF08               
    nop
    sh      t9, 0x0148(s0)             # 00000148
    lw      t1, 0x00E4($sp)            
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sb      t5, 0x01BA(t1)             # 000001BA
    beq     $zero, $zero, lbl_8091BF08 
    sh      t2, 0x0140(s0)             # 00000140
    lh      t0, 0x014A(s0)             # 0000014A
lbl_8091BC50:
    lwc1    $f12, 0x00FC($sp)          
    lwc1    $f14, 0x00F4($sp)          
    slti    $at, t0, 0x0064            
    bnel    $at, $zero, lbl_8091BD00   
    lwc1    $f0, 0x00FC($sp)           
    mul.s   $f2, $f12, $f12            
    lwc1    $f18, 0x00F8($sp)          
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f16, $f14, $f14           
    mtc1    $at, $f6                   # $f6 = 100.00
    lw      t3, 0x00E4($sp)            
    mul.s   $f4, $f18, $f18            
    add.s   $f10, $f2, $f4             
    add.s   $f0, $f10, $f16            
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_8091BCA0               
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x01BA(t3)             # 000001BA
lbl_8091BCA0:
    swc1    $f2, 0x0050($sp)           
    jal     func_800CD76C              
    swc1    $f16, 0x004C($sp)          
    lui     $at, %hi(var_8091CA1C)     # $at = 80920000
    lwc1    $f8, %lo(var_8091CA1C)($at) 
    lwc1    $f2, 0x0050($sp)           
    lwc1    $f16, 0x004C($sp)          
    mul.s   $f4, $f0, $f8              
    add.s   $f0, $f2, $f16             
    sqrt.s  $f14, $f0                  
    trunc.w.s $f10, $f4                  
    mfc1    t7, $f10                   
    nop
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_800CD76C              
    lwc1    $f12, 0x00F8($sp)          
    lui     $at, %hi(var_8091CA20)     # $at = 80920000
    lwc1    $f6, %lo(var_8091CA20)($at) 
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f4, $f8                   
    mfc1    t9, $f4                    
    nop
    sh      t9, 0x0030(s0)             # 00000030
    lwc1    $f0, 0x00FC($sp)           
lbl_8091BD00:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x00F4($sp)           
    bc1fl   lbl_8091BF0C               
    lh      t1, 0x0142(s0)             # 00000142
    abs.s   $f0, $f0                   
    lui     $at, 0x4234                # $at = 42340000
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x00F8($sp)           
    bc1fl   lbl_8091BF0C               
    lh      t1, 0x0142(s0)             # 00000142
    mtc1    $at, $f10                  # $f10 = 45.00
    abs.s   $f0, $f0                   
    lui     a3, 0x8010                 # a3 = 80100000
    c.lt.s  $f0, $f10                  
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   a0, $zero, 0x38A8          # a0 = 000038A8
    bc1f    lbl_8091BF08               
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sb      t5, 0x00F3($sp)            
    lh      t1, 0x014A(s0)             # 0000014A
    lw      t0, 0x00E4($sp)            
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x01B7(t0)             # 000001B7
    lw      a1, 0x00E4($sp)            
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)            
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    sw      a1, 0x0050($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lw      a1, 0x0050($sp)            
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x38AE          # a0 = 000038AE
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_8091BF0C 
    lh      t1, 0x0142(s0)             # 00000142
    lh      t6, 0x0140(s0)             # 00000140
lbl_8091BDC0:
    lui     t8, %hi(var_8091C9B4)      # t8 = 80920000
    addiu   t8, t8, %lo(var_8091C9B4)  # t8 = 8091C9B4
    bnel    t6, $zero, lbl_8091BF0C    
    lh      t1, 0x0142(s0)             # 00000142
    lw      t5, 0x0000(t8)             # 8091C9B4
    addiu   t7, $sp, 0x007C            # t7 = FFFFFF6C
    lw      t9, 0x0004(t8)             # 8091C9B8
    sw      t5, 0x0000(t7)             # FFFFFF6C
    lw      t5, 0x0008(t8)             # 8091C9BC
    sw      t9, 0x0004(t7)             # FFFFFF70
    addiu   t1, s0, 0x0024             # t1 = 00000024
    sw      t5, 0x0008(t7)             # FFFFFF74
    sw      t1, 0x0050($sp)            
    sh      $zero, 0x0096($sp)         
lbl_8091BDF8:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0088($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x008C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0090($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0050($sp)            
    mul.s   $f8, $f0, $f6              
    addiu   a2, $sp, 0x0088            # a2 = FFFFFF78
    addiu   a3, $sp, 0x007C            # a3 = FFFFFF6C
    sw      $zero, 0x0014($sp)         
    trunc.w.s $f4, $f8                   
    mfc1    t0, $f4                    
    nop
    sll     t4, t0, 16                 
    sra     t3, t4, 16                 
    addiu   t6, t3, 0x0050             # t6 = 00000050
    jal     func_8001D7F8              
    sw      t6, 0x0010($sp)            
    lh      v0, 0x0096($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x001E            
    bne     $at, $zero, lbl_8091BDF8   
    sh      v0, 0x0096($sp)            
    lwc1    $f12, 0x010C($sp)          
    jal     func_800CD76C              
    lwc1    $f14, 0x0104($sp)          
    lui     $at, %hi(var_8091CA24)     # $at = 80920000
    lwc1    $f10, %lo(var_8091CA24)($at) 
    lwc1    $f2, 0x010C($sp)           
    lwc1    $f16, 0x0104($sp)          
    mul.s   $f6, $f0, $f10             
    nop
    mul.s   $f4, $f2, $f2              
    nop
    mul.s   $f10, $f16, $f16           
    trunc.w.s $f8, $f6                   
    add.s   $f0, $f4, $f10             
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0032(s0)             # 00000032
    sqrt.s  $f14, $f0                  
    jal     func_800CD76C              
    lwc1    $f12, 0x0108($sp)          
    lui     $at, %hi(var_8091CA28)     # $at = 80920000
    lwc1    $f6, %lo(var_8091CA28)($at) 
    sh      $zero, 0x0148(s0)          # 00000148
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f0, $f6              
    addiu   a1, $zero, 0x182A          # a1 = 0000182A
    trunc.w.s $f4, $f8                   
    mfc1    t5, $f4                    
    jal     func_80022FD0              
    sh      t5, 0x0030(s0)             # 00000030
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    add.s   $f8, $f10, $f6             
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_8091BF08:
    lh      t1, 0x0142(s0)             # 00000142
lbl_8091BF0C:
    bne     t1, $zero, lbl_8091C0F4    
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t2, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lhu     t0, 0x0088(s0)             # 00000088
    lui     t7, %hi(var_8091C9C0)      # t7 = 80920000
    lbu     t3, 0x00F3($sp)            
    andi    t4, t0, 0x0019             # t4 = 00000000
    bne     t4, $zero, lbl_8091BF60    
    addiu   t7, t7, %lo(var_8091C9C0)  # t7 = 8091C9C0
    beql    t3, $zero, lbl_8091C0CC    
    addiu   a2, s0, 0x01A0             # a2 = 000001A0
lbl_8091BF60:
    lw      t9, 0x0000(t7)             # 8091C9C0
    addiu   t6, $sp, 0x0060            # t6 = FFFFFF50
    lw      t8, 0x0004(t7)             # 8091C9C4
    sw      t9, 0x0000(t6)             # FFFFFF50
    lw      t9, 0x0008(t7)             # 8091C9C8
    addiu   t5, s0, 0x0024             # t5 = 00000024
    sw      t8, 0x0004(t6)             # FFFFFF54
    sw      t9, 0x0008(t6)             # FFFFFF58
    sw      t5, 0x0050($sp)            
    lh      t1, 0x0148(s0)             # 00000148
    or      v0, $zero, $zero           # v0 = 00000000
    blezl   t1, lbl_8091BF9C           
    sh      $zero, 0x0078($sp)         
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x0078($sp)         
lbl_8091BF9C:
    sb      v0, 0x007B($sp)            
lbl_8091BFA0:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x006C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0070($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lui     $at, %hi(var_8091CA2C)     # $at = 80920000
    lwc1    $f10, %lo(var_8091CA2C)($at) 
    swc1    $f0, 0x0074($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0064($sp)          
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lbu     t7, 0x007B($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f8, $f0, $f6              
    lw      a1, 0x0050($sp)            
    addiu   a2, $sp, 0x006C            # a2 = FFFFFF5C
    addiu   a3, $sp, 0x0060            # a3 = FFFFFF50
    sw      t7, 0x0014($sp)            
    trunc.w.s $f4, $f8                   
    mfc1    t0, $f4                    
    nop
    sll     t4, t0, 16                 
    sra     t3, t4, 16                 
    addiu   t6, t3, 0x0064             # t6 = 00000064
    jal     func_8001D7F8              
    sw      t6, 0x0010($sp)            
    lh      v0, 0x0078($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x001E            
    bne     $at, $zero, lbl_8091BFA0   
    sh      v0, 0x0078($sp)            
    lbu     v0, 0x00F3($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_8091C09C      
    lw      t2, 0x00E4($sp)            
    lwc1    $f10, 0x0024(s0)           # 00000024
    lw      t8, 0x00EC($sp)            
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    swc1    $f10, 0x0010($sp)          
    lwc1    $f6, 0x0028(t8)            # 00000028
    addiu   t5, $zero, 0x0024          # t5 = 00000024
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    add.s   $f8, $f6, $f20             
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f8, 0x0014($sp)           
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      v0, 0x0050($sp)            
    sw      t5, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      t9, 0x001C($sp)            
    jal     func_800253F0              
    swc1    $f4, 0x0018($sp)           
    lw      v0, 0x0050($sp)            
    lw      t2, 0x00E4($sp)            
lbl_8091C09C:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sb      t1, 0x01B9(t2)             # 000001B9
    sh      t0, 0x014C(s0)             # 0000014C
    bne     v0, $zero, lbl_8091C17C    
    sw      $zero, 0x0134(s0)          # 00000134
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38AD          # a1 = 000038AD
    beq     $zero, $zero, lbl_8091C180 
    lw      $ra, 0x0044($sp)           
    addiu   a2, s0, 0x01A0             # a2 = 000001A0
lbl_8091C0CC:
    or      a1, a2, $zero              # a1 = 000001A0
    sw      a2, 0x0050($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0050($sp)            
    addu    a1, s1, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091C0F4:
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    trunc.w.s $f6, $f10                  
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    trunc.w.s $f4, $f8                   
    mfc1    a1, $f6                    
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    trunc.w.s $f6, $f10                  
    mfc1    a2, $f4                    
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    sll     a1, a1, 16                 
    mfc1    a3, $f6                    
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    sw      t5, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    jal     func_80065BCC              
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lwc1    $f8, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f20, $f8                  
    nop
    bc1f    lbl_8091C174               
    nop
    swc1    $f20, 0x0068(s0)           # 00000068
lbl_8091C174:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x30A7          # a1 = 000030A7
lbl_8091C17C:
    lw      $ra, 0x0044($sp)           
lbl_8091C180:
    ldc1    $f20, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0110           # $sp = 00000000


func_8091C194:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x0118(s0)             # 00000118
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    sw      t6, 0x0024($sp)            
    lwc1    $f0, 0x0174(s0)            # 00000174
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    mul.s   $f8, $f6, $f0              
    lwc1    $f4, 0x0164(s0)            # 00000164
    lwc1    $f16, 0x0168(s0)           # 00000168
    mul.s   $f6, $f18, $f0             
    lui     $at, 0x40A0                # $at = 40A00000
    lh      t7, 0x001C(s0)             # 0000001C
    add.s   $f10, $f4, $f8             
    lwc1    $f8, 0x016C(s0)            # 0000016C
    sub.s   $f4, $f16, $f6             
    swc1    $f10, 0x0164(s0)           # 00000164
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, 0x41F0                # $at = 41F00000
    swc1    $f4, 0x0168(s0)            # 00000168
    mul.s   $f18, $f10, $f0            
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f6, 0x0170(s0)            # 00000170
    addiu   $at, $zero, 0x0029         # $at = 00000029
    mul.s   $f10, $f4, $f0             
    add.s   $f16, $f8, $f18            
    sub.s   $f8, $f6, $f10             
    swc1    $f16, 0x016C(s0)           # 0000016C
    bne     t7, $at, lbl_8091C26C      
    swc1    $f8, 0x0170(s0)            # 00000170
    lh      v0, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0x0047            
    bnel    $at, $zero, lbl_8091C250   
    addiu   $at, $zero, 0x0046         # $at = 00000046
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2040          # a1 = 00002040
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2054          # a1 = 00002054
    lh      v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0046         # $at = 00000046
lbl_8091C250:
    bne     v0, $at, lbl_8091C26C      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283F          # a1 = 0000283F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2853          # a1 = 00002853
lbl_8091C26C:
    lh      v0, 0x0140(s0)             # 00000140
    addiu   a0, s0, 0x0174             # a0 = 00000174
    lui     a3, 0x3D23                 # a3 = 3D230000
    slti    $at, v0, 0x0033            
    bne     $at, $zero, lbl_8091C2D8   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
    lh      t8, 0x001C(s0)             # 0000001C
    mfc1    a2, $f2                    
    mov.s   $f0, $f2                   
    slti    $at, t8, 0x0028            
    bne     $at, $zero, lbl_8091C2AC   
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    nop
lbl_8091C2AC:
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    lui     a3, 0x4123                 # a3 = 41230000
    ori     a3, a3, 0x3333             # a3 = 41233333
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_8091C30C 
    lh      v0, 0x0140(s0)             # 00000140
lbl_8091C2D8:
    slti    $at, v0, 0x001A            
    beq     $at, $zero, lbl_8091C30C   
    addiu   a0, s0, 0x0174             # a0 = 00000174
    lui     a2, 0x3D23                 # a2 = 3D230000
    ori     a2, a2, 0xD70A             # a2 = 3D23D70A
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x4123                 # a2 = 41230000
    ori     a2, a2, 0x3333             # a2 = 41233333
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lh      v0, 0x0140(s0)             # 00000140
lbl_8091C30C:
    beq     v0, $zero, lbl_8091C334    
    nop
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0027         # $at = 00000027
    lw      t0, 0x0024($sp)            
    bnel    t9, $at, lbl_8091C340      
    lw      $ra, 0x001C($sp)           
    lbu     t1, 0x013F(t0)             # 0000013F
    beql    t1, $zero, lbl_8091C340    
    lw      $ra, 0x001C($sp)           
lbl_8091C334:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8091C340:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8091C350:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x0146(a0)             # 00000146
    lh      v0, 0x0140(a0)             # 00000140
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_8091C374    
    sh      t7, 0x0146(a0)             # 00000146
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0140(a0)             # 00000140
lbl_8091C374:
    lh      v0, 0x0142(a0)             # 00000142
    beq     v0, $zero, lbl_8091C384    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0142(a0)             # 00000142
lbl_8091C384:
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091C3A0:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    lh      v0, 0x001C(s1)             # 0000001C
    lw      a2, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bne     v0, $at, lbl_8091C4C8      
    or      s0, a2, $zero              # s0 = 00000000
    jal     func_8007E2C0              
    or      a0, a2, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x0150(s1)            # 00000150
    lui     t7, 0xFB00                 # t7 = FB000000
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xA5FF                 # t8 = A5FF0000
    ori     t8, t8, 0x4B00             # t8 = A5FF4B00
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0090($sp)            
    lw      a2, 0x0090($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     a1, 0x0601                 # a1 = 06010000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, 0xE8F8             # a1 = 0600E8F8
    sll     t7, a1,  4                 
    srl     t8, t7, 28                 
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sll     t9, t8,  2                 
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t9                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t2, t3                 
    addu    t5, t4, $at                
    sw      t5, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8091C90C 
    lw      $ra, 0x0044($sp)           
lbl_8091C4C8:
    addiu   $at, $zero, 0x0026         # $at = 00000026
    beq     v0, $at, lbl_8091C4D8      
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v0, $at, lbl_8091C60C      
lbl_8091C4D8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, s2, $at                
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x0150(s1)            # 00000150
    lui     t8, 0xFB00                 # t8 = FB000000
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v1)             # 00000004
    lh      t6, 0x0148(s1)             # 00000148
    lui     t3, 0xFB00                 # t3 = FB000000
    blezl   t6, lbl_8091C560           
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x00FF                 # t9 = 00FF0000
    ori     t9, t9, 0xFF00             # t9 = 00FFFF00
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8091C57C 
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_8091C560:
    lui     t4, 0xA5FF                 # t4 = A5FF0000
    ori     t4, t4, 0x4B00             # t4 = A5FF4B00
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_8091C57C:
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lh      t7, 0x00B8(s1)             # 000000B8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t7, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_8091CA30)     # $at = 80920000
    lwc1    $f8, %lo(var_8091CA30)($at) 
    cvt.s.w $f18, $f16                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x0D60             # t4 = 06010D60
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8091C90C 
    lw      $ra, 0x0044($sp)           
lbl_8091C60C:
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     v0, $at, lbl_8091C628      
    addiu   $at, $zero, 0x0028         # $at = 00000028
    beq     v0, $at, lbl_8091C628      
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bnel    v0, $at, lbl_8091C834      
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_8091C628:
    jal     func_8007E2C0              
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    cfc1    t7, $f31                   
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t6, 0x0000(v0)             # 00000000
    ctc1    t8, $f31                   
    lwc1    $f10, 0x0178(s1)           # 00000178
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t4, 0xFB00                 # t4 = FB000000
    cvt.w.s $f16, $f10                 
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8091C6BC    
    mfc1    t8, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8091C6B0    
    nop
    mfc1    t8, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8091C6C8 
    or      t8, t8, $at                # t8 = 80000000
lbl_8091C6B0:
    beq     $zero, $zero, lbl_8091C6C8 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f16                   
lbl_8091C6BC:
    nop
    bltz    t8, lbl_8091C6B0           
    nop
lbl_8091C6C8:
    ctc1    t7, $f31                   
    andi    t2, t8, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x0178(s1)           # 00000178
    lui     $at, 0x5A32                # $at = 5A320000
    ori     $at, $at, 0x5F00           # $at = 5A325F00
    mul.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    nop
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    or      t2, t9, $at                # t2 = 5A325FFF
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0064($sp)            
    lw      t0, 0x0064($sp)            
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x0168(s1)           # 00000168
    lwc1    $f10, 0x0164(s1)           # 00000164
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lwc1    $f6, 0x016C(s1)            # 0000016C
    trunc.w.s $f16, $f10                 
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    a2, $f16                   
    trunc.w.s $f4, $f18                  
    mfc1    t7, $f8                    
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    sw      t9, 0x001C($sp)            
    lwc1    $f10, 0x0170(s1)           # 00000170
    mfc1    a3, $f4                    
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    trunc.w.s $f16, $f10                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t7, 0x0028($sp)            
    mfc1    t3, $f16                   
    sw      t6, 0x0024($sp)            
    sw      v1, 0x0060($sp)            
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    jal     func_8007EB84              
    sw      t5, 0x0020($sp)            
    lw      t1, 0x0060($sp)            
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xE6A0             # t2 = 0600E6A0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8091C90C 
    lw      $ra, 0x0044($sp)           
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_8091C834:
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f14                  # $f14 = -100.00
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x0150(s1)           # 00000150
    lui     t4, 0xFB00                 # t4 = FB000000
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t2, t9, $at                # t2 = FFFFFF00
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0x1E00             # t5 = 00FF1E00
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x004C($sp)            
    lw      a2, 0x004C($sp)            
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0xF1E0             # t4 = 0600F1E0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)           
lbl_8091C90C:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000

.section .data

var_8091C920: .word 0x00000900, 0x00000030, 0x005A0000, 0x000001F4
.word func_8091A57C
.word func_8091A98C
.word func_8091C350
.word func_8091C3A0
var_8091C940: .word \
0x0A110939, 0x10010000, 0x06000000, 0x00100700, \
0x03200000, 0x0D900700, 0x00000000, 0x01010100, \
0x0014001E, 0x000A0000, 0x00000000
var_8091C96C: .word 0x00000000, 0xBF800000, 0x00000000
var_8091C978: .word 0x00000000, 0x00000000, 0x00000000
var_8091C984: .word 0x00000000, 0x00000000, 0x00000000
var_8091C990: .word 0x00000000, 0x00000000, 0x00000000
var_8091C99C: .word 0x00000000, 0x00000000, 0x00000000
var_8091C9A8: .word 0x00000000, 0xBF000000, 0x00000000
var_8091C9B4: .word 0x00000000, 0xBF000000, 0x00000000
var_8091C9C0: .word \
0x00000000, 0xBF800000, 0x00000000, 0x040572E0, \
0x040576E0, 0x04057AE0, 0x04057EE0, 0x040582E0, \
0x040586E0, 0x04058AE0, 0x04058EE0, 0x00000000

.section .rodata

var_8091C9F0: .word 0x3E051EB8
var_8091C9F4: .word 0x4622F983
var_8091C9F8: .word 0x4622F983
var_8091C9FC: .word 0xBE4CCCCD
var_8091CA00: .word 0x469C4000
var_8091CA04: .word 0xBDA3D70A
var_8091CA08: .word 0x469C4000
var_8091CA0C: .word 0xBDA3D70A
var_8091CA10: .word 0x4622F983
var_8091CA14: .word 0x4622F983
var_8091CA18: .word 0x4622F983
var_8091CA1C: .word 0x4622F983
var_8091CA20: .word 0x4622F983
var_8091CA24: .word 0x4622F983
var_8091CA28: .word 0x4622F983
var_8091CA2C: .word 0xBDCCCCCD
var_8091CA30: .word 0x40490FF9, 0x00000000, 0x00000000, 0x00000000

