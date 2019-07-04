.section .text
func_80938580:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s5, 0x0048($sp)            
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s0, 0x0034($sp)            
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s2, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s2, 0x0180             # t6 = 00000180
    addiu   t7, s2, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x5C30             # a3 = 06005C30
    addiu   a2, a2, 0xBAC8             # a2 = 0600BAC8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s2, 0x013C             # a1 = 0000013C
    lh      a0, 0x001C(s2)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, s2, $zero              # v1 = 00000000
    sra     t9, a0,  8                 
    andi    t1, a0, 0x00FF             # t1 = 00000000
    andi    t0, t9, 0x00FF             # t0 = 00000000
    lui     a0, %hi(var_80939784)      # a0 = 80940000
    sh      t0, 0x025A(s2)             # 0000025A
    sh      t1, 0x025C(s2)             # 0000025C
    addiu   a0, a0, %lo(var_80939784)  # a0 = 80939784
lbl_80938614:
    lh      t2, 0x025A(s2)             # 0000025A
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sll     t3, t2,  5                 
    addu    t4, a0, t3                 
    addu    t5, t4, v0                 
    lwc1    $f4, 0x0000(t5)            # 00000000
    addiu   v0, v0, 0x0004             # v0 = 00000004
    slti    $at, v0, 0x0020            
    bne     $at, $zero, lbl_80938614   
    swc1    $f4, 0x0270(v1)            # 00000274
    lh      t6, 0x025C(s2)             # 0000025C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     s0, %hi(var_80939810)      # s0 = 80940000
    bne     t6, $at, lbl_809386C4      
    addiu   s0, s0, %lo(var_80939810)  # s0 = 80939810
    lui     s5, %hi(var_80939870)      # s5 = 80940000
    addiu   s5, s5, %lo(var_80939870)  # s5 = 80939870
    addiu   s3, s1, 0x1C24             # s3 = 00001C24
    addiu   s4, $sp, 0x0064            # s4 = FFFFFFEC
    lw      t8, 0x0000(s0)             # 80939810
lbl_80938664:
    lw      t7, 0x0004(s0)             # 80939814
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t8, 0x0000(s4)             # FFFFFFEC
    lw      t8, 0x0008(s0)             # 80939818
    sw      t7, 0x0004(s4)             # FFFFFFF0
    or      a0, s3, $zero              # a0 = 00001C24
    sw      t8, 0x0008(s4)             # FFFFFFF4
    lwc1    $f10, 0x006C($sp)          
    lwc1    $f8, 0x0068($sp)           
    lwc1    $f6, 0x0064($sp)           
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0131          # a3 = 00000131
    swc1    $f10, 0x0018($sp)          
    swc1    $f8, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f6, 0x0010($sp)           
    addiu   s0, s0, 0x000C             # s0 = 8093981C
    bnel    s0, s5, lbl_80938664       
    lw      t8, 0x0000(s0)             # 8093981C
lbl_809386C4:
    lh      t0, 0x025A(s2)             # 0000025A
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     v0, 0x8012                 # v0 = 80120000
    beq     t0, $at, lbl_80938730      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x000C(v0)             # 8011A5DC
    ori     $at, $zero, 0xB888         # $at = 0000B888
    slt     $at, t1, $at               
    bnel    $at, $zero, lbl_80938704   
    lhu     t3, 0x0EE4(v0)             # 8011B4B4
    lw      t2, 0x0010(v0)             # 8011A5E0
    bne     t2, $zero, lbl_80938720    
    nop
    lhu     t3, 0x0EE4(v0)             # 8011B4B4
lbl_80938704:
    lui     t5, %hi(func_809387A8)     # t5 = 80940000
    addiu   t5, t5, %lo(func_809387A8) # t5 = 809387A8
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80938720    
    nop
    beq     $zero, $zero, lbl_80938774 
    sw      t5, 0x024C(s2)             # 0000024C
lbl_80938720:
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80938778 
    lw      $ra, 0x004C($sp)           
lbl_80938730:
    lhu     t6, 0x000C(v0)             # 0000000C
    ori     $at, $zero, 0xB889         # $at = 0000B889
    lui     t0, %hi(func_80939264)     # t0 = 80940000
    slt     $at, t6, $at               
    beq     $at, $zero, lbl_80938764   
    addiu   t0, t0, %lo(func_80939264) # t0 = 80939264
    lw      t7, 0x0010(v0)             # 00000010
    bne     t7, $zero, lbl_80938764    
    nop
    lhu     t8, 0x0EE4(v0)             # 00000EE4
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8093876C    
    nop
lbl_80938764:
    beq     $zero, $zero, lbl_80938774 
    sw      t0, 0x024C(s2)             # 0000024C
lbl_8093876C:
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
lbl_80938774:
    lw      $ra, 0x004C($sp)           
lbl_80938778:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80938798:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809387A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5880             # a0 = 06005880
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0274(s0)             # 00000274
    sw      $zero, 0x0014($sp)         
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5880             # a1 = 06005880
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x0278(s0)           # 00000278
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_809398F0)     # $at = 80940000
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0264(s0)            # 00000264
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809398F0)($at) 
    trunc.w.s $f4, $f0                   
    lui     t2, %hi(func_8093885C)     # t2 = 80940000
    addiu   t2, t2, %lo(func_8093885C) # t2 = 8093885C
    sw      t2, 0x024C(s0)             # 0000024C
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0252(s0)             # 00000252
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8093885C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x3F80                 # a1 = 3F800000
    bne     v0, $zero, lbl_8093889C    
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4188                 # a1 = 41880000
    beq     v0, $zero, lbl_809388A8    
lbl_8093889C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28F0          # a1 = 000028F0
lbl_809388A8:
    lui     t6, %hi(var_80939760)      # t6 = 80940000
    lw      t6, %lo(var_80939760)(t6)  
    lw      t7, 0x004C($sp)            
    lui     t8, 0x0001                 # t8 = 00010000
    bne     t6, $zero, lbl_80938B68    
    addu    t8, t8, t7                 
    lh      t9, 0x025C(s0)             # 0000025C
    lw      t8, 0x1E08(t8)             # 00011E08
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t1, t9,  3                 
    addu    t0, t8, t1                 
    lw      v1, 0x0004(t0)             # 00000004
    lh      t7, 0x029A(s0)             # 0000029A
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t2, v1,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, v1, $at                
    sll     t9, t7,  2                 
    lui     $at, 0x8000                # $at = 80000000
    subu    t9, t9, t7                 
    addu    v0, t5, t6                 
    addu    v0, v0, $at                
    sll     t9, t9,  1                 
    addu    v0, v0, t9                 
    lh      t8, 0x0000(v0)             # 00000000
    lw      a3, 0x0264(s0)             # 00000264
    sw      v0, 0x0040($sp)            
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    cvt.s.w $f4, $f4                   
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lw      v0, 0x0040($sp)            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t1, 0x0004(v0)             # 00000004
    lw      a3, 0x0264(s0)             # 00000264
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f6, $f6                   
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    addiu   a0, s0, 0x0264             # a0 = 00000264
    lw      a1, 0x027C(s0)             # 0000027C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x0280(s0)             # 00000280
    lw      v0, 0x0040($sp)            
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lh      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0004(v0)             # 00000004
    mtc1    t2, $f8                    # $f8 = 0.00
    mtc1    t3, $f18                   # $f18 = 0.00
    cvt.s.w $f10, $f8                  
    cvt.s.w $f4, $f18                  
    sub.s   $f12, $f10, $f16           
    sub.s   $f14, $f4, $f6             
    swc1    $f12, 0x003C($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0038($sp)          
    lui     $at, %hi(var_809398F4)     # $at = 80940000
    lwc1    $f8, %lo(var_809398F4)($at) 
    lwc1    $f18, 0x0268(s0)           # 00000268
    sw      $zero, 0x0010($sp)         
    mul.s   $f10, $f0, $f8             
    trunc.w.s $f4, $f18                  
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f4                    
    trunc.w.s $f16, $f10                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    a1, $f16                   
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0268             # a0 = 00000268
    lw      a1, 0x0284(s0)             # 00000284
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x0288(s0)             # 00000288
    lh      t6, 0x0294(s0)             # 00000294
    bnel    t6, $zero, lbl_80938A98    
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lh      t7, 0x0252(s0)             # 00000252
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f6                   # $f6 = 8192.00
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sh      t9, 0x0252(s0)             # 00000252
    lh      t8, 0x0252(s0)             # 00000252
    lui     $at, 0xBF80                # $at = BF800000
    swc1    $f6, 0x0270(s0)            # 00000270
    andi    t1, t8, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80938A60    
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f8, 0x0270(s0)            # 00000270
    mtc1    $at, $f10                  # $f10 = 30.00
    nop
    mul.s   $f16, $f8, $f10            
    swc1    $f16, 0x0270(s0)           # 00000270
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80938A60:
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    lh      t2, 0x025A(s0)             # 0000025A
    trunc.w.s $f18, $f0                  
    lui     t4, %hi(var_80939804)      # t4 = 80940000
    sll     t3, t2,  1                 
    addu    t4, t4, t3                 
    lh      t4, %lo(var_80939804)(t4)  
    mfc1    t9, $f18                   
    nop
    addu    t8, t4, t9                 
    sh      t8, 0x0294(s0)             # 00000294
    addiu   a0, s0, 0x026C             # a0 = 0000026C
lbl_80938A98:
    lw      a1, 0x0270(s0)             # 00000270
    lw      a2, 0x028C(s0)             # 0000028C
    jal     func_80064280              
    lw      a3, 0x0290(s0)             # 00000290
    lwc1    $f0, 0x003C($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x0038($sp)           
    bc1fl   lbl_80938B6C               
    lw      $ra, 0x0024($sp)           
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80938B6C               
    lw      $ra, 0x0024($sp)           
    lh      t1, 0x0260(s0)             # 00000260
    bnel    t1, $zero, lbl_80938B6C    
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x025A(s0)             # 0000025A
    slti    $at, t2, 0x0002            
    bne     $at, $zero, lbl_80938B5C   
    nop
    lh      t3, 0x029A(s0)             # 0000029A
    slti    $at, t3, 0x0004            
    bne     $at, $zero, lbl_80938B5C   
    lui     $at, %hi(var_809398F8)     # $at = 80940000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809398F8)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80938B5C               
    nop
    lh      v0, 0x029A(s0)             # 0000029A
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_80938B48      
    slti    $at, v0, 0x0004            
    sh      $zero, 0x029A(s0)          # 0000029A
    lh      v0, 0x029A(s0)             # 0000029A
    slti    $at, v0, 0x0004            
lbl_80938B48:
    bne     $at, $zero, lbl_80938B54   
    addiu   t5, v0, 0xFFFD             # t5 = FFFFFFFD
    sh      t5, 0x029A(s0)             # 0000029A
lbl_80938B54:
    beq     $zero, $zero, lbl_80938B68 
    sh      t6, 0x0260(s0)             # 00000260
lbl_80938B5C:
    lui     t7, %hi(func_80938D30)     # t7 = 80940000
    addiu   t7, t7, %lo(func_80938D30) # t7 = 80938D30
    sw      t7, 0x024C(s0)             # 0000024C
lbl_80938B68:
    lw      $ra, 0x0024($sp)           
lbl_80938B6C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80938B7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5880             # a0 = 06005880
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f18                  # $f18 = -3.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5880             # a1 = 06005880
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4040                 # a2 = 40400000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a1, $zero, 0x702D          # a1 = 0000702D
    or      a2, s0, $zero              # a2 = 00000000
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0264(s0)            # 00000264
    jal     func_800DCE14              
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_80071E6C              
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    lui     t0, %hi(func_80938C38)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80938C38) # t0 = 80938C38
    sw      t0, 0x024C(s0)             # 0000024C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80938C38:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      t6, 0x002C($sp)            
    lw      t7, 0x002C($sp)            
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0264(s0)             # 00000264
    jal     func_80064280              
    lw      a1, 0x0024(t7)             # 00000024
    lw      t8, 0x002C($sp)            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0264(s0)             # 00000264
    jal     func_80064280              
    lw      a1, 0x002C(t8)             # 0000002C
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    addiu   a0, s0, 0x0264             # a0 = 00000264
    lui     a1, 0x40C0                 # a1 = 40C00000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f4, 0x0268(s0)            # 00000268
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f6, $f4                   
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x0268             # a0 = 00000268
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4396                 # a3 = 43960000
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0              
    lui     a2, 0x44FA                 # a2 = 44FA0000
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lui     t0, %hi(func_80938FB4)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80938FB4) # t0 = 80938FB4
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80938D20               
    lw      $ra, 0x0024($sp)           
    sw      t0, 0x024C(s0)             # 0000024C
    lw      $ra, 0x0024($sp)           
lbl_80938D20:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80938D30:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0274(s0)             # 00000274
    sw      $zero, 0x0014($sp)         
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x0278(s0)           # 00000278
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    sh      $zero, 0x0254(s0)          # 00000254
    lui     $at, %hi(var_809398FC)     # $at = 80940000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809398FC)($at) 
    trunc.w.s $f4, $f0                   
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    mfc1    t1, $f4                    
    jal     func_80026D64              
    sh      t1, 0x0252(s0)             # 00000252
    trunc.w.s $f6, $f0                   
    lui     t7, %hi(func_80938DF8)     # t7 = 80940000
    addiu   t7, t7, %lo(func_80938DF8) # t7 = 80938DF8
    sw      t7, 0x024C(s0)             # 0000024C
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0x0032             # t6 = 00000032
    sh      t6, 0x0296(s0)             # 00000296
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80938DF8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     t6, %hi(var_80939760)      # t6 = 80940000
    lw      t6, %lo(var_80939760)(t6)  
    bnel    t6, $zero, lbl_80938FA4    
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x0254(s0)             # 00000254
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    v0, $zero, lbl_80938E48    
    lh      t7, 0x0252(s0)             # 00000252
    beql    v0, v1, lbl_80938EC4       
    lh      t9, 0x0294(s0)             # 00000294
    beq     $zero, $zero, lbl_80938F84 
    lwc1    $f0, 0x0290(s0)            # 00000290
    lh      t7, 0x0252(s0)             # 00000252
lbl_80938E48:
    lui     $at, 0xC614                # $at = C6140000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0252(s0)             # 00000252
    lh      t9, 0x0252(s0)             # 00000252
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80938E78    
    mtc1    $at, $f6                   # $f6 = -9472.00
    lui     $at, 0x4614                # $at = 46140000
    mtc1    $at, $f4                   # $f4 = 9472.00
    beq     $zero, $zero, lbl_80938E80 
    swc1    $f4, 0x0270(s0)            # 00000270
    mtc1    $at, $f6                   # $f6 = 9472.00
lbl_80938E78:
    nop
    swc1    $f6, 0x0270(s0)            # 00000270
lbl_80938E80:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    lh      t1, 0x025A(s0)             # 0000025A
    trunc.w.s $f8, $f0                   
    lui     t3, %hi(var_80939804)      # t3 = 80940000
    sll     t2, t1,  1                 
    addu    t3, t3, t2                 
    lh      t3, %lo(var_80939804)(t3)  
    mfc1    t7, $f8                    
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      v1, 0x0254(s0)             # 00000254
    addu    t8, t3, t7                 
    beq     $zero, $zero, lbl_80938F80 
    sh      t8, 0x0294(s0)             # 00000294
    lh      t9, 0x0294(s0)             # 00000294
lbl_80938EC4:
    bnel    t9, $zero, lbl_80938F84    
    lwc1    $f0, 0x0290(s0)            # 00000290
    lh      t0, 0x0296(s0)             # 00000296
    lui     t8, %hi(func_809387A8)     # t8 = 80940000
    addiu   t8, t8, %lo(func_809387A8) # t8 = 809387A8
    bnel    t0, $zero, lbl_80938F80    
    sh      $zero, 0x0254(s0)          # 00000254
    lh      v0, 0x025A(s0)             # 0000025A
    beql    v0, $zero, lbl_80938EF8    
    lh      t1, 0x029A(s0)             # 0000029A
    bne     v1, v0, lbl_80938F18       
    lui     a0, %hi(var_809398C0)      # a0 = 80940000
    lh      t1, 0x029A(s0)             # 0000029A
lbl_80938EF8:
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x029A(s0)             # 0000029A
    lh      t4, 0x029A(s0)             # 0000029A
    slti    $at, t4, 0x0004            
    bne     $at, $zero, lbl_80938F74   
    nop
    beq     $zero, $zero, lbl_80938F74 
    sh      $zero, 0x029A(s0)          # 0000029A
lbl_80938F18:
    lui     v0, %hi(var_809398B0)      # v0 = 80940000
    addiu   v0, v0, %lo(var_809398B0)  # v0 = 809398B0
    lh      v1, 0x029A(s0)             # 0000029A
    addiu   a0, a0, %lo(var_809398C0)  # a0 = 809398C0
    lh      t5, 0x0000(v0)             # 809398B0
lbl_80938F2C:
    bne     v1, t5, lbl_80938F5C       
    lui     t6, %hi(var_809398C0)      # t6 = 80940000
    addiu   v0, v0, 0x0002             # v0 = 809398B2
    addiu   t6, t6, %lo(var_809398C0)  # t6 = 809398C0
    sltu    $at, v0, t6                
    bnel    $at, $zero, lbl_80938F54   
    lh      t3, 0x0000(v0)             # 809398B2
    lui     v0, %hi(var_809398B0)      # v0 = 80940000
    addiu   v0, v0, %lo(var_809398B0)  # v0 = 809398B0
    lh      t3, 0x0000(v0)             # 809398B0
lbl_80938F54:
    beq     $zero, $zero, lbl_80938F6C 
    sh      t3, 0x029A(s0)             # 0000029A
lbl_80938F5C:
    addiu   v0, v0, 0x0002             # v0 = 809398B2
    sltu    $at, v0, a0                
    bnel    $at, $zero, lbl_80938F2C   
    lh      t5, 0x0000(v0)             # 809398B2
lbl_80938F6C:
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, 0x0260(s0)             # 00000260
lbl_80938F74:
    beq     $zero, $zero, lbl_80938F80 
    sw      t8, 0x024C(s0)             # 0000024C
    sh      $zero, 0x0254(s0)          # 00000254
lbl_80938F80:
    lwc1    $f0, 0x0290(s0)            # 00000290
lbl_80938F84:
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lw      a1, 0x0270(s0)             # 00000270
    add.s   $f10, $f0, $f0             
    lw      a2, 0x028C(s0)             # 0000028C
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lw      $ra, 0x001C($sp)           
lbl_80938FA4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80938FB4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      v0, 0x0028($sp)            
    lui     t1, %hi(func_80939050)     # t1 = 80940000
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, t1, %lo(func_80939050) # t1 = 80939050
    sh      t0, 0x0298(v0)             # 00000298
    sw      t1, 0x024C(v0)             # 0000024C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80939050:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x025A(s0)             # 0000025A
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t6, $at, lbl_809390D4      
    lh      t8, 0x0298(s0)             # 00000298
    lwc1    $f4, 0x0268(s0)            # 00000268
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f6, $f4                   
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x0268             # a0 = 00000268
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4396                 # a3 = 43960000
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0              
    lui     a2, 0x44FA                 # a2 = 44FA0000
    lh      t8, 0x0298(s0)             # 00000298
lbl_809390D4:
    lui     t9, %hi(func_809390FC)     # t9 = 80940000
    addiu   t9, t9, %lo(func_809390FC) # t9 = 809390FC
    bnel    t8, $zero, lbl_809390EC    
    lw      $ra, 0x0024($sp)           
    sw      t9, 0x024C(s0)             # 0000024C
    lw      $ra, 0x0024($sp)           
lbl_809390EC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809390FC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      t1, 0x0028($sp)            
    lui     t0, %hi(func_80939190)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80939190) # t0 = 80939190
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80939190:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t6, 0x0020($sp)            
    lh      t7, 0x0258(t6)             # 00000258
    bnel    t7, $zero, lbl_80939254    
    lw      $ra, 0x001C($sp)           
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80939254      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80939254    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0020($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t8, 0x0258(a0)             # 00000258
    addiu   v1, $zero, 0x002E          # v1 = 0000002E
    addiu   t1, $zero, 0x04FA          # t1 = 000004FA
    bne     t8, $zero, lbl_80939250    
    lui     $at, 0x0001                # $at = 00010000
    lhu     t9, 0x0EDC(v0)             # 8011B4AC
    addu    $at, $at, s0               
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    ori     t0, t9, 0x4000             # t0 = 00004000
    sh      t0, 0x0EDC(v0)             # 8011B4AC
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t2, 0x1E15($at)            # 00011E15
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t3, 0x0258(a0)             # 00000258
    lui     $at, %hi(var_80939760)     # $at = 80940000
    sw      $zero, %lo(var_80939760)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      v1, 0x1E5E($at)            # 00011E5E
    sb      v1, 0x141D(v0)             # 8011B9ED
lbl_80939250:
    lw      $ra, 0x001C($sp)           
lbl_80939254:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80939264:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      t1, 0x0028($sp)            
    lui     t0, %hi(func_809392F8)     # t0 = 80940000
    addiu   t0, t0, %lo(func_809392F8) # t0 = 809392F8
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809392F8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x702D          # a1 = 0000702D
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80939368               
    lw      $ra, 0x001C($sp)           
    jal     func_800DCE14              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800646F0              
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t6, %hi(func_809390FC)     # t6 = 80940000
    addiu   t6, t6, %lo(func_809390FC) # t6 = 809390FC
    sw      t6, 0x024C(s0)             # 0000024C
    lw      $ra, 0x001C($sp)           
lbl_80939368:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80939378:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x0250(s0)             # 00000250
    lw      a3, 0x1C44(a1)             # 00001C44
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0250(s0)             # 00000250
    sll     t8, v0,  1                 
lbl_809393A0:
    addu    v1, s0, t8                 
    lh      a0, 0x0294(v1)             # 00000294
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    beq     a0, $zero, lbl_809393C0    
    slti    $at, v0, 0x0003            
    addiu   t9, a0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0294(v1)             # 00000294
lbl_809393C0:
    bnel    $at, $zero, lbl_809393A0   
    sll     t8, v0,  1                 
    lh      v0, 0x0260(s0)             # 00000260
    beq     v0, $zero, lbl_809393D8    
    addiu   t0, v0, 0xFFFF             # t0 = 00000000
    sh      t0, 0x0260(s0)             # 00000260
lbl_809393D8:
    lh      t1, 0x07A0(a1)             # 000007A0
    lhu     t4, 0x0110(a3)             # 00000110
    sll     t2, t1,  2                 
    addu    t3, a1, t2                 
    bne     t4, $zero, lbl_80939678    
    lw      a2, 0x0790(t3)             # 00000790
    sw      a1, 0x007C($sp)            
    sw      a2, 0x0060($sp)            
    sw      a3, 0x0068($sp)            
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lui     $at, %hi(var_80939900)     # $at = 80940000
    lwc1    $f4, %lo(var_80939900)($at) 
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f6                   # $f6 = 350.00
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f8                   # $f8 = 700.00
    lh      t5, 0x025A(s0)             # 0000025A
    lw      a2, 0x0060($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    swc1    $f4, 0x00F4(s0)            # 000000F4
    swc1    $f6, 0x00F8(s0)            # 000000F8
    beq     t5, $at, lbl_80939678      
    swc1    $f8, 0x00FC(s0)            # 000000FC
    lh      v0, 0x025C(s0)             # 0000025C
    lui     t7, %hi(var_80939870)      # t7 = 80940000
    addiu   t7, t7, %lo(var_80939870)  # t7 = 80939870
    sll     v0, v0,  1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t6, v0,  2                 
    addu    a0, t6, t7                 
    lw      t8, 0x0000(a0)             # 00000000
    lh      v1, 0x0148(a2)             # 00000148
    lui     t1, %hi(var_80939760)      # t1 = 80940000
    beq     v1, t8, lbl_80939480       
    nop
    lw      t0, 0x0004(a0)             # 00000004
    bnel    v1, t0, lbl_8093967C       
    lw      $ra, 0x0024($sp)           
lbl_80939480:
    lw      t1, %lo(var_80939760)(t1)  
    bnel    t1, $zero, lbl_8093967C    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x024C(s0)             # 0000024C
    lui     t2, %hi(func_8093885C)     # t2 = 80940000
    addiu   t2, t2, %lo(func_8093885C) # t2 = 8093885C
    beq     t2, v0, lbl_809394A8       
    lui     t3, %hi(func_80938DF8)     # t3 = 80940000
    addiu   t3, t3, %lo(func_80938DF8) # t3 = 80938DF8
    bne     t3, v0, lbl_80939678       
lbl_809394A8:
    lui     t9, %hi(var_809398C0)      # t9 = 80940000
    addiu   t9, t9, %lo(var_809398C0)  # t9 = 809398C0
    lw      t6, 0x0000(t9)             # 809398C0
    addiu   t4, $sp, 0x0048            # t4 = FFFFFFD0
    lw      t5, 0x0004(t9)             # 809398C4
    sw      t6, 0x0000(t4)             # FFFFFFD0
    lw      t6, 0x0008(t9)             # 809398C8
    lui     t8, %hi(var_809398CC)      # t8 = 80940000
    addiu   t8, t8, %lo(var_809398CC)  # t8 = 809398CC
    sw      t5, 0x0004(t4)             # FFFFFFD4
    sw      t6, 0x0008(t4)             # FFFFFFD8
    lw      t1, 0x0000(t8)             # 809398CC
    addiu   t7, $sp, 0x003C            # t7 = FFFFFFC4
    lw      t0, 0x0004(t8)             # 809398D0
    sw      t1, 0x0000(t7)             # FFFFFFC4
    lw      t1, 0x0008(t8)             # 809398D4
    sw      t0, 0x0004(t7)             # FFFFFFC8
    lui     $at, 0x4270                # $at = 42700000
    sw      t1, 0x0008(t7)             # FFFFFFCC
    lwc1    $f10, 0x0024(s0)           # 00000024
    mtc1    $at, $f18                  # $f18 = 60.00
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0034($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    jal     func_800AA6EC              
    swc1    $f6, 0x0038($sp)           
    lh      t2, 0x00B6(s0)             # 000000B6
    lwc1    $f16, 0x026C(s0)           # 0000026C
    lui     $at, 0x4700                # $at = 47000000
    mtc1    t2, $f8                    # $f8 = 0.00
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80939904)     # $at = 80940000
    cvt.s.w $f10, $f8                  
    lwc1    $f8, %lo(var_80939904)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f18, $f10, $f16           
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFC4
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    jal     func_800AB958              
    swc1    $f10, 0x0044($sp)          
    jal     func_800AA724              
    nop
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, s0, 0x0256             # t4 = 00000256
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lw      a0, 0x007C($sp)            
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFB8
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFDC
    jal     func_8001D930              
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFD0
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809395C4               
    mtc1    $at, $f16                  # $f16 = 70.00
    beq     $zero, $zero, lbl_809395F8 
    sh      t9, 0x0256(s0)             # 00000256
    mtc1    $at, $f16                  # $f16 = 70.00
lbl_809395C4:
    lw      t5, 0x0068($sp)            
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_809395F8               
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f18                  # $f18 = -4.00
    lwc1    $f4, 0x0060(t5)            # 00000060
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_809395FC               
    lh      t7, 0x0256(s0)             # 00000256
    sh      t6, 0x0256(s0)             # 00000256
lbl_809395F8:
    lh      t7, 0x0256(s0)             # 00000256
lbl_809395FC:
    lw      v0, 0x0068($sp)            
    lui     $at, %hi(var_80939908)     # $at = 80940000
    beql    t7, $zero, lbl_8093967C    
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, %lo(var_80939908)($at) 
    lwc1    $f8, 0x0060(v0)            # 00000060
    c.lt.s  $f6, $f8                   
    nop
    bc1tl   lbl_8093967C               
    lw      $ra, 0x0024($sp)           
    sh      $zero, 0x0256(s0)          # 00000256
    lwc1    $f10, 0x0028(v0)           # 00000028
    lwc1    $f16, 0x0028(s0)           # 00000028
    sub.s   $f0, $f10, $f16            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8093967C               
    lw      $ra, 0x0024($sp)           
    jal     func_800646F0              
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, %hi(var_80939760)     # $at = 80940000
    lui     t0, %hi(func_80938B7C)     # t0 = 80940000
    sw      t8, %lo(var_80939760)($at) 
    addiu   t0, t0, %lo(func_80938B7C) # t0 = 80938B7C
    sw      t0, 0x024C(s0)             # 0000024C
lbl_80939678:
    lw      $ra, 0x0024($sp)           
lbl_8093967C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra                        
    nop


func_8093968C:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_809396C4      
    lw      t7, 0x0014($sp)            
    lwc1    $f4, 0x026C(t7)            # 0000026C
    lw      v0, 0x0010($sp)            
    trunc.w.s $f6, $f4                   
    lh      t6, 0x0000(v0)             # 00000000
    mfc1    t1, $f6                    
    nop
    addu    t2, t6, t1                 
    sh      t2, 0x0000(v0)             # 00000000
lbl_809396C4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_809396D0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lui     t7, %hi(var_809398D8)      # t7 = 80940000
    addiu   t7, t7, %lo(var_809398D8)  # t7 = 809398D8
    lw      t9, 0x0000(t7)             # 809398D8
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 809398DC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 809398E0
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t0, 0x003C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t0)             # 00000000
    lw      v0, 0x0038($sp)            
    lui     a3, %hi(func_8093968C)     # a3 = 80940000
    addiu   a3, a3, %lo(func_8093968C) # a3 = 8093968C
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x003C($sp)            
    jal     func_8008993C              
    sw      v0, 0x0014($sp)            
    lw      v0, 0x0038($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFEC
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    lw      a3, 0x003C($sp)            
    jal     func_80026AD0              
    addiu   a0, v0, 0x0024             # a0 = 00000024
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80939760: .word 0x00000000
var_80939764: .word 0x00000400, 0x00000010, 0x00970000, 0x0000029C
.word func_80938580
.word func_80938798
.word func_80939378
.word func_809396D0
var_80939784: .word \
0x3F800000, 0xC1200000, 0x40400000, 0x3F000000, \
0x447A0000, 0x43480000, 0x3E99999A, 0x447A0000, \
0x40400000, 0xC0400000, 0x40C00000, 0x3F4CCCCD, \
0x44FA0000, 0x43C80000, 0x3F000000, 0x44FA0000, \
0x3F800000, 0xC1200000, 0x40400000, 0x3F000000, \
0x447A0000, 0x43480000, 0x3E99999A, 0x447A0000, \
0x40400000, 0xC0400000, 0x40C00000, 0x3F4CCCCD, \
0x44FA0000, 0x43C80000, 0x3F000000, 0x44FA0000
var_80939804: .word 0x0014000A, 0x0014000A, 0x000D0000
var_80939810: .word \
0x00000000, 0x00000000, 0x42B40000, 0xC25C0000, \
0x00000000, 0x42B40000, 0xC25C0000, 0x00000000, \
0x41F00000, 0xC25C0000, 0x00000000, 0xC1F00000, \
0x00000000, 0x00000000, 0xC1F00000, 0x425C0000, \
0x00000000, 0xC1F00000, 0x425C0000, 0x00000000, \
0x41F00000, 0x425C0000, 0x00000000, 0x42B40000
var_80939870: .word \
0x00000007, 0x00000007, 0x00000002, 0x00000002, \
0x00000002, 0x00000002, 0x00000003, 0x00000003, \
0x00000004, 0x00000004, 0x00000005, 0x00000006, \
0x00000004, 0x00000004, 0x00000005, 0x00000006
var_809398B0: .word 0x00000004, 0x00010005, 0x00020006, 0x00030007
var_809398C0: .word 0x00000000, 0x00000000, 0x00000000
var_809398CC: .word 0x00000000, 0x00000000, 0x41A00000
var_809398D8: .word \
0x3E99999A, 0x3E99999A, 0x3E99999A, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809398F0: .word 0x3FFEB852
var_809398F4: .word 0x4622F983
var_809398F8: .word 0x3FFEB852
var_809398FC: .word 0x3FFEB852
var_80939900: .word 0x44098000
var_80939904: .word 0x40490FDB
var_80939908: .word 0xC079999A, 0x00000000

