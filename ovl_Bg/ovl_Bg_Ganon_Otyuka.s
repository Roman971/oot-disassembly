.section .text
func_80A53DD0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80A54E60)      # a1 = 80A50000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80A54E60)  # a1 = 80A54E60
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, %hi(var_80A56290)      # a0 = 80A50000
    addiu   a0, a0, %lo(var_80A56290)  # a0 = 80A56290
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0023         # $at = 00000023
    sw      v0, 0x013C(s0)             # 0000013C
    beq     t6, $at, lbl_80A53E50      
    lui     t8, %hi(func_80A54530)     # t8 = 80A50000
    lui     t7, %hi(func_80A53EA0)     # t7 = 80A50000
    addiu   t7, t7, %lo(func_80A53EA0) # t7 = 80A53EA0
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_80A53E58 
    sw      t7, 0x0154(s0)             # 00000154
lbl_80A53E50:
    addiu   t8, t8, %lo(func_80A54530) # t8 = 80A54530
    sw      t8, 0x0130(s0)             # 00000130
lbl_80A53E58:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A53E6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A53EA0:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sdc1    $f20, 0x0018($sp)          
    lbu     t6, 0x015A(s0)             # 0000015A
    lui     s6, %hi(var_80A54E64)      # s6 = 80A50000
    addiu   s6, s6, %lo(var_80A54E64)  # s6 = 80A54E64
    bne     t6, $zero, lbl_80A53F04    
    or      s1, $zero, $zero           # s1 = 00000000
    lbu     t7, 0x1C26(a1)             # 00001C26
    lui     $at, %hi(var_80A562C0)     # $at = 80A50000
    beql    t7, $zero, lbl_80A540C8    
    lw      $ra, 0x003C($sp)           
    lwc1    $f4, 0x008C(s0)            # 0000008C
    lwc1    $f6, %lo(var_80A562C0)($at) 
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A540C4               
lbl_80A53F04:
    lui     $at, 0x4120                # $at = 41200000
    lui     s2, %hi(var_80A54E68)      # s2 = 80A50000
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   s2, s2, %lo(var_80A54E68)  # s2 = 80A54E68
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    addiu   a0, $zero, 0x0106          # a0 = 00000106
lbl_80A53F1C:
    lw      v0, 0x1C64(a1)             # 00001C64
    beql    v0, $zero, lbl_80A53FE4    
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_80A53F28:
    beq     v0, s0, lbl_80A53F3C       
    nop
    lh      t8, 0x0000(v0)             # 00000000
    beq     a0, t8, lbl_80A53F44       
    nop
lbl_80A53F3C:
    beq     $zero, $zero, lbl_80A53FD8 
    lw      v0, 0x0124(v0)             # 00000124
lbl_80A53F44:
    multu   s1, s3                     
    lwc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0028(v0)            # 00000028
    sub.s   $f18, $f8, $f10            
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sub.s   $f12, $f6, $f8             
    mflo    t9                         
    addu    v1, s2, t9                 
    lwc1    $f4, 0x0000(v1)            # 00000000
    lwc1    $f6, 0x0008(v1)            # 00000008
    add.s   $f2, $f4, $f18             
    lwc1    $f4, 0x002C(s0)            # 0000002C
    abs.s   $f0, $f2                   
    sub.s   $f18, $f10, $f4            
    c.lt.s  $f0, $f16                  
    add.s   $f14, $f6, $f18            
    bc1fl   lbl_80A53FD8               
    lw      v0, 0x0124(v0)             # 00000124
    abs.s   $f0, $f12                  
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80A53FD8               
    lw      v0, 0x0124(v0)             # 00000124
    abs.s   $f0, $f14                  
    addu    t1, s6, s1                 
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80A53FD8               
    lw      v0, 0x0124(v0)             # 00000124
    lbu     t0, 0x015C(v0)             # 0000015C
    lbu     t2, 0x0000(t1)             # 00000000
    or      t3, t0, t2                 # t3 = 00000000
    beq     $zero, $zero, lbl_80A53FE0 
    sb      t3, 0x015C(v0)             # 0000015C
    lw      v0, 0x0124(v0)             # 00000124
lbl_80A53FD8:
    bne     v0, $zero, lbl_80A53F28    
    nop
lbl_80A53FE0:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80A53FE4:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0004            
    bne     $at, $zero, lbl_80A53F1C   
    addiu   s4, a1, 0x07C0             # s4 = 000007C0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s5, $sp, 0x004C            # s5 = FFFFFFDC
lbl_80A54008:
    multu   s1, s3                     
    lwc1    $f10, 0x0024(s0)           # 00000024
    mfc1    a2, $f20                   
    or      a0, s4, $zero              # a0 = 000007C0
    or      a1, s5, $zero              # a1 = FFFFFFDC
    mflo    t4                         
    addu    v1, s2, t4                 
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f18, 0x0008(v1)           # 00000008
    add.s   $f4, $f8, $f10             
    swc1    $f4, 0x004C($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f6, 0x0050($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    add.s   $f10, $f18, $f8            
    jal     func_80030D08              
    swc1    $f10, 0x0054($sp)          
    beq     v0, $zero, lbl_80A54064    
    addu    t6, s6, s1                 
    lbu     t5, 0x015B(s0)             # 0000015B
    lbu     t7, 0x0000(t6)             # 00000000
    or      t8, t5, t7                 # t8 = 00000000
    sb      t8, 0x015B(s0)             # 0000015B
lbl_80A54064:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0004            
    bne     $at, $zero, lbl_80A54008   
    nop
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f0                   # $f0 = 255.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     t9, %hi(func_80A540F0)     # t9 = 80A50000
    addiu   t9, t9, %lo(func_80A540F0) # t9 = 80A540F0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sw      t9, 0x0154(s0)             # 00000154
    sb      v0, 0x015A(s0)             # 0000015A
    sh      t1, 0x0158(s0)             # 00000158
    sb      v0, 0x015E(s0)             # 0000015E
    sb      $zero, 0x015D(s0)          # 0000015D
    swc1    $f0, 0x0164(s0)            # 00000164
    swc1    $f0, 0x0168(s0)            # 00000168
    swc1    $f0, 0x016C(s0)            # 0000016C
    swc1    $f0, 0x0170(s0)            # 00000170
    swc1    $f0, 0x0174(s0)            # 00000174
    swc1    $f4, 0x0178(s0)            # 00000178
lbl_80A540C4:
    lw      $ra, 0x003C($sp)           
lbl_80A540C8:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80A540F0:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0040($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x003C($sp)            
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x0084($sp)            
    lbu     v0, 0x015E(s1)             # 0000015E
    lw      t6, 0x0084($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A54190      
    lw      s0, 0x1C44(t6)             # 00001C44
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    addiu   a0, s1, 0x016C             # a0 = 0000016C
    lui     a1, 0x432A                 # a1 = 432A0000
    mfc1    a2, $f22                   
    jal     func_80064280              
    lui     a3, 0x4108                 # a3 = 41080000
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0170             # a0 = 00000170
    lui     a1, 0x42F0                 # a1 = 42F00000
    jal     func_80064280              
    lui     a3, 0x4158                 # a3 = 41580000
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f20                  # $f20 = 2.50
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0160             # a0 = 00000160
    mfc1    a1, $f20                   
    jal     func_80064280              
    lui     a3, 0x3E80                 # a3 = 3E800000
    lwc1    $f4, 0x0160(s1)            # 00000160
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    c.eq.s  $f20, $f4                  
    nop
    bc1fl   lbl_80A5420C               
    lh      v0, 0x0158(s1)             # 00000158
    beq     $zero, $zero, lbl_80A54208 
    sb      t7, 0x015E(s1)             # 0000015E
lbl_80A54190:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A54208      
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s1, 0x0168             # a0 = 00000168
    mfc1    a2, $f22                   
    mfc1    a1, $f20                   
    jal     func_80064280              
    lui     a3, 0x41CC                 # a3 = 41CC0000
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0170             # a0 = 00000170
    jal     func_80064280              
    lui     a3, 0x4140                 # a3 = 41400000
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0174             # a0 = 00000174
    jal     func_80064280              
    lui     a3, 0x41CC                 # a3 = 41CC0000
    mfc1    a1, $f22                   
    addiu   a0, s1, 0x0160             # a0 = 00000160
    jal     func_800642F0              
    lui     a2, 0x3E80                 # a2 = 3E800000
    lwc1    $f6, 0x0160(s1)            # 00000160
    c.eq.s  $f20, $f6                  
    nop
    bc1fl   lbl_80A5420C               
    lh      v0, 0x0158(s1)             # 00000158
    sb      $zero, 0x015E(s1)          # 0000015E
lbl_80A54208:
    lh      v0, 0x0158(s1)             # 00000158
lbl_80A5420C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    bne     v0, $zero, lbl_80A5448C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mfc1    a2, $f22                   
    swc1    $f20, 0x0160(s1)           # 00000160
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0xC47A                 # a1 = C47A0000
    jal     func_80064280              
    lw      a3, 0x0068(s1)             # 00000068
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x42C8                 # a1 = 42C80000
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    lbu     v0, 0x015B(s1)             # 0000015B
    lui     $at, 0x41F0                # $at = 41F00000
    andi    t8, v0, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_80A5428C    
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    lwc1    $f8, 0x0068(s1)            # 00000068
    lh      t9, 0x00B8(s1)             # 000000B8
    lbu     v0, 0x015B(s1)             # 0000015B
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    subu    t4, t9, t3                 
    sh      t4, 0x00B8(s1)             # 000000B8
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80A5428C:
    mtc1    $at, $f0                   # $f0 = 30.00
    andi    t5, v0, 0x0002             # t5 = 00000000
    bne     t5, $zero, lbl_80A542C0    
    lui     $at, %hi(var_80A562C4)     # $at = 80A50000
    lwc1    $f18, 0x0068(s1)           # 00000068
    lh      t6, 0x00B8(s1)             # 000000B8
    lbu     v0, 0x015B(s1)             # 0000015B
    mul.s   $f4, $f18, $f0             
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    addu    t2, t6, t1                 
    sh      t2, 0x00B8(s1)             # 000000B8
lbl_80A542C0:
    andi    t9, v0, 0x0004             # t9 = 00000000
    bnel    t9, $zero, lbl_80A542F4    
    andi    t6, v0, 0x0008             # t6 = 00000000
    lwc1    $f8, 0x0068(s1)            # 00000068
    lh      t3, 0x00B4(s1)             # 000000B4
    lbu     v0, 0x015B(s1)             # 0000015B
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    nop
    addu    t0, t3, t8                 
    sh      t0, 0x00B4(s1)             # 000000B4
    andi    t6, v0, 0x0008             # t6 = 00000000
lbl_80A542F4:
    bnel    t6, $zero, lbl_80A54320    
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f18, 0x0068(s1)           # 00000068
    lh      t1, 0x00B4(s1)             # 000000B4
    mul.s   $f4, $f18, $f0             
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    subu    t7, t1, t5                 
    sh      t7, 0x00B4(s1)             # 000000B4
    lwc1    $f8, 0x0028(s1)            # 00000028
lbl_80A54320:
    lwc1    $f10, %lo(var_80A562C4)($at) 
    lui     $at, 0xC3C8                # $at = C3C80000
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A54518               
    lw      $ra, 0x0044($sp)           
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $at, $f18                  # $f18 = -400.00
    lui     $at, %hi(var_80A562C8)     # $at = 80A50000
    or      s0, $zero, $zero           # s0 = 00000000
    c.lt.s  $f16, $f18                 
    nop
    bc1f    lbl_80A5447C               
    nop
    lwc1    $f4, %lo(var_80A562C8)($at) 
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f22                  # $f22 = 150.00
    swc1    $f20, 0x005C($sp)          
    swc1    $f20, 0x0054($sp)          
    swc1    $f20, 0x0068($sp)          
    swc1    $f20, 0x0064($sp)          
    swc1    $f20, 0x0060($sp)          
    swc1    $f4, 0x0058($sp)           
lbl_80A5437C:
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lwc1    $f6, 0x0024(s1)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x006C($sp)           
    lui     $at, %hi(var_80A562CC)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A562CC)($at) 
    mov.s   $f12, $f22                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0070($sp)          
    lwc1    $f18, 0x002C(s1)           # 0000002C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f4, $f0, $f18             
    jal     func_80026D64              
    swc1    $f4, 0x0074($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    mov.s   $f20, $f0                  
    trunc.w.s $f6, $f20                  
    lui     t3, %hi(var_80A54E98)      # t3 = 80A50000
    addiu   t3, t3, %lo(var_80A54E98)  # t3 = 80A54E98
    trunc.w.s $f8, $f0                   
    mfc1    t6, $f6                    
    lui     t8, %hi(var_80A54E9C)      # t8 = 80A50000
    addiu   t8, t8, %lo(var_80A54E9C)  # t8 = 80A54E9C
    mfc1    t7, $f8                    
    sw      t3, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sll     t2, t6, 16                 
    sll     t3, t7, 16                 
    sra     t8, t3, 16                 
    sra     t9, t2, 16                 
    addiu   t4, t9, 0x00FA             # t4 = 000000FA
    addiu   t0, t8, 0x000F             # t0 = 80A54EAB
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sw      t1, 0x001C($sp)            
    sw      t0, 0x0020($sp)            
    sw      t4, 0x0018($sp)            
    lw      a0, 0x0084($sp)            
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFE0
    jal     func_8001BE64              
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFD4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x001E            
    bne     $at, $zero, lbl_80A5437C   
    nop
    lw      a0, 0x0084($sp)            
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_80026C1C              
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    lw      a0, 0x0084($sp)            
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2839          # a3 = 00002839
lbl_80A5447C:
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A54518 
    lw      $ra, 0x0044($sp)           
lbl_80A5448C:
    bne     v0, $at, lbl_80A544C4      
    lui     a3, 0x8010                 # a3 = 80100000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2893          # a0 = 00002893
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_80A544EC 
    mfc1    a2, $f22                   
lbl_80A544C4:
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 000043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x205C          # a0 = 0000205C
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mfc1    a2, $f22                   
lbl_80A544EC:
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0xC47A                 # a1 = C47A0000
    jal     func_80064280              
    lw      a3, 0x0068(s1)             # 00000068
    mfc1    a2, $f22                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s1, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a1, 0x42C8                 # a1 = 42C80000
    lw      $ra, 0x0044($sp)           
lbl_80A54518:
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80A54530:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A54540:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lbu     t6, 0x015D(a0)             # 0000015D
    lh      v0, 0x0158(a0)             # 00000158
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_80A54578    
    sb      t7, 0x015D(a0)             # 0000015D
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0158(a0)             # 00000158
lbl_80A54578:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A54588:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f24, 0x0048($sp)          
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    sw      a0, 0x00A0($sp)            
    sw      a1, 0x00A4($sp)            
    lw      a0, 0x00A4($sp)            
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f0                   # $f0 = -30.00
    lw      v1, 0x00A4($sp)            
    sw      v0, 0x008C($sp)            
    lw      s5, 0x1C7C(v1)             # 00001C7C
    lw      a0, 0x0000(v1)             # 00000000
    addiu   v0, $zero, 0x00E8          # v0 = 000000E8
    beq     s5, $zero, lbl_80A54638    
    or      s4, a0, $zero              # s4 = 00000000
    lh      t6, 0x0000(s5)             # 00000000
lbl_80A545FC:
    bnel    v0, t6, lbl_80A54630       
    lw      s5, 0x0124(s5)             # 00000124
    lh      t7, 0x001C(s5)             # 0000001C
    bnel    t7, $zero, lbl_80A54630    
    lw      s5, 0x0124(s5)             # 00000124
    lbu     t8, 0x0188(s5)             # 00000188
    lui     $at, 0xC4FA                # $at = C4FA0000
    beq     t8, $zero, lbl_80A54638    
    nop
    mtc1    $at, $f0                   # $f0 = -2000.00
    beq     $zero, $zero, lbl_80A54638 
    nop
    lw      s5, 0x0124(s5)             # 00000124
lbl_80A54630:
    bnel    s5, $zero, lbl_80A545FC    
    lh      t6, 0x0000(s5)             # 00000000
lbl_80A54638:
    jal     func_8007E298              
    swc1    $f0, 0x007C($sp)           
    lui     s7, 0xDE00                 # s7 = DE000000
    lw      s0, 0x02C0(s4)             # 000002C0
    lui     t0, %hi(var_80A55728)      # t0 = 80A50000
    addiu   t0, t0, %lo(var_80A55728)  # t0 = 80A55728
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s4)             # 000002C0
    sw      t0, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      t1, 0x00A4($sp)            
    lui     s8, %hi(var_80A54E64)      # s8 = 80A50000
    addiu   s8, s8, %lo(var_80A54E64)  # s8 = 80A54E64
    lw      s5, 0x1C64(t1)             # 00001C64
    lui     $at, %hi(var_80A562D0)     # $at = 80A50000
    lui     s6, 0xDA38                 # s6 = DA380000
    beql    s5, $zero, lbl_80A548A0    
    lw      t2, 0x00A4($sp)            
    lwc1    $f24, %lo(var_80A562D0)($at) 
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f20                  # $f20 = 32768.00
    mtc1    $zero, $f22                # $f22 = 0.00
    ori     s6, s6, 0x0003             # s6 = DA380003
    lh      t2, 0x0000(s5)             # 00000000
lbl_80A54698:
    addiu   $at, $zero, 0x0106         # $at = 00000106
    lwc1    $f4, 0x007C($sp)           
    bnel    t2, $at, lbl_80A54894      
    lw      s5, 0x0124(s5)             # 00000124
    lwc1    $f6, 0x00EC(s5)            # 000000EC
    lw      t3, 0x008C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A54894               
    lw      s5, 0x0124(s5)             # 00000124
    lwc1    $f14, 0x0028(s5)           # 00000028
    lwc1    $f8, 0x0060(t3)            # 00000060
    lui     s3, %hi(var_80A55808)      # s3 = 80A50000
    or      s2, $zero, $zero           # s2 = 00000000
    c.lt.s  $f14, $f8                  
    addiu   s3, s3, %lo(var_80A55808)  # s3 = 80A55808
    bc1f    lbl_80A546F0               
    nop
    lui     s3, %hi(var_80A557B0)      # s3 = 80A50000
    beq     $zero, $zero, lbl_80A546F0 
    addiu   s3, s3, %lo(var_80A557B0)  # s3 = 80A557B0
lbl_80A546F0:
    lwc1    $f12, 0x0024(s5)           # 00000024
    jal     func_800AA7F4              
    lw      a2, 0x002C(s5)             # 0000002C
    lbu     t4, 0x015A(s5)             # 0000015A
    beql    t4, $zero, lbl_80A54784    
    lw      s1, 0x02C0(s4)             # 000002C0
    lh      t5, 0x00B4(s5)             # 000000B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    div.s   $f18, $f16, $f20           
    mul.s   $f12, $f18, $f24           
    jal     func_800AA9E0              
    nop
    lh      t6, 0x00B8(s5)             # 000000B8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f8, $f6, $f20             
    mul.s   $f12, $f8, $f24            
    jal     func_800AAD4C              
    nop
    lw      t7, 0x008C($sp)            
    lwc1    $f10, 0x0028(s5)           # 00000028
    lui     s2, %hi(var_80A557B0)      # s2 = 80A50000
    lwc1    $f16, 0x0060(t7)           # 00000060
    addiu   s2, s2, %lo(var_80A557B0)  # s2 = 80A557B0
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_80A54780               
    nop
    lui     s2, %hi(var_80A55808)      # s2 = 80A50000
    beq     $zero, $zero, lbl_80A54780 
    addiu   s2, s2, %lo(var_80A55808)  # s2 = 80A55808
lbl_80A54780:
    lw      s1, 0x02C0(s4)             # 000002C0
lbl_80A54784:
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s4)             # 000002C0
    sw      s6, 0x0000(s1)             # 00000000
    lw      t9, 0x00A4($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s4)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    beq     s2, $zero, lbl_80A547D4    
    nop
    lw      s0, 0x02C0(s4)             # 000002C0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s4)             # 000002C0
    sw      s2, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80A547D4:
    addu    t2, s8, s1                 
lbl_80A547D8:
    lbu     t3, 0x0000(t2)             # 00000000
    lbu     t4, 0x015C(s5)             # 0000015C
    lui     s3, %hi(var_80A55860)      # s3 = 80A50000
    and     t5, t3, t4                 
    beql    t5, $zero, lbl_80A5487C    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    jal     func_800AA6EC              
    addiu   s3, s3, %lo(var_80A55860)  # s3 = 80A55860
    sll     t6, s1,  2                 
    subu    t6, t6, s1                 
    lui     t7, %hi(var_80A54EA0)      # t7 = 80A50000
    addiu   t7, t7, %lo(var_80A54EA0)  # t7 = 80A54EA0
    sll     t6, t6,  2                 
    addu    v0, t6, t7                 
    lwc1    $f12, 0x0000(v0)           # 00000000
    lw      a2, 0x0008(v0)             # 00000008
    mov.s   $f14, $f22                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t8, s1,  2                 
    lui     $at, %hi(var_80A54ED0)     # $at = 80A50000
    addu    $at, $at, t8               
    lwc1    $f12, %lo(var_80A54ED0)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02C0(s4)             # 000002C0
    addiu   t9, s2, 0x0008             # t9 = 80A55810
    sw      t9, 0x02C0(s4)             # 000002C0
    sw      s6, 0x0000(s2)             # 80A55808
    lw      t0, 0x00A4($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s2)             # 80A5580C
    lw      s0, 0x02C0(s4)             # 000002C0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s4)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    jal     func_800AA724              
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80A5487C:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0004            
    bnel    $at, $zero, lbl_80A547D8   
    addu    t2, s8, s1                 
    lw      s5, 0x0124(s5)             # 00000124
lbl_80A54894:
    bnel    s5, $zero, lbl_80A54698    
    lh      t2, 0x0000(s5)             # 00000000
    lw      t2, 0x00A4($sp)            
lbl_80A548A0:
    lui     s6, 0xDA38                 # s6 = DA380000
    lui     s8, %hi(var_80A54E64)      # s8 = 80A50000
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   s8, s8, %lo(var_80A54E64)  # s8 = 80A54E64
    ori     s6, s6, 0x0003             # s6 = DA380003
    jal     func_8007E2C0              
    lw      a0, 0x0000(t2)             # 00000000
    lw      t3, 0x00A4($sp)            
    lui     $at, %hi(var_80A562D4)     # $at = 80A50000
    lw      s5, 0x1C64(t3)             # 00001C64
    beql    s5, $zero, lbl_80A54E04    
    lw      $ra, 0x0074($sp)           
    lwc1    $f20, %lo(var_80A562D4)($at) 
    lh      t4, 0x0000(s5)             # 00000000
lbl_80A548D8:
    addiu   $at, $zero, 0x0106         # $at = 00000106
    bne     t4, $at, lbl_80A54DF4      
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f18                  # $f18 = -30.00
    lwc1    $f4, 0x00EC(s5)            # 000000EC
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80A54DF8               
    lw      s5, 0x0124(s5)             # 00000124
    lbu     t5, 0x015E(s5)             # 0000015E
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    beq     t5, $zero, lbl_80A54DF4    
    or      a1, $zero, $zero           # a1 = 00000000
    lw      s1, 0x02D0(s4)             # 000002D0
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t6, s1, 0x0008             # t6 = 0000000A
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000002
    lw      t8, 0x00A4($sp)            
    lbu     a2, 0x015D(s5)             # 0000015D
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lw      a0, 0x0000(t8)             # 00000000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sll     a2, a2,  2                 
    sw      a2, 0x001C($sp)            
    sw      t3, 0x0028($sp)            
    sw      t2, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    jal     func_8007EB84              
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s1)             # 00000006
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t5, 0xE700                 # t5 = E7000000
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x02D0(s4)             # 000002D0
    cfc1    t8, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      t7, 0x0000(a0)             # 00000000
    ctc1    t9, $f31                   
    lwc1    $f6, 0x0164(s5)            # 00000164
    lui     $at, 0x4F00                # $at = 4F000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.w.s $f8, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80A54A10    
    mfc1    t9, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80A54A04    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54A1C 
    or      t9, t9, $at                # t9 = 80000000
lbl_80A54A04:
    beq     $zero, $zero, lbl_80A54A1C 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8                    
lbl_80A54A10:
    nop
    bltz    t9, lbl_80A54A04           
    nop
lbl_80A54A1C:
    ctc1    t8, $f31                   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lwc1    $f10, 0x0168(s5)           # 00000168
    sll     t1, t9, 24                 
    cfc1    t2, $f31                   
    ctc1    t3, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f10                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80A54A98    
    mfc1    t3, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80A54A8C    
    nop
    mfc1    t3, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54AA4 
    or      t3, t3, $at                # t3 = 80000000
lbl_80A54A8C:
    beq     $zero, $zero, lbl_80A54AA4 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f16                   
lbl_80A54A98:
    nop
    bltz    t3, lbl_80A54A8C           
    nop
lbl_80A54AA4:
    ctc1    t2, $f31                   
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lwc1    $f18, 0x016C(s5)           # 0000016C
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    cfc1    t7, $f31                   
    ctc1    t8, $f31                   
    sll     t5, t4, 16                 
    or      t6, t1, t5                 # t6 = E7000000
    cvt.w.s $f4, $f18                  
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     t4, 0xFB00                 # t4 = FB000000
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80A54B30    
    mfc1    t8, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80A54B24    
    nop
    mfc1    t8, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54B3C 
    or      t8, t8, $at                # t8 = 80000000
lbl_80A54B24:
    beq     $zero, $zero, lbl_80A54B3C 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f4                    
lbl_80A54B30:
    nop
    bltz    t8, lbl_80A54B24           
    nop
lbl_80A54B3C:
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    sll     t0, t9,  8                 
    ctc1    t7, $f31                   
    or      t2, t6, t0                 # t2 = E7000000
    sw      t2, 0x0004(a0)             # 00000004
    lw      a1, 0x02D0(s4)             # 000002D0
    cfc1    t1, $f31                   
    ctc1    t5, $f31                   
    addiu   t3, a1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0000(a1)             # 00000000
    lwc1    $f6, 0x0170(s5)            # 00000170
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f8, $f6                   
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_80A54BD0    
    mfc1    t5, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80A54BC4    
    nop
    mfc1    t5, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54BDC 
    or      t5, t5, $at                # t5 = 80000000
lbl_80A54BC4:
    beq     $zero, $zero, lbl_80A54BDC 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f8                    
lbl_80A54BD0:
    nop
    bltz    t5, lbl_80A54BC4           
    nop
lbl_80A54BDC:
    ctc1    t1, $f31                   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lwc1    $f10, 0x0174(s5)           # 00000174
    sll     t8, t5, 24                 
    cfc1    t9, $f31                   
    ctc1    t6, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f10                 
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80A54C58    
    mfc1    t6, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t6, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80A54C4C    
    nop
    mfc1    t6, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54C64 
    or      t6, t6, $at                # t6 = 80000000
lbl_80A54C4C:
    beq     $zero, $zero, lbl_80A54C64 
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16                   
lbl_80A54C58:
    nop
    bltz    t6, lbl_80A54C4C           
    nop
lbl_80A54C64:
    ctc1    t9, $f31                   
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lwc1    $f18, 0x0178(s5)           # 00000178
    andi    t0, t6, 0x00FF             # t0 = 000000FF
    cfc1    t4, $f31                   
    ctc1    t1, $f31                   
    sll     t2, t0, 16                 
    or      t3, t8, t2                 # t3 = FFFFFFFF
    cvt.w.s $f4, $f18                  
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80A54CE8    
    mfc1    t1, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80A54CDC    
    nop
    mfc1    t1, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A54CF4 
    or      t1, t1, $at                # t1 = 80000000
lbl_80A54CDC:
    beq     $zero, $zero, lbl_80A54CF4 
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f4                    
lbl_80A54CE8:
    nop
    bltz    t1, lbl_80A54CDC           
    nop
lbl_80A54CF4:
    andi    t5, t1, 0x00FF             # t5 = 000000FF
    sll     t7, t5,  8                 
    or      t9, t3, t7                 # t9 = FFFFFFFF
    ctc1    t4, $f31                   
    ori     t6, t9, 0x0080             # t6 = FFFFFFFF
    sw      t6, 0x0004(a1)             # 00000004
    lwc1    $f12, 0x0024(s5)           # 00000024
    mov.s   $f14, $f22                 
    jal     func_800AA7F4              
    lw      a2, 0x002C(s5)             # 0000002C
    or      s1, $zero, $zero           # s1 = 00000000
    addu    t0, s8, s1                 
lbl_80A54D24:
    lbu     t8, 0x0000(t0)             # 00000000
    lbu     t2, 0x015B(s5)             # 0000015B
    lui     s3, %hi(var_80A560F8)      # s3 = 80A50000
    and     t4, t8, t2                 
    beql    t4, $zero, lbl_80A54DE0    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    jal     func_800AA6EC              
    addiu   s3, s3, %lo(var_80A560F8)  # s3 = 80A560F8
    sll     t1, s1,  2                 
    subu    t1, t1, s1                 
    lui     t5, %hi(var_80A54EA0)      # t5 = 80A50000
    addiu   t5, t5, %lo(var_80A54EA0)  # t5 = 80A54EA0
    sll     t1, t1,  2                 
    addu    v0, t1, t5                 
    lwc1    $f12, 0x0000(v0)           # 00000000
    lw      a2, 0x0008(v0)             # 00000008
    mov.s   $f14, $f22                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t3, s1,  2                 
    lui     $at, %hi(var_80A54ED0)     # $at = 80A50000
    addu    $at, $at, t3               
    lwc1    $f12, %lo(var_80A54ED0)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f6, 0x0160(s5)            # 00000160
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mul.s   $f14, $f6, $f20            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s4)             # 000002D0
    addiu   t7, s2, 0x0008             # t7 = 80A55810
    sw      t7, 0x02D0(s4)             # 000002D0
    sw      s6, 0x0000(s2)             # 80A55808
    lw      t9, 0x00A4($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s2)             # 80A5580C
    lw      s0, 0x02D0(s4)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    jal     func_800AA724              
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80A54DE0:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0004            
    bnel    $at, $zero, lbl_80A54D24   
    addu    t0, s8, s1                 
lbl_80A54DF4:
    lw      s5, 0x0124(s5)             # 00000124
lbl_80A54DF8:
    bnel    s5, $zero, lbl_80A548D8    
    lh      t4, 0x0000(s5)             # 00000000
    lw      $ra, 0x0074($sp)           
lbl_80A54E04:
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    ldc1    $f24, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    lw      s5, 0x0064($sp)            
    lw      s6, 0x0068($sp)            
    lw      s7, 0x006C($sp)            
    lw      s8, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    nop

.section .data

var_80A54E40: .word 0x01060600, 0x00000030, 0x00E10000, 0x0000017C
.word func_80A53DD0
.word func_80A53E6C
.word func_80A54540
.word func_80A54588
var_80A54E60: .word 0x485003E8
var_80A54E64: .word 0x01020408
var_80A54E68: .word \
0x42F00000, 0x00000000, 0x00000000, 0xC2F00000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x42F00000, 0x00000000, 0x00000000, 0xC2F00000
var_80A54E98: .word 0x3C3C0000
var_80A54E9C: .word 0x32140000
var_80A54EA0: .word \
0x42700000, 0x00000000, 0x00000000, 0xC2700000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x42700000, 0x00000000, 0x00000000, 0xC2700000
var_80A54ED0: .word 0x3FC90FDB, 0xBFC90FDB, 0x00000000, 0x40490FDB
var_80A54EE0: .word \
0x19033187, 0x39C74207, 0x4A495247, 0x5A494A09, \
0x498749C5, 0x5A476247, 0x62076287, 0x734F8393, \
0x6A8B6A09, 0x5A495207, 0x49C54A89, 0x4A895289, \
0x5AC95A89, 0x5A4B5A8B, 0x5A896249, 0x52095207, \
0x19033185, 0x420949C7, 0x52095207, 0x5A075A45, \
0x41C749C5, 0x62075207, 0x62896A49, 0x6B4F7B51, \
0x62C75A49, 0x52095247, 0x4A475249, 0x5A075A89, \
0x52895A89, 0x62876247, 0x62495A4B, 0x52095A07, \
0x214339C7, 0x52095209, 0x524749C7, 0x49C74A07, \
0x41C74985, 0x52095A47, 0x6A096A47, 0x72CD7BD3, \
0x6249628B, 0x62495207, 0x49C55A49, 0x5A495249, \
0x5A096A89, 0x6A4B5A47, 0x5A496207, 0x5A475207, \
0x210741C5, 0x61C96AC7, 0x52094A09, 0x5A0951C7, \
0x398541C5, 0x51C759C9, 0x5A495287, 0x6ACD7B11, \
0x6249528B, 0x62075205, 0x4A0751C7, 0x52494A47, \
0x52095209, 0x62075209, 0x5A0951C7, 0x52054A07, \
0x21434205, 0x620959C7, 0x4A0B2985, 0x52474987, \
0x31C34185, 0x49C749C3, 0x4A074A07, 0x6A4B728F, \
0x52474A47, 0x51C949C9, 0x51C549C7, 0x42094A07, \
0x52474A05, 0x520759C7, 0x52095207, 0x5A0751C7, \
0x21454205, 0x5A4772CD, 0x8C9D4A0B, 0x5A075A09, \
0x41853985, 0x51C35187, 0x41C749C9, 0x524D630F, \
0x5A4951C7, 0x51C75207, 0x49C74A07, 0x49C74A09, \
0x4A075207, 0x62475A89, 0x5A896207, 0x62475209, \
0x10C541C7, 0x62077249, 0x7B0D5A09, 0x624B6207, \
0x41C74145, 0x49C949C7, 0x4A076209, 0x6ACD7351, \
0x62896207, 0x62875A47, 0x5A075209, 0x4A074A09, \
0x4A076249, 0x5A496249, 0x624B6287, 0x5A475A87, \
0x21454207, 0x624B6A47, 0x624962C9, 0x6A896209, \
0x49C949C5, 0x49C55207, 0x52475A89, 0x728B7B93, \
0x6A8D6209, 0x6A896207, 0x5A074A49, 0x4A094A09, \
0x52496289, 0x5A896A49, 0x624962C7, 0x62896AC9, \
0x210539C7, 0x624962CB, 0x62C96A87, 0x62475A8B, \
0x39854985, 0x49C749C5, 0x624562C7, 0x730D8351, \
0x6A8B6289, 0x62896249, 0x624949C7, 0x42055247, \
0x5A876287, 0x6A4B6A49, 0x628B6A87, 0x6A87628B, \
0x21034209, 0x5A076249, 0x62495A49, 0x6A87624B, \
0x49894185, 0x4A0549C7, 0x5A07628B, 0x7B0D8395, \
0x72896A89, 0x6A8B5A49, 0x52095209, 0x49C95249, \
0x62475A49, 0x6247628B, 0x62896A47, 0x6A476249, \
0x210331C9, 0x52076249, 0x5289628B, 0x62495A47, \
0x49874185, 0x418749C7, 0x62876A89, 0x72CD83D1, \
0x728B6249, 0x6A496A49, 0x52494A07, 0x4A075247, \
0x5A895A49, 0x62496AC9, 0x62C76A47, 0x6AC96249, \
0x194541C7, 0x4A075247, 0x520B5AC9, 0x5A4B51C7, \
0x41C54185, 0x498749C5, 0x52476289, 0x6B0D8353, \
0x6A4B6AC9, 0x62495A09, 0x52874A47, 0x3A493A49, \
0x524B5249, 0x6A476AC5, 0x6249728B, 0x62495A87, \
0x190339C7, 0x5A494A49, 0x5287528B, 0x4A4B4A47, \
0x318939C5, 0x4A0559C5, 0x62496287, 0x7B0F83D5, \
0x62CB6289, 0x62876247, 0x524B5209, 0x3A074A47, \
0x4A095249, 0x5A475249, 0x62496A89, 0x620B6247, \
0x110539C7, 0x520752C7, 0x524B5207, 0x52894A4B, \
0x298731C5, 0x42075209, 0x5A896287, 0x73518393, \
0x628B6289, 0x52895AC9, 0x52494A0B, 0x4A074A49, \
0x52494A49, 0x4A476287, 0x62876A89, 0x6A496A47, \
0x19434A07, 0x5A475ACB, 0x52475249, 0x52894A49, \
0x31C531C7, 0x31C549C7, 0x528952C9, 0x634D7353, \
0x52894A89, 0x52895A47, 0x524B5A49, 0x52074A07, \
0x4A094A4B, 0x5207524B, 0x5A496287, 0x6A496A89, \
0x19454A07, 0x62496207, 0x49C93905, 0x62495207, \
0x39C73145, 0x41C94A07, 0x4A875249, 0x5B0D6351, \
0x528B6249, 0x624B6A8B, 0x62C96249, 0x5A495207, \
0x628B5A49, 0x52895249, 0x4A89628B, 0x628762C7, \
0x194549C9, 0x5A4772CB, 0x945D4A0D, 0x62075209, \
0x39874187, 0x3A074A47, 0x52494A49, 0x52CB6B91, \
0x73117BD1, 0x73917B93, 0x7B537B53, 0x730F630F, \
0x7B517B91, 0x6B516B0F, 0x73916B8F, 0x73137351, \
0x21034187, 0x6A496249, 0x7B4D6247, 0x62875207, \
0x41853987, 0x42075207, 0x4A494A47, 0x5A475B0B, \
0x62CB72CF, 0x72CD6B4D, 0x6B0D6ACD, 0x624B5ACB, \
0x62CB62CD, 0x6ACB62CD, 0x62CD4A8B, 0x628B62CF, \
0x20C54207, 0x524B6A89, 0x62496287, 0x5A4749C7, \
0x31853945, 0x41C55185, 0x49C53A45, 0x4A495209, \
0x62475A05, 0x52076207, 0x52055A47, 0x4A0949C5, \
0x52095247, 0x52075249, 0x5A494A87, 0x42473A09, \
0x190539C9, 0x5A095A0B, 0x5A075A07, 0x4A0549C7, \
0x41453985, 0x41C94187, 0x420941C5, 0x4A054A09, \
0x49C55205, 0x4A054A07, 0x5A0749C3, 0x49C55205, \
0x520551C7, 0x59C75207, 0x4A474A07, 0x3A073A07, \
0x190339C5, 0x52455A49, 0x5A075249, 0x52074A07, \
0x41C34985, 0x4A055A47, 0x49C74A09, 0x420951C7, \
0x49C75207, 0x49C551C5, 0x51875207, 0x52455A45, \
0x52075209, 0x59C74A05, 0x498549C5, 0x3A074207, \
0x20C53985, 0x52475209, 0x52055247, 0x62096247, \
0x39874207, 0x4A075245, 0x52474249, 0x42474A09, \
0x4A055207, 0x41C541C5, 0x41C55A45, 0x52075209, \
0x62895A07, 0x52875203, 0x49C539C7, 0x3A053A07, \
0x19033A07, 0x51876209, 0x5A476207, 0x5A875A09, \
0x41874147, 0x49C749C5, 0x49C53A07, 0x49C94205, \
0x498541C5, 0x41474185, 0x41C54A07, 0x4A0551C7, \
0x498549C5, 0x4A074207, 0x39473985, 0x318739C7, \
0x190341C5, 0x5A476205, 0x624962C9, 0x62475A47, \
0x49C74985, 0x41C74985, 0x42054207, 0x41C741C9, \
0x39C74149, 0x41474147, 0x39874987, 0x41874987, \
0x41C749C5, 0x41854987, 0x49893985, 0x29C739C5, \
0x21074185, 0x62456249, 0x624B6A89, 0x62496A89, \
0x52475249, 0x52474A87, 0x4A474A07, 0x524B5247, \
0x4A474A09, 0x4A074987, 0x4A095A09, 0x5A896249, \
0x62076205, 0x6247624B, 0x528951C9, 0x41C54205, \
0x11054207, 0x52496209, 0x52496287, 0x62476A87, \
0x5A895A87, 0x6247520B, 0x4A094AC9, 0x5A895A07, \
0x5A0B5A47, 0x52074A47, 0x5A896289, 0x62876A89, \
0x6A476AC9, 0x62475209, 0x5A474A09, 0x4A094A07, \
0x194341C9, 0x62475A47, 0x49CB3945, 0x5A076287, \
0x6A496289, 0x62895A87, 0x5A895249, 0x520951C9, \
0x310749C7, 0x51C75A49, 0x62476289, 0x620962C7, \
0x62875A47, 0x4A0B2985, 0x4A4B5247, 0x41C54A09, \
0x19454209, 0x5A8972CD, 0x9C5B4A0B, 0x62476AC9, \
0x62875AC9, 0x62095A0B, 0x524B524B, 0x6B0F9419, \
0x418B41C7, 0x4A075A07, 0x62496287, 0x62876AC7, \
0x628972CF, 0x8C5D4A4B, 0x52874A47, 0x424B4A07, \
0x18C54985, 0x5A896287, 0x7B4D6247, 0x6247728B, \
0x62C76289, 0x6A075ACB, 0x4A474A47, 0x5A876AD1, \
0x52455205, 0x52095A07, 0x62876A89, 0x62496247, \
0x6A496249, 0x7B0B5209, 0x52874A49, 0x42495209, \
0x19434207, 0x52876207, 0x52495A49, 0x62095A09, \
0x5A095289, 0x62475207, 0x4A874A89, 0x52495287, \
0x52495205, 0x42075A05, 0x62476247, 0x5A095249, \
0x52496249, 0x62495249, 0x5A874A07, 0x49C74207, \
0x19453945, 0x41C739C7, 0x420741C9, 0x41C74209, \
0x42054187, 0x3A0541C5, 0x3A0931C7, 0x39C541C7, \
0x49C73147, 0x3A0541C5, 0x49C549C7, 0x398941C7, \
0x420749C7, 0x49C739C7, 0x420731C7, 0x320741C7, \
0x08C51903, 0x19431143, 0x21451903, 0x21432105, \
0x19432105, 0x19051905, 0x11031905, 0x21451907, \
0x11072105, 0x19031943, 0x190518C5, 0x214518C5, \
0x21432145, 0x11032103, 0x19051905, 0x19031903, \
0x00000000, 0x00000000
var_80A556E8: .word \
0x003C0000, 0x003C0000, 0x0800FC00, 0xFFFFFFFF, \
0x003C0000, 0xFFC40000, 0x0000FC00, 0xFFFFFFFF, \
0xFFC40000, 0xFFC40000, 0x00000400, 0xFFFFFFFF, \
0xFFC40000, 0x003C0000, 0x08000400, 0xFFFFFFFF
var_80A55728: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD100000
.word var_80A54EE0
.word \
0xF5100000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00054150, 0xF2000000, 0x0007C07C, \
0xFC127E03, 0xFFFFFDF8, 0xE200001C, 0xC8112078, \
0xD9F1FFFF, 0x00000000, 0xD9FFFFFF, 0x00010400, \
0xFA000000, 0xFFFFFFFF, 0xE7000000, 0x00000000, \
0xDF000000, 0x00000000
var_80A557B0: .word 0x01004008
.word var_80A556E8
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A557C8: .word \
0x003CFFC4, 0x003C0000, 0x0800FC00, 0x323232FF, \
0x003CFFC4, 0xFFC40000, 0x0000FC00, 0x323232FF, \
0xFFC4FFC4, 0xFFC40000, 0x00000400, 0x323232FF, \
0xFFC4FFC4, 0x003C0000, 0x08000400, 0x323232FF
var_80A55808: .word 0x01004008
.word var_80A557C8
.word 0x06000402, 0x00000604, 0xDF000000, 0x00000000
var_80A55820: .word \
0xFFC40000, 0x00000000, 0x0800FC00, 0xFFFFFFFF, \
0xFFC4FFC4, 0x00000000, 0x08000400, 0x323232FF, \
0x003CFFC4, 0x00000000, 0x00000400, 0x323232FF, \
0x003C0000, 0x00000000, 0x0000FC00, 0xFFFFFFFF
var_80A55860: .word 0x01004008
.word var_80A55820
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A55878: .word \
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
var_80A56078: .word \
0xFF4C012C, 0x00000000, 0x01000000, 0xFFFFFFFF, \
0xFE980000, 0x00000000, 0x00000800, 0xFFFFFF00, \
0xFF4C0000, 0x00000000, 0x01000800, 0xFFFFFFFF, \
0xFE98012C, 0x00000000, 0x00000000, 0xFFFFFF00, \
0x00B4012C, 0x00000000, 0x03000000, 0xFFFFFFFF, \
0x00B40000, 0x00000000, 0x03000800, 0xFFFFFFFF, \
0x01680000, 0x00000000, 0x04000800, 0xFFFFFF00, \
0x0168012C, 0x00000000, 0x04000000, 0xFFFFFF00
var_80A560F8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A55878
.word \
0xF5900000, 0x0709845F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0009845F, 0xF2000000, 0x0007C0FC, \
0xE8000000, 0x00000000, 0xF5880800, 0x0109B85D, \
0xF2000000, 0x0107C0FC, 0xFC262A60, 0x3510E37F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDE000000, 0x08000000, 0x01008010
.word var_80A56078
.word \
0x06000204, 0x00000602, 0x0608040A, 0x00080004, \
0x060C080A, 0x000C0E08, 0xDF000000, 0x00000000
var_80A561A8: .word 0x00000000, 0x00000000
var_80A561B0: .word 0x00000000, 0x000007C0, 0x00000000, 0x000007C2
var_80A561C0: .word \
0x00000000, 0x00010002, 0x7FFF0000, 0x0000FFC4, \
0x00000000, 0x00020003, 0x7FFF0000, 0x0000FFC4, \
0x00000003, 0x00020004, 0x00000000, 0x8001FFC4, \
0x00000003, 0x00040005, 0x00000000, 0x8001FFC4, \
0x00000005, 0x00040006, 0x80010000, 0x0000FFC4, \
0x00000005, 0x00060007, 0x80010000, 0x0000FFC4, \
0x00000007, 0x00060001, 0x00000000, 0x7FFFFFC4, \
0x00000007, 0x00010000, 0x00000000, 0x7FFFFFC4, \
0x00010000, 0x00030005, 0x00007FFF, 0x00000000, \
0x00010000, 0x00050007, 0x00007FFF, 0x00000000
var_80A56260: .word \
0x003C0000, 0x003C003C, 0xFFC4003C, 0x003CFFC4, \
0xFFC4003C, 0x0000FFC4, 0xFFC4FFC4, 0xFFC4FFC4, \
0x0000FFC4, 0xFFC4FFC4, 0x003CFFC4, 0x0000003C
var_80A56290: .word 0xFFC4FFC4, 0xFFC4003C, 0x0000003C, 0x00080000
.word var_80A56260
.word 0x000A0000
.word var_80A561C0
.word var_80A561B0
.word var_80A561A8
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A562C0: .word 0x45992000
var_80A562C4: .word 0xC43B8000
var_80A562C8: .word 0x3DCCCCCD
var_80A562CC: .word 0xC43B8000
var_80A562D0: .word 0x40490FDB
var_80A562D4: .word 0x3E99999A, 0x00000000, 0x00000000

