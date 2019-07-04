.section .text
func_809B7650:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s3, 0x0034($sp)            
    sw      s2, 0x0030($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s4, 0x0038($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    lui     a1, %hi(var_809B9DF8)      # a1 = 809C0000
    addiu   a1, a1, %lo(var_809B9DF8)  # a1 = 809B9DF8
    jal     func_80063F7C              
    or      a0, s2, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s2, 0x018C             # t6 = 0000018C
    addiu   t7, s2, 0x0204             # t7 = 00000204
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x14B8             # a3 = 060014B8
    addiu   a2, a2, 0x6BC0             # a2 = 06006BC0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s2, 0x013C             # a1 = 0000013C
    addiu   s0, s2, 0x027C             # s0 = 0000027C
    or      a1, s0, $zero              # a1 = 0000027C
    jal     func_8004A484              
    or      a0, s3, $zero              # a0 = 00000000
    lui     a3, %hi(var_809B9D68)      # a3 = 809C0000
    addiu   t9, s2, 0x029C             # t9 = 0000029C
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809B9D68)  # a3 = 809B9D68
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 0000027C
    jal     func_8004A874              
    or      a2, s2, $zero              # a2 = 00000000
    lw      v0, 0x0298(s2)             # 00000298
    lui     s0, %hi(var_809B9D78)      # s0 = 809C0000
    lui     s4, %hi(var_809B9DD0)      # s4 = 809C0000
    lh      t0, 0x002E(v0)             # 0000002E
    addiu   s4, s4, %lo(var_809B9DD0)  # s4 = 809B9DD0
    addiu   s0, s0, %lo(var_809B9D78)  # s0 = 809B9D78
    addiu   s1, s2, 0x02DC             # s1 = 000002DC
    sh      t0, 0x0036(v0)             # 00000036
lbl_809B7708:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004AB7C              
    or      a1, s1, $zero              # a1 = 000002DC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 000002DC
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_8004ACEC              
    or      a3, s0, $zero              # a3 = 809B9D78
    addiu   s0, s0, 0x002C             # s0 = 809B9DA4
    bne     s0, s4, lbl_809B7708       
    addiu   s1, s1, 0x004C             # s1 = 00000328
    lui     a1, %hi(var_809B9DD8)      # a1 = 809C0000
    lui     a2, %hi(var_809B9DD0)      # a2 = 809C0000
    addiu   a2, a2, %lo(var_809B9DD0)  # a2 = 809B9DD0
    addiu   a1, a1, %lo(var_809B9DD8)  # a1 = 809B9DD8
    jal     func_80050344              
    addiu   a0, s2, 0x0098             # a0 = 00000098
    lh      t1, 0x001C(s2)             # 0000001C
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    sb      s0, 0x0184(s2)             # 00000184
    bne     t1, $zero, lbl_809B7780    
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, s3, 0x1C24             # a1 = 00001C24
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_809B7D14              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B77A0 
    lw      $ra, 0x003C($sp)           
lbl_809B7780:
    jal     func_809B7DE0              
    or      a0, s2, $zero              # a0 = 00000000
    sh      $zero, 0x018A(s2)          # 0000018A
    sh      s0, 0x0186(s2)             # 00000186
    lui     $at, %hi(var_809B9E20)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E20)($at) 
    swc1    $f4, 0x000C(s2)            # 0000000C
    lw      $ra, 0x003C($sp)           
lbl_809B77A0:
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809B77BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s4, 0x0028($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, s2, 0x027C             # a1 = 0000027C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s2, 0x02DC             # s1 = 000002DC
    addiu   s4, $zero, 0x0098          # s4 = 00000098
lbl_809B77F8:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    or      a1, s1, $zero              # a1 = 000002DC
    addiu   s0, s0, 0x004C             # s0 = 0000004C
    bne     s0, s4, lbl_809B77F8       
    addiu   s1, s1, 0x004C             # s1 = 00000328
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809B7830:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lb      t7, 0x0184(a1)             # 00000184
    lh      t6, 0x00B6(a1)             # 000000B6
    subu    $at, $zero, t7             
    sll     t8, $at, 14                
    addu    t9, t6, t8                 
    sh      t9, 0x0032(a1)             # 00000032
    lh      a0, 0x0032(a1)             # 00000032
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)            
    lui     $at, %hi(var_809B9E24)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E24)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0008(a1)            # 00000008
    lh      a0, 0x0032(a1)             # 00000032
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(a1)           # 00000024
    lui     $at, %hi(var_809B9E28)     # $at = 809C0000
    lwc1    $f16, %lo(var_809B9E28)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0010(a1)            # 00000010
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(a1)            # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809B78AC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lwc1    $f8, 0x0024(a0)            # 00000024
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lui     $at, 0x4040                # $at = 40400000
    swc1    $f8, 0x0024($sp)           
    lwc1    $f10, 0x000C(a0)           # 0000000C
    mtc1    $at, $f16                  # $f16 = 3.00
    sub.s   $f0, $f4, $f6              
    lw      t6, 0x0034($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    add.s   $f18, $f10, $f16           
    addu    t7, t7, t6                 
    addiu   $at, $zero, 0x0007         # $at = 00000007
    swc1    $f18, 0x0028($sp)          
    lwc1    $f4, 0x002C(a0)            # 0000002C
    swc1    $f4, 0x002C($sp)           
    lw      t7, 0x1DE4(t7)             # 00011DE4
    divu    $zero, t7, $at             
    mfhi    t8                         
    bnel    t8, $zero, lbl_809B7950    
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0xC2C8                # $at = C2C80000
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_809B7950               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f8                   # $f8 = -100.00
    or      a0, t6, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    c.lt.s  $f8, $f0                   
    addiu   a2, $zero, 0x0320          # a2 = 00000320
    addiu   a3, $zero, 0x0514          # a3 = 00000514
    bc1fl   lbl_809B7950               
    lw      $ra, 0x001C($sp)           
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
lbl_809B7950:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B795C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lw      v1, 0x004C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   a0, $zero, 0x1200          # a0 = 00001200
    addu    v1, v1, $at                
    lw      t6, 0x1DE4(v1)             # 00001DE4
    addiu   a1, $zero, 0x0C00          # a1 = 00000C00
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809B79D0    
    nop
    addiu   a0, $zero, 0x1200          # a0 = 00001200
    addiu   a1, $zero, 0x0C00          # a1 = 00000C00
    jal     func_80063BF0              
    sw      v1, 0x0034($sp)            
    lb      t0, 0x0184(s0)             # 00000184
    lh      t8, 0x00B6(s0)             # 000000B6
    lw      v1, 0x0034($sp)            
    sll     t1, t0,  2                 
    addu    t1, t1, t0                 
    sll     t1, t1,  9                 
    addu    t9, v0, t8                 
    subu    a0, t9, t1                 
    sll     a0, a0, 16                 
    beq     $zero, $zero, lbl_809B7A00 
    sra     a0, a0, 16                 
lbl_809B79D0:
    jal     func_80063BF0              
    sw      v1, 0x0034($sp)            
    lb      t3, 0x0184(s0)             # 00000184
    lh      t2, 0x00B6(s0)             # 000000B6
    lw      v1, 0x0034($sp)            
    sll     t4, t3,  2                 
    addu    t4, t4, t3                 
    sll     t4, t4,  9                 
    subu    t5, t2, t4                 
    subu    a0, t5, v0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
lbl_809B7A00:
    lui     t6, %hi(func_809B8EB4)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809B8EB4) # t6 = 809B8EB4
    sw      t6, 0x0030($sp)            
    lw      v0, 0x0180(s0)             # 00000180
    lui     t7, %hi(func_809B8DF4)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809B8DF4) # t7 = 809B8DF4
    beq     t6, v0, lbl_809B7B04       
    nop
    beq     t7, v0, lbl_809B7A38       
    nop
    lw      t8, 0x1DE4(v1)             # 00001DE4
    andi    t0, t8, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_809B7AAC    
    nop
lbl_809B7A38:
    jal     func_800636C4              # sins?
    sh      a0, 0x003A($sp)            
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x003A($sp)            
    mul.s   $f8, $f0, $f6              
    sub.s   $f10, $f4, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x003C($sp)          
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f0, $f18             
    mtc1    $at, $f10                  # $f10 = 1.00
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    sub.s   $f4, $f16, $f6             
    swc1    $f4, 0x0044($sp)           
    lwc1    $f8, 0x000C(s0)            # 0000000C
    sw      $zero, 0x0010($sp)         
    add.s   $f18, $f8, $f10            
    jal     func_8001CF3C              
    swc1    $f18, 0x0040($sp)          
    beq     $zero, $zero, lbl_809B7B74 
    addiu   t9, $zero, 0x0001          # t9 = 00000001
lbl_809B7AAC:
    jal     func_800636C4              # sins?
    sh      a0, 0x003A($sp)            
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x003A($sp)            
    mul.s   $f4, $f0, $f6              
    sub.s   $f8, $f16, $f4             
    jal     func_80063684              # coss?
    swc1    $f8, 0x003C($sp)           
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f18                  # $f18 = 120.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f6, $f0, $f18             
    mtc1    $at, $f8                   # $f8 = 5.00
    sub.s   $f16, $f10, $f6            
    swc1    $f16, 0x0044($sp)          
    lwc1    $f4, 0x000C(s0)            # 0000000C
    add.s   $f18, $f4, $f8             
    beq     $zero, $zero, lbl_809B7B70 
    swc1    $f18, 0x0040($sp)          
lbl_809B7B04:
    jal     func_800636C4              # sins?
    sh      a0, 0x003A($sp)            
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f10, 0x0024(s0)           # 00000024
    lh      a0, 0x003A($sp)            
    mul.s   $f16, $f0, $f6             
    sub.s   $f4, $f10, $f16            
    jal     func_80063684              # coss?
    swc1    $f4, 0x003C($sp)           
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f0, $f18             
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    sub.s   $f10, $f8, $f6             
    swc1    $f10, 0x0044($sp)          
    lwc1    $f16, 0x000C(s0)           # 0000000C
    sw      $zero, 0x0010($sp)         
    add.s   $f18, $f16, $f4            
    jal     func_8001CF3C              
    swc1    $f18, 0x0040($sp)          
lbl_809B7B70:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
lbl_809B7B74:
    addiu   t1, $zero, 0x0320          # t1 = 00000320
    sw      t1, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t3, 0x0030($sp)            
    lw      t2, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    beql    t3, t2, lbl_809B7BB4       
    lw      $ra, 0x0024($sp)           
    jal     func_8002313C              
    addiu   a1, $zero, 0x3105          # a1 = 00003105
    lw      $ra, 0x0024($sp)           
lbl_809B7BB4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7BC4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s4, 0x0038($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s3, 0x0034($sp)            
    sw      s2, 0x0030($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f20, 0x0020($sp)          
    lwc1    $f4, 0x0028(s1)            # 00000028
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    addiu   s2, $sp, 0x0048            # s2 = FFFFFFF0
    swc1    $f4, 0x004C($sp)           
    slti    $at, s0, 0x0002            
lbl_809B7C0C:
    bne     $at, $zero, lbl_809B7C1C   
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    beq     $zero, $zero, lbl_809B7C1C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809B7C1C:
    mtc1    v0, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x0024(s1)           # 00000024
    andi    t6, s0, 0x0001             # t6 = 00000000
    cvt.s.w $f8, $f6                   
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mul.s   $f10, $f8, $f20            
    add.s   $f18, $f10, $f16           
    beq     t6, $zero, lbl_809B7C48    
    swc1    $f18, 0x0048($sp)          
    beq     $zero, $zero, lbl_809B7C48 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809B7C48:
    mtc1    v0, $f4                    # $f4 = 0.00
    lwc1    $f10, 0x002C(s1)           # 0000002C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    cvt.s.w $f6, $f4                   
    addiu   t8, $zero, 0x07D0          # t8 = 000007D0
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF0
    mul.s   $f8, $f6, $f20             
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f16, $f8, $f10            
    jal     func_8001CF94              
    swc1    $f16, 0x0050($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_809B7C0C       
    slti    $at, s0, 0x0002            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39ED          # a1 = 000039ED
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3879          # a1 = 00003879
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80026CF4              
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      $ra, 0x003C($sp)           
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809B7CE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      v0, 0x0118(a3)             # 00000118
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    beq     v0, $zero, lbl_809B7D04    
    addiu   a0, v0, 0x0032             # a0 = 00000032
    jal     func_80063704              
    lh      a1, 0x018A(a3)             # 0000018A
lbl_809B7D04:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7D14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14B8             # a1 = 060014B8
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, %hi(var_809B9E2C)     # $at = 809C0000
    lui     t7, %hi(func_809B8258)     # t7 = 809C0000
    sh      $zero, 0x018A(a2)          # 0000018A
    lwc1    $f4, %lo(var_809B9E2C)($at) 
    addiu   t6, $zero, 0x0079          # t6 = 00000079
    addiu   t7, t7, %lo(func_809B8258) # t7 = 809B8258
    sh      t6, 0x0186(a2)             # 00000186
    sw      t7, 0x0180(a2)             # 00000180
    swc1    $f4, 0x000C(a2)            # 0000000C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7D6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    sh      t6, 0x0186(a0)             # 00000186
    sw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    lw      a0, 0x0018($sp)            
    lui     t7, %hi(func_809B82E8)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809B82E8) # t7 = 809B82E8
    sw      t7, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7DA8:
    lui     $at, %hi(var_809B9E30)     # $at = 809C0000
    lwc1    $f6, %lo(var_809B9E30)($at) 
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x000C(a0)           # 0000000C
    lui     t7, %hi(func_809B84F4)     # t7 = 809C0000
    add.s   $f8, $f4, $f6              
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, t7, %lo(func_809B84F4) # t7 = 809B84F4
    sh      t6, 0x0186(a0)             # 00000186
    swc1    $f8, 0x0024(a0)            # 00000024
    sw      t7, 0x0180(a0)             # 00000180
    swc1    $f10, 0x0028(a0)           # 00000028
    jr      $ra                        
    nop


func_809B7DE0:
    lui     t7, %hi(func_809B859C)     # t7 = 809C0000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, t7, %lo(func_809B859C) # t7 = 809B859C
    sh      t6, 0x0186(a0)             # 00000186
    sw      t7, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_809B7DFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1CA4             # a1 = 06001CA4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x015E          # t6 = 0000015E
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    lb      t8, 0x0184(a0)             # 00000184
    sh      t6, 0x0186(a0)             # 00000186
    sh      t7, 0x0188(a0)             # 00000188
    subu    $at, $zero, t8             
    sll     t9, $at,  9                
    jal     func_809B7830              
    sh      t9, 0x018A(a0)             # 0000018A
    lw      a3, 0x0018($sp)            
    lui     t4, %hi(func_809B8614)     # t4 = 809C0000
    addiu   t4, t4, %lo(func_809B8614) # t4 = 809B8614
    lbu     t0, 0x02EC(a3)             # 000002EC
    lbu     t2, 0x028D(a3)             # 0000028D
    sw      t4, 0x0180(a3)             # 00000180
    ori     t1, t0, 0x0001             # t1 = 00000001
    ori     t3, t2, 0x0001             # t3 = 00000001
    sb      t1, 0x02EC(a3)             # 000002EC
    sb      t3, 0x028D(a3)             # 0000028D
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7E80:
    lbu     t7, 0x028D(a0)             # 0000028D
    lui     t9, %hi(func_809B8944)     # t9 = 809C0000
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t9, t9, %lo(func_809B8944) # t9 = 809B8944
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      t6, 0x0186(a0)             # 00000186
    sb      t8, 0x028D(a0)             # 0000028D
    sb      $zero, 0x0114(a0)          # 00000114
    sw      t9, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_809B7EAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14B8             # a1 = 060014B8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     t5, %hi(func_809B89D8)     # t5 = 809C0000
    lh      t7, 0x00B6(a3)             # 000000B6
    lb      t9, 0x0184(a3)             # 00000184
    lbu     t1, 0x028D(a3)             # 0000028D
    lbu     t3, 0x02EC(a3)             # 000002EC
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t5, t5, %lo(func_809B89D8) # t5 = 809B89D8
    addu    t8, t7, $at                
    sll     t0, t9,  9                 
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    ori     t4, t3, 0x0001             # t4 = 00000001
    sb      t6, 0x0185(a3)             # 00000185
    sh      t8, 0x0030(a3)             # 00000030
    sh      t0, 0x018A(a3)             # 0000018A
    sb      t2, 0x028D(a3)             # 0000028D
    sb      t4, 0x02EC(a3)             # 000002EC
    sw      t5, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7F2C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0D1C             # a1 = 06000D1C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t7, 0x02EC(s0)             # 000002EC
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x0186(s0)             # 00000186
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      $zero, 0x018A(s0)          # 0000018A
    sb      t8, 0x02EC(s0)             # 000002EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3904          # a1 = 00003904
    lw      t9, 0x0298(s0)             # 00000298
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    lw      t0, 0x0024(t9)             # 00000024
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0000(t0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_809B7FB4    
    sb      $zero, 0x0185(s0)          # 00000185
    sb      t3, 0x0185(s0)             # 00000185
    beq     $zero, $zero, lbl_809B7FB8 
    sh      t4, 0x0186(s0)             # 00000186
    sb      $zero, 0x0185(s0)          # 00000185
lbl_809B7FB4:
    sh      t5, 0x0186(s0)             # 00000186
lbl_809B7FB8:
    lh      t6, 0x0186(s0)             # 00000186
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      t6, 0x0010($sp)            
    lui     t7, %hi(func_809B8A68)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809B8A68) # t7 = 809B8A68
    sw      t7, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7FE8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t7, 0x02EC(s0)             # 000002EC
    addiu   t6, $zero, 0x0018          # t6 = 00000018
    sh      t6, 0x0186(s0)             # 00000186
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      $zero, 0x018A(s0)          # 0000018A
    sb      t8, 0x02EC(s0)             # 000002EC
    addiu   t9, $zero, 0x0018          # t9 = 00000018
    sw      t9, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t0, %hi(func_809B8B90)     # t0 = 809C0000
    addiu   t0, t0, %lo(func_809B8B90) # t0 = 809B8B90
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8060:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0A74             # a1 = 06000A74
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x390A          # a1 = 0000390A
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_809B8C7C)     # t8 = 809C0000
    addiu   t6, $zero, 0x0026          # t6 = 00000026
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, t8, %lo(func_809B8C7C) # t8 = 809B8C7C
    sh      t6, 0x0186(a3)             # 00000186
    sh      t7, 0x0188(a3)             # 00000188
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B80C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x0185(a0)             # 00000185
    bnel    t6, $zero, lbl_809B8110    
    lh      t9, 0x00B6(a0)             # 000000B6
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0018          # t7 = 00000018
    c.lt.s  $f0, $f4                   
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    bc1f    lbl_809B8104               
    nop
    beq     $zero, $zero, lbl_809B8144 
    sh      t7, 0x0186(a0)             # 00000186
lbl_809B8104:
    beq     $zero, $zero, lbl_809B8144 
    sh      t8, 0x0186(a0)             # 00000186
    lh      t9, 0x00B6(a0)             # 000000B6
lbl_809B8110:
    lh      t0, 0x008A(a0)             # 0000008A
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    subu    v0, t9, t0                 
    bltz    v0, lbl_809B812C           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_809B812C 
    or      v1, v0, $zero              # v1 = 00000000
lbl_809B812C:
    slti    $at, v1, 0x4000            
    bnel    $at, $zero, lbl_809B8144   
    sh      $zero, 0x0186(a0)          # 00000186
    beq     $zero, $zero, lbl_809B8144 
    sh      t1, 0x0186(a0)             # 00000186
    sh      $zero, 0x0186(a0)          # 00000186
lbl_809B8144:
    lbu     t2, 0x028D(a0)             # 0000028D
    lui     t4, %hi(func_809B8DF4)     # t4 = 809C0000
    addiu   t4, t4, %lo(func_809B8DF4) # t4 = 809B8DF4
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    sh      $zero, 0x018A(a0)          # 0000018A
    sb      t3, 0x028D(a0)             # 0000028D
    sw      t4, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8170:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f0, $f4                   
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a1, $zero, 0x3908          # a1 = 00003908
    bc1fl   lbl_809B81B4               
    sb      t7, 0x0184(a0)             # 00000184
    beq     $zero, $zero, lbl_809B81B4 
    sb      t6, 0x0184(a0)             # 00000184
    sb      t7, 0x0184(a0)             # 00000184
lbl_809B81B4:
    lw      t8, 0x0004(a0)             # 00000004
    lbu     t0, 0x02EC(a0)             # 000002EC
    sh      $zero, 0x018A(a0)          # 0000018A
    and     t9, t8, $at                
    and     t1, t0, $at                
    sw      t9, 0x0004(a0)             # 00000004
    sb      t1, 0x02EC(a0)             # 000002EC
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t2, %hi(func_809B8EB4)     # t2 = 809C0000
    addiu   t2, t2, %lo(func_809B8EB4) # t2 = 809B8EB4
    sw      t2, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B81F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x1C44(a3)             # 00001C44
    sw      a2, 0x0018($sp)            
    jal     func_8002140C              
    addiu   a1, a2, 0x0008             # a1 = 00000008
    lw      a0, 0x0018($sp)            
    lb      t7, 0x0184(a0)             # 00000184
    sh      v0, 0x0032(a0)             # 00000032
    lh      t6, 0x0032(a0)             # 00000032
    sll     t8, t7, 14                 
    addu    t9, t6, t8                 
    jal     func_809B7830              
    sh      t9, 0x00B6(a0)             # 000000B6
    lw      a2, 0x0018($sp)            
    lui     t0, %hi(func_809B8F28)     # t0 = 809C0000
    addiu   t0, t0, %lo(func_809B8F28) # t0 = 809B8F28
    sw      t0, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8258:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $at, lbl_809B829C      
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    bnel    v0, $at, lbl_809B82AC      
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_809B829C:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3906          # a1 = 00003906
    lh      v0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_809B82AC:
    bnel    v0, $at, lbl_809B82C0      
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_800C6820              
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    lh      t8, 0x001C(s0)             # 0000001C
lbl_809B82C0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_809B82D8      
    lw      $ra, 0x001C($sp)           
    jal     func_809B7D6C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809B82D8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B82E8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0186(s0)             # 00000186
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
    bltz    v0, lbl_809B8490           
    slti    $at, v0, 0xFFFF            
    lui     $at, %hi(var_809B9E34)     # $at = 809C0000
    lwc1    $f6, %lo(var_809B9E34)($at) 
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     a2, 0x4148                 # a2 = 41480000
    ori     a2, a2, 0x6186             # a2 = 41486186
    add.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    lh      v0, 0x0186(s0)             # 00000186
    slti    $at, v0, 0x000E            
    beq     $at, $zero, lbl_809B8384   
    addiu   t8, v0, 0xFFF9             # t8 = FFFFFFF9
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B9E38)     # $at = 809C0000
    lwc1    $f18, %lo(var_809B9E38)($at) 
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800CF470              
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_809B83C4 
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_809B8384:
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_809B9E3C)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E3C)($at) 
    cvt.s.w $f18, $f16                 
    mul.s   $f12, $f18, $f4            
    jal     func_800CF470              
    nop
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f16                  # $f16 = 130.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    mul.s   $f18, $f0, $f16            
    add.s   $f10, $f6, $f8             
    add.s   $f4, $f18, $f10            
    swc1    $f4, 0x0028(s0)            # 00000028
lbl_809B83C4:
    lh      t9, 0x0186(s0)             # 00000186
    lui     $at, 0x4220                # $at = 42200000
    bnel    t9, $zero, lbl_809B84E4    
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x0024(s0)            # 00000024
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    add.s   $f16, $f6, $f8             
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x07D0          # t1 = 000007D0
    lw      a0, 0x003C($sp)            
    swc1    $f16, 0x002C($sp)          
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f18, 0x0030($sp)          
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    sub.s   $f6, $f10, $f4             
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001CF94              
    swc1    $f6, 0x0034($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x07D0          # t3 = 000007D0
    sub.s   $f18, $f8, $f16            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    swc1    $f18, 0x002C($sp)          
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39ED          # a1 = 000039ED
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3879          # a1 = 00003879
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    beq     $zero, $zero, lbl_809B84E4 
    lw      $ra, 0x0024($sp)           
lbl_809B8490:
    beq     $at, $zero, lbl_809B84E0   
    addiu   t4, v0, 0x0001             # t4 = 00000001
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B9E40)     # $at = 809C0000
    lwc1    $f6, %lo(var_809B9E40)($at) 
    cvt.s.w $f4, $f10                  
    mul.s   $f12, $f4, $f6             
    jal     func_800CF470              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      t5, 0x0186(s0)             # 00000186
    mul.s   $f18, $f0, $f16            
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    sub.s   $f10, $f8, $f18            
    bne     t5, $at, lbl_809B84E0      
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_809B7DA8              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809B84E0:
    lw      $ra, 0x0024($sp)           
lbl_809B84E4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809B84F4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      a1, 0x0016(s0)             # 00000016
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    addiu   a1, a1, 0x4000             # a1 = 00004000
    sll     a1, a1, 16                 
    jal     func_80063704              
    sra     a1, a1, 16                 
    beql    v0, $zero, lbl_809B858C    
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_809B8540    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_809B8540:
    bnel    v0, $zero, lbl_809B858C    
    lw      $ra, 0x001C($sp)           
    jal     func_809B7830              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)            
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    jal     func_800265D4              
    swc1    $f4, 0x000C(s0)            # 0000000C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sh      t7, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3906          # a1 = 00003906
    jal     func_809B7DE0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809B858C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B859C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lh      v0, 0x0186(a1)             # 00000186
    beq     v0, $zero, lbl_809B85D4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a1)             # 00000186
    lh      v0, 0x0186(a1)             # 00000186
lbl_809B85D4:
    bnel    v0, $zero, lbl_809B8608    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x001C(a1)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    bne     t7, $at, lbl_809B85FC      
    nop
    jal     func_800C6820              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
lbl_809B85FC:
    jal     func_809B7DFC              
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_809B8608:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8614:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0024($sp)            
    jal     func_8008C9C0              
    sw      t7, 0x003C($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_809B865C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C5          # a1 = 000038C5
lbl_809B865C:
    lh      t8, 0x0186(s0)             # 00000186
    lw      a0, 0x003C($sp)            
    bgez    t8, lbl_809B86BC           
    nop
    lb      t0, 0x0184(s0)             # 00000184
    lh      t9, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    sll     t1, t0,  9                 
    addu    t2, t9, t1                 
    jal     func_809B7830              
    sh      t2, 0x00B6(s0)             # 000000B6
    lh      t3, 0x0186(s0)             # 00000186
    addiu   t6, $zero, 0x015E          # t6 = 0000015E
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0186(s0)             # 00000186
    lh      t5, 0x0186(s0)             # 00000186
    bne     t5, $zero, lbl_809B86AC    
    nop
    sh      t6, 0x0186(s0)             # 00000186
lbl_809B86AC:
    jal     func_809B795C              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_809B8934 
    lw      $ra, 0x001C($sp)           
lbl_809B86BC:
    jal     func_80021528              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f4                   # $f4 = 180.00
    lui     $at, %hi(var_809B9E44)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E44)($at) 
    sub.s   $f6, $f0, $f4              
    lw      a2, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    mul.s   $f10, $f6, $f8             
    addiu   a2, a2, 0x0024             # a2 = 00000024
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_8002154C              
    sh      v1, 0x0036($sp)            
    lwc1    $f0, 0x0028($sp)           
    lui     $at, %hi(var_809B9E48)     # $at = 809C0000
    lwc1    $f18, %lo(var_809B9E48)($at) 
    abs.s   $f0, $f0                   
    lh      v1, 0x0036($sp)            
    c.lt.s  $f18, $f0                  
    lwc1    $f6, 0x0030($sp)           
    bc1tl   lbl_809B8778               
    lh      v0, 0x0186(s0)             # 00000186
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1B00          # a1 = 00001B00
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809B8794               
    lui     $at, 0x437A                # $at = 437A0000
    jal     func_80021A28              
    sh      v1, 0x0036($sp)            
    bne     v0, $zero, lbl_809B8790    
    lh      v1, 0x0036($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    lw      a2, 0x0044($sp)            
    jal     func_80021968              
    sh      v1, 0x0036($sp)            
    bne     v0, $zero, lbl_809B8790    
    lh      v1, 0x0036($sp)            
    lh      v0, 0x0186(s0)             # 00000186
lbl_809B8778:
    addiu   v1, v1, 0xFF80             # v1 = FFFFFF80
    sll     v1, v1, 16                 
    beq     v0, $zero, lbl_809B8790    
    sra     v1, v1, 16                 
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0186(s0)             # 00000186
lbl_809B8790:
    lui     $at, 0x437A                # $at = 437A0000
lbl_809B8794:
    mtc1    $at, $f10                  # $f10 = 250.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6000          # a1 = 00006000
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_809B8804               
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    jal     func_80021A28              
    sh      v1, 0x0036($sp)            
    bne     v0, $zero, lbl_809B8800    
    lh      v1, 0x0036($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f18                  # $f18 = 180.00
    beq     v0, $zero, lbl_809B87DC    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0188(s0)             # 00000188
lbl_809B87DC:
    lwc1    $f16, 0x0090(s0)           # 00000090
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_809B880C               
    lbu     t1, 0x00AF(s0)             # 000000AF
    addiu   v1, v1, 0x0020             # v1 = 00000020
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_809B8808 
    sra     v1, v1, 16                 
lbl_809B8800:
    addiu   t9, $zero, 0x0050          # t9 = 00000050
lbl_809B8804:
    sh      t9, 0x0188(s0)             # 00000188
lbl_809B8808:
    lbu     t1, 0x00AF(s0)             # 000000AF
lbl_809B880C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t2, v1, 0x0130             # t2 = 00000150
    bnel    t1, $at, lbl_809B884C      
    addiu   v1, v1, 0x0130             # v1 = 00000150
    mtc1    t2, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B9E4C)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E4C)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_809B8854 
    sra     v1, v1, 16                 
    addiu   v1, v1, 0x0130             # v1 = 00000280
lbl_809B884C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_809B8854:
    lb      t5, 0x0184(s0)             # 00000184
    lh      t4, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    multu   v1, t5                     
    mflo    t6                         
    addu    t7, t4, t6                 
    jal     func_809B7830              
    sh      t7, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B795C              
    lw      a1, 0x0044($sp)            
    lh      t8, 0x0188(s0)             # 00000188
    bnel    t8, $zero, lbl_809B88A0    
    lh      t0, 0x0186(s0)             # 00000186
    jal     func_809B8170              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B8934 
    lw      $ra, 0x001C($sp)           
    lh      t0, 0x0186(s0)             # 00000186
lbl_809B88A0:
    bnel    t0, $zero, lbl_809B88BC    
    lbu     t9, 0x0185(s0)             # 00000185
    jal     func_809B7EAC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B8934 
    lw      $ra, 0x001C($sp)           
    lbu     t9, 0x0185(s0)             # 00000185
lbl_809B88BC:
    beql    t9, $zero, lbl_809B8934    
    lw      $ra, 0x001C($sp)           
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t2, 0x00B6(s0)             # 000000B6
    subu    v0, t1, t2                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_809B88F0           
    slti    $at, v0, 0x4100            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x4100            
lbl_809B88F0:
    beq     $at, $zero, lbl_809B8930   
    slti    $at, v0, 0x3F01            
    bnel    $at, $zero, lbl_809B8934   
    lw      $ra, 0x001C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809B9E50)     # $at = 809C0000
    lwc1    $f18, %lo(var_809B9E50)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_809B8930               
    sb      $zero, 0x0185(s0)          # 00000185
    jal     func_809B7EAC              
    sh      $zero, 0x0186(s0)          # 00000186
    sb      $zero, 0x0185(s0)          # 00000185
lbl_809B8930:
    lw      $ra, 0x001C($sp)           
lbl_809B8934:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8944:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_809B8974    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_809B8974:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B9E54)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E54)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lh      t7, 0x0186(s0)             # 00000186
    mul.s   $f16, $f0, $f10            
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f16, $f18            
    bne     t7, $zero, lbl_809B89C4    
    swc1    $f4, 0x0028(s0)            # 00000028
    jal     func_809B7BC4              
    lw      a1, 0x0024($sp)            
    jal     func_809B7DFC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809B89C4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B89D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v1, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_809B8A10    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v1, 0x0186(s0)             # 00000186
lbl_809B8A10:
    bne     v1, $at, lbl_809B8A24      
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3906          # a1 = 00003906
    lh      v1, 0x0186(s0)             # 00000186
lbl_809B8A24:
    bne     v1, $zero, lbl_809B8A54    
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0030(s0)             # 00000030
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    beql    v0, $zero, lbl_809B8A58    
    lw      $ra, 0x001C($sp)           
    lb      t7, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    subu    t8, $zero, t7              
    jal     func_809B7DFC              
    sb      t8, 0x0184(s0)             # 00000184
lbl_809B8A54:
    lw      $ra, 0x001C($sp)           
lbl_809B8A58:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8A68:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0186(s0)             # 00000186
    lw      v1, 0x1C44(a1)             # 00001C44
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809B8A90    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_809B8A90:
    jal     func_8008C9C0              
    sw      v1, 0x0024($sp)            
    lbu     v0, 0x028E(s0)             # 0000028E
    lw      v1, 0x0024($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    andi    v0, v0, 0x0002             # v0 = 00000000
    bnel    v0, $zero, lbl_809B8AD4    
    mtc1    $at, $f12                  # $f12 = 1.00
    lbu     t7, 0x02EE(s0)             # 000002EE
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_809B8AD4    
    mtc1    $at, $f12                  # $f12 = 1.00
    lbu     t9, 0x033A(s0)             # 0000033A
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_809B8B6C    
    lh      t5, 0x0186(s0)             # 00000186
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_809B8AD4:
    lwc1    $f0, 0x0068(v1)            # 00000068
    lui     $at, 0xBF80                # $at = BF800000
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_809B8AF8               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_809B8AF8 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_809B8AF8:
    bnel    v0, $zero, lbl_809B8B24    
    lh      a0, 0x00B6(s0)             # 000000B6
    lbu     t1, 0x02EE(s0)             # 000002EE
    lbu     t3, 0x033A(s0)             # 0000033A
    mtc1    $at, $f4                   # $f4 = -1.00
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    mul.s   $f2, $f2, $f4              
    sb      t2, 0x02EE(s0)             # 000002EE
    sb      t4, 0x033A(s0)             # 0000033A
    lh      a0, 0x00B6(s0)             # 000000B6
lbl_809B8B24:
    swc1    $f2, 0x0020($sp)           
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)            
    lwc1    $f2, 0x0020($sp)           
    lw      v1, 0x0024($sp)            
    mul.s   $f8, $f2, $f0              
    lwc1    $f6, 0x0024(v1)            # 00000024
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0024(v1)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f2, 0x0020($sp)           
    lw      v1, 0x0024($sp)            
    mul.s   $f18, $f2, $f0             
    lwc1    $f16, 0x002C(v1)           # 0000002C
    sub.s   $f4, $f16, $f18            
    swc1    $f4, 0x002C(v1)            # 0000002C
    lh      t5, 0x0186(s0)             # 00000186
lbl_809B8B6C:
    bnel    t5, $zero, lbl_809B8B80    
    lw      $ra, 0x001C($sp)           
    jal     func_809B80C0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809B8B80:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8B90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_809B8BC0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_809B8BC0:
    bne     v0, $zero, lbl_809B8BF4    
    slti    $at, v0, 0x0008            
    lbu     t7, 0x00AF(s0)             # 000000AF
    beq     t7, $zero, lbl_809B8BE4    
    nop
    jal     func_809B7EAC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B8C6C 
    lw      $ra, 0x001C($sp)           
lbl_809B8BE4:
    jal     func_809B8060              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B8C6C 
    lw      $ra, 0x001C($sp)           
lbl_809B8BF4:
    bne     $at, $zero, lbl_809B8C68   
    addiu   t2, v0, 0xFFF8             # t2 = FFFFFFF8
    lb      t9, 0x0184(s0)             # 00000184
    mtc1    t2, $f4                    # $f4 = NaN
    lh      t8, 0x00B6(s0)             # 000000B6
    sll     t0, t9,  9                 
    cvt.s.w $f6, $f4                   
    addu    t1, t8, t0                 
    sh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_809B9E58)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E58)($at) 
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_809B7830              
    swc1    $f4, 0x0028(s0)            # 00000028
    lh      t3, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t3, $at, lbl_809B8C6C      
    lw      $ra, 0x001C($sp)           
    jal     func_809B7BC4              
    lw      a1, 0x0024($sp)            
lbl_809B8C68:
    lw      $ra, 0x001C($sp)           
lbl_809B8C6C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8C7C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_809B8CC8    
    nop
    beq     v0, $zero, lbl_809B8CAC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_809B8CAC:
    slti    $at, v0, 0x000A            
    bnel    $at, $zero, lbl_809B8DE4   
    lw      $ra, 0x002C($sp)           
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0x2000             # t8 = 00002000
    beq     $zero, $zero, lbl_809B8DE0 
    sh      t8, 0x00B6(s0)             # 000000B6
lbl_809B8CC8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809B8DE0    
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lh      v0, 0x0188(s0)             # 00000188
    lui     a2, %hi(var_809B9D18)      # a2 = 809C0000
    addiu   a2, a2, %lo(var_809B9D18)  # a2 = 809B9D18
    beq     v0, $zero, lbl_809B8CF4    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_809B8CF4:
    bne     v0, $at, lbl_809B8D64      
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    swc1    $f4, 0x0034($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     t0, %hi(var_809B9D10)      # t0 = 809C0000
    lui     t1, %hi(var_809B9D14)      # t1 = 809C0000
    add.s   $f10, $f6, $f8             
    addiu   t1, t1, %lo(var_809B9D14)  # t1 = 809B9D14
    addiu   t0, t0, %lo(var_809B9D10)  # t0 = 809B9D10
    addiu   t2, $zero, 0x04B0          # t2 = 000004B0
    swc1    $f10, 0x0038($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sw      t3, 0x001C($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    lw      a0, 0x0044($sp)            
    or      a3, a2, $zero              # a3 = 809B9D18
    jal     func_8001BD94              
    swc1    $f16, 0x003C($sp)          
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C7          # a1 = 000038C7
    lh      v0, 0x0188(s0)             # 00000188
lbl_809B8D64:
    bne     v0, $zero, lbl_809B8DE0    
    addiu   a0, s0, 0x0054             # a0 = 00000054
    lui     a2, 0x3A83                 # a2 = 3A830000
    ori     a2, a2, 0x126F             # a2 = 3A83126F
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_809B8DE0    
    lw      a0, 0x0044($sp)            
    jal     func_80020658              
    lb      a1, 0x0003(s0)             # 00000003
    lw      t4, 0x0044($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_800495BC              
    lw      a0, 0x0790(t4)             # 00000790
    lw      t5, 0x0044($sp)            
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80049A94              
    lw      a0, 0x0790(t5)             # 00000790
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0030($sp)            
    lw      a0, 0x0044($sp)            
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38C5          # a3 = 000038C5
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0030($sp)            
    jal     func_80013A84              
    addiu   a3, $zero, 0x00B0          # a3 = 000000B0
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809B8DE0:
    lw      $ra, 0x002C($sp)           
lbl_809B8DE4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8DF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lh      v0, 0x0186(a2)             # 00000186
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809B8E40    
    nop
    beq     v0, $zero, lbl_809B8E30    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a2)             # 00000186
lbl_809B8E30:
    lh      t7, 0x00B6(a2)             # 000000B6
    lh      v0, 0x0186(a2)             # 00000186
    addiu   t8, t7, 0x2000             # t8 = 00002000
    sh      t8, 0x00B6(a2)             # 000000B6
lbl_809B8E40:
    bnel    v0, $zero, lbl_809B8E9C    
    or      a0, a2, $zero              # a0 = 00000000
    lh      t9, 0x00B6(a2)             # 000000B6
    lh      t0, 0x0032(a2)             # 00000032
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    subu    t1, t9, t0                 
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    blezl   t3, lbl_809B8E78           
    sb      t5, 0x0184(a2)             # 00000184
    beq     $zero, $zero, lbl_809B8E78 
    sb      t4, 0x0184(a2)             # 00000184
    sb      t5, 0x0184(a2)             # 00000184
lbl_809B8E78:
    jal     func_809B7DFC              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t7, $zero, 0xFFD8          # t7 = FFFFFFD8
    lbu     t6, 0x0185(a2)             # 00000185
    bnel    t6, $zero, lbl_809B8E9C    
    or      a0, a2, $zero              # a0 = 00000000
    sh      t7, 0x0186(a2)             # 00000186
    or      a0, a2, $zero              # a0 = 00000000
lbl_809B8E9C:
    jal     func_809B795C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8EB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(a0)            # 00000028
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f18                  # $f18 = -200.00
    sub.s   $f8, $f4, $f6              
    lwc1    $f16, 0x000C(a0)           # 0000000C
    lh      t6, 0x00B6(a0)             # 000000B6
    add.s   $f4, $f16, $f18            
    swc1    $f8, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x0028(a0)           # 00000028
    addiu   t7, t6, 0x2000             # t7 = 00002000
    sh      t7, 0x00B6(a0)             # 000000B6
    c.lt.s  $f10, $f4                  
    lw      a1, 0x001C($sp)            
    bc1f    lbl_809B8F10               
    nop
    jal     func_809B81F8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_809B8F10:
    jal     func_809B795C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8F28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_8006385C              
    lui     a2, 0x4120                 # a2 = 41200000
    beq     v0, $zero, lbl_809B8F68    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x0004(a3)             # 00000004
    or      a0, a3, $zero              # a0 = 00000000
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_809B7DFC              
    sw      t7, 0x0004(a3)             # 00000004
lbl_809B8F68:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B8F78:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0018($sp)           
    lw      a1, 0x0020($sp)            
    lwc1    $f2, 0x0018($sp)           
    lui     v0, %hi(var_809B9D78)      # v0 = 809C0000
    lw      a0, 0x0298(a1)             # 00000298
    lwc1    $f4, 0x0024(a1)            # 00000024
    addiu   v0, v0, %lo(var_809B9D78)  # v0 = 809B9D78
    lh      t6, 0x0028(a0)             # 00000028
    lh      t7, 0x002C(a0)             # 0000002C
    or      v1, a1, $zero              # v1 = 00000000
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f8, $f6                   
    cvt.s.w $f6, $f18                  
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f4, $f10            
    mul.s   $f8, $f6, $f2              
    add.s   $f4, $f8, $f16             
    trunc.w.s $f10, $f4                  
    mfc1    t9, $f10                   
    nop
    sh      t9, 0x0030(a0)             # 00000030
    lw      a0, 0x0298(a1)             # 00000298
    lwc1    $f18, 0x002C(a1)           # 0000002C
    lh      t0, 0x002C(a0)             # 0000002C
    lh      t1, 0x0028(a0)             # 00000028
    mtc1    t0, $f6                    # $f6 = 0.00
    mtc1    t1, $f10                   # $f10 = 0.00
    cvt.s.w $f8, $f6                   
    cvt.s.w $f6, $f10                  
    mul.s   $f16, $f8, $f0             
    add.s   $f4, $f18, $f16            
    mul.s   $f8, $f6, $f2              
    sub.s   $f18, $f4, $f8             
    trunc.w.s $f16, $f18                 
    mfc1    t3, $f16                   
    nop
    sh      t3, 0x0034(a0)             # 00000034
    lw      a0, 0x0298(a1)             # 00000298
    lwc1    $f4, 0x0028(a1)            # 00000028
    lh      t4, 0x002A(a0)             # 0000002A
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    add.s   $f8, $f6, $f4              
    trunc.w.s $f18, $f8                  
    mfc1    t6, $f18                   
    nop
    sh      t6, 0x0032(a0)             # 00000032
    lui     a0, %hi(var_809B9DD0)      # a0 = 809C0000
    addiu   a0, a0, %lo(var_809B9DD0)  # a0 = 809B9DD0
    addiu   v0, v0, 0x002C             # v0 = 809B9DA4
    beq     v0, a0, lbl_809B910C       
    lh      t7, -0x0002(v0)            # 809B9DA2
lbl_809B9074:
    mtc1    t7, $f18                   # $f18 = 0.00
    lh      t8, -0x0006(v0)            # 809B9D9E
    lwc1    $f16, 0x0024(a1)           # 00000024
    cvt.s.w $f18, $f18                 
    mtc1    t8, $f14                   # $f14 = 0.00
    addiu   v0, v0, 0x002C             # v0 = 809B9DD0
    addiu   v1, v1, 0x004C             # v1 = 0000004C
    cvt.s.w $f14, $f14                 
    mul.s   $f18, $f18, $f2            
    add.s   $f18, $f16, $f18           
    mul.s   $f14, $f14, $f0            
    add.s   $f18, $f14, $f18           
    trunc.w.s $f18, $f18                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x02D6(v1)             # 00000322
    lh      t1, -0x002E(v0)            # 809B9DA2
    lh      t2, -0x0032(v0)            # 809B9D9E
    lwc1    $f18, 0x002C(a1)           # 0000002C
    mtc1    t1, $f14                   # $f14 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    cvt.s.w $f14, $f14                 
    cvt.s.w $f16, $f16                 
    mul.s   $f14, $f14, $f0            
    add.s   $f14, $f18, $f14           
    mul.s   $f16, $f16, $f2            
    sub.s   $f16, $f14, $f16           
    trunc.w.s $f16, $f16                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x02DA(v1)             # 00000326
    lwc1    $f16, 0x0028(a1)           # 00000028
    trunc.w.s $f16, $f16                 
    mfc1    t6, $f16                   
    nop
    sh      t6, 0x02D8(v1)             # 00000324
    bne     v0, a0, lbl_809B9074       
    lh      t7, -0x0002(v0)            # 809B9DCE
lbl_809B910C:
    mtc1    t7, $f18                   # $f18 = 0.00
    lh      t8, -0x0006(v0)            # 809B9DCA
    lwc1    $f16, 0x0024(a1)           # 00000024
    cvt.s.w $f18, $f18                 
    mtc1    t8, $f14                   # $f14 = 0.00
    addiu   v1, v1, 0x004C             # v1 = 00000098
    cvt.s.w $f14, $f14                 
    mul.s   $f18, $f18, $f2            
    add.s   $f18, $f16, $f18           
    mul.s   $f14, $f14, $f0            
    add.s   $f18, $f14, $f18           
    trunc.w.s $f18, $f18                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x02D6(v1)             # 0000036E
    lh      t1, -0x0002(v0)            # 809B9DCE
    lh      t2, -0x0006(v0)            # 809B9DCA
    lwc1    $f18, 0x002C(a1)           # 0000002C
    mtc1    t1, $f14                   # $f14 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    cvt.s.w $f14, $f14                 
    cvt.s.w $f16, $f16                 
    mul.s   $f14, $f14, $f0            
    add.s   $f14, $f18, $f14           
    mul.s   $f16, $f16, $f2            
    sub.s   $f16, $f14, $f16           
    trunc.w.s $f16, $f16                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x02DA(v1)             # 00000372
    lwc1    $f16, 0x0028(a1)           # 00000028
    trunc.w.s $f16, $f16                 
    mfc1    t6, $f16                   
    nop
    sh      t6, 0x02D8(v1)             # 00000370
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B91A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lbu     a2, 0x02EC(s0)             # 000002EC
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, a2, 0x0002             # t6 = 00000000
    bne     t6, $zero, lbl_809B91F0    
    andi    t2, a2, 0xFFFD             # t2 = 00000000
    lbu     t7, 0x0338(s0)             # 00000338
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_809B91F4    
    lh      t0, 0x0032(s0)             # 00000032
    lbu     t9, 0x028C(s0)             # 0000028C
    andi    t1, t9, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_809B92DC    
    lw      $ra, 0x0024($sp)           
lbl_809B91F0:
    lh      t0, 0x0032(s0)             # 00000032
lbl_809B91F4:
    lh      t7, 0x008A(s0)             # 0000008A
    lbu     t3, 0x0338(s0)             # 00000338
    lbu     t5, 0x028C(s0)             # 0000028C
    subu    v0, t7, t0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x4001            
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    andi    t6, t5, 0xFFFD             # t6 = 00000000
    sb      t2, 0x02EC(s0)             # 000002EC
    sb      t4, 0x0338(s0)             # 00000338
    bne     $at, $zero, lbl_809B9230   
    sb      t6, 0x028C(s0)             # 0000028C
    beq     $zero, $zero, lbl_809B9250 
    addiu   v0, $zero, 0x4000          # v0 = 00004000
lbl_809B9230:
    blez    v0, lbl_809B9240           
    slti    $at, v0, 0xC000            
    beq     $zero, $zero, lbl_809B9250 
    addiu   v0, $zero, 0x6000          # v0 = 00006000
lbl_809B9240:
    beq     $at, $zero, lbl_809B9250   
    addiu   v0, $zero, 0xA000          # v0 = FFFFA000
    beq     $zero, $zero, lbl_809B9250 
    addiu   v0, $zero, 0xC000          # v0 = FFFFC000
lbl_809B9250:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addu    a3, t0, v0                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    lw      a0, 0x0034($sp)            
    lui     a2, 0x4120                 # a2 = 41200000
    sh      v0, 0x002E($sp)            
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    lw      v1, 0x0180(s0)             # 00000180
    lui     t8, %hi(func_809B8614)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809B8614) # t8 = 809B8614
    bne     t8, v1, lbl_809B92A0       
    lh      v0, 0x002E($sp)            
    jal     func_809B7EAC              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    beq     $zero, $zero, lbl_809B92D8 
    sh      t9, 0x0186(s0)             # 00000186
lbl_809B92A0:
    lui     t1, %hi(func_809B8DF4)     # t1 = 809C0000
    addiu   t1, t1, %lo(func_809B8DF4) # t1 = 809B8DF4
    bnel    t1, v1, lbl_809B92DC       
    lw      $ra, 0x0024($sp)           
    lb      v1, 0x0184(s0)             # 00000184
    multu   v0, v1                     
    mflo    t2                         
    blezl   t2, lbl_809B92DC           
    lw      $ra, 0x0024($sp)           
    lh      t4, 0x0186(s0)             # 00000186
    subu    t3, $zero, v1              
    sb      t3, 0x0184(s0)             # 00000184
    addiu   t5, t4, 0x0004             # t5 = 00000004
    sh      t5, 0x0186(s0)             # 00000186
lbl_809B92D8:
    lw      $ra, 0x0024($sp)           
lbl_809B92DC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B92EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v1, 0x028D(s0)             # 0000028D
    andi    t6, v1, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_809B93CC    
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x00B1(s0)             # 000000B1
    andi    t7, v1, 0xFFFD             # t7 = 00000000
    sb      t7, 0x028D(s0)             # 0000028D
    bne     v0, $zero, lbl_809B9330    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     t8, 0x00B0(s0)             # 000000B0
    beql    t8, $zero, lbl_809B93CC    
    lw      $ra, 0x001C($sp)           
lbl_809B9330:
    bnel    v0, $at, lbl_809B9360      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_809B8A68)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809B8A68) # t9 = 809B8A68
    beql    t9, t0, lbl_809B93CC       
    lw      $ra, 0x001C($sp)           
    jal     func_809B7F2C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B93CC 
    lw      $ra, 0x001C($sp)           
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_809B9360:
    bne     v0, $at, lbl_809B9378      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B7E80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B93CC 
    lw      $ra, 0x001C($sp)           
lbl_809B9378:
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bnel    v0, $zero, lbl_809B93CC    
    lw      $ra, 0x001C($sp)           
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809B93B8    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3909          # a1 = 00003909
    lw      a0, 0x0024($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809B93C0 
    nop
lbl_809B93B8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3907          # a1 = 00003907
lbl_809B93C0:
    jal     func_809B7FE8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809B93CC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B93DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s4, 0x0024($sp)            
    sw      s2, 0x001C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s5, 0x0028($sp)            
    sw      s3, 0x0020($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_809B91A8              
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_809B92EC              
    or      a1, s2, $zero              # a1 = 00000000
    lw      t9, 0x0180(s4)             # 00000180
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_809B7CE0              
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_809B8F78              
    or      a0, s4, $zero              # a0 = 00000000
    lw      a0, 0x0790(s2)             # 00000790
    jal     func_800495BC              
    addiu   a1, $zero, 0x0034          # a1 = 00000034
    lw      a0, 0x0790(s2)             # 00000790
    jal     func_80049AB8              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lbu     t6, 0x02EC(s4)             # 000002EC
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_809B9540    
    lbu     t5, 0x028D(s4)             # 0000028D
    lw      t0, 0x0180(s4)             # 00000180
    lui     t8, %hi(func_809B8A68)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809B8A68) # t8 = 809B8A68
    beq     t8, t0, lbl_809B94C4       
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s3, s2, $at                
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s4, 0x02DC             # s1 = 000002DC
    addiu   s5, $zero, 0x0098          # s5 = 00000098
lbl_809B9494:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s1, $zero              # a2 = 000002DC
    addiu   s0, s0, 0x004C             # s0 = 0000004C
    bne     s0, s5, lbl_809B9494       
    addiu   s1, s1, 0x004C             # s1 = 00000328
    lw      t1, 0x0004(s4)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    or      t2, t1, $at                # t2 = 01000000
    beq     $zero, $zero, lbl_809B94F4 
    sw      t2, 0x0004(s4)             # 00000004
lbl_809B94C4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s3, s2, $at                
    addiu   s1, s4, 0x02DC             # s1 = 000002DC
    addiu   s5, $zero, 0x0098          # s5 = 00000098
lbl_809B94D8:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s1, $zero              # a2 = 000002DC
    addiu   s0, s0, 0x004C             # s0 = 00000098
    bne     s0, s5, lbl_809B94D8       
    addiu   s1, s1, 0x004C             # s1 = 00000328
lbl_809B94F4:
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s4, 0x02DC             # s1 = 000002DC
    addiu   s5, $zero, 0x0098          # s5 = 00000098
lbl_809B9500:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 000002DC
    addiu   s0, s0, 0x004C             # s0 = 0000004C
    bne     s0, s5, lbl_809B9500       
    addiu   s1, s1, 0x004C             # s1 = 00000328
    lbu     t3, 0x028D(s4)             # 0000028D
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_809B9540    
    lbu     t5, 0x028D(s4)             # 0000028D
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s4, 0x027C             # a2 = 0000027C
    lbu     t5, 0x028D(s4)             # 0000028D
lbl_809B9540:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t9, t5, 0x0001             # t9 = 00000000
    addu    s3, s2, $at                
    beq     t9, $zero, lbl_809B956C    
    addiu   a2, s4, 0x027C             # a2 = 0000027C
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a1, s3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809B957C 
    lui     $at, 0x41C8                # $at = 41C80000
lbl_809B956C:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a1, s3, $zero              # a1 = 00000000
    lui     $at, 0x41C8                # $at = 41C80000
lbl_809B957C:
    mtc1    $at, $f6                   # $f6 = 25.00
    lwc1    $f4, 0x0054(s4)            # 00000054
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    mul.s   $f8, $f4, $f6              
    or      a0, s4, $zero              # a0 = 00000000
    mul.s   $f16, $f8, $f10            
    mfc1    a1, $f16                   
    jal     func_80020F04              
    nop
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_809B78AC              
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809B95D4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a3, 0x0044($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x001C($sp)           
    sdc1    $f20, 0x0010($sp)          
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_809B9814      
    lw      v1, 0x004C($sp)            
    lw      v0, 0x0180(v1)             # 00000180
    lui     a0, %hi(func_809B8A68)     # a0 = 809C0000
    addiu   a0, a0, %lo(func_809B8A68) # a0 = 809B8A68
    beq     a0, v0, lbl_809B9620       
    nop
    lui     t6, %hi(func_809B8B90)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809B8B90) # t6 = 809B8B90
    bnel    t6, v0, lbl_809B9A40       
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B9620:
    bne     a0, v0, lbl_809B96A0       
    lw      a2, 0x0000(a3)             # 00000000
    lh      t7, 0x0186(v1)             # 00000186
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    div     $zero, t7, a0              
    bne     a0, $zero, lbl_809B9640    
    nop
    break   # 0x01C00
lbl_809B9640:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_809B9658      
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_809B9658      
    nop
    break   # 0x01800
lbl_809B9658:
    mfhi    v0                         
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_809B9684   
    subu    t8, a0, v0                 
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B9E5C)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E5C)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f20, $f6, $f8             
    beq     $zero, $zero, lbl_809B9718 
    mov.s   $f12, $f20                 
lbl_809B9684:
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B9E60)     # $at = 809C0000
    lwc1    $f18, %lo(var_809B9E60)($at) 
    cvt.s.w $f16, $f10                 
    mul.s   $f20, $f16, $f18           
    beq     $zero, $zero, lbl_809B9718 
    mov.s   $f12, $f20                 
lbl_809B96A0:
    lh      t9, 0x0186(v1)             # 00000186
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    div     $zero, t9, a0              
    bne     a0, $zero, lbl_809B96B8    
    nop
    break   # 0x01C00
lbl_809B96B8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_809B96D0      
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_809B96D0      
    nop
    break   # 0x01800
lbl_809B96D0:
    mfhi    v0                         
    slti    $at, v0, 0x0004            
    bne     $at, $zero, lbl_809B96FC   
    subu    t0, a0, v0                 
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B9E64)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E64)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f20, $f6, $f8             
    beq     $zero, $zero, lbl_809B9718 
    mov.s   $f12, $f20                 
lbl_809B96FC:
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B9E68)     # $at = 809C0000
    lwc1    $f18, %lo(var_809B9E68)($at) 
    cvt.s.w $f16, $f10                 
    mul.s   $f20, $f16, $f18           
    nop
    mov.s   $f12, $f20                 
lbl_809B9718:
    jal     func_800CF470              
    sw      a2, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t2, 0xE700                 # t2 = E7000000
    lui     $at, 0x42FA                # $at = 42FA0000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a2)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    mtc1    $at, $f4                   # $f4 = 125.00
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f8                   # $f8 = 130.00
    mul.s   $f6, $f0, $f4              
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lw      a1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t3, a1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    add.s   $f10, $f6, $f8             
    sw      t4, 0x0000(a1)             # 00000000
    cfc1    t5, $f31                   
    ctc1    v1, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_809B97DC    
    mfc1    v1, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    v1, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_809B97D0    
    nop
    mfc1    v1, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809B97E8 
    or      v1, v1, $at                # v1 = 80000000
lbl_809B97D0:
    beq     $zero, $zero, lbl_809B97E8 
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f16                   
lbl_809B97DC:
    nop
    bltz    v1, lbl_809B97D0           
    nop
lbl_809B97E8:
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    sll     t6, v1, 24                 
    sll     t7, v1, 16                 
    or      t8, t6, t7                 # t8 = 00000000
    sll     t9, v1,  8                 
    or      t0, t8, t9                 # t0 = 00000000
    ctc1    t5, $f31                   
    ori     t1, t0, 0x00FF             # t1 = 000000FF
    sw      t1, 0x0004(a1)             # 00000004
    beq     $zero, $zero, lbl_809B9A40 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B9814:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a1, $at, lbl_809B9940      
    lw      v1, 0x004C($sp)            
    lw      t3, 0x0180(v1)             # 0000027F
    lui     t2, %hi(func_809B8C7C)     # t2 = 809C0000
    addiu   t2, t2, %lo(func_809B8C7C) # t2 = 809B8C7C
    bne     t2, t3, lbl_809B98E8       
    lw      a2, 0x0000(a3)             # 00000000
    lh      t4, 0x0186(v1)             # 00000285
    lui     $at, %hi(var_809B9E6C)     # $at = 809C0000
    lwc1    $f6, %lo(var_809B9E6C)($at) 
    mtc1    t4, $f18                   # $f18 = -664614000000000000000000000000000000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f4, $f18                  
    mul.s   $f8, $f4, $f6              
    cfc1    t5, $f31                   
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_809B98D0    
    mfc1    a3, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bnel    a3, $zero, lbl_809B98C0    
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    ctc1    t5, $f31                   
    or      a3, a3, $at                # a3 = FFFFFFFF
    beq     $zero, $zero, lbl_809B98EC 
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_809B98C0:
    ctc1    t5, $f31                   
    beq     $zero, $zero, lbl_809B98EC 
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    mfc1    a3, $f10                   
lbl_809B98D0:
    nop
    bltzl   a3, lbl_809B98C0           
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    ctc1    t5, $f31                   
    beq     $zero, $zero, lbl_809B98EC 
    andi    a3, a3, 0x00FF             # a3 = 000000FF
lbl_809B98E8:
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
lbl_809B98EC:
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(a2)             # 000002C0
    andi    v1, a3, 0x00FF             # v1 = 000000FF
    sll     t0, v1, 24                 
    sll     t1, v1, 16                 
    or      t2, t0, t1                 # t2 = 000000FF
    sll     t3, v1,  8                 
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    or      t4, t2, t3                 # t4 = 000000FF
    or      t5, t4, v1                 # t5 = 000000FF
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_809B9A40 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B9940:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a1, $at, lbl_809B9A3C      
    lw      v1, 0x004C($sp)            
    lw      t7, 0x0180(v1)             # 0000027F
    lui     t6, %hi(func_809B8C7C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809B8C7C) # t6 = 809B8C7C
    bnel    t6, t7, lbl_809B9A40       
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x0188(v1)             # 00000287
    slti    $at, v0, 0x0005            
    beql    $at, $zero, lbl_809B99B4   
    slti    $at, v0, 0x0008            
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    cvt.s.w $f18, $f16                 
    lui     $at, %hi(var_809B9E70)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E70)($at) 
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    mfc1    a2, $f14                   
    mul.s   $f6, $f18, $f4             
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f6, $f8             
    jal     func_800AA8FC              
    add.s   $f12, $f10, $f14           
    beq     $zero, $zero, lbl_809B9A40 
    or      v0, $zero, $zero           # v0 = 00000000
    slti    $at, v0, 0x0008            
lbl_809B99B4:
    beq     $at, $zero, lbl_809B9A04   
    addiu   t9, v0, 0xFFF8             # t9 = FFFFFFF8
    addiu   t8, v0, 0xFFFB             # t8 = FFFFFFFB
    mtc1    t8, $f16                   # $f16 = NaN
    lui     $at, %hi(var_809B9E74)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E74)($at) 
    cvt.s.w $f18, $f16                 
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f6                   # $f6 = 1.25
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f20, $f18, $f4            
    add.s   $f14, $f8, $f20            
    sub.s   $f12, $f6, $f20            
    mfc1    a2, $f14                   
    jal     func_800AA8FC              
    nop
    beq     $zero, $zero, lbl_809B9A40 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B9A04:
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f18                  # $f18 = 0.13
    cvt.s.w $f16, $f10                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f4                   # $f4 = 1.25
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f20, $f16, $f18           
    sub.s   $f14, $f4, $f20            
    mfc1    a2, $f14                   
    jal     func_800AA8FC              
    nop
lbl_809B9A3C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B9A40:
    lw      $ra, 0x001C($sp)           
    ldc1    $f20, 0x0010($sp)          
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809B9A54:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lw      t7, 0x0180(s0)             # 00000180
    lui     a3, %hi(func_809B8C7C)     # a3 = 809C0000
    lw      a2, 0x0000(t6)             # 00000000
    addiu   a3, a3, %lo(func_809B8C7C) # a3 = 809B8C7C
    bne     a3, t7, lbl_809B9AA0       
    or      v1, a2, $zero              # v1 = 00000000
    lh      t8, 0x0186(s0)             # 00000186
    bnel    t8, $zero, lbl_809B9AA4    
    or      a0, a2, $zero              # a0 = 00000000
    lh      t9, 0x0188(s0)             # 00000188
    or      a0, a2, $zero              # a0 = 00000000
    beq     t9, $zero, lbl_809B9BE0    
    nop
lbl_809B9AA0:
    or      a0, a2, $zero              # a0 = 00000000
lbl_809B9AA4:
    sw      v1, 0x0058($sp)            
    jal     func_8007E298              
    sw      a3, 0x0034($sp)            
    lw      v1, 0x0058($sp)            
    lw      a3, 0x0034($sp)            
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(v1)             # 000002C0
    addiu   t4, t4, 0x8520             # t4 = 800E8520
    ori     t3, t3, 0x0030             # t3 = DB060030
    sw      t3, 0x0000(v0)             # 00000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lh      a2, 0x0186(s0)             # 00000186
    andi    t8, a2, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_809B9BB4    
    lw      a1, 0x0140(s0)             # 00000140
    lw      v0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_809B8B90)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809B8B90) # t9 = 809B8B90
    bne     t9, v0, lbl_809B9B24       
    slti    $at, a2, 0x0008            
    beq     $at, $zero, lbl_809B9B34   
    nop
lbl_809B9B24:
    bne     a3, v0, lbl_809B9BB0       
    slti    $at, a2, 0x000A            
    bnel    $at, $zero, lbl_809B9BB4   
    lw      a1, 0x0140(s0)             # 00000140
lbl_809B9B34:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809B9E78)     # $at = 809C0000
    lwc1    $f4, %lo(var_809B9E78)($at) 
    mul.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0048($sp)           
    lui     $at, %hi(var_809B9E7C)     # $at = 809C0000
    lwc1    $f8, %lo(var_809B9E7C)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f0, $f8             
    jal     func_800AAB94              
    swc1    $f12, 0x0044($sp)          
    lwc1    $f12, 0x0048($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_809B9E80)     # $at = 809C0000
    lwc1    $f12, %lo(var_809B9E80)($at) 
    lui     $at, %hi(var_809B9E84)     # $at = 809C0000
    lwc1    $f14, %lo(var_809B9E84)($at) 
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0048($sp)          
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lwc1    $f12, 0x0044($sp)          
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94              
    neg.s   $f12, $f12                 
lbl_809B9BB0:
    lw      a1, 0x0140(s0)             # 00000140
lbl_809B9BB4:
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t2, %hi(func_809B95D4)     # t2 = 809C0000
    addiu   t2, t2, %lo(func_809B95D4) # t2 = 809B95D4
    sw      t2, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0064($sp)            
    beq     $zero, $zero, lbl_809B9CF4 
    lw      $ra, 0x002C($sp)           
lbl_809B9BE0:
    jal     func_8007E2C0              
    sw      v1, 0x0058($sp)            
    lw      v1, 0x0058($sp)            
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(v1)             # 000002D0
    addiu   t5, t5, 0x8510             # t5 = 800E8510
    ori     t4, t4, 0x0030             # t4 = DB060030
    sw      t4, 0x0000(v0)             # 00000000
    sw      t5, 0x0004(v0)             # 00000004
    lw      t1, 0x02D0(v1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     $at, %hi(var_809B9E88)     # $at = 809C0000
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(t1)             # 00000000
    lwc1    $f16, %lo(var_809B9E88)($at) 
    lwc1    $f10, 0x0054(s0)           # 00000054
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f18, $f10, $f16           
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f4, $f18                  
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_809B9CA8    
    mfc1    t9, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_809B9C9C    
    nop
    mfc1    t9, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809B9CB4 
    or      t9, t9, $at                # t9 = 80000000
lbl_809B9C9C:
    beq     $zero, $zero, lbl_809B9CB4 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f4                    
lbl_809B9CA8:
    nop
    bltz    t9, lbl_809B9C9C           
    nop
lbl_809B9CB4:
    ctc1    t8, $f31                   
    andi    t2, t9, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(t1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      t3, 0x02D0(v1)             # 000002D0
    lw      a0, 0x0064($sp)            
    jal     func_8008A88C              
    sw      t3, 0x001C($sp)            
    lw      v1, 0x0058($sp)            
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x002C($sp)           
lbl_809B9CF4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809B9D10: .word 0xFFFFFFFF
var_809B9D14: .word 0x64FFFFFF
var_809B9D18: .word 0x00000000, 0x00000000, 0x00000000
var_809B9D24: .word 0x00C60500, 0x00000035, 0x015F0000, 0x00000374
.word func_809B7650
.word func_809B77BC
.word func_809B93DC
.word func_809B9A54
var_809B9D44: .word \
0x01000000, 0x20000000, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x09010100, 0x01000000, 0x002DFFE2, \
0x004B0064
var_809B9D68: .word 0x00110939, 0x10000000, 0x00000001
.word var_809B9D44
var_809B9D78: .word \
0x0C110D39, 0x10010000, 0x01000000, 0x20000000, \
0x00080000, 0xFFCFFFE7, 0x00000000, 0x09010100, \
0x00320064, 0x0000001E, 0x0000000C, 0x0C110D39, \
0x10010000, 0x01000000, 0x20000000, 0x00080000, \
0xFFCFFFE7, 0x00000000, 0x09010100, 0x00320064, \
0x0000FFE2, 0x0000000C
var_809B9DD0: .word 0x04000082, 0x0078C800
var_809B9DD8: .word \
0x100200F0, 0x10000000, 0x01000000, 0x00000000, \
0x00000000, 0x00000100, 0x00020004, 0x00000000
var_809B9DF8: .word \
0xB04C07D0, 0x801F0002, 0xB06CFFFF, 0x89170059, \
0x48500021, 0xFFFFFFFF, 0x969696FF, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809B9E20: .word 0xC4802000
var_809B9E24: .word 0x43838000
var_809B9E28: .word 0x43838000
var_809B9E2C: .word 0xC4802000
var_809B9E30: .word 0x43838000
var_809B9E34: .word 0x43838000
var_809B9E38: .word 0x3DE5C8FA
var_809B9E3C: .word 0x3E65C8FA
var_809B9E40: .word 0x3EA0D97C
var_809B9E44: .word 0x3F088889
var_809B9E48: .word 0x43838000
var_809B9E4C: .word 0x3F8CCCCD
var_809B9E50: .word 0x3F19999A
var_809B9E54: .word 0x3E490FDB
var_809B9E58: .word 0x3E490FDB
var_809B9E5C: .word 0x3EC90FDB
var_809B9E60: .word 0x3E490FDB
var_809B9E64: .word 0x3F490FDB
var_809B9E68: .word 0x3EC90FDB
var_809B9E6C: .word 0x40D6BCA2
var_809B9E70: .word 0x3E4CCCCD
var_809B9E74: .word 0x3DAAAAAB
var_809B9E78: .word 0x40C90FDB
var_809B9E7C: .word 0x40C90FDB
var_809B9E80: .word 0x3F4A3D70
var_809B9E84: .word 0x3FA66666
var_809B9E88: .word 0x45F17A2F, 0x00000000

