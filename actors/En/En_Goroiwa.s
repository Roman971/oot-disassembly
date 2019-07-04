.section .text
func_80A887B0:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lw      v0, 0x015C(a0)             # 0000015C
    lui     $at, %hi(var_80A8A8B4)     # $at = 80A90000
    trunc.w.s $f6, $f4                   
    addiu   v0, v0, 0x0030             # v0 = 00000030
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0000(v0)             # 00000030
    lh      t8, 0x001C(a0)             # 0000001C
    lwc1    $f10, 0x0028(a0)           # 00000028
    sra     t9, t8, 10                 
    andi    t0, t9, 0x0001             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    $at, $at, t1               
    lwc1    $f8, %lo(var_80A8A8B4)($at) 
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    sh      t3, 0x0002(v0)             # 00000032
    lwc1    $f4, 0x002C(a0)            # 0000002C
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    sh      t5, 0x0004(v0)             # 00000034
    jr      $ra                        
    nop


func_80A8881C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0028($sp)            
    jal     func_8004A484              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80A8A894)      # a3 = 80A90000
    addiu   t6, s0, 0x0160             # t6 = 00000160
    lw      a1, 0x0028($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A8A894)  # a3 = 80A8A894
    lw      a0, 0x0034($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80A887B0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x015C(s0)             # 0000015C
    addiu   t7, $zero, 0x003A          # t7 = 0000003A
    sh      t7, 0x0036(t8)             # 00000036
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A88884:
    sw      a1, 0x0004($sp)            
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lbu     t6, 0x01C3(a0)             # 000001C3
    andi    t8, t6, 0xFFFC             # t8 = 00000000
    sb      t8, 0x01C3(a0)             # 000001C3
    or      t9, t8, a1                 # t9 = 00000000
    sb      t9, 0x01C3(a0)             # 000001C3
    jr      $ra                        
    nop


func_80A888A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a1, $zero              # a0 = 00000000
    sw      a1, 0x001C($sp)            
    jal     func_800A5510              
    sw      a2, 0x0018($sp)            
    lui     $at, %hi(var_80A8A920)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8A920)($at) 
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    c.lt.s  $f0, $f4                   
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_80A888F0               
    mtc1    $at, $f6                   # $f6 = 1.00
    beq     $zero, $zero, lbl_80A8891C 
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f6                   # $f6 = 1.00
lbl_80A888F0:
    lwc1    $f8, 0x0000(a1)            # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    div.s   $f2, $f6, $f0              
    mul.s   $f10, $f8, $f2             
    swc1    $f10, 0x0000(a2)           # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f18, $f16, $f2            
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    mul.s   $f6, $f4, $f2              
    swc1    $f6, 0x0008(a2)            # 00000008
lbl_80A8891C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8892C:
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0055         # $at = 00000055
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bnel    t6, $at, lbl_80A8894C      
    sb      $zero, 0x01C2(a0)          # 000001C2
    jr      $ra                        
    sb      t7, 0x01C2(a0)             # 000001C2
lbl_80A88948:
    sb      $zero, 0x01C2(a0)          # 000001C2
lbl_80A8894C:
    jr      $ra                        
    nop


func_80A88954:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0034($sp)            
    lh      t8, 0x001C(a3)             # 0000001C
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1E08(t7)             # 00011E08
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t0, t9,  3                 
    addu    a2, t7, t0                 
    lw      v1, 0x0004(a2)             # 00000004
    lh      t8, 0x01BE(a3)             # 000001BE
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t1, v1,  4                 
    srl     t2, t1, 28                 
    sll     t3, t2,  2                 
    addu    t4, t4, t3                 
    lw      t4, 0x0C38(t4)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, t8,  2                 
    and     t5, v1, $at                
    subu    t9, t9, t8                 
    sll     t9, t9,  1                 
    addu    t6, t4, t5                 
    addu    v0, t6, t9                 
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, v0, $at                
    lh      t7, 0x0000(v0)             # 00000000
    addiu   a0, a3, 0x0024             # a0 = 00000024
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x001C($sp)           
    lh      t0, 0x0002(v0)             # 00000002
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0020($sp)          
    lh      t1, 0x0004(v0)             # 00000004
    sw      a3, 0x0030($sp)            
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_80063F00              
    swc1    $f18, 0x0024($sp)          
    lw      a3, 0x0030($sp)            
    sh      v0, 0x0032(a3)             # 00000032
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A88A2C:
    lh      v1, 0x001C(a0)             # 0000001C
    lh      t1, 0x01BC(a0)             # 000001BC
    lh      t9, 0x01C0(a0)             # 000001C0
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    sra     v0, v1,  8                 
    subu    t0, t1, t9                 
    lw      t6, 0x1E08(t6)             # 00011E08
    andi    v0, v0, 0x0003             # v0 = 00000000
    sll     t0, t0, 16                 
    andi    t7, v1, 0x00FF             # t7 = 00000000
    sll     v0, v0, 16                 
    sll     t8, t7,  3                 
    sra     t0, t0, 16                 
    sra     v0, v0, 16                 
    bgez    t0, lbl_80A88A9C           
    addu    a3, t6, t8                 
    beq     v0, $zero, lbl_80A88A80    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80A88A8C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88A80:
    beq     $zero, $zero, lbl_80A88ADC 
    lh      t0, 0x01BA(a0)             # 000001BA
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88A8C:
    bnel    v0, $at, lbl_80A88AE0      
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    beq     $zero, $zero, lbl_80A88ADC 
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80A88A9C:
    lh      v1, 0x01BA(a0)             # 000001BA
    slt     $at, v1, t0                
    beql    $at, $zero, lbl_80A88AE0   
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    beq     v0, $zero, lbl_80A88ABC    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80A88AC8      
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88ABC:
    beq     $zero, $zero, lbl_80A88ADC 
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88AC8:
    bnel    v0, $at, lbl_80A88AE0      
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   t0, v1, 0xFFFF             # t0 = FFFFFFFF
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
lbl_80A88ADC:
    addiu   t2, $zero, 0x0006          # t2 = 00000006
lbl_80A88AE0:
    multu   t1, t2                     
    lw      v1, 0x0004(a3)             # 00000004
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t3, v1,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t7, t7, t5                 
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    mflo    t8                         
    and     t6, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    multu   t0, t2                     
    addu    a0, t7, t6                 
    addu    a0, a0, $at                
    addu    v0, a0, t8                 
    lh      t3, 0x0000(v0)             # 00000000
    mflo    t9                         
    addu    a1, a0, t9                 
    lh      t4, 0x0000(a1)             # 00000000
    subu    t5, t3, t4                 
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a2)            # 00000000
    lh      t7, 0x0000(v0)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    subu    t8, t7, t6                 
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a2)           # 00000004
    lh      t3, 0x0004(a1)             # 00000004
    lh      t9, 0x0000(v0)             # 00000000
    subu    t4, t9, t3                 
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a2)           # 00000008
    jr      $ra                        
    nop


func_80A88B88:
    lh      v0, 0x001C(a0)             # 0000001C
    lh      v1, 0x01BE(a0)             # 000001BE
    sra     v0, v0,  8                 
    andi    v0, v0, 0x0003             # v0 = 00000000
    sll     v0, v0, 16                 
    bgez    v1, lbl_80A88BE8           
    sra     v0, v0, 16                 
    beq     v0, $zero, lbl_80A88BB4    
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v0, v1, lbl_80A88BD0       
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88BB4:
    lh      a1, 0x01BA(a0)             # 000001BA
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sh      t7, 0x01C0(a0)             # 000001C0
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01BE(a0)             # 000001BE
    jr      $ra                        
    sh      a1, 0x01BC(a0)             # 000001BC
lbl_80A88BD0:
    bne     v0, $at, lbl_80A88C34      
    nop
    sh      $zero, 0x01BC(a0)          # 000001BC
    sh      v1, 0x01BE(a0)             # 000001BE
    jr      $ra                        
    sh      v1, 0x01C0(a0)             # 000001C0
lbl_80A88BE8:
    lh      a1, 0x01BA(a0)             # 000001BA
    slt     $at, a1, v1                
    beq     $at, $zero, lbl_80A88C34   
    nop
    beq     v0, $zero, lbl_80A88C08    
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v0, v1, lbl_80A88C1C       
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A88C08:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      $zero, 0x01BC(a0)          # 000001BC
    sh      v1, 0x01BE(a0)             # 000001BE
    jr      $ra                        
    sh      v1, 0x01C0(a0)             # 000001C0
lbl_80A88C1C:
    bne     v0, $at, lbl_80A88C34      
    addiu   t8, a1, 0xFFFF             # t8 = FFFFFFFF
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      a1, 0x01BC(a0)             # 000001BC
    sh      t8, 0x01BE(a0)             # 000001BE
    sh      t9, 0x01C0(a0)             # 000001C0
lbl_80A88C34:
    jr      $ra                        
    nop


func_80A88C3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x01BE(a0)             # 000001BE
    lh      t6, 0x01C0(a0)             # 000001C0
    sh      v0, 0x01BC(a0)             # 000001BC
    addu    t7, v0, t6                 
    jal     func_80A88B88              
    sh      t7, 0x01BE(a0)             # 000001BE
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A88C6C:
    lh      t6, 0x01C0(a0)             # 000001C0
    lh      v0, 0x01BE(a0)             # 000001BE
    subu    t7, $zero, t6              
    sh      t7, 0x01C0(a0)             # 000001C0
    lh      t8, 0x01C0(a0)             # 000001C0
    sh      v0, 0x01BC(a0)             # 000001BC
    addu    t9, v0, t8                 
    sh      t9, 0x01BE(a0)             # 000001BE
    jr      $ra                        
    nop


func_80A88C94:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t7, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             # 00011E08
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8,  3                 
    addu    t0, t6, t9                 
    lbu     t1, 0x0000(t0)             # 00000000
    sh      $zero, 0x01BC(a0)          # 000001BC
    sh      v0, 0x01BE(a0)             # 000001BE
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01BA(a0)             # 000001BA
    sh      v0, 0x01C0(a0)             # 000001C0
    jr      $ra                        
    nop


func_80A88CD4:
    lh      t7, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             # 00011E08
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8,  3                 
    addu    v0, t6, t9                 
    lw      a3, 0x0004(v0)             # 00000004
    lui     t3, 0x8012                 # t3 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t0, a3,  4                 
    srl     t1, t0, 28                 
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  2                 
    subu    t7, t7, a2                 
    and     t4, a3, $at                
    sll     t7, t7,  1                 
    addu    t5, t3, t4                 
    addu    v1, t5, t7                 
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, v1, $at                
    lh      t8, 0x0000(v1)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a0)            # 00000024
    lh      t6, 0x0002(v1)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a0)           # 00000028
    lh      t9, 0x0004(v1)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a0)           # 0000002C
    jr      $ra                        
    nop


func_80A88D78:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    swc1    $f0, 0x01A0(a0)            # 000001A0
    swc1    $f0, 0x01B0(a0)            # 000001B0
    jr      $ra                        
    nop


func_80A88D94:
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    lh      t7, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8,  3                 
    lh      t8, 0x01BE(a0)             # 000001BE
    lw      t6, 0x1E08(t6)             # 00011E08
    lui     t5, 0x8012                 # t5 = 80120000
    multu   t8, t1                     
    addu    v0, t6, t9                 
    lh      t9, 0x01BC(a0)             # 000001BC
    lw      a2, 0x0004(v0)             # 00000004
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, a2,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    mflo    t6                         
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t7, a2, $at                
    multu   t9, t1                     
    lui     $at, 0x8000                # $at = 80000000
    addu    a3, t5, t7                 
    addu    a3, a3, $at                
    addu    v1, a3, t6                 
    lh      t4, 0x0000(v1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    mflo    t2                         
    addu    t0, a3, t2                 
    lh      t3, 0x0000(t0)             # 00000000
    bne     t3, t4, lbl_80A88E50       
    nop
    lh      t5, 0x0004(t0)             # 00000004
    lh      t7, 0x0004(v1)             # 00000004
    bne     t5, t7, lbl_80A88E50       
    nop
    lh      t8, 0x0002(t0)             # 00000002
    lh      t6, 0x0002(v1)             # 00000002
    slt     $at, t8, t6                
    beq     $at, $zero, lbl_80A88E48   
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A88E48:
    jr      $ra                        
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80A88E50:
    jr      $ra                        
    nop


func_80A88E58:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s3, 0x0058($sp)            
    sw      s2, 0x0054($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s7, 0x0068($sp)            
    sw      s6, 0x0064($sp)            
    sw      s5, 0x0060($sp)            
    sw      s4, 0x005C($sp)            
    sw      s1, 0x0050($sp)            
    sw      s0, 0x004C($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f30                  # $f30 = 20.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f28                  # $f28 = 30.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, 0x423C                # $at = 423C0000
    mtc1    $at, $f24                  # $f24 = 47.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s6, %hi(var_80A8A8C8)      # s6 = 80A90000
    lui     s5, %hi(var_80A8A8BC)      # s5 = 80A90000
    mtc1    $at, $f22                  # $f22 = 0.50
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, s5, %lo(var_80A8A8BC)  # s5 = 80A8A8BC
    addiu   s6, s6, %lo(var_80A8A8C8)  # s6 = 80A8A8C8
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0008          # s7 = 00000008
    addiu   s4, $sp, 0x007C            # s4 = FFFFFFF4
    addiu   s0, s0, 0x4E20             # s0 = 00004E20
lbl_80A88EEC:
    sll     s0, s0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16                 
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    mov.s   $f20, $f0                  
    mul.s   $f4, $f20, $f22            
    lwc1    $f16, 0x0000(s2)           # 00000000
    add.s   $f6, $f4, $f22             
    mul.s   $f8, $f24, $f6             
    nop
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x007C($sp)          
    sub.s   $f4, $f0, $f22             
    lwc1    $f8, 0x0004(s2)            # 00000004
    mul.s   $f6, $f4, $f26             
    add.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0080($sp)          
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    mov.s   $f20, $f0                  
    mul.s   $f16, $f20, $f22           
    lwc1    $f8, 0x0008(s2)            # 00000008
    add.s   $f18, $f16, $f22           
    mul.s   $f4, $f24, $f18            
    nop
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0084($sp)          
    mul.s   $f16, $f0, $f28            
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sw      t1, 0x0014($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a2, s5, $zero              # a2 = 80A8A8BC
    or      a3, s6, $zero              # a3 = 80A8A8C8
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    addiu   t0, t9, 0x0064             # t0 = 00000064
    jal     func_8001C1C4              
    sw      t0, 0x0010($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f30             
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0014($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a2, s5, $zero              # a2 = 80A8A8BC
    or      a3, s6, $zero              # a3 = 80A8A8C8
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    addiu   t6, t5, 0x0050             # t6 = 00000050
    jal     func_8001C1C4              
    sw      t6, 0x0010($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s7, lbl_80A88EEC       
    addiu   s0, s0, 0x4E20             # s0 = 00009C40
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x004C($sp)            
    lw      s1, 0x0050($sp)            
    lw      s2, 0x0054($sp)            
    lw      s3, 0x0058($sp)            
    lw      s4, 0x005C($sp)            
    lw      s5, 0x0060($sp)            
    lw      s6, 0x0064($sp)            
    lw      s7, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80A89048:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s5, 0x0038($sp)            
    sw      s2, 0x002C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s4, 0x0034($sp)            
    sw      s3, 0x0030($sp)            
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    sdc1    $f20, 0x0018($sp)          
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f20                  # $f20 = 55.00
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000B          # s4 = 0000000B
    addiu   s3, $sp, 0x004C            # s3 = FFFFFFF4
    addiu   s0, s0, 0x1746             # s0 = 00001746
lbl_80A89090:
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    sll     a0, s0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0000(s2)            # 00000000
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x004C($sp)           
    lwc1    $f10, 0x0004(s2)           # 00000004
    jal     func_80063684              # coss?
    swc1    $f10, 0x0050($sp)          
    mul.s   $f16, $f0, $f20            
    lwc1    $f18, 0x0008(s2)           # 00000008
    addiu   t6, $zero, 0x015E          # t6 = 0000015E
    sw      t6, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    add.s   $f4, $f16, $f18            
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001CF94              
    swc1    $f4, 0x0054($sp)           
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s4, lbl_80A89090       
    addiu   s0, s0, 0x1746             # s0 = 00002E8C
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    addiu   a3, $zero, 0x02BC          # a3 = 000002BC
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sw      t7, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x0384          # a3 = 00000384
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sw      t8, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x0514          # a3 = 00000514
    lw      $ra, 0x003C($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    lw      s4, 0x0034($sp)            
    lw      s5, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A8917C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lbu     t6, 0x01C2(s0)             # 000001C2
    lui     a1, %hi(var_80A8A8AC)      # a1 = 80A90000
    lui     a2, 0x3E99                 # a2 = 3E990000
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A8A8AC)(a1)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    jal     func_8006385C              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_800211A4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0034($sp)            
    lh      t0, 0x001C(s0)             # 0000001C
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, t8                 
    lw      t9, 0x1E08(t9)             # 00011E08
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sll     t2, t1,  3                 
    addu    v1, t9, t2                 
    lw      v0, 0x0004(v1)             # 00000004
    lh      t0, 0x01BE(s0)             # 000001BE
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, t0,  2                 
    and     t7, v0, $at                
    subu    t1, t1, t0                 
    sll     t1, t1,  1                 
    addu    t8, t6, t7                 
    addu    a3, t8, t1                 
    lui     $at, 0x8000                # $at = 80000000
    addu    a3, a3, $at                
    lh      t9, 0x0000(a3)             # 00000000
    lwc1    $f0, 0x005C(s0)            # 0000005C
    sw      a3, 0x0020($sp)            
    mtc1    t9, $f4                    # $f4 = 0.00
    abs.s   $f0, $f0                   
    addiu   a0, s0, 0x0024             # a0 = 00000024
    cvt.s.w $f4, $f4                   
    mfc1    a2, $f0                    
    mfc1    a1, $f4                    
    jal     func_8006385C              
    nop
    lw      a3, 0x0020($sp)            
    lwc1    $f0, 0x0064(s0)            # 00000064
    andi    v1, v0, 0x0001             # v1 = 00000000
    lh      t2, 0x0004(a3)             # 00000004
    abs.s   $f0, $f0                   
    sw      v1, 0x0028($sp)            
    mtc1    t2, $f6                    # $f6 = 0.00
    mfc1    a2, $f0                    
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    cvt.s.w $f6, $f6                   
    mfc1    a1, $f6                    
    jal     func_8006385C              
    nop
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0060(s0)           # 00000060
    lw      v1, 0x0028($sp)            
    add.s   $f16, $f8, $f10            
    and     v1, v1, v0                 
    or      v0, v1, $zero              # v0 = 00000000
    swc1    $f16, 0x0028(s0)           # 00000028
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A892B0:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x005C($sp)            
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    lw      t6, 0x005C($sp)            
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1E08(t7)             # 00011E08
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t3, t9,  3                 
    addu    t0, t7, t3                 
    lh      t7, 0x01BE(s0)             # 000001BE
    lw      v1, 0x0004(t0)             # 00000004
    lui     t8, 0x8012                 # t8 = 80120000
    multu   t7, t2                     
    sll     t4, v1,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t8, t8, t6                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    a3, t8, t9                 
    mflo    t3                         
    addu    a3, a3, $at                
    addu    v0, a3, t3                 
    lh      t6, 0x0000(v0)             # 00000000
    lh      t4, 0x01BC(s0)             # 000001BC
    lui     a1, %hi(var_80A8A8AC)      # a1 = 80A90000
    mtc1    t6, $f4                    # $f4 = 0.00
    multu   t4, t2                     
    lui     a2, 0x3E99                 # a2 = 3E990000
    cvt.s.w $f6, $f4                   
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    swc1    $f6, 0x002C($sp)           
    lh      t8, 0x0002(v0)             # 00000002
    mflo    t5                         
    addu    t1, a3, t5                 
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0030($sp)          
    lh      t9, 0x0004(v0)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0034($sp)          
    lbu     t7, 0x01C2(s0)             # 000001C2
    sw      t1, 0x0048($sp)            
    sll     t3, t7,  2                 
    addu    a1, a1, t3                 
    jal     func_8006385C              
    lw      a1, %lo(var_80A8A8AC)(a1)  
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0020($sp)            
    jal     func_800A5538              
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFD4
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lw      t1, 0x0048($sp)            
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFD4
    c.lt.s  $f0, $f4                   
    lw      a1, 0x0020($sp)            
    bc1fl   lbl_80A893E0               
    lh      t4, 0x0000(t1)             # 00000000
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFE0
    beq     $zero, $zero, lbl_80A89434 
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lh      t4, 0x0000(t1)             # 00000000
lbl_80A893E0:
    lwc1    $f6, 0x002C($sp)           
    lwc1    $f18, 0x0030($sp)          
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    sub.s   $f16, $f6, $f10            
    lwc1    $f10, 0x0034($sp)          
    swc1    $f16, 0x0038($sp)          
    lh      t5, 0x0002(t1)             # 00000002
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    sub.s   $f6, $f18, $f8             
    swc1    $f6, 0x003C($sp)           
    lh      t6, 0x0004(t1)             # 00000004
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f4, $f16                  
    sub.s   $f18, $f10, $f4            
    swc1    $f18, 0x0040($sp)          
    addiu   a0, s0, 0x005C             # a0 = 0000005C
lbl_80A89434:
    jal     func_80A888A8              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE0
    lwc1    $f2, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f4, 0x0064(s0)            # 00000064
    mul.s   $f6, $f8, $f2              
    swc1    $f6, 0x005C(s0)            # 0000005C
    mul.s   $f10, $f16, $f2            
    lwc1    $f0, 0x005C(s0)            # 0000005C
    mul.s   $f18, $f4, $f2             
    abs.s   $f0, $f0                   
    mfc1    a2, $f0                    
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f18, 0x0064(s0)           # 00000064
    lw      a1, 0x002C($sp)            
    jal     func_8006385C              
    lw      a0, 0x0020($sp)            
    lwc1    $f0, 0x0060(s0)            # 00000060
    andi    v1, v0, 0x0001             # v1 = 00000000
    sw      v1, 0x0044($sp)            
    abs.s   $f0, $f0                   
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mfc1    a2, $f0                    
    jal     func_8006385C              
    lw      a1, 0x0030($sp)            
    lwc1    $f0, 0x0064(s0)            # 00000064
    lw      v1, 0x0044($sp)            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    abs.s   $f0, $f0                   
    and     v1, v1, v0                 
    mfc1    a2, $f0                    
    sw      v1, 0x0044($sp)            
    jal     func_8006385C              
    lw      a1, 0x0034($sp)            
    lw      v1, 0x0044($sp)            
    lw      $ra, 0x001C($sp)           
    and     v1, v1, v0                 
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A894DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x002C($sp)            
    lh      t8, 0x001C(a3)             # 0000001C
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1E08(t7)             # 00011E08
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t1, t9,  3                 
    addu    v1, t7, t1                 
    lw      v0, 0x0004(v1)             # 00000004
    lh      t9, 0x01BE(a3)             # 000001BE
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t2, v0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, t9,  2                 
    and     t6, v0, $at                
    subu    t7, t7, t9                 
    lbu     t1, 0x01C2(a3)             # 000001C2
    sll     t7, t7,  1                 
    addu    t8, t5, t6                 
    addu    t0, t8, t7                 
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t0, $at                
    lui     $at, %hi(var_80A8A8AC)     # $at = 80A90000
    sll     t2, t1,  2                 
    addu    $at, $at, t2               
    lwc1    $f4, %lo(var_80A8A8AC)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     a2, 0x3E38                 # a2 = 3E380000
    ori     a2, a2, 0x51EC             # a2 = 3E3851EC
    mul.s   $f8, $f4, $f6              
    sw      t0, 0x001C($sp)            
    sw      a3, 0x0028($sp)            
    addiu   a0, a3, 0x0060             # a0 = 00000060
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    lw      t0, 0x001C($sp)            
    lw      a3, 0x0028($sp)            
    lh      t3, 0x0000(t0)             # 00000000
    lwc1    $f0, 0x0060(a3)            # 00000060
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mtc1    t3, $f10                   # $f10 = 0.00
    abs.s   $f0, $f0                   
    cvt.s.w $f16, $f10                 
    mfc1    a2, $f0                    
    swc1    $f16, 0x0024(a3)           # 00000024
    lh      t4, 0x0004(t0)             # 00000004
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    swc1    $f4, 0x002C(a3)            # 0000002C
    lh      t5, 0x0002(t0)             # 00000002
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f6, $f6                   
    mfc1    a1, $f6                    
    jal     func_8006385C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A895FC:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s1                 
    lw      t6, 0x1E08(t6)             # 00011E08
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8,  3                 
    addu    v1, t6, t9                 
    lw      v0, 0x0004(v1)             # 00000004
    lh      t7, 0x01BE(s0)             # 000001BE
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t0, v0,  4                 
    srl     t1, t0, 28                 
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, 0x0C38(t3)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, t7,  2                 
    and     t4, v0, $at                
    subu    t8, t8, t7                 
    sll     t8, t8,  1                 
    addu    t5, t3, t4                 
    addu    a3, t5, t8                 
    lui     $at, 0x8000                # $at = 80000000
    addu    a3, a3, $at                
    lh      t6, 0x0002(a3)             # 00000002
    sw      a3, 0x007C($sp)            
    addiu   a0, s0, 0x0060             # a0 = 00000060
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     a1, 0xC160                 # a1 = C1600000
    lui     a2, 0x3F80                 # a2 = 3F800000
    cvt.s.w $f6, $f4                   
    jal     func_8006385C              
    swc1    $f6, 0x0078($sp)           
    lw      a3, 0x007C($sp)            
    lwc1    $f2, 0x0028(s0)            # 00000028
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t9, 0x0000(a3)             # 00000000
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0024(s0)           # 00000024
    lh      t0, 0x0004(a3)             # 00000004
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f2, 0x0074($sp)           
    lwc1    $f0, 0x0060(s0)            # 00000060
    c.lt.s  $f0, $f6                   
    add.s   $f4, $f2, $f0              
    bc1f    lbl_80A89884               
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0078($sp)           
    lwc1    $f10, 0x0028(s0)           # 00000028
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_80A89888               
    lh      t9, 0x01B6(s0)             # 000001B6
    lh      t1, 0x01B6(s0)             # 000001B6
    lui     $at, 0x4416                # $at = 44160000
    bnel    t1, $zero, lbl_80A8983C    
    lh      v0, 0x01B6(s0)             # 000001B6
    lwc1    $f16, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 600.00
    nop
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80A89784               
    lbu     t7, 0x01C3(s0)             # 000001C3
    lh      t2, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t3, t2,  2                 
    addu    t4, s1, t3                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t4)             # 00000790
    sll     a0, v0, 16                 
    sw      v0, 0x006C($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0xC350          # a1 = FFFFC350
    lh      a0, 0x006E($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8007D738              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lbu     t7, 0x01C3(s0)             # 000001C3
lbl_80A89784:
    mtc1    $zero, $f4                 # $f4 = 0.00
    andi    t5, t7, 0x0010             # t5 = 00000000
    bne     t5, $zero, lbl_80A89838    
    swc1    $f4, 0x01B0(s0)            # 000001B0
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    swc1    $f6, 0x005C($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   t8, $sp, 0x005C            # t8 = FFFFFFD4
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f16, $f8, $f10            
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFC8
    swc1    $f16, 0x0060($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      t8, 0x0014($sp)            
    sw      s0, 0x0010($sp)            
    jal     func_8002F520              
    swc1    $f18, 0x0064($sp)          
    lui     $at, 0x426E                # $at = 426E0000
    mtc1    $at, $f6                   # $f6 = 59.50
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    sub.s   $f8, $f4, $f6              
    mov.s   $f12, $f0                  
    lui     $at, 0x4120                # $at = 41200000
    sub.s   $f2, $f0, $f8              
    abs.s   $f0, $f2                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A8983C               
    lh      v0, 0x01B6(s0)             # 000001B6
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f4, $f12, $f18            
    swc1    $f16, 0x0044($sp)          
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFBC
    swc1    $f4, 0x0048($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    jal     func_80A88E58              
    swc1    $f6, 0x004C($sp)           
lbl_80A89838:
    lh      v0, 0x01B6(s0)             # 000001B6
lbl_80A8983C:
    lui     $at, %hi(var_80A8A924)     # $at = 80A90000
    blez    v0, lbl_80A89850           
    addiu   t6, v0, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80A89948 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A89850:
    sh      t6, 0x01B6(s0)             # 000001B6
    lwc1    $f10, %lo(var_80A8A924)($at) 
    lwc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, %hi(var_80A8A928)     # $at = 80A90000
    mul.s   $f16, $f8, $f10            
    swc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f4, 0x0078($sp)           
    lwc1    $f8, %lo(var_80A8A928)($at) 
    sub.s   $f6, $f18, $f4             
    mul.s   $f10, $f6, $f8             
    sub.s   $f16, $f4, $f10            
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80A89884:
    lh      t9, 0x01B6(s0)             # 000001B6
lbl_80A89888:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    bne     t9, $zero, lbl_80A89944    
    addiu   t0, $sp, 0x003C            # t0 = FFFFFFB4
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFB8
    sw      t1, 0x0014($sp)            
    jal     func_80034908              
    sw      t0, 0x0010($sp)            
    beq     v0, $zero, lbl_80A89944    
    lwc1    $f18, 0x003C($sp)          
    lwc1    $f6, 0x0028(s0)            # 00000028
    c.le.s  $f6, $f18                  
    nop
    bc1fl   lbl_80A89948               
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t2, 0x01C3(s0)             # 000001C3
    ori     t3, t2, 0x0010             # t3 = 00000010
    sb      t3, 0x01C3(s0)             # 000001C3
    lwc1    $f4, 0x0074($sp)           
    lwc1    $f8, 0x003C($sp)           
    c.lt.s  $f8, $f4                   
    nop
    bc1fl   lbl_80A89928               
    lui     $at, 0xC100                # $at = C1000000
    lwc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f8, 0x0034($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFA8
    jal     func_80A89048              
    swc1    $f16, 0x0038($sp)          
    lui     $at, %hi(var_80A8A92C)     # $at = 80A90000
    lwc1    $f6, %lo(var_80A8A92C)($at) 
    lwc1    $f18, 0x0060(s0)           # 00000060
    mul.s   $f4, $f18, $f6             
    swc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0xC100                # $at = C1000000
lbl_80A89928:
    mtc1    $at, $f0                   # $f0 = -8.00
    lwc1    $f10, 0x0060(s0)           # 00000060
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80A89948               
    or      v0, $zero, $zero           # v0 = 00000000
    swc1    $f0, 0x0060(s0)            # 00000060
lbl_80A89944:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A89948:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80A8995C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x009C($sp)            
    lbu     v0, 0x01C3(s0)             # 000001C3
    addiu   a0, s0, 0x0024             # a0 = 00000024
    andi    v0, v0, 0x0008             # v0 = 00000000
    beq     v0, $zero, lbl_80A8998C    
    nop
    beq     $zero, $zero, lbl_80A899AC 
    lwc1    $f12, 0x01AC(s0)           # 000001AC
lbl_80A8998C:
    jal     func_800A5560              
    addiu   a1, s0, 0x0100             # a1 = 00000100
    lui     $at, %hi(var_80A8A930)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8A930)($at) 
    lbu     v0, 0x01C3(s0)             # 000001C3
    mul.s   $f12, $f0, $f4             
    andi    v0, v0, 0x0008             # v0 = 00000000
    swc1    $f12, 0x01AC(s0)           # 000001AC
lbl_80A899AC:
    lwc1    $f6, 0x01B0(s0)            # 000001B0
    lui     a0, %hi(var_80A8A8D4)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A8A8D4)  # a0 = 80A8A8D4
    mul.s   $f12, $f12, $f6            
    beq     v0, $zero, lbl_80A899F8    
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x009C($sp)            
    addiu   a2, $sp, 0x0028            # a2 = FFFFFF90
    jal     func_80A88A2C              
    swc1    $f12, 0x008C($sp)          
    lui     a0, %hi(var_80A8A8D4)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A8A8D4)  # a0 = 80A8A8D4
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_800A56B8              
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFE8
    lwc1    $f12, 0x008C($sp)          
    beq     $zero, $zero, lbl_80A89A0C 
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFDC
lbl_80A899F8:
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFE8
    jal     func_800A56B8              
    swc1    $f12, 0x008C($sp)          
    lwc1    $f12, 0x008C($sp)          
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFDC
lbl_80A89A0C:
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFE8
    jal     func_80A888A8              
    swc1    $f12, 0x008C($sp)          
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFDC
    beq     v0, $zero, lbl_80A89A40    
    lwc1    $f12, 0x008C($sp)          
    lw      t7, 0x0000(a0)             # FFFFFFDC
    sw      t7, 0x01A0(s0)             # 000001A0
    lw      t6, 0x0004(a0)             # FFFFFFE0
    sw      t6, 0x01A4(s0)             # 000001A4
    lw      t7, 0x0008(a0)             # FFFFFFE4
    beq     $zero, $zero, lbl_80A89A58 
    sw      t7, 0x01A8(s0)             # 000001A8
lbl_80A89A40:
    lw      t9, 0x01A0(s0)             # 000001A0
    sw      t9, 0x0000(a0)             # FFFFFFDC
    lw      t8, 0x01A4(s0)             # 000001A4
    sw      t8, 0x0004(a0)             # FFFFFFE0
    lw      t9, 0x01A8(s0)             # 000001A8
    sw      t9, 0x0008(a0)             # FFFFFFE4
lbl_80A89A58:
    or      a1, a0, $zero              # a1 = FFFFFFDC
    jal     func_800AC280              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80A8A934)     # $at = 80A90000
    lwc1    $f16, %lo(var_80A8A934)($at) 
    mtc1    t0, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lh      t1, 0x00B4(s0)             # 000000B4
    lui     $at, %hi(var_80A8A938)     # $at = 80A90000
    lwc1    $f6, %lo(var_80A8A938)($at) 
    mtc1    t1, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f4, $f18                  
    mul.s   $f12, $f4, $f6             
    jal     func_800AA9E0              
    nop
    lh      t2, 0x00B8(s0)             # 000000B8
    lui     $at, %hi(var_80A8A93C)     # $at = 80A90000
    lwc1    $f16, %lo(var_80A8A93C)($at) 
    mtc1    t2, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800AAD4C              
    nop
    jal     func_800AA740              
    addiu   a0, $sp, 0x0034            # a0 = FFFFFF9C
    addiu   a0, $sp, 0x0034            # a0 = FFFFFF9C
    addiu   a1, s0, 0x00B4             # a1 = 000000B4
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0098           # $sp = 00000000
    jr      $ra                        
    nop


func_80A89AFC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    sw      a0, 0x0020($sp)            
    sra     v0, v0,  8                 
    andi    v0, v0, 0x0003             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    jal     func_80A88C3C              
    sh      v0, 0x001E($sp)            
    lh      v0, 0x001E($sp)            
    lw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_80A89B48    
    lh      a2, 0x01BC(a0)             # 000001BC
    bne     v0, $at, lbl_80A89B6C      
    nop
    lh      a2, 0x01BC(a0)             # 000001BC
lbl_80A89B48:
    lw      a1, 0x0024($sp)            
    beq     a2, $zero, lbl_80A89B60    
    nop
    lh      t6, 0x01BA(a0)             # 000001BA
    bne     t6, a2, lbl_80A89B6C       
    nop
lbl_80A89B60:
    jal     func_80A88CD4              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
lbl_80A89B6C:
    jal     func_80A88954              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A89B84:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s6, 0x0090($sp)            
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lh      v0, 0x001C(a0)             # 0000001C
    lui     $at, %hi(var_80A8A940)     # $at = 80A90000
    lwc1    $f30, %lo(var_80A8A940)($at) 
    sra     v0, v0, 10                 
    andi    v0, v0, 0x0001             # v0 = 00000000
    lui     $at, %hi(var_80A8A944)     # $at = 80A90000
    sll     v0, v0, 16                 
    lwc1    $f28, %lo(var_80A8A944)($at) 
    sra     v0, v0, 16                 
    lui     $at, 0x4248                # $at = 42480000
    lui     t7, %hi(var_80A8A8E0)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A8A8E0)  # t7 = 80A8A8E0
    sll     t6, v0,  2                 
    lui     s8, 0x0401                 # s8 = 04010000
    mtc1    $at, $f26                  # $f26 = 50.00
    addiu   s8, s8, 0xD7E0             # s8 = 0400D7E0
    addu    s5, t6, t7                 
    or      s3, $zero, $zero           # s3 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s4, a0, 0x0024             # s4 = 00000024
    addiu   s7, $sp, 0x00C4            # s7 = FFFFFFDC
    addiu   s1, $sp, 0x00D0            # s1 = FFFFFFE8
lbl_80A89C24:
    sll     a0, s2, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s2, 16                 
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f24, $f0                  
    mul.s   $f4, $f0, $f30             
    trunc.w.s $f6, $f4                   
    mfc1    s0, $f6                    
    nop
    sll     s0, s0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16                 
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    mov.s   $f20, $f0                  
    mul.s   $f8, $f20, $f26            
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f10, $f8, $f22            
    nop
    mul.s   $f16, $f0, $f10            
    jal     func_800636C4              # sins?
    swc1    $f16, 0x00D0($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0                  
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    sub.s   $f4, $f0, $f18             
    lwc1    $f16, 0x0000(s5)           # 00000000
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f10, $f8, $f20            
    add.s   $f18, $f16, $f10           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00D4($sp)          
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    mov.s   $f20, $f0                  
    mul.s   $f4, $f20, $f26            
    lwc1    $f16, 0x00D0($sp)          
    mul.s   $f6, $f4, $f24             
    nop
    mul.s   $f8, $f0, $f6              
    nop
    mul.s   $f10, $f16, $f28           
    swc1    $f8, 0x00D8($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C4($sp)          
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    lwc1    $f16, 0x00D8($sp)          
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f4, $f0, $f18             
    mtc1    $at, $f6                   # $f6 = 2.00
    or      a0, s1, $zero              # a0 = FFFFFFE8
    mul.s   $f10, $f16, $f28           
    or      a1, s4, $zero              # a1 = 00000024
    or      a2, s1, $zero              # a2 = FFFFFFE8
    add.s   $f8, $f4, $f6              
    swc1    $f10, 0x00CC($sp)          
    jal     func_80063D10              # Vec3f_Add
    swc1    $f8, 0x00C8($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f18                  # $f18 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f0, $f18             
    addiu   t9, $zero, 0xFEAC          # t9 = FFFFFEAC
    addiu   t0, $zero, 0x0021          # t0 = 00000021
    addiu   t1, $zero, 0x001C          # t1 = 0000001C
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0046          # t6 = 00000046
    add.s   $f8, $f4, $f6              
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0038($sp)            
    trunc.w.s $f16, $f8                  
    sw      t7, 0x0034($sp)            
    sw      t6, 0x0030($sp)            
    sw      t5, 0x0028($sp)            
    mfc1    t4, $f16                   
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFE8
    or      a2, s7, $zero              # a2 = FFFFFFDC
    or      a3, s1, $zero              # a3 = FFFFFFE8
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x002C($sp)         
    sw      s8, 0x003C($sp)            
    jal     func_8001D998              
    sw      t4, 0x0024($sp)            
    addiu   s2, s2, 0x4E20             # s2 = 00004E20
    sll     s2, s2, 16                 
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     s3, $at, lbl_80A89C24      
    sra     s2, s2, 16                 
    lwc1    $f10, 0x0000(s4)           # 00000024
    lwc1    $f18, 0x0000(s5)           # 00000000
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    swc1    $f10, 0x00D0($sp)          
    lwc1    $f4, 0x0004(s4)            # 00000028
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    add.s   $f6, $f18, $f4             
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFE8
    lui     a2, 0x42A0                 # a2 = 42A00000
    swc1    $f6, 0x00D4($sp)           
    lwc1    $f8, 0x0008(s4)            # 0000002C
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80026308              
    swc1    $f8, 0x00D8($sp)           
    addiu   t2, $zero, 0x006E          # t2 = 0000006E
    addiu   t3, $zero, 0x00A0          # t3 = 000000A0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFE8
    lui     a2, 0x42B4                 # a2 = 42B40000
    jal     func_80026308              
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    lw      $ra, 0x009C($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_80A89EA0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, %hi(var_80A8A8E8)      # a1 = 80A90000
    addiu   a1, a1, %lo(var_80A8A8E8)  # a1 = 80A8A8E8
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8881C              
    or      a1, s1, $zero              # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     t6, 0x0001                 # t6 = 00010000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    bne     v0, $at, lbl_80A89EFC      
    addu    t6, t6, s1                 
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A89FC0 
    lw      $ra, 0x001C($sp)           
lbl_80A89EFC:
    lw      t6, 0x1E08(t6)             # 00001E08
    sll     t7, v0,  3                 
    addiu   a0, s0, 0x0098             # a0 = 00000098
    addu    t8, t6, t7                 
    lbu     t9, 0x0000(t8)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a2, %hi(var_80A8A8A4)      # a2 = 80A90000
    slti    $at, t9, 0x0002            
    beq     $at, $zero, lbl_80A89F34   
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A89FC0 
    lw      $ra, 0x001C($sp)           
lbl_80A89F34:
    jal     func_80050344              
    addiu   a2, a2, %lo(var_80A8A8A4)  # a2 = FFFFA8A4
    lh      t0, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A8A900)      # a1 = 80A90000
    lui     a2, 0x8002                 # a2 = 80020000
    sra     t1, t0, 10                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    sll     t3, t2,  2                 
    addu    a1, a1, t3                 
    lui     a3, 0x4116                 # a3 = 41160000
    ori     a3, a3, 0x6666             # a3 = 41166666
    lw      a1, %lo(var_80A8A900)(a1)  
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20              
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    sb      t4, 0x00C8(s0)             # 000000C8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8892C              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A88C94              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A88CD4              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80A88D78              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A88954              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A89FFC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A89FC0:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A89FD0:
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


func_80A89FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A8A03C)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8A03C) # t6 = 80A8A03C
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_80A88884              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     $at, 0x3F80                # $at = 3F800000
    lw      a0, 0x0018($sp)            
    mtc1    $at, $f4                   # $f4 = 1.00
    nop
    swc1    $f4, 0x01B0(a0)            # 000001B0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8A03C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lbu     v0, 0x0150(s0)             # 00000150
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A8A158    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    lh      t0, 0x008A(s0)             # 0000008A
    lh      t1, 0x0032(s0)             # 00000032
    lbu     t8, 0x01C3(s0)             # 000001C3
    sb      t7, 0x0150(s0)             # 00000150
    subu    v1, t0, t1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    and     t9, t8, $at                
    slti    $at, v1, 0xC001            
    bne     $at, $zero, lbl_80A8A0E0   
    sb      t9, 0x01C3(s0)             # 000001C3
    slti    $at, v1, 0x4000            
    beql    $at, $zero, lbl_80A8A0E4   
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t4, 0x001C(s0)             # 0000001C
    ori     t3, t9, 0x0004             # t3 = 00000004
    sb      t3, 0x01C3(s0)             # 000001C3
    sra     t5, t4, 10                 
    andi    t6, t5, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_80A8A0CC    
    nop
    lh      t7, 0x0018(s0)             # 00000018
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $at, lbl_80A8A0E4      
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80A8A0CC:
    jal     func_80A88C6C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A88954              
    lw      a1, 0x0034($sp)            
lbl_80A8A0E0:
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80A8A0E4:
    lh      a3, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0014($sp)         
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_80022E7C              
    swc1    $f4, 0x0010($sp)           
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t0, t9, 10                 
    andi    t1, t0, 0x0001             # t1 = 00000000
    sll     t2, t1,  2                 
    lui     t9, %hi(var_80A8A910)      # t9 = 80A90000
    addu    t9, t9, t2                 
    lw      t9, %lo(var_80A8A910)(t9)  
    jalr    $ra, t9                    
    nop
    lw      t3, 0x0034($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t3)             # 00001C44
    lh      t4, 0x0018(s0)             # 00000018
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    andi    t5, t4, 0x0001             # t5 = 00000000
    bnel    t5, $at, lbl_80A8A2A4      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8A2A0 
    sh      t6, 0x01B8(s0)             # 000001B8
lbl_80A8A158:
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_80A8A908)      # t9 = 80A90000
    or      a0, s0, $zero              # a0 = 00000000
    sra     t8, t7, 10                 
    andi    t0, t8, 0x0001             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    t9, t9, t1                 
    lw      t9, %lo(var_80A8A908)(t9)  
    lw      a1, 0x0034($sp)            
    jalr    $ra, t9                    
    nop
    beql    v0, $zero, lbl_80A8A2A4    
    or      a0, s0, $zero              # a0 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v1, v1,  8                 
    andi    v1, v1, 0x0003             # v1 = 00000000
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bnel    v1, $at, lbl_80A8A1DC      
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x01BE(s0)             # 000001BE
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    beq     v0, $zero, lbl_80A8A1CC    
    nop
    lh      t2, 0x01BA(s0)             # 000001BA
    bnel    t2, v0, lbl_80A8A1DC       
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A1CC:
    jal     func_80A89B84              
    sh      v1, 0x0028($sp)            
    lh      v1, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A1DC:
    lw      a1, 0x0034($sp)            
    jal     func_80A89AFC              
    sh      v1, 0x0028($sp)            
    lh      v1, 0x0028($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_80A8A224      
    lh      t4, 0x001C(s0)             # 0000001C
    lh      v0, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_80A8A210    
    nop
    lh      t3, 0x01BA(s0)             # 000001BA
    bnel    t3, v0, lbl_80A8A224       
    lh      t4, 0x001C(s0)             # 0000001C
lbl_80A8A210:
    jal     func_80A8A3D4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8A2A4 
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x001C(s0)             # 0000001C
lbl_80A8A224:
    sra     t5, t4, 10                 
    andi    t6, t5, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_80A8A298    
    nop
    lh      v0, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_80A8A298    
    nop
    lh      t7, 0x01BA(s0)             # 000001BA
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, v0, lbl_80A8A298       
    nop
    jal     func_80A88D94              
    lw      a1, 0x0034($sp)            
    blez    v0, lbl_80A8A270           
    nop
    jal     func_80A8A470              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8A2A4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A270:
    bgez    v0, lbl_80A8A288           
    nop
    jal     func_80A8A580              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8A2A4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A288:
    jal     func_80A89FFC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8A2A4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A298:
    jal     func_80A89FFC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A2A0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A2A4:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20B8          # a1 = 000020B8
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8A2C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A8A334)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8A334) # t6 = 80A8A334
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_80A88884              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     $at, %hi(var_80A8A948)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8A948)($at) 
    lw      a0, 0x0018($sp)            
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f6                   # $f6 = -15.00
    lui     $at, %hi(var_80A8A94C)     # $at = 80A90000
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0070(a0)            # 00000070
    lwc1    $f10, %lo(var_80A8A94C)($at) 
    lwc1    $f8, 0x0068(a0)            # 00000068
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    mul.s   $f16, $f8, $f10            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f18, 0x0060(a0)           # 00000060
    swc1    $f4, 0x01B0(a0)            # 000001B0
    swc1    $f16, 0x0068(a0)           # 00000068
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8A334:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8917C              
    lw      a1, 0x0024($sp)            
    lhu     t6, 0x0088(s0)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80A8A3C4    
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A8A3C4               
    lw      $ra, 0x001C($sp)           
    lbu     t8, 0x01C3(s0)             # 000001C3
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_80A8A3B8    
    nop
    lh      t0, 0x0018(s0)             # 00000018
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t1, t0, 0x0001             # t1 = 00000000
    bne     t1, $at, lbl_80A8A3B8      
    nop
    jal     func_80A88C6C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A88954              
    lw      a1, 0x0024($sp)            
lbl_80A8A3B8:
    jal     func_80A8A3D4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A8A3C4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8A3D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80A8A430)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8A430) # t6 = 80A8A430
    sw      t6, 0x013C(a0)             # 0000013C
    swc1    $f4, 0x0068(a0)            # 00000068
    sw      a0, 0x0018($sp)            
    jal     func_80A88884              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      a0, 0x0018($sp)            
    lui     t0, %hi(var_80A8A918)      # t0 = 80A90000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t7, 0x0018(a0)             # 00000018
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  1                 
    addu    t0, t0, t9                 
    lh      t0, %lo(var_80A8A918)(t0)  
    swc1    $f6, 0x01B0(a0)            # 000001B0
    sh      t0, 0x01B4(a0)             # 000001B4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8A430:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x01B4(a0)             # 000001B4
    blez    v0, lbl_80A8A450           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A8A460 
    sh      t6, 0x01B4(a0)             # 000001B4
lbl_80A8A450:
    lbu     t7, 0x0150(a0)             # 00000150
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    jal     func_80A89FFC              
    sb      t8, 0x0150(a0)             # 00000150
lbl_80A8A460:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8A470:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A8A4C0)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8A4C0) # t6 = 80A8A4C0
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_80A88884              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A8A950)     # $at = 80A90000
    lwc1    $f0, 0x0068(a0)            # 00000068
    swc1    $f4, 0x01B0(a0)            # 000001B0
    lwc1    $f6, %lo(var_80A8A950)($at) 
    abs.s   $f0, $f0                   
    mul.s   $f8, $f0, $f6              
    swc1    $f8, 0x0060(a0)            # 00000060
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8A4C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0150(s0)             # 00000150
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A8A540    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      t7, 0x0150(s0)             # 00000150
    lh      a3, 0x008A(s0)             # 0000008A
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_80022E7C              
    swc1    $f4, 0x0010($sp)           
    lw      t9, 0x002C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t9)             # 00001C44
    lh      t0, 0x0018(s0)             # 00000018
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $at, lbl_80A8A570      
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_80A8A56C 
    sh      t2, 0x01B8(s0)             # 000001B8
lbl_80A8A540:
    jal     func_80A894DC              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A8A56C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A89AFC              
    lw      a1, 0x002C($sp)            
    jal     func_80A89FFC              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80A8A56C:
    lw      $ra, 0x0024($sp)           
lbl_80A8A570:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8A580:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A8A5EC)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8A5EC) # t6 = 80A8A5EC
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_80A88884              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A8A954)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8A954)($at) 
    lwc1    $f0, 0x0068(a0)            # 00000068
    lui     $at, %hi(var_80A8A958)     # $at = 80A90000
    sh      $zero, 0x01B6(a0)          # 000001B6
    swc1    $f4, 0x01B0(a0)            # 000001B0
    lwc1    $f6, %lo(var_80A8A958)($at) 
    abs.s   $f0, $f0                   
    lbu     t7, 0x01C3(a0)             # 000001C3
    mul.s   $f8, $f0, $f6              
    ori     t9, t7, 0x0008             # t9 = 00000008
    andi    t0, t9, 0xFFEF             # t0 = 00000008
    sb      t9, 0x01C3(a0)             # 000001C3
    sb      t0, 0x01C3(a0)             # 000001C3
    swc1    $f8, 0x0060(a0)            # 00000060
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8A5EC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0150(s0)             # 00000150
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A8A66C    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      t7, 0x0150(s0)             # 00000150
    lh      a3, 0x008A(s0)             # 0000008A
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_80022E7C              
    swc1    $f4, 0x0010($sp)           
    lw      t9, 0x002C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t9)             # 00001C44
    lh      t0, 0x0018(s0)             # 00000018
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $at, lbl_80A8A6A4      
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_80A8A6A0 
    sh      t2, 0x01B8(s0)             # 000001B8
lbl_80A8A66C:
    jal     func_80A895FC              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A8A6A0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A89AFC              
    lw      a1, 0x002C($sp)            
    jal     func_80A89FFC              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t3, 0x01C3(s0)             # 000001C3
    mtc1    $zero, $f6                 # $f6 = 0.00
    andi    t4, t3, 0xFFF7             # t4 = 00000000
    sb      t4, 0x01C3(s0)             # 000001C3
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80A8A6A0:
    lw      $ra, 0x0024($sp)           
lbl_80A8A6A4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8A6B4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x1C44(s1)             # 00001C44
    lui     $at, 0x3000                # $at = 30000000
    ori     $at, $at, 0x00C0           # $at = 300000C0
    lw      t6, 0x066C(v0)             # 0000066C
    and     t7, t6, $at                
    bnel    t7, $zero, lbl_80A8A804    
    lw      $ra, 0x0024($sp)           
    lh      v0, 0x01B8(s0)             # 000001B8
    blez    v0, lbl_80A8A6F8           
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01B8(s0)             # 000001B8
lbl_80A8A6F8:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    addiu   a1, s0, 0x0078             # a1 = 00000078
    sra     v0, v0, 10                 
    andi    v0, v0, 0x0001             # v0 = 00000000
    beq     v0, $zero, lbl_80A8A75C    
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A8A770      
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    sw      t0, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A8A774 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A75C:
    addiu   t1, s0, 0x0024             # t1 = 00000024
    sw      t1, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    or      a3, s0, $zero              # a3 = 00000000
    swc1    $f0, 0x0080(s0)            # 00000080
lbl_80A8A770:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8A774:
    jal     func_80A8995C              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A8A804               
    lw      $ra, 0x0024($sp)           
    jal     func_80A887B0              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x01C3(s0)             # 000001C3
    andi    t2, v0, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80A8A7D8    
    andi    t4, v0, 0x0002             # t4 = 00000000
    lh      t3, 0x01B8(s0)             # 000001B8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bgtz    t3, lbl_80A8A7D4           
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0140             # a2 = 00000140
    lbu     v0, 0x01C3(s0)             # 000001C3
lbl_80A8A7D4:
    andi    t4, v0, 0x0002             # t4 = 00000000
lbl_80A8A7D8:
    beql    t4, $zero, lbl_80A8A804    
    lw      $ra, 0x0024($sp)           
    lh      t5, 0x01B8(s0)             # 000001B8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bgtz    t5, lbl_80A8A800           
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0140             # a2 = 00000140
lbl_80A8A800:
    lw      $ra, 0x0024($sp)           
lbl_80A8A804:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A8A814:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x06B0             # a1 = 060006B0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A8A850: .word 0x01300600, 0x00000010, 0x011F0000, 0x000001C4
.word func_80A89EA0
.word func_80A89FD0
.word func_80A8A6B4
.word func_80A8A814
var_80A8A870: .word \
0x00000000, 0x20000000, 0x00040000, 0x00000000, \
0x00000000, 0x01000100, 0x00000000, 0x00000000, \
0x003A0064
var_80A8A894: .word 0x0A110039, 0x20000000, 0x00000001
.word var_80A8A870
var_80A8A8A4: .word 0x0000000C, 0x003CFE00
var_80A8A8AC: .word 0x41200000, 0x41133333
var_80A8A8B4: .word 0x00000000, 0x426E0000
var_80A8A8BC: .word 0x00000000, 0x00000000, 0x00000000
var_80A8A8C8: .word 0x00000000, 0x3E99999A, 0x00000000
var_80A8A8D4: .word 0x00000000, 0x3F800000, 0x00000000
var_80A8A8E0: .word 0x00000000, 0x426E0000
var_80A8A8E8: .word \
0xB86CFCA4, 0xB870C568, 0xC8500064, 0xB0F405DC, \
0xB0F80096, 0x30FC05DC
var_80A8A900: .word 0x00000000, 0x4414C000
var_80A8A908: .word func_80A892B0
.word func_80A8917C
var_80A8A910: .word func_80A8A3D4
.word func_80A8A2C0
var_80A8A918: .word 0x00140006, 0x00000000

.section .rodata

var_80A8A920: .word 0x3A83126F
var_80A8A924: .word 0xBE99999A
var_80A8A928: .word 0x3E99999A
var_80A8A92C: .word 0x3E4CCCCD
var_80A8A930: .word 0x3C89AE41
var_80A8A934: .word 0x38C90FDB
var_80A8A938: .word 0x38C90FDB
var_80A8A93C: .word 0x38C90FDB
var_80A8A940: .word 0x477FFF00
var_80A8A944: .word 0x3E4CCCCD
var_80A8A948: .word 0xBF5C28F6
var_80A8A94C: .word 0x3E19999A
var_80A8A950: .word 0x3DCCCCCD
var_80A8A954: .word 0x3E99999A
var_80A8A958: .word 0xBE99999A, 0x00000000

