.section .text
func_80A912D0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A912E0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A912F0:
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80A9130C      
    lw      v0, 0x1C44(a1)             # 00001C44
    beq     $zero, $zero, lbl_80A9130C 
    lw      v0, 0x0118(a0)             # 00000118
    lw      v0, 0x1C44(a1)             # 00001C44
lbl_80A9130C:
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x0024(a0)             # 00000024
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x0028(a0)             # 00000028
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x002C(a0)             # 0000002C
    jr      $ra                        
    nop


func_80A9132C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t6, 0x02C4(v0)             # 000002C4
    addiu   t7, t6, 0xF000             # t7 = FFFFF000
    sw      t7, 0x0020($sp)            
    sw      t7, 0x02C4(v0)             # 000002C4
    lh      t9, 0x001C(a0)             # 0000001C
    bnel    t9, $at, lbl_80A9136C      
    lw      s0, 0x1C44(a3)             # 00001C44
    beq     $zero, $zero, lbl_80A9136C 
    lw      s0, 0x0118(a0)             # 00000118
    lw      s0, 0x1C44(a3)             # 00001C44
lbl_80A9136C:
    sb      $zero, 0x00C8(s0)          # 000000C8
    sw      a3, 0x0034($sp)            
    lw      a1, 0x0020($sp)            
    jal     func_80A91A24              
    or      a2, s0, $zero              # a2 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x4600(t0)            # 8011BA00
    lw      a3, 0x0034($sp)            
    lw      a0, 0x0020($sp)            
    lh      t1, 0x09D4(t0)             # 801209D4
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, t1, 0x0005            
    beql    $at, $zero, lbl_80A913B0   
    lw      $ra, 0x001C($sp)           
    jal     func_80A920A0              
    or      a2, a3, $zero              # a2 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A913B0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A913C0:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sdc1    $f20, 0x0018($sp)          
    sw      s4, 0x0058($sp)            
    sw      s0, 0x0048($sp)            
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f30                  # $f30 = 15.00
    lui     $at, 0x42D2                # $at = 42D20000
    mtc1    $at, $f28                  # $f28 = 105.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f26                  # $f26 = 30.00
    lui     $at, 0x4298                # $at = 42980000
    lui     s5, %hi(var_80A92910)      # s5 = 80A90000
    lui     s2, %hi(var_80A924BC)      # s2 = 80A90000
    lui     s1, %hi(var_80A92500)      # s1 = 80A90000
    mtc1    $at, $f24                  # $f24 = 76.00
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   s1, s1, %lo(var_80A92500)  # s1 = 80A92500
    addiu   s2, s2, %lo(var_80A924BC)  # s2 = 80A924BC
    addiu   s5, s5, %lo(var_80A92910)  # s5 = 80A92910
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    lh      t3, 0x00A0($sp)            
    c.eq.s  $f20, $f22                 
lbl_80A91454:
    nop
    bc1t    lbl_80A91474               
    sll     t6, s3,  1                 
    lui     t3, %hi(var_80A9251C)      # t3 = 80A90000
    addu    t3, t3, t6                 
    lh      t3, %lo(var_80A9251C)(t3)  
    bltzl   t3, lbl_80A919CC           
    addiu   s3, s3, 0x0001             # s3 = 00000001
lbl_80A91474:
    c.lt.s  $f22, $f20                 
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x4600(a0)            # 8011BA00
    bc1f    lbl_80A91528               
    nop
    multu   t3, s6                     
    mflo    t7                         
    addu    v0, s5, t7                 
    lwc1    $f4, 0x0000(v0)            # 00000000
    multu   s3, s6                     
    lwc1    $f10, 0x0004(v0)           # 00000004
    mflo    t8                         
    addu    v1, s5, t8                 
    lwc1    $f0, 0x0000(v1)            # 00000000
    lwc1    $f2, 0x0004(v1)            # 00000004
    lwc1    $f12, 0x0008(v1)           # 00000008
    sub.s   $f6, $f4, $f0              
    sub.s   $f4, $f10, $f2             
    mul.s   $f8, $f6, $f20             
    nop
    mul.s   $f6, $f4, $f20             
    add.s   $f14, $f8, $f0             
    lwc1    $f8, 0x0008(v0)            # 00000008
    add.s   $f16, $f6, $f2             
    lwc1    $f6, 0x0024(s4)            # 00000024
    sub.s   $f10, $f8, $f12            
    sub.s   $f8, $f14, $f6             
    mul.s   $f4, $f10, $f20            
    swc1    $f8, 0x0088($sp)           
    lh      t9, 0x1334(a0)             # 80121334
    lwc1    $f6, 0x0028(s4)            # 00000028
    mtc1    t9, $f10                   # $f10 = 0.00
    add.s   $f18, $f4, $f12            
    cvt.s.w $f4, $f10                  
    sub.s   $f8, $f16, $f6             
    add.s   $f10, $f4, $f8             
    add.s   $f6, $f10, $f24            
    add.s   $f4, $f6, $f26             
    sub.s   $f8, $f4, $f28             
    add.s   $f10, $f8, $f30            
    swc1    $f10, 0x008C($sp)          
    lwc1    $f6, 0x002C(s4)            # 0000002C
    sub.s   $f4, $f18, $f6             
    beq     $zero, $zero, lbl_80A91584 
    swc1    $f4, 0x0090($sp)           
lbl_80A91528:
    multu   s3, s6                     
    lwc1    $f10, 0x0024(s4)           # 00000024
    mflo    t6                         
    addu    v1, s5, t6                 
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f4, 0x0004(v1)            # 00000004
    sub.s   $f6, $f8, $f10             
    swc1    $f6, 0x0088($sp)           
    lh      t7, 0x1334(a0)             # 80121334
    lwc1    $f8, 0x0028(s4)            # 00000028
    mtc1    t7, $f6                    # $f6 = 0.00
    sub.s   $f10, $f4, $f8             
    cvt.s.w $f4, $f6                   
    add.s   $f8, $f4, $f10             
    add.s   $f6, $f8, $f24             
    add.s   $f4, $f6, $f26             
    lwc1    $f6, 0x0008(v1)            # 00000008
    sub.s   $f10, $f4, $f28            
    add.s   $f8, $f10, $f30            
    swc1    $f8, 0x008C($sp)           
    lwc1    $f4, 0x002C(s4)            # 0000002C
    sub.s   $f10, $f6, $f4             
    swc1    $f10, 0x0090($sp)          
lbl_80A91584:
    addiu   a0, $sp, 0x0088            # a0 = FFFFFFD8
    jal     func_800AB958              
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFCC
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x4600(a0)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lh      t8, 0x1336(a0)             # 80121336
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_80A9253C)      # v0 = 80A90000
    mtc1    t8, $f8                    # $f8 = 0.00
    addu    v0, v0, s3                 
    lbu     v0, %lo(var_80A9253C)(v0)  
    cvt.s.w $f6, $f8                   
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x42C8                # $at = 42C80000
    lui     t4, %hi(var_80A924E8)      # t4 = 80A90000
    lui     t5, %hi(var_80A924D8)      # t5 = 80A90000
    lui     $ra, %hi(var_80A924C8)     # $ra = 80A90000
    div.s   $f10, $f6, $f4             
    lwc1    $f4, 0x007C($sp)           
    addiu   $ra, $ra, %lo(var_80A924C8) # $ra = 80A924C8
    addiu   t5, t5, %lo(var_80A924D8)  # t5 = 80A924D8
    addiu   t4, t4, %lo(var_80A924E8)  # t4 = 80A924E8
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    or      t3, $zero, $zero           # t3 = 00000000
    addiu   a2, $zero, 0xFE80          # a2 = FFFFFE80
    add.s   $f6, $f8, $f10             
    mul.s   $f8, $f4, $f6              
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f8, 0x007C($sp)           
    lh      t9, 0x1336(a0)             # 80121336
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10                  
    div.s   $f10, $f4, $f6             
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x4200                # $at = 42000000
    add.s   $f6, $f4, $f10             
    lwc1    $f4, 0x0080($sp)           
    mul.s   $f10, $f4, $f6             
    mtc1    $at, $f4                   # $f4 = 32.00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    add.s   $f6, $f8, $f4              
    swc1    $f10, 0x0080($sp)          
    trunc.w.s $f4, $f10                  
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f4                    
    mfc1    t0, $f8                    
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    sll     t1, t1,  6                 
    sll     t1, t1, 16                 
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    bne     v0, $at, lbl_80A9170C      
    sra     t1, t1, 16                 
lbl_80A9166C:
    sll     t8, t3,  1                 
    addu    a3, t4, t8                 
    lh      a1, 0x0000(a3)             # 00000000
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sll     t3, t3, 16                 
    subu    a0, $zero, a1              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A916F0   
    sra     t3, t3, 16                 
    addu    v1, t0, a0                 
lbl_80A9169C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A916DC           
    addiu   a0, a0, 0x0001             # a0 = 80120001
    slti    $at, v1, 0x0040            
    beq     $at, $zero, lbl_80A916DC   
    addu    v0, t1, a2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A916DC           
    slti    $at, v0, 0x1000            
    beq     $at, $zero, lbl_80A916DC   
    addu    t9, s0, v1                 
    addu    t6, t9, v0                 
    sb      t2, 0x0000(t6)             # 00000000
    lh      a1, 0x0000(a3)             # 00000000
lbl_80A916DC:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A9169C   
    addu    v1, t0, a0                 
lbl_80A916F0:
    addiu   a2, a2, 0x0040             # a2 = FFFFFEC0
    sll     a2, a2, 16                 
    slti    $at, t3, 0x000C            
    bne     $at, $zero, lbl_80A9166C   
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_80A919CC 
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_80A9170C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A917BC      
    or      t3, $zero, $zero           # t3 = 00000000
    addiu   a2, $zero, 0xFF00          # a2 = FFFFFF00
lbl_80A9171C:
    sll     t7, t3,  1                 
    addu    a3, t5, t7                 
    lh      a1, 0x0000(a3)             # 00000000
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sll     t3, t3, 16                 
    subu    a0, $zero, a1              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A917A0   
    sra     t3, t3, 16                 
    addu    v1, t0, a0                 
lbl_80A9174C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A9178C           
    addiu   a0, a0, 0x0001             # a0 = 80120002
    slti    $at, v1, 0x0040            
    beq     $at, $zero, lbl_80A9178C   
    addu    v0, t1, a2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A9178C           
    slti    $at, v0, 0x1000            
    beq     $at, $zero, lbl_80A9178C   
    addu    t8, s0, v1                 
    addu    t9, t8, v0                 
    sb      t2, 0x0000(t9)             # 00000000
    lh      a1, 0x0000(a3)             # 00000000
lbl_80A9178C:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A9174C   
    addu    v1, t0, a0                 
lbl_80A917A0:
    addiu   a2, a2, 0x0040             # a2 = FFFFFF40
    sll     a2, a2, 16                 
    slti    $at, t3, 0x0008            
    bne     $at, $zero, lbl_80A9171C   
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_80A919CC 
    addiu   s3, s3, 0x0001             # s3 = 00000003
lbl_80A917BC:
    bne     v0, $zero, lbl_80A91874    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      t3, $zero, $zero           # t3 = 00000000
    addiu   a2, $zero, 0xFF40          # a2 = FFFFFF40
lbl_80A917CC:
    sll     t6, t3,  1                 
    addu    a3, $ra, t6                
    lh      v0, 0x0000(a3)             # 00000000
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sll     t3, t3, 16                 
    subu    a0, $zero, v0              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addiu   a1, v0, 0xFFFF             # a1 = 80A8FFFF
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A91858   
    sra     t3, t3, 16                 
    addu    v1, t0, a0                 
lbl_80A91800:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A91844           
    addiu   a0, a0, 0x0001             # a0 = 80120003
    slti    $at, v1, 0x0040            
    beq     $at, $zero, lbl_80A91844   
    addu    v0, t1, a2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A91844           
    slti    $at, v0, 0x1000            
    beq     $at, $zero, lbl_80A91844   
    addu    t7, s0, v1                 
    addu    t8, t7, v0                 
    sb      t2, 0x0000(t8)             # 00000000
    lh      a1, 0x0000(a3)             # 00000000
    addiu   a1, a1, 0xFFFF             # a1 = 80A8FFFE
lbl_80A91844:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A91800   
    addu    v1, t0, a0                 
lbl_80A91858:
    addiu   a2, a2, 0x0040             # a2 = FFFFFF80
    sll     a2, a2, 16                 
    slti    $at, t3, 0x0007            
    bne     $at, $zero, lbl_80A917CC   
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_80A919CC 
    addiu   s3, s3, 0x0001             # s3 = 00000004
lbl_80A91874:
    bne     v0, $at, lbl_80A91924      
    or      t3, $zero, $zero           # t3 = 00000000
    or      t3, $zero, $zero           # t3 = 00000000
    addiu   a2, $zero, 0xFE40          # a2 = FFFFFE40
lbl_80A91884:
    sll     t9, t3,  1                 
    addu    a3, s1, t9                 
    lh      a1, 0x0000(a3)             # 00000000
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sll     t3, t3, 16                 
    subu    a0, $zero, a1              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A91908   
    sra     t3, t3, 16                 
    addu    v1, t0, a0                 
lbl_80A918B4:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A918F4           
    addiu   a0, a0, 0x0001             # a0 = 80120004
    slti    $at, v1, 0x0040            
    beq     $at, $zero, lbl_80A918F4   
    addu    v0, t1, a2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A918F4           
    slti    $at, v0, 0x1000            
    beq     $at, $zero, lbl_80A918F4   
    addu    t6, s0, v1                 
    addu    t7, t6, v0                 
    sb      t2, 0x0000(t7)             # 00000000
    lh      a1, 0x0000(a3)             # 00000000
lbl_80A918F4:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A918B4   
    addu    v1, t0, a0                 
lbl_80A91908:
    addiu   a2, a2, 0x0040             # a2 = FFFFFE80
    sll     a2, a2, 16                 
    slti    $at, t3, 0x000E            
    bne     $at, $zero, lbl_80A91884   
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_80A919CC 
    addiu   s3, s3, 0x0001             # s3 = 00000005
lbl_80A91924:
    addiu   a2, $zero, 0xFF80          # a2 = FFFFFF80
lbl_80A91928:
    sll     t8, t3,  1                 
    addu    a3, s2, t8                 
    lh      v0, 0x0000(a3)             # 00000000
    addiu   t3, t3, 0x0001             # t3 = 00000002
    sll     t3, t3, 16                 
    subu    a0, $zero, v0              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addiu   a1, v0, 0xFFFF             # a1 = 80A8FFFF
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A919B4   
    sra     t3, t3, 16                 
    addu    v1, t0, a0                 
lbl_80A9195C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A919A0           
    addiu   a0, a0, 0x0001             # a0 = 80120005
    slti    $at, v1, 0x0040            
    beq     $at, $zero, lbl_80A919A0   
    addu    v0, t1, a2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A919A0           
    slti    $at, v0, 0x1000            
    beq     $at, $zero, lbl_80A919A0   
    addu    t9, s0, v1                 
    addu    t6, t9, v0                 
    sb      t2, 0x0000(t6)             # 00000000
    lh      a1, 0x0000(a3)             # 00000000
    addiu   a1, a1, 0xFFFF             # a1 = 80A8FFFE
lbl_80A919A0:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A9195C   
    addu    v1, t0, a0                 
lbl_80A919B4:
    addiu   a2, a2, 0x0040             # a2 = FFFFFFC0
    sll     a2, a2, 16                 
    slti    $at, t3, 0x0006            
    bne     $at, $zero, lbl_80A91928   
    sra     a2, a2, 16                 
    addiu   s3, s3, 0x0001             # s3 = 00000006
lbl_80A919CC:
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0010            
    bnel    $at, $zero, lbl_80A91454   
    c.eq.s  $f20, $f22                 
    sh      t3, 0x00A0($sp)            
    lw      $ra, 0x0064($sp)           
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
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000


func_80A91A24:
    addiu   $sp, $sp, 0xFE50           # $sp = FFFFFE50
    sw      s8, 0x0048($sp)            
    lui     s8, 0x8012                 # s8 = 80120000
    sw      s5, 0x003C($sp)            
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    addiu   s8, s8, 0xBA00             # s8 = 8011BA00
    sw      $ra, 0x004C($sp)           
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a3, 0x01BC($sp)            
    lw      t6, 0x0000(s8)             # 8011BA00
    addiu   a0, $zero, 0x003F          # a0 = 0000003F
    or      v0, s1, $zero              # v0 = 00000000
    lh      t7, 0x1346(t6)             # 00001346
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
    beq     t7, $zero, lbl_80A91AFC    
    nop
    or      v0, s1, $zero              # v0 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
lbl_80A91A9C:
    bltz    s3, lbl_80A91AA8           
    slti    $at, s3, 0x0040            
    bne     $at, $zero, lbl_80A91AD0   
lbl_80A91AA8:
    slti    $at, s3, 0x0FC0            
    bne     $at, $zero, lbl_80A91AC0   
    andi    v1, s3, 0x003F             # v1 = 00000000
    slti    $at, s3, 0x1000            
    bne     $at, $zero, lbl_80A91AD0   
    nop
lbl_80A91AC0:
    beq     v1, $zero, lbl_80A91AD0    
    nop
    bnel    a0, v1, lbl_80A91ADC       
    sb      $zero, 0x0000(v0)          # 00000000
lbl_80A91AD0:
    beq     $zero, $zero, lbl_80A91ADC 
    sb      s0, 0x0000(v0)             # 00000000
    sb      $zero, 0x0000(v0)          # 00000000
lbl_80A91ADC:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x1000            
    bne     $at, $zero, lbl_80A91A9C   
    addiu   v0, v0, 0x0001             # v0 = 00000001
    beq     $zero, $zero, lbl_80A91B1C 
    lw      t8, 0x0000(s8)             # 8011BA00
lbl_80A91AFC:
    addiu   s3, s3, 0x0001             # s3 = 00000002
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0400            
    addiu   v0, v0, 0x0004             # v0 = 00000005
    bne     $at, $zero, lbl_80A91AFC   
    sw      $zero, -0x0004(v0)         # 00000001
    lw      t8, 0x0000(s8)             # 8011BA00
lbl_80A91B1C:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f22                  # $f22 = 100.00
    lh      t9, 0x1338(t8)             # 00001338
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t3, t9, 0x0046             # t3 = 00000046
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_800AA9E0              
    div.s   $f12, $f6, $f22            
    lui     a0, %hi(var_80A9254C)      # a0 = 80A90000
    lui     v1, %hi(var_80A92910)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A92910)  # v1 = 80A92910
    addiu   a0, a0, %lo(var_80A9254C)  # a0 = 80A9254C
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addu    t4, a0, s3                 
lbl_80A91B60:
    lb      v0, 0x0000(t4)             # 00000000
    bltzl   v0, lbl_80A91BA4           
    addiu   s3, s3, 0x0001             # s3 = 00000001
    multu   v0, s4                     
    mflo    t5                         
    addu    t6, v1, t5                 
    nop
    multu   s3, s4                     
    mflo    t7                         
    addu    t8, s5, t7                 
    lw      t3, 0x08F8(t8)             # 000008F8
    sw      t3, 0x0000(t6)             # 00000000
    lw      t9, 0x08FC(t8)             # 000008FC
    sw      t9, 0x0004(t6)             # 00000004
    lw      t3, 0x0900(t8)             # 00000900
    sw      t3, 0x0008(t6)             # 00000008
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_80A91BA4:
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0012            
    bnel    $at, $zero, lbl_80A91B60   
    addu    t4, a0, s3                 
    lwc1    $f2, 0x0000(v1)            # 80A92910
    lwc1    $f18, 0x00B4(v1)           # 80A929C4
    lui     $at, %hi(var_80A92810)     # $at = 80A90000
    lwc1    $f14, %lo(var_80A92810)($at) 
    sub.s   $f4, $f18, $f2             
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f8, 0x0004(v1)            # 80A92914
    mul.s   $f6, $f4, $f14             
    lwc1    $f12, 0x0008(v1)           # 80A92918
    add.s   $f16, $f8, $f10            
    lwc1    $f10, 0x00B8(v1)           # 80A929C8
    lui     $at, %hi(var_80A92814)     # $at = 80A90000
    or      s3, $zero, $zero           # s3 = 00000000
    swc1    $f16, 0x0004(v1)           # 80A92914
    add.s   $f8, $f6, $f2              
    lwc1    $f0, 0x0004(v1)            # 80A92914
    swc1    $f8, 0x00B4(v1)            # 80A929C4
    sub.s   $f16, $f10, $f0            
    lwc1    $f8, 0x00BC(v1)            # 80A929CC
    lwc1    $f18, %lo(var_80A92814)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    sub.s   $f10, $f8, $f12            
    mul.s   $f4, $f16, $f18            
    mtc1    $at, $f20                  # $f20 = 5.00
    mul.s   $f16, $f10, $f14           
    add.s   $f6, $f4, $f0              
    add.s   $f18, $f16, $f12           
    swc1    $f6, 0x00B8(v1)            # 80A929C8
    swc1    $f18, 0x00BC(v1)           # 80A929CC
    mtc1    s3, $f4                    # $f4 = 0.00
lbl_80A91C34:
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4                   
    div.s   $f8, $f6, $f20             
    mfc1    a2, $f8                    
    jal     func_80A913C0              
    nop
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0006            
    bnel    $at, $zero, lbl_80A91C34   
    mtc1    s3, $f4                    # $f4 = 0.00
    lh      t4, 0x001C(s2)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s2, s5, 0x0A10             # s2 = 00000A10
    beq     t4, $at, lbl_80A91FFC      
    or      a0, s2, $zero              # a0 = 00000A10
    addiu   a1, $sp, 0x0178            # a1 = FFFFFFC8
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0000(s8)             # 8011BA00
    lh      t5, 0x017A($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t7, 0x0A82(v1)             # 00000A82
    lh      t3, 0x0178($sp)            
    or      a0, s2, $zero              # a0 = 00000A10
    sll     t6, t7, 15                 
    addu    t8, t5, t6                 
    addu    t9, t8, $at                
    sh      t9, 0x017A($sp)            
    lh      t4, 0x0A84(v1)             # 00000A84
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, t4, 0xFFFF             # t7 = FFFFFFFF
    multu   t3, t7                     
    mflo    t5                         
    sh      t5, 0x0178($sp)            
    jal     func_800AA79C              
    nop
    lui     a0, %hi(var_80A924B0)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A924B0)  # a0 = 80A924B0
    jal     func_800AB958              
    addiu   a1, $sp, 0x016C            # a1 = FFFFFFBC
    lh      t6, 0x017A($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f20                  # $f20 = 32768.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A92818)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A92818)($at) 
    cvt.s.w $f16, $f10                 
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f18, $f16, $f20           
    mul.s   $f12, $f18, $f4            
    jal     func_800AAB94              
    nop
    lh      t8, 0x0178($sp)            
    lui     $at, %hi(var_80A9281C)     # $at = 80A90000
    lwc1    $f16, %lo(var_80A9281C)($at) 
    mtc1    t8, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6                   
    div.s   $f10, $f8, $f20            
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f20                  # $f20 = 4.00
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x0064            # s7 = FFFFFEB4
    addiu   s6, $sp, 0x0188            # s6 = FFFFFFD8
lbl_80A91D4C:
    multu   s3, s4                     
    lui     t9, %hi(var_80A92560)      # t9 = 80A90000
    addiu   t9, t9, %lo(var_80A92560)  # t9 = 80A92560
    or      a1, s6, $zero              # a1 = FFFFFFD8
    mflo    s2                         
    addu    a0, s2, t9                 
    jal     func_800AB958              
    nop
    lw      v1, 0x0000(s8)             # 8011BA00
    lwc1    $f10, 0x0188($sp)          
    addu    v0, s7, s2                 
    lh      t4, 0x0A78(v1)             # 00000A78
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    mtc1    t4, $f18                   # $f18 = 0.00
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0016            
    cvt.s.w $f4, $f18                  
    lwc1    $f18, 0x016C($sp)          
    div.s   $f6, $f4, $f22             
    add.s   $f8, $f6, $f20             
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v0)            # 00000000
    lh      t3, 0x0A78(v1)             # 00000A78
    lwc1    $f18, 0x018C($sp)          
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    lwc1    $f6, 0x0170($sp)           
    div.s   $f10, $f8, $f22            
    add.s   $f16, $f10, $f20           
    mul.s   $f4, $f16, $f18            
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0004(v0)            # 00000004
    lh      t7, 0x0A78(v1)             # 00000A78
    lwc1    $f6, 0x0190($sp)           
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    lwc1    $f10, 0x0174($sp)          
    div.s   $f18, $f16, $f22           
    add.s   $f4, $f18, $f20            
    mul.s   $f8, $f4, $f6              
    add.s   $f16, $f8, $f10            
    bne     $at, $zero, lbl_80A91D4C   
    swc1    $f16, 0x0008(v0)           # 00000008
    lh      t5, 0x1338(v1)             # 00001338
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, t5, 0x0046             # t6 = 00000046
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    jal     func_800AA9E0              
    div.s   $f12, $f4, $f22            
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s2, %hi(var_80A924C8)      # s2 = 80A90000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s2, s2, %lo(var_80A924C8)  # s2 = 80A924C8
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80A91E3C:
    multu   s3, s4                     
    lwc1    $f8, 0x0024(s5)            # 00000024
    lw      t9, 0x0000(s8)             # 8011BA00
    lui     $at, 0x4180                # $at = 41800000
    addiu   a0, $sp, 0x0194            # a0 = FFFFFFE4
    or      a1, s6, $zero              # a1 = FFFFFFD8
    mflo    t8                         
    addu    v0, s7, t8                 
    lwc1    $f6, 0x0000(v0)            # 00000000
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0194($sp)          
    lh      t4, 0x0A74(t9)             # 00000A74
    lwc1    $f18, 0x0028(s5)           # 00000028
    lwc1    $f16, 0x0004(v0)           # 00000004
    mtc1    t4, $f6                    # $f6 = 0.00
    sub.s   $f4, $f16, $f18            
    mtc1    $at, $f16                  # $f16 = 16.00
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f8, $f4             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0198($sp)          
    lwc1    $f8, 0x002C(s5)            # 0000002C
    lwc1    $f6, 0x0008(v0)            # 00000008
    sub.s   $f4, $f6, $f8              
    jal     func_800AB958              
    swc1    $f4, 0x019C($sp)           
    lw      v1, 0x0000(s8)             # 8011BA00
    lwc1    $f10, 0x0188($sp)          
    lui     $at, 0x4200                # $at = 42000000
    lh      t3, 0x0A88(v1)             # 00000A88
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    mtc1    t3, $f16                   # $f16 = 0.00
    sra     s3, s3, 16                 
    cvt.s.w $f18, $f16                 
    lwc1    $f16, 0x018C($sp)          
    div.s   $f6, $f18, $f22            
    add.s   $f8, $f20, $f6             
    mul.s   $f4, $f10, $f8             
    swc1    $f4, 0x0188($sp)           
    lh      t7, 0x0A88(v1)             # 00000A88
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    div.s   $f10, $f6, $f22            
    mtc1    $at, $f6                   # $f6 = 32.00
    add.s   $f8, $f20, $f10            
    add.s   $f10, $f4, $f6             
    mul.s   $f18, $f16, $f8            
    trunc.w.s $f16, $f10                 
    swc1    $f18, 0x018C($sp)          
    trunc.w.s $f8, $f18                  
    mfc1    t0, $f16                   
    mfc1    t1, $f8                    
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    sll     t1, t1,  6                 
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    or      t2, $zero, $zero           # t2 = 00000000
lbl_80A91F34:
    addiu   a3, $zero, 0xFF40          # a3 = FFFFFF40
lbl_80A91F38:
    sll     t8, t2,  1                 
    addu    a2, s2, t8                 
    lh      v0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16                 
    subu    a0, $zero, v0              
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addiu   a1, v0, 0xFFFF             # a1 = FFFFFFFF
    slt     $at, a0, a1                
    beq     $at, $zero, lbl_80A91FC4   
    sra     t2, t2, 16                 
    addu    v0, t0, a0                 
lbl_80A91F6C:
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A91FB0           
    addiu   a0, a0, 0x0001             # a0 = 00000001
    slti    $at, v0, 0x0040            
    beq     $at, $zero, lbl_80A91FB0   
    addu    v1, t1, a3                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A91FB0           
    slti    $at, v1, 0x1000            
    beq     $at, $zero, lbl_80A91FB0   
    addu    t9, s1, v0                 
    addu    t4, t9, v1                 
    sb      s0, 0x0000(t4)             # 00000000
    lh      a1, 0x0000(a2)             # 00000000
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFE
lbl_80A91FB0:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slt     $at, a0, a1                
    bnel    $at, $zero, lbl_80A91F6C   
    addu    v0, t0, a0                 
lbl_80A91FC4:
    addiu   a3, a3, 0x0040             # a3 = FFFFFF80
    sll     a3, a3, 16                 
    slti    $at, t2, 0x0007            
    bne     $at, $zero, lbl_80A91F38   
    sra     a3, a3, 16                 
    addiu   t2, t2, 0x0001             # t2 = 00000002
    sll     t2, t2, 16                 
    sra     t2, t2, 16                 
    slti    $at, t2, 0x0006            
    bnel    $at, $zero, lbl_80A91F34   
    or      t2, $zero, $zero           # t2 = 00000000
    slti    $at, s3, 0x0016            
    bne     $at, $zero, lbl_80A91E3C   
    nop
lbl_80A91FFC:
    lw      t3, 0x0000(s8)             # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      v0, s1, $zero              # v0 = 00000000
    lh      t7, 0x134E(t3)             # 0000134E
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    bnel    t7, $at, lbl_80A9206C      
    lw      $ra, 0x004C($sp)           
lbl_80A9201C:
    lbu     t5, 0x0000(v0)             # 00000000
    beql    t5, $zero, lbl_80A92054    
    addiu   s3, s3, 0x0001             # s3 = 00000001
    lw      v1, 0x0000(s8)             # 8011BA00
    sra     t6, s3,  6                 
    lh      t8, 0x134C(v1)             # 0000134C
    lh      t3, 0x134E(v1)             # 0000134E
    addiu   t9, t8, 0x0004             # t9 = 00000004
    multu   t6, t9                     
    subu    t7, a0, t3                 
    mflo    t4                         
    subu    t5, t7, t4                 
    sb      t5, 0x0000(v0)             # 00000000
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_80A92054:
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x1000            
    bne     $at, $zero, lbl_80A9201C   
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lw      $ra, 0x004C($sp)           
lbl_80A9206C:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    lw      s5, 0x003C($sp)            
    lw      s6, 0x0040($sp)            
    lw      s7, 0x0044($sp)            
    lw      s8, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01B0           # $sp = 00000000


func_80A920A0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s8, 0x0048($sp)            
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    or      s8, a2, $zero              # s8 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lw      a0, 0x0000(s8)             # 00000000
    or      s3, a0, $zero              # s3 = 00000000
    jal     func_8007E404              
    nop
    lui     s5, 0x8012                 # s5 = 80120000
    addiu   s5, s5, 0xBA00             # s5 = 8011BA00
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0000(s5)             # 8011BA00
    lh      t9, 0x133C(t8)             # 0000133C
    addiu   t0, t9, 0x0032             # t0 = 00000032
    andi    t1, t0, 0x00FF             # t1 = 00000032
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0024(s1)           # 00000024
    lwc1    $f14, 0x0080(s1)           # 00000080
    jal     func_800AA7F4              
    lw      a2, 0x002C(s1)             # 0000002C
    lw      t4, 0x0000(s5)             # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f22                  # $f22 = 100.00
    lh      t5, 0x133A(t4)             # 0000133A
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_800AAB94              
    div.s   $f12, $f6, $f22            
    lw      t6, 0x0000(s5)             # 8011BA00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lh      t7, 0x1352(t6)             # 00001352
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f12, $f20                 
    cvt.s.w $f10, $f8                  
    mov.s   $f14, $f20                 
    div.s   $f18, $f10, $f16           
    add.s   $f4, $f18, $f20            
    mfc1    a2, $f4                    
    jal     func_800AA8FC              
    nop
    lw      a0, 0x0000(s5)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t8, 0x1350(a0)             # 00001350
    lh      t9, 0x1340(a0)             # 00001340
    lui     $at, 0x4000                # $at = 40000000
    mtc1    t8, $f6                    # $f6 = 0.00
    mtc1    $at, $f16                  # $f16 = 2.00
    lwc1    $f18, 0x0028(s1)           # 00000028
    cvt.s.w $f8, $f6                   
    lwc1    $f4, 0x0080(s1)            # 00000080
    lh      t0, 0x1342(a0)             # 00001342
    lh      t2, 0x1348(a0)             # 00001348
    lui     $at, 0x41A0                # $at = 41A00000
    sub.s   $f6, $f18, $f4             
    addiu   t1, t0, 0xFFFB             # t1 = FFFFFFFB
    mtc1    t1, $f18                   # $f18 = NaN
    div.s   $f10, $f8, $f2             
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    $zero, $f14                # $f14 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f4, $f18                  
    add.s   $f12, $f10, $f16           
    cvt.s.w $f10, $f8                  
    add.s   $f16, $f6, $f10            
    mtc1    t2, $f10                   # $f10 = 0.00
    mul.s   $f8, $f16, $f4             
    mtc1    $at, $f4                   # $f4 = 20.00
    cvt.s.w $f18, $f10                 
    div.s   $f6, $f8, $f2              
    add.s   $f16, $f18, $f6            
    sub.s   $f0, $f16, $f4             
    mfc1    a2, $f0                    
    jal     func_800AA7F4              
    nop
    lw      a0, 0x0000(s5)             # 8011BA00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f0                   # $f0 = 1000.00
    lh      t5, 0x134A(a0)             # 0000134A
    lh      t3, 0x1344(a0)             # 00001344
    lui     $at, %hi(var_80A92820)     # $at = 80A90000
    addiu   t6, t5, 0xFF06             # t6 = FFFFFF06
    mtc1    t6, $f6                    # $f6 = NaN
    addiu   t4, t3, 0xFF06             # t4 = FFFFFF06
    mtc1    t4, $f8                    # $f8 = NaN
    cvt.s.w $f16, $f6                  
    lwc1    $f2, %lo(var_80A92820)($at) 
    mov.s   $f14, $f20                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f10, $f8                  
    div.s   $f4, $f16, $f0             
    div.s   $f18, $f10, $f0            
    add.s   $f8, $f4, $f2              
    mfc1    a2, $f8                    
    jal     func_800AA8FC              
    add.s   $f12, $f18, $f2            
    lui     s7, 0xDA38                 # s7 = DA380000
    ori     s7, s7, 0x0003             # s7 = DA380003
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s8)             # 00000000
    lui     s6, 0xDE00                 # s6 = DE000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, %hi(var_80A927B8)      # t9 = 80A90000
    addiu   t9, t9, %lo(var_80A927B8)  # t9 = 80A927B8
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xFD90                 # t1 = FD900000
    lui     t3, 0xF590                 # t3 = F5900000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      s2, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t4, 0x0709                 # t4 = 07090000
    ori     t4, t4, 0x8260             # t4 = 07098260
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t6, 0xE600                 # t6 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, 0x077F                 # t9 = 077F0000
    ori     t9, t9, 0xF100             # t9 = 077FF100
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t3, 0xF588                 # t3 = F5880000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t4, 0x0009                 # t4 = 00090000
    ori     t4, t4, 0x8260             # t4 = 00098260
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    ori     t3, t3, 0x1000             # t3 = F5881000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0x000F                 # t7 = 000F0000
    ori     t7, t7, 0xC0FC             # t7 = 000FC0FC
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     s4, %hi(var_80A927D8)      # s4 = 80A90000
    addiu   s4, s4, %lo(var_80A927D8)  # s4 = 80A927D8
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s5)             # 8011BA00
    or      s1, $zero, $zero           # s1 = 00000000
    lh      t9, 0x0A70(a0)             # 00000A70
    blezl   t9, lbl_80A92454           
    lw      $ra, 0x004C($sp)           
    lh      t0, 0x0A72(a0)             # 00000A72
lbl_80A923D8:
    mov.s   $f14, $f20                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    div.s   $f6, $f18, $f22            
    add.s   $f12, $f6, $f20            
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s2, 0x02D0(s3)             # 000002D0
    addiu   t1, s2, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s5)             # 8011BA00
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    lh      t3, 0x0A70(a0)             # 00000A70
    sra     s1, s1, 16                 
    slt     $at, s1, t3                
    bnel    $at, $zero, lbl_80A923D8   
    lh      t0, 0x0A72(a0)             # 00000A72
    lw      $ra, 0x004C($sp)           
lbl_80A92454:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    lw      s5, 0x003C($sp)            
    lw      s6, 0x0040($sp)            
    lw      s7, 0x0044($sp)            
    lw      s8, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
    nop

.section .data

var_80A92490: .word 0x013A0900, 0x00000030, 0x00010000, 0x0000013C
.word func_80A912D0
.word func_80A912E0
.word func_80A912F0
.word func_80A9132C
var_80A924B0: .word 0x00000000, 0x00000000, 0x00000000
var_80A924BC: .word 0x00010002, 0x00030003, 0x00020001
var_80A924C8: .word 0x00020003, 0x00040004, 0x00040003, 0x00020000
var_80A924D8: .word 0x00020003, 0x00040004, 0x00040004, 0x00030002
var_80A924E8: .word \
0x00020004, 0x00050005, 0x00060006, 0x00060006, \
0x00050005, 0x00040002
var_80A92500: .word \
0x00020004, 0x00050006, 0x00070008, 0x00080008, \
0x00080007, 0x00060005, 0x00040002
var_80A9251C: .word \
0x0001FFFF, 0x00010001, 0x00030004, 0x00010006, \
0x00070002, 0x0009000A, 0x0002000C, 0x000D0000
var_80A9253C: .word 0x02020203, 0x03030303, 0x03000000, 0x00000003
var_80A9254C: .word \
0x02090A0B, 0x0C0D0E00, 0x0FFF0304, 0x05060708, \
0xFF010000
var_80A92560: .word \
0xBF800000, 0x40000000, 0xBE4CCCCD, 0x00000000, \
0x40000000, 0xBF000000, 0x3F800000, 0x40000000, \
0xBE4CCCCD, 0xC0000000, 0x3F800000, 0xBF000000, \
0xBF800000, 0x3F800000, 0xBE4CCCCD, 0x00000000, \
0x3F800000, 0xBE4CCCCD, 0x3F800000, 0x3F800000, \
0xBE4CCCCD, 0x40000000, 0x3F800000, 0xBF000000, \
0xC0000000, 0x00000000, 0xBF000000, 0xBF800000, \
0x00000000, 0xBE4CCCCD, 0x00000000, 0x00000000, \
0x00000000, 0x3F800000, 0x00000000, 0xBE4CCCCD, \
0x40000000, 0x00000000, 0xBF000000, 0xC0000000, \
0xBF800000, 0xBF000000, 0xBF800000, 0xBF800000, \
0xBE4CCCCD, 0x00000000, 0xBF800000, 0xBDCCCCCD, \
0x3F800000, 0xBF800000, 0xBE4CCCCD, 0x40000000, \
0xBF800000, 0xBF000000, 0xBF800000, 0xC0000000, \
0xBE4CCCCD, 0x00000000, 0xC0000000, 0xBE4CCCCD, \
0x3F800000, 0xC0000000, 0xBE4CCCCD, 0x00000000, \
0xC0400000, 0xBF000000, 0xBF800000, 0x40000000, \
0xBE4CCCCD, 0x00000000, 0x40000000, 0xBF000000, \
0x3F800000, 0x40000000, 0xBE4CCCCD, 0xC0000000, \
0x3F800000, 0xBF000000, 0xBF800000, 0x3F800000, \
0xBE4CCCCD, 0x00000000, 0x3F800000, 0xBE4CCCCD, \
0x3F800000, 0x3F800000, 0xBE4CCCCD, 0x40000000, \
0x3F800000, 0xBF000000, 0xC0000000, 0x00000000, \
0xBF000000, 0xBF800000, 0x00000000, 0xBE4CCCCD, \
0x00000000, 0x00000000, 0x00000000, 0x3F800000, \
0x00000000, 0xBE4CCCCD, 0x40000000, 0x00000000, \
0xBF000000, 0xC0000000, 0xBF800000, 0xBF000000, \
0xBF800000, 0xBF800000, 0xBE4CCCCD, 0x00000000, \
0xBF800000, 0xBDCCCCCD, 0x3F800000, 0xBF800000, \
0xBE4CCCCD, 0x40000000, 0xBF800000, 0xBF000000, \
0xBF800000, 0xC0000000, 0xBE4CCCCD, 0x00000000, \
0xC0000000, 0xBE4CCCCD, 0x3F800000, 0xC0000000, \
0xBE4CCCCD, 0x00000000, 0xC0400000, 0xBF000000, \
0x00000000, 0x00000000
var_80A92778: .word \
0xFF9C0000, 0xFF9C0000, 0x00000800, 0xFFFFFFFF, \
0x00640000, 0xFF9C0000, 0x08000800, 0xFFFFFFFF, \
0x00640000, 0x00640000, 0x08000000, 0xFFFFFFFF, \
0xFF9C0000, 0x00640000, 0x00000000, 0xFFFFFFFF
var_80A927B8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xDF000000, 0x00000000
var_80A927D8: .word \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184DD8, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A92778
.word \
0x06000204, 0x00000406, 0xDF000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A92810: .word 0x3F99999A
var_80A92814: .word 0xBF99999A
var_80A92818: .word 0x40490FDB
var_80A9281C: .word 0x40490FDB
var_80A92820: .word 0x3F19999A, 0x00000000, 0x00000000, 0x00000000

.bss

var_80A92910: .space 0xC0
