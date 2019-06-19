.section .text
func_80A34510:
    mtc1    a3, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a2)            # 00000000
    lw      t8, 0x001C(a1)             # 0000001C
    sll     v0, a0,  6                 
    trunc.w.s $f6, $f4                   
    addu    t9, t8, v0                 
    lui     $at, %hi(var_80A453E0)     # $at = 80A40000
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0004(a2)            # 00000004
    lw      t2, 0x001C(a1)             # 0000001C
    trunc.w.s $f10, $f8                  
    addu    t3, t2, v0                 
    mfc1    t1, $f10                   
    nop
    sh      t1, 0x0032(t3)             # 00000032
    lwc1    $f16, 0x0008(a2)           # 00000008
    lw      t6, 0x001C(a1)             # 0000001C
    trunc.w.s $f18, $f16                 
    addu    t8, t6, v0                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x0034(t8)             # 00000034
    lw      t7, 0x001C(a1)             # 0000001C
    lwc1    $f18, %lo(var_80A453E0)($at) 
    addu    v1, t7, v0                 
    lh      t9, 0x002E(v1)             # 0000002E
    lwc1    $f4, 0x0038(v1)            # 00000038
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f4, $f8             
    nop
    mul.s   $f16, $f10, $f12           
    nop
    mul.s   $f6, $f16, $f18            
    trunc.w.s $f4, $f6                   
    mfc1    t2, $f4                    
    nop
    sh      t2, 0x0036(v1)             # 00000036
    jr      $ra                        
    nop


func_80A345C0:
    lui     $at, %hi(var_80A49D58)     # $at = 80A50000
    sw      a0, %lo(var_80A49D58)($at) 
    lui     $at, %hi(var_80A49D5C)     # $at = 80A50000
    sw      a1, %lo(var_80A49D5C)($at) 
    lui     $at, %hi(var_80A49D60)     # $at = 80A50000
    sw      a2, %lo(var_80A49D60)($at) 
    jr      $ra                        
    nop


func_80A345E0:
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_80A49D58)      # v0 = 80A50000
    lui     v1, %hi(var_80A49D5C)      # v1 = 80A50000
    lui     a0, %hi(var_80A49D60)      # a0 = 80A50000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, a0, %lo(var_80A49D60)  # a0 = 80A49D60
    addiu   v1, v1, %lo(var_80A49D5C)  # v1 = 80A49D5C
    addiu   v0, v0, %lo(var_80A49D58)  # v0 = 80A49D58
    lw      t6, 0x0000(v0)             # 80A49D58
    addiu   $at, $zero, 0x763D         # $at = 0000763D
    lw      t9, 0x0000(v1)             # 80A49D5C
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    subu    t7, t7, t6                 
    div     $zero, t7, $at             
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    subu    t0, t0, t9                 
    mfhi    t5                         
    sll     t0, t0,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addiu   $at, $zero, 0x7663         # $at = 00007663
    div     $zero, t0, $at             
    lw      t2, 0x0000(a0)             # 80A49D60
    mfhi    t6                         
    addiu   $at, $zero, 0x7673         # $at = 00007673
    sll     t3, t2,  2                 
    addu    t3, t3, t2                 
    sll     t3, t3,  2                 
    addu    t3, t3, t2                 
    sll     t3, t3,  2                 
    addu    t3, t3, t2                 
    sll     t3, t3,  1                 
    div     $zero, t3, $at             
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mfhi    t7                         
    cvt.s.w $f6, $f4                   
    sw      t5, 0x0000(v0)             # 80A49D58
    sw      t6, 0x0000(v1)             # 80A49D5C
    sw      t7, 0x0000(a0)             # 80A49D60
    lui     $at, %hi(var_80A453E4)     # $at = 80A40000
    cvt.s.w $f18, $f16                 
    lwc1    $f8, %lo(var_80A453E4)($at) 
    lui     $at, %hi(var_80A453E8)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A453E8)($at) 
    mtc1    t7, $f16                   # $f16 = 0.00
    div.s   $f10, $f6, $f8             
    lui     $at, %hi(var_80A453EC)     # $at = 80A40000
    div.s   $f6, $f18, $f4             
    lwc1    $f4, %lo(var_80A453EC)($at) 
    cvt.s.w $f18, $f16                 
    add.s   $f8, $f10, $f6             
    div.s   $f10, $f18, $f4            
    add.s   $f2, $f8, $f10             
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_80A34700               
    abs.s   $f0, $f2                   
    sub.s   $f2, $f2, $f0              
lbl_80A346EC:
    c.le.s  $f0, $f2                   
    nop
    bc1tl   lbl_80A346EC               
    sub.s   $f2, $f2, $f0              
    abs.s   $f0, $f2                   
lbl_80A34700:
    jr      $ra                        
    nop


func_80A34708:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    sll     a3, a3, 16                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sra     a2, a2, 16                 
    sra     a3, a3, 16                 
    lh      v1, 0x0000(a0)             # 00000000
    subu    v0, a1, v1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    div     $zero, v0, a2              
    bne     a2, $zero, lbl_80A3474C    
    nop
    break   # 0x01C00
lbl_80A3474C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80A34764      
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_80A34764      
    nop
    break   # 0x01800
lbl_80A34764:
    mflo    t1                         
    sll     t6, t1, 16                 
    sra     t7, t6, 16                 
    sll     t0, t1, 16                 
    slt     $at, a3, t7                
    beq     $at, $zero, lbl_80A34788   
    sra     t0, t0, 16                 
    sll     t0, a3, 16                 
    sra     t0, t0, 16                 
lbl_80A34788:
    subu    v0, $zero, a3              
    slt     $at, t0, v0                
    beql    $at, $zero, lbl_80A347A4   
    addu    t8, v1, t0                 
    sll     t0, v0, 16                 
    sra     t0, t0, 16                 
    addu    t8, v1, t0                 
lbl_80A347A4:
    sh      t8, 0x0000(a0)             # 00000000
    or      v0, t0, $zero              # v0 = 00000000
    jr      $ra                        
    nop


func_80A347B4:
    mtc1    a3, $f12                   # $f12 = 0.00
    lui     $at, 0x43FA                # $at = 43FA0000
    beq     a0, $zero, lbl_80A347F8    
    lh      v1, 0x001A($sp)            
    lwc1    $f0, 0x0008(a0)            # 00000008
    mtc1    $at, $f4                   # $f4 = 500.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1t    lbl_80A34904               
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1t    lbl_80A34904               
    nop
lbl_80A347F8:
    blez    v1, lbl_80A34904           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A34800:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80A348F8    
    sra     v0, v0, 16                 
    lui     $at, %hi(var_80A453F0)     # $at = 80A40000
    lwc1    $f0, %lo(var_80A453F0)($at) 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0024(a1)             # 00000024
    lw      t9, 0x0000(a2)             # 00000000
    lui     v0, %hi(var_80A44C7C)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A44C7C)  # v0 = 80A44C7C
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(a2)             # 00000004
    mul.s   $f8, $f12, $f0             
    lui     $at, 0x4396                # $at = 43960000
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(a2)             # 00000008
    mtc1    $at, $f18                  # $f18 = 300.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t9, 0x0008(a1)             # 00000008
    lw      t1, 0x0000(v0)             # 80A44C7C
    c.lt.s  $f18, $f12                 
    lui     $at, %hi(var_80A453F8)     # $at = 80A40000
    sw      t1, 0x000C(a1)             # 0000000C
    lw      t0, 0x0004(v0)             # 80A44C80
    sw      t0, 0x0010(a1)             # 00000010
    lw      t1, 0x0008(v0)             # 80A44C84
    sw      t1, 0x0014(a1)             # 00000014
    lw      t3, 0x0000(v0)             # 80A44C7C
    sw      t3, 0x0018(a1)             # 00000018
    lw      t2, 0x0004(v0)             # 80A44C80
    sw      t2, 0x001C(a1)             # 0000001C
    lw      t3, 0x0008(v0)             # 80A44C84
    swc1    $f8, 0x0030(a1)            # 00000030
    sw      t3, 0x0020(a1)             # 00000020
    lwc1    $f10, 0x0010($sp)          
    mul.s   $f16, $f10, $f0            
    bc1f    lbl_80A348D0               
    swc1    $f16, 0x0034(a1)           # 00000034
    sh      $zero, 0x002A(a1)          # 0000002A
    lh      t4, 0x0016($sp)            
    lwc1    $f4, 0x0034(a1)            # 00000034
    lwc1    $f6, 0x0030(a1)            # 00000030
    sh      $zero, 0x002C(a1)          # 0000002C
    lui     $at, %hi(var_80A453F4)     # $at = 80A40000
    sub.s   $f8, $f4, $f6              
    sh      t4, 0x002E(a1)             # 0000002E
    lwc1    $f10, %lo(var_80A453F4)($at) 
    mul.s   $f16, $f8, $f10            
    jr      $ra                        
    swc1    $f16, 0x0038(a1)           # 00000038
lbl_80A348D0:
    lh      t5, 0x0016($sp)            
    lwc1    $f18, 0x0034(a1)           # 00000034
    lwc1    $f4, 0x0030(a1)            # 00000030
    sh      t6, 0x002C(a1)             # 0000002C
    sh      t5, 0x002A(a1)             # 0000002A
    sub.s   $f6, $f18, $f4             
    lwc1    $f8, %lo(var_80A453F8)($at) 
    mul.s   $f10, $f6, $f8             
    jr      $ra                        
    swc1    $f10, 0x0038(a1)           # 00000038
lbl_80A348F8:
    slt     $at, v0, v1                
    bne     $at, $zero, lbl_80A34800   
    addiu   a1, a1, 0x0040             # a1 = 00000040
lbl_80A34904:
    jr      $ra                        
    nop


func_80A3490C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFF0
    lui     t6, %hi(var_80A44C94)      # t6 = 80A40000
    addiu   t6, t6, %lo(var_80A44C94)  # t6 = 80A44C94
    lw      t8, 0x0000(t6)             # 80A44C94
    lui     $at, 0x43FA                # $at = 43FA0000
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t8, 0x0000(t0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80A44C98
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sw      t7, 0x0004(t0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80A44C9C
    beq     a0, $zero, lbl_80A34984    
    sw      t8, 0x0008(t0)             # FFFFFFF8
    lwc1    $f0, 0x0008(a0)            # 00000008
    mtc1    $at, $f4                   # $f4 = 500.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1tl   lbl_80A34A48               
    lw      $ra, 0x0014($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1t    lbl_80A34A44               
lbl_80A34984:
    addiu   a0, $zero, 0x0005          # a0 = 00000005
lbl_80A34988:
    lbu     v0, 0x0024(a1)             # 00000024
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    beq     v0, $zero, lbl_80A349B0    
    sra     v1, v1, 16                 
    beq     a0, v0, lbl_80A349B0       
    slti    $at, v1, 0x0064            
    beql    a2, v0, lbl_80A349B4       
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    bne     a3, v0, lbl_80A34A3C       
lbl_80A349B0:
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_80A349B4:
    sb      t9, 0x0024(a1)             # 00000024
    lw      t1, 0x0038($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0000(a1)             # 00000000
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0008(a1)             # 00000008
    lw      t4, 0x003C($sp)            
    lw      t6, 0x0000(t4)             # 00000000
    sw      t6, 0x000C(a1)             # 0000000C
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0010(a1)             # 00000010
    lw      t6, 0x0008(t4)             # 00000008
    sw      t6, 0x0014(a1)             # 00000014
    lw      t8, 0x0000(t0)             # FFFFFFF0
    sw      t8, 0x0018(a1)             # 00000018
    lw      t7, 0x0004(t0)             # FFFFFFF4
    sw      t7, 0x001C(a1)             # 0000001C
    lw      t8, 0x0008(t0)             # FFFFFFF8
    sw      t8, 0x0020(a1)             # 00000020
    jal     func_80026D64              
    sw      a1, 0x0034($sp)            
    trunc.w.s $f8, $f0                   
    lw      a1, 0x0034($sp)            
    mfc1    t3, $f8                    
    nop
    addiu   t4, t3, 0x0064             # t4 = 00000064
    sh      t4, 0x002A(a1)             # 0000002A
    lwc1    $f10, 0x0040($sp)          
    beq     $zero, $zero, lbl_80A34A44 
    swc1    $f10, 0x0030(a1)           # 00000030
lbl_80A34A3C:
    bne     $at, $zero, lbl_80A34988   
    addiu   a1, a1, 0x0040             # a1 = 00000040
lbl_80A34A44:
    lw      $ra, 0x0014($sp)           
lbl_80A34A48:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A34A54:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)           
    addiu   v1, $sp, 0x0020            # v1 = FFFFFFF0
    lui     t6, %hi(var_80A44CA0)      # t6 = 80A40000
    addiu   t6, t6, %lo(var_80A44CA0)  # t6 = 80A44CA0
    lw      t8, 0x0000(t6)             # 80A44CA0
    lui     $at, 0x43FA                # $at = 43FA0000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80A44CA4
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80A44CA8
    beq     a0, $zero, lbl_80A34AC8    
    sw      t8, 0x0008(v1)             # FFFFFFF8
    lwc1    $f0, 0x0008(a0)            # 00000008
    mtc1    $at, $f4                   # $f4 = 500.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1tl   lbl_80A34B80               
    lw      $ra, 0x0014($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1tl   lbl_80A34B80               
    lw      $ra, 0x0014($sp)           
lbl_80A34AC8:
    lbu     t9, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t9, $zero, lbl_80A34B70    
    sra     v0, v0, 16                 
    sb      t0, 0x0024(a1)             # 00000024
    lw      t2, 0x0000(a2)             # 00000000
    lui     t3, %hi(var_80A44C7C)      # t3 = 80A40000
    addiu   t3, t3, %lo(var_80A44C7C)  # t3 = 80A44C7C
    sw      t2, 0x0000(a1)             # 00000000
    lw      t1, 0x0004(a2)             # 00000004
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lui     $at, 0x42C8                # $at = 42C80000
    sw      t1, 0x0004(a1)             # 00000004
    lw      t2, 0x0008(a2)             # 00000008
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t2, 0x0008(a1)             # 00000008
    lw      t5, 0x0000(t3)             # 80A44C7C
    sw      t5, 0x000C(a1)             # 0000000C
    lw      t4, 0x0004(t3)             # 80A44C80
    sw      t4, 0x0010(a1)             # 00000010
    lw      t5, 0x0008(t3)             # 80A44C84
    sw      t5, 0x0014(a1)             # 00000014
    lw      t7, 0x0000(v1)             # FFFFFFF0
    sw      t7, 0x0018(a1)             # 00000018
    lw      t6, 0x0004(v1)             # FFFFFFF4
    sw      t6, 0x001C(a1)             # 0000001C
    lw      t7, 0x0008(v1)             # FFFFFFF8
    sh      t8, 0x002A(a1)             # 0000002A
    sw      t7, 0x0020(a1)             # 00000020
    swc1    $f14, 0x003C($sp)          
    jal     func_80026D64              
    sw      a1, 0x0034($sp)            
    trunc.w.s $f8, $f0                   
    lwc1    $f14, 0x003C($sp)          
    lw      a1, 0x0034($sp)            
    add.s   $f10, $f14, $f14           
    mfc1    t2, $f8                    
    swc1    $f14, 0x0030(a1)           # 00000030
    swc1    $f10, 0x0034(a1)           # 00000034
    beq     $zero, $zero, lbl_80A34B7C 
    sb      t2, 0x0025(a1)             # 00000025
lbl_80A34B70:
    slti    $at, v0, 0x005A            
    bne     $at, $zero, lbl_80A34AC8   
    addiu   a1, a1, 0x0040             # a1 = 00000040
lbl_80A34B7C:
    lw      $ra, 0x0014($sp)           
lbl_80A34B80:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A34B8C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a3, 0x003C($sp)            
    addiu   v1, $sp, 0x0020            # v1 = FFFFFFF0
    lui     t6, %hi(var_80A44CAC)      # t6 = 80A40000
    addiu   t6, t6, %lo(var_80A44CAC)  # t6 = 80A44CAC
    lw      t8, 0x0000(t6)             # 80A44CAC
    lui     $at, 0x43FA                # $at = 43FA0000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80A44CB0
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80A44CB4
    beq     a0, $zero, lbl_80A34C00    
    sw      t8, 0x0008(v1)             # FFFFFFF8
    lwc1    $f0, 0x0008(a0)            # 00000008
    mtc1    $at, $f4                   # $f4 = 500.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1tl   lbl_80A34CB0               
    lw      $ra, 0x0014($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1tl   lbl_80A34CB0               
    lw      $ra, 0x0014($sp)           
lbl_80A34C00:
    lbu     t9, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t9, $zero, lbl_80A34CA0    
    sra     v0, v0, 16                 
    sb      t0, 0x0024(a1)             # 00000024
    lw      t2, 0x0000(a2)             # 00000000
    lui     t5, %hi(var_80A44C7C)      # t5 = 80A40000
    addiu   t5, t5, %lo(var_80A44C7C)  # t5 = 80A44C7C
    sw      t2, 0x0000(a1)             # 00000000
    lw      t1, 0x0004(a2)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t1, 0x0004(a1)             # 00000004
    lw      t2, 0x0008(a2)             # 00000008
    sw      t2, 0x0008(a1)             # 00000008
    lw      t4, 0x0000(v1)             # FFFFFFF0
    sw      t4, 0x000C(a1)             # 0000000C
    lw      t3, 0x0004(v1)             # FFFFFFF4
    sw      t3, 0x0010(a1)             # 00000010
    lw      t4, 0x0008(v1)             # FFFFFFF8
    sw      t4, 0x0014(a1)             # 00000014
    lw      t7, 0x0000(t5)             # 80A44C7C
    sw      t7, 0x0018(a1)             # 00000018
    lw      t6, 0x0004(t5)             # 80A44C80
    sw      t6, 0x001C(a1)             # 0000001C
    lw      t7, 0x0008(t5)             # 80A44C84
    sw      t7, 0x0020(a1)             # 00000020
    jal     func_80026D64              
    sw      a1, 0x0034($sp)            
    trunc.w.s $f8, $f0                   
    lw      a1, 0x0034($sp)            
    mfc1    t1, $f8                    
    nop
    sb      t1, 0x0025(a1)             # 00000025
    lwc1    $f10, 0x003C($sp)          
    swc1    $f10, 0x0030(a1)           # 00000030
    lbu     t2, 0x0043($sp)            
    beq     $zero, $zero, lbl_80A34CAC 
    sh      t2, 0x002C(a1)             # 0000002C
lbl_80A34CA0:
    slti    $at, v0, 0x005A            
    bne     $at, $zero, lbl_80A34C00   
    addiu   a1, a1, 0x0040             # a1 = 00000040
lbl_80A34CAC:
    lw      $ra, 0x0014($sp)           
lbl_80A34CB0:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A34CBC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    swc1    $f0, 0x0018($sp)           
    swc1    $f0, 0x001C($sp)           
    addiu   a3, a3, 0x0780             # a3 = 00000780
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    swc1    $f4, 0x0020($sp)           
lbl_80A34CEC:
    lbu     t6, 0x0024(a3)             # 000007A4
    addiu   v0, v0, 0x0001             # v0 = 0000001F
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80A34D98    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sb      t7, 0x0024(a3)             # 000007A4
    lw      t8, 0x002C($sp)            
    lui     t1, %hi(var_80A44C7C)      # t1 = 80A40000
    addiu   t1, t1, %lo(var_80A44C7C)  # t1 = 80A44C7C
    lw      t0, 0x0000(t8)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t0, 0x0000(a3)             # 00000780
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0004(a3)             # 00000784
    lw      t0, 0x0008(t8)             # 00000008
    sw      t0, 0x0008(a3)             # 00000788
    lw      t3, 0x0000(t1)             # 80A44C7C
    sw      t3, 0x0018(a3)             # 00000798
    lw      t2, 0x0004(t1)             # 80A44C80
    sw      t2, 0x001C(a3)             # 0000079C
    lw      t3, 0x0008(t1)             # 80A44C84
    sw      t3, 0x0020(a3)             # 000007A0
    lwc1    $f6, 0x0000(a2)            # 00000000
    swc1    $f6, 0x0034(a3)            # 000007B4
    lwc1    $f8, 0x0004(a2)            # 00000004
    swc1    $f8, 0x0038(a3)            # 000007B8
    lwc1    $f10, 0x0008(a2)           # 00000008
    swc1    $f10, 0x003C(a3)           # 000007BC
    lwc1    $f12, 0x0004(a2)           # 00000004
    sw      a3, 0x0028($sp)            
    jal     func_800AAB94              
    sw      a2, 0x0030($sp)            
    lw      a2, 0x0030($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    lwc1    $f12, 0x0000(a2)           # 00000000
    lw      a3, 0x0028($sp)            
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    jal     func_800AB958              
    addiu   a1, a3, 0x000C             # a1 = 0000000C
    beq     $zero, $zero, lbl_80A34DA8 
    lw      $ra, 0x0014($sp)           
lbl_80A34D98:
    slti    $at, v0, 0x0082            
    bne     $at, $zero, lbl_80A34CEC   
    addiu   a3, a3, 0x0040             # a3 = 00000040
    lw      $ra, 0x0014($sp)           
lbl_80A34DA8:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A34DB4:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s7, 0x0064($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0090($sp)            
    sw      a1, 0x0094($sp)            
    lui     s0, %hi(var_80A49D68)      # s0 = 80A50000
    addiu   s0, s0, %lo(var_80A49D68)  # s0 = 80A49D68
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x71AC          # a1 = 000071AC
    jal     func_80A345C0              
    addiu   a2, $zero, 0x263A          # a2 = 0000263A
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f30                  # $f30 = 100.00
    lui     $at, %hi(var_80A453FC)     # $at = 80A40000
    lwc1    $f28, %lo(var_80A453FC)($at) 
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f26                  # $f26 = 1200.00
    lui     $at, %hi(var_80A45400)     # $at = 80A40000
    lwc1    $f24, %lo(var_80A45400)($at) 
    lui     $at, %hi(var_80A45404)     # $at = 80A40000
    lui     s7, %hi(var_80A44CB8)      # s7 = 80A40000
    lui     s5, %hi(var_80A47EE0)      # s5 = 80A40000
    lui     s3, %hi(var_80A47EE5)      # s3 = 80A40000
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   s3, s3, %lo(var_80A47EE5)  # s3 = 80A47EE5
    addiu   s5, s5, %lo(var_80A47EE0)  # s5 = 80A47EE0
    addiu   s7, s7, %lo(var_80A44CB8)  # s7 = 80A44CB8
    lwc1    $f20, %lo(var_80A45404)($at) 
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s6, $zero, 0x0023          # s6 = 00000023
    addiu   s4, $sp, 0x0080            # s4 = FFFFFFF0
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80A34E70:
    sll     t6, s1,  3                 
    addu    v0, s7, t6                 
    lbu     v1, 0x0000(v0)             # 00000000
    beql    s6, v1, lbl_80A35084       
    lw      $ra, 0x006C($sp)           
    sb      v1, 0x0030(s0)             # 80A49D98
    lh      t7, 0x0002(v0)             # 00000002
    mov.s   $f12, $f30                 
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(s0)            # 80A49D68
    lh      t8, 0x0004(v0)             # 00000004
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(s0)           # 80A49D6C
    lh      t9, 0x0006(v0)             # 00000006
    swc1    $f22, 0x000C(s0)           # 80A49D74
    swc1    $f22, 0x0014(s0)           # 80A49D7C
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_80026D64              
    swc1    $f18, 0x0008(s0)           # 80A49D70
    trunc.w.s $f4, $f0                   
    lbu     v0, 0x0030(s0)             # 80A49D98
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    mfc1    t1, $f4                    
    swc1    $f6, 0x0038(s0)            # 80A49DA0
    bne     s2, v0, lbl_80A34F44       
    sh      t1, 0x0032(s0)             # 80A49D9A
    jal     func_80A345E0              
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f16                  # $f16 = 0.75
    mul.s   $f10, $f0, $f8             
    mov.s   $f12, $f20                 
    add.s   $f18, $f10, $f16           
    jal     func_80026D64              
    swc1    $f18, 0x0024(s0)           # 80A49D8C
    swc1    $f0, 0x0014(s0)            # 80A49D7C
    lbu     t2, 0x0000(s3)             # 80A47EE5
    bne     s2, t2, lbl_80A34F3C       
    nop
    lwc1    $f4, 0x0024(s0)            # 80A49D8C
    mul.s   $f6, $f4, $f24             
    swc1    $f6, 0x0024(s0)            # 80A49D8C
lbl_80A34F3C:
    beq     $zero, $zero, lbl_80A35068 
    swc1    $f26, 0x0038(s0)           # 80A49DA0
lbl_80A34F44:
    bne     s8, v0, lbl_80A34FBC       
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     $at, %hi(var_80A45408)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45408)($at) 
    lw      t4, 0x0000(s0)             # 80A49D68
    swc1    $f26, 0x0038(s0)           # 80A49DA0
    swc1    $f8, 0x0024(s0)            # 80A49D8C
    sw      t4, 0x0000(s4)             # FFFFFFF0
    lw      t3, 0x0004(s0)             # 80A49D6C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    sw      t3, 0x0004(s4)             # FFFFFFF4
    lw      t4, 0x0008(s0)             # 80A49D70
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f6                   # $f6 = 3.50
    sw      t4, 0x0008(s4)             # FFFFFFF8
    lwc1    $f10, 0x0084($sp)          
    lw      a1, 0x0000(s5)             # 80A47EE0
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f18, $f10, $f16           
    or      a2, s4, $zero              # a2 = FFFFFFF0
    addiu   a1, a1, 0x0220             # a1 = 00000220
    swc1    $f18, 0x0084($sp)          
    lwc1    $f4, 0x0024(s0)            # 80A49D8C
    mul.s   $f8, $f4, $f6              
    mfc1    a3, $f8                    
    jal     func_80A34510              
    nop
    beq     $zero, $zero, lbl_80A3506C 
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_80A34FBC:
    bne     v0, $at, lbl_80A3501C      
    nop
    jal     func_80A345E0              
    nop
    mul.s   $f10, $f0, $f28            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    mov.s   $f12, $f20                 
    add.s   $f18, $f10, $f16           
    jal     func_80026D64              
    swc1    $f18, 0x0024(s0)           # 80A49D8C
    swc1    $f0, 0x0010(s0)            # 80A49D78
    lbu     t5, 0x0000(s3)             # 80A47EE5
    andi    t6, s1, 0x0003             # t6 = 00000001
    bnel    s2, t5, lbl_80A3506C       
    addiu   s1, s1, 0x0001             # s1 = 00000002
    beq     t6, $zero, lbl_80A35014    
    nop
    lwc1    $f4, 0x0024(s0)            # 80A49D8C
    mul.s   $f6, $f4, $f24             
    beq     $zero, $zero, lbl_80A35068 
    swc1    $f6, 0x0024(s0)            # 80A49D8C
lbl_80A35014:
    beq     $zero, $zero, lbl_80A35068 
    sb      $zero, 0x0030(s0)          # 80A49D98
lbl_80A3501C:
    jal     func_80A345E0              
    nop
    lui     $at, %hi(var_80A4540C)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A4540C)($at) 
    mov.s   $f12, $f20                 
    mul.s   $f10, $f0, $f8             
    add.s   $f16, $f10, $f28           
    jal     func_80026D64              
    swc1    $f16, 0x0024(s0)           # 80A49D8C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    swc1    $f0, 0x0010(s0)            # 80A49D78
    or      a0, s1, $zero              # a0 = 00000002
    swc1    $f18, 0x0038(s0)           # 80A49DA0
    lw      a1, 0x0000(s5)             # 80A47EE0
    or      a2, s0, $zero              # a2 = 80A49D68
    lw      a3, 0x0024(s0)             # 80A49D8C
    jal     func_80A34510              
    addiu   a1, a1, 0x0220             # a1 = 00000220
lbl_80A35068:
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_80A3506C:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x008C            
    bne     $at, $zero, lbl_80A34E70   
    addiu   s0, s0, 0x003C             # s0 = 80A49DA4
    lw      $ra, 0x006C($sp)           
lbl_80A35084:
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
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A350C8:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lui     a1, %hi(var_80A45230)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A45230)  # a1 = 80A45230
    jal     func_80063F7C              
    or      a0, s2, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0xA5D0             # s1 = 8011A5D0
    lw      t6, 0x0004(s1)             # 8011A5D4
    lui     $at, %hi(var_80A47EE5)     # $at = 80A40000
    lui     s0, %hi(var_80A47EE0)      # s0 = 80A40000
    sb      t6, %lo(var_80A47EE5)($at) 
    lh      v0, 0x001C(s2)             # 0000001C
    addiu   s0, s0, %lo(var_80A47EE0)  # s0 = 80A47EE0
    slti    $at, v0, 0x0064            
    beql    $at, $zero, lbl_80A357A0   
    slti    $at, v0, 0x0073            
    lui     v0, 0x8001                 # v0 = 80010000
    lw      v0, -0x7760(v0)            # 800088A0
    lui     $at, 0xAD09                # $at = AD090000
    ori     $at, $at, 0x0010           # $at = AD090010
    xor     v0, v0, $at                
    sltiu   v0, v0, 0x0001             
    sltiu   v0, v0, 0x0001             
    lui     $at, %hi(var_80A47EE4)     # $at = 80A40000
    sb      v0, %lo(var_80A47EE4)($at) 
    lui     $at, %hi(var_80A47EE0)     # $at = 80A40000
    sw      s2, %lo(var_80A47EE0)($at) 
    lw      a1, 0x0000(s0)             # 80A47EE0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A484              
    addiu   a1, a1, 0x0220             # a1 = 00000220
    lw      v1, 0x0000(s0)             # 80A47EE0
    lui     a3, %hi(var_80A44C68)      # a3 = 80A40000
    addiu   a3, a3, %lo(var_80A44C68)  # a3 = 80A44C68
    addiu   t7, v1, 0x0240             # t7 = 00000240
    sw      t7, 0x0010($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_8004A874              
    addiu   a1, v1, 0x0220             # a1 = 00000220
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x001C(s2)             # 0000001C
    addiu   s0, s2, 0x01C8             # s0 = 000001C8
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x453C             # a3 = 0600453C
    addiu   a2, a2, 0x85F8             # a2 = 060085F8
    or      a1, s0, $zero              # a1 = 000001C8
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_8008C788              
    or      a0, s3, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x453C             # a1 = 0600453C
    or      a0, s0, $zero              # a0 = 000001C8
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    lui     $at, 0x4497                # $at = 44970000
    mtc1    $at, $f8                   # $f8 = 1208.00
    lui     t9, %hi(func_80A42860)     # t9 = 80A40000
    lui     t0, %hi(func_80A446B0)     # t0 = 80A40000
    addiu   t9, t9, %lo(func_80A42860) # t9 = 80A42860
    addiu   t0, t0, %lo(func_80A446B0) # t0 = 80A446B0
    addiu   t1, $zero, 0xA000          # t1 = FFFFA000
    lui     a1, 0x3C34                 # a1 = 3C340000
    sw      t9, 0x0130(s2)             # 00000130
    sw      t0, 0x0134(s2)             # 00000134
    sh      t1, 0x00B6(s2)             # 000000B6
    ori     a1, a1, 0x3958             # a1 = 3C343958
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f4, 0x0024(s2)            # 00000024
    swc1    $f6, 0x0028(s2)            # 00000028
    jal     func_80020F88              
    swc1    $f8, 0x002C(s2)            # 0000002C
    lw      t2, 0x0028(s2)             # 00000028
    lui     $at, 0x4296                # $at = 42960000
    lw      t3, 0x0024(s2)             # 00000024
    sw      t2, 0x003C(s2)             # 0000003C
    lwc1    $f10, 0x003C(s2)           # 0000003C
    mtc1    $at, $f16                  # $f16 = 75.00
    lw      t4, 0x0004(s2)             # 00000004
    sw      t3, 0x0038(s2)             # 00000038
    add.s   $f18, $f10, $f16           
    lw      t3, 0x002C(s2)             # 0000002C
    ori     t5, t4, 0x0009             # t5 = 00000009
    sw      t5, 0x0004(s2)             # 00000004
    swc1    $f18, 0x003C(s2)           # 0000003C
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    sw      t3, 0x0040(s2)             # 00000040
    lbu     t6, %lo(var_80A47EE5)(t6)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    beq     t6, $at, lbl_80A352C0      
    lui     s0, %hi(var_80A4CF28)      # s0 = 80A50000
    lw      t7, 0x0EC0(s1)             # 8011B490
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    andi    t8, t7, 0x1000             # t8 = 00000000
    beq     t8, $zero, lbl_80A352B8    
    nop
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A352CC 
    sb      $zero, %lo(var_80A44A68)($at) 
lbl_80A352B8:
    beq     $zero, $zero, lbl_80A352CC 
    sb      t9, %lo(var_80A44A68)($at) 
lbl_80A352C0:
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    sb      t0, %lo(var_80A44A68)($at) 
lbl_80A352CC:
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    lui     $at, %hi(var_80A44A64)     # $at = 80A40000
    sh      t1, %lo(var_80A44A64)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addiu   s0, s0, %lo(var_80A4CF28)  # s0 = 80A4CF28
    addu    $at, $at, s3               
    sw      s0, 0x1E10($at)            # 00011E10
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x1650($at)            # 800F1650
    lui     $at, %hi(var_80A47F1C)     # $at = 80A40000
    sh      $zero, %lo(var_80A47F1C)($at) 
    lui     $at, %hi(var_80A47F16)     # $at = 80A40000
    lui     a0, 0x1001                 # a0 = 10010000
    sh      v0, %lo(var_80A47F16)($at) 
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lui     t3, %hi(var_80A47EE5)      # t3 = 80A40000
    lbu     t3, %lo(var_80A47EE5)(t3)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a2, %hi(var_80A47EED)      # a2 = 80A40000
    bne     t3, $at, lbl_80A35360      
    addiu   a2, a2, %lo(var_80A47EED)  # a2 = 80A47EED
    lw      v0, 0x0EC0(s1)             # 8011B490
    lui     $at, 0x4220                # $at = 42200000
    andi    v1, v0, 0x007F             # v1 = 00000000
    beql    v1, $zero, lbl_80A35354    
    mtc1    $at, $f8                   # $f8 = 40.00
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    cvt.s.w $f6, $f4                   
    beq     $zero, $zero, lbl_80A35398 
    swc1    $f6, %lo(var_80A47EE8)($at) 
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_80A35354:
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A35398 
    swc1    $f8, %lo(var_80A47EE8)($at) 
lbl_80A35360:
    lw      v0, 0x0EC0(s1)             # 8011B490
    lui     $at, 0x7F00                # $at = 7F000000
    and     v1, v0, $at                
    beq     v1, $zero, lbl_80A3538C    
    lui     $at, 0x4234                # $at = 42340000
    sra     t4, v1, 24                 
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    cvt.s.w $f16, $f10                 
    beq     $zero, $zero, lbl_80A35398 
    swc1    $f16, %lo(var_80A47EE8)($at) 
lbl_80A3538C:
    mtc1    $at, $f18                  # $f18 = 0.00
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    swc1    $f18, %lo(var_80A47EE8)($at) 
lbl_80A35398:
    lui     $at, 0x00FF                # $at = 00FF0000
    and     t5, v0, $at                
    sra     t7, t5, 16                 
    andi    t8, t7, 0x0007             # t8 = 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t8, $at, lbl_80A353D4      
    sb      t7, 0x0000(a2)             # 80A47EED
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3               
    addiu   t9, $zero, 0x005A          # t9 = 0000005A
    sh      t9, 0x1D30($at)            # 00011D30
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A47EE6)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A353EC 
    sb      a1, %lo(var_80A47EE6)($at) 
lbl_80A353D4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3               
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    sh      t0, 0x1D30($at)            # 00011D30
    lui     $at, %hi(var_80A47EE6)     # $at = 80A40000
    sb      $zero, %lo(var_80A47EE6)($at) 
lbl_80A353EC:
    lbu     t1, 0x0000(a2)             # 80A47EED
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      s1, $zero, $zero           # s1 = 00000000
    andi    t2, t1, 0x0007             # t2 = 00000000
    bne     t2, $at, lbl_80A35414      
    addiu   v1, $zero, 0x003C          # v1 = 0000003C
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    lui     $at, %hi(var_80A47EE7)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3541C 
    sb      t3, %lo(var_80A47EE7)($at) 
lbl_80A35414:
    lui     $at, %hi(var_80A47EE7)     # $at = 80A40000
    sb      $zero, %lo(var_80A47EE7)($at) 
lbl_80A3541C:
    sll     t4, s1,  6                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0082            
    addu    t5, s0, t4                 
    bne     $at, $zero, lbl_80A3541C   
    sb      $zero, 0x0024(t5)          # 00000024
    lui     v0, %hi(var_80A49D68)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A49D68)  # v0 = 80A49D68
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80A35448:
    multu   s1, v1                     
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x008C            
    mflo    t6                         
    addu    t7, v0, t6                 
    bne     $at, $zero, lbl_80A35448   
    sb      $zero, 0x0030(t7)          # 00000030
    lui     $at, %hi(var_80A45410)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45410)($at) 
    lui     v0, %hi(var_80A4CF18)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A4CF18)  # v0 = 80A4CF18
    lui     $at, %hi(var_80A45414)     # $at = 80A40000
    swc1    $f4, 0x0000(v0)            # 80A4CF18
    lwc1    $f6, %lo(var_80A45414)($at) 
    lui     v1, %hi(var_80A4CF1C)      # v1 = 80A50000
    addiu   v1, v1, %lo(var_80A4CF1C)  # v1 = 80A4CF1C
    lui     $at, %hi(var_80A45418)     # $at = 80A40000
    swc1    $f6, 0x0000(v1)            # 80A4CF1C
    lwc1    $f8, %lo(var_80A45418)($at) 
    lui     a0, %hi(var_80A4CF20)      # a0 = 80A50000
    lui     $at, 0x4434                # $at = 44340000
    addiu   a0, a0, %lo(var_80A4CF20)  # a0 = 80A4CF20
    mtc1    $at, $f22                  # $f22 = 720.00
    or      s1, $zero, $zero           # s1 = 00000000
    swc1    $f8, 0x0000(a0)            # 80A4CF20
    sll     t8, s1,  3                 
lbl_80A354B8:
    addu    t8, t8, s1                 
    lui     t9, %hi(var_80A4BE38)      # t9 = 80A50000
    addiu   t9, t9, %lo(var_80A4BE38)  # t9 = 80A4BE38
    sll     t8, t8,  3                 
    lui     v0, %hi(var_80A4CF18)      # v0 = 80A50000
    lui     v1, %hi(var_80A4CF1C)      # v1 = 80A50000
    lui     a0, %hi(var_80A4CF20)      # a0 = 80A50000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    s0, t8, t9                 
    slti    $at, s1, 0x0015            
    addiu   a0, a0, %lo(var_80A4CF20)  # a0 = 80A4CF20
    addiu   v1, v1, %lo(var_80A4CF1C)  # v1 = 80A4CF1C
    addiu   v0, v0, %lo(var_80A4CF18)  # v0 = 80A4CF18
    beq     $at, $zero, lbl_80A35524   
    sb      a1, 0x0000(s0)             # 80A4CF28
    jal     func_800CF470              
    lwc1    $f12, 0x0000(v0)           # 80A4CF18
    mul.s   $f20, $f0, $f22            
    lui     $at, %hi(var_80A4CF18)     # $at = 80A50000
    swc1    $f20, 0x0004(s0)           # 80A4CF2C
    swc1    $f20, 0x0010(s0)           # 80A4CF38
    jal     func_800D2CD0              
    lwc1    $f12, %lo(var_80A4CF18)($at) 
    mul.s   $f20, $f0, $f22            
    swc1    $f20, 0x000C(s0)           # 80A4CF34
    beq     $zero, $zero, lbl_80A3558C 
    swc1    $f20, 0x0018(s0)           # 80A4CF40
lbl_80A35524:
    slti    $at, s1, 0x0029            
    beq     $at, $zero, lbl_80A35560   
    nop
    jal     func_800CF470              
    lwc1    $f12, 0x0000(v1)           # 00000000
    mul.s   $f20, $f0, $f22            
    lui     $at, %hi(var_80A4CF1C)     # $at = 80A50000
    swc1    $f20, 0x0004(s0)           # 80A4CF2C
    swc1    $f20, 0x0010(s0)           # 80A4CF38
    jal     func_800D2CD0              
    lwc1    $f12, %lo(var_80A4CF1C)($at) 
    mul.s   $f20, $f0, $f22            
    swc1    $f20, 0x000C(s0)           # 80A4CF34
    beq     $zero, $zero, lbl_80A3558C 
    swc1    $f20, 0x0018(s0)           # 80A4CF40
lbl_80A35560:
    jal     func_800CF470              
    lwc1    $f12, 0x0000(a0)           # 00000000
    mul.s   $f20, $f0, $f22            
    lui     $at, %hi(var_80A4CF20)     # $at = 80A50000
    swc1    $f20, 0x0004(s0)           # 80A4CF2C
    swc1    $f20, 0x0010(s0)           # 80A4CF38
    jal     func_800D2CD0              
    lwc1    $f12, %lo(var_80A4CF20)($at) 
    mul.s   $f20, $f0, $f22            
    swc1    $f20, 0x000C(s0)           # 80A4CF34
    swc1    $f20, 0x0018(s0)           # 80A4CF40
lbl_80A3558C:
    lui     $at, 0xC20C                # $at = C20C0000
    mtc1    $at, $f0                   # $f0 = -35.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    swc1    $f0, 0x0008(s0)            # 80A4CF30
    jal     func_80026D64              
    swc1    $f0, 0x0014(s0)            # 80A4CF3C
    trunc.w.s $f10, $f0                  
    sh      $zero, 0x003C(s0)          # 80A4CF64
    sh      $zero, 0x003E(s0)          # 80A4CF66
    sh      $zero, 0x0040(s0)          # 80A4CF68
    mfc1    t1, $f10                   
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sh      t1, 0x0002(s0)             # 80A4CF2A
    lbu     t2, %lo(var_80A47EE5)(t2)  
    beq     t2, $at, lbl_80A35608      
    slti    $at, s1, 0x000F            
    bne     $at, $zero, lbl_80A355E0   
    slti    $at, s1, 0x0014            
    bne     $at, $zero, lbl_80A35604   
lbl_80A355E0:
    slti    $at, s1, 0x0023            
    bne     $at, $zero, lbl_80A355F0   
    slti    $at, s1, 0x0028            
    bne     $at, $zero, lbl_80A35604   
lbl_80A355F0:
    slti    $at, s1, 0x0037            
    bne     $at, $zero, lbl_80A35608   
    slti    $at, s1, 0x003C            
    beql    $at, $zero, lbl_80A3560C   
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_80A35604:
    sb      $zero, 0x0000(s0)          # 80A4CF28
lbl_80A35608:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80A3560C:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x003C            
    bnel    $at, $zero, lbl_80A354B8   
    sll     t8, s1,  3                 
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80A34DB4              
    or      a1, s3, $zero              # a1 = 00000000
    lui     $at, 0x4254                # $at = 42540000
    mtc1    $at, $f16                  # $f16 = 53.00
    lui     $at, 0xC188                # $at = C1880000
    mtc1    $at, $f18                  # $f18 = -17.00
    lui     $at, %hi(var_80A4541C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4541C)($at) 
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    addiu   t3, $zero, 0x0300          # t3 = 00000300
    sw      t3, 0x0028($sp)            
    sw      a0, 0x0058($sp)            
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0141          # a3 = 00000141
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    jal     func_800253F0              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    sw      t4, 0x0024($sp)            
    mfc1    a3, $f0                    
    lw      a0, 0x0058($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00FE          # a2 = 000000FE
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f0, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f0, 0x0014($sp)           
    lui     t5, %hi(var_80A47EED)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47EED)(t5)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      s2, 0x0058($sp)            
    andi    t6, t5, 0x0003             # t6 = 00000000
    bne     t6, $at, lbl_80A356F0      
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t7, %hi(var_80A47EE5)      # t7 = 80A40000
    lbu     t7, %lo(var_80A47EE5)(t7)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t7, $at, lbl_80A356E8      
    nop
    beq     $zero, $zero, lbl_80A356F4 
    addiu   v0, $zero, 0x0010          # v0 = 00000010
lbl_80A356E8:
    beq     $zero, $zero, lbl_80A356F4 
    addiu   v0, $zero, 0x0011          # v0 = 00000011
lbl_80A356F0:
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_80A356F4:
    blez    v0, lbl_80A3598C           
    or      s0, v0, $zero              # s0 = 0000000F
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f20                  # $f20 = 65536.00
    nop
lbl_80A35708:
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    lui     t9, %hi(var_80A45120)      # t9 = 80A40000
    addiu   t9, t9, %lo(var_80A45120)  # t9 = 80A45120
    sll     t8, s1,  4                 
    addu    v0, t8, t9                 
    lh      t0, 0x0002(v0)             # 00000002
    lh      t1, 0x0004(v0)             # 00000004
    lh      t2, 0x0006(v0)             # 00000006
    mtc1    t0, $f6                    # $f6 = 0.00
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f6                   
    addiu   t5, s1, 0x0064             # t5 = 00000064
    sw      t5, 0x0024($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    trunc.w.s $f4, $f0                   
    mfc1    a3, $f6                    
    addiu   a2, $zero, 0x00FE          # a2 = 000000FE
    cvt.s.w $f10, $f8                  
    mfc1    t4, $f4                    
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0020($sp)         
    sw      t4, 0x001C($sp)            
    cvt.s.w $f18, $f16                 
    swc1    $f10, 0x0010($sp)          
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0014($sp)          
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slt     $at, s1, s0                
    bne     $at, $zero, lbl_80A35708   
    nop
    beq     $zero, $zero, lbl_80A35990 
    lw      $ra, 0x0054($sp)           
    slti    $at, v0, 0x0073            
lbl_80A357A0:
    bne     $at, $zero, lbl_80A357B0   
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    bne     v0, $at, lbl_80A357F8      
    lui     s1, 0x0601                 # s1 = 06010000
lbl_80A357B0:
    lui     s1, 0x0600                 # s1 = 06000000
    addiu   s1, s1, 0x007C             # s1 = 0600007C
    addiu   s0, s2, 0x01C8             # s0 = 000001C8
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x29C0             # a2 = 060029C0
    or      a1, s0, $zero              # a1 = 000001C8
    or      a3, s1, $zero              # a3 = 0600007C
    or      a0, s3, $zero              # a0 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    or      a0, s0, $zero              # a0 = 000001C8
    or      a1, s1, $zero              # a1 = 0600007C
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     $zero, $zero, lbl_80A35834 
    nop
lbl_80A357F8:
    addiu   s1, s1, 0xCFE0             # s1 = 05FFD05C
    addiu   s0, s2, 0x01C8             # s0 = 000001C8
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x1058             # a2 = 06011058
    or      a1, s0, $zero              # a1 = 000001C8
    or      a3, s1, $zero              # a3 = 05FFD05C
    or      a0, s3, $zero              # a0 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    or      a0, s0, $zero              # a0 = 000001C8
    or      a1, s1, $zero              # a1 = 05FFD05C
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_80A35834:
    jal     func_8008C9C0              
    or      a0, s0, $zero              # a0 = 000001C8
    lh      t6, 0x001C(s2)             # 0000001C
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    bne     t6, $at, lbl_80A3588C      
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, 0x0148(s2)             # 00000148
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, s3, 0x1C24             # a1 = 00001C24
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    lw      t8, 0x0004(s2)             # 00000004
    sb      $zero, 0x001F(s2)          # 0000001F
    or      a0, s3, $zero              # a0 = 00000000
    ori     t9, t8, 0x0009             # t9 = 00000009
    sw      t9, 0x0004(s2)             # 00000004
    addiu   a1, s3, 0x07A8             # a1 = 000007A8
    jal     func_800665B0              
    addiu   a2, s2, 0x0210             # a2 = 00000210
    beq     $zero, $zero, lbl_80A3598C 
    sw      v0, 0x020C(s2)             # 0000020C
lbl_80A3588C:
    lh      t0, 0x001C(s2)             # 0000001C
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    lui     t2, %hi(var_80A44AE0)      # t2 = 80A40000
    sll     t1, t0,  4                 
    lh      t3, 0x001C(s2)             # 0000001C
    sh      v0, 0x0148(s2)             # 00000148
    sh      v0, 0x014A(s2)             # 0000014A
    addu    t2, t2, t1                 
    lbu     t2, %lo(var_80A44AE0)(t2)  
    lui     $at, %hi(var_80A44AEC)     # $at = 80A40000
    sll     t4, t3,  4                 
    lh      t5, 0x001C(s2)             # 0000001C
    addu    $at, $at, t4               
    sb      t2, 0x0140(s2)             # 00000140
    lwc1    $f6, %lo(var_80A44AEC)($at) 
    lui     t7, %hi(var_80A44AE8)      # t7 = 80A40000
    sll     t6, t5,  4                 
    addu    t7, t7, t6                 
    swc1    $f6, 0x0198(s2)            # 00000198
    lbu     t7, %lo(var_80A44AE8)(t7)  
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f8                    # $f8 = 0.00
    bgez    t7, lbl_80A358F8           
    cvt.s.w $f10, $f8                  
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16           
lbl_80A358F8:
    swc1    $f10, 0x019C(s2)           # 0000019C
    lui     $at, %hi(var_80A45420)     # $at = 80A40000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A45420)($at) 
    lwc1    $f18, 0x019C(s2)           # 0000019C
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f8                   # $f8 = 65.00
    add.s   $f4, $f18, $f0             
    swc1    $f4, 0x019C(s2)            # 0000019C
    lwc1    $f6, 0x019C(s2)            # 0000019C
    c.le.s  $f8, $f6                   
    nop
    bc1f    lbl_80A35968               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A45424)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A45424)($at) 
    lui     $at, %hi(var_80A45428)     # $at = 80A40000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80A35968               
    nop
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A45428)($at) 
    lwc1    $f10, 0x019C(s2)           # 0000019C
    add.s   $f18, $f10, $f0            
    swc1    $f18, 0x019C(s2)           # 0000019C
lbl_80A35968:
    lui     t8, %hi(var_80A47EE5)      # t8 = 80A40000
    lbu     t8, %lo(var_80A47EE5)(t8)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_80A3598C      
    lui     $at, %hi(var_80A4542C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4542C)($at) 
    lwc1    $f4, 0x019C(s2)            # 0000019C
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x019C(s2)            # 0000019C
lbl_80A3598C:
    lw      $ra, 0x0054($sp)           
lbl_80A35990:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80A359B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)            
    or      a1, a3, $zero              # a1 = 00000000
    sw      a3, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x01C8             # a0 = 000001C8
    lw      v1, 0x0018($sp)            
    lw      a3, 0x001C($sp)            
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    lh      v0, 0x001C(v1)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    bnel    v0, $at, lbl_80A35A08      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80066610              
    lw      a2, 0x020C(v1)             # 0000020C
    beq     $zero, $zero, lbl_80A35A1C 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A35A08:
    bne     v0, $at, lbl_80A35A18      
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, v1, 0x0220             # a1 = 00000220
lbl_80A35A18:
    lw      $ra, 0x0014($sp)           
lbl_80A35A1C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A35A28:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s2, 0x0044($sp)            
    sw      s0, 0x003C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s5, 0x0050($sp)            
    sw      s4, 0x004C($sp)            
    sw      s3, 0x0048($sp)            
    sw      s1, 0x0040($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     $at, %hi(var_80A45430)     # $at = 80A40000
    lwc1    $f24, %lo(var_80A45430)($at) 
    lui     $at, %hi(var_80A45434)     # $at = 80A40000
    lui     s3, 0x8012                 # s3 = 80120000
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   s3, s3, 0xBA00             # s3 = 8011BA00
    lwc1    $f20, %lo(var_80A45434)($at) 
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s4, 0x0001                 # s4 = 00010000
lbl_80A35A80:
    lbu     v1, 0x0024(s0)             # 00000024
    beql    v1, $zero, lbl_80A36128    
    addiu   s5, s5, 0x0001             # s5 = 00000001
    lwc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0010(s0)            # 00000010
    lwc1    $f10, 0x0004(s0)           # 00000004
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0008(s0)            # 00000008
    lbu     t6, 0x0025(s0)             # 00000025
    add.s   $f4, $f10, $f0             
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f8, 0x0014(s0)            # 00000014
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f4, 0x0004(s0)            # 00000004
    lwc1    $f4, 0x001C(s0)            # 0000001C
    add.s   $f10, $f6, $f8             
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0025(s0)             # 00000025
    add.s   $f6, $f0, $f4              
    swc1    $f10, 0x0008(s0)           # 00000008
    or      v0, v1, $zero              # v0 = 00000000
    bne     v1, $at, lbl_80A35B58      
    swc1    $f6, 0x0010(s0)            # 00000010
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0030             # a0 = 00000030
    lw      a1, 0x0034(s0)             # 00000034
    jal     func_80064280              
    lw      a3, 0x0038(s0)             # 00000038
    lh      t8, 0x002C(s0)             # 0000002C
    bnel    t8, $zero, lbl_80A35B3C    
    lh      t4, 0x002A(s0)             # 0000002A
    lh      t9, 0x002A(s0)             # 0000002A
    lh      v0, 0x002E(s0)             # 0000002E
    addiu   t0, t9, 0x0014             # t0 = 00000014
    sh      t0, 0x002A(s0)             # 0000002A
    lh      t1, 0x002A(s0)             # 0000002A
    slt     $at, t1, v0                
    bnel    $at, $zero, lbl_80A36128   
    addiu   s5, s5, 0x0001             # s5 = 00000002
    lh      t2, 0x002C(s0)             # 0000002C
    sh      v0, 0x002A(s0)             # 0000002A
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80A36124 
    sh      t3, 0x002C(s0)             # 0000002C
    lh      t4, 0x002A(s0)             # 0000002A
lbl_80A35B3C:
    addiu   t5, t4, 0xFFF8             # t5 = FFFFFFF8
    sh      t5, 0x002A(s0)             # 0000002A
    lh      t6, 0x002A(s0)             # 0000002A
    bgtzl   t6, lbl_80A36128           
    addiu   s5, s5, 0x0001             # s5 = 00000003
    beq     $zero, $zero, lbl_80A36124 
    sb      $zero, 0x0024(s0)          # 00000024
lbl_80A35B58:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80A35BE0      
    addiu   a0, s0, 0x0030             # a0 = 00000030
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    jal     func_80064280              
    lw      a1, 0x0034(s0)             # 00000034
    lh      t7, 0x002A(s0)             # 0000002A
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   t8, t7, 0xFFF6             # t8 = FFFFFFF6
    sh      t8, 0x002A(s0)             # 0000002A
    lw      t9, 0x07C0(s2)             # 000007C0
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    lwc1    $f8, 0x0004(s0)            # 00000004
    sub.s   $f6, $f10, $f4             
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80A35BD0               
    lh      t4, 0x002A(s0)             # 0000002A
    lh      t2, 0x002A(s0)             # 0000002A
    swc1    $f22, 0x001C(s0)           # 0000001C
    swc1    $f22, 0x0010(s0)           # 00000010
    addiu   t3, t2, 0xFFFB             # t3 = FFFFFFFB
    sh      t3, 0x002A(s0)             # 0000002A
    lh      t4, 0x002A(s0)             # 0000002A
lbl_80A35BD0:
    bgtzl   t4, lbl_80A36128           
    addiu   s5, s5, 0x0001             # s5 = 00000004
    beq     $zero, $zero, lbl_80A36124 
    sb      $zero, 0x0024(s0)          # 00000024
lbl_80A35BE0:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A35CB0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t5, 0x002C(s0)             # 0000002C
    lui     $at, 0x428A                # $at = 428A0000
    bnel    t5, $zero, lbl_80A35C18    
    mtc1    $at, $f2                   # $f2 = 69.00
    lw      t6, 0x07C0(s2)             # 000007C0
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f10                   # $f10 = NaN
    beq     $zero, $zero, lbl_80A35C1C 
    cvt.s.w $f2, $f10                  
    mtc1    $at, $f2                   # $f2 = 69.00
lbl_80A35C18:
    nop
lbl_80A35C1C:
    lwc1    $f4, 0x0004(s0)            # 00000004
    c.le.s  $f2, $f4                   
    nop
    bc1fl   lbl_80A36128               
    addiu   s5, s5, 0x0001             # s5 = 00000005
    sb      $zero, 0x0024(s0)          # 00000024
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x009C($sp)           
    lui     $at, %hi(var_80A45438)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45438)($at) 
    lwc1    $f2, 0x009C($sp)           
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFEC
    c.lt.s  $f0, $f6                   
    or      a0, $zero, $zero           # a0 = 00000000
    bc1fl   lbl_80A36128               
    addiu   s5, s5, 0x0001             # s5 = 00000006
    lw      t0, 0x0000(s0)             # 00000000
    addu    t1, s2, s4                 
    lui     $at, 0x4270                # $at = 42700000
    sw      t0, 0x0000(a2)             # FFFFFFEC
    lw      t9, 0x0004(s0)             # 00000004
    mtc1    $at, $f8                   # $f8 = 60.00
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    sw      t9, 0x0004(a2)             # FFFFFFF0
    lw      t0, 0x0008(s0)             # 00000008
    addiu   t3, $zero, 0x005A          # t3 = 0000005A
    lui     a3, 0x41A0                 # a3 = 41A00000
    sw      t0, 0x0008(a2)             # FFFFFFF4
    swc1    $f2, 0x0090($sp)           
    lw      a1, 0x1E10(t1)             # 00001E10
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f8, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A36128 
    addiu   s5, s5, 0x0001             # s5 = 00000007
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A35CB0:
    bne     v0, $at, lbl_80A35D9C      
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f4                   # $f4 = -20.00
    lwc1    $f10, 0x0010(s0)           # 00000010
    lui     $at, 0xC1A0                # $at = C1A00000
    c.lt.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A35CE4               
    lw      t4, 0x07C0(s2)             # 000007C0
    mtc1    $at, $f6                   # $f6 = -20.00
    swc1    $f22, 0x001C(s0)           # 0000001C
    swc1    $f6, 0x0010(s0)            # 00000010
    lw      t4, 0x07C0(s2)             # 000007C0
lbl_80A35CE4:
    lwc1    $f4, 0x0004(s0)            # 00000004
    lw      t5, 0x0028(t4)             # 00000028
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f4, $f10                  
    nop
    bc1fl   lbl_80A36128               
    addiu   s5, s5, 0x0001             # s5 = 00000008
    jal     func_800CDCCC              # Rand.Next() float
    sb      $zero, 0x0024(s0)          # 00000024
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFE0
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A36128               
    addiu   s5, s5, 0x0001             # s5 = 00000009
    lw      t8, 0x0000(s0)             # 00000000
    addu    t2, s2, s4                 
    lui     $at, 0x42DC                # $at = 42DC0000
    sw      t8, 0x0000(a2)             # FFFFFFE0
    lw      t7, 0x0004(s0)             # 00000004
    mtc1    $at, $f4                   # $f4 = 110.00
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    sw      t7, 0x0004(a2)             # FFFFFFE4
    lw      t8, 0x0008(s0)             # 00000008
    addiu   t4, $zero, 0x005A          # t4 = 0000005A
    or      a0, $zero, $zero           # a0 = 00000000
    sw      t8, 0x0008(a2)             # FFFFFFE8
    lw      t9, 0x07C0(s2)             # 000007C0
    lui     a3, 0x4220                 # a3 = 42200000
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0084($sp)          
    lw      a1, 0x1E10(t2)             # 00001E10
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A36128 
    addiu   s5, s5, 0x0001             # s5 = 0000000A
lbl_80A35D9C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A35F14      
    slti    $at, v0, 0x0007            
    lw      t5, 0x07C0(s2)             # 000007C0
    lwc1    $f8, 0x0004(s0)            # 00000004
    lw      t6, 0x0028(t5)             # 00000028
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f14, $f6                  
    c.lt.s  $f8, $f14                  
    nop
    bc1fl   lbl_80A36128               
    addiu   s5, s5, 0x0001             # s5 = 0000000B
    lwc1    $f2, 0x0000(s0)            # 00000000
    lwc1    $f12, 0x0008(s0)           # 00000008
    lui     $at, %hi(var_80A4543C)     # $at = 80A40000
    mul.s   $f10, $f2, $f2             
    lwc1    $f6, %lo(var_80A4543C)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mul.s   $f4, $f12, $f12            
    add.s   $f16, $f10, $f4            
    c.lt.s  $f6, $f16                  
    nop
    bc1fl   lbl_80A35E6C               
    mtc1    $at, $f8                   # $f8 = 3.00
    sqrt.s  $f0, $f16                  
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f8                   # $f8 = 920.00
    lui     $at, %hi(var_80A45440)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45440)($at) 
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    addiu   v0, s0, 0x000C             # v0 = 0000000C
    sub.s   $f10, $f0, $f8             
    mul.s   $f6, $f10, $f4             
    add.s   $f8, $f6, $f14             
    swc1    $f8, 0x0004(s0)            # 00000004
    lw      t8, 0x0000(s3)             # 8011BA00
    lh      t9, 0x09F6(t8)             # 000009F6
    sb      t1, 0x0024(s0)             # 00000024
    addiu   t0, t9, 0x0002             # t0 = 00000002
    sb      t0, 0x0025(s0)             # 00000025
    lw      t2, 0x0000(s3)             # 8011BA00
    lh      t3, 0x09F8(t2)             # 000009F8
    addiu   t4, t3, 0x001E             # t4 = 0000001E
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10                  
    mul.s   $f6, $f4, $f24             
    beq     $zero, $zero, lbl_80A35EE8 
    swc1    $f6, 0x0030(s0)            # 00000030
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_80A35E6C:
    sb      $zero, 0x0025(s0)          # 00000025
    add.s   $f10, $f14, $f8            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0004(s0)           # 00000004
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f4                   # $f4 = 0.75
    lui     t6, %hi(var_80A44C7C)      # t6 = 80A40000
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    c.lt.s  $f0, $f4                   
    addiu   t6, t6, %lo(var_80A44C7C)  # t6 = 80A44C7C
    addiu   v0, s0, 0x000C             # v0 = 0000000C
    bc1fl   lbl_80A35EE8               
    sb      $zero, 0x0024(s0)          # 00000024
    sb      t5, 0x0024(s0)             # 00000024
    lw      t8, 0x0000(t6)             # 80A44C7C
    addiu   v0, s0, 0x000C             # v0 = 0000000C
    sw      t8, 0x0000(v0)             # 0000000C
    lw      t7, 0x0004(t6)             # 80A44C80
    sw      t7, 0x0004(v0)             # 00000010
    lw      t8, 0x0008(t6)             # 80A44C84
    sw      t8, 0x0008(v0)             # 00000014
    lw      t9, 0x0000(s3)             # 8011BA00
    lh      t0, 0x09F8(t9)             # 000009F8
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f24            
    beq     $zero, $zero, lbl_80A35EE8 
    swc1    $f10, 0x0030(s0)           # 00000030
    sb      $zero, 0x0024(s0)          # 00000024
lbl_80A35EE8:
    lui     t2, %hi(var_80A44C7C)      # t2 = 80A40000
    addiu   t2, t2, %lo(var_80A44C7C)  # t2 = 80A44C7C
    lw      t4, 0x0000(t2)             # 80A44C7C
    sw      t4, 0x0000(v0)             # 0000000C
    lw      t3, 0x0004(t2)             # 80A44C80
    sw      t3, 0x0004(v0)             # 00000010
    lw      t4, 0x0008(t2)             # 80A44C84
    sw      t4, 0x0008(v0)             # 00000014
    beq     $zero, $zero, lbl_80A36128 
    addiu   s5, s5, 0x0001             # s5 = 0000000C
    slti    $at, v0, 0x0007            
lbl_80A35F14:
    bnel    $at, $zero, lbl_80A35F5C   
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      t5, 0x0000(s3)             # 8011BA00
    lwc1    $f4, 0x0030(s0)            # 00000030
    lbu     t8, 0x0025(s0)             # 00000025
    lh      t6, 0x09F8(t5)             # 000009FF
    slti    $at, t8, 0x0006            
    addiu   t7, t6, 0x001E             # t7 = 80A44C9A
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f24            
    add.s   $f6, $f4, $f10             
    bne     $at, $zero, lbl_80A36124   
    swc1    $f6, 0x0030(s0)            # 00000030
    beq     $zero, $zero, lbl_80A36124 
    sb      $zero, 0x0024(s0)          # 00000024
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_80A35F5C:
    bne     v0, $at, lbl_80A36124      
    lui     a0, %hi(var_80A47F0E)      # a0 = 80A40000
    lui     $at, %hi(var_80A45444)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45444)($at) 
    addiu   a0, a0, %lo(var_80A47F0E)  # a0 = 80A47F0E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064624              
    swc1    $f8, 0x0030(s0)            # 00000030
    lui     a0, %hi(var_80A47F0C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F0C)  # a0 = 80A47F0C
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064624              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lui     a0, %hi(var_80A47F10)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F10)  # a0 = 80A47F10
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064624              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lwc1    $f2, 0x0000(s0)            # 00000000
    lwc1    $f12, 0x0008(s0)           # 00000008
    lw      t9, 0x07C0(s2)             # 000007C0
    mul.s   $f4, $f2, $f2              
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f6                   # $f6 = 920.00
    mul.s   $f10, $f12, $f12           
    lw      t0, 0x0028(t9)             # 00000028
    lui     $at, %hi(var_80A45448)     # $at = 80A40000
    lwc1    $f18, 0x0004(s0)           # 00000004
    lh      t1, 0x0002(t0)             # 00000002
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFC8
    add.s   $f14, $f4, $f10            
    lwc1    $f4, %lo(var_80A45448)($at) 
    lui     $at, 0x4120                # $at = 41200000
    sqrt.s  $f0, $f14                  
    sub.s   $f8, $f0, $f6              
    mtc1    t1, $f6                    # $f6 = 0.00
    mul.s   $f10, $f8, $f4             
    mtc1    $at, $f4                   # $f4 = 10.00
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f10, $f8            
    sub.s   $f6, $f16, $f4             
    c.lt.s  $f6, $f18                  
    nop
    bc1fl   lbl_80A3602C               
    lbu     t2, 0x0025(s0)             # 00000025
    sub.s   $f10, $f18, $f20           
    swc1    $f10, 0x0004(s0)           # 00000004
    lbu     t2, 0x0025(s0)             # 00000025
lbl_80A3602C:
    andi    t3, t2, 0x000F             # t3 = 00000000
    bnel    t3, $zero, lbl_80A360A0    
    lh      v0, 0x002C(s0)             # 0000002C
    lw      t5, 0x0000(s0)             # 00000000
    addu    t9, s2, s4                 
    lui     $at, 0x4396                # $at = 43960000
    sw      t5, 0x0000(a2)             # FFFFFFC8
    lw      t4, 0x0004(s0)             # 00000004
    mtc1    $at, $f6                   # $f6 = 300.00
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    sw      t4, 0x0004(a2)             # FFFFFFCC
    lw      t5, 0x0008(s0)             # 00000008
    addiu   t1, $zero, 0x005A          # t1 = 0000005A
    or      a0, $zero, $zero           # a0 = 00000000
    sw      t5, 0x0008(a2)             # FFFFFFD0
    lw      t6, 0x07C0(s2)             # 000007C0
    lui     a3, 0x41F0                 # a3 = 41F00000
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    swc1    $f4, 0x006C($sp)           
    lw      a1, 0x1E10(t9)             # 00001E10
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f6, 0x0010($sp)           
    lh      v0, 0x002C(s0)             # 0000002C
lbl_80A360A0:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a0, s2, $zero              # a0 = 00000000
    bltz    v0, lbl_80A360B8           
    addiu   t2, v0, 0x0001             # t2 = 00000001
    sh      t2, 0x002C(s0)             # 0000002C
    lh      v0, 0x002C(s0)             # 0000002C
lbl_80A360B8:
    bne     v0, $at, lbl_80A360CC      
    addiu   a1, $zero, 0x40B3          # a1 = 000040B3
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x002C(s0)             # 0000002C
lbl_80A360CC:
    slti    $at, v0, 0x0064            
    bne     $at, $zero, lbl_80A36124   
    addiu   s1, s2, 0x20D8             # s1 = 000020D8
    jal     func_800DD464              
    or      a0, s1, $zero              # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A36128      
    addiu   s5, s5, 0x0001             # s5 = 0000000D
    jal     func_800D6110              
    or      a0, s2, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A3610C    
    nop
    jal     func_800DD464              
    or      a0, s1, $zero              # a0 = 000020D8
    bnel    v0, $zero, lbl_80A36128    
    addiu   s5, s5, 0x0001             # s5 = 0000000E
lbl_80A3610C:
    jal     func_800D6218              
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800721CC              
    addiu   a0, $zero, 0xFFCE          # a0 = FFFFFFCE
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sh      t3, 0x002C(s0)             # 0000002C
lbl_80A36124:
    addiu   s5, s5, 0x0001             # s5 = 0000000F
lbl_80A36128:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0082            
    bne     $at, $zero, lbl_80A35A80   
    addiu   s0, s0, 0x0040             # s0 = 00000040
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    lw      s2, 0x0044($sp)            
    lw      s3, 0x0048($sp)            
    lw      s4, 0x004C($sp)            
    lw      s5, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_80A3616C:
    addiu   $sp, $sp, 0xFED8           # $sp = FFFFFED8
    sw      s7, 0x0064($sp)            
    sw      s2, 0x0050($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    or      s5, $zero, $zero           # s5 = 00000000
    sw      s2, 0x0114($sp)            
    jal     func_800AA6EC              
    lw      s1, 0x0000(s7)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     s8, 0xFA00                 # s8 = FA000000
    lui     s6, 0xDE00                 # s6 = DE000000
lbl_80A361E4:
    lbu     t8, 0x0024(s2)             # 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s3, 0x0601                 # s3 = 06010000
    bne     t8, $at, lbl_80A362D0      
    or      a3, $zero, $zero           # a3 = 00000000
    bne     s5, $zero, lbl_80A36244    
    addiu   s3, s3, 0x8678             # s3 = 06008678
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x8610             # t1 = 06008610
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0x9B9B                 # t4 = 9B9B0000
    ori     t4, t4, 0x9B00             # t4 = 9B9B9B00
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A36244:
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t6, 0x002A(s2)             # 0000002A
    andi    t7, t6, 0x00FF             # t7 = 00000008
    or      t8, t7, $at                # t8 = FFFFFF08
    sw      t8, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000000
    lwc1    $f14, 0x0004(s2)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000008
    lwc1    $f12, 0x0030(s2)           # 00000030
    mov.s   $f14, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x00F8($sp)            
    lw      a1, 0x00F8($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
lbl_80A362D0:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0064            
    bne     $at, $zero, lbl_80A361E4   
    addiu   s2, s2, 0x0040             # s2 = 00000040
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x0114($sp)            
    or      s4, $zero, $zero           # s4 = 00000000
lbl_80A362F4:
    lbu     t3, 0x0024(s2)             # 00000064
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t4, 0x0600                 # t4 = 06000000
    bne     t3, $at, lbl_80A363FC      
    addiu   t4, t4, 0x3680             # t4 = 06003680
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s3, s7, $at                
    bne     s5, $zero, lbl_80A36360    
    sw      t4, 0x0070($sp)            
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x3610             # t6 = 06003610
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xC8C8                 # t9 = C8C80000
    ori     t9, t9, 0xC800             # t9 = C8C8C800
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A36360:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     $at, 0xB4B4                # $at = B4B40000
    ori     $at, $at, 0xB400           # $at = B4B4B400
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t2, 0x002A(s2)             # 0000006A
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t3, t2, 0x00FF             # t3 = 00000008
    or      t4, t3, $at                # t4 = B4B4B408
    sw      t4, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000040
    lwc1    $f14, 0x0004(s2)           # 00000044
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000048
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 06008678
    lwc1    $f12, 0x0030(s2)           # 00000070
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x00E4($sp)            
    lw      a1, 0x00E4($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t8, 0x0070($sp)            
    sw      t8, 0x0004(s0)             # 00000004
lbl_80A363FC:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0064            
    bne     $at, $zero, lbl_80A362F4   
    addiu   s2, s2, 0x0040             # s2 = 00000080
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x0114($sp)            
    or      s4, $zero, $zero           # s4 = 00000000
lbl_80A36420:
    lbu     t9, 0x0024(s2)             # 000000A4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t1, 0x0601                 # t1 = 06010000
    bne     t9, $at, lbl_80A365A4      
    addiu   t1, t1, 0x8970             # t1 = 06008970
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s3, s7, $at                
    bne     s5, $zero, lbl_80A3648C    
    sw      t1, 0x0070($sp)            
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0x88C0             # t3 = 060088C0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0x285A                 # t6 = 285A0000
    ori     t6, t6, 0x5080             # t6 = 285A5080
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      t5, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A3648C:
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     $at, 0x285A                # $at = 285A0000
    ori     $at, $at, 0x5000           # $at = 285A5000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t8, 0x002A(s2)             # 000000AA
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t1, t9, $at                # t1 = 285A5000
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    sll     t5, s4,  2                 
    subu    t5, t5, s4                 
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    lbu     t4, 0x0025(s2)             # 000000A5
    lw      a0, 0x0000(s7)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addu    v1, t4, t5                 
    sll     a3, v1,  2                 
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0028($sp)            
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    addu    a3, a3, v1                 
    or      a2, v1, $zero              # a2 = 00000000
    sw      t6, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x00D0($sp)            
    lw      t0, 0x00D0($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000080
    lwc1    $f14, 0x0004(s2)           # 00000084
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000088
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 06008678
    lwc1    $f12, 0x0030(s2)           # 000000B0
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x00CC($sp)            
    lw      a1, 0x00CC($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t5, 0x0070($sp)            
    sw      t5, 0x0004(s0)             # 00000004
lbl_80A365A4:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0064            
    bne     $at, $zero, lbl_80A36420   
    addiu   s2, s2, 0x0040             # s2 = 000000C0
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x0114($sp)            
    or      s4, $zero, $zero           # s4 = 00000000
lbl_80A365C8:
    lbu     t6, 0x0024(s2)             # 000000E4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t7, 0x0600                 # t7 = 06000000
    bne     t6, $at, lbl_80A366C0      
    addiu   t7, t7, 0x34C0             # t7 = 060034C0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s3, s7, $at                
    bne     s5, $zero, lbl_80A3664C    
    sw      t7, 0x0070($sp)            
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x3460             # t9 = 06003460
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0x9696                 # t3 = 96960000
    ori     t3, t3, 0x9600             # t3 = 96969600
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(s0)             # 00000000
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A3664C:
    lwc1    $f12, 0x0000(s2)           # 000000C0
    lwc1    $f14, 0x0004(s2)           # 000000C4
    lw      a2, 0x0008(s2)             # 000000C8
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 06008678
    lwc1    $f12, 0x0030(s2)           # 000000F0
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x00B8($sp)            
    lw      a1, 0x00B8($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t9, 0x0070($sp)            
    sw      t9, 0x0004(s0)             # 00000004
lbl_80A366C0:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0064            
    bne     $at, $zero, lbl_80A365C8   
    addiu   s2, s2, 0x0040             # s2 = 00000100
    lw      t1, 0x0114($sp)            
    lui     $at, %hi(var_80A4544C)     # $at = 80A40000
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s2, t1, 0x0780             # s2 = 00000780
    sw      s2, 0x0070($sp)            
    lwc1    $f20, %lo(var_80A4544C)($at) 
    addiu   s4, $zero, 0x001E          # s4 = 0000001E
lbl_80A366F4:
    lbu     t3, 0x0024(s2)             # 000007A4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     s3, 0x0600                 # s3 = 06000000
    bnel    t3, $at, lbl_80A367F4      
    addiu   s4, s4, 0x0001             # s4 = 0000001F
    bne     s5, $zero, lbl_80A36760    
    addiu   s3, s3, 0x3760             # s3 = 06003760
    lw      a0, 0x02D0(s1)             # 000002D0
    jal     func_8007DFBC              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFCFF                 # t5 = FCFF0000
    lui     t6, 0xFFFD                 # t6 = FFFD0000
    ori     t6, t6, 0xF6FB             # t6 = FFFDF6FB
    ori     t5, t5, 0xFFFF             # t5 = FCFFFFFF
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x96FF                 # t8 = 96FF0000
    ori     t8, t8, 0xFF1E             # t8 = 96FFFF1E
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A36760:
    lwc1    $f12, 0x0000(s2)           # 00000780
    lwc1    $f14, 0x0004(s2)           # 00000784
    lw      a2, 0x0008(s2)             # 00000788
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0038(s2)           # 000007B8
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s2)           # 000007B4
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s2)           # 000007BC
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mov.s   $f12, $f20                 
    mov.s   $f14, $f22                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x00A8($sp)            
    lw      a1, 0x00A8($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000020
lbl_80A367F4:
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0082            
    bne     $at, $zero, lbl_80A366F4   
    addiu   s2, s2, 0x0040             # s2 = 000007C0
    or      s5, $zero, $zero           # s5 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s7)             # 00000000
    lw      s2, 0x0070($sp)            
    addiu   s4, $zero, 0x001E          # s4 = 0000001E
lbl_80A3681C:
    lbu     t3, 0x0024(s2)             # 000007E4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lui     s3, 0x0601                 # s3 = 06010000
    bne     t3, $at, lbl_80A368FC      
    or      a3, $zero, $zero           # a3 = 00000000
    bne     s5, $zero, lbl_80A36894    
    addiu   s3, s3, 0x8678             # s3 = 06008678
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x8610             # t5 = 06008610
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x9B9B                 # t8 = 9B9B0000
    ori     t8, t8, 0x9B00             # t8 = 9B9B9B00
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t1, $zero, 0xFF82          # t1 = FFFFFF82
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_80A36894:
    lwc1    $f12, 0x0000(s2)           # 000007C0
    lwc1    $f14, 0x0004(s2)           # 000007C4
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 000007C8
    lwc1    $f12, 0x0030(s2)           # 000007F0
    mov.s   $f14, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0094($sp)            
    lw      a1, 0x0094($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
lbl_80A368FC:
    addiu   s4, s4, 0x0001             # s4 = 0000001F
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0082            
    bne     $at, $zero, lbl_80A3681C   
    addiu   s2, s2, 0x0040             # s2 = 00000800
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x0070($sp)            
    addiu   s4, $zero, 0x001E          # s4 = 0000001E
lbl_80A36920:
    lbu     t5, 0x0024(s2)             # 00000824
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     t6, 0x0600                 # t6 = 06000000
    bne     t5, $at, lbl_80A36A50      
    addiu   t6, t6, 0x3A18             # t6 = 06003A18
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s3, s7, $at                
    bne     s5, $zero, lbl_80A3699C    
    sw      t6, 0x0070($sp)            
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x39A8             # t8 = 060039A8
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lw      t1, -0x4600(t1)            # 8011BA00
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
    lh      t2, 0x09FA(t1)             # 801209FA
    addiu   t3, t2, 0x0050             # t3 = 00000050
    andi    t4, t3, 0x00FF             # t4 = 00000050
    or      t5, t4, $at                # t5 = FFFFFF50
    sw      t5, 0x0004(s0)             # 00000004
lbl_80A3699C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80A45450)     # $at = 80A40000
    or      a3, $zero, $zero           # a3 = 00000000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A369D0               
    nop
    mtc1    $zero, $f20                # $f20 = 0.00
    beq     $zero, $zero, lbl_80A369D8 
    lwc1    $f12, 0x0000(s2)           # 00000800
lbl_80A369D0:
    lwc1    $f20, %lo(var_80A45450)($at) 
    lwc1    $f12, 0x0000(s2)           # 00000800
lbl_80A369D8:
    lwc1    $f14, 0x0004(s2)           # 00000804
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000808
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 06008678
    mov.s   $f12, $f20                 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0030(s2)           # 00000830
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0084($sp)            
    lw      a1, 0x0084($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t9, 0x0070($sp)            
    sw      t9, 0x0004(s0)             # 00000004
lbl_80A36A50:
    addiu   s4, s4, 0x0001             # s4 = 0000001F
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0082            
    bne     $at, $zero, lbl_80A36920   
    addiu   s2, s2, 0x0040             # s2 = 00000840
    lw      t1, 0x0114($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t2, 0x0024(t1)             # 00000024
    bne     t2, $at, lbl_80A36B8C      
    nop
    lwc1    $f12, 0x0000(t1)           # 00000000
    lwc1    $f14, 0x0004(t1)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(t1)             # 00000008
    lui     s0, %hi(var_80A47F0C)      # s0 = 80A40000
    addiu   s0, s0, %lo(var_80A47F0C)  # s0 = 80A47F0C
    lh      t3, 0x0002(s0)             # 80A47F0E
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f20                  # $f20 = 32768.00
    mtc1    t3, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A45454)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45454)($at) 
    cvt.s.w $f8, $f6                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f16, $f8, $f10            
    jal     func_800AAB94              
    div.s   $f12, $f16, $f20           
    lh      t4, 0x0000(s0)             # 80A47F0C
    lui     $at, %hi(var_80A45458)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45458)($at) 
    mtc1    t4, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f4, $f18                  
    mul.s   $f8, $f4, $f6              
    jal     func_800AA9E0              
    div.s   $f12, $f8, $f20            
    lh      t5, 0x0004(s0)             # 80A47F10
    lui     $at, %hi(var_80A4545C)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A4545C)($at) 
    mtc1    t5, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    jal     func_800AAD4C              
    div.s   $f12, $f4, $f20            
    lw      t6, 0x0114($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0030(t6)           # 00000030
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_80A45460)     # $at = 80A40000
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f12, %lo(var_80A45460)($at) 
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80A45464)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45464)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s2, 0x0008             # t7 = 00000848
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s2)             # 00000840
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s2)             # 00000844
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x74C8             # t2 = 060074C8
    addiu   t9, s0, 0x0008             # t9 = 80A47F14
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0004(s0)             # 80A47F10
    sw      s6, 0x0000(s0)             # 80A47F0C
lbl_80A36B8C:
    jal     func_800AA724              
    nop
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0128           # $sp = 00000000


func_80A36BCC:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0058($sp)            
    lw      t6, 0x0058($sp)            
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    lw      s0, 0x0000(t6)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0058($sp)            
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addu    v0, v0, t9                 
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sll     t4, v0,  1                 
    subu    t5, $zero, t4              
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0024($sp)            
    sw      t5, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t7, 0x0028($sp)            
    sw      $zero, 0x0020($sp)         
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x0048($sp)            
    or      a2, v0, $zero              # a2 = 00010000
    jal     func_8007EB84              
    sll     a3, v0,  3                 
    lw      t0, 0x0048($sp)            
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, %hi(var_80A45468)     # $at = 80A40000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xC3E1                 # t1 = C3E10000
    ori     t1, t1, 0xEB32             # t1 = C3E1EB32
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lwc1    $f12, %lo(var_80A45468)($at) 
    lui     $at, 0xC1C0                # $at = C1C00000
    mtc1    $at, $f14                  # $f14 = -24.00
    lui     a2, 0xC416                 # a2 = C4160000
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80A4546C)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A4546C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0058($sp)            
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0040($sp)            
    lw      a2, 0x0040($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     a1, 0x0600                 # a1 = 06000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, 0x3230             # a1 = 06003230
    sll     t7, a1,  4                 
    srl     t8, t7, 28                 
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sll     t9, t8,  2                 
    lui     t1, 0x8012                 # t1 = 80120000
    addu    t1, t1, t9                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t1, 0x0C38(t1)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80A36D50:
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    lui     $at, 0x4316                # $at = 43160000
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.le.s  $f12, $f0                  
    nop
    bc1fl   lbl_80A36DC0               
    c.le.s  $f12, $f0                  
    mtc1    $at, $f4                   # $f4 = 150.00
    lui     $at, 0x44AF                # $at = 44AF0000
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A36DC0               
    c.le.s  $f12, $f0                  
    lwc1    $f2, 0x0008(a0)            # 00000008
    mtc1    $at, $f6                   # $f6 = 1400.00
    lui     $at, 0x4491                # $at = 44910000
    c.le.s  $f2, $f6                   
    nop
    bc1fl   lbl_80A36DC0               
    c.le.s  $f12, $f0                  
    mtc1    $at, $f8                   # $f8 = 1160.00
    nop
    c.le.s  $f8, $f2                   
    nop
    bc1tl   lbl_80A36E18               
    lui     $at, 0x4228                # $at = 42280000
    c.le.s  $f12, $f0                  
lbl_80A36DC0:
    lui     $at, 0x4352                # $at = 43520000
    bc1fl   lbl_80A36E3C               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f10                  # $f10 = 210.00
    lui     $at, 0x4496                # $at = 44960000
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A36E3C               
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f2, 0x0008(a0)            # 00000008
    mtc1    $at, $f16                  # $f16 = 1200.00
    lui     $at, 0x4491                # $at = 44910000
    c.le.s  $f2, $f16                  
    nop
    bc1fl   lbl_80A36E3C               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f18                  # $f18 = 1160.00
    nop
    c.le.s  $f18, $f2                  
    nop
    bc1f    lbl_80A36E38               
    lui     $at, 0x4228                # $at = 42280000
lbl_80A36E18:
    mtc1    $at, $f4                   # $f4 = 42.00
    lwc1    $f6, 0x0004(a0)            # 00000004
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80A36E3C               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A36E38:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A36E3C:
    jr      $ra                        
    nop


func_80A36E44:
    addiu   $sp, $sp, 0xFF08           # $sp = FFFFFF08
    sw      s6, 0x0060($sp)            
    sw      s4, 0x0058($sp)            
    or      s4, a2, $zero              # s4 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s5, 0x005C($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x00FC($sp)            
    sw      a3, 0x0104($sp)            
    lui     t7, %hi(var_80A45238)      # t7 = 80A40000
    addiu   t7, t7, %lo(var_80A45238)  # t7 = 80A45238
    lw      t9, 0x0000(t7)             # 80A45238
    addiu   t6, $sp, 0x00C0            # t6 = FFFFFFC8
    lw      t8, 0x0004(t7)             # 80A4523C
    sw      t9, 0x0000(t6)             # FFFFFFC8
    lw      t9, 0x0008(t7)             # 80A45240
    lui     t0, %hi(var_80A44A84)      # t0 = 80A40000
    sw      t8, 0x0004(t6)             # FFFFFFCC
    sw      t9, 0x0008(t6)             # FFFFFFD0
    lbu     t0, %lo(var_80A44A84)(t0)  
    lw      t2, 0x00FC($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
    beq     t0, $zero, lbl_80A36F98    
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    lw      t4, 0x0000(t2)             # 00000000
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFFAC
    addiu   t5, $sp, 0x0098            # t5 = FFFFFFA0
    sw      t4, 0x0000(t1)             # FFFFFFAC
    lw      t3, 0x0004(t2)             # 00000004
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    sw      t3, 0x0004(t1)             # FFFFFFB0
    lw      t4, 0x0008(t2)             # 00000008
    lui     $at, %hi(var_80A45470)     # $at = 80A40000
    sw      t4, 0x0008(t1)             # FFFFFFB4
    lw      t7, 0x0954(s4)             # 00000954
    sw      t7, 0x0000(t5)             # FFFFFFA0
    lw      t6, 0x0958(s4)             # 00000958
    sw      t6, 0x0004(t5)             # FFFFFFA4
    lw      t7, 0x095C(s4)             # 0000095C
    sw      t7, 0x0008(t5)             # FFFFFFA8
    lwc1    $f6, 0x00A4($sp)           
    lwc1    $f4, 0x0098($sp)           
    lwc1    $f10, 0x00A8($sp)          
    lwc1    $f8, 0x009C($sp)           
    sub.s   $f26, $f4, $f6             
    lwc1    $f6, 0x00AC($sp)           
    lwc1    $f4, 0x00A0($sp)           
    sub.s   $f12, $f8, $f10            
    mul.s   $f8, $f26, $f26            
    sub.s   $f14, $f4, $f6             
    mul.s   $f10, $f12, $f12           
    swc1    $f12, 0x0090($sp)          
    mul.s   $f6, $f14, $f14            
    swc1    $f14, 0x008C($sp)          
    add.s   $f4, $f8, $f10             
    lwc1    $f8, %lo(var_80A45470)($at) 
    lui     $at, 0x4348                # $at = 43480000
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    mul.s   $f18, $f0, $f8             
    mtc1    $at, $f0                   # $f0 = 200.00
    c.lt.s  $f20, $f18                 
    nop
    bc1f    lbl_80A36F78               
    nop
    mov.s   $f18, $f20                 
lbl_80A36F78:
    mul.s   $f10, $f18, $f0            
    lui     $at, %hi(var_80A45474)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45474)($at) 
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    swc1    $f26, 0x0094($sp)          
    mul.s   $f6, $f10, $f4             
    sub.s   $f8, $f0, $f6              
    swc1    $f8, %lo(var_80A47FB4)($at) 
lbl_80A36F98:
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47FB4)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    trunc.w.s $f4, $f10                  
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x3F80                # $at = 3F800000
    mfc1    s2, $f4                    
    mtc1    $at, $f22                  # $f22 = 1.00
    lwc1    $f26, 0x0094($sp)          
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    swc1    $f6, 0x00C8($sp)           
    slt     $at, s2, s1                
lbl_80A36FD4:
    bne     $at, $zero, lbl_80A37008   
    lui     t4, %hi(var_80A44A84)      # t4 = 80A40000
    multu   s1, s3                     
    lw      t1, 0x00FC($sp)            
    lw      t3, 0x0000(t1)             # FFFFFFAC
    mflo    t9                         
    addu    t0, s4, t9                 
    sw      t3, 0x0000(t0)             # 80A40000
    lw      t2, 0x0004(t1)             # FFFFFFB0
    sw      t2, 0x0004(t0)             # 80A40004
    lw      t3, 0x0008(t1)             # FFFFFFB4
    beq     $zero, $zero, lbl_80A370B0 
    sw      t3, 0x0008(t0)             # 80A40008
lbl_80A37008:
    lbu     t4, %lo(var_80A44A84)(t4)  
    addiu   t7, $zero, 0x00C9          # t7 = 000000C9
    subu    t8, t7, s2                 
    beq     t4, $zero, lbl_80A370B0    
    subu    t6, s1, s2                 
    mtc1    t6, $f8                    # $f8 = NaN
    mtc1    t8, $f4                    # $f4 = 0.00
    multu   s1, s3                     
    cvt.s.w $f10, $f8                  
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    cvt.s.w $f6, $f4                   
    lwc1    $f4, 0x00A4($sp)           
    mflo    t5                         
    addu    s0, t5, s4                 
    div.s   $f20, $f10, $f6            
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f26, $f20            
    add.s   $f10, $f8, $f4             
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f6, 0x0090($sp)           
    lwc1    $f4, 0x00A8($sp)           
    mfc1    a2, $f22                   
    mul.s   $f8, $f6, $f20             
    mfc1    a3, $f24                   
    addiu   a0, s0, 0x0004             # a0 = 00000004
    add.s   $f10, $f8, $f4             
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f6, 0x008C($sp)           
    lwc1    $f4, 0x00AC($sp)           
    mfc1    a2, $f22                   
    mul.s   $f8, $f6, $f20             
    mfc1    a3, $f24                   
    addiu   a0, s0, 0x0008             # a0 = 00000008
    add.s   $f10, $f8, $f4             
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
lbl_80A370B0:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x00C8            
    bnel    $at, $zero, lbl_80A36FD4   
    slt     $at, s2, s1                
    addiu   v0, s2, 0x0001             # v0 = 00000001
    sll     t9, v0, 16                 
    sra     t0, t9, 16                 
    slti    $at, t0, 0x00C8            
    sll     s1, v0, 16                 
    sra     s1, s1, 16                 
    beq     $at, $zero, lbl_80A37390   
    or      s5, $zero, $zero           # s5 = 00000000
    lui     $at, %hi(var_80A45478)     # $at = 80A40000
    lwc1    $f30, %lo(var_80A45478)($at) 
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f28                  # $f28 = 920.00
    nop
lbl_80A370FC:
    multu   s1, s3                     
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A47FB8)($at) 
    lui     $at, %hi(var_80A4547C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A4547C)($at) 
    lui     t7, %hi(var_80A47F26)      # t7 = 80A40000
    add.s   $f18, $f2, $f2             
    mflo    s2                         
    addu    s0, s2, s4                 
    lwc1    $f0, 0x0000(s0)            # 00000000
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f6, -0x000C(s0)           # FFFFFFF4
    mul.s   $f8, $f0, $f0              
    lwc1    $f16, 0x0004(s0)           # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f12, $f12            
    sub.s   $f26, $f0, $f6             
    add.s   $f14, $f8, $f4             
    c.lt.s  $f10, $f14                 
    nop
    bc1fl   lbl_80A3718C               
    lw      t4, 0x07C0(s6)             # 000007C0
    sqrt.s  $f0, $f14                  
    lw      t1, 0x07C0(s6)             # 000007C0
    lui     $at, %hi(var_80A45480)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45480)($at) 
    lw      t2, 0x0028(t1)             # 00000028
    lh      t3, 0x0002(t2)             # 00000002
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
    sub.s   $f8, $f0, $f28             
    mul.s   $f10, $f8, $f4             
    beq     $zero, $zero, lbl_80A371A4 
    add.s   $f12, $f10, $f2            
    lw      t4, 0x07C0(s6)             # 000007C0
lbl_80A3718C:
    lw      t5, 0x0028(t4)             # 00000028
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
    mov.s   $f12, $f2                  
lbl_80A371A4:
    lbu     t7, %lo(var_80A47F26)(t7)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_80A37258      
    slti    $at, s1, 0x00BF            
    c.lt.s  $f16, $f12                 
    nop
    bc1fl   lbl_80A3724C               
    sub.s   $f16, $f16, $f18           
    sqrt.s  $f0, $f14                  
    lui     $at, %hi(var_80A45484)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45484)($at) 
    lui     $at, %hi(var_80A45488)     # $at = 80A40000
    sub.s   $f8, $f0, $f28             
    mul.s   $f10, $f8, $f4             
    add.s   $f12, $f10, $f2            
    c.lt.s  $f12, $f16                 
    nop
    bc1f    lbl_80A372B0               
    nop
    sub.s   $f6, $f16, $f12            
    lwc1    $f8, %lo(var_80A45488)($at) 
    slti    $at, s1, 0x0064            
    addiu   t8, s1, 0xFF9C             # t8 = FFFFFF9D
    mul.s   $f2, $f6, $f8              
    c.lt.s  $f30, $f2                  
    nop
    bc1f    lbl_80A37218               
    nop
    mov.s   $f2, $f30                  
lbl_80A37218:
    bne     $at, $zero, lbl_80A372B0   
    nop
    mtc1    t8, $f4                    # $f4 = NaN
    lui     $at, %hi(var_80A4548C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4548C)($at) 
    cvt.s.w $f10, $f4                  
    mul.s   $f8, $f10, $f6             
    nop
    mul.s   $f2, $f2, $f8              
    sub.s   $f16, $f16, $f2            
    beq     $zero, $zero, lbl_80A372B0 
    nop
    sub.s   $f16, $f16, $f18           
lbl_80A3724C:
    beq     $zero, $zero, lbl_80A372B0 
    nop
    slti    $at, s1, 0x00BF            
lbl_80A37258:
    bnel    $at, $zero, lbl_80A372A0   
    c.lt.s  $f12, $f16                 
    c.lt.s  $f12, $f16                 
    lui     $at, %hi(var_80A45490)     # $at = 80A40000
    bc1f    lbl_80A372B0               
    nop
    sub.s   $f4, $f16, $f12            
    lwc1    $f10, %lo(var_80A45490)($at) 
    mul.s   $f2, $f4, $f10             
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80A37294               
    sub.s   $f16, $f16, $f2            
    mov.s   $f2, $f18                  
    sub.s   $f16, $f16, $f2            
lbl_80A37294:
    beq     $zero, $zero, lbl_80A372B0 
    nop
    c.lt.s  $f12, $f16                 
lbl_80A372A0:
    nop
    bc1f    lbl_80A372B0               
    nop
    sub.s   $f16, $f16, $f18           
lbl_80A372B0:
    jal     func_80A36D50              
    swc1    $f16, 0x00D8($sp)          
    beq     v0, $zero, lbl_80A372CC    
    lwc1    $f16, 0x00D8($sp)          
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f16                  # $f16 = 42.00
    nop
lbl_80A372CC:
    lwc1    $f8, 0x0008(s0)            # 00000008
    lwc1    $f4, -0x0004(s0)           # FFFFFFFC
    lwc1    $f6, -0x0008(s0)           # FFFFFFF8
    mov.s   $f14, $f26                 
    sub.s   $f20, $f8, $f4             
    sub.s   $f24, $f16, $f6            
    jal     func_800AA670              
    mov.s   $f12, $f20                 
    mul.s   $f10, $f26, $f26           
    mov.s   $f22, $f0                  
    mov.s   $f14, $f24                 
    mul.s   $f6, $f20, $f20            
    add.s   $f0, $f10, $f6             
    jal     func_800AA670              
    sqrt.s  $f12, $f0                  
    lw      t9, 0x0104($sp)            
    neg.s   $f20, $f0                  
    mov.s   $f12, $f22                 
    addu    v0, t9, s2                 
    swc1    $f22, -0x0008(v0)          # FFFFFFF8
    swc1    $f20, -0x000C(v0)          # FFFFFFF4
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    mov.s   $f12, $f20                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFC8
    jal     func_800AB958              
    addiu   a1, $sp, 0x00B4            # a1 = FFFFFFBC
    lwc1    $f8, -0x000C(s0)           # FFFFFFF4
    lwc1    $f4, 0x00B4($sp)           
    lwc1    $f6, -0x0008(s0)           # FFFFFFF8
    addiu   s1, s1, 0x0001             # s1 = 00000002
    add.s   $f10, $f8, $f4             
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    addiu   s5, s5, 0x0001             # s5 = 00000001
    swc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f8, 0x00B8($sp)           
    lwc1    $f10, -0x0004(s0)          # FFFFFFFC
    sll     s5, s5, 16                 
    add.s   $f4, $f6, $f8              
    slti    $at, s1, 0x00C8            
    sra     s5, s5, 16                 
    swc1    $f4, 0x0004(s0)            # 00000004
    lwc1    $f6, 0x00BC($sp)           
    add.s   $f8, $f10, $f6             
    bne     $at, $zero, lbl_80A370FC   
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_80A37390:
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
    addiu   $sp, $sp, 0x00F8           # $sp = 00000000


func_80A373D0:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x0070            # s4 = FFFFFFD8
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     t6, %hi(var_80A45244)      # t6 = 80A40000
    addiu   t6, t6, %lo(var_80A45244)  # t6 = 80A45244
    lw      t8, 0x0000(t6)             # 80A45244
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    addiu   s1, $zero, 0x00C6          # s1 = 000000C6
    sw      t8, 0x0000(s4)             # FFFFFFD8
    lw      t7, 0x0004(t6)             # 80A45248
    addiu   s6, $sp, 0x0064            # s6 = FFFFFFCC
    addiu   s5, $zero, 0x000C          # s5 = 0000000C
    sw      t7, 0x0004(s4)             # FFFFFFDC
    lw      t8, 0x0008(t6)             # 80A4524C
    sw      t8, 0x0008(s4)             # FFFFFFE0
    lwc1    $f4, %lo(var_80A47FB4)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    trunc.w.s $f6, $f4                   
    swc1    $f8, 0x0078($sp)           
    mfc1    s2, $f6                    
    nop
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x00C6            
    beql    $at, $zero, lbl_80A37534   
    lw      $ra, 0x0054($sp)           
lbl_80A3746C:
    multu   s1, s5                     
    mflo    t0                         
    addu    s0, t0, s3                 
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f6, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x0014(s0)            # 00000014
    sub.s   $f20, $f10, $f16           
    lwc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f4, 0x0010(s0)            # 00000010
    sub.s   $f22, $f6, $f8             
    mov.s   $f14, $f20                 
    sub.s   $f24, $f18, $f4            
    jal     func_800AA670              
    mov.s   $f12, $f22                 
    mul.s   $f10, $f20, $f20           
    mov.s   $f26, $f0                  
    mov.s   $f14, $f24                 
    mul.s   $f16, $f22, $f22           
    add.s   $f0, $f10, $f16            
    jal     func_800AA670              
    sqrt.s  $f12, $f0                  
    neg.s   $f20, $f0                  
    mov.s   $f12, $f26                 
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    mov.s   $f12, $f20                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s4, $zero              # a0 = FFFFFFD8
    jal     func_800AB958              
    or      a1, s6, $zero              # a1 = FFFFFFCC
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lwc1    $f4, 0x0064($sp)           
    lwc1    $f8, 0x0010(s0)            # 00000010
    addiu   s1, s1, 0xFFFF             # s1 = 000000C5
    add.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0014(s0)           # 00000014
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0068($sp)          
    slt     $at, s2, s1                
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0004(s0)           # 00000004
    lwc1    $f4, 0x006C($sp)           
    add.s   $f6, $f18, $f4             
    bne     $at, $zero, lbl_80A3746C   
    swc1    $f6, 0x0008(s0)            # 00000008
    lw      $ra, 0x0054($sp)           
lbl_80A37534:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80A37568:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a1, 0x00CC($sp)            
    sw      a2, 0x00D0($sp)            
    sw      a3, 0x00D4($sp)            
    lui     t7, %hi(var_80A45250)      # t7 = 80A40000
    addiu   t7, t7, %lo(var_80A45250)  # t7 = 80A45250
    lw      t9, 0x0000(t7)             # 80A45250
    addiu   t6, $sp, 0x00A0            # t6 = FFFFFFD8
    lw      t8, 0x0004(t7)             # 80A45254
    sw      t9, 0x0000(t6)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80A45258
    sw      t8, 0x0004(t6)             # FFFFFFDC
    sw      t9, 0x0008(t6)             # FFFFFFE0
    lw      t0, 0x1C44(a0)             # 00001C44
    sw      t0, 0x0090($sp)            
    lw      s0, 0x0000(a0)             # 00000000
    jal     func_800AA6EC              
    sw      a0, 0x00C8($sp)            
    lui     t1, %hi(var_80A44A74)      # t1 = 80A40000
    lh      t1, %lo(var_80A44A74)(t1)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      v0, 0x00CC($sp)            
    bne     t1, $at, lbl_80A37628      
    lw      v1, 0x00D0($sp)            
    lw      t2, 0x00C8($sp)            
    lwc1    $f2, 0x0004(v0)            # 00000004
    lui     t6, %hi(var_80A44A6C)      # t6 = 80A40000
    lw      t3, 0x07C0(t2)             # 000007C0
    lw      t4, 0x0028(t3)             # 00000028
    lh      t5, 0x0002(t4)             # 00000002
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f2                   
    nop
    bc1tl   lbl_80A37620               
    mtc1    $zero, $f0                 # $f0 = 0.00
    lbu     t6, %lo(var_80A44A6C)(t6)  
    lbu     t7, 0x00D7($sp)            
    beql    t6, $zero, lbl_80A3762C    
    lw      t8, 0x00C8($sp)            
    beql    t7, $zero, lbl_80A3762C    
    lw      t8, 0x00C8($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80A37620:
    beq     $zero, $zero, lbl_80A37678 
    lwc1    $f6, 0x0004(v1)            # 00000004
lbl_80A37628:
    lw      t8, 0x00C8($sp)            
lbl_80A3762C:
    lwc1    $f2, 0x0004(v0)            # 00000004
    lui     $at, 0xC040                # $at = C0400000
    lw      t9, 0x07C0(t8)             # 000007C0
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f2, $f10                  
    nop
    bc1fl   lbl_80A37670               
    mtc1    $at, $f0                   # $f0 = -3.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    beq     $zero, $zero, lbl_80A37678 
    lwc1    $f6, 0x0004(v1)            # 00000004
    mtc1    $at, $f0                   # $f0 = -1.00
lbl_80A37670:
    nop
    lwc1    $f6, 0x0004(v1)            # 00000004
lbl_80A37678:
    lwc1    $f18, 0x0000(v1)           # 00000000
    lwc1    $f4, 0x0000(v0)            # 00000000
    sub.s   $f8, $f6, $f2              
    sub.s   $f14, $f18, $f4            
    add.s   $f10, $f8, $f0             
    swc1    $f10, 0x00C0($sp)          
    lwc1    $f4, 0x0008(v0)            # 00000008
    lwc1    $f18, 0x0008(v1)           # 00000008
    swc1    $f14, 0x00C4($sp)          
    sub.s   $f12, $f18, $f4            
    jal     func_800AA670              
    swc1    $f12, 0x00BC($sp)          
    lwc1    $f2, 0x00C4($sp)           
    lwc1    $f16, 0x00BC($sp)          
    swc1    $f0, 0x00B4($sp)           
    mul.s   $f6, $f2, $f2              
    lwc1    $f14, 0x00C0($sp)          
    mul.s   $f8, $f16, $f16            
    add.s   $f0, $f6, $f8              
    jal     func_800AA670              
    sqrt.s  $f12, $f0                  
    neg.s   $f10, $f0                  
    lwc1    $f12, 0x00B4($sp)          
    swc1    $f10, 0x00B8($sp)          
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f12, 0x00B8($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFD8
    jal     func_800AB958              
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFCC
    lw      v0, 0x00CC($sp)            
    lwc1    $f4, 0x0094($sp)           
    lw      v1, 0x00D0($sp)            
    lwc1    $f18, 0x0000(v0)           # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0000(v1)            # 00000000
    lwc1    $f10, 0x0098($sp)          
    lwc1    $f8, 0x0004(v0)            # 00000004
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x0004(v1)           # 00000004
    lwc1    $f6, 0x009C($sp)           
    lwc1    $f4, 0x0008(v0)            # 00000008
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(v1)            # 00000008
    lw      a2, 0x0008(v0)             # 00000008
    lwc1    $f14, 0x0004(v0)           # 00000004
    jal     func_800AA7F4              
    lwc1    $f12, 0x0000(v0)           # 00000000
    lw      t2, 0x0090($sp)            
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f18, 0x0068(t2)           # 00000068
    c.eq.s  $f10, $f18                 
    nop
    bc1f    lbl_80A377A8               
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A47FA8)($at) 
    mtc1    $zero, $f4                 # $f4 = 0.00
    lbu     t3, 0x00D7($sp)            
    lui     t5, %hi(var_80A49C10)      # t5 = 80A50000
    c.eq.s  $f4, $f6                   
    addiu   t5, t5, %lo(var_80A49C10)  # t5 = 80A49C10
    sll     t4, t3,  2                 
    addu    a0, t4, t5                 
    bc1f    lbl_80A377A8               
    lw      a1, 0x00B4($sp)            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_80064280              
    sw      a0, 0x0028($sp)            
    beq     $zero, $zero, lbl_80A377C4 
    lw      a0, 0x0028($sp)            
lbl_80A377A8:
    lbu     t6, 0x00D7($sp)            
    lwc1    $f8, 0x00B4($sp)           
    lui     t8, %hi(var_80A49C10)      # t8 = 80A50000
    addiu   t8, t8, %lo(var_80A49C10)  # t8 = 80A49C10
    sll     t7, t6,  2                 
    addu    a0, t7, t8                 
    swc1    $f8, 0x0000(a0)            # 00000000
lbl_80A377C4:
    lwc1    $f12, 0x0000(a0)           # 00000000
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x00B8($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A45494)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45494)($at) 
    lui     a2, 0x3BA3                 # a2 = 3BA30000
    ori     a2, a2, 0xD70A             # a2 = 3BA3D70A
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_80A45498)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45498)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x00C8($sp)            
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0084($sp)            
    lw      a2, 0x0084($sp)            
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     $at, %hi(var_80A4549C)     # $at = 80A40000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x2160             # a3 = 06012160
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      a3, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lwc1    $f12, %lo(var_80A4549C)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C              
    sw      a3, 0x0028($sp)            
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x00C8($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x007C($sp)            
    lw      a1, 0x007C($sp)            
    lui     t1, %hi(var_80A44A6C)      # t1 = 80A40000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)            
    sw      t9, 0x0004(v1)             # 00000004
    lbu     t0, 0x00D7($sp)            
    bne     t0, $at, lbl_80A37A30      
    nop
    lbu     t1, %lo(var_80A44A6C)(t1)  
    lui     $at, 0x4000                # $at = 40000000
    beq     t1, $zero, lbl_80A37A30    
    nop
    mtc1    $at, $f12                  # $f12 = 2.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f12                  # $f12 = 250.00
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     a2, 0xC4AF                 # a2 = C4AF0000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA6EC              
    nop
    lui     t2, %hi(var_80A44A70)      # t2 = 80A40000
    lbu     t2, %lo(var_80A44A70)(t2)  
    lw      t3, 0x00C8($sp)            
    lui     a3, 0x0001                 # a3 = 00010000
    beq     t2, $zero, lbl_80A379B0    
    addu    a3, a3, t3                 
    lw      a1, 0x1E10(a3)             # 00011E10
    lui     a0, %hi(var_80A44C7C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44C7C)  # a0 = 80A44C7C
    jal     func_800AB958              
    sw      a1, 0x0074($sp)            
    jal     func_800AA740              
    addiu   a0, $sp, 0x0034            # a0 = FFFFFF6C
    lui     a1, %hi(var_80A47F0C)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F0C)  # a1 = 80A47F0C
    addiu   a0, $sp, 0x0034            # a0 = FFFFFF6C
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, %hi(var_80A44A70)     # $at = 80A40000
    lw      a3, 0x0074($sp)            
    sb      $zero, %lo(var_80A44A70)($at) 
    lui     $at, %hi(var_80A44A6C)     # $at = 80A40000
    sb      $zero, %lo(var_80A44A6C)($at) 
    lui     v0, %hi(var_80A44C7C)      # v0 = 80A40000
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    addiu   v0, v0, %lo(var_80A44C7C)  # v0 = 80A44C7C
    sb      t4, 0x0024(a3)             # 00000024
    sh      $zero, 0x002C(a3)          # 0000002C
    lw      t6, 0x0000(v0)             # 80A44C7C
    sw      t6, 0x000C(a3)             # 0000000C
    lw      t5, 0x0004(v0)             # 80A44C80
    sw      t5, 0x0010(a3)             # 00000010
    lw      t6, 0x0008(v0)             # 80A44C84
    sw      t6, 0x0014(a3)             # 00000014
    lw      t8, 0x0000(v0)             # 80A44C7C
    sw      t8, 0x0018(a3)             # 00000018
    lw      t7, 0x0004(v0)             # 80A44C80
    sw      t7, 0x001C(a3)             # 0000001C
    lw      t8, 0x0008(v0)             # 80A44C84
    sw      t8, 0x0020(a3)             # 00000020
lbl_80A379B0:
    jal     func_800AA724              
    nop
    lui     $at, %hi(var_80A454A0)     # $at = 80A40000
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f12, %lo(var_80A454A0)($at) 
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80A454A4)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A454A4)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x00C8($sp)            
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x74C8             # t4 = 060074C8
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
lbl_80A37A30:
    jal     func_800AA724              
    nop
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000
    jr      $ra                        
    nop


func_80A37A4C:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s8, 0x0068($sp)            
    lui     s8, %hi(var_80A49C20)      # s8 = 80A50000
    sw      s7, 0x0064($sp)            
    lui     v1, %hi(var_80A47F28)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F28)  # v1 = 80A47F28
    addiu   s7, $sp, 0x00AC            # s7 = FFFFFFD4
    addiu   s8, s8, %lo(var_80A49C20)  # s8 = 80A49C20
    sw      $ra, 0x006C($sp)           
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     t6, %hi(var_80A4525C)      # t6 = 80A40000
    addiu   t6, t6, %lo(var_80A4525C)  # t6 = 80A4525C
    lw      t8, 0x0000(t6)             # 80A4525C
    lw      t0, 0x0000(v1)             # 80A47F28
    lui     $at, %hi(var_80A454A8)     # $at = 80A40000
    sw      t8, 0x0000(s7)             # FFFFFFD4
    lw      t7, 0x0004(t6)             # 80A45260
    lw      t9, 0x0004(v1)             # 80A47F2C
    lui     t1, %hi(var_80A44AB4)      # t1 = 80A40000
    sw      t7, 0x0004(s7)             # FFFFFFD8
    lw      t8, 0x0008(t6)             # 80A45264
    lui     s6, %hi(var_80A44A74)      # s6 = 80A40000
    addiu   s6, s6, %lo(var_80A44A74)  # s6 = 80A44A74
    sw      t8, 0x0008(s7)             # FFFFFFDC
    lwc1    $f4, %lo(var_80A454A8)($at) 
    lw      v0, 0x1C44(a0)             # 00001C44
    sw      t0, 0x0000(s8)             # 80A49C20
    lw      t0, 0x0008(v1)             # 80A47F30
    sw      t9, 0x0004(s8)             # 80A49C24
    lui     $at, 0xBF80                # $at = BF800000
    sw      t0, 0x0008(s8)             # 80A49C28
    lbu     t1, %lo(var_80A44AB4)(t1)  
    swc1    $f4, 0x00B4($sp)           
    beql    t1, $zero, lbl_80A37B18    
    lw      t2, 0x07C0(a0)             # 000007C0
    mtc1    $at, $f6                   # $f6 = -1.00
    beq     $zero, $zero, lbl_80A37B60 
    swc1    $f6, 0x00B8($sp)           
    lw      t2, 0x07C0(a0)             # 000007C0
lbl_80A37B18:
    lwc1    $f8, 0x0004(v1)            # 80A47F2C
    lui     $at, 0xC0A0                # $at = C0A00000
    lw      t3, 0x0028(t2)             # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    c.lt.s  $f8, $f18                  
    nop
    bc1fl   lbl_80A37B58               
    mtc1    $at, $f6                   # $f6 = -5.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    beq     $zero, $zero, lbl_80A37B60 
    swc1    $f4, 0x00B8($sp)           
    mtc1    $at, $f6                   # $f6 = 0.50
lbl_80A37B58:
    nop
    swc1    $f6, 0x00B8($sp)           
lbl_80A37B60:
    lh      t5, 0x0000(s6)             # 80A44A74
    addiu   s5, $zero, 0x0005          # s5 = 00000005
    bne     s5, t5, lbl_80A37BC0       
    nop
    lh      t6, 0x00B6(v0)             # 000000B6
    lui     $at, %hi(var_80A454AC)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A454AC)($at) 
    mtc1    t6, $f10                   # $f10 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f8, $f10                  
    mul.s   $f12, $f8, $f18            
    jal     func_800AAB94              
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $zero, $f30                # $f30 = 0.00
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   a0, $sp, 0x0094            # a0 = FFFFFFBC
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFB0
    swc1    $f4, 0x0094($sp)           
    swc1    $f30, 0x0098($sp)          
    jal     func_800AB958              
    swc1    $f6, 0x009C($sp)           
lbl_80A37BC0:
    lui     $at, %hi(var_80A454B0)     # $at = 80A40000
    mtc1    $zero, $f30                # $f30 = 0.00
    lwc1    $f28, %lo(var_80A454B0)($at) 
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   s4, $sp, 0x00A0            # s4 = FFFFFFC8
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    addiu   s2, $zero, 0x000A          # s2 = 0000000A
lbl_80A37BDC:
    slti    $at, s1, 0x000A            
    beql    $at, $zero, lbl_80A37C30   
    mov.s   $f16, $f30                 
    lh      t7, 0x0000(s6)             # 80A44A74
    subu    t8, s2, s1                 
    bnel    s5, t7, lbl_80A37C30       
    mov.s   $f16, $f30                 
    mtc1    t8, $f10                   # $f10 = 0.00
    lwc1    $f8, 0x0088($sp)           
    lwc1    $f4, 0x0090($sp)           
    cvt.s.w $f0, $f10                  
    mul.s   $f18, $f0, $f8             
    nop
    mul.s   $f2, $f18, $f28            
    nop
    mul.s   $f6, $f0, $f4              
    nop
    mul.s   $f16, $f6, $f28            
    beq     $zero, $zero, lbl_80A37C34 
    nop
    mov.s   $f16, $f30                 
lbl_80A37C30:
    mov.s   $f2, $f30                  
lbl_80A37C34:
    multu   s1, s3                     
    mflo    t9                         
    addu    s0, t9, s8                 
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f8, -0x000C(s0)           # FFFFFFF4
    lwc1    $f4, 0x0004(s0)            # 00000004
    lwc1    $f6, -0x0008(s0)           # FFFFFFF8
    sub.s   $f18, $f10, $f8            
    lwc1    $f8, 0x00B8($sp)           
    sub.s   $f10, $f4, $f6             
    lwc1    $f4, -0x0004(s0)           # FFFFFFFC
    add.s   $f20, $f18, $f2            
    lwc1    $f18, 0x0008(s0)           # 00000008
    add.s   $f24, $f10, $f8            
    mov.s   $f14, $f20                 
    sub.s   $f6, $f18, $f4             
    add.s   $f22, $f6, $f16            
    jal     func_800AA670              
    mov.s   $f12, $f22                 
    mul.s   $f10, $f20, $f20           
    mov.s   $f26, $f0                  
    mov.s   $f14, $f24                 
    mul.s   $f8, $f22, $f22            
    add.s   $f0, $f10, $f8             
    jal     func_800AA670              
    sqrt.s  $f12, $f0                  
    neg.s   $f20, $f0                  
    mov.s   $f12, $f26                 
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    mov.s   $f12, $f20                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s7, $zero              # a0 = FFFFFFD4
    jal     func_800AB958              
    or      a1, s4, $zero              # a1 = FFFFFFC8
    lwc1    $f18, -0x000C(s0)          # FFFFFFF4
    lwc1    $f4, 0x00A0($sp)           
    lwc1    $f10, -0x0008(s0)          # FFFFFFF8
    lwc1    $f8, 0x00A4($sp)           
    add.s   $f6, $f18, $f4             
    lwc1    $f4, -0x0004(s0)           # FFFFFFFC
    addiu   s1, s1, 0x0001             # s1 = 00000002
    add.s   $f18, $f10, $f8            
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x00A8($sp)           
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    add.s   $f10, $f4, $f6             
    slti    $at, s1, 0x0014            
    swc1    $f18, 0x0004(s0)           # 00000004
    bne     $at, $zero, lbl_80A37BDC   
    swc1    $f10, 0x0008(s0)           # 00000008
    lw      $ra, 0x006C($sp)           
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
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80A37D50:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s6, 0x0038($sp)            
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lw      s3, 0x0000(s6)             # 00000000
    jal     func_80A37A4C              
    or      a0, s6, $zero              # a0 = 00000000
    lw      t6, 0x07C0(s6)             # 000007C0
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F2C)($at) 
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    c.lt.s  $f4, $f8                   
    nop
    bc1f    lbl_80A37ED8               
    nop
    jal     func_8007E298              
    lw      a0, 0x0000(s6)             # 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xB950             # t0 = 0600B950
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s3)             # 000002C0
    sw      t0, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lui     $at, %hi(var_80A454B4)     # $at = 80A40000
    lui     s8, %hi(var_80A49C20)      # s8 = 80A50000
    lui     s5, %hi(var_80A49D10)      # s5 = 80A50000
    addiu   s5, s5, %lo(var_80A49D10)  # s5 = 80A49D10
    addiu   s8, s8, %lo(var_80A49C20)  # s8 = 80A49C20
    lwc1    $f20, %lo(var_80A454B4)($at) 
    addiu   s1, $zero, 0x0013          # s1 = 00000013
    lh      t1, 0x0000(s5)             # 80A49D10
lbl_80A37E08:
    sll     t3, s1,  2                 
    subu    t3, t3, s1                 
    addu    t2, s1, t1                 
    slti    $at, t2, 0x0014            
    beq     $at, $zero, lbl_80A37EBC   
    sll     t3, t3,  2                 
    addu    v0, s8, t3                 
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0xB9C0             # s4 = 0600B9C0
    addu    s0, s6, $at                
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t5, 0x0000(s5)             # 80A49D10
    sll     t4, s1,  2                 
    lui     $at, %hi(var_80A45268)     # $at = 80A40000
    sll     t6, t5,  2                 
    addu    t7, t4, t6                 
    addu    $at, $at, t7               
    lwc1    $f10, %lo(var_80A45268)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f10, $f20           
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    jal     func_800ABE54              
    or      a0, s0, $zero              # a0 = 00000000
    lw      s2, 0x02C0(s3)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s2, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s3)             # 000002C0
    sw      t9, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s3)             # 000002C0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s3)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80A37EBC:
    addiu   s1, s1, 0xFFFF             # s1 = 00000012
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    bgezl   s1, lbl_80A37E08           
    lh      t1, 0x0000(s5)             # 80A49D10
    beq     $zero, $zero, lbl_80A37FEC 
    lw      $ra, 0x0044($sp)           
lbl_80A37ED8:
    jal     func_8007E2C0              
    lw      a0, 0x0000(s6)             # 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xB950             # t2 = 0600B950
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lui     $at, %hi(var_80A454B8)     # $at = 80A40000
    lui     s8, %hi(var_80A49C20)      # s8 = 80A50000
    lui     s5, %hi(var_80A49D10)      # s5 = 80A50000
    addiu   s5, s5, %lo(var_80A49D10)  # s5 = 80A49D10
    addiu   s8, s8, %lo(var_80A49C20)  # s8 = 80A49C20
    lwc1    $f20, %lo(var_80A454B8)($at) 
    addiu   s1, $zero, 0x0013          # s1 = 00000013
    lh      t3, 0x0000(s5)             # 80A49D10
lbl_80A37F20:
    sll     t4, s1,  2                 
    subu    t4, t4, s1                 
    addu    t5, s1, t3                 
    slti    $at, t5, 0x0014            
    beq     $at, $zero, lbl_80A37FD4   
    sll     t4, t4,  2                 
    addu    v0, s8, t4                 
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0xB9C0             # s4 = 0600B9C0
    addu    s0, s6, $at                
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t7, 0x0000(s5)             # 80A49D10
    sll     t6, s1,  2                 
    lui     $at, %hi(var_80A45268)     # $at = 80A40000
    sll     t8, t7,  2                 
    addu    t9, t6, t8                 
    addu    $at, $at, t9               
    lwc1    $f16, %lo(var_80A45268)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f16, $f20           
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    jal     func_800ABE54              
    or      a0, s0, $zero              # a0 = 00000000
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s2, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80A37FD4:
    addiu   s1, s1, 0xFFFF             # s1 = 00000012
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    bgezl   s1, lbl_80A37F20           
    lh      t3, 0x0000(s5)             # 80A49D10
    lw      $ra, 0x0044($sp)           
lbl_80A37FEC:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A3801C:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s4, 0x0028($sp)            
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    sw      a1, 0x00EC($sp)            
    sw      a2, 0x00F0($sp)            
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47FB4)($at) 
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x00B4($sp)            
    lw      s0, 0x1C44(s4)             # 00001C44
    lw      a0, 0x0000(s4)             # 00000000
    jal     func_8007E298              
    or      s3, a0, $zero              # s3 = 00000000
    jal     func_800AA6EC              
    nop
    lui     t8, %hi(var_80A44AB4)      # t8 = 80A40000
    lbu     t8, %lo(var_80A44AB4)(t8)  
    lui     s2, %hi(var_80A47F28)      # s2 = 80A40000
    addiu   s2, s2, %lo(var_80A47F28)  # s2 = 80A47F28
    beq     t8, $zero, lbl_80A380E4    
    addiu   s1, $sp, 0x0098            # s1 = FFFFFFB0
    lw      t0, 0x0000(s2)             # 80A47F28
    lw      t9, 0x0004(s2)             # 80A47F2C
    lui     t1, %hi(var_80A49D48)      # t1 = 80A50000
    sw      t0, 0x0000(s1)             # FFFFFFB0
    lw      t0, 0x0008(s2)             # 80A47F30
    addiu   t1, t1, %lo(var_80A49D48)  # t1 = 80A49D48
    sw      t9, 0x0004(s1)             # FFFFFFB4
    sw      t0, 0x0008(s1)             # FFFFFFB8
    lw      t3, 0x0000(t1)             # 80A49D48
    or      a0, s4, $zero              # a0 = 00000000
    sw      t3, 0x0000(s2)             # 80A47F28
    lw      t2, 0x0004(t1)             # 80A49D4C
    sw      t2, 0x0004(s2)             # 80A47F2C
    lw      t3, 0x0008(t1)             # 80A49D50
    jal     func_80A37D50              
    sw      t3, 0x0008(s2)             # 80A47F30
    lw      t5, 0x0000(s1)             # FFFFFFB0
    lw      t4, 0x0004(s1)             # FFFFFFB4
    sw      t5, 0x0000(s2)             # 80A47F28
    lw      t5, 0x0008(s1)             # FFFFFFB8
    sw      t4, 0x0004(s2)             # 80A47F2C
    sw      t5, 0x0008(s2)             # 80A47F30
lbl_80A380E4:
    lui     v0, %hi(var_80A44A74)      # v0 = 80A40000
    lh      v0, %lo(var_80A44A74)(v0)  
    lui     s2, %hi(var_80A47F28)      # s2 = 80A40000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A38104      
    addiu   s2, s2, %lo(var_80A47F28)  # s2 = 80A47F28
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80A381AC      
lbl_80A38104:
    lui     t6, %hi(var_80A47F18)      # t6 = 80A40000
    lw      t6, %lo(var_80A47F18)(t6)  
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    lw      t8, 0x01B0(t6)             # 80A401B0
    sw      t8, 0x0000(s2)             # 80A47F28
    lw      t7, 0x01B4(t6)             # 80A401B4
    sw      t7, 0x0004(s2)             # 80A47F2C
    lw      t8, 0x01B8(t6)             # 80A401B8
    bne     v0, $at, lbl_80A38248      
    sw      t8, 0x0008(s2)             # 80A47F30
    lbu     t9, %lo(var_80A47F26)(t9)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t9, $at, lbl_80A38248      
    nop
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80A454BC)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A454BC)($at) 
    mtc1    t0, $f8                    # $f8 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f4            
    jal     func_800AAB94              
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFFE8
    swc1    $f0, 0x00E0($sp)           
    swc1    $f0, 0x00E4($sp)           
    jal     func_800AB958              
    swc1    $f6, 0x00DC($sp)           
    lwc1    $f8, 0x0000(s2)            # 80A47F28
    lwc1    $f10, 0x00D0($sp)          
    lwc1    $f6, 0x0008(s2)            # 80A47F30
    add.s   $f4, $f8, $f10             
    lwc1    $f8, 0x00D8($sp)           
    add.s   $f10, $f6, $f8             
    swc1    $f4, 0x0000(s2)            # 80A47F28
    beq     $zero, $zero, lbl_80A38248 
    swc1    $f10, 0x0008(s2)           # 80A47F30
lbl_80A381AC:
    bne     v0, $zero, lbl_80A38248    
    lui     t1, %hi(var_80A4892C)      # t1 = 80A50000
    addiu   t1, t1, %lo(var_80A4892C)  # t1 = 80A4892C
    lw      t3, 0x0000(t1)             # 80A4892C
    lui     v0, %hi(var_80A48938)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A48938)  # v0 = 80A48938
    sw      t3, 0x0000(s2)             # 80A47F28
    lw      t2, 0x0004(t1)             # 80A48930
    lui     $at, %hi(var_80A454C0)     # $at = 80A40000
    lwc1    $f4, 0x0948(v0)            # 80A49280
    sw      t2, 0x0004(s2)             # 80A47F2C
    lw      t3, 0x0008(t1)             # 80A48934
    lui     s1, %hi(var_80A47F48)      # s1 = 80A40000
    addiu   s1, s1, %lo(var_80A47F48)  # s1 = 80A47F48
    sw      t3, 0x0008(s2)             # 80A47F30
    lwc1    $f6, %lo(var_80A454C0)($at) 
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     t4, %hi(var_80A47F20)      # t4 = 80A40000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0000(s1)            # 80A47F48
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.eq.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A38244               
    lwc1    $f6, 0x094C(v0)            # 80A49284
    lh      t4, %lo(var_80A47F20)(t4)  
    lui     a0, %hi(var_80A47F4C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F4C)  # a0 = 80A47F4C
    bne     t4, $zero, lbl_80A38240    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lw      a1, 0x094C(v0)             # 80A49284
    jal     func_80064280              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    beq     $zero, $zero, lbl_80A38248 
    nop
lbl_80A38240:
    lwc1    $f6, 0x094C(v0)            # 0000094C
lbl_80A38244:
    swc1    $f6, 0x0004(s1)            # 80A47F4C
lbl_80A38248:
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47F26)(t5)  
    lui     s1, %hi(var_80A47F48)      # s1 = 80A40000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t5, $at, lbl_80A383E0      
    addiu   s1, s1, %lo(var_80A47F48)  # s1 = 80A47F48
    lwc1    $f12, 0x0000(s2)           # 80A47F28
    lwc1    $f14, 0x0004(s2)           # 80A47F2C
    lw      a2, 0x0008(s2)             # 80A47F30
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80A47F74)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47F74)($at) 
    lwc1    $f8, 0x0004(s1)            # 80A47F4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94              
    add.s   $f12, $f8, $f10            
    lwc1    $f12, 0x0000(s1)           # 80A47F48
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A454C4)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A454C4)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, %hi(var_80A47F78)      # a2 = 80A40000
    lw      a2, %lo(var_80A47F78)(a2)  
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_80A454C8)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A454C8)($at) 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A454CC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A454CC)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8007E298              
    lw      a0, 0x0000(s4)             # 00000000
    lw      s1, 0x02C0(s3)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 80A47F50
    sw      t6, 0x02C0(s3)             # 000002C0
    sw      t7, 0x0000(s1)             # 80A47F48
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s1)             # 80A47F4C
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x21F0             # t0 = 060121F0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s3)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lui     $at, %hi(var_80A454D0)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A454D0)($at) 
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, %hi(var_80A47F38)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F38)  # a1 = 80A47F38
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFF4
    swc1    $f4, 0x00DC($sp)           
    swc1    $f6, 0x00E0($sp)           
    jal     func_800AB958              
    swc1    $f8, 0x00E4($sp)           
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f4                   # $f4 = -300.00
    addiu   s0, $sp, 0x00B8            # s0 = FFFFFFD0
    or      a1, s0, $zero              # a1 = FFFFFFD0
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFF4
    swc1    $f10, 0x00DC($sp)          
    jal     func_800AB958              
    swc1    $f4, 0x00E4($sp)           
    lui     a2, %hi(var_80A49BF8)      # a2 = 80A50000
    addiu   a2, a2, %lo(var_80A49BF8)  # a2 = 80A49BF8
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = FFFFFFD0
    jal     func_80A37568              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80A454D4)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A454D4)($at) 
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f8                   # $f8 = -50.00
    addiu   s0, $sp, 0x00C4            # s0 = FFFFFFDC
    or      a1, s0, $zero              # a1 = FFFFFFDC
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFF4
    swc1    $f6, 0x00DC($sp)           
    jal     func_800AB958              
    swc1    $f8, 0x00E4($sp)           
    lui     a2, %hi(var_80A49C04)      # a2 = 80A50000
    addiu   a2, a2, %lo(var_80A49C04)  # a2 = 80A49C04
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = FFFFFFDC
    jal     func_80A37568              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80A383E0:
    lw      a0, 0x02D0(s3)             # 000002D0
    jal     func_8007DFBC              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     a0, %hi(var_80A44A74)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A74)  # a0 = 80A44A74
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    lui     t2, 0xFCFF                 # t2 = FCFF0000
    lui     t3, 0xFFFD                 # t3 = FFFD0000
    ori     t3, t3, 0xF6FB             # t3 = FFFDF6FB
    ori     t2, t2, 0xFFFF             # t2 = FCFFFFFF
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t6, $zero, 0xFF37          # t6 = FFFFFF37
    addiu   t4, s0, 0x0008             # t4 = FFFFFFE4
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t6, 0x0004(s0)             # FFFFFFE0
    sw      t5, 0x0000(s0)             # FFFFFFDC
    lh      t7, 0x0000(a0)             # 80A44A74
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t8, %hi(var_80A47F94)      # t8 = 80A40000
    bne     t7, $at, lbl_80A38590      
    lh      v1, 0x00B4($sp)            
    lbu     t8, %lo(var_80A47F94)(t8)  
    lui     v0, %hi(var_80A47F26)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F26)  # v0 = 80A47F26
    bne     t8, $zero, lbl_80A38464    
    lui     s0, %hi(var_80A47FC8)      # s0 = 80A40000
    lbu     t9, 0x0000(v0)             # 80A47F26
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t9, $at, lbl_80A38590      
lbl_80A38464:
    addiu   s0, s0, %lo(var_80A47FC8)  # s0 = 80A47FC8
    lwc1    $f10, 0x0000(s2)           # 80A47F28
    lwc1    $f4, 0x0000(s0)            # 80A47FC8
    lwc1    $f6, 0x0004(s2)            # 80A47F2C
    lwc1    $f8, 0x0004(s0)            # 80A47FCC
    sub.s   $f12, $f10, $f4            
    lwc1    $f4, 0x0008(s2)            # 80A47F30
    sub.s   $f10, $f6, $f8             
    lwc1    $f6, 0x0008(s0)            # 80A47FD0
    swc1    $f12, 0x0078($sp)          
    sub.s   $f14, $f4, $f6             
    swc1    $f10, 0x0074($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0070($sp)          
    lwc1    $f18, 0x0078($sp)          
    lwc1    $f8, 0x0070($sp)           
    swc1    $f0, 0x0080($sp)           
    mul.s   $f2, $f18, $f18            
    lwc1    $f12, 0x0074($sp)          
    mul.s   $f16, $f8, $f8             
    swc1    $f2, 0x003C($sp)           
    add.s   $f0, $f2, $f16             
    swc1    $f16, 0x0038($sp)          
    jal     func_800CD76C              
    sqrt.s  $f14, $f0                  
    lwc1    $f18, 0x0074($sp)          
    lwc1    $f2, 0x003C($sp)           
    lwc1    $f16, 0x0038($sp)          
    mul.s   $f4, $f18, $f18            
    neg.s   $f10, $f0                  
    lui     $at, %hi(var_80A454D8)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A454D8)($at) 
    swc1    $f10, 0x0084($sp)          
    lwc1    $f12, 0x0000(s0)           # 80A47FC8
    lwc1    $f14, 0x0004(s0)           # 80A47FCC
    add.s   $f6, $f2, $f4              
    lw      a2, 0x0008(s0)             # 80A47FD0
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f0, $f6, $f16             
    sqrt.s  $f0, $f0                   
    mul.s   $f10, $f0, $f8             
    jal     func_800AA7F4              
    swc1    $f10, 0x007C($sp)          
    lwc1    $f12, 0x0080($sp)          
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0084($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47FBC)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lw      a2, 0x007C($sp)            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s1, 0x0008             # t0 = 80A47F50
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s1)             # 80A47F48
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s1)             # 80A47F4C
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x3710             # t4 = 06003710
    addiu   t2, s0, 0x0008             # t2 = 80A47FD0
    sw      t2, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(s0)             # 80A47FC8
    sw      t4, 0x0004(s0)             # 80A47FCC
    beq     $zero, $zero, lbl_80A387DC 
    nop
lbl_80A38590:
    sll     s2, v1, 16                 
    slti    $at, v1, 0x00C7            
    beq     $at, $zero, lbl_80A387DC   
    sra     s2, s2, 16                 
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x3710             # t5 = 06003710
    sw      t5, 0x003C($sp)            
lbl_80A385AC:
    lui     v0, %hi(var_80A47F26)      # v0 = 80A40000
    lui     a0, %hi(var_80A44A74)      # a0 = 80A40000
    addiu   $at, $zero, 0x00C5         # $at = 000000C5
    addiu   a0, a0, %lo(var_80A44A74)  # a0 = 80A44A74
    bne     s2, $at, lbl_80A3871C      
    addiu   v0, v0, %lo(var_80A47F26)  # v0 = 80A47F26
    lbu     t6, 0x0000(v0)             # 80A47F26
    bnel    t6, $zero, lbl_80A38720    
    lw      t5, 0x00EC($sp)            
    lh      t7, 0x0000(a0)             # 80A44A74
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     v0, %hi(var_80A47F38)      # v0 = 80A40000
    bne     t7, $at, lbl_80A3871C      
    addiu   v0, v0, %lo(var_80A47F38)  # v0 = 80A47F38
    lw      t9, 0x00EC($sp)            
    sll     t8, s2,  2                 
    subu    t8, t8, s2                 
    sll     t8, t8,  2                 
    addu    s0, t8, t9                 
    lwc1    $f6, 0x0000(s0)            # 80A47FC8
    lwc1    $f4, 0x0000(v0)            # 80A47F38
    lwc1    $f10, 0x0004(s0)           # 80A47FCC
    lwc1    $f8, 0x0004(v0)            # 80A47F3C
    sub.s   $f12, $f4, $f6             
    lwc1    $f6, 0x0008(v0)            # 80A47F40
    sub.s   $f4, $f8, $f10             
    swc1    $f4, 0x0054($sp)           
    lwc1    $f8, 0x0008(s0)            # 80A47FD0
    swc1    $f12, 0x0058($sp)          
    sub.s   $f14, $f6, $f8             
    jal     func_800CD76C              
    swc1    $f14, 0x0050($sp)          
    lwc1    $f18, 0x0058($sp)          
    lwc1    $f10, 0x0050($sp)          
    swc1    $f0, 0x0060($sp)           
    mul.s   $f2, $f18, $f18            
    lwc1    $f12, 0x0054($sp)          
    mul.s   $f16, $f10, $f10           
    swc1    $f2, 0x0034($sp)           
    add.s   $f0, $f2, $f16             
    swc1    $f16, 0x0030($sp)          
    jal     func_800CD76C              
    sqrt.s  $f14, $f0                  
    lwc1    $f18, 0x0054($sp)          
    lwc1    $f2, 0x0034($sp)           
    lwc1    $f16, 0x0030($sp)          
    mul.s   $f6, $f18, $f18            
    neg.s   $f4, $f0                   
    lui     $at, %hi(var_80A454DC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A454DC)($at) 
    swc1    $f4, 0x0064($sp)           
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f8, $f2, $f6              
    add.s   $f0, $f8, $f16             
    sqrt.s  $f0, $f0                   
    mul.s   $f4, $f0, $f10             
    swc1    $f4, 0x005C($sp)           
    lw      a2, 0x0008(s0)             # 80A47FD0
    lwc1    $f14, 0x0004(s0)           # 80A47FCC
    jal     func_800AA7F4              
    lwc1    $f12, 0x0000(s0)           # 80A47FC8
    lwc1    $f12, 0x0060($sp)          
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0064($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47FBC)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lw      a2, 0x005C($sp)            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s1, 0x0008             # t0 = 80A47F50
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s1)             # 80A47F48
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s1)             # 80A47F4C
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, s0, 0x0008             # t2 = 80A47FD0
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0000(s0)             # 80A47FC8
    lw      t4, 0x003C($sp)            
    sw      t4, 0x0004(s0)             # 80A47FCC
    beq     $zero, $zero, lbl_80A387DC 
    nop
lbl_80A3871C:
    lw      t5, 0x00EC($sp)            
lbl_80A38720:
    sll     s1, s2,  2                 
    subu    s1, s1, s2                 
    sll     s1, s1,  2                 
    addu    s0, s1, t5                 
    lwc1    $f12, 0x0000(s0)           # 80A47FC8
    lwc1    $f14, 0x0004(s0)           # 80A47FCC
    lw      a2, 0x0008(s0)             # 80A47FD0
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t6, 0x00F0($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    s0, s1, t6                 
    jal     func_800AAB94              
    lwc1    $f12, 0x0004(s0)           # 80A47FCC
    lwc1    $f12, 0x0000(s0)           # 80A47FC8
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47FBC)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     a2, 0x3BA3                 # a2 = 3BA30000
    ori     a2, a2, 0xD70A             # a2 = 3BA3D70A
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s1, 0x0008             # t7 = 80A47F50
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0000(s1)             # 80A47F48
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s1)             # 80A47F4C
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   s2, s2, 0x0001             # s2 = 80A47F29
    addiu   t9, s0, 0x0008             # t9 = 80A47FD0
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t0, 0x0000(s0)             # 80A47FC8
    lw      t1, 0x003C($sp)            
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    sw      t1, 0x0004(s0)             # 80A47FCC
    slti    $at, s2, 0x00C7            
    bne     $at, $zero, lbl_80A385AC   
    nop
lbl_80A387DC:
    jal     func_800AA724              
    nop
    jal     func_8007E2C0              
    lw      a0, 0x0000(s4)             # 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_80A3880C:
    addiu   $sp, $sp, 0xFF10           # $sp = FFFFFF10
    lui     v1, %hi(var_80A49C18)      # v1 = 80A50000
    addiu   v1, v1, %lo(var_80A49C18)  # v1 = 80A49C18
    sw      $ra, 0x004C($sp)           
    sw      s8, 0x0048($sp)            
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f20, 0x0020($sp)          
    sw      a0, 0x00F0($sp)            
    lw      t6, 0x00F0($sp)            
    lw      s2, 0x1C44(t6)             # 00001C44
    lbu     v0, 0x0000(v1)             # 80A49C18
    lw      s0, 0x0000(t6)             # 00000000
    beq     v0, $zero, lbl_80A388BC    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    lui     a0, %hi(var_80A44AA0)      # a0 = 80A40000
    sb      t7, 0x0000(v1)             # 80A49C18
    addiu   a0, a0, %lo(var_80A44AA0)  # a0 = 80A44AA0
    lui     a1, 0x420C                 # a1 = 420C0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a0, %hi(var_80A44A9C)      # a0 = 80A40000
    lui     a1, 0xBF4C                 # a1 = BF4C0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a1, a1, 0xCCCD             # a1 = BF4CCCCD
    addiu   a0, a0, %lo(var_80A44A9C)  # a0 = 80A44A9C
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xF060          # a1 = FFFFF060
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x3A98          # a3 = 00003A98
    lui     s5, %hi(var_80A44A74)      # s5 = 80A40000
    beq     $zero, $zero, lbl_80A3897C 
    addiu   s5, s5, %lo(var_80A44A74)  # s5 = 80A44A74
lbl_80A388BC:
    lui     s5, %hi(var_80A44A74)      # s5 = 80A40000
    addiu   s5, s5, %lo(var_80A44A74)  # s5 = 80A44A74
    lh      t8, 0x0000(s5)             # 80A44A74
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      s1, $zero, $zero           # s1 = 00000000
    bne     t8, $at, lbl_80A38934      
    lui     t9, %hi(var_80A47F94)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47F94)(t9)  
    lui     a0, %hi(var_80A47F1E)      # a0 = 80A40000
    beq     t9, $zero, lbl_80A38934    
    nop
    lh      a0, %lo(var_80A47F1E)(a0)  
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    addu    a0, a0, $at                
    sll     a0, a0, 10                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A454E0)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A454E0)($at) 
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    s1, $f8                    
    nop
    sll     s1, s1, 16                 
    beq     $zero, $zero, lbl_80A38964 
    sra     s1, s1, 16                 
lbl_80A38934:
    lui     a0, %hi(var_80A44AA0)      # a0 = 80A40000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    addiu   a0, a0, %lo(var_80A44AA0)  # a0 = 80A44AA0
    jal     func_800642F0              
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a0, %hi(var_80A44A9C)      # a0 = 80A40000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, a0, %lo(var_80A44A9C)  # a0 = 80A44A9C
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
lbl_80A38964:
    sll     a1, s1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
lbl_80A3897C:
    lh      v0, 0x0000(s5)             # 80A44A74
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A38994      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80A38BD0      
    addiu   a0, s2, 0x084C             # a0 = 0000084C
lbl_80A38994:
    lw      s1, 0x00F0($sp)            
    lb      t1, 0x0028(s1)             # 00000028
    addiu   s1, s1, 0x0014             # s1 = 00000014
    bne     t1, $zero, lbl_80A389C4    
    lui     t2, %hi(var_80A44AA4)      # t2 = 80A40000
    lh      t2, %lo(var_80A44AA4)(t2)  
    beql    t2, $zero, lbl_80A389C8    
    lb      v0, 0x0015(s1)             # 00000029
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     s3, %hi(var_80A44A90)      # s3 = 80A40000
    addiu   s3, s3, %lo(var_80A44A90)  # s3 = 80A44A90
    swc1    $f20, 0x0000(s3)           # 80A44A90
lbl_80A389C4:
    lb      v0, 0x0015(s1)             # 00000029
lbl_80A389C8:
    lui     s3, %hi(var_80A44A90)      # s3 = 80A40000
    mtc1    $zero, $f20                # $f20 = 0.00
    bne     v0, $zero, lbl_80A389F8    
    addiu   s3, s3, %lo(var_80A44A90)  # s3 = 80A44A90
    lui     t3, %hi(var_80A44AA8)      # t3 = 80A40000
    lh      t3, %lo(var_80A44AA8)(t3)  
    lui     s4, %hi(var_80A44A94)      # s4 = 80A40000
    addiu   s4, s4, %lo(var_80A44A94)  # s4 = 80A44A94
    beql    t3, $zero, lbl_80A389FC    
    mtc1    v0, $f16                   # $f16 = 0.00
    swc1    $f20, 0x0000(s4)           # 80A44A94
    lb      v0, 0x0015(s1)             # 00000029
lbl_80A389F8:
    mtc1    v0, $f16                   # $f16 = 0.00
lbl_80A389FC:
    lui     $at, %hi(var_80A454E4)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A454E4)($at) 
    cvt.s.w $f18, $f16                 
    lwc1    $f10, 0x084C(s2)           # 0000084C
    lui     s4, %hi(var_80A44A94)      # s4 = 80A40000
    lui     a2, 0x3E99                 # a2 = 3E990000
    addiu   s4, s4, %lo(var_80A44A94)  # s4 = 80A44A94
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    mul.s   $f6, $f18, $f4             
    swc1    $f20, 0x0010($sp)          
    addiu   a0, s2, 0x084C             # a0 = 0000084C
    lui     a3, 0x40A0                 # a3 = 40A00000
    swc1    $f10, 0x00E8($sp)          
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    lwc1    $f8, 0x084C(s2)            # 0000084C
    lwc1    $f10, 0x00E8($sp)          
    lui     $at, %hi(var_80A454E8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A454E8)($at) 
    sub.s   $f16, $f8, $f10            
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s2, 0x0848             # a0 = 00000848
    swc1    $f16, 0x00E8($sp)          
    lb      t4, 0x0014(s1)             # 00000028
    lwc1    $f12, 0x0848(s2)           # 00000848
    swc1    $f20, 0x0010($sp)          
    mtc1    t4, $f18                   # $f18 = 0.00
    lui     a3, 0x40A0                 # a3 = 40A00000
    swc1    $f12, 0x00E4($sp)          
    cvt.s.w $f4, $f18                  
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80064178              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lwc1    $f2, 0x0848(s2)            # 00000848
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    c.lt.s  $f14, $f2                  
    lwc1    $f12, 0x00E4($sp)          
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    bc1f    lbl_80A38ABC               
    sub.s   $f12, $f2, $f12            
    swc1    $f14, 0x0848(s2)           # 00000848
lbl_80A38ABC:
    lwc1    $f10, 0x084C(s2)           # 0000084C
    mul.s   $f6, $f12, $f4             
    lui     $at, %hi(var_80A454EC)     # $at = 80A40000
    c.lt.s  $f14, $f10                 
    nop
    bc1fl   lbl_80A38AE0               
    lwc1    $f16, 0x0848(s2)           # 00000848
    swc1    $f14, 0x084C(s2)           # 0000084C
    lwc1    $f16, 0x0848(s2)           # 00000848
lbl_80A38AE0:
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80A38AF8               
    lwc1    $f18, 0x084C(s2)           # 0000084C
    swc1    $f0, 0x0848(s2)            # 00000848
    lwc1    $f18, 0x084C(s2)           # 0000084C
lbl_80A38AF8:
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_80A38B0C               
    nop
    swc1    $f0, 0x084C(s2)            # 0000084C
lbl_80A38B0C:
    lwc1    $f8, %lo(var_80A454EC)($at) 
    lui     a0, %hi(var_80A44A88)      # a0 = 80A40000
    mfc1    a2, $f14                   
    mul.s   $f10, $f6, $f8             
    addiu   a0, a0, %lo(var_80A44A88)  # a0 = 80A44A88
    lw      a3, 0x0000(s3)             # 80A44A90
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    or      a0, s3, $zero              # a0 = 80A44A90
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f18                  # $f18 = 70.00
    lwc1    $f16, 0x00E8($sp)          
    lui     $at, %hi(var_80A454F0)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A454F0)($at) 
    mul.s   $f4, $f16, $f18            
    lui     s3, %hi(var_80A44A8C)      # s3 = 80A40000
    addiu   s3, s3, %lo(var_80A44A8C)  # s3 = 80A44A8C
    or      a0, s3, $zero              # a0 = 80A44A8C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0000(s4)             # 80A44A94
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    or      a0, s4, $zero              # a0 = 80A44A94
    lui     s1, %hi(var_80A44A98)      # s1 = 80A40000
    addiu   s1, s1, %lo(var_80A44A98)  # s1 = 80A44A98
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    or      a0, s1, $zero              # a0 = 80A44A98
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80A38CEC 
    lw      t5, 0x00F0($sp)            
lbl_80A38BD0:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x0848             # a0 = 00000848
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a0, %hi(var_80A47F1E)      # a0 = 80A40000
    lh      a0, %lo(var_80A47F1E)(a0)  
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A454F4)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A454F4)($at) 
    lui     $at, %hi(var_80A454F8)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A454F8)($at) 
    mul.s   $f16, $f0, $f10            
    lui     s3, %hi(var_80A44A8C)      # s3 = 80A40000
    addiu   s3, s3, %lo(var_80A44A8C)  # s3 = 80A44A8C
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    or      a0, s3, $zero              # a0 = 80A44A8C
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lui     a0, %hi(var_80A44A88)      # a0 = 80A40000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, a0, %lo(var_80A44A88)  # a0 = 80A44A88
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     v0, %hi(var_80A47F24)      # v0 = 80A40000
    lh      v0, %lo(var_80A47F24)(v0)  
    lui     s1, %hi(var_80A44A98)      # s1 = 80A40000
    addiu   s1, s1, %lo(var_80A44A98)  # s1 = 80A44A98
    slti    $at, v0, 0x0013            
    bne     $at, $zero, lbl_80A38CD0   
    or      a0, s1, $zero              # a0 = 80A44A98
    slti    $at, v0, 0x0019            
    beq     $at, $zero, lbl_80A38CD0   
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     s1, %hi(var_80A44A98)      # s1 = 80A40000
    addiu   s1, s1, %lo(var_80A44A98)  # s1 = 80A44A98
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    or      a0, s1, $zero              # a0 = 80A44A98
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f20                # $f20 = 0.00
    beq     $zero, $zero, lbl_80A38CEC 
    lw      t5, 0x00F0($sp)            
lbl_80A38CD0:
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    mfc1    a1, $f20                   
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t5, 0x00F0($sp)            
lbl_80A38CEC:
    jal     func_8007E298              
    lw      a0, 0x0000(t5)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0x13D0             # t8 = 060113D0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xFF9B                 # t1 = FF9B0000
    ori     t1, t1, 0x00FF             # t1 = FF9B00FF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    lui     t0, 0xFA00                 # t0 = FA000000
    sw      t0, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    addiu   a0, s2, 0x09D0             # a0 = 000009D0
    jal     func_800AA79C              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    lbu     t2, %lo(var_80A47EE5)(t2)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     t2, $at, lbl_80A38D74      
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f14                  # $f14 = 400.00
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_80A38D8C 
    lh      t3, 0x0000(s5)             # 80A44A74
lbl_80A38D74:
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f14                  # $f14 = 230.00
    mfc1    a2, $f20                   
    jal     func_800AA7F4              
    mov.s   $f12, $f20                 
    lh      t3, 0x0000(s5)             # 80A44A74
lbl_80A38D8C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     t3, $at, lbl_80A38DB0      
    lui     $at, %hi(var_80A454FC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A454FC)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80A38DBC 
    nop
lbl_80A38DB0:
    lui     $at, %hi(var_80A45500)     # $at = 80A40000
    jal     func_800AAB94              
    lwc1    $f12, %lo(var_80A45500)($at) 
lbl_80A38DBC:
    lui     $at, %hi(var_80A45504)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45504)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0848(s2)            # 00000848
    lui     $at, %hi(var_80A45508)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A45508)($at) 
    mul.s   $f10, $f6, $f8             
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C              
    add.s   $f12, $f10, $f16           
    lui     $at, %hi(var_80A44AA0)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A44AA0)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, %hi(var_80A4550C)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A4550C)($at) 
    add.s   $f6, $f18, $f4             
    lui     $at, %hi(var_80A45510)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A45510)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lui     $at, %hi(var_80A45514)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45514)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f18, 0x084C(s2)           # 0000084C
    lui     $at, 0xBE80                # $at = BE800000
    mtc1    $at, $f8                   # $f8 = -0.25
    sub.s   $f6, $f18, $f4             
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_80A44A9C)     # $at = 80A40000
    mul.s   $f10, $f6, $f8             
    lwc1    $f4, %lo(var_80A44A9C)($at) 
    lwc1    $f8, 0x0000(s3)            # 80A44A8C
    lui     a2, 0xC4A2                 # a2 = C4A20000
    ori     a2, a2, 0x8000             # a2 = C4A28000
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0000(s1)           # 80A44A98
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f18, $f4             
    add.s   $f16, $f8, $f10            
    add.s   $f18, $f6, $f16            
    jal     func_800AA7F4              
    swc1    $f18, 0x00E0($sp)          
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x1410             # t4 = 06011410
    lui     s8, 0x0707                 # s8 = 07070000
    lui     s5, 0x0700                 # s5 = 07000000
    ori     s5, s5, 0xC040             # s5 = 0700C040
    ori     s8, s8, 0xF200             # s8 = 0707F200
    sw      t4, 0x0054($sp)            
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s7, 0xF300                 # s7 = F3000000
    lui     s6, 0xE600                 # s6 = E6000000
    lui     s4, 0xF510                 # s4 = F5100000
    lui     s3, 0xFD10                 # s3 = FD100000
lbl_80A38ED4:
    lui     t5, %hi(var_80A45310)      # t5 = 80A40000
    addiu   t5, t5, %lo(var_80A45310)  # t5 = 80A45310
    sll     s1, s2,  2                 
    addu    v0, s1, t5                 
    lui     $at, %hi(var_80A44A88)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A44A88)($at) 
    lwc1    $f4, 0x0000(v0)            # 00000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    mul.s   $f10, $f4, $f8             
    sw      v0, 0x0058($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f6            
    jal     func_800AAB94              
    nop
    lw      v0, 0x0058($sp)            
    lwc1    $f18, 0x00E0($sp)          
    lui     $at, 0x3F00                # $at = 3F000000
    lwc1    $f16, 0x0000(v0)           # 00000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f12, $f4, $f8             
    jal     func_800AA9E0              
    nop
    jal     func_800AA6EC              
    nop
    lui     $at, %hi(var_80A452B8)     # $at = 80A40000
    addu    $at, $at, s1               
    lwc1    $f12, %lo(var_80A452B8)($at) 
    lui     a2, 0x3F05                 # a2 = 3F050000
    ori     a2, a2, 0x1EB8             # a2 = 3F051EB8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x00F0($sp)            
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    slti    $at, s2, 0x0005            
    beq     $at, $zero, lbl_80A39050   
    lui     t7, 0xF510                 # t7 = F5100000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x1170             # t0 = 06011170
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0004(v0)             # 00000004
    sw      s3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0xF200                 # t0 = F2000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      s5, 0x0004(v0)             # 00000004
    sw      s4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      s8, 0x0004(v0)             # 00000004
    sw      s7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t7, t7, 0x0800             # t7 = F5100800
    ori     t8, $zero, 0xC040          # t8 = 0000C040
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0x0003                 # t1 = 00030000
    ori     t1, t1, 0xC01C             # t1 = 0003C01C
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A391CC 
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80A39050:
    slti    $at, s2, 0x0008            
    bne     $at, $zero, lbl_80A39064   
    andi    t2, s2, 0x0001             # t2 = 00000000
    bne     t2, $zero, lbl_80A3911C    
    lui     t4, 0xF510                 # t4 = F5100000
lbl_80A39064:
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x1270             # t4 = 06011270
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v0)             # 00000004
    sw      s3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xF510                 # t1 = F5100000
    lui     t4, 0xF200                 # t4 = F2000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      s5, 0x0004(v0)             # 00000004
    sw      s4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      s8, 0x0004(v0)             # 00000004
    sw      s7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t1, t1, 0x0800             # t1 = F5100800
    ori     t2, $zero, 0xC040          # t2 = 0000C040
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0003                 # t5 = 00030000
    ori     t5, t5, 0xC01C             # t5 = 0003C01C
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A391CC 
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80A3911C:
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x1070             # t7 = 06011070
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      s3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xF200                 # t7 = F2000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      s5, 0x0004(v0)             # 00000004
    sw      s4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      s8, 0x0004(v0)             # 00000004
    sw      s7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t4, t4, 0x0800             # t4 = F2000800
    ori     t5, $zero, 0xC040          # t5 = 0000C040
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0003                 # t8 = 00030000
    ori     t8, t8, 0xC01C             # t8 = 0003C01C
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80A391CC:
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lw      t1, 0x0054($sp)            
    sw      t1, 0x0004(v0)             # 00000004
    jal     func_800AA724              
    nop
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    lui     a2, 0x43FA                 # a2 = 43FA0000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     s2, $at, lbl_80A3921C      
    lui     a0, %hi(var_80A45368)      # a0 = 80A40000
    lui     a1, %hi(var_80A47FC8)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47FC8)  # a1 = 80A47FC8
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80A45368)  # a0 = 80A45368
lbl_80A3921C:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x0016            
    bne     $at, $zero, lbl_80A38ED4   
    nop
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0020($sp)          
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
    addiu   $sp, $sp, 0x00F0           # $sp = 00000000


func_80A39268:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    lui     t4, %hi(var_80A47F1E)      # t4 = 80A40000
    lui     t5, %hi(var_80A47F20)      # t5 = 80A40000
    addiu   t5, t5, %lo(var_80A47F20)  # t5 = 80A47F20
    addiu   t4, t4, %lo(var_80A47F1E)  # t4 = 80A47F1E
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x00E8($sp)            
    sw      a1, 0x00EC($sp)            
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFCC
    lw      t6, 0x00EC($sp)            
    lui     t8, %hi(var_80A45380)      # t8 = 80A40000
    addiu   t8, t8, %lo(var_80A45380)  # t8 = 80A45380
    lw      t7, 0x1C44(t6)             # 00001C44
    lh      v0, 0x0000(t5)             # 80A47F20
    lui     t1, %hi(var_80A47F22)      # t1 = 80A40000
    sw      t7, 0x00C0($sp)            
    lw      t6, 0x0000(t8)             # 80A45380
    lh      t7, 0x0000(t4)             # 80A47F1E
    lui     t2, %hi(var_80A47F24)      # t2 = 80A40000
    sw      t6, 0x0000(a2)             # FFFFFFCC
    lw      t9, 0x0004(t8)             # 80A45384
    addiu   t1, t1, %lo(var_80A47F22)  # t1 = 80A47F22
    addiu   t2, t2, %lo(var_80A47F24)  # t2 = 80A47F24
    sw      t9, 0x0004(a2)             # FFFFFFD0
    lw      t6, 0x0008(t8)             # 80A45388
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0000(t4)             # 80A47F1E
    beq     v0, $zero, lbl_80A392E8    
    sw      t6, 0x0008(a2)             # FFFFFFD4
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0000(t5)             # 80A47F20
lbl_80A392E8:
    lh      v0, 0x0000(t1)             # 80A47F22
    lui     v1, %hi(var_80A47F92)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F92)  # v1 = 80A47F92
    beq     v0, $zero, lbl_80A39304    
    lui     a0, %hi(var_80A47FC0)      # a0 = 80A40000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0000(t1)             # 80A47F22
lbl_80A39304:
    lh      v0, 0x0000(t2)             # 80A47F24
    lui     a3, %hi(var_80A47F84)      # a3 = 80A40000
    addiu   a0, a0, %lo(var_80A47FC0)  # a0 = 80A47FC0
    beq     v0, $zero, lbl_80A39320    
    addiu   a3, a3, %lo(var_80A47F84)  # a3 = 80A47F84
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0000(t2)             # 80A47F24
lbl_80A39320:
    lh      v0, 0x0000(v1)             # 80A47F92
    lui     $at, %hi(var_80A44A84)     # $at = 80A40000
    beq     v0, $zero, lbl_80A39334    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 80A47F92
lbl_80A39334:
    lh      v0, 0x0000(a0)             # 80A47FC0
    lui     v1, %hi(var_80A47F14)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F14)  # v1 = 80A47F14
    beq     v0, $zero, lbl_80A3934C    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0000(a0)             # 80A47FC0
lbl_80A3934C:
    lui     v0, %hi(var_80A44A84)      # v0 = 80A40000
    lbu     v0, %lo(var_80A44A84)(v0)  
    lui     t0, %hi(var_80A47F26)      # t0 = 80A40000
    addiu   t0, t0, %lo(var_80A47F26)  # t0 = 80A47F26
    beq     v0, $zero, lbl_80A39368    
    addiu   t6, v0, 0xFFFF             # t6 = 80A3FFFF
    sb      t6, %lo(var_80A44A84)($at) 
lbl_80A39368:
    lh      v0, 0x0000(v1)             # 80A47F14
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, %hi(var_80A47EF4)     # $at = 80A40000
    beq     v0, $zero, lbl_80A39380    
    addiu   t7, v0, 0xFFFF             # t7 = 80A3FFFF
    sh      t7, 0x0000(v1)             # 80A47F14
lbl_80A39380:
    lb      v0, 0x0000(a3)             # 80A47F84
    lui     v1, %hi(var_80A47F1C)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F1C)  # v1 = 80A47F1C
    beq     v0, $zero, lbl_80A39398    
    addiu   t8, v0, 0xFFFF             # t8 = 80A3FFFF
    sb      t8, 0x0000(a3)             # 80A47F84
lbl_80A39398:
    lh      t9, 0x0000(v1)             # 80A47F1C
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     v0, %hi(var_80A47EE5)      # v0 = 80A40000
    bnel    t3, t9, lbl_80A39610       
    lw      a0, 0x00EC($sp)            
    sh      t6, 0x0000(v1)             # 80A47F1C
    sh      $zero, %lo(var_80A47EF4)($at) 
    lui     $at, %hi(var_80A47EF2)     # $at = 80A40000
    sb      $zero, %lo(var_80A47EF2)($at) 
    sb      $zero, 0x0000(t0)          # 80A47F26
    lbu     v0, %lo(var_80A47EE5)(v0)  
    lui     t7, 0x8012                 # t7 = 80120000
    bne     t3, v0, lbl_80A393E0       
    nop
    lw      t7, -0x4B70(t7)            # 8011B490
    andi    t8, t7, 0x0400             # t8 = 00000000
    bne     t8, $zero, lbl_80A393F4    
    nop
lbl_80A393E0:
    beq     t3, v0, lbl_80A394B0       
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4B70(t9)            # 8011B490
    andi    t6, t9, 0x0800             # t6 = 00000000
    beq     t6, $zero, lbl_80A394B0    
lbl_80A393F4:
    lui     $at, %hi(var_80A45518)     # $at = 80A40000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A45518)($at) 
    cfc1    t7, $f31                   
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    ctc1    t8, $f31                   
    lui     t2, %hi(var_80A47F24)      # t2 = 80A40000
    lui     t1, %hi(var_80A47F22)      # t1 = 80A40000
    cvt.w.s $f4, $f0                   
    lui     t0, %hi(var_80A47F26)      # t0 = 80A40000
    addiu   t0, t0, %lo(var_80A47F26)  # t0 = 80A47F26
    addiu   t1, t1, %lo(var_80A47F22)  # t1 = 80A47F22
    cfc1    t8, $f31                   
    addiu   t2, t2, %lo(var_80A47F24)  # t2 = 80A47F24
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFCC
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_80A39484    
    lui     a3, %hi(var_80A47F84)      # a3 = 80A40000
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f0, $f4              
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80A3947C    
    nop
    mfc1    t8, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A39494 
    or      t8, t8, $at                # t8 = 80000000
lbl_80A3947C:
    beq     $zero, $zero, lbl_80A39494 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80A39484:
    mfc1    t8, $f4                    
    nop
    bltz    t8, lbl_80A3947C           
    nop
lbl_80A39494:
    ctc1    t7, $f31                   
    addiu   t6, t8, 0x0001             # t6 = 00000000
    lui     $at, %hi(var_80A44A4C)     # $at = 80A40000
    lui     a0, %hi(var_80A47FC0)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47FC0)  # a0 = 80A47FC0
    sb      t6, %lo(var_80A44A4C)($at) 
    addiu   a3, a3, %lo(var_80A47F84)  # a3 = 80A47F84
lbl_80A394B0:
    lui     $at, 0x4402                # $at = 44020000
    mtc1    $at, $f6                   # $f6 = 520.00
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    lui     t4, %hi(var_80A47F90)      # t4 = 80A40000
    swc1    $f6, %lo(var_80A47FB8)($at) 
    lui     $at, 0x4343                # $at = 43430000
    mtc1    $at, $f8                   # $f8 = 195.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    addiu   t4, t4, %lo(var_80A47F90)  # t4 = 80A47F90
    swc1    $f8, %lo(var_80A47FB4)($at) 
    sh      $zero, 0x0000(a0)          # 80A47FC0
    lh      t7, 0x0000(a0)             # 80A47FC0
    lui     $at, %hi(var_80A47F20)     # $at = 80A40000
    lui     t5, %hi(var_80A47F1E)      # t5 = 80A40000
    sb      t7, 0x0000(a3)             # 80A47F84
    lb      t8, 0x0000(a3)             # 80A47F84
    addiu   t5, t5, %lo(var_80A47F1E)  # t5 = 80A47F1E
    mtc1    $zero, $f10                # $f10 = 0.00
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    sh      t9, 0x0000(t2)             # 80A47F24
    lh      t6, 0x0000(t2)             # 80A47F24
    sb      t8, 0x0000(t4)             # 80A47F90
    lui     t8, %hi(var_80A47F20)      # t8 = 80A40000
    sh      t6, 0x0000(t1)             # 80A47F22
    lh      t7, 0x0000(t1)             # 80A47F22
    lui     a1, %hi(var_80A47F78)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F78)  # a1 = 80A47F78
    sh      t7, %lo(var_80A47F20)($at) 
    lh      t8, %lo(var_80A47F20)(t8)  
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    lui     t3, %hi(var_80A47FC4)      # t3 = 80A40000
    sh      t8, 0x0000(t5)             # 80A47F1E
    lh      t9, 0x0000(t5)             # 80A47F1E
    addiu   t3, t3, %lo(var_80A47FC4)  # t3 = 80A47FC4
    lui     t7, %hi(var_80A47F98)      # t7 = 80A40000
    sb      t9, 0x0000(t0)             # 80A47F26
    andi    t6, t9, 0x00FF             # t6 = 000000FF
    sh      t6, %lo(var_80A44A74)($at) 
    swc1    $f10, 0x0000(a1)           # 80A47F78
    lwc1    $f4, 0x0000(a1)            # 80A47F78
    lui     $at, %hi(var_80A47F74)     # $at = 80A40000
    addiu   t7, t7, %lo(var_80A47F98)  # t7 = 80A47F98
    swc1    $f4, 0x0000(t3)            # 80A47FC4
    lwc1    $f6, 0x0000(t3)            # 80A47FC4
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    lui     t1, %hi(var_80A47FD8)      # t1 = 80A40000
    swc1    $f6, %lo(var_80A47F74)($at) 
    lw      t9, 0x0000(a2)             # FFFFFFCC
    lui     a0, %hi(var_80A49298)      # a0 = 80A50000
    addiu   a0, a0, %lo(var_80A49298)  # a0 = 80A49298
    sw      t9, 0x0000(t7)             # 80A47F98
    lw      t8, 0x0004(a2)             # FFFFFFD0
    addiu   t1, t1, %lo(var_80A47FD8)  # t1 = 80A47FD8
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
    sw      t8, 0x0004(t7)             # 80A47F9C
    lw      t9, 0x0008(a2)             # FFFFFFD4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    sw      t9, 0x0008(t7)             # 80A47FA0
lbl_80A3959C:
    multu   s0, v1                     
    lw      t8, 0x0000(a2)             # FFFFFFCC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x00C8            
    mflo    v0                         
    addu    t6, t1, v0                 
    sw      t8, 0x0000(t6)             # 000000FF
    lw      t7, 0x0004(a2)             # FFFFFFD0
    addu    t9, t0, v0                 
    sw      t7, 0x0004(t6)             # 00000103
    lw      t8, 0x0008(a2)             # FFFFFFD4
    sw      t8, 0x0008(t6)             # 00000107
    lw      t7, 0x0000(a2)             # FFFFFFCC
    addu    t8, a0, v0                 
    sw      t7, 0x0000(t9)             # 000000FF
    lw      t6, 0x0004(a2)             # FFFFFFD0
    sw      t6, 0x0004(t9)             # 00000103
    lw      t7, 0x0008(a2)             # FFFFFFD4
    sw      t7, 0x0008(t9)             # 00000107
    lw      t6, 0x0000(a2)             # FFFFFFCC
    sw      t6, 0x0000(t8)             # 80A40000
    lw      t9, 0x0004(a2)             # FFFFFFD0
    sw      t9, 0x0004(t8)             # 80A40004
    lw      t6, 0x0008(a2)             # FFFFFFD4
    bne     $at, $zero, lbl_80A3959C   
    sw      t6, 0x0008(t8)             # 80A40008
    lw      a0, 0x00EC($sp)            
lbl_80A39610:
    lui     $at, 0x0001                # $at = 00010000
    lui     s0, %hi(var_80A47F78)      # s0 = 80A40000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a1, %hi(var_80A47F28)      # a1 = 80A40000
    lui     a2, %hi(var_80A45374)      # a2 = 80A40000
    lui     a3, %hi(var_80A49D14)      # a3 = 80A50000
    addiu   s0, s0, %lo(var_80A47F78)  # s0 = 80A47F78
    addiu   a3, a3, %lo(var_80A49D14)  # a3 = 80A49D14
    addiu   a2, a2, %lo(var_80A45374)  # a2 = 80A45374
    addiu   a1, a1, %lo(var_80A47F28)  # a1 = 80A47F28
    jal     func_8008EC20              
    addu    a0, a0, $at                
    lui     t7, %hi(var_80A44A74)      # t7 = 80A40000
    lh      t7, %lo(var_80A44A74)(t7)  
    or      a0, s0, $zero              # a0 = 80A47F78
    lui     a1, 0x4396                 # a1 = 43960000
    bne     t7, $zero, lbl_80A39678    
    lui     a2, 0x3F80                 # a2 = 3F800000
    or      a0, s0, $zero              # a0 = 80A47F78
    lui     a1, 0xC448                 # a1 = C4480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    beq     $zero, $zero, lbl_80A39688 
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
lbl_80A39678:
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
lbl_80A39688:
    lui     t8, %hi(var_80A44A74)      # t8 = 80A40000
    lhu     t8, %lo(var_80A44A74)(t8)  
    sltiu   $at, t8, 0x0006            
    beq     $at, $zero, lbl_80A3B208   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80A4551C)     # $at = 80A40000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80A4551C)($at) 
    jr      t8                         
    nop
var_80A396B0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, %hi(var_80A49D10)     # $at = 80A50000
    lui     a0, %hi(var_80A47FB4)      # a0 = 80A40000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sh      $zero, %lo(var_80A49D10)($at) 
    addiu   a0, a0, %lo(var_80A47FB4)  # a0 = 80A47FB4
    jal     func_80064280              
    lui     a1, 0x4343                 # a1 = 43430000
    lw      v1, 0x00C0($sp)            
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    lui     t2, %hi(var_80A47F24)      # t2 = 80A40000
    lw      t9, 0x066C(v1)             # 0000066C
    addiu   t2, t2, %lo(var_80A47F24)  # t2 = 80A47F24
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
    sll     t6, t9,  4                 
    bgez    t6, lbl_80A39704           
    lui     s0, %hi(var_80A47F48)      # s0 = 80A40000
    sh      $zero, 0x0000(t2)          # 80A47F24
    sh      $zero, 0x0850(v1)          # 00000850
lbl_80A39704:
    lh      v0, 0x0000(t2)             # 80A47F24
    lui     t7, %hi(var_80A47F20)      # t7 = 80A40000
    lui     $at, %hi(var_80A45534)     # $at = 80A40000
    bne     v0, $zero, lbl_80A3974C    
    nop
    lh      t7, %lo(var_80A47F20)(t7)  
    bnel    t7, $zero, lbl_80A3B20C    
    lw      $ra, 0x002C($sp)           
    lh      t8, 0x0850(v1)             # 00000850
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t9, $zero, 0x0025          # t9 = 00000025
    bnel    t8, $at, lbl_80A3B20C      
    lw      $ra, 0x002C($sp)           
    sh      t9, 0x0000(t2)             # 80A47F24
    jal     func_800D6218              
    lw      a0, 0x00EC($sp)            
    beq     $zero, $zero, lbl_80A3B20C 
    lw      $ra, 0x002C($sp)           
lbl_80A3974C:
    lwc1    $f0, %lo(var_80A45534)($at) 
    lwc1    $f8, 0x0948(t0)            # 00000948
    lwc1    $f4, 0x094C(t0)            # 0000094C
    addiu   s0, s0, %lo(var_80A47F48)  # s0 = 80A47F48
    add.s   $f10, $f8, $f0             
    addiu   $at, $zero, 0x0012         # $at = 00000012
    swc1    $f4, 0x0004(s0)            # 80A47F4C
    bne     v0, $at, lbl_80A3B208      
    swc1    $f10, 0x0000(s0)           # 80A47F48
    lui     v0, %hi(var_80A47FC8)      # v0 = 80A40000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    addiu   v0, v0, %lo(var_80A47FC8)  # v0 = 80A47FC8
    sh      t6, %lo(var_80A44A74)($at) 
    lw      t9, 0x0000(v0)             # 80A47FC8
    lui     t7, %hi(var_80A47F28)      # t7 = 80A40000
    addiu   t7, t7, %lo(var_80A47F28)  # t7 = 80A47F28
    sw      t9, 0x0000(t7)             # 80A47F28
    lw      t8, 0x0004(v0)             # 80A47FCC
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    sw      t8, 0x0004(t7)             # 80A47F2C
    lw      t9, 0x0008(v0)             # 80A47FD0
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t9, 0x0008(t7)             # 80A47F30
    lh      t6, 0x00B6(v1)             # 000000B6
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    div.s   $f4, $f8, $f10             
    mul.s   $f12, $f4, $f0             
    jal     func_800AAB94              
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    lui     a1, %hi(var_80A47F58)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F58)  # a1 = 80A47F58
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFA8
    swc1    $f0, 0x0090($sp)           
    swc1    $f0, 0x0094($sp)           
    jal     func_800AB958              
    swc1    $f6, 0x0098($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, %hi(var_80A47F68)      # a2 = 80A40000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    addiu   a2, a2, %lo(var_80A47F68)  # a2 = 80A47F68
    lui     $at, 0xBF80                # $at = BF800000
    swc1    $f0, 0x0008(a2)            # 80A47F70
    lwc1    $f10, 0x0008(a2)           # 80A47F70
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    swc1    $f8, 0x0004(v1)            # 80A47F5C
    swc1    $f10, 0x0000(a2)           # 80A47F68
    swc1    $f4, 0x0004(a2)            # 80A47F6C
    swc1    $f0, %lo(var_80A47FB8)($at) 
    lui     $at, %hi(var_80A47F22)     # $at = 80A40000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, %lo(var_80A47F22)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    swc1    $f6, %lo(var_80A47F8C)($at) 
    lui     $at, %hi(var_80A45538)     # $at = 80A40000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A45538)($at) 
    cfc1    t8, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    ctc1    t9, $f31                   
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f8, $f0                   
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    addiu   a1, $zero, 0x1818          # a1 = 00001818
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80A398DC    
    mfc1    t9, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f0, $f8              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80A398D0    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A398E8 
    or      t9, t9, $at                # t9 = 80000000
lbl_80A398D0:
    beq     $zero, $zero, lbl_80A398E8 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8                    
lbl_80A398DC:
    nop
    bltz    t9, lbl_80A398D0           
    nop
lbl_80A398E8:
    lui     $at, %hi(var_80A47F88)     # $at = 80A40000
    sb      t9, %lo(var_80A47F88)($at) 
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    ctc1    t8, $f31                   
    lui     $at, %hi(var_80A44A7C)     # $at = 80A40000
    jal     func_80064780              
    swc1    $f10, %lo(var_80A44A7C)($at) 
    beq     $zero, $zero, lbl_80A3B20C 
    lw      $ra, 0x002C($sp)           
var_80A39910:
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F28)($at) 
    lwc1    $f0, 0x0000(v1)            # 80A47F58
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     a2, %hi(var_80A47F68)      # a2 = 80A40000
    add.s   $f6, $f4, $f0              
    addiu   a2, a2, %lo(var_80A47F68)  # a2 = 80A47F68
    lw      t6, 0x00EC($sp)            
    swc1    $f18, 0x00E0($sp)          
    swc1    $f6, %lo(var_80A47F28)($at) 
    lwc1    $f2, 0x0004(v1)            # 80A47F5C
    lui     t9, %hi(var_80A44A6C)      # t9 = 80A40000
    add.s   $f8, $f18, $f2             
    swc1    $f8, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47F30)($at) 
    lwc1    $f12, 0x0008(v1)           # 80A47F60
    add.s   $f4, $f10, $f12            
    swc1    $f4, %lo(var_80A47F30)($at) 
    lwc1    $f6, 0x0000(a2)            # 80A47F68
    lwc1    $f10, 0x0004(a2)           # 80A47F6C
    ori     $at, $zero, 0x8000         # $at = 00008000
    add.s   $f8, $f0, $f6              
    lwc1    $f6, 0x0008(a2)            # 80A47F70
    add.s   $f4, $f2, $f10             
    swc1    $f8, 0x0000(v1)            # 80A47F58
    add.s   $f8, $f12, $f6             
    swc1    $f4, 0x0004(v1)            # 80A47F5C
    swc1    $f8, 0x0008(v1)            # 80A47F60
    lhu     t7, 0x0014(t6)             # 00000014
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $at, lbl_80A399A4      
    nop
    lbu     t9, %lo(var_80A44A6C)(t9)  
    beq     t9, $zero, lbl_80A399F0    
lbl_80A399A4:
    lui     $at, %hi(var_80A4553C)     # $at = 80A40000
    lwc1    $f0, %lo(var_80A4553C)($at) 
    lwc1    $f10, 0x0000(v1)           # 80A47F58
    lwc1    $f6, 0x0008(v1)            # 80A47F60
    lui     t6, %hi(var_80A44A6C)      # t6 = 80A40000
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f8, $f6, $f0              
    swc1    $f4, 0x0000(v1)            # 80A47F58
    swc1    $f8, 0x0008(v1)            # 80A47F60
    lbu     t6, %lo(var_80A44A6C)(t6)  
    bne     t6, $zero, lbl_80A399F0    
    nop
    jal     func_800646F0              
    addiu   a0, $zero, 0x103E          # a0 = 0000103E
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
lbl_80A399F0:
    lui     $at, %hi(var_80A47F28)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A47F28)($at) 
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     v0, %hi(var_80A47FC8)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FC8)  # v0 = 80A47FC8
    lwc1    $f10, 0x0000(v0)           # 80A47FC8
    lwc1    $f8, 0x0004(v0)            # 80A47FCC
    lwc1    $f6, 0x0008(v0)            # 80A47FD0
    sub.s   $f14, $f16, $f10           
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47F30)($at) 
    sub.s   $f2, $f18, $f8             
    lui     t7, %hi(var_80A47F22)      # t7 = 80A40000
    lh      t7, %lo(var_80A47F22)(t7)  
    sub.s   $f12, $f10, $f6            
    swc1    $f16, 0x0038($sp)          
    beq     t7, $zero, lbl_80A39A60    
    swc1    $f10, 0x0034($sp)          
    lui     $at, %hi(var_80A45540)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45540)($at) 
    lwc1    $f4, 0x0948(t0)            # 80A49280
    lwc1    $f10, 0x094C(t0)           # 80A49284
    lui     s0, %hi(var_80A47F48)      # s0 = 80A40000
    add.s   $f8, $f4, $f6              
    addiu   s0, s0, %lo(var_80A47F48)  # s0 = 80A47F48
    swc1    $f10, 0x0004(s0)           # 80A47F4C
    beq     $zero, $zero, lbl_80A39AC0 
    swc1    $f8, 0x0000(s0)            # 80A47F48
lbl_80A39A60:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     s0, %hi(var_80A47F48)      # s0 = 80A40000
    addiu   s0, s0, %lo(var_80A47F48)  # s0 = 80A47F48
    swc1    $f2, 0x00D4($sp)           
    swc1    $f12, 0x00D0($sp)          
    swc1    $f14, 0x00D8($sp)          
    jal     func_800AA670              
    swc1    $f4, 0x0000(s0)            # 80A47F48
    lui     $at, %hi(var_80A45544)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45544)($at) 
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    add.s   $f8, $f0, $f6              
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lwc1    $f2, 0x00D4($sp)           
    lwc1    $f12, 0x00D0($sp)          
    swc1    $f8, 0x0004(s0)            # 80A47F4C
    lwc1    $f10, %lo(var_80A47F28)($at) 
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F30)($at) 
    lwc1    $f14, 0x00D8($sp)          
    swc1    $f10, 0x0038($sp)          
    swc1    $f4, 0x0034($sp)           
lbl_80A39AC0:
    mul.s   $f6, $f14, $f14            
    lui     $at, 0x447A                # $at = 447A0000
    mul.s   $f8, $f2, $f2              
    add.s   $f10, $f6, $f8             
    mul.s   $f4, $f12, $f12            
    mtc1    $at, $f6                   # $f6 = 1000.00
    lui     $at, 0x447A                # $at = 447A0000
    add.s   $f0, $f10, $f4             
    sqrt.s  $f16, $f0                  
    c.lt.s  $f6, $f16                  
    nop
    bc1fl   lbl_80A39B00               
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    nop
    lui     $at, 0x4348                # $at = 43480000
lbl_80A39B00:
    mtc1    $at, $f0                   # $f0 = 200.00
    lui     $at, %hi(var_80A45548)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45548)($at) 
    mul.s   $f8, $f16, $f0             
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    lw      t8, 0x00EC($sp)            
    mul.s   $f4, $f8, $f10             
    lwc1    $f8, 0x0038($sp)           
    mul.s   $f10, $f8, $f8             
    sub.s   $f6, $f0, $f4              
    lwc1    $f4, 0x0034($sp)           
    swc1    $f6, %lo(var_80A47FB4)($at) 
    mul.s   $f6, $f4, $f4              
    lui     $at, %hi(var_80A4554C)     # $at = 80A40000
    add.s   $f12, $f10, $f6            
    lwc1    $f10, %lo(var_80A4554C)($at) 
    lui     $at, 0x4320                # $at = 43200000
    c.lt.s  $f10, $f12                 
    nop
    bc1fl   lbl_80A39E1C               
    lw      t9, 0x07C0(t8)             # 000007C0
    mtc1    $at, $f6                   # $f6 = 160.00
    lw      a1, 0x00E8($sp)            
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f6, $f18                  
    addiu   v0, $sp, 0x0048            # v0 = FFFFFF60
    addiu   s0, a1, 0x0024             # s0 = 00000024
    bc1t    lbl_80A39BF0               
    nop
    mtc1    $at, $f10                  # $f10 = 80.00
    lui     $at, 0x4334                # $at = 43340000
    c.lt.s  $f8, $f10                  
    nop
    bc1t    lbl_80A39BF0               
    nop
    mtc1    $at, $f6                   # $f6 = 180.00
    lui     $at, %hi(var_80A45550)     # $at = 80A40000
    c.lt.s  $f6, $f8                   
    nop
    bc1t    lbl_80A39BF0               
    nop
    lwc1    $f10, %lo(var_80A45550)($at) 
    lui     $at, %hi(var_80A45554)     # $at = 80A40000
    c.lt.s  $f10, $f4                  
    nop
    bc1t    lbl_80A39BF0               
    nop
    lwc1    $f6, %lo(var_80A45554)($at) 
    lui     $at, 0x4234                # $at = 42340000
    c.lt.s  $f4, $f6                   
    nop
    bc1t    lbl_80A39BF0               
    nop
    mtc1    $at, $f8                   # $f8 = 45.00
    lui     a0, %hi(var_80A47F28)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F28)  # a0 = 80A47F28
    c.lt.s  $f18, $f8                  
    nop
    bc1f    lbl_80A39D10               
    nop
lbl_80A39BF0:
    lw      t6, 0x0000(s0)             # 00000024
    addiu   t8, $sp, 0x0080            # t8 = FFFFFF98
    lui     t7, %hi(var_80A47F28)      # t7 = 80A40000
    sw      t6, 0x0000(t8)             # FFFFFF98
    lw      t9, 0x0004(s0)             # 00000028
    addiu   t7, t7, %lo(var_80A47F28)  # t7 = 80A47F28
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t9, 0x0004(t8)             # FFFFFF9C
    lw      t6, 0x0008(s0)             # 0000002C
    mtc1    $at, $f10                  # $f10 = 30.00
    lui     a2, 0x4170                 # a2 = 41700000
    sw      t6, 0x0008(t8)             # FFFFFFA0
    lw      t9, 0x0000(t7)             # 80A47F28
    lui     a3, 0x41F0                 # a3 = 41F00000
    sw      t9, 0x0000(v0)             # FFFFFF60
    lw      t8, 0x0004(t7)             # 80A47F2C
    sw      t8, 0x0004(v0)             # FFFFFF64
    lw      t9, 0x0008(t7)             # 80A47F30
    lw      t7, 0x0000(v0)             # FFFFFF60
    sw      t9, 0x0008(v0)             # FFFFFF68
    sw      t7, 0x0000(s0)             # 00000024
    lw      t6, 0x0004(v0)             # FFFFFF64
    sw      t6, 0x0004(s0)             # 00000028
    lw      t7, 0x0008(v0)             # FFFFFF68
    addiu   t6, $zero, 0x0043          # t6 = 00000043
    sw      t7, 0x0008(s0)             # 0000002C
    lw      t9, 0x0000(v0)             # FFFFFF60
    sw      t9, 0x0100(a1)             # 00000100
    lw      t8, 0x0004(v0)             # FFFFFF64
    sw      t8, 0x0104(a1)             # 00000104
    lw      t9, 0x0008(v0)             # FFFFFF68
    sw      t9, 0x0108(a1)             # 00000108
    swc1    $f12, 0x00C8($sp)          
    sw      t6, 0x0014($sp)            
    lw      a0, 0x00EC($sp)            
    jal     func_80021E6C              
    swc1    $f10, 0x0010($sp)          
    addiu   t7, $sp, 0x0080            # t7 = FFFFFF98
    lw      t9, 0x0000(t7)             # FFFFFF98
    lwc1    $f12, 0x00C8($sp)          
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    sw      t9, 0x0000(s0)             # 00000024
    lw      t8, 0x0004(t7)             # FFFFFF9C
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lui     $at, 0xBF00                # $at = BF000000
    sw      t8, 0x0004(s0)             # 00000028
    lw      t9, 0x0008(t7)             # FFFFFFA0
    sw      t9, 0x0008(s0)             # 0000002C
    lw      t6, 0x00E8($sp)            
    lhu     v0, 0x0088(t6)             # 00000088
    andi    t7, v0, 0x0010             # t7 = 00000000
    beql    t7, $zero, lbl_80A39CD8    
    andi    t9, v0, 0x0008             # t9 = 00000000
    mtc1    $at, $f4                   # $f4 = -0.50
    lw      t8, 0x00E8($sp)            
    swc1    $f4, 0x0004(v1)            # 80A47F5C
    lhu     v0, 0x0088(t8)             # 00000088
    andi    t9, v0, 0x0008             # t9 = 00000000
lbl_80A39CD8:
    beq     t9, $zero, lbl_80A39D08    
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f6, 0x0004(v1)            # 80A47F5C
    c.lt.s  $f14, $f6                  
    nop
    bc1fl   lbl_80A39D00               
    swc1    $f14, 0x0008(v1)           # 80A47F60
    swc1    $f14, 0x0004(v1)           # 80A47F5C
    swc1    $f14, 0x0008(v1)           # 80A47F60
lbl_80A39D00:
    lwc1    $f8, 0x0008(v1)            # 80A47F60
    swc1    $f8, 0x0000(v1)            # 80A47F58
lbl_80A39D08:
    beq     $zero, $zero, lbl_80A39D44 
    sqrt.s  $f0, $f12                  
lbl_80A39D10:
    jal     func_80A36D50              
    swc1    $f12, 0x00C8($sp)          
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    beq     v0, $zero, lbl_80A39D40    
    lwc1    $f12, 0x00C8($sp)          
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    sh      t6, %lo(var_80A44A74)($at) 
    lui     $at, %hi(var_80A47FC4)     # $at = 80A40000
    swc1    $f10, %lo(var_80A47FC4)($at) 
lbl_80A39D40:
    sqrt.s  $f0, $f12                  
lbl_80A39D44:
    lw      t7, 0x00EC($sp)            
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f4                   # $f4 = 920.00
    lw      t8, 0x07C0(t7)             # 000007C0
    lui     $at, %hi(var_80A45558)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45558)($at) 
    lw      t9, 0x0028(t8)             # 00000028
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    mtc1    $zero, $f14                # $f14 = 0.00
    lh      t6, 0x0002(t9)             # 00000002
    sub.s   $f6, $f0, $f4              
    mtc1    t6, $f4                    # $f4 = 0.00
    mul.s   $f10, $f6, $f8             
    lwc1    $f8, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    cvt.s.w $f6, $f4                   
    add.s   $f2, $f10, $f6             
    c.le.s  $f8, $f2                   
    nop
    bc1f    lbl_80A39DCC               
    nop
    swc1    $f2, %lo(var_80A47F2C)($at) 
    swc1    $f14, 0x0008(v1)           # 80A47F60
    lwc1    $f4, 0x0008(v1)            # 80A47F60
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    swc1    $f4, 0x0004(v1)            # 80A47F5C
    lwc1    $f10, 0x0004(v1)           # 80A47F5C
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f10, 0x0000(v1)           # 80A47F58
    sh      t7, %lo(var_80A44A74)($at) 
    lui     $at, %hi(var_80A47FC4)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A39DF8 
    swc1    $f6, %lo(var_80A47FC4)($at) 
lbl_80A39DCC:
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    mfc1    a1, $f14                   
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    jal     func_80064780              
    addiu   a1, $zero, 0x30A4          # a1 = 000030A4
lbl_80A39DF8:
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A47F28)($at) 
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F30)($at) 
    swc1    $f8, 0x0038($sp)           
    beq     $zero, $zero, lbl_80A3A144 
    swc1    $f4, 0x0034($sp)           
    lw      t9, 0x07C0(t8)             # 000007C0
lbl_80A39E1C:
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lw      t6, 0x0028(t9)             # 00000028
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    lh      t7, 0x0002(t6)             # 00000002
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f0, $f10                  
    c.le.s  $f18, $f0                  
    nop
    bc1f    lbl_80A3A110               
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t8, %lo(var_80A44A74)($at) 
    lui     $at, %hi(var_80A47FC4)     # $at = 80A40000
    swc1    $f6, %lo(var_80A47FC4)($at) 
    swc1    $f8, 0x0008(v1)            # 00000008
    lwc1    $f4, 0x0008(v1)            # 00000008
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    swc1    $f4, 0x0000(v1)            # 00000000
    lbu     t9, %lo(var_80A47F26)(t9)  
    lui     a0, %hi(var_80A47F12)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F12)  # a0 = 80A47F12
    bne     t9, $at, lbl_80A39EA4      
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     a0, %hi(var_80A47F12)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F12)  # a0 = 80A47F12
    beq     $zero, $zero, lbl_80A39EA8 
    sb      $zero, 0x0000(a0)          # 80A47F12
lbl_80A39EA4:
    sb      t6, 0x0000(a0)             # 80A47F12
lbl_80A39EA8:
    c.le.s  $f18, $f0                  
    lwc1    $f10, 0x00E0($sp)          
    bc1fl   lbl_80A3A148               
    lwc1    $f10, 0x0038($sp)          
    c.lt.s  $f0, $f10                  
    lw      t7, 0x00EC($sp)            
    bc1fl   lbl_80A3A148               
    lwc1    $f10, 0x0038($sp)          
    lw      t8, 0x07C0(t7)             # 000007C0
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    lw      t9, 0x0028(t8)             # 0000002A
    lui     $at, %hi(var_80A47F84)     # $at = 80A40000
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    lh      t6, 0x0002(t9)             # 80A40002
    addiu   a1, $zero, 0x2817          # a1 = 00002817
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    c.eq.s  $f0, $f8                   
    nop
    bc1fl   lbl_80A3A148               
    lwc1    $f10, 0x0038($sp)          
    jal     func_80064780              
    sb      t7, %lo(var_80A47F84)($at) 
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, %hi(var_80A47F68)      # a2 = 80A40000
    addiu   a2, a2, %lo(var_80A47F68)  # a2 = 80A47F68
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lui     $at, %hi(var_80A4555C)     # $at = 80A40000
    swc1    $f4, 0x0004(a2)            # 80A47F6C
    lwc1    $f6, %lo(var_80A4555C)($at) 
    lwc1    $f10, 0x0004(v1)           # 80A47F5C
    lw      t8, 0x00EC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f8, $f10, $f6             
    addu    t9, t8, $at                
    sw      t9, 0x0040($sp)            
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f8, 0x0004(v1)            # 80A47F5C
    lui     $at, 0x3FC0                # $at = 3FC00000
lbl_80A39F50:
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_80026D64              
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80A45560)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45560)($at) 
    add.s   $f10, $f0, $f4             
    jal     func_80026D64              
    swc1    $f10, 0x007C($sp)          
    swc1    $f0, 0x0078($sp)           
    jal     func_800CF470              
    mov.s   $f12, $f0                  
    lwc1    $f6, 0x007C($sp)           
    lwc1    $f12, 0x0078($sp)          
    mul.s   $f8, $f0, $f6              
    jal     func_800D2CD0              
    swc1    $f8, 0x009C($sp)           
    lwc1    $f4, 0x007C($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mul.s   $f10, $f0, $f4             
    jal     func_80026D64              
    swc1    $f10, 0x00A4($sp)          
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    lui     t7, %hi(var_80A47F28)      # t7 = 80A40000
    addiu   t7, t7, %lo(var_80A47F28)  # t7 = 80A47F28
    add.s   $f6, $f0, $f2              
    addiu   t6, $sp, 0x00A8            # t6 = FFFFFFC0
    lui     $at, %hi(var_80A45564)     # $at = 80A40000
    swc1    $f6, 0x00A0($sp)           
    lw      t9, 0x0000(t7)             # 80A47F28
    lw      t8, 0x0004(t7)             # 80A47F2C
    sw      t9, 0x0000(t6)             # FFFFFFC0
    lw      t9, 0x0008(t7)             # 80A47F30
    sw      t8, 0x0004(t6)             # FFFFFFC4
    sw      t9, 0x0008(t6)             # FFFFFFC8
    lwc1    $f4, 0x009C($sp)           
    lwc1    $f8, 0x00A8($sp)           
    lw      t6, 0x00EC($sp)            
    mul.s   $f10, $f4, $f2             
    lwc1    $f12, %lo(var_80A45564)($at) 
    add.s   $f6, $f8, $f10             
    lwc1    $f10, 0x00B0($sp)          
    swc1    $f6, 0x00A8($sp)           
    lw      t7, 0x07C0(t6)             # 00000780
    lwc1    $f6, 0x00A4($sp)           
    lw      t8, 0x0028(t7)             # 80A47F50
    lh      t9, 0x0002(t8)             # 00000002
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    mul.s   $f4, $f6, $f2              
    swc1    $f8, 0x00AC($sp)           
    add.s   $f8, $f10, $f4             
    jal     func_80026D64              
    swc1    $f8, 0x00B0($sp)           
    lui     $at, %hi(var_80A45568)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45568)($at) 
    lw      t6, 0x0040($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    add.s   $f10, $f0, $f6             
    lw      a1, 0x1E10(t6)             # 00001E10
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFC0
    addiu   a3, $sp, 0x009C            # a3 = FFFFFFB4
    jal     func_80A3490C              
    swc1    $f10, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0032            
    bnel    $at, $zero, lbl_80A39F50   
    lui     $at, 0x3FC0                # $at = 3FC00000
    lui     t8, %hi(var_80A47F28)      # t8 = 80A40000
    addiu   t8, t8, %lo(var_80A47F28)  # t8 = 80A47F28
    lw      t6, 0x0000(t8)             # 80A47F28
    addiu   t7, $sp, 0x00A8            # t7 = FFFFFFC0
    lw      t9, 0x0004(t8)             # 80A47F2C
    sw      t6, 0x0000(t7)             # FFFFFFC0
    lw      t6, 0x0008(t8)             # 80A47F30
    sw      t9, 0x0004(t7)             # FFFFFFC4
    lui     $at, 0x4448                # $at = 44480000
    sw      t6, 0x0008(t7)             # FFFFFFC8
    lw      t7, 0x00EC($sp)            
    mtc1    $at, $f6                   # $f6 = 800.00
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t8, 0x07C0(t7)             # 00000780
    lw      t7, 0x0040($sp)            
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFC0
    lw      t9, 0x0028(t8)             # 80A47F50
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      t6, 0x0002(t9)             # 00000002
    addiu   t9, $zero, 0x005A          # t9 = 0000005A
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    swc1    $f8, 0x00AC($sp)           
    lw      a1, 0x1E10(t7)             # 00001DD0
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f6, 0x0010($sp)           
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47F28)($at) 
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F30)($at) 
    swc1    $f10, 0x0038($sp)          
    beq     $zero, $zero, lbl_80A3A144 
    swc1    $f4, 0x0034($sp)           
lbl_80A3A110:
    jal     func_800642F0              
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    jal     func_80064780              
    addiu   a1, $zero, 0x30A4          # a1 = 000030A4
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A47F28)($at) 
    lwc1    $f18, %lo(var_80A47F2C)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A47F30)($at) 
    swc1    $f8, 0x0038($sp)           
    swc1    $f6, 0x0034($sp)           
lbl_80A3A144:
    lwc1    $f10, 0x0038($sp)          
lbl_80A3A148:
    lui     $at, %hi(var_80A4892C)     # $at = 80A50000
    lwc1    $f4, 0x0034($sp)           
    swc1    $f10, %lo(var_80A4892C)($at) 
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    swc1    $f18, %lo(var_80A48930)($at) 
    swc1    $f4, %lo(var_80A48934)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     v0, %hi(var_80A47FB0)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FB0)  # v0 = 80A47FB0
    lui     $at, %hi(var_80A47F7C)     # $at = 80A40000
    swc1    $f8, 0x0000(v0)            # 80A47FB0
    beq     $zero, $zero, lbl_80A3B208 
    swc1    $f6, %lo(var_80A47F7C)($at) 
var_80A3A188:
    lw      t6, 0x00EC($sp)            
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lw      t7, 0x07C0(t6)             # 000007C0
    lwc1    $f18, 0x0004(v0)           # 80A47F2C
    lw      t8, 0x0028(t7)             # 00000028
    lh      t9, 0x0002(t8)             # 00000002
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10                  
    c.le.s  $f18, $f4                  
    nop
    bc1f    lbl_80A3A230               
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    lwc1    $f8, 0x0004(v1)            # 80A47F5C
    lui     a0, %hi(var_80A47F5C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F5C)  # a0 = 80A47F5C
    add.s   $f6, $f18, $f8             
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800642F0              
    swc1    $f6, 0x0004(v0)            # 80A47F2C
    lui     t6, %hi(var_80A47F26)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47F26)(t6)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t7, 0x00EC($sp)            
    beq     t6, $at, lbl_80A3A230      
    nop
    lw      t8, 0x07C0(t7)             # 000007C0
    lui     a0, %hi(var_80A47F2C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F2C)  # a0 = 80A47F2C
    lw      t9, 0x0028(t8)             # 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t6, 0x0002(t9)             # 00000002
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f10, $f10                 
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
lbl_80A3A230:
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A47F12)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F12)  # a0 = 80A47F12
    lbu     v0, 0x0000(a0)             # 80A47F12
    bne     v0, $zero, lbl_80A3A26C    
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3B208 
    sh      t7, %lo(var_80A44A74)($at) 
lbl_80A3A26C:
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80A3B208 
    sb      t8, 0x0000(a0)             # 80A47F12
var_80A3A278:
    lui     t9, %hi(var_80A44A6C)      # t9 = 80A40000
    lbu     t9, %lo(var_80A44A6C)(t9)  
    lui     $at, %hi(var_80A49D10)     # $at = 80A50000
    sh      $zero, %lo(var_80A49D10)($at) 
    beq     t9, $zero, lbl_80A3A2CC    
    lui     a3, %hi(var_80A47F28)      # a3 = 80A40000
    addiu   a3, a3, %lo(var_80A47F28)  # a3 = 80A47F28
    lwc1    $f0, 0x0000(a3)            # 80A47F28
    lwc1    $f2, 0x0008(a3)            # 80A47F30
    lui     $at, %hi(var_80A4556C)     # $at = 80A40000
    mul.s   $f4, $f0, $f0              
    lwc1    $f10, %lo(var_80A4556C)($at) 
    lui     $at, %hi(var_80A44A70)     # $at = 80A40000
    mul.s   $f8, $f2, $f2              
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    add.s   $f6, $f4, $f8              
    c.lt.s  $f6, $f10                  
    nop
    bc1fl   lbl_80A3A2D0               
    lw      t8, 0x00C0($sp)            
    sb      t6, %lo(var_80A44A70)($at) 
lbl_80A3A2CC:
    lw      t8, 0x00C0($sp)            
lbl_80A3A2D0:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    sh      t7, 0x0850(t8)             # 0000084F
    lwc1    $f4, %lo(var_80A47FA8)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     a3, %hi(var_80A47F28)      # a3 = 80A40000
    addiu   a3, a3, %lo(var_80A47F28)  # a3 = 80A47F28
    c.lt.s  $f4, $f8                   
    lui     a0, %hi(var_80A47F1E)      # a0 = 80A40000
    lui     $at, %hi(var_80A47F80)     # $at = 80A40000
    bc1fl   lbl_80A3A3B8               
    mtc1    $zero, $f8                 # $f8 = 0.00
    lh      a0, %lo(var_80A47F1E)(a0)  
    addu    $at, a0, $zero             
    sll     a0, a0,  5                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  5                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A47F7C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A47F7C)($at) 
    lui     $at, %hi(var_80A45570)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45570)($at) 
    mul.s   $f12, $f0, $f6             
    lui     s0, %hi(var_80A47F48)      # s0 = 80A40000
    addiu   s0, s0, %lo(var_80A47F48)  # s0 = 80A47F48
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_80A47F80)      # a3 = 80A40000
    lw      a3, %lo(var_80A47F80)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    add.s   $f4, $f10, $f12            
    or      a0, s0, $zero              # a0 = 80A47F48
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lui     a0, %hi(var_80A47F80)      # a0 = 80A40000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, a0, %lo(var_80A47F80)  # a0 = 80A47F80
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A47F7C)      # a0 = 80A40000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, a0, %lo(var_80A47F7C)  # a0 = 80A47F7C
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     t0, %hi(var_80A48938)      # t0 = 80A50000
    lui     a3, %hi(var_80A47F28)      # a3 = 80A40000
    addiu   a3, a3, %lo(var_80A47F28)  # a3 = 80A47F28
    beq     $zero, $zero, lbl_80A3A3C4 
    addiu   t0, t0, %lo(var_80A48938)  # t0 = 80A48938
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80A3A3B8:
    lui     s0, %hi(var_80A47F48)      # s0 = 80A40000
    addiu   s0, s0, %lo(var_80A47F48)  # s0 = 80A47F48
    swc1    $f8, %lo(var_80A47F80)($at) 
lbl_80A3A3C4:
    lw      t1, 0x00EC($sp)            
    addiu   t9, $zero, 0x4000          # t9 = 00004000
    sh      t9, 0x00DC($sp)            
    lw      t6, 0x07C0(t1)             # 000007C0
    lwc1    $f10, 0x0008(a3)           # 80A47F30
    lwc1    $f14, 0x0000(a3)           # 80A47F28
    lw      t7, 0x0028(t6)             # 00000028
    lui     $at, %hi(var_80A45574)     # $at = 80A40000
    lh      t8, 0x0002(t7)             # 00000002
    swc1    $f10, 0x0034($sp)          
    lwc1    $f4, 0x0034($sp)           
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f10, %lo(var_80A45574)($at) 
    mul.s   $f8, $f4, $f4              
    lui     $at, 0x4080                # $at = 40800000
    cvt.s.w $f2, $f6                   
    mul.s   $f6, $f14, $f14            
    swc1    $f2, 0x00E4($sp)           
    lwc1    $f4, 0x00E4($sp)           
    add.s   $f12, $f6, $f8             
    c.lt.s  $f12, $f10                 
    nop
    bc1fl   lbl_80A3A814               
    sqrt.s  $f0, $f12                  
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f18, 0x0004(a3)           # 80A47F2C
    lui     t9, %hi(var_80A47FC0)      # t9 = 80A40000
    add.s   $f8, $f4, $f6              
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    c.le.s  $f18, $f8                  
    nop
    bc1f    lbl_80A3A7B0               
    nop
    lh      t9, %lo(var_80A47FC0)(t9)  
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   v1, t1, 0x0014             # v1 = 00000014
    bnel    t9, $zero, lbl_80A3A504    
    lui     $at, 0x3F80                # $at = 3F800000
    lb      v0, 0x0014(v1)             # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     t6, %hi(var_80A44AA4)      # t6 = 80A40000
    cvt.s.w $f0, $f10                  
    abs.s   $f0, $f0                   
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A3A4B4               
    lb      v0, 0x0015(v1)             # 00000029
    lh      t6, %lo(var_80A44AA4)(t6)  
    lui     $at, %hi(var_80A45578)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45578)($at) 
    subu    t7, v0, t6                 
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f0, $f8, $f10             
    beq     $zero, $zero, lbl_80A3A500 
    abs.s   $f16, $f0                  
    lb      v0, 0x0015(v1)             # 00000029
lbl_80A3A4B4:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t8, %hi(var_80A44AA8)      # t8 = 80A40000
    cvt.s.w $f0, $f4                   
    abs.s   $f0, $f0                   
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A3A504               
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t8, %lo(var_80A44AA8)(t8)  
    lui     $at, %hi(var_80A4557C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4557C)($at) 
    subu    t9, v0, t8                 
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f0, $f10, $f4             
    abs.s   $f16, $f0                  
lbl_80A3A500:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80A3A504:
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   v0, t1, 0x0014             # v0 = 00000014
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f6, $f16                  
    lui     t8, %hi(var_80A44A6C)      # t8 = 80A40000
    bc1fl   lbl_80A3A52C               
    lhu     t6, 0x000C(v0)             # 00000020
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    lhu     t6, 0x000C(v0)             # 00000020
lbl_80A3A52C:
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t7, t6, 0x4000             # t7 = 00000000
    bne     t7, $at, lbl_80A3A544      
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
lbl_80A3A544:
    lbu     t8, %lo(var_80A44A6C)(t8)  
    lui     $at, %hi(var_80A45580)     # $at = 80A40000
    beq     t8, $zero, lbl_80A3A570    
    nop
    lwc1    $f8, %lo(var_80A45580)($at) 
    lui     $at, %hi(var_80A45584)     # $at = 80A40000
    c.lt.s  $f8, $f16                  
    nop
    bc1f    lbl_80A3A570               
    nop
    lwc1    $f16, %lo(var_80A45584)($at) 
lbl_80A3A570:
    lui     $at, %hi(var_80A45588)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45588)($at) 
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80A3A72C               
    lhu     t6, 0x0000(v0)             # 00000014
    lwc1    $f4, %lo(var_80A47FA8)($at) 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, %hi(var_80A47FC0)     # $at = 80A40000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A3A72C               
    lhu     t6, 0x0000(v0)             # 00000014
    sh      t9, %lo(var_80A47FC0)($at) 
    lui     $at, %hi(var_80A4558C)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A4558C)($at) 
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, %hi(var_80A47F90)     # $at = 80A40000
    c.lt.s  $f8, $f16                  
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bc1f    lbl_80A3A5E4               
    nop
    lui     $at, %hi(var_80A47F90)     # $at = 80A40000
    sb      t6, %lo(var_80A47F90)($at) 
    beq     $zero, $zero, lbl_80A3A5EC 
    swc1    $f14, 0x0038($sp)          
lbl_80A3A5E4:
    sb      t7, %lo(var_80A47F90)($at) 
    swc1    $f14, 0x0038($sp)          
lbl_80A3A5EC:
    lw      t8, 0x00C0($sp)            
    lwc1    $f4, 0x0038($sp)           
    lwc1    $f10, 0x0024(t8)           # 80A40024
    sub.s   $f14, $f10, $f4            
    lwc1    $f10, 0x0034($sp)          
    swc1    $f14, 0x0090($sp)          
    lwc1    $f8, 0x002C(t8)            # 80A4002C
    swc1    $f16, 0x0070($sp)          
    sub.s   $f12, $f8, $f10            
    jal     func_800AA670              
    swc1    $f12, 0x0098($sp)          
    lui     v0, %hi(var_80A47FB0)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FB0)  # v0 = 80A47FB0
    lwc1    $f16, 0x0070($sp)          
    lwc1    $f2, 0x0000(v0)            # 80A47FB0
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    swc1    $f0, 0x0094($sp)           
    mul.s   $f8, $f16, $f2             
    lui     v1, %hi(var_80A47FB4)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47FB4)  # v1 = 80A47FB4
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    addiu   a1, $zero, 0x28C3          # a1 = 000028C3
    add.s   $f10, $f8, $f0             
    abs.s   $f0, $f16                  
    swc1    $f10, %lo(var_80A47FA4)($at) 
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    mul.s   $f6, $f2, $f4              
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f10, $f0, $f8             
    swc1    $f6, 0x0000(v0)            # 80A47FB0
    swc1    $f10, %lo(var_80A47FA8)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80A47F7C)     # $at = 80A40000
    swc1    $f4, 0x0000(s0)            # 80A47F48
    swc1    $f6, %lo(var_80A47F7C)($at) 
    lui     $at, 0x40F0                # $at = 40F00000
    mtc1    $at, $f10                  # $f10 = 7.50
    lwc1    $f8, 0x0000(v1)            # 80A47FB4
    lui     $at, %hi(var_80A45590)     # $at = 80A40000
    mul.s   $f4, $f0, $f10             
    add.s   $f6, $f8, $f4              
    swc1    $f6, 0x0000(v1)            # 80A47FB4
    lwc1    $f10, %lo(var_80A45590)($at) 
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    mul.s   $f8, $f16, $f10            
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f10                  # $f10 = 0.75
    mul.s   $f6, $f8, $f4              
    add.s   $f8, $f6, $f10             
    mfc1    a2, $f8                    
    jal     func_800C50AC              
    nop
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47F26)(t9)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lwc1    $f16, 0x0070($sp)          
    bne     t9, $at, lbl_80A3A720      
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, %hi(var_80A47F9C)     # $at = 80A40000
    mul.s   $f6, $f4, $f16             
    swc1    $f6, %lo(var_80A47F9C)($at) 
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A48930)($at) 
    add.s   $f8, $f10, $f6             
    swc1    $f8, %lo(var_80A48930)($at) 
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F2C)($at) 
    add.s   $f6, $f4, $f6              
    swc1    $f6, %lo(var_80A47F2C)($at) 
lbl_80A3A720:
    beq     $zero, $zero, lbl_80A3A914 
    lw      t1, 0x00EC($sp)            
    lhu     t6, 0x0000(v0)             # 00000000
lbl_80A3A72C:
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t7, t6, 0x8000             # t7 = 00000000
    bne     t7, $at, lbl_80A3A914      
    lui     $at, %hi(var_80A45594)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45594)($at) 
    lwc1    $f10, 0x094C(t0)           # 0000094C
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f4, $f10, $f8             
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    addiu   t8, $zero, 0x0500          # t8 = 00000500
    sh      t8, 0x00DC($sp)            
    swc1    $f4, %lo(var_80A47FA4)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    swc1    $f6, 0x0000(s0)            # 80A47F48
    lbu     t9, %lo(var_80A47F26)(t9)  
    lui     $at, %hi(var_80A47F7C)     # $at = 80A40000
    swc1    $f10, %lo(var_80A47F7C)($at) 
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t9, $at, lbl_80A3A914      
    lui     $at, %hi(var_80A45598)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45598)($at) 
    lui     $at, %hi(var_80A47F9C)     # $at = 80A40000
    swc1    $f8, %lo(var_80A47F9C)($at) 
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A48930)($at) 
    add.s   $f10, $f18, $f8            
    add.s   $f6, $f4, $f8              
    swc1    $f6, %lo(var_80A48930)($at) 
    swc1    $f10, 0x0004(a3)           # 00000004
    beq     $zero, $zero, lbl_80A3A914 
    nop
lbl_80A3A7B0:
    lwc1    $f0, %lo(var_80A47FB4)($at) 
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    lui     $at, %hi(var_80A4559C)     # $at = 80A40000
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3A914               
    nop
    lwc1    $f4, 0x0948(t0)            # 00000948
    lwc1    $f6, %lo(var_80A4559C)($at) 
    lui     $at, %hi(var_80A455A0)     # $at = 80A40000
    lwc1    $f8, 0x094C(t0)            # 0000094C
    add.s   $f10, $f4, $f6             
    swc1    $f10, 0x0000(s0)           # 80A47F48
    lwc1    $f4, %lo(var_80A455A0)($at) 
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    add.s   $f6, $f8, $f4              
    swc1    $f6, %lo(var_80A47FA4)($at) 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    add.s   $f8, $f0, $f10             
    beq     $zero, $zero, lbl_80A3A914 
    swc1    $f8, %lo(var_80A47FB4)($at) 
    sqrt.s  $f0, $f12                  
lbl_80A3A814:
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f4                   # $f4 = 920.00
    lui     $at, %hi(var_80A455A4)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A455A4)($at) 
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    sub.s   $f6, $f0, $f4              
    mul.s   $f8, $f6, $f10             
    lwc1    $f6, 0x0004(a3)            # 00000004
    add.s   $f4, $f8, $f2              
    c.le.s  $f6, $f4                   
    swc1    $f4, 0x00E4($sp)           
    bc1f    lbl_80A3A8B8               
    nop
    swc1    $f4, 0x0004(a3)            # 00000004
    lui     $at, %hi(var_80A455A8)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A455A8)($at) 
    lwc1    $f10, 0x094C(t0)           # 0000094C
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    add.s   $f6, $f10, $f8             
    addiu   t6, $zero, 0x0500          # t6 = 00000500
    sh      t6, 0x00DC($sp)            
    swc1    $f6, %lo(var_80A47FA4)($at) 
    swc1    $f4, 0x0000(s0)            # 80A47F48
    lhu     t7, 0x0020(t1)             # 00000020
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t8, t7, 0x4000             # t8 = 00000000
    bne     t8, $at, lbl_80A3A914      
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47FB4)($at) 
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    lui     a0, %hi(var_80A45374)      # a0 = 80A40000
    add.s   $f6, $f10, $f8             
    addiu   a0, a0, %lo(var_80A45374)  # a0 = 80A45374
    addiu   a1, $zero, 0x0801          # a1 = 00000801
    jal     func_80064780              
    swc1    $f6, %lo(var_80A47FB4)($at) 
    beq     $zero, $zero, lbl_80A3A914 
    lw      t1, 0x00EC($sp)            
lbl_80A3A8B8:
    lwc1    $f0, %lo(var_80A47FB4)($at) 
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lui     $at, %hi(var_80A455AC)     # $at = 80A40000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80A3A914               
    nop
    lwc1    $f10, 0x0948(t0)           # 00000948
    lwc1    $f8, %lo(var_80A455AC)($at) 
    lui     $at, %hi(var_80A455B0)     # $at = 80A40000
    lwc1    $f4, 0x094C(t0)            # 0000094C
    add.s   $f6, $f10, $f8             
    swc1    $f6, 0x0000(s0)            # 80A47F48
    lwc1    $f10, %lo(var_80A455B0)($at) 
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    add.s   $f8, $f4, $f10             
    swc1    $f8, %lo(var_80A47FA4)($at) 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    add.s   $f4, $f0, $f6              
    swc1    $f4, %lo(var_80A47FB4)($at) 
lbl_80A3A914:
    lui     a0, %hi(var_80A47FA8)      # a0 = 80A40000
    lui     a2, 0x3E99                 # a2 = 3E990000
    addiu   t9, t1, 0x0014             # t9 = 00000014
    sw      t9, 0x0040($sp)            
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_80A47FA8)  # a0 = 80A47FA8
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     $at, %hi(var_80A47FA4)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A47FA4)($at) 
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80A455B4)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A455B4)($at) 
    mul.s   $f6, $f10, $f8             
    lui     a0, %hi(var_80A47FAC)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47FAC)  # a0 = 80A47FAC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a3, 0x00DC($sp)            
    div.s   $f10, $f6, $f4             
    trunc.w.s $f8, $f10                  
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lui     t7, %hi(var_80A47FAC)      # t7 = 80A40000
    lh      t7, %lo(var_80A47FAC)(t7)  
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A455B8)     # $at = 80A40000
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f4, $f6                   
    lwc1    $f6, %lo(var_80A455B8)($at) 
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f0, 0x0090($sp)           
    swc1    $f0, 0x0094($sp)           
    div.s   $f8, $f4, $f10             
    mul.s   $f4, $f8, $f6              
    swc1    $f4, 0x0004(s0)            # 80A47F4C
    lwc1    $f10, %lo(var_80A47FA8)($at) 
    lwc1    $f12, 0x0004(s0)           # 80A47F4C
    jal     func_800AAB94              
    swc1    $f10, 0x0098($sp)          
    lui     t8, %hi(var_80A47F26)      # t8 = 80A40000
    lbu     t8, %lo(var_80A47F26)(t8)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFA8
    bne     t8, $at, lbl_80A3AA14      
    nop
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFF7C
    lwc1    $f8, 0x0064($sp)           
    lwc1    $f6, 0x006C($sp)           
    lui     v1, %hi(var_80A47F98)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F98)  # v1 = 80A47F98
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    swc1    $f8, 0x0000(v1)            # 80A47F98
    swc1    $f6, 0x0008(v1)            # 80A47FA0
    beq     $zero, $zero, lbl_80A3AA34 
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80A3AA14:
    lui     a1, %hi(var_80A47F98)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F98)  # a1 = 80A47F98
    jal     func_800AB958              
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFA8
    lui     v1, %hi(var_80A47F98)      # v1 = 80A40000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, v1, %lo(var_80A47F98)  # v1 = 80A47F98
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80A3AA34:
    lui     a0, %hi(var_80A47F74)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47F74)  # a0 = 80A47F74
    lui     v0, %hi(var_80A47F26)      # v0 = 80A40000
    swc1    $f4, 0x0000(a0)            # 80A47F74
    lbu     v0, %lo(var_80A47F26)(v0)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t9, 0x0040($sp)            
    bnel    v0, $at, lbl_80A3AAB8      
    lw      t6, 0x00EC($sp)            
    lhu     t6, 0x0000(t9)             # 00000000
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t7, t6, 0x8000             # t7 = 00000000
    bne     t7, $at, lbl_80A3AAB4      
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f10                  # $f10 = -2.00
    lui     t8, %hi(var_80A47F1E)      # t8 = 80A40000
    lui     $at, 0xBF00                # $at = BF000000
    swc1    $f10, 0x0004(v1)           # 80A47F9C
    lh      t8, %lo(var_80A47F1E)(t8)  
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80A3AAA0    
    mtc1    $at, $f6                   # $f6 = -0.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    beq     $zero, $zero, lbl_80A3AAA8 
    swc1    $f8, 0x0000(a0)            # 80A47F74
    mtc1    $at, $f6                   # $f6 = 0.50
lbl_80A3AAA0:
    nop
    swc1    $f6, 0x0000(a0)            # 80A47F74
lbl_80A3AAA8:
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    beq     $zero, $zero, lbl_80A3ACA0 
    lwc1    $f12, %lo(var_80A48930)($at) 
lbl_80A3AAB4:
    lw      t6, 0x00EC($sp)            
lbl_80A3AAB8:
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    lwc1    $f12, %lo(var_80A48930)($at) 
    lw      t7, 0x07C0(t6)             # 000007C0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t8, 0x0028(t7)             # 00000028
    lh      t9, 0x0002(t8)             # 80A40002
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f2, $f4                   
    add.s   $f10, $f2, $f0             
    c.lt.s  $f12, $f10                 
    nop
    bc1f    lbl_80A3ACA0               
    nop
    bne     v0, $at, lbl_80A3AC60      
    lw      a1, 0x00E8($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   v0, $sp, 0x0048            # v0 = FFFFFF60
    addiu   s0, a1, 0x0024             # s0 = 00000024
    lw      t8, 0x0000(s0)             # 00000024
    addiu   t6, $sp, 0x0058            # t6 = FFFFFF70
    lui     t9, %hi(var_80A47F28)      # t9 = 80A40000
    sw      t8, 0x0000(t6)             # FFFFFF70
    lw      t7, 0x0004(s0)             # 00000028
    addiu   t9, t9, %lo(var_80A47F28)  # t9 = 80A47F28
    mfc1    a3, $f0                    
    sw      t7, 0x0004(t6)             # FFFFFF74
    lw      t8, 0x0008(s0)             # 0000002C
    lui     a2, 0x4170                 # a2 = 41700000
    sw      t8, 0x0008(t6)             # FFFFFF78
    lw      t7, 0x0000(t9)             # 80A47F28
    sw      t7, 0x0000(v0)             # FFFFFF60
    lw      t6, 0x0004(t9)             # 80A47F2C
    sw      t6, 0x0004(v0)             # FFFFFF64
    lw      t7, 0x0008(t9)             # 80A47F30
    lw      t9, 0x0000(v0)             # FFFFFF60
    sw      t7, 0x0008(v0)             # FFFFFF68
    sw      t9, 0x0000(s0)             # 00000024
    lw      t8, 0x0004(v0)             # FFFFFF64
    sw      t8, 0x0004(s0)             # 00000028
    lw      t9, 0x0008(v0)             # FFFFFF68
    addiu   t8, $zero, 0x0044          # t8 = 00000044
    sw      t9, 0x0008(s0)             # 0000002C
    lw      t7, 0x0000(v0)             # FFFFFF60
    sw      t7, 0x0100(a1)             # 00000100
    lw      t6, 0x0004(v0)             # FFFFFF64
    sw      t6, 0x0104(a1)             # 00000104
    lw      t7, 0x0008(v0)             # FFFFFF68
    sw      t7, 0x0108(a1)             # 00000108
    sw      t8, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    jal     func_80021E6C              
    lw      a0, 0x00EC($sp)            
    addiu   t9, $sp, 0x0058            # t9 = FFFFFF70
    lw      t7, 0x0000(t9)             # FFFFFF70
    lui     v0, %hi(var_80A47F98)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F98)  # v0 = 80A47F98
    sw      t7, 0x0000(s0)             # 00000024
    lw      t6, 0x0004(t9)             # FFFFFF74
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f6                   # $f6 = -0.50
    sw      t6, 0x0004(s0)             # 00000028
    lw      t7, 0x0008(t9)             # FFFFFF78
    lui     $at, 0xBF80                # $at = BF800000
    lui     v1, %hi(var_80A47F98)      # v1 = 80A40000
    sw      t7, 0x0008(s0)             # 0000002C
    lwc1    $f8, 0x0004(v0)            # 80A47F9C
    addiu   v1, v1, %lo(var_80A47F98)  # v1 = 80A47F98
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    add.s   $f4, $f8, $f6              
    mtc1    $at, $f8                   # $f8 = -1.00
    lui     $at, 0xBF80                # $at = BF800000
    swc1    $f4, 0x0004(v0)            # 80A47F9C
    lwc1    $f10, 0x0004(v0)           # 80A47F9C
    c.lt.s  $f10, $f8                  
    nop
    bc1fl   lbl_80A3AC04               
    lw      t8, 0x00E8($sp)            
    mtc1    $at, $f6                   # $f6 = -1.00
    nop
    swc1    $f6, 0x0004(v0)            # 80A47F9C
    lw      t8, 0x00E8($sp)            
lbl_80A3AC04:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f4, 0x0080(t8)            # 00000080
    lui     t1, %hi(var_80A47F28)      # t1 = 80A40000
    addiu   t1, t1, %lo(var_80A47F28)  # t1 = 80A47F28
    add.s   $f0, $f4, $f10             
    lwc1    $f8, 0x0004(t1)            # 80A47F2C
    lui     $at, %hi(var_80A47F90)     # $at = 80A40000
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3AC50               
    nop
    swc1    $f0, 0x0004(t1)            # 80A47F2C
    lwc1    $f6, 0x0004(t1)            # 80A47F2C
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    swc1    $f6, %lo(var_80A48930)($at) 
    beq     $zero, $zero, lbl_80A3AC54 
    swc1    $f4, 0x0004(v0)            # 80A47F9C
lbl_80A3AC50:
    sb      t9, %lo(var_80A47F90)($at) 
lbl_80A3AC54:
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    beq     $zero, $zero, lbl_80A3ACA0 
    lwc1    $f12, %lo(var_80A48930)($at) 
lbl_80A3AC60:
    sub.s   $f0, $f12, $f2             
    lui     $at, %hi(var_80A455BC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A455BC)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    abs.s   $f0, $f0                   
    mtc1    $at, $f6                   # $f6 = 1.50
    mul.s   $f8, $f0, $f10             
    swc1    $f8, 0x0004(v1)            # 80A47F9C
    lwc1    $f4, 0x0004(v1)            # 80A47F9C
    c.lt.s  $f6, $f4                   
    nop
    bc1f    lbl_80A3ACA0               
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    nop
    swc1    $f10, 0x0004(v1)           # 80A47F9C
lbl_80A3ACA0:
    lui     t0, %hi(var_80A47FD8)      # t0 = 80A40000
    addiu   t0, t0, %lo(var_80A47FD8)  # t0 = 80A47FD8
    lwc1    $f8, 0x0954(t0)            # 80A4892C
    lwc1    $f6, 0x0000(v1)            # 80A47F98
    lwc1    $f10, 0x0004(v1)           # 80A47F9C
    lui     $at, 0x40C0                # $at = 40C00000
    add.s   $f4, $f8, $f6              
    lwc1    $f6, 0x095C(t0)            # 80A48934
    add.s   $f8, $f12, $f10            
    swc1    $f4, 0x0954(t0)            # 80A4892C
    lwc1    $f4, 0x0008(v1)            # 80A47FA0
    swc1    $f8, 0x0958(t0)            # 80A48930
    add.s   $f10, $f6, $f4             
    mtc1    $at, $f6                   # $f6 = 6.00
    lwc1    $f8, 0x00E4($sp)           
    lwc1    $f12, 0x0958(t0)           # 80A48930
    swc1    $f10, 0x095C(t0)           # 80A48934
    add.s   $f4, $f8, $f6              
    mtc1    $zero, $f6                 # $f6 = 0.00
    c.lt.s  $f4, $f12                  
    nop
    bc1f    lbl_80A3AD0C               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    nop
    sub.s   $f8, $f12, $f10            
    swc1    $f8, 0x0958(t0)            # 80A48930
lbl_80A3AD0C:
    lui     a2, %hi(var_80A47F68)      # a2 = 80A40000
    addiu   a2, a2, %lo(var_80A47F68)  # a2 = 80A47F68
    swc1    $f6, 0x0004(a2)            # 80A47F6C
    lwc1    $f4, 0x0004(a2)            # 80A47F6C
    lui     v1, %hi(var_80A47F58)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F58)  # v1 = 80A47F58
    swc1    $f4, 0x0008(v1)            # 80A47F60
    lwc1    $f10, 0x0008(v1)           # 80A47F60
    lw      t6, 0x0040($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    swc1    $f10, 0x0004(v1)           # 80A47F5C
    lwc1    $f8, 0x0004(v1)            # 80A47F5C
    swc1    $f8, 0x0000(v1)            # 80A47F58
    lhu     v0, 0x0000(t6)             # 00000000
    andi    t7, v0, 0x8000             # t7 = 00000000
    bne     t7, $at, lbl_80A3AE6C      
    andi    t8, v0, 0x0010             # t8 = 00000010
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     t8, $at, lbl_80A3ADA0      
    lui     v0, %hi(var_80A47FB4)      # v0 = 80A40000
    lui     v0, %hi(var_80A47FB4)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FB4)  # v0 = 80A47FB4
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lwc1    $f6, 0x0000(v0)            # 80A47FB4
    addiu   a0, $zero, 0x103E          # a0 = 0000103E
    add.s   $f10, $f6, $f4             
    jal     func_800646F0              
    swc1    $f10, 0x0000(v0)           # 80A47FB4
    lui     a0, %hi(var_80A47FC4)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47FC4)  # a0 = 80A47FC4
    lui     a1, 0x447A                 # a1 = 447A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    beq     $zero, $zero, lbl_80A3ADE0 
    lw      t9, 0x00EC($sp)            
lbl_80A3ADA0:
    addiu   v0, v0, %lo(var_80A47FB4)  # v0 = 00007FB4
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A47F8C)($at) 
    lwc1    $f8, 0x0000(v0)            # 00007FB4
    addiu   a0, $zero, 0x103D          # a0 = 0000103D
    add.s   $f4, $f8, $f6              
    jal     func_800646F0              
    swc1    $f4, 0x0000(v0)            # 00007FB4
    lui     a0, %hi(var_80A47FC4)      # a0 = 80A40000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a0, a0, %lo(var_80A47FC4)  # a0 = 80A47FC4
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t9, 0x00EC($sp)            
lbl_80A3ADE0:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lw      t6, 0x07C0(t9)             # 000007C0
    lui     $at, %hi(var_80A48930)     # $at = 80A50000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    lw      t7, 0x0028(t6)             # 00000028
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lui     a1, 0x4040                 # a1 = 40400000
    lh      t8, 0x0002(t7)             # 00000002
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    lwc1    $f10, %lo(var_80A48930)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f4, $f8, $f6              
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80A3AE4C               
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    jal     func_80064280              
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    beq     $zero, $zero, lbl_80A3AE88 
    nop
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_80A3AE4C:
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 00007FB8
    beq     $zero, $zero, lbl_80A3AE88 
    nop
lbl_80A3AE6C:
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
lbl_80A3AE88:
    lui     a0, %hi(var_80A47F28)      # a0 = 80A40000
    lui     a1, %hi(var_80A4892C)      # a1 = 80A50000
    lui     a3, %hi(var_80A47FC4)      # a3 = 80A40000
    lw      a3, %lo(var_80A47FC4)(a3)  
    lw      a1, %lo(var_80A4892C)(a1)  
    addiu   a0, a0, %lo(var_80A47F28)  # a0 = 80A47F28
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A47F2C)      # a0 = 80A40000
    lui     a1, %hi(var_80A48930)      # a1 = 80A50000
    lui     a3, %hi(var_80A47FC4)      # a3 = 80A40000
    lw      a3, %lo(var_80A47FC4)(a3)  
    lw      a1, %lo(var_80A48930)(a1)  
    addiu   a0, a0, %lo(var_80A47F2C)  # a0 = 80A47F2C
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a0, %hi(var_80A47F30)      # a0 = 80A40000
    lui     a1, %hi(var_80A48934)      # a1 = 80A50000
    lui     a3, %hi(var_80A47FC4)      # a3 = 80A40000
    lw      a3, %lo(var_80A47FC4)(a3)  
    lw      a1, %lo(var_80A48934)(a1)  
    addiu   a0, a0, %lo(var_80A47F30)  # a0 = 80A47F30
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A47FA8)($at) 
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A3AF28               
    lui     a0, %hi(var_80A47FC4)      # a0 = 80A40000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   a0, a0, %lo(var_80A47FC4)  # a0 = 80A47FC4
    jal     func_80064280              
    lui     a1, 0x447A                 # a1 = 447A0000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80A3AF28:
    lui     a0, %hi(var_80A47FC4)      # a0 = 80A40000
    mfc1    a2, $f0                    
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, a0, %lo(var_80A47FC4)  # a0 = 80A47FC4
    jal     func_80064280              
    lui     a1, 0x447A                 # a1 = 447A0000
    lui     v0, %hi(var_80A47FB4)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FB4)  # v0 = 80A47FB4
    lui     $at, 0x4343                # $at = 43430000
    mtc1    $at, $f0                   # $f0 = 195.00
    lwc1    $f6, 0x0000(v0)            # 80A47FB4
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A3AF94               
    lw      v1, 0x00EC($sp)            
    swc1    $f0, 0x0000(v0)            # 80A47FB4
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    sh      $zero, %lo(var_80A44A74)($at) 
    lui     $at, 0x4402                # $at = 44020000
    mtc1    $at, $f4                   # $f4 = 520.00
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    swc1    $f4, %lo(var_80A47FB8)($at) 
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      t9, %lo(var_80A44AAC)($at) 
    lw      v1, 0x00EC($sp)            
lbl_80A3AF94:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lw      t6, 0x07C0(v1)             # 000007C0
    lui     t0, %hi(var_80A47F28)      # t0 = 80A40000
    addiu   t0, t0, %lo(var_80A47F28)  # t0 = 80A47F28
    lw      t7, 0x0028(t6)             # 00000028
    lwc1    $f18, 0x0004(t0)           # 80A47F2C
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f2, $f10                  
    add.s   $f6, $f2, $f8              
    c.le.s  $f18, $f6                  
    nop
    bc1f    lbl_80A3B208               
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lw      t9, 0x0040($sp)            
    lui     t8, %hi(var_80A47F1E)      # t8 = 80A40000
    sub.s   $f10, $f2, $f4             
    c.le.s  $f10, $f18                 
    nop
    bc1fl   lbl_80A3B20C               
    lw      $ra, 0x002C($sp)           
    lhu     t6, 0x0000(t9)             # 00000003
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   v0, $zero, 0x003F          # v0 = 0000003F
    andi    t7, t6, 0x8000             # t7 = 00000000
    beq     t7, $at, lbl_80A3B028      
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A47FA8)($at) 
    c.lt.s  $f8, $f6                   
    nop
    bc1f    lbl_80A3B02C               
    nop
lbl_80A3B028:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A3B02C:
    lh      t8, %lo(var_80A47F1E)(t8)  
    and     t9, t8, v0                 
    bnel    t9, $zero, lbl_80A3B20C    
    lw      $ra, 0x002C($sp)           
    lw      t7, 0x0000(t0)             # 80A47F28
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFC0
    lw      t6, 0x0004(t0)             # 80A47F2C
    sw      t7, 0x0000(a2)             # FFFFFFC0
    lw      t7, 0x0008(t0)             # 80A47F30
    sw      t6, 0x0004(a2)             # FFFFFFC4
    lui     a1, 0x0001                 # a1 = 00010000
    sw      t7, 0x0008(a2)             # FFFFFFC8
    lw      t8, 0x07C0(v1)             # 000007C0
    addu    a1, a1, v1                 
    lui     $at, 0x4396                # $at = 43960000
    lw      t9, 0x0028(t8)             # 80A40028
    mtc1    $at, $f8                   # $f8 = 300.00
    addiu   t8, $zero, 0x005A          # t8 = 0000005A
    lh      t6, 0x0002(t9)             # 00000005
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    or      a0, $zero, $zero           # a0 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     a3, 0x41F0                 # a3 = 41F00000
    cvt.s.w $f10, $f4                  
    swc1    $f10, 0x00AC($sp)          
    lw      a1, 0x1E10(a1)             # 00011E10
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f8, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A3B20C 
    lw      $ra, 0x002C($sp)           
var_80A3B0AC:
    lw      a0, 0x00E8($sp)            
    lui     v1, %hi(var_80A47FB4)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47FB4)  # v1 = 80A47FB4
    lbu     v0, 0x0147(a0)             # 00000147
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    beq     v0, $zero, lbl_80A3B0DC    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x0147(a0)             # 00000147
    lwc1    $f6, 0x0000(v1)            # 80A47FB4
    lwc1    $f4, %lo(var_80A47F8C)($at) 
    add.s   $f10, $f6, $f4             
    swc1    $f10, 0x0000(v1)           # 80A47FB4
lbl_80A3B0DC:
    lw      t6, 0x00EC($sp)            
    lui     v1, %hi(var_80A47FB4)      # v1 = 80A40000
    ori     $at, $zero, 0x8000         # $at = 00008000
    lhu     t7, 0x0014(t6)             # 00000014
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v1, v1, %lo(var_80A47FB4)  # v1 = 80A47FB4
    andi    t8, t7, 0x8000             # t8 = 00000000
    bne     t8, $at, lbl_80A3B160      
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lwc1    $f0, 0x0000(v0)            # 80A47F28
    lwc1    $f2, 0x0008(v0)            # 80A47F30
    lui     $at, %hi(var_80A455C0)     # $at = 80A40000
    mul.s   $f6, $f0, $f0              
    lwc1    $f8, %lo(var_80A455C0)($at) 
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    mul.s   $f4, $f2, $f2              
    add.s   $f10, $f6, $f4             
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A3B14C               
    lwc1    $f10, 0x0000(v1)           # 80A47FB4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f6, 0x0000(v1)            # 80A47FB4
    add.s   $f8, $f6, $f4              
    beq     $zero, $zero, lbl_80A3B158 
    swc1    $f8, 0x0000(v1)            # 80A47FB4
    lwc1    $f10, 0x0000(v1)           # 80A47FB4
lbl_80A3B14C:
    lwc1    $f6, %lo(var_80A47F8C)($at) 
    add.s   $f4, $f10, $f6             
    swc1    $f4, 0x0000(v1)            # 80A47FB4
lbl_80A3B158:
    jal     func_800646F0              
    addiu   a0, $zero, 0x103D          # a0 = 0000103D
lbl_80A3B160:
    lui     t9, %hi(var_80A47F1E)      # t9 = 80A40000
    lh      t9, %lo(var_80A47F1E)(t9)  
    lui     a0, %hi(var_80A47FB8)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A47FB8)  # a0 = 80A47FB8
    andi    t6, t9, 0x001F             # t6 = 00000000
    bne     t6, $zero, lbl_80A3B1A8    
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     t7, %hi(var_80A47F94)      # t7 = 80A40000
    lbu     t7, %lo(var_80A47F94)(t7)  
    lui     t8, %hi(var_80A47F26)      # t8 = 80A40000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    bne     t7, $zero, lbl_80A3B1A0    
    nop
    lbu     t8, %lo(var_80A47F26)(t8)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t8, $at, lbl_80A3B1A8      
lbl_80A3B1A0:
    lui     $at, %hi(var_80A44A84)     # $at = 80A40000
    sb      t9, %lo(var_80A44A84)($at) 
lbl_80A3B1A8:
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80A3B20C 
    lw      $ra, 0x002C($sp)           
var_80A3B1C0:
    lui     $at, %hi(var_80A455C4)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A455C4)($at) 
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    swc1    $f8, %lo(var_80A47FBC)($at) 
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lui     v1, %hi(var_80A47FD8)      # v1 = 80A40000
    lwc1    $f10, 0x0000(v0)           # 80A47F28
    lwc1    $f6, 0x0004(v0)            # 80A47F2C
    lwc1    $f4, 0x0008(v0)            # 80A47F30
    addiu   v1, v1, %lo(var_80A47FD8)  # v1 = 80A47FD8
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    swc1    $f10, 0x0954(v1)           # 80A4892C
    swc1    $f6, 0x0958(v1)            # 80A48930
    swc1    $f4, 0x095C(v1)            # 80A48934
    swc1    $f8, %lo(var_80A47FB8)($at) 
lbl_80A3B208:
    lw      $ra, 0x002C($sp)           
lbl_80A3B20C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000
    jr      $ra                        
    nop


func_80A3B21C:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s8, 0x0078($sp)            
    sw      s7, 0x0074($sp)            
    sw      a2, 0x00C0($sp)            
    andi    a2, a2, 0x00FF             # a2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lw      t6, 0x07C0(s7)             # 000007C0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      t7, 0x0028(t6)             # 00000028
    lwc1    $f4, 0x0028(s8)            # 00000028
    lui     $at, 0x4220                # $at = 42200000
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    sub.s   $f16, $f8, $f10            
    c.lt.s  $f4, $f16                  
    nop
    bc1fl   lbl_80A3B2C0               
    lwc1    $f0, 0x019C(s8)            # 0000019C
    bnel    a2, $zero, lbl_80A3B2C0    
    lwc1    $f0, 0x019C(s8)            # 0000019C
    beq     $zero, $zero, lbl_80A3B49C 
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f0, 0x019C(s8)            # 0000019C
lbl_80A3B2C0:
    mtc1    $at, $f18                  # $f18 = 40.00
    addiu   s6, $zero, 0x0028          # s6 = 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f18, $f0                  
    addiu   s2, s8, 0x0024             # s2 = 00000024
    addiu   s3, s8, 0x00E4             # s3 = 000000E4
    addiu   s5, $sp, 0x0098            # s5 = FFFFFFE0
    bc1fl   lbl_80A3B2F4               
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, %hi(var_80A455C8)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3B2F8 
    lwc1    $f26, %lo(var_80A455C8)($at) 
    mtc1    $at, $f26                  # $f26 = 0.00
lbl_80A3B2F4:
    addiu   s6, $zero, 0x001E          # s6 = 0000001E
lbl_80A3B2F8:
    blez    s6, lbl_80A3B424           
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    s4, s7, $at                
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f30                  # $f30 = 0.50
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f28                  # $f28 = 1.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f22                  # $f22 = 3.00
    addiu   s1, $sp, 0x00A4            # s1 = FFFFFFEC
lbl_80A3B324:
    jal     func_80026D64              
    mov.s   $f12, $f28                 
    add.s   $f6, $f0, $f30             
    lui     $at, %hi(var_80A455CC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A455CC)($at) 
    mul.s   $f20, $f6, $f26            
    jal     func_80026D64              
    nop
    mov.s   $f24, $f0                  
    jal     func_800CF470              
    mov.s   $f12, $f0                  
    mul.s   $f8, $f0, $f20             
    mov.s   $f12, $f24                 
    jal     func_800D2CD0              
    swc1    $f8, 0x0098($sp)           
    mul.s   $f10, $f0, $f20            
    mov.s   $f12, $f22                 
    jal     func_80026D64              
    swc1    $f10, 0x00A0($sp)          
    add.s   $f4, $f0, $f22             
    lui     $at, %hi(var_80A455D0)     # $at = 80A40000
    mul.s   $f16, $f4, $f26            
    swc1    $f16, 0x009C($sp)          
    lw      t0, 0x0000(s2)             # 00000024
    sw      t0, 0x0000(s1)             # FFFFFFEC
    lw      t9, 0x0004(s2)             # 00000028
    sw      t9, 0x0004(s1)             # FFFFFFF0
    lw      t0, 0x0008(s2)             # 0000002C
    sw      t0, 0x0008(s1)             # FFFFFFF4
    lwc1    $f6, 0x0098($sp)           
    lwc1    $f18, 0x00A4($sp)          
    lwc1    $f12, %lo(var_80A455D0)($at) 
    mul.s   $f8, $f6, $f22             
    lwc1    $f6, 0x00AC($sp)           
    add.s   $f10, $f18, $f8            
    lwc1    $f18, 0x00A0($sp)          
    swc1    $f10, 0x00A4($sp)          
    lw      t1, 0x07C0(s7)             # 000007C0
    mul.s   $f8, $f18, $f22            
    lw      t2, 0x0028(t1)             # 00000028
    lh      t3, 0x0002(t2)             # 00000002
    add.s   $f10, $f6, $f8             
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f16, $f4                  
    swc1    $f10, 0x00AC($sp)          
    jal     func_80026D64              
    swc1    $f16, 0x00A8($sp)          
    lui     $at, %hi(var_80A455D4)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A455D4)($at) 
    lw      a1, 0x1E10(s4)             # 00001E10
    or      a0, s3, $zero              # a0 = 000000E4
    add.s   $f16, $f0, $f4             
    or      a2, s1, $zero              # a2 = FFFFFFEC
    or      a3, s5, $zero              # a3 = FFFFFFE0
    mul.s   $f18, $f16, $f26           
    jal     func_80A3490C              
    swc1    $f18, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slt     $at, s0, s6                
    bne     $at, $zero, lbl_80A3B324   
    nop
lbl_80A3B424:
    lw      t5, 0x0024(s8)             # 00000024
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFEC
    lui     a1, 0x0001                 # a1 = 00010000
    sw      t5, 0x0000(a2)             # FFFFFFEC
    lw      t4, 0x0028(s8)             # 00000028
    addu    a1, a1, s7                 
    lui     $at, 0x4448                # $at = 44480000
    sw      t4, 0x0004(a2)             # FFFFFFF0
    lw      t5, 0x002C(s8)             # 0000002C
    mtc1    $at, $f10                  # $f10 = 800.00
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    sw      t5, 0x0008(a2)             # FFFFFFF4
    lw      t6, 0x07C0(s7)             # 000007C0
    addiu   t0, $zero, 0x005A          # t0 = 0000005A
    addiu   a0, s8, 0x00E4             # a0 = 000000E4
    lw      t7, 0x0028(t6)             # 00000028
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x00A8($sp)           
    lw      a1, 0x1E10(a1)             # 00011E10
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f10, 0x0010($sp)          
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    sb      t1, 0x0141(s8)             # 00000141
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A3B49C:
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_80A3B4E4:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      $ra, 0x006C($sp)           
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f30, 0x0048($sp)          
    sdc1    $f28, 0x0040($sp)          
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     $at, 0x4234                # $at = 42340000
    lwc1    $f0, 0x019C(a0)            # 0000019C
    mtc1    $at, $f4                   # $f4 = 45.00
    addiu   s6, $zero, 0x0014          # s6 = 00000014
    lui     $at, %hi(var_80A455D8)     # $at = 80A40000
    c.le.s  $f4, $f0                   
    addiu   s2, a0, 0x0024             # s2 = 00000024
    addiu   s3, a0, 0x00E4             # s3 = 000000E4
    addiu   s5, $sp, 0x0088            # s5 = FFFFFFE0
    bc1f    lbl_80A3B55C               
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    beq     $zero, $zero, lbl_80A3B560 
    addiu   s6, $zero, 0x001E          # s6 = 0000001E
lbl_80A3B55C:
    lwc1    $f28, %lo(var_80A455D8)($at) 
lbl_80A3B560:
    blez    s6, lbl_80A3B688           
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    s4, a1, $at                
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f30                  # $f30 = 1.50
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f26                  # $f26 = 2.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f24                  # $f24 = 3.00
    addiu   s1, $sp, 0x0094            # s1 = FFFFFFEC
lbl_80A3B58C:
    jal     func_80026D64              
    mov.s   $f12, $f30                 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80A455DC)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A455DC)($at) 
    add.s   $f8, $f0, $f6              
    mul.s   $f20, $f8, $f28            
    jal     func_80026D64              
    nop
    mov.s   $f22, $f0                  
    jal     func_800CF470              
    mov.s   $f12, $f0                  
    mul.s   $f10, $f0, $f20            
    mov.s   $f12, $f22                 
    jal     func_800D2CD0              
    swc1    $f10, 0x0088($sp)          
    mul.s   $f16, $f0, $f20            
    mov.s   $f12, $f26                 
    jal     func_80026D64              
    swc1    $f16, 0x0090($sp)          
    add.s   $f18, $f0, $f26            
    lui     $at, %hi(var_80A455E0)     # $at = 80A40000
    swc1    $f18, 0x008C($sp)          
    lw      t7, 0x0000(s2)             # 00000024
    sw      t7, 0x0000(s1)             # FFFFFFEC
    lw      t6, 0x0004(s2)             # 00000028
    sw      t6, 0x0004(s1)             # FFFFFFF0
    lw      t7, 0x0008(s2)             # 0000002C
    sw      t7, 0x0008(s1)             # FFFFFFF4
    lwc1    $f6, 0x0088($sp)           
    lwc1    $f4, 0x0094($sp)           
    lwc1    $f18, 0x008C($sp)          
    mul.s   $f8, $f6, $f24             
    lwc1    $f16, 0x0098($sp)          
    lwc1    $f12, %lo(var_80A455E0)($at) 
    mul.s   $f6, $f18, $f24            
    add.s   $f10, $f4, $f8             
    lwc1    $f8, 0x009C($sp)           
    add.s   $f4, $f16, $f6             
    swc1    $f10, 0x0094($sp)          
    lwc1    $f10, 0x0090($sp)          
    swc1    $f4, 0x0098($sp)           
    mul.s   $f18, $f10, $f24           
    add.s   $f16, $f8, $f18            
    jal     func_80026D64              
    swc1    $f16, 0x009C($sp)          
    lui     $at, %hi(var_80A455E4)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A455E4)($at) 
    lw      a1, 0x1E10(s4)             # 00001E10
    or      a0, s3, $zero              # a0 = 000000E4
    add.s   $f4, $f0, $f6              
    or      a2, s1, $zero              # a2 = FFFFFFEC
    or      a3, s5, $zero              # a3 = FFFFFFE0
    mul.s   $f10, $f4, $f28            
    jal     func_80A3490C              
    swc1    $f10, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slt     $at, s0, s6                
    bne     $at, $zero, lbl_80A3B58C   
    nop
lbl_80A3B688:
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    ldc1    $f28, 0x0040($sp)          
    ldc1    $f30, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    lw      s5, 0x0064($sp)            
    lw      s6, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80A3B6C8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    lui     v1, %hi(var_80A47F28)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F28)  # v1 = 80A47F28
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0044($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0000(v1)            # 80A47F28
    lwc1    $f6, 0x0024(a2)            # 00000024
    lwc1    $f10, 0x0004(v1)           # 80A47F2C
    lui     v0, %hi(var_80A44A74)      # v0 = 80A40000
    sub.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(v1)            # 80A47F30
    lh      v0, %lo(var_80A44A74)(v0)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    swc1    $f8, 0x0034($sp)           
    lwc1    $f16, 0x0028(a2)           # 00000028
    sub.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0034($sp)          
    swc1    $f18, 0x0038($sp)          
    lwc1    $f6, 0x002C(a2)            # 0000002C
    mul.s   $f16, $f10, $f10           
    lwc1    $f18, 0x0038($sp)          
    sub.s   $f8, $f4, $f6              
    mul.s   $f4, $f18, $f18            
    swc1    $f8, 0x003C($sp)           
    lwc1    $f8, 0x003C($sp)           
    mul.s   $f10, $f8, $f8             
    add.s   $f6, $f16, $f4             
    add.s   $f0, $f6, $f10             
    bne     v0, $at, lbl_80A3B970      
    mov.s   $f2, $f0                   
    lh      t6, 0x0192(a2)             # 00000192
    lui     t7, %hi(var_80A44A6C)      # t7 = 80A40000
    bnel    t6, $zero, lbl_80A3B974    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t7, %lo(var_80A44A6C)(t7)  
    bnel    t7, $zero, lbl_80A3B974    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t8, 0x00B6(a2)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    subu    t9, $zero, t8              
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80A455E8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A455E8)($at) 
    cvt.s.w $f16, $f18                 
    swc1    $f2, 0x0024($sp)           
    sw      a2, 0x0040($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f8, $f16, $f4             
    mul.s   $f12, $f8, $f6             
    jal     func_800AAB94              
    nop
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f18, 0x0030($sp)          
    lui     v1, %hi(var_80A47F28)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F28)  # v1 = 80A47F28
    c.lt.s  $f10, $f18                 
    lw      a2, 0x0040($sp)            
    lwc1    $f2, 0x0024($sp)           
    lui     $at, 0x4220                # $at = 42200000
    bc1tl   lbl_80A3B7F0               
    lh      t0, 0x0148(a2)             # 00000148
    lwc1    $f16, 0x019C(a2)           # 0000019C
    mtc1    $at, $f4                   # $f4 = 40.00
    nop
    c.lt.s  $f16, $f4                  
    nop
    bc1f    lbl_80A3B9D0               
    nop
    lh      t0, 0x0148(a2)             # 00000148
lbl_80A3B7F0:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t0, $at, lbl_80A3B84C      
    lui     $at, %hi(var_80A455EC)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A455EC)($at) 
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_80A3B850               
    lw      t4, 0x0044($sp)            
    sh      t1, 0x0148(a2)             # 00000148
    lw      t3, 0x0000(v1)             # 80A47F28
    lui     $at, 0x46E0                # $at = 46E00000
    mtc1    $at, $f6                   # $f6 = 28672.00
    sw      t3, 0x01A4(a2)             # 000001A4
    lw      t2, 0x0004(v1)             # 80A47F2C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    sw      t2, 0x01A8(a2)             # 000001A8
    lw      t3, 0x0008(v1)             # 80A47F30
    swc1    $f6, 0x01A0(a2)            # 000001A0
    swc1    $f10, 0x0178(a2)           # 00000178
    beq     $zero, $zero, lbl_80A3B9D0 
    sw      t3, 0x01AC(a2)             # 000001AC
lbl_80A3B84C:
    lw      t4, 0x0044($sp)            
lbl_80A3B850:
    ori     $at, $zero, 0x8000         # $at = 00008000
    lhu     t5, 0x0000(t4)             # 00000000
    andi    t6, t5, 0x8000             # t6 = 00000000
    beq     t6, $at, lbl_80A3B87C      
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, %hi(var_80A47FA8)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A47FA8)($at) 
    c.lt.s  $f18, $f16                 
    nop
    bc1f    lbl_80A3B8F0               
lbl_80A3B87C:
    lui     $at, 0x4661                # $at = 46610000
    mtc1    $at, $f4                   # $f4 = 14400.00
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_80A3B8F4               
    lh      t5, 0x016C(a2)             # 0000016C
    sh      t7, 0x0148(a2)             # 00000148
    sh      $zero, 0x014E(a2)          # 0000014E
    sh      $zero, 0x016A(a2)          # 0000016A
    mtc1    $at, $f12                  # $f12 = 100.00
    swc1    $f2, 0x0024($sp)           
    jal     func_80026D64              
    sw      a2, 0x0040($sp)            
    trunc.w.s $f8, $f0                   
    lw      a2, 0x0040($sp)            
    lwc1    $f2, 0x0024($sp)           
    lui     $at, %hi(var_80A44AEC)     # $at = 80A40000
    mfc1    t1, $f8                    
    lh      t3, 0x001C(a2)             # 0000001C
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t2, t1, 0x0064             # t2 = 00000064
    sll     t4, t3,  4                 
    addu    $at, $at, t4               
    sh      t2, 0x016E(a2)             # 0000016E
    lwc1    $f6, %lo(var_80A44AEC)($at) 
    swc1    $f10, 0x01A0(a2)           # 000001A0
    swc1    $f6, 0x0198(a2)            # 00000198
lbl_80A3B8F0:
    lh      t5, 0x016C(a2)             # 0000016C
lbl_80A3B8F4:
    bne     t5, $zero, lbl_80A3B9D0    
    lui     $at, %hi(var_80A455F0)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A455F0)($at) 
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f2, $f18                  
    nop
    bc1f    lbl_80A3B9D0               
    nop
    sh      t6, 0x0148(a2)             # 00000148
    sh      $zero, 0x014E(a2)          # 0000014E
    sh      $zero, 0x016A(a2)          # 0000016A
    mtc1    $at, $f12                  # $f12 = 100.00
    swc1    $f2, 0x0024($sp)           
    jal     func_80026D64              
    sw      a2, 0x0040($sp)            
    trunc.w.s $f16, $f0                  
    lw      a2, 0x0040($sp)            
    lwc1    $f2, 0x0024($sp)           
    lui     $at, %hi(var_80A44AEC)     # $at = 80A40000
    mfc1    t0, $f16                   
    lh      t2, 0x001C(a2)             # 0000001C
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t1, t0, 0x0064             # t1 = 00000064
    sll     t3, t2,  4                 
    addu    $at, $at, t3               
    sh      t1, 0x016E(a2)             # 0000016E
    lwc1    $f4, %lo(var_80A44AEC)($at) 
    swc1    $f8, 0x01A0(a2)            # 000001A0
    beq     $zero, $zero, lbl_80A3B9D0 
    swc1    $f4, 0x0198(a2)            # 00000198
lbl_80A3B970:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80A3B974:
    bne     v0, $at, lbl_80A3B9D0      
    lui     t4, %hi(var_80A47F94)      # t4 = 80A40000
    lbu     t4, %lo(var_80A47F94)(t4)  
    lui     $at, %hi(var_80A455F4)     # $at = 80A40000
    beq     t4, $zero, lbl_80A3B9D0    
    nop
    lwc1    $f6, %lo(var_80A455F4)($at) 
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A3B9D0               
    nop
    lh      t5, 0x0148(a2)             # 00000148
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    slti    $at, t5, 0x000A            
    bne     $at, $zero, lbl_80A3B9D0   
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sh      $zero, 0x014A(a2)          # 0000014A
    sh      t6, 0x0148(a2)             # 00000148
    sh      t7, 0x0194(a2)             # 00000194
    sh      t8, 0x0192(a2)             # 00000192
    sh      t9, 0x016C(a2)             # 0000016C
lbl_80A3B9D0:
    lui     t0, %hi(var_80A47F26)      # t0 = 80A40000
    lbu     t0, %lo(var_80A47F26)(t0)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t0, $at, lbl_80A3BA58      
    lui     t1, %hi(var_80A47F84)      # t1 = 80A40000
    lb      t1, %lo(var_80A47F84)(t1)  
    lui     $at, 0x4270                # $at = 42700000
    beql    t1, $zero, lbl_80A3BA5C    
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f18, 0x019C(a2)           # 0000019C
    lui     $at, 0x4461                # $at = 44610000
    c.lt.s  $f10, $f18                 
    nop
    bc1fl   lbl_80A3BA5C               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f16                  # $f16 = 900.00
    nop
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80A3BA5C               
    lw      $ra, 0x0014($sp)           
    lh      t2, 0x0148(a2)             # 00000148
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x03E8          # t4 = 000003E8
    slti    $at, t2, 0x000A            
    bne     $at, $zero, lbl_80A3BA58   
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sh      $zero, 0x014A(a2)          # 0000014A
    sh      t3, 0x0148(a2)             # 00000148
    sh      t4, 0x0194(a2)             # 00000194
    sh      t5, 0x0192(a2)             # 00000192
    sh      t6, 0x016C(a2)             # 0000016C
lbl_80A3BA58:
    lw      $ra, 0x0014($sp)           
lbl_80A3BA5C:
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A3BA68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x0140(a0)             # 00000140
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bnel    t6, $zero, lbl_80A3BB24    
    lwc1    $f0, 0x019C(a0)            # 0000019C
    cfc1    t7, $f31                   
    ctc1    v1, $f31                   
    lwc1    $f4, 0x019C(a0)            # 0000019C
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4                   
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_80A3BB08    
    mfc1    v1, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    v1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bnel    v1, $zero, lbl_80A3BAF8    
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    ctc1    t7, $f31                   
    or      v1, v1, $at                # v1 = FFFFFFFF
    beq     $zero, $zero, lbl_80A3BBB4 
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_80A3BAF8:
    ctc1    t7, $f31                   
    beq     $zero, $zero, lbl_80A3BBB4 
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    mfc1    v1, $f6                    
lbl_80A3BB08:
    nop
    bltzl   v1, lbl_80A3BAF8           
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    ctc1    t7, $f31                   
    beq     $zero, $zero, lbl_80A3BBB4 
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    lwc1    $f0, 0x019C(a0)            # 0000019C
lbl_80A3BB24:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f8, $f0, $f0              
    cfc1    t8, $f31                   
    ctc1    v1, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_80A3BB9C    
    mfc1    v1, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    v1, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    v1, $f31                   
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_80A3BB90    
    nop
    mfc1    v1, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3BBA8 
    or      v1, v1, $at                # v1 = 80000000
lbl_80A3BB90:
    beq     $zero, $zero, lbl_80A3BBA8 
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f10                   
lbl_80A3BB9C:
    nop
    bltz    v1, lbl_80A3BB90           
    nop
lbl_80A3BBA8:
    ctc1    t8, $f31                   
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    nop
lbl_80A3BBB4:
    bne     a1, $zero, lbl_80A3BBEC    
    slti    $at, v1, 0x0032            
    slti    $at, v1, 0x0032            
    bne     $at, $zero, lbl_80A3BBD0   
    or      v0, v1, $zero              # v0 = 000000FF
    beq     $zero, $zero, lbl_80A3BC10 
    addiu   v0, $zero, 0x2889          # v0 = 00002889
lbl_80A3BBD0:
    slti    $at, v0, 0x0028            
    bne     $at, $zero, lbl_80A3BBE4   
    nop
    beq     $zero, $zero, lbl_80A3BC10 
    addiu   v0, $zero, 0x2817          # v0 = 00002817
lbl_80A3BBE4:
    beq     $zero, $zero, lbl_80A3BC10 
    addiu   v0, $zero, 0x2817          # v0 = 00002817
lbl_80A3BBEC:
    bne     $at, $zero, lbl_80A3BBFC   
    or      v0, v1, $zero              # v0 = 000000FF
    beq     $zero, $zero, lbl_80A3BC10 
    addiu   v0, $zero, 0x288A          # v0 = 0000288A
lbl_80A3BBFC:
    slti    $at, v0, 0x0028            
    bne     $at, $zero, lbl_80A3BC10   
    addiu   v0, $zero, 0x2808          # v0 = 00002808
    beq     $zero, $zero, lbl_80A3BC10 
    addiu   v0, $zero, 0x2808          # v0 = 00002808
lbl_80A3BC10:
    jal     func_80022FD0              
    andi    a1, v0, 0xFFFF             # a1 = 00002808
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A3BC28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47EE5)(t6)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t6, $at, lbl_80A3BC84      
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4B70(v0)            # 8011B490
    addiu   t1, $zero, 0x40AE          # t1 = 000040AE
    andi    t7, v0, 0x007F             # t7 = 00000000
    beq     t7, $zero, lbl_80A3BC7C    
    andi    t8, v0, 0x0080             # t8 = 00000000
    beq     t8, $zero, lbl_80A3BC74    
    addiu   t0, $zero, 0x4089          # t0 = 00004089
    addiu   t9, $zero, 0x40B1          # t9 = 000040B1
    beq     $zero, $zero, lbl_80A3BCBC 
    sh      t9, 0x010E(a0)             # 0000010E
lbl_80A3BC74:
    beq     $zero, $zero, lbl_80A3BCBC 
    sh      t0, 0x010E(a0)             # 0000010E
lbl_80A3BC7C:
    beq     $zero, $zero, lbl_80A3BCBC 
    sh      t1, 0x010E(a0)             # 0000010E
lbl_80A3BC84:
    lw      v0, -0x4B70(v0)            # 8011B490
    lui     $at, 0x7F00                # $at = 7F000000
    addiu   t6, $zero, 0x40AE          # t6 = 000040AE
    and     t2, v0, $at                
    beq     t2, $zero, lbl_80A3BCB8    
    sll     t3, v0,  0                 
    bgez    t3, lbl_80A3BCB0           
    addiu   t5, $zero, 0x4089          # t5 = 00004089
    addiu   t4, $zero, 0x40B1          # t4 = 000040B1
    beq     $zero, $zero, lbl_80A3BCBC 
    sh      t4, 0x010E(a0)             # 0000010E
lbl_80A3BCB0:
    beq     $zero, $zero, lbl_80A3BCBC 
    sh      t5, 0x010E(a0)             # 0000010E
lbl_80A3BCB8:
    sh      t6, 0x010E(a0)             # 0000010E
lbl_80A3BCBC:
    lbu     t7, 0x01C3(a0)             # 000001C3
    bne     t7, $zero, lbl_80A3BDBC    
    nop
    lbu     v0, 0x01C4(a0)             # 000001C4
    bne     v0, $zero, lbl_80A3BDA4    
    addiu   t3, v0, 0xFFFF             # t3 = 8011FFFF
    lw      t8, 0x0004(a0)             # 00000004
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(a0)             # 00000004
    sw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80A3BD94    
    lw      a1, 0x001C($sp)            
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    cfc1    t0, $f31                   
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    ctc1    t1, $f31                   
    lwc1    $f4, %lo(var_80A47EE8)($at) 
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    cvt.w.s $f6, $f4                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80A3BD74    
    mfc1    t1, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80A3BD68    
    nop
    mfc1    t1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3BD80 
    or      t1, t1, $at                # t1 = 80000000
lbl_80A3BD68:
    beq     $zero, $zero, lbl_80A3BD80 
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f6                    
lbl_80A3BD74:
    nop
    bltz    t1, lbl_80A3BD68           
    nop
lbl_80A3BD80:
    lui     $at, %hi(var_80A44A58)     # $at = 80A40000
    sh      t1, %lo(var_80A44A58)($at) 
    ctc1    t0, $f31                   
    beq     $zero, $zero, lbl_80A3BDD8 
    sb      t2, 0x01C3(a0)             # 000001C3
lbl_80A3BD94:
    jal     func_80022A90              
    nop
    beq     $zero, $zero, lbl_80A3BDDC 
    lw      $ra, 0x0014($sp)           
lbl_80A3BDA4:
    lw      t4, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sb      t3, 0x01C4(a0)             # 000001C4
    and     t5, t4, $at                
    beq     $zero, $zero, lbl_80A3BDD8 
    sw      t5, 0x0004(a0)             # 00000004
lbl_80A3BDBC:
    jal     func_80022AD0              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80A3BDD8    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      $zero, 0x01C3(a0)          # 000001C3
    sb      t6, 0x01C4(a0)             # 000001C4
lbl_80A3BDD8:
    lw      $ra, 0x0014($sp)           
lbl_80A3BDDC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A3BDE8:
    addiu   $sp, $sp, 0xFEC8           # $sp = FFFFFEC8
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    sdc1    $f20, 0x0020($sp)          
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f4                   # $f4 = 700.00
    sh      t6, 0x0134($sp)            
    lbu     t7, 0x0140(s0)             # 00000140
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lw      t0, 0x1C44(s1)             # 00001C44
    swc1    $f4, 0x00F4(s0)            # 000000F4
    bne     t7, $zero, lbl_80A3BE54    
    swc1    $f6, 0x00F8(s0)            # 000000F8
    lui     $at, %hi(var_80A455F8)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A455F8)($at) 
    lwc1    $f8, 0x0068(t0)            # 00000068
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    mul.s   $f4, $f8, $f10             
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80A3BE74 
    swc1    $f8, 0x0118($sp)           
lbl_80A3BE54:
    lui     $at, %hi(var_80A455FC)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A455FC)($at) 
    lwc1    $f10, 0x0068(t0)           # 00000068
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    mul.s   $f6, $f10, $f4             
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0118($sp)          
lbl_80A3BE74:
    lui     t8, %hi(var_80A47F20)      # t8 = 80A40000
    lh      t8, %lo(var_80A47F20)(t8)  
    bne     t8, $zero, lbl_80A3BEB8    
    lui     t9, %hi(var_80A49D34)      # t9 = 80A50000
    lh      t9, %lo(var_80A49D34)(t9)  
    bne     t9, $zero, lbl_80A3BEB8    
    lui     $at, %hi(var_80A45600)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45600)($at) 
    lwc1    $f6, 0x002C(t0)            # 0000002C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A3BED0               
    lw      t4, 0x0004(s0)             # 00000004
    lh      t1, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beql    t1, $at, lbl_80A3BED0      
    lw      t4, 0x0004(s0)             # 00000004
lbl_80A3BEB8:
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t3, t2, $at                
    beq     $zero, $zero, lbl_80A3BF5C 
    sw      t3, 0x0004(s0)             # 00000004
    lw      t4, 0x0004(s0)             # 00000004
lbl_80A3BED0:
    lui     t6, %hi(var_80A44A74)      # t6 = 80A40000
    ori     t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x0004(s0)             # 00000004
    lh      t6, %lo(var_80A44A74)(t6)  
    beq     t6, $zero, lbl_80A3BF44    
    lui     v0, %hi(var_80A47F22)      # v0 = 80A40000
    lh      v0, %lo(var_80A47F22)(v0)  
    bne     v0, $zero, lbl_80A3BF14    
    lui     t7, %hi(var_80A47F28)      # t7 = 80A40000
    addiu   t7, t7, %lo(var_80A47F28)  # t7 = 80A47F28
    lw      t9, 0x0000(t7)             # 80A47F28
    sw      t9, 0x0038(s0)             # 00000038
    lw      t8, 0x0004(t7)             # 80A47F2C
    sw      t8, 0x003C(s0)             # 0000003C
    lw      t9, 0x0008(t7)             # 80A47F30
    beq     $zero, $zero, lbl_80A3BF44 
    sw      t9, 0x0040(s0)             # 00000040
lbl_80A3BF14:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80A3BF48      
    lw      t4, 0x0024(s0)             # 00000024
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      t1, %lo(var_80A44AAC)($at) 
    lui     $at, %hi(var_80A49D40)     # $at = 80A50000
    swc1    $f8, %lo(var_80A49D40)($at) 
    lui     $at, %hi(var_80A47EF8)     # $at = 80A40000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t2, %lo(var_80A47EF8)($at) 
lbl_80A3BF44:
    lw      t4, 0x0024(s0)             # 00000024
lbl_80A3BF48:
    lw      t3, 0x0028(s0)             # 00000028
    sw      t4, 0x0038(s0)             # 00000038
    lw      t4, 0x002C(s0)             # 0000002C
    sw      t3, 0x003C(s0)             # 0000003C
    sw      t4, 0x0040(s0)             # 00000040
lbl_80A3BF5C:
    lh      t5, 0x014C(s0)             # 0000014C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t6, t5, 0x0001             # t6 = 00000002
    sh      t6, 0x014C(s0)             # 0000014C
    sll     t7, v0,  1                 
lbl_80A3BF70:
    addu    v1, s0, t7                 
    lh      a0, 0x016A(v1)             # 0000016A
    beq     a0, $zero, lbl_80A3BF84    
    addiu   t8, a0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x016A(v1)             # 0000016A
lbl_80A3BF84:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0004            
    bnel    $at, $zero, lbl_80A3BF70   
    sll     t7, v0,  1                 
    lh      v0, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_80A3BFAC    
    addiu   t9, v0, 0xFFFF             # t9 = 00000000
    sh      t9, 0x0194(s0)             # 00000194
lbl_80A3BFAC:
    lh      v0, 0x0192(s0)             # 00000192
    beq     v0, $zero, lbl_80A3BFBC    
    addiu   t1, v0, 0xFFFF             # t1 = 00000000
    sh      t1, 0x0192(s0)             # 00000192
lbl_80A3BFBC:
    lh      v0, 0x0190(s0)             # 00000190
    beq     v0, $zero, lbl_80A3BFCC    
    addiu   t2, v0, 0xFFFF             # t2 = 00000000
    sh      t2, 0x0190(s0)             # 00000190
lbl_80A3BFCC:
    lbu     v0, 0x0141(s0)             # 00000141
    beq     v0, $zero, lbl_80A3BFDC    
    addiu   t3, v0, 0xFFFF             # t3 = 00000000
    sb      t3, 0x0141(s0)             # 00000141
lbl_80A3BFDC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lw      a1, 0x0180(s0)             # 00000180
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    mfc1    a2, $f20                   
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    sw      t0, 0x00E0($sp)            
    jal     func_80064280              
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lh      t4, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t4, $at, lbl_80A3C02C      
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x018C             # a0 = 0000018C
    lw      a1, 0x0184(s0)             # 00000184
    jal     func_80064280              
    lui     a3, 0x4348                 # a3 = 43480000
    beq     $zero, $zero, lbl_80A3C0A0 
    addiu   a0, s0, 0x0160             # a0 = 00000160
lbl_80A3C02C:
    lw      t5, 0x07C0(s1)             # 000007C0
    lwc1    $f6, 0x0028(s0)            # 00000028
    mov.s   $f0, $f20                  
    lw      t6, 0x0028(t5)             # 00000028
    mov.s   $f2, $f20                  
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10                  
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A3C070               
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f0                   # $f0 = 1.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    nop
lbl_80A3C070:
    lwc1    $f8, 0x0184(s0)            # 00000184
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    mul.s   $f10, $f8, $f0             
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x018C             # a0 = 0000018C
    mul.s   $f6, $f4, $f2              
    mfc1    a1, $f10                   
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    addiu   a0, s0, 0x0160             # a0 = 00000160
lbl_80A3C0A0:
    sw      a0, 0x0040($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lbu     t8, 0x0140(s0)             # 00000140
    bne     t8, $zero, lbl_80A3C164    
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A45604)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45604)($at) 
    mul.s   $f4, $f8, $f10             
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lwc1    $f10, 0x017C(s0)           # 0000017C
    lwc1    $f4, 0x0188(s0)            # 00000188
    add.s   $f6, $f10, $f4             
    swc1    $f6, 0x017C(s0)            # 0000017C
    jal     func_800D2CD0              
    lwc1    $f12, 0x017C(s0)           # 0000017C
    lwc1    $f8, 0x018C(s0)            # 0000018C
    lh      t9, 0x015E(s0)             # 0000015E
    lui     $at, %hi(var_80A45608)     # $at = 80A40000
    mul.s   $f10, $f0, $f8             
    lwc1    $f6, 0x017C(s0)            # 0000017C
    trunc.w.s $f4, $f10                  
    mfc1    t4, $f4                    
    nop
    addu    t5, t9, t4                 
    sh      t5, 0x015C(s0)             # 0000015C
    lwc1    $f8, %lo(var_80A45608)($at) 
    jal     func_800D2CD0              
    add.s   $f12, $f6, $f8             
    lwc1    $f10, 0x018C(s0)           # 0000018C
    lui     $at, %hi(var_80A4560C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4560C)($at) 
    mul.s   $f4, $f0, $f10             
    lh      t2, 0x015E(s0)             # 0000015E
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    nop
    addu    t3, t2, t1                 
    beq     $zero, $zero, lbl_80A3C26C 
    sh      t3, 0x0166(s0)             # 00000166
lbl_80A3C164:
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f6                   # $f6 = 65.00
    lwc1    $f4, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A45610)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45610)($at) 
    mul.s   $f8, $f4, $f6              
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f8, $f10             
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    lui     $at, %hi(var_80A45614)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45614)($at) 
    lwc1    $f6, 0x0058(s0)            # 00000058
    lui     $at, %hi(var_80A45618)     # $at = 80A40000
    lwc1    $f10, 0x0188(s0)           # 00000188
    mul.s   $f0, $f6, $f8              
    lwc1    $f8, 0x017C(s0)            # 0000017C
    or      v0, $zero, $zero           # v0 = 00000000
    swc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0054(s0)            # 00000054
    lwc1    $f4, %lo(var_80A45618)($at) 
    mul.s   $f6, $f10, $f4             
    add.s   $f10, $f8, $f6             
    swc1    $f10, 0x017C(s0)           # 0000017C
lbl_80A3C1C8:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A4561C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4561C)($at) 
    cvt.s.w $f8, $f4                   
    lwc1    $f4, 0x017C(s0)            # 0000017C
    sh      v0, 0x0136($sp)            
    mul.s   $f10, $f8, $f6             
    jal     func_800D2CD0              
    add.s   $f12, $f4, $f10            
    lwc1    $f8, 0x018C(s0)            # 0000018C
    lh      v0, 0x0136($sp)            
    lh      t9, 0x015E(s0)             # 0000015E
    mul.s   $f2, $f0, $f8              
    sll     t2, v0,  1                 
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0003            
    addu    t1, s0, t2                 
    add.s   $f6, $f2, $f2              
    trunc.w.s $f4, $f6                   
    mfc1    t7, $f4                    
    nop
    addu    t8, t9, t7                 
    bne     $at, $zero, lbl_80A3C1C8   
    sh      t8, 0x01BC(t1)             # 000001BC
    lui     $at, %hi(var_80A45620)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45620)($at) 
    lwc1    $f10, 0x017C(s0)           # 0000017C
    jal     func_800D2CD0              
    add.s   $f12, $f10, $f8            
    lwc1    $f6, 0x018C(s0)            # 0000018C
    lui     $at, %hi(var_80A45624)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45624)($at) 
    mul.s   $f2, $f6, $f0              
    add.s   $f4, $f2, $f2              
    mul.s   $f8, $f4, $f10             
    trunc.w.s $f6, $f8                   
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x015C(s0)             # 0000015C
lbl_80A3C26C:
    lwc1    $f4, 0x01A4(s0)            # 000001A4
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f8, 0x01A8(s0)            # 000001A8
    lwc1    $f6, 0x0028(s0)            # 00000028
    sub.s   $f14, $f4, $f10            
    sub.s   $f4, $f8, $f6              
    swc1    $f4, 0x012C($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f10, 0x01AC(s0)           # 000001AC
    swc1    $f14, 0x0130($sp)          
    sub.s   $f12, $f10, $f8            
    jal     func_800AA4F8              
    swc1    $f12, 0x0128($sp)          
    lwc1    $f16, 0x0130($sp)          
    lwc1    $f18, 0x0128($sp)          
    sh      v0, 0x00FC($sp)            
    mul.s   $f6, $f16, $f16            
    lwc1    $f14, 0x012C($sp)          
    mul.s   $f4, $f18, $f18            
    add.s   $f2, $f6, $f4              
    sqrt.s  $f12, $f2                  
    jal     func_800AA4F8              
    swc1    $f2, 0x004C($sp)           
    lwc1    $f12, 0x012C($sp)          
    lwc1    $f2, 0x004C($sp)           
    sh      v0, 0x00FE($sp)            
    mul.s   $f10, $f12, $f12           
    add.s   $f0, $f2, $f10             
    sqrt.s  $f0, $f0                   
    swc1    $f0, 0x0124($sp)           
    lh      t5, 0x0190(s0)             # 00000190
    beql    t5, $zero, lbl_80A3C360    
    lh      v0, 0x0148(s0)             # 00000148
    lh      v1, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80A3C35C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80A3C35C      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v1, $at, lbl_80A3C360      
    lh      v0, 0x0148(s0)             # 00000148
    lh      v1, 0x014C(s0)             # 0000014C
    andi    t6, v1, 0x0040             # t6 = 00000000
    beql    t6, $zero, lbl_80A3C334    
    lh      t2, 0x00FC($sp)            
    lh      t9, 0x00FC($sp)            
    addiu   t7, t9, 0x4000             # t7 = 00004000
    beq     $zero, $zero, lbl_80A3C33C 
    sh      t7, 0x00FC($sp)            
    lh      t2, 0x00FC($sp)            
lbl_80A3C334:
    addiu   t8, t2, 0xC000             # t8 = FFFFC000
    sh      t8, 0x00FC($sp)            
lbl_80A3C33C:
    addiu   t1, v1, 0x0020             # t1 = 00000020
    andi    t3, t1, 0x0040             # t3 = 00000000
    beq     t3, $zero, lbl_80A3C354    
    addiu   t4, v0, 0x2000             # t4 = 00002000
    beq     $zero, $zero, lbl_80A3C35C 
    sh      t4, 0x00FE($sp)            
lbl_80A3C354:
    addiu   t5, v0, 0xE000             # t5 = FFFFE000
    sh      t5, 0x00FE($sp)            
lbl_80A3C35C:
    lh      v0, 0x0148(s0)             # 00000148
lbl_80A3C360:
    slti    $at, v0, 0x000C            
    bne     $at, $zero, lbl_80A3C37C   
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beql    v0, $at, lbl_80A3C3A4      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3C37C:
    addiu   t6, v0, 0x0019             # t6 = 00000019
    sltiu   $at, t6, 0x0025            
    beq     $at, $zero, lbl_80A3F8F0   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80A45628)     # $at = 80A40000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80A45628)($at) 
    jr      t6                         
    nop
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A3C3A4:
    jal     func_80A3BC28              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    swc1    $f8, 0x00F4(s0)            # 000000F4
    lwc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f6, 0x00F8(s0)            # 000000F8
    lwc1    $f4, 0x0024(s0)            # 00000024
    trunc.w.s $f6, $f8                   
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    trunc.w.s $f10, $f4                  
    mfc1    t2, $f6                    
    lui     $at, 0x4248                # $at = 42480000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sll     t8, t2, 16                 
    sra     t1, t8, 16                 
    mtc1    t1, $f4                    # $f4 = 0.00
    mfc1    a1, $f10                   
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    cvt.s.w $f10, $f4                  
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0210             # a0 = 00000210
    add.s   $f6, $f10, $f8             
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t3, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    trunc.w.s $f8, $f10                  
    mtc1    $at, $f10                  # $f10 = 50.00
    sw      t8, 0x0014($sp)            
    trunc.w.s $f4, $f6                   
    mfc1    t5, $f8                    
    sw      t2, 0x0010($sp)            
    sll     t6, t5, 16                 
    sra     t9, t6, 16                 
    mtc1    t9, $f6                    # $f6 = 0.00
    mfc1    a2, $f4                    
    cvt.s.w $f4, $f6                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sub.s   $f8, $f4, $f10             
    trunc.w.s $f6, $f8                   
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    jal     func_80065BCC              
    sra     a3, a3, 16                 
    lui     $at, %hi(var_80A47EE8)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47EE8)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    t4, s1, $at                
    swc1    $f4, 0x019C(s0)            # 0000019C
    sw      t4, 0x0048($sp)            
    lw      a0, 0x1DE4(t4)             # 00001DE4
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lw      t6, 0x0048($sp)            
    mul.s   $f8, $f0, $f10             
    swc1    $f8, 0x0104($sp)           
    lw      a0, 0x1DE4(t6)             # 00001DE4
    addu    $at, a0, $zero             
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f10                  # $f10 = 130.00
    mul.s   $f4, $f0, $f6              
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f8                   # $f8 = 55.00
    lui     $at, %hi(var_80A456BC)     # $at = 80A40000
    addiu   t9, $zero, 0x8000          # t9 = FFFF8000
    swc1    $f4, 0x0108($sp)           
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0104($sp)           
    lwc1    $f2, 0x00EC(s0)            # 000000EC
    add.s   $f4, $f8, $f6              
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, %lo(var_80A456BC)($at) 
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x0108($sp)           
    sh      t9, 0x00B6(s0)             # 000000B6
    c.lt.s  $f2, $f4                   
    add.s   $f6, $f10, $f8             
    bc1f    lbl_80A3C5F4               
    swc1    $f6, 0x002C(s0)            # 0000002C
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.lt.s  $f10, $f2                  
    nop
    bc1f    lbl_80A3C5F4               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f8                   # $f8 = 130.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    add.s   $f6, $f0, $f8              
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    swc1    $f4, 0x00C8($sp)           
    jal     func_80026D90              
    swc1    $f6, 0x00C4($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f10                  # $f10 = 1280.00
    lui     $at, %hi(var_80A456C0)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A456C0)($at) 
    add.s   $f8, $f0, $f10             
    jal     func_80026D64              
    swc1    $f8, 0x00CC($sp)           
    lui     $at, %hi(var_80A456C4)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456C4)($at) 
    lw      t7, 0x0048($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    add.s   $f4, $f0, $f6              
    lw      a1, 0x1E10(t7)             # 00001E10
    sw      t2, 0x0010($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    mfc1    a3, $f4                    
    jal     func_80A34B8C              
    addiu   a2, $sp, 0x00C4            # a2 = FFFFFF8C
lbl_80A3C5F4:
    lh      a0, 0x014C(s0)             # 0000014C
    sll     a0, a0, 11                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A456C8)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A456C8)($at) 
    addiu   a0, s0, 0x0162             # a0 = 00000162
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    mul.s   $f10, $f0, $f2             
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    add.s   $f8, $f10, $f2             
    trunc.w.s $f6, $f8                   
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lh      a0, 0x014C(s0)             # 0000014C
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  9                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A456CC)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A456CC)($at) 
    addiu   a0, s0, 0x0164             # a0 = 00000164
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    mul.s   $f10, $f0, $f4             
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    trunc.w.s $f8, $f10                  
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lui     $at, %hi(var_80A456D0)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456D0)($at) 
    lui     $at, %hi(var_80A456D4)     # $at = 80A40000
    swc1    $f6, 0x0180(s0)            # 00000180
    lwc1    $f4, %lo(var_80A456D4)($at) 
    beq     $zero, $zero, lbl_80A40208 
    swc1    $f4, 0x0184(s0)            # 00000184
var_80A3C6A8:
    lw      t4, 0x0008(s0)             # 00000008
    lw      t3, 0x000C(s0)             # 0000000C
    mfc1    a2, $f20                   
    sw      t4, 0x01A4(s0)             # 000001A4
    lw      t4, 0x0010(s0)             # 00000010
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a3, 0x3F00                 # a3 = 3F000000
    sw      t3, 0x01A8(s0)             # 000001A8
    jal     func_80064280              
    sw      t4, 0x01AC(s0)             # 000001AC
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4580                 # a1 = 45800000
    jal     func_80064280              
    lui     a3, 0x4380                 # a3 = 43800000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f10, 0x0124($sp)          
    c.lt.s  $f10, $f8                  
    nop
    bc1f    lbl_80A3C720               
    addiu   t5, $zero, 0x000B          # t5 = 0000000B
    sh      t5, 0x0148(s0)             # 00000148
    lui     $at, %hi(var_80A456D8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456D8)($at) 
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    swc1    $f6, 0x0180(s0)            # 00000180
    swc1    $f4, 0x0184(s0)            # 00000184
lbl_80A3C720:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B6C8              
    addiu   a1, s1, 0x0014             # a1 = 00000014
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    lwc1    $f6, 0x0118($sp)           
    lwc1    $f10, 0x0090(s0)           # 00000090
    mul.s   $f4, $f8, $f6              
    c.lt.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A3F8F4               
    lh      a0, 0x014C(s0)             # 0000014C
    sh      $zero, 0x0148(s0)          # 00000148
    lh      t6, 0x0148(s0)             # 00000148
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t9, $zero, 0x03E8          # t9 = 000003E8
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sh      t9, 0x0194(s0)             # 00000194
    sh      t7, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      t6, 0x014A(s0)             # 0000014A
var_80A3C778:
    lw      t8, 0x0008(s0)             # 00000008
    lw      t2, 0x000C(s0)             # 0000000C
    mfc1    a2, $f20                   
    sw      t8, 0x01A4(s0)             # 000001A4
    lw      t8, 0x0010(s0)             # 00000010
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sw      t2, 0x01A8(s0)             # 000001A8
    jal     func_80064280              
    sw      t8, 0x01AC(s0)             # 000001AC
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a3, 0x4380                 # a3 = 43800000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f8, 0x0124($sp)           
    c.le.s  $f6, $f8                   
    nop
    bc1f    lbl_80A3C7EC               
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f10                  # $f10 = 2000.00
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    sh      v0, 0x0148(s0)             # 00000148
    swc1    $f20, 0x0180(s0)           # 00000180
    swc1    $f10, 0x0184(s0)           # 00000184
lbl_80A3C7EC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B6C8              
    addiu   a1, s1, 0x0014             # a1 = 00000014
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    lwc1    $f6, 0x0118($sp)           
    lwc1    $f4, 0x0090(s0)            # 00000090
    mul.s   $f10, $f8, $f6             
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_80A3C840               
    nop
    sh      $zero, 0x0148(s0)          # 00000148
    lh      t1, 0x0148(s0)             # 00000148
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t3, $zero, 0x03E8          # t3 = 000003E8
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    sh      t3, 0x0194(s0)             # 00000194
    sh      t4, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    sh      t1, 0x014A(s0)             # 0000014A
lbl_80A3C840:
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80A3F8F0    
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    ori     $at, $zero, 0xC000         # $at = 0000C000
    slt     $at, v0, $at               
    bne     $at, $zero, lbl_80A3C89C   
    ori     $at, $zero, 0xC01C         # $at = 0000C01C
    slt     $at, v0, $at               
    beq     $at, $zero, lbl_80A3C89C   
    lui     $at, 0x4316                # $at = 43160000
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    mtc1    $at, $f12                  # $f12 = 150.00
    jal     func_80026D64              
    sh      t5, 0x0148(s0)             # 00000148
    trunc.w.s $f8, $f0                   
    lui     v0, 0x8012                 # v0 = 80120000
    mfc1    t2, $f8                    
    nop
    addiu   t8, t2, 0x00C8             # t8 = 000000C8
    sh      t8, 0x0170(s0)             # 00000170
    lhu     v0, -0x5A24(v0)            # 8011A5DC
lbl_80A3C89C:
    slti    $at, v0, 0x3AAA            
    bne     $at, $zero, lbl_80A3F8F0   
    slti    $at, v0, 0x3AC6            
    beq     $at, $zero, lbl_80A3F8F0   
    lui     $at, 0x4316                # $at = 43160000
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    mtc1    $at, $f12                  # $f12 = 150.00
    jal     func_80026D64              
    sh      t1, 0x0148(s0)             # 00000148
    trunc.w.s $f6, $f0                   
    mfc1    t6, $f6                    
    nop
    addiu   t9, t6, 0x00C8             # t9 = 000000C8
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      t9, 0x0170(s0)             # 00000170
var_80A3C8D8:
    mfc1    a1, $f20                   
    mfc1    a2, $f20                   
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a3, 0x4380                 # a3 = 43800000
    lh      t7, 0x016A(s0)             # 0000016A
    bne     t7, $zero, lbl_80A3C9BC    
    nop
    lh      t2, 0x0194(s0)             # 00000194
    bne     t2, $zero, lbl_80A3C92C    
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    sh      v0, 0x014A(s0)             # 0000014A
    lh      t8, 0x014A(s0)             # 0000014A
    beq     $zero, $zero, lbl_80A3C9BC 
    sh      t8, 0x0148(s0)             # 00000148
lbl_80A3C92C:
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    sh      t1, 0x0148(s0)             # 00000148
    trunc.w.s $f4, $f0                   
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    mfc1    t6, $f4                    
    nop
    addiu   t9, t6, 0x000A             # t9 = 0000000A
    jal     func_80026D90              
    sh      t9, 0x016A(s0)             # 0000016A
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    swc1    $f0, 0x01A4(s0)            # 000001A4
    lw      t7, 0x07C0(s1)             # 000007C0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lw      t2, 0x0028(t7)             # 00000028
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    lh      t8, 0x0002(t2)             # 00000002
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    sub.s   $f4, $f8, $f6              
    sub.s   $f10, $f4, $f0             
    jal     func_80026D90              
    swc1    $f10, 0x01A8(s0)           # 000001A8
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f8                   # $f8 = 2000.00
    swc1    $f0, 0x01AC(s0)            # 000001AC
    swc1    $f20, 0x0180(s0)           # 00000180
    swc1    $f8, 0x0184(s0)            # 00000184
lbl_80A3C9BC:
    lui     t1, %hi(var_80A47F26)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47F26)(t1)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_80A3C9E0      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B6C8              
    addiu   a1, s1, 0x0014             # a1 = 00000014
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3C9E0:
    lw      t3, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at                
    beq     $zero, $zero, lbl_80A3F8F0 
    sw      t4, 0x0004(s0)             # 00000004
var_80A3C9F4:
    lbu     t5, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t5, $at, lbl_80A3CA34      
    lui     $at, 0xC30C                # $at = C30C0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f4                   # $f4 = -140.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   v0, $zero, 0x4E20          # v0 = 00004E20
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sh      t6, 0x0148(s0)             # 00000148
    sh      v0, 0x0194(s0)             # 00000194
    sh      v0, 0x0192(s0)             # 00000192
    swc1    $f6, 0x01A4(s0)            # 000001A4
    swc1    $f4, 0x01A8(s0)            # 000001A8
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f10, 0x01AC(s0)           # 000001AC
lbl_80A3CA34:
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    mfc1    a2, $f20                   
    sw      a0, 0x004C($sp)            
    lui     a1, 0x4580                 # a1 = 45800000
    jal     func_80064280              
    lui     a3, 0x4380                 # a3 = 43800000
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    lwc1    $f4, 0x0118($sp)           
    lwc1    $f8, 0x0090(s0)            # 00000090
    lw      a0, 0x004C($sp)            
    mul.s   $f10, $f6, $f4             
    c.lt.s  $f8, $f10                  
    nop
    bc1tl   lbl_80A3CA84               
    mfc1    a2, $f20                   
    lh      t9, 0x016C(s0)             # 0000016C
    beql    t9, $zero, lbl_80A3CAD0    
    lui     $at, 0x44FA                # $at = 44FA0000
    mfc1    a2, $f20                   
lbl_80A3CA84:
    lui     a1, 0x4600                 # a1 = 46000000
    jal     func_80064280              
    lui     a3, 0x4440                 # a3 = 44400000
    lui     a1, 0x4086                 # a1 = 40860000
    mfc1    a2, $f20                   
    ori     a1, a1, 0x6666             # a1 = 40866666
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a3, 0x3F40                 # a3 = 3F400000
    lui     $at, %hi(var_80A456DC)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456DC)($at) 
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f4                   # $f4 = 4000.00
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x016A(s0)             # 0000016A
    swc1    $f6, 0x0180(s0)            # 00000180
    beq     $zero, $zero, lbl_80A3CAF4 
    swc1    $f4, 0x0184(s0)            # 00000184
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80A3CAD0:
    mtc1    $at, $f8                   # $f8 = 2000.00
    mfc1    a2, $f20                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f20, 0x0180(s0)           # 00000180
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3FC0                 # a1 = 3FC00000
    jal     func_80064280              
    swc1    $f8, 0x0184(s0)            # 00000184
lbl_80A3CAF4:
    lh      t2, 0x016A(s0)             # 0000016A
    beq     t2, $zero, lbl_80A3CB14    
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f10, 0x0124($sp)          
    c.lt.s  $f10, $f6                  
    nop
    bc1f    lbl_80A3CB44               
lbl_80A3CB14:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    sh      $zero, 0x0148(s0)          # 00000148
    trunc.w.s $f4, $f0                   
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    swc1    $f20, 0x0180(s0)           # 00000180
    mfc1    t4, $f4                    
    swc1    $f8, 0x0184(s0)            # 00000184
    addiu   t5, t4, 0x0003             # t5 = 00000003
    sh      t5, 0x016A(s0)             # 0000016A
lbl_80A3CB44:
    lui     t6, %hi(var_80A47F26)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47F26)(t6)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_80A3CB68      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B6C8              
    addiu   a1, s1, 0x0014             # a1 = 00000014
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3CB68:
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t9, $at                
    beq     $zero, $zero, lbl_80A3F8F0 
    sw      t7, 0x0004(s0)             # 00000004
var_80A3CB7C:
    addiu   a0, s0, 0x0156             # a0 = 00000156
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064624              
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    lwc1    $f4, 0x0118($sp)           
    lwc1    $f10, 0x0090(s0)           # 00000090
    mul.s   $f8, $f6, $f4              
    c.lt.s  $f10, $f8                  
    nop
    bc1tl   lbl_80A3CBC4               
    mfc1    a2, $f20                   
    lh      t2, 0x016C(s0)             # 0000016C
    beql    t2, $zero, lbl_80A3CC4C    
    lui     $at, 0x4248                # $at = 42480000
    mfc1    a2, $f20                   
lbl_80A3CBC4:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280              
    lui     a3, 0x3F40                 # a3 = 3F400000
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f6                   # $f6 = 4000.00
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    mfc1    a2, $f20                   
    swc1    $f20, 0x0180(s0)           # 00000180
    sh      t8, 0x016A(s0)             # 0000016A
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a3, 0x4380                 # a3 = 43800000
    jal     func_80064280              
    swc1    $f6, 0x0184(s0)            # 00000184
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s1                 
    lw      t1, 0x1DE4(t1)             # 00011DE4
    andi    t3, t1, 0x001F             # t3 = 00000000
    bne     t3, $zero, lbl_80A3CCEC    
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f12                  # $f12 = 600.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f12                  # $f12 = 600.00
    jal     func_80026D90              
    swc1    $f0, 0x01A4(s0)            # 000001A4
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f4                   # $f4 = -120.00
    swc1    $f0, 0x01AC(s0)            # 000001AC
    beq     $zero, $zero, lbl_80A3CCEC 
    swc1    $f4, 0x01A8(s0)            # 000001A8
    lui     $at, 0x4248                # $at = 42480000
lbl_80A3CC4C:
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f8, 0x0124($sp)           
    c.lt.s  $f10, $f8                  
    nop
    bc1f    lbl_80A3CCAC               
    lui     $at, %hi(var_80A456E0)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456E0)($at) 
    lui     $at, %hi(var_80A456E4)     # $at = 80A40000
    mfc1    a1, $f20                   
    swc1    $f6, 0x0180(s0)            # 00000180
    lwc1    $f4, %lo(var_80A456E4)($at) 
    mfc1    a2, $f20                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    swc1    $f4, 0x0184(s0)            # 00000184
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4500                 # a1 = 45000000
    jal     func_80064280              
    lui     a3, 0x4300                 # a3 = 43000000
    beq     $zero, $zero, lbl_80A3CCF0 
    lh      v0, 0x0194(s0)             # 00000194
lbl_80A3CCAC:
    lui     $at, %hi(var_80A456E8)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A456E8)($at) 
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    mfc1    a1, $f20                   
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    swc1    $f10, 0x0180(s0)           # 00000180
    jal     func_800642F0              
    swc1    $f8, 0x0184(s0)            # 00000184
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a3, 0x4380                 # a3 = 43800000
lbl_80A3CCEC:
    lh      v0, 0x0194(s0)             # 00000194
lbl_80A3CCF0:
    bnel    v0, $zero, lbl_80A3CD0C    
    andi    t4, v0, 0x07FF             # t4 = 00000000
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    sh      v0, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3CD78 
    sh      v0, 0x014A(s0)             # 0000014A
    andi    t4, v0, 0x07FF             # t4 = 0000000A
lbl_80A3CD0C:
    bne     t4, $zero, lbl_80A3CD78    
    slti    $at, v0, 0x3A98            
    beql    $at, $zero, lbl_80A3CD7C   
    lw      t8, 0x0004(s0)             # 00000004
    sh      $zero, 0x00B4(s0)          # 000000B4
    lh      t6, 0x00B4(s0)             # 000000B4
    addiu   t5, $zero, 0xFFFE          # t5 = FFFFFFFE
    sh      t5, 0x0148(s0)             # 00000148
    sh      t6, 0x0030(s0)             # 00000030
    lw      t9, 0x07C0(s1)             # 000007C0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      t7, 0x0028(t9)             # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lh      t2, 0x0002(t7)             # 00000002
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    add.s   $f8, $f4, $f10             
    jal     func_80026D64              
    swc1    $f8, 0x01A8(s0)            # 000001A8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    swc1    $f0, 0x01A4(s0)            # 000001A4
    swc1    $f0, 0x01AC(s0)            # 000001AC
lbl_80A3CD78:
    lw      t8, 0x0004(s0)             # 00000004
lbl_80A3CD7C:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t8, $at                
    beq     $zero, $zero, lbl_80A3F8F0 
    sw      t1, 0x0004(s0)             # 00000004
var_80A3CD8C:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    lwc1    $f10, 0x0118($sp)          
    lwc1    $f6, 0x0090(s0)            # 00000090
    mul.s   $f8, $f4, $f10             
    c.lt.s  $f6, $f8                   
    nop
    bc1tl   lbl_80A3CDBC               
    lui     $at, 0xC2F0                # $at = C2F00000
    lh      t3, 0x016C(s0)             # 0000016C
    beq     t3, $zero, lbl_80A3CDD0    
    lui     $at, 0xC2F0                # $at = C2F00000
lbl_80A3CDBC:
    mtc1    $at, $f4                   # $f4 = -120.00
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sh      t4, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f4, 0x01A8(s0)            # 000001A8
lbl_80A3CDD0:
    lui     $at, %hi(var_80A456EC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A456EC)($at) 
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    addiu   a0, s0, 0x0156             # a0 = 00000156
    addiu   a1, $zero, 0xF000          # a1 = FFFFF000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    swc1    $f10, 0x0180(s0)           # 00000180
    jal     func_80064624              
    swc1    $f6, 0x0184(s0)            # 00000184
    lw      t5, 0x07C0(s1)             # 000007C0
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lw      t6, 0x0028(t5)             # 00000028
    lwc1    $f8, 0x0028(s0)            # 00000028
    lh      t9, 0x0002(t6)             # 00000002
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4                  
    sub.s   $f4, $f10, $f6             
    c.lt.s  $f8, $f4                   
    nop
    bc1fl   lbl_80A3CE58               
    mfc1    a1, $f20                   
    mfc1    a2, $f20                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a1, 0x3F00                 # a1 = 3F000000
    beq     $zero, $zero, lbl_80A3CFBC 
    mfc1    a2, $f20                   
    mfc1    a1, $f20                   
lbl_80A3CE58:
    lui     a2, 0x3C23                 # a2 = 3C230000
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    jal     func_800642F0              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    c.eq.s  $f10, $f6                  
    nop
    bc1tl   lbl_80A3CEB8               
    lui     $at, 0x4396                # $at = 43960000
    lw      t7, 0x07C0(s1)             # 000007C0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lw      t2, 0x0028(t7)             # 00000028
    lh      t8, 0x0002(t2)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    lwc1    $f8, 0x0028(s0)            # 00000028
    sub.s   $f6, $f4, $f10             
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80A3CFB8               
    lui     $at, 0x4396                # $at = 43960000
lbl_80A3CEB8:
    mtc1    $at, $f12                  # $f12 = 300.00
    jal     func_80026D64              
    nop
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    jal     func_80026D64              
    swc1    $f0, 0x01A4(s0)            # 000001A4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t4, 0x01B0(s0)             # 000001B0
    add.s   $f6, $f4, $f10             
    addiu   t1, $zero, 0xFFE7          # t1 = FFFFFFE7
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFF80
    swc1    $f0, 0x01AC(s0)            # 000001AC
    swc1    $f6, 0x01A8(s0)            # 000001A8
    sh      t1, 0x0148(s0)             # 00000148
    swc1    $f8, 0x01A0(s0)            # 000001A0
    sw      t4, 0x0000(a2)             # FFFFFF80
    lw      t3, 0x01B4(s0)             # 000001B4
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, s1, $at                
    sw      t3, 0x0004(a2)             # FFFFFF84
    lw      t4, 0x01B8(s0)             # 000001B8
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lui     $at, 0x4396                # $at = 43960000
    sw      t4, 0x0008(a2)             # FFFFFF88
    lw      t5, 0x07C0(s1)             # 000007C0
    mtc1    $at, $f6                   # $f6 = 300.00
    addiu   t3, $zero, 0x005A          # t3 = 0000005A
    lw      t6, 0x0028(t5)             # 00000028
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    lui     a3, 0x4120                 # a3 = 41200000
    lh      t9, 0x0002(t6)             # 00000002
    sw      t2, 0x0048($sp)            
    sw      a0, 0x004C($sp)            
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4                  
    swc1    $f10, 0x00BC($sp)          
    lw      a1, 0x1E10(t2)             # 00001E10
    sw      t3, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f6, 0x0010($sp)           
    lw      t4, 0x0048($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    lw      a1, 0x1E10(t4)             # 00001E10
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    addiu   t6, $zero, 0x005A          # t6 = 0000005A
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    lw      a0, 0x004C($sp)            
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFF80
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80A347B4              
    swc1    $f8, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x0836          # a1 = 00000836
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3CFB8:
    mfc1    a2, $f20                   
lbl_80A3CFBC:
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4500                 # a1 = 45000000
    jal     func_80064280              
    lui     a3, 0x4300                 # a3 = 43000000
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t9, $at                
    beq     $zero, $zero, lbl_80A3F8F0 
    sw      t7, 0x0004(s0)             # 00000004
var_80A3CFE0:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    lwc1    $f6, 0x0118($sp)           
    lwc1    $f4, 0x0090(s0)            # 00000090
    mul.s   $f8, $f10, $f6             
    c.lt.s  $f4, $f8                   
    nop
    bc1tl   lbl_80A3D010               
    lui     $at, 0xC2F0                # $at = C2F00000
    lh      t2, 0x016C(s0)             # 0000016C
    beq     t2, $zero, lbl_80A3D024    
    lui     $at, 0xC2F0                # $at = C2F00000
lbl_80A3D010:
    mtc1    $at, $f10                  # $f10 = -120.00
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      t8, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f10, 0x01A8(s0)           # 000001A8
lbl_80A3D024:
    addiu   a0, s0, 0x0156             # a0 = 00000156
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064624              
    addiu   a3, $zero, 0x006A          # a3 = 0000006A
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0124($sp)           
    c.lt.s  $f6, $f4                   
    nop
    bc1f    lbl_80A3D09C               
    lui     $at, %hi(var_80A456F0)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A456F0)($at) 
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f10                  # $f10 = 1200.00
    mfc1    a2, $f20                   
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    swc1    $f8, 0x0180(s0)            # 00000180
    jal     func_80064280              
    swc1    $f10, 0x0184(s0)           # 00000184
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4500                 # a1 = 45000000
    jal     func_80064280              
    lui     a3, 0x4300                 # a3 = 43000000
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3D09C:
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      t1, 0x0148(s0)             # 00000148
var_80A3D0A8:
    lui     t4, %hi(var_80A47F88)      # t4 = 80A40000
    lbu     t4, %lo(var_80A47F88)(t4)  
    lh      t3, 0x001C(s0)             # 0000001C
    addu    t5, t3, t4                 
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80A3D0D0    
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    beq     $zero, $zero, lbl_80A3D0E0 
    swc1    $f6, 0x010C($sp)           
lbl_80A3D0D0:
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    nop
    swc1    $f4, 0x010C($sp)           
lbl_80A3D0E0:
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_80A47F4C)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47F4C)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f8, 0x0110($sp)           
    jal     func_800AAB94              
    swc1    $f10, 0x0114($sp)          
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFD4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0100            # a1 = FFFFFFC8
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lwc1    $f6, 0x0000(v0)            # 80A47F28
    lwc1    $f4, 0x0100($sp)           
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x01A4(s0)            # 000001A4
    lwc1    $f6, 0x0108($sp)           
    lwc1    $f10, 0x0008(v0)           # 80A47F30
    add.s   $f4, $f10, $f6             
    swc1    $f4, 0x01AC(s0)            # 000001AC
    lbu     t9, %lo(var_80A47F26)(t9)  
    bnel    t9, $at, lbl_80A3D158      
    lbu     t7, 0x0140(s0)             # 00000140
    lwc1    $f8, 0x0004(v0)            # 80A47F2C
    beq     $zero, $zero, lbl_80A3D188 
    swc1    $f8, 0x01A8(s0)            # 000001A8
    lbu     t7, 0x0140(s0)             # 00000140
lbl_80A3D158:
    bne     t7, $zero, lbl_80A3D174    
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lwc1    $f10, 0x0004(v0)           # 80A47F2C
    sub.s   $f4, $f10, $f6             
    beq     $zero, $zero, lbl_80A3D188 
    swc1    $f4, 0x01A8(s0)            # 000001A8
lbl_80A3D174:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f8, 0x0004(v0)            # 80A47F2C
    sub.s   $f6, $f8, $f10             
    swc1    $f6, 0x01A8(s0)            # 000001A8
lbl_80A3D188:
    lwc1    $f0, 0x0080(s0)            # 00000080
    lwc1    $f4, 0x01A8(s0)            # 000001A8
    c.le.s  $f4, $f0                   
    nop
    bc1f    lbl_80A3D1B0               
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    nop
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x01A8(s0)           # 000001A8
lbl_80A3D1B0:
    lui     t2, %hi(var_80A47F26)      # t2 = 80A40000
    lbu     t2, %lo(var_80A47F26)(t2)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t2, $at, lbl_80A3D20C      
    mfc1    a2, $f20                   
    lwc1    $f2, 0x01A8(s0)            # 000001A8
    lwc1    $f0, 0x0028(s0)            # 00000028
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A3D20C               
    mfc1    a2, $f20                   
    sub.s   $f6, $f0, $f2              
    lui     $at, %hi(var_80A456F4)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A456F4)($at) 
    mfc1    a1, $f2                    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f6, $f4              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    mfc1    a2, $f20                   
lbl_80A3D20C:
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4600                 # a1 = 46000000
    jal     func_80064280              
    lui     a3, 0x43C0                 # a3 = 43C00000
    addiu   t8, s1, 0x0014             # t8 = 00000014
    sw      t8, 0x004C($sp)            
    lhu     t3, 0x000C(t8)             # 00000020
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t4, t3, 0x8000             # t4 = 00000000
    bne     t4, $at, lbl_80A3D248      
    lui     $at, %hi(var_80A456F8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A456F8)($at) 
    lwc1    $f10, 0x0198(s0)           # 00000198
    add.s   $f4, $f10, $f6             
    swc1    $f4, 0x0198(s0)            # 00000198
lbl_80A3D248:
    lui     v1, %hi(var_80A47F90)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F90)  # v1 = 80A47F90
    lbu     v0, 0x0000(v1)             # 80A47F90
    beq     v0, $zero, lbl_80A3D290    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A3D278      
    lui     $at, %hi(var_80A456FC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A456FC)($at) 
    lwc1    $f8, 0x0198(s0)            # 00000198
    add.s   $f6, $f8, $f10             
    beq     $zero, $zero, lbl_80A3D28C 
    swc1    $f6, 0x0198(s0)            # 00000198
lbl_80A3D278:
    lui     $at, %hi(var_80A45700)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45700)($at) 
    lwc1    $f4, 0x0198(s0)            # 00000198
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0198(s0)           # 00000198
lbl_80A3D28C:
    sb      $zero, 0x0000(v1)          # 80A47F90
lbl_80A3D290:
    lw      t5, 0x004C($sp)            
    addiu   $at, $zero, 0x4000         # $at = 00004000
    lhu     t6, 0x000C(t5)             # 0000000C
    andi    t9, t6, 0x4000             # t9 = 00000000
    bne     t9, $at, lbl_80A3D2B8      
    lui     $at, %hi(var_80A45704)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45704)($at) 
    lwc1    $f6, 0x0198(s0)            # 00000198
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x0198(s0)            # 00000198
lbl_80A3D2B8:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f6, 0x019C(s0)            # 0000019C
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f10, 0x0124($sp)          
    mul.s   $f8, $f6, $f4              
    mtc1    $at, $f6                   # $f6 = 20.00
    nop
    add.s   $f4, $f8, $f6              
    c.lt.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A3D350               
    lh      t6, 0x014E(s0)             # 0000014E
    lh      t7, 0x014E(s0)             # 0000014E
    bne     t7, $zero, lbl_80A3D324    
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f20, 0x0180(s0)           # 00000180
    jal     func_80026D64              
    swc1    $f8, 0x0184(s0)            # 00000184
    trunc.w.s $f6, $f0                   
    mfc1    t3, $f6                    
    nop
    addiu   t4, t3, 0x0002             # t4 = 00000002
    sh      t4, 0x016A(s0)             # 0000016A
lbl_80A3D324:
    lui     a1, 0xBE4C                 # a1 = BE4C0000
    mfc1    a2, $f20                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = BE4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_80A3D38C 
    sh      t5, 0x014E(s0)             # 0000014E
    lh      t6, 0x014E(s0)             # 0000014E
lbl_80A3D350:
    beql    t6, $zero, lbl_80A3D374    
    mfc1    a2, $f20                   
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A45708)     # $at = 80A40000
    swc1    $f10, 0x01A0(s0)           # 000001A0
    lwc1    $f4, %lo(var_80A45708)($at) 
    swc1    $f4, 0x0184(s0)            # 00000184
    mfc1    a2, $f20                   
lbl_80A3D374:
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a1, 0x4040                 # a1 = 40400000
    sh      $zero, 0x014E(s0)          # 0000014E
lbl_80A3D38C:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f0, 0x019C(s0)            # 0000019C
    c.le.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3D3B0               
    lui     $at, %hi(var_80A4570C)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3D3D8 
    lwc1    $f2, %lo(var_80A4570C)($at) 
lbl_80A3D3B0:
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    nop
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_80A3D3D4               
    lui     $at, %hi(var_80A45710)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3D3D8 
    lwc1    $f2, %lo(var_80A45710)($at) 
lbl_80A3D3D4:
    mov.s   $f2, $f20                  
lbl_80A3D3D8:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    ori     $at, $zero, 0xB555         # $at = 0000B555
    slt     $at, v0, $at               
    bne     $at, $zero, lbl_80A3D410   
    ori     $at, $zero, 0xCAAB         # $at = 0000CAAB
    slt     $at, v0, $at               
    beq     $at, $zero, lbl_80A3D410   
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f10                  # $f10 = 1.75
    nop
    mul.s   $f2, $f2, $f10             
    beq     $zero, $zero, lbl_80A3D4FC 
    nop
lbl_80A3D410:
    slti    $at, v0, 0x3555            
    bne     $at, $zero, lbl_80A3D438   
    slti    $at, v0, 0x4AAB            
    beq     $at, $zero, lbl_80A3D438   
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    nop
    mul.s   $f2, $f2, $f4              
    beq     $zero, $zero, lbl_80A3D4FC 
    nop
lbl_80A3D438:
    lui     t9, %hi(var_80A47EE6)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47EE6)(t9)  
    beq     t9, $zero, lbl_80A3D45C    
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    nop
    mul.s   $f2, $f2, $f8              
    beq     $zero, $zero, lbl_80A3D4FC 
    nop
lbl_80A3D45C:
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    cfc1    t7, $f31                   
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    ctc1    t2, $f31                   
    lwc1    $f6, %lo(var_80A44A30)($at) 
    cvt.w.s $f10, $f6                  
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beq     t2, $zero, lbl_80A3D4CC    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f10, $f6, $f10            
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80A3D4C4    
    nop
    mfc1    t2, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3D4DC 
    or      t2, t2, $at                # t2 = 80000000
lbl_80A3D4C4:
    beq     $zero, $zero, lbl_80A3D4DC 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
lbl_80A3D4CC:
    mfc1    t2, $f10                   
    nop
    bltz    t2, lbl_80A3D4C4           
    nop
lbl_80A3D4DC:
    ctc1    t7, $f31                   
    andi    t8, t2, 0x00FF             # t8 = 000000FF
    beq     t8, $zero, lbl_80A3D4FC    
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    nop
    mul.s   $f2, $f2, $f4              
    nop
lbl_80A3D4FC:
    lui     $at, %hi(var_80A45714)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45714)($at) 
    lui     t1, %hi(var_80A47F26)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47F26)(t1)  
    mul.s   $f0, $f8, $f2              
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_80A3D530      
    mov.s   $f12, $f0                  
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    nop
    mul.s   $f12, $f0, $f6             
    nop
lbl_80A3D530:
    lh      t3, 0x016A(s0)             # 0000016A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t3, $at, lbl_80A3D564      
    nop
    swc1    $f2, 0x0120($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x011C($sp)          
    lwc1    $f12, 0x011C($sp)          
    lwc1    $f2, 0x0120($sp)           
    c.lt.s  $f0, $f12                  
    nop
    bc1f    lbl_80A3D648               
    nop
lbl_80A3D564:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0120($sp)           
    lwc1    $f2, 0x0120($sp)           
    lwc1    $f10, 0x0198(s0)           # 00000198
    mul.s   $f4, $f10, $f2             
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A3D648               
    nop
    lbu     t4, 0x0140(s0)             # 00000140
    bne     t4, $zero, lbl_80A3D5CC    
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sh      t5, 0x0148(s0)             # 00000148
    lui     $at, %hi(var_80A45718)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45718)($at) 
    lui     $at, %hi(var_80A4571C)     # $at = 80A40000
    swc1    $f8, 0x0180(s0)            # 00000180
    lwc1    $f6, %lo(var_80A4571C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    swc1    $f6, 0x0184(s0)            # 00000184
    trunc.w.s $f10, $f0                  
    mfc1    t9, $f10                   
    beq     $zero, $zero, lbl_80A3D5EC 
    sh      t9, 0x016A(s0)             # 0000016A
lbl_80A3D5CC:
    addiu   t7, $zero, 0xFFFD          # t7 = FFFFFFFD
    sh      t7, 0x0148(s0)             # 00000148
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A45720)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45720)($at) 
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    sh      t2, 0x016A(s0)             # 0000016A
    swc1    $f4, 0x0184(s0)            # 00000184
lbl_80A3D5EC:
    lui     t8, %hi(var_80A47F26)      # t8 = 80A40000
    lbu     t8, %lo(var_80A47F26)(t8)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t8, $at, lbl_80A3D624      
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_80026D64              
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    nop
    add.s   $f6, $f0, $f8              
    beq     $zero, $zero, lbl_80A3D648 
    swc1    $f6, 0x0178(s0)            # 00000178
lbl_80A3D624:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_80026D64              
    nop
    lui     $at, 0x4090                # $at = 40900000
    mtc1    $at, $f10                  # $f10 = 4.50
    nop
    add.s   $f4, $f0, $f10             
    swc1    $f4, 0x0178(s0)            # 00000178
lbl_80A3D648:
    lui     t1, %hi(var_80A44A74)      # t1 = 80A40000
    lh      t1, %lo(var_80A44A74)(t1)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t1, $at, lbl_80A3D69C      
    lh      t4, 0x014A(s0)             # 0000014A
    lh      t3, 0x016E(s0)             # 0000016E
    beql    t3, $zero, lbl_80A3D69C    
    lh      t4, 0x014A(s0)             # 0000014A
    lwc1    $f2, 0x0024(s0)            # 00000024
    lwc1    $f12, 0x002C(s0)           # 0000002C
    lui     $at, 0x4448                # $at = 44480000
    mul.s   $f8, $f2, $f2              
    mtc1    $at, $f10                  # $f10 = 800.00
    mul.s   $f6, $f12, $f12            
    add.s   $f0, $f8, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80A3D6F8               
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t4, 0x014A(s0)             # 0000014A
lbl_80A3D69C:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    sh      t4, 0x0148(s0)             # 00000148
    trunc.w.s $f4, $f0                   
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t7, $f4                    
    nop
    addiu   t2, t7, 0x0032             # t2 = 00000032
    jal     func_80026D64              
    sh      t2, 0x016C(s0)             # 0000016C
    trunc.w.s $f8, $f0                   
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 2000.00
    mfc1    t4, $f8                    
    swc1    $f20, 0x0180(s0)           # 00000180
    swc1    $f6, 0x01A0(s0)            # 000001A0
    addiu   t5, t4, 0x0005             # t5 = 00000005
    sh      t5, 0x016A(s0)             # 0000016A
    swc1    $f10, 0x0184(s0)           # 00000184
    lui     $at, 0x42C8                # $at = 42C80000
lbl_80A3D6F8:
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f6, 0x0118($sp)           
    lwc1    $f4, 0x0090(s0)            # 00000090
    mul.s   $f10, $f8, $f6             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80A3F8F4               
    lh      a0, 0x014C(s0)             # 0000014C
    sh      $zero, 0x0148(s0)          # 00000148
    lh      t6, 0x0148(s0)             # 00000148
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t9, $zero, 0x03E8          # t9 = 000003E8
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sh      t9, 0x0194(s0)             # 00000194
    sh      t7, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      t6, 0x014A(s0)             # 0000014A
var_80A3D740:
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    sb      t2, 0x0141(s0)             # 00000141
    lw      t1, 0x00E0($sp)            
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sh      t8, 0x0134($sp)            
    lwc1    $f8, 0x0024(t1)            # 00000024
    lui     t9, %hi(var_80A47F88)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47F88)(t9)  
    trunc.w.s $f6, $f8                   
    mfc1    t6, $f6                    
    nop
    addu    t7, t6, t9                 
    andi    t2, t7, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80A3D788    
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    beq     $zero, $zero, lbl_80A3D798 
    swc1    $f4, 0x010C($sp)           
lbl_80A3D788:
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f10                  # $f10 = -30.00
    nop
    swc1    $f10, 0x010C($sp)          
lbl_80A3D798:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80A47F4C)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47F4C)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f6, 0x0114($sp)           
    jal     func_800AAB94              
    swc1    $f8, 0x0110($sp)           
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFD4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0100            # a1 = FFFFFFC8
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lwc1    $f4, 0x0000(v0)            # 80A47F28
    lwc1    $f10, 0x0100($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mfc1    a2, $f20                   
    add.s   $f8, $f4, $f10             
    mfc1    a3, $f20                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    swc1    $f8, 0x01A4(s0)            # 000001A4
    lwc1    $f4, 0x0108($sp)           
    lwc1    $f6, 0x0008(v0)            # 80A47F30
    add.s   $f10, $f6, $f4             
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x4580                # $at = 45800000
    swc1    $f10, 0x01AC(s0)           # 000001AC
    lwc1    $f8, 0x0004(v0)            # 80A47F2C
    mtc1    $at, $f10                  # $f10 = 4096.00
    lui     $at, %hi(var_80A45724)     # $at = 80A40000
    sub.s   $f4, $f8, $f6              
    swc1    $f10, 0x01A0(s0)           # 000001A0
    lwc1    $f8, 0x0178(s0)            # 00000178
    swc1    $f4, 0x01A8(s0)            # 000001A8
    lwc1    $f6, %lo(var_80A45724)($at) 
    mul.s   $f4, $f8, $f6              
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lui     t8, %hi(var_80A44A74)      # t8 = 80A40000
    lh      t8, %lo(var_80A44A74)(t8)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t8, $at, lbl_80A3D8BC      
    lui     $at, 0x44FA                # $at = 44FA0000
    lw      t1, 0x07C0(s1)             # 000007C0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lw      t3, 0x0028(t1)             # 00000028
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    lwc1    $f10, 0x0004(v0)           # 80A47F2C
    add.s   $f4, $f8, $f6              
    c.lt.s  $f4, $f10                  
    nop
    bc1tl   lbl_80A3D8BC               
    lui     $at, 0x44FA                # $at = 44FA0000
    lwc1    $f2, 0x0000(v0)            # 80A47F28
    lwc1    $f12, 0x0008(v0)           # 80A47F30
    lui     $at, 0x4448                # $at = 44480000
    mul.s   $f8, $f2, $f2              
    mtc1    $at, $f4                   # $f4 = 800.00
    mul.s   $f6, $f12, $f12            
    add.s   $f0, $f8, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80A3D8D8               
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80A3D8BC:
    lh      t5, 0x014A(s0)             # 0000014A
    mtc1    $at, $f10                  # $f10 = 2000.00
    sh      $zero, 0x016A(s0)          # 0000016A
    swc1    $f20, 0x0180(s0)           # 00000180
    sh      t5, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f10, 0x0184(s0)           # 00000184
lbl_80A3D8D8:
    lh      t6, 0x016A(s0)             # 0000016A
    beq     t6, $zero, lbl_80A3D8F8    
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f8, 0x0124($sp)           
    c.lt.s  $f8, $f6                   
    nop
    bc1f    lbl_80A3F8F0               
lbl_80A3D8F8:
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sh      t9, 0x0148(s0)             # 00000148
    lw      t2, 0x0000(v0)             # 80A47F28
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    sw      t2, 0x01A4(s0)             # 000001A4
    lw      t7, 0x0004(v0)             # 80A47F2C
    lui     $at, %hi(var_80A45728)     # $at = 80A40000
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t7, 0x01A8(s0)             # 000001A8
    lw      t2, 0x0008(v0)             # 80A47F30
    swc1    $f4, 0x01A0(s0)            # 000001A0
    sw      t2, 0x01AC(s0)             # 000001AC
    lwc1    $f10, %lo(var_80A45728)($at) 
    lui     $at, %hi(var_80A4572C)     # $at = 80A40000
    swc1    $f10, 0x0180(s0)           # 00000180
    lwc1    $f8, %lo(var_80A4572C)($at) 
    sh      t8, 0x016A(s0)             # 0000016A
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f8, 0x0184(s0)            # 00000184
var_80A3D948:
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x4680                 # a1 = 46800000
    jal     func_80064280              
    lui     a3, 0x4580                 # a3 = 45800000
    lw      a0, 0x0040($sp)            
    addiu   a1, $zero, 0x4E20          # a1 = 00004E20
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064624              
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    sb      t1, 0x0141(s0)             # 00000141
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     t4, %hi(var_80A47F28)      # t4 = 80A40000
    sh      t3, 0x0134($sp)            
    addiu   t4, t4, %lo(var_80A47F28)  # t4 = 80A47F28
    lw      t6, 0x0000(t4)             # 80A47F28
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    sw      t6, 0x01A4(s0)             # 000001A4
    lw      t5, 0x0004(t4)             # 80A47F2C
    lw      a1, 0x0178(s0)             # 00000178
    addiu   a0, s0, 0x0068             # a0 = 00000068
    sw      t5, 0x01A8(s0)             # 000001A8
    lw      t6, 0x0008(t4)             # 80A47F30
    jal     func_80064280              
    sw      t6, 0x01AC(s0)             # 000001AC
    lui     t9, %hi(var_80A44A74)      # t9 = 80A40000
    lh      t9, %lo(var_80A44A74)(t9)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t9, $at, lbl_80A3DA44      
    lui     $at, 0x44FA                # $at = 44FA0000
    lh      t7, 0x016A(s0)             # 0000016A
    beql    t7, $zero, lbl_80A3DA44    
    lui     $at, 0x44FA                # $at = 44FA0000
    lw      t2, 0x07C0(s1)             # 000007C0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lw      t8, 0x0028(t2)             # 00000028
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lh      t1, 0x0002(t8)             # 00000002
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    lwc1    $f6, 0x0004(v0)            # 80A47F2C
    add.s   $f8, $f4, $f10             
    c.lt.s  $f8, $f6                   
    nop
    bc1tl   lbl_80A3DA44               
    lui     $at, 0x44FA                # $at = 44FA0000
    lwc1    $f2, 0x0000(v0)            # 80A47F28
    lwc1    $f12, 0x0008(v0)           # 80A47F30
    lui     $at, 0x4448                # $at = 44480000
    mul.s   $f4, $f2, $f2              
    mtc1    $at, $f8                   # $f8 = 800.00
    mul.s   $f10, $f12, $f12           
    add.s   $f0, $f4, $f10             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3DA60               
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80A3DA44:
    lh      t3, 0x014A(s0)             # 0000014A
    mtc1    $at, $f6                   # $f6 = 2000.00
    sh      $zero, 0x016A(s0)          # 0000016A
    swc1    $f20, 0x0180(s0)           # 00000180
    sh      t3, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f6, 0x0184(s0)            # 00000184
lbl_80A3DA60:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f4, 0x0124($sp)           
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_80A3F8F0               
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_80A3DA98    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3BA68              
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80A3DA98:
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    sh      t4, 0x0148(s0)             # 00000148
    lui     $at, %hi(var_80A45730)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45730)($at) 
    lui     $at, %hi(var_80A45734)     # $at = 80A40000
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    swc1    $f8, 0x0180(s0)            # 00000180
    lwc1    $f6, %lo(var_80A45734)($at) 
    addiu   t6, $zero, 0x0078          # t6 = 00000078
    sh      t5, 0x016C(s0)             # 0000016C
    sh      $zero, 0x016A(s0)          # 0000016A
    sh      $zero, 0x016E(s0)          # 0000016E
    sh      t6, 0x0170(s0)             # 00000170
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    swc1    $f6, 0x0184(s0)            # 00000184
    sh      t9, %lo(var_80A44A74)($at) 
    lui     $at, %hi(var_80A47F18)     # $at = 80A40000
    sw      s0, %lo(var_80A47F18)($at) 
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f12                  # $f12 = 400.00
    jal     func_80026D64              
    nop
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lui     t7, %hi(var_80A47F26)      # t7 = 80A40000
    lbu     t7, %lo(var_80A47F26)(t7)  
    sub.s   $f10, $f4, $f0             
    lui     $at, %hi(var_80A44A7C)     # $at = 80A40000
    swc1    $f10, %lo(var_80A44A7C)($at) 
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t7, $at, lbl_80A3DC60      
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lwc1    $f0, 0x019C(s0)            # 0000019C
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3DB64               
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x000A             # v0 = 0000000A
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DC2C 
    sra     v0, v0, 16                 
lbl_80A3DB64:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80A3DBB0               
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x0014             # v0 = 00000014
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DC2C 
    sra     v0, v0, 16                 
lbl_80A3DBB0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3DBFC               
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x001E             # v0 = 0000001E
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DC2C 
    sra     v0, v0, 16                 
lbl_80A3DBFC:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    mfc1    v0, $f4                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x0028             # v0 = 00000028
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80A3DC2C:
    lui     $at, %hi(var_80A47F92)     # $at = 80A40000
    sh      v0, %lo(var_80A47F92)($at) 
    sll     a2, v0,  2                 
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    subu    a2, a2, v0                 
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      v0, %lo(var_80A47F14)($at) 
    andi    a2, a2, 0x00FF             # a2 = 00000000
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    jal     func_8009151C              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    beq     $zero, $zero, lbl_80A3DDA0 
    nop
lbl_80A3DC60:
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f0, 0x019C(s0)            # 0000019C
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A3DCAC               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x000A             # v0 = 0000000A
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DD74 
    sra     v0, v0, 16                 
lbl_80A3DCAC:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80A3DCF8               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    mfc1    v0, $f4                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x000F             # v0 = 0000000F
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DD74 
    sra     v0, v0, 16                 
lbl_80A3DCF8:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    nop
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A3DD44               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x0011             # v0 = 00000011
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80A3DD74 
    sra     v0, v0, 16                 
lbl_80A3DD44:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x0019             # v0 = 00000019
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80A3DD74:
    lui     $at, %hi(var_80A47F92)     # $at = 80A40000
    sh      v0, %lo(var_80A47F92)($at) 
    sll     a2, v0,  2                 
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    subu    a2, a2, v0                 
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      v0, %lo(var_80A47F14)($at) 
    andi    a2, a2, 0x00FF             # a2 = 00000000
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    jal     func_8009151C              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
lbl_80A3DDA0:
    lui     $at, %hi(var_80A47F94)     # $at = 80A40000
    sb      $zero, %lo(var_80A47F94)($at) 
    lui     $at, %hi(var_80A47F86)     # $at = 80A40000
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, %lo(var_80A47F86)($at) 
    lui     $at, %hi(var_80A47EF0)     # $at = 80A40000
    sh      $zero, %lo(var_80A47EF0)($at) 
    beq     $zero, $zero, lbl_80A3F8F4 
    lh      a0, 0x014C(s0)             # 0000014C
var_80A3DDC4:
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    lui     t8, %hi(var_80A47F28)      # t8 = 80A40000
    sb      t2, 0x0141(s0)             # 00000141
    addiu   t8, t8, %lo(var_80A47F28)  # t8 = 80A47F28
    lw      t3, 0x0000(t8)             # 80A47F28
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    sw      t3, 0x01A4(s0)             # 000001A4
    lw      t1, 0x0004(t8)             # 80A47F2C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4000                 # a1 = 40000000
    sw      t1, 0x01A8(s0)             # 000001A8
    lw      t3, 0x0008(t8)             # 80A47F30
    jal     func_80064280              
    sw      t3, 0x01AC(s0)             # 000001AC
    lui     t4, %hi(var_80A44A74)      # t4 = 80A40000
    lh      t4, %lo(var_80A44A74)(t4)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t4, $at, lbl_80A3DE90      
    lui     $at, 0x44FA                # $at = 44FA0000
    lh      t5, 0x016A(s0)             # 0000016A
    beql    t5, $zero, lbl_80A3DE90    
    lui     $at, 0x44FA                # $at = 44FA0000
    lw      t6, 0x07C0(s1)             # 000007C0
    lui     $at, %hi(var_80A47F2C)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A47F2C)($at) 
    lw      t9, 0x0028(t6)             # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lh      t7, 0x0002(t9)             # 00000002
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f14, $f4                  
    add.s   $f8, $f14, $f10            
    c.lt.s  $f8, $f16                  
    nop
    bc1t    lbl_80A3DE8C               
    lui     $at, %hi(var_80A47F28)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A47F28)($at) 
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A47F30)($at) 
    mul.s   $f6, $f2, $f2              
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f10                  # $f10 = 800.00
    mul.s   $f4, $f12, $f12            
    add.s   $f0, $f6, $f4              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A3DEAC               
lbl_80A3DE8C:
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80A3DE90:
    lh      t2, 0x014A(s0)             # 0000014A
    mtc1    $at, $f8                   # $f8 = 2000.00
    sh      $zero, 0x016A(s0)          # 0000016A
    swc1    $f20, 0x0180(s0)           # 00000180
    sh      t2, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    swc1    $f8, 0x0184(s0)            # 00000184
lbl_80A3DEAC:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f6, 0x0124($sp)           
    c.lt.s  $f6, $f4                   
    nop
    bc1f    lbl_80A3F8F0               
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    sub.s   $f8, $f14, $f10            
    c.lt.s  $f8, $f16                  
    nop
    bc1f    lbl_80A3DEF4               
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x288A          # a1 = 0000288A
    jal     func_800646F0              
    addiu   a0, $zero, 0x0836          # a0 = 00000836
lbl_80A3DEF4:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x0148(s0)             # 00000148
    lui     $at, %hi(var_80A45738)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45738)($at) 
    lui     $at, %hi(var_80A4573C)     # $at = 80A40000
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    swc1    $f6, 0x0180(s0)            # 00000180
    lwc1    $f4, %lo(var_80A4573C)($at) 
    addiu   t3, $zero, 0x0078          # t3 = 00000078
    sh      t1, 0x016C(s0)             # 0000016C
    sh      $zero, 0x016A(s0)          # 0000016A
    sh      $zero, 0x016E(s0)          # 0000016E
    sh      t3, 0x0170(s0)             # 00000170
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    swc1    $f4, 0x0184(s0)            # 00000184
    sh      t4, %lo(var_80A44A74)($at) 
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47F26)(t5)  
    lui     $at, %hi(var_80A47F18)     # $at = 80A40000
    sw      s0, %lo(var_80A47F18)($at) 
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t5, $at, lbl_80A3DF94      
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    lui     $at, %hi(var_80A47F92)     # $at = 80A40000
    sh      t6, %lo(var_80A47F92)($at) 
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      t9, %lo(var_80A47F14)($at) 
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    addiu   a2, $zero, 0x005A          # a2 = 0000005A
    jal     func_8009151C              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    beq     $zero, $zero, lbl_80A3DFC0 
    nop
lbl_80A3DF94:
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    lui     $at, %hi(var_80A47F92)     # $at = 80A40000
    sh      t7, %lo(var_80A47F92)($at) 
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      t2, %lo(var_80A47F14)($at) 
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x005A          # a2 = 0000005A
    jal     func_8009151C              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
lbl_80A3DFC0:
    lui     $at, %hi(var_80A47F94)     # $at = 80A40000
    sb      $zero, %lo(var_80A47F94)($at) 
    lui     $at, %hi(var_80A47F86)     # $at = 80A40000
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sh      t8, %lo(var_80A47F86)($at) 
    lui     $at, %hi(var_80A47EF0)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      $zero, %lo(var_80A47EF0)($at) 
var_80A3DFE0:
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f10                  # $f10 = 1200.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lui     v0, %hi(var_80A47EF0)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47EF0)  # v0 = 80A47EF0
    swc1    $f10, 0x00F4(s0)           # 000000F4
    swc1    $f8, 0x00F8(s0)            # 000000F8
    lh      t1, 0x0000(v0)             # 80A47EF0
    lw      a0, 0x0040($sp)            
    addiu   a1, $zero, 0x2AF8          # a1 = 00002AF8
    addiu   t3, t1, 0x0001             # t3 = 00000001
    sh      t3, 0x0000(v0)             # 80A47EF0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064624              
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lui     $at, %hi(var_80A47F18)     # $at = 80A40000
    sw      s0, %lo(var_80A47F18)($at) 
    lh      a1, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      a0, 0x00E0($sp)            
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0500          # a3 = 00000500
    jal     func_80064624              
    addiu   a0, a0, 0x00B6             # a0 = 000000B6
    lui     v1, %hi(var_80A47F94)      # v1 = 80A40000
    lbu     v1, %lo(var_80A47F94)(v1)  
    bne     v1, $zero, lbl_80A3E088    
    lui     a0, %hi(var_80A49D10)      # a0 = 80A50000
    addiu   a0, a0, %lo(var_80A49D10)  # a0 = 80A49D10
    lh      v0, 0x0000(a0)             # 80A49D10
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_80A3E088   
    lui     t4, %hi(var_80A47F1E)      # t4 = 80A40000
    lh      t4, %lo(var_80A47F1E)(t4)  
    andi    t5, t4, 0x0003             # t5 = 00000000
    bne     t5, $zero, lbl_80A3E088    
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x0000(a0)             # 80A49D10
lbl_80A3E088:
    lui     t9, %hi(var_80A47F92)      # t9 = 80A40000
    lh      t9, %lo(var_80A47F92)(t9)  
    beql    t9, $zero, lbl_80A3E2F8    
    addiu   t4, s1, 0x0014             # t4 = 00000014
    bne     v1, $zero, lbl_80A3E2F4    
    addiu   v1, s1, 0x0014             # v1 = 00000014
    lb      v0, 0x0015(v1)             # 00000029
    slti    $at, v0, 0xFFCE            
    beq     $at, $zero, lbl_80A3E0C0   
    lui     t7, %hi(var_80A44AA8)      # t7 = 80A40000
    lh      t7, %lo(var_80A44AA8)(t7)  
    slti    $at, t7, 0xFFD9            
    beql    $at, $zero, lbl_80A3E0D4   
    slti    $at, v0, 0xFFCE            
lbl_80A3E0C0:
    lhu     t2, 0x000C(v1)             # 00000020
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t8, t2, 0x8000             # t8 = 00000000
    bne     t8, $at, lbl_80A3E2F4      
    slti    $at, v0, 0xFFCE            
lbl_80A3E0D4:
    beq     $at, $zero, lbl_80A3E1B0   
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f6, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A45740)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45740)($at) 
    sub.s   $f10, $f6, $f4             
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    mul.s   $f6, $f10, $f8             
    mtc1    $zero, $f10                # $f10 = 0.00
    sub.s   $f0, $f4, $f6              
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A3E1B0               
    nop
    cfc1    t1, $f31                   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f0                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_80A3E180    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f0, $f8              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80A3E178    
    nop
    mfc1    t3, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3E190 
    or      t3, t3, $at                # t3 = 80000000
lbl_80A3E178:
    beq     $zero, $zero, lbl_80A3E190 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_80A3E180:
    mfc1    t3, $f8                    
    nop
    bltz    t3, lbl_80A3E178           
    nop
lbl_80A3E190:
    lh      t4, 0x008A(s0)             # 0000008A
    lh      t5, 0x00B6(s0)             # 000000B6
    ctc1    t1, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    subu    t6, t4, t5                 
    sb      t3, 0x0142(s0)             # 00000142
    sh      t6, 0x0144(s0)             # 00000144
    sb      t9, 0x0146(s0)             # 00000146
lbl_80A3E1B0:
    lui     $at, %hi(var_80A45744)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45744)($at) 
    lui     $at, %hi(var_80A45748)     # $at = 80A40000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    swc1    $f4, 0x0188(s0)            # 00000188
    lwc1    $f6, %lo(var_80A45748)($at) 
    lui     $at, %hi(var_80A47F94)     # $at = 80A40000
    addiu   a0, $zero, 0x081A          # a0 = 0000081A
    swc1    $f6, 0x018C(s0)            # 0000018C
    jal     func_800CAA70              
    sb      t7, %lo(var_80A47F94)($at) 
    lui     $at, %hi(var_80A47F16)     # $at = 80A40000
    sh      $zero, %lo(var_80A47F16)($at) 
    lbu     t2, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_80A3E210      
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lwc1    $f10, 0x019C(s0)           # 0000019C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    mul.s   $f4, $f10, $f8             
    beq     $zero, $zero, lbl_80A3E224 
    add.s   $f2, $f4, $f6              
lbl_80A3E210:
    lwc1    $f0, 0x019C(s0)            # 0000019C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    add.s   $f10, $f0, $f0             
    add.s   $f2, $f10, $f8             
lbl_80A3E224:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f0                   # $f0 = 255.00
    nop
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80A3E248               
    cfc1    t8, $f31                   
    mov.s   $f2, $f0                   
    cfc1    t8, $f31                   
lbl_80A3E248:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    ctc1    a1, $f31                   
    mtc1    $zero, $f12                # $f12 = 0.00
    cvt.w.s $f4, $f2                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_80A3E2B0    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f4, $f2, $f4              
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80A3E2A8    
    nop
    mfc1    a1, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3E2C0 
    or      a1, a1, $at                # a1 = 80000000
lbl_80A3E2A8:
    beq     $zero, $zero, lbl_80A3E2C0 
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_80A3E2B0:
    mfc1    a1, $f4                    
    nop
    bltz    a1, lbl_80A3E2A8           
    nop
lbl_80A3E2C0:
    ctc1    t8, $f31                   
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_8009151C              
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    sh      t1, %lo(var_80A47F14)($at) 
    lui     $at, %hi(var_80A49C18)     # $at = 80A50000
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sb      t3, %lo(var_80A49C18)($at) 
    jal     func_800646F0              
    addiu   a0, $zero, 0x184A          # a0 = 0000184A
lbl_80A3E2F4:
    addiu   t4, s1, 0x0014             # t4 = 00000014
lbl_80A3E2F8:
    sw      t4, 0x004C($sp)            
    lw      t5, 0x07C0(s1)             # 000007C0
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      t6, 0x0028(t5)             # 00000028
    lh      t9, 0x0002(t6)             # 00000002
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80A3E9E8               
    nop
    lh      t7, 0x016C(s0)             # 0000016C
    slti    $at, t7, 0x001F            
    bnel    $at, $zero, lbl_80A3E344   
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    beq     $zero, $zero, lbl_80A3E344 
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_80A3E344:
    lh      t2, 0x014C(s0)             # 0000014C
    and     t8, t2, v0                 
    bnel    t8, $zero, lbl_80A3E508    
    lh      v0, 0x016C(s0)             # 0000016C
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0048($sp)            
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f4                   # $f4 = 0.75
    lw      v1, 0x0048($sp)            
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A3E504               
    lui     t1, %hi(var_80A47F14)      # t1 = 80A40000
    lh      t1, %lo(var_80A47F14)(t1)  
    bne     t1, $zero, lbl_80A3E504    
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f0, 0x019C(s0)            # 0000019C
    c.le.s  $f10, $f0                  
    nop
    bc1f    lbl_80A3E3A8               
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    beq     $zero, $zero, lbl_80A3E430 
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A3E3A8:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    nop
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_80A3E3D0               
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f2                   # $f2 = 230.00
    beq     $zero, $zero, lbl_80A3E430 
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A3E3D0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.le.s  $f8, $f0                   
    nop
    bc1f    lbl_80A3E3F8               
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    beq     $zero, $zero, lbl_80A3E430 
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A3E3F8:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    nop
    c.le.s  $f4, $f0                   
    nop
    bc1f    lbl_80A3E420               
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f2                   # $f2 = 170.00
    beq     $zero, $zero, lbl_80A3E430 
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A3E420:
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f2                   # $f2 = 140.00
    nop
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A3E430:
    bne     v1, $at, lbl_80A3E448      
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f10                  # $f10 = 0.75
    nop
    mul.s   $f2, $f2, $f10             
    nop
lbl_80A3E448:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    swc1    $f2, 0x00A4($sp)           
    cfc1    t3, $f31                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    ctc1    a1, $f31                   
    lwc1    $f2, 0x00A4($sp)           
    mtc1    $zero, $f12                # $f12 = 0.00
    cvt.w.s $f6, $f2                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_80A3E4C8    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f2, $f6              
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80A3E4C0    
    nop
    mfc1    a1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3E4D8 
    or      a1, a1, $at                # a1 = 80000000
lbl_80A3E4C0:
    beq     $zero, $zero, lbl_80A3E4D8 
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_80A3E4C8:
    mfc1    a1, $f6                    
    nop
    bltz    a1, lbl_80A3E4C0           
    nop
lbl_80A3E4D8:
    ctc1    t3, $f31                   
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    trunc.w.s $f8, $f0                   
    mfc1    a2, $f8                    
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    addiu   a2, a2, 0x000A             # a2 = 0000000A
    jal     func_8009151C              
    andi    a2, a2, 0x00FF             # a2 = 0000000A
lbl_80A3E504:
    lh      v0, 0x016C(s0)             # 0000016C
lbl_80A3E508:
    slti    $at, v0, 0x001F            
    bnel    $at, $zero, lbl_80A3E854   
    andi    t7, v0, 0x000F             # t7 = 00000000
    lh      t5, 0x016A(s0)             # 0000016A
    bnel    t5, $zero, lbl_80A3E728    
    lh      t4, 0x016E(s0)             # 0000016E
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    swc1    $f0, 0x010C($sp)           
    swc1    $f0, 0x0110($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
    swc1    $f4, 0x0114($sp)           
lbl_80A3E540:
    lui     $at, %hi(var_80A4574C)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A4574C)($at) 
    jal     func_80026D90              
    sh      v0, 0x00A2($sp)            
    lh      t6, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a1, $zero, $zero           # a1 = 00000000
    addu    t9, t6, $at                
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    cvt.s.w $f6, $f10                  
    lui     $at, %hi(var_80A45750)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45750)($at) 
    div.s   $f4, $f6, $f8              
    mul.s   $f6, $f4, $f10             
    jal     func_800AAB94              
    add.s   $f12, $f0, $f6             
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFD4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0100            # a1 = FFFFFFC8
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x0100($sp)           
    lhu     v0, 0x00A2($sp)            
    lwc1    $f6, 0x002C(s0)            # 0000002C
    add.s   $f10, $f8, $f4             
    lui     $at, %hi(var_80A45754)     # $at = 80A40000
    swc1    $f10, 0x01A4(s0)           # 000001A4
    lwc1    $f8, 0x0108($sp)           
    lwc1    $f0, 0x01A4(s0)            # 000001A4
    add.s   $f4, $f6, $f8              
    mul.s   $f10, $f0, $f0             
    swc1    $f4, 0x01AC(s0)            # 000001AC
    lwc1    $f2, 0x01AC(s0)            # 000001AC
    lwc1    $f4, %lo(var_80A45754)($at) 
    mul.s   $f6, $f2, $f2              
    add.s   $f8, $f10, $f6             
    c.lt.s  $f8, $f4                   
    nop
    bc1t    lbl_80A3E5F4               
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x0064            
    bne     $at, $zero, lbl_80A3E540   
    nop
lbl_80A3E5F4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A45758)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45758)($at) 
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A3E6E0               
    lui     $at, 0x4120                # $at = 41200000
    lh      t7, 0x0170(s0)             # 00000170
    bne     t7, $zero, lbl_80A3E6DC    
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f0, 0x019C(s0)            # 0000019C
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A3E644               
    lui     $at, 0x4248                # $at = 42480000
    beq     $zero, $zero, lbl_80A3E668 
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    lui     $at, 0x4248                # $at = 42480000
lbl_80A3E644:
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A3E668               
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    beq     $zero, $zero, lbl_80A3E668 
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
lbl_80A3E668:
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a2, $zero, 0x005A          # a2 = 0000005A
    jal     func_8009151C              
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t2, 0x016A(s0)             # 0000016A
    sh      v0, 0x016C(s0)             # 0000016C
    sh      t8, 0x016E(s0)             # 0000016E
    sh      v0, 0x0170(s0)             # 00000170
    lui     $at, %hi(var_80A47F14)     # $at = 80A40000
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    swc1    $f4, 0x01A8(s0)            # 000001A8
    sh      t1, %lo(var_80A47F14)($at) 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    lui     $at, %hi(var_80A47F86)     # $at = 80A40000
    mfc1    t6, $f10                   
    nop
    addiu   t9, t6, 0x0014             # t9 = 00000014
    sh      t9, %lo(var_80A47F86)($at) 
    beq     $zero, $zero, lbl_80A3E728 
    lh      t4, 0x016E(s0)             # 0000016E
lbl_80A3E6DC:
    lui     $at, 0x4120                # $at = 41200000
lbl_80A3E6E0:
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f12                  # $f12 = 150.00
    sh      $zero, 0x016E(s0)          # 0000016E
    mfc1    t1, $f6                    
    nop
    addiu   t3, t1, 0x0003             # t3 = 00000003
    jal     func_80026D64              
    sh      t3, 0x016A(s0)             # 0000016A
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f8                   # $f8 = -70.00
    nop
    sub.s   $f4, $f8, $f0              
    swc1    $f4, 0x01A8(s0)            # 000001A8
    lh      t4, 0x016E(s0)             # 0000016E
lbl_80A3E728:
    beq     t4, $zero, lbl_80A3E784    
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    mfc1    a2, $f20                   
    swc1    $f10, %lo(var_80A47F8C)($at) 
    lui     $at, %hi(var_80A4575C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4575C)($at) 
    lui     $at, %hi(var_80A45760)     # $at = 80A40000
    mfc1    a3, $f20                   
    swc1    $f6, 0x0180(s0)            # 00000180
    lwc1    $f8, %lo(var_80A45760)($at) 
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40F0                 # a1 = 40F00000
    jal     func_80064280              
    swc1    $f8, 0x0184(s0)            # 00000184
    lw      a0, 0x0040($sp)            
    addiu   a1, $zero, 0x4E20          # a1 = 00004E20
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    beq     $zero, $zero, lbl_80A3E9E8 
    nop
lbl_80A3E784:
    lui     t5, %hi(var_80A47F94)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47F94)(t5)  
    bne     t5, $zero, lbl_80A3E7D0    
    lui     t6, %hi(var_80A47F26)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47F26)(t6)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_80A3E7D0      
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f4                   # $f4 = 2000.00
    mfc1    a2, $f20                   
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    swc1    $f20, 0x0180(s0)           # 00000180
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280              
    swc1    $f4, 0x0184(s0)            # 00000184
    beq     $zero, $zero, lbl_80A3E800 
    lbu     t9, 0x0140(s0)             # 00000140
lbl_80A3E7D0:
    lui     $at, %hi(var_80A45764)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45764)($at) 
    lui     $at, %hi(var_80A45768)     # $at = 80A40000
    mfc1    a2, $f20                   
    swc1    $f10, 0x0180(s0)           # 00000180
    lwc1    $f6, %lo(var_80A45768)($at) 
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064280              
    swc1    $f6, 0x0184(s0)            # 00000184
    lbu     t9, 0x0140(s0)             # 00000140
lbl_80A3E800:
    bne     t9, $zero, lbl_80A3E824    
    lui     $at, %hi(var_80A4576C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4576C)($at) 
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    mul.s   $f10, $f8, $f4             
    sub.s   $f6, $f20, $f10            
    beq     $zero, $zero, lbl_80A3E9E8 
    swc1    $f6, %lo(var_80A47F8C)($at) 
lbl_80A3E824:
    lui     $at, %hi(var_80A45770)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45770)($at) 
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A45774)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45774)($at) 
    mul.s   $f10, $f8, $f4             
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    mul.s   $f8, $f10, $f6             
    sub.s   $f4, $f20, $f8             
    beq     $zero, $zero, lbl_80A3E9E8 
    swc1    $f4, %lo(var_80A47F8C)($at) 
    andi    t7, v0, 0x000F             # t7 = 00000000
lbl_80A3E854:
    bnel    t7, $zero, lbl_80A3E8CC    
    lbu     t3, 0x0140(s0)             # 00000140
    lw      t2, 0x004C($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lhu     t8, 0x0000(t2)             # 00000000
    andi    t1, t8, 0x8000             # t1 = 00000000
    bne     t1, $at, lbl_80A3E8C8      
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f10, 0x019C(s0)           # 0000019C
    c.le.s  $f6, $f10                  
    nop
    bc1f    lbl_80A3E898               
    lui     t3, %hi(var_80A47EF0)      # t3 = 80A40000
    lh      t3, %lo(var_80A47EF0)(t3)  
    slti    $at, t3, 0x07D0            
    bne     $at, $zero, lbl_80A3E8C8   
lbl_80A3E898:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t8, 0x00B6(s0)             # 000000B6
    mfc1    t9, $f8                    
    subu    t1, t2, t8                 
    sh      t1, 0x0144(s0)             # 00000144
    addiu   t7, t9, 0x000F             # t7 = 0000000F
    sb      t7, 0x0142(s0)             # 00000142
lbl_80A3E8C8:
    lbu     t3, 0x0140(s0)             # 00000140
lbl_80A3E8CC:
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A45778)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45778)($at) 
    bne     t3, $zero, lbl_80A3E908    
    swc1    $f4, 0x0184(s0)            # 00000184
    lui     $at, %hi(var_80A4577C)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A4577C)($at) 
    lwc1    $f10, 0x019C(s0)           # 0000019C
    lui     $at, %hi(var_80A45780)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45780)($at) 
    mul.s   $f8, $f10, $f6             
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    sub.s   $f10, $f4, $f8             
    beq     $zero, $zero, lbl_80A3E938 
    swc1    $f10, %lo(var_80A47F8C)($at) 
lbl_80A3E908:
    lui     $at, %hi(var_80A45784)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45784)($at) 
    lwc1    $f6, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A45788)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45788)($at) 
    mul.s   $f8, $f6, $f4              
    lui     $at, %hi(var_80A4578C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4578C)($at) 
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    mul.s   $f6, $f8, $f10             
    sub.s   $f8, $f4, $f6              
    swc1    $f8, %lo(var_80A47F8C)($at) 
lbl_80A3E938:
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      t4, 0x016C(s0)             # 0000016C
    bne     t4, $zero, lbl_80A3E9E8    
    nop
    sb      $zero, 0x0142(s0)          # 00000142
    lui     v0, %hi(var_80A47EF0)      # v0 = 80A40000
    lh      v0, %lo(var_80A47EF0)(v0)  
    slti    $at, v0, 0x07D0            
    beq     $at, $zero, lbl_80A3E994   
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    mfc1    t7, $f10                   
    nop
    addiu   t2, t7, 0x0032             # t2 = 00000032
    beq     $zero, $zero, lbl_80A3E9E8 
    sh      t2, 0x016C(s0)             # 0000016C
lbl_80A3E994:
    slti    $at, v0, 0x0BB8            
    beq     $at, $zero, lbl_80A3E9C4   
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    mfc1    t4, $f4                    
    nop
    addiu   t5, t4, 0x001E             # t5 = 0000001E
    beq     $zero, $zero, lbl_80A3E9E8 
    sh      t5, 0x016C(s0)             # 0000016C
lbl_80A3E9C4:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    t2, $f6                    
    nop
    addiu   t8, t2, 0x0019             # t8 = 00000019
    sh      t8, 0x016C(s0)             # 0000016C
lbl_80A3E9E8:
    lui     t1, %hi(var_80A47EE4)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47EE4)(t1)  
    lui     v0, %hi(var_80A47F94)      # v0 = 80A40000
    lbu     v0, %lo(var_80A47F94)(v0)  
    beq     t1, $zero, lbl_80A3EA0C    
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    swc1    $f8, %lo(var_80A47F8C)($at) 
lbl_80A3EA0C:
    bne     v0, $zero, lbl_80A3EA20    
    lui     t3, %hi(var_80A47F26)      # t3 = 80A40000
    lbu     t3, %lo(var_80A47F26)(t3)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t3, $at, lbl_80A3EAC8      
lbl_80A3EA20:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    lui     v0, %hi(var_80A47F1E)      # v0 = 80A40000
    lh      v0, %lo(var_80A47F1E)(v0)  
    c.lt.s  $f10, $f4                  
    nop
    bc1f    lbl_80A3EA68               
    andi    t4, v0, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80A3EA58    
    lui     $at, %hi(var_80A45790)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A45790)($at) 
    beq     $zero, $zero, lbl_80A3EA8C 
    swc1    $f6, 0x0100($sp)           
lbl_80A3EA58:
    lui     $at, 0xBF40                # $at = BF400000
    mtc1    $at, $f8                   # $f8 = -0.75
    beq     $zero, $zero, lbl_80A3EA8C 
    swc1    $f8, 0x0100($sp)           
lbl_80A3EA68:
    andi    t5, v0, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_80A3EA80    
    lui     $at, %hi(var_80A45794)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45794)($at) 
    beq     $zero, $zero, lbl_80A3EA8C 
    swc1    $f10, 0x0100($sp)          
lbl_80A3EA80:
    lui     $at, %hi(var_80A45798)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45798)($at) 
    swc1    $f4, 0x0100($sp)           
lbl_80A3EA8C:
    lui     a0, %hi(var_80A44AA0)      # a0 = 80A40000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, a0, %lo(var_80A44AA0)  # a0 = 80A44AA0
    lui     a1, 0x420C                 # a1 = 420C0000
    jal     func_80064280              
    lui     a3, 0x4060                 # a3 = 40600000
    lui     a0, %hi(var_80A44A9C)      # a0 = 80A40000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_80A44A9C)  # a0 = 80A44A9C
    jal     func_80064280              
    lw      a1, 0x0100($sp)            
lbl_80A3EAC8:
    lw      t7, 0x01B0(s0)             # 000001B0
    lui     t6, %hi(var_80A4892C)      # t6 = 80A50000
    addiu   t6, t6, %lo(var_80A4892C)  # t6 = 80A4892C
    sw      t7, 0x0000(t6)             # 80A4892C
    lw      t9, 0x01B4(s0)             # 000001B4
    lui     v0, %hi(var_80A47FD8)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FD8)  # v0 = 80A47FD8
    sw      t9, 0x0004(t6)             # 80A48930
    lw      t7, 0x01B8(s0)             # 000001B8
    lui     $at, 0x43C8                # $at = 43C80000
    sw      t7, 0x0008(t6)             # 80A48934
    lwc1    $f6, 0x0954(v0)            # 80A4892C
    lwc1    $f2, 0x0948(v0)            # 80A48920
    lwc1    $f4, 0x094C(v0)            # 80A48924
    lwc1    $f10, 0x0958(v0)           # 80A48930
    sub.s   $f8, $f6, $f2              
    sub.s   $f6, $f10, $f4             
    swc1    $f8, 0x010C($sp)           
    lwc1    $f8, 0x095C(v0)            # 80A48934
    lwc1    $f10, 0x0950(v0)           # 80A48928
    swc1    $f6, 0x0110($sp)           
    mtc1    $at, $f6                   # $f6 = 400.00
    sub.s   $f4, $f8, $f10             
    lwc1    $f8, 0x010C($sp)           
    swc1    $f4, 0x0114($sp)           
    mul.s   $f10, $f8, $f8             
    lwc1    $f4, 0x0110($sp)           
    mul.s   $f8, $f4, $f4              
    add.s   $f4, $f10, $f8             
    lwc1    $f10, 0x0114($sp)          
    mul.s   $f8, $f10, $f10            
    add.s   $f10, $f4, $f8             
    c.lt.s  $f6, $f10                  
    nop
    bc1f    lbl_80A3EC10               
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    mfc1    a1, $f2                    
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mul.s   $f0, $f4, $f8              
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0024             # a0 = 00000024
    add.s   $f6, $f0, $f0              
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lwc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    mul.s   $f0, $f10, $f4             
    lui     $at, %hi(var_80A4579C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4579C)($at) 
    lui     v0, %hi(var_80A47FD8)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FD8)  # v0 = 80A47FD8
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f8, $f0, $f0              
    lw      a1, 0x094C(v0)             # 80A48924
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mul.s   $f10, $f8, $f6             
    nop
    mul.s   $f8, $f10, $f4             
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lwc1    $f6, 0x0068(s0)            # 00000068
    lui     v0, %hi(var_80A47FD8)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47FD8)  # v0 = 80A47FD8
    mul.s   $f0, $f6, $f10             
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lw      a1, 0x0950(v0)             # 80A48928
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    add.s   $f4, $f0, $f0              
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
lbl_80A3EC10:
    lw      t2, 0x004C($sp)            
    lui     v1, %hi(var_80A47F92)      # v1 = 80A40000
    ori     $at, $zero, 0x8000         # $at = 00008000
    lhu     t8, 0x0000(t2)             # 00000000
    lh      v1, %lo(var_80A47F92)(v1)  
    andi    t1, t8, 0x8000             # t1 = 00000000
    beq     t1, $at, lbl_80A3EC3C      
    nop
    lb      t3, 0x0015(t2)             # 00000015
    slti    $at, t3, 0xFFE2            
    beq     $at, $zero, lbl_80A3EC5C   
lbl_80A3EC3C:
    lui     v0, %hi(var_80A47F86)      # v0 = 80A40000
    lh      v0, %lo(var_80A47F86)(v0)  
    slti    $at, v0, 0x0064            
    beq     $at, $zero, lbl_80A3EC74   
    addiu   t4, v0, 0x0001             # t4 = 80A40001
    lui     $at, %hi(var_80A47F86)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3EC74 
    sh      t4, %lo(var_80A47F86)($at) 
lbl_80A3EC5C:
    lui     v0, %hi(var_80A47F86)      # v0 = 80A40000
    lh      v0, %lo(var_80A47F86)(v0)  
    beq     v0, $zero, lbl_80A3EC74    
    addiu   t5, v0, 0xFFFF             # t5 = 80A3FFFF
    lui     $at, %hi(var_80A47F86)     # $at = 80A40000
    sh      t5, %lo(var_80A47F86)($at) 
lbl_80A3EC74:
    lui     t6, %hi(var_80A44A74)      # t6 = 80A40000
    lh      t6, %lo(var_80A44A74)(t6)  
    slti    $at, t6, 0x0003            
    bne     $at, $zero, lbl_80A3ED18   
    lui     t9, %hi(var_80A47EE4)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47EE4)(t9)  
    beq     t9, $zero, lbl_80A3ECA0    
    lui     t7, %hi(var_80A47EF0)      # t7 = 80A40000
    lh      t7, %lo(var_80A47EF0)(t7)  
    slti    $at, t7, 0x0033            
    beq     $at, $zero, lbl_80A3ED18   
lbl_80A3ECA0:
    lui     t8, %hi(var_80A47EF0)      # t8 = 80A40000
    lh      t8, %lo(var_80A47EF0)(t8)  
    slti    $at, t8, 0x1770            
    beq     $at, $zero, lbl_80A3ED18   
    nop
    bne     v1, $zero, lbl_80A3ECC4    
    lui     t1, %hi(var_80A47F94)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47F94)(t1)  
    beq     t1, $zero, lbl_80A3ED18    
lbl_80A3ECC4:
    lui     t2, %hi(var_80A47F86)      # t2 = 80A40000
    lh      t2, %lo(var_80A47F86)(t2)  
    beq     t2, $zero, lbl_80A3ED18    
    lui     t3, %hi(var_80A47F1E)      # t3 = 80A40000
    lh      t3, %lo(var_80A47F1E)(t3)  
    andi    t4, t3, 0x007F             # t4 = 00000000
    bnel    t4, $zero, lbl_80A3EE2C    
    lui     $at, 0x4248                # $at = 42480000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A457A0)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A457A0)($at) 
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A3EE28               
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47F26)(t5)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t5, $at, lbl_80A3EE28      
    lui     v1, %hi(var_80A47F92)      # v1 = 80A40000
    lh      v1, %lo(var_80A47F92)(v1)  
lbl_80A3ED18:
    lui     a0, %hi(var_80A44A5C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A5C)  # a0 = 80A44A5C
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    bne     v1, $zero, lbl_80A3ED88    
    sb      t6, 0x0000(a0)             # 80A44A5C
    lui     t9, %hi(var_80A47F94)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47F94)(t9)  
    bne     t9, $zero, lbl_80A3ED88    
    lui     v0, %hi(var_80A47EE5)      # v0 = 80A40000
    lbu     v0, %lo(var_80A47EE5)(v0)  
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t7, $zero, 0x4081          # t7 = 00004081
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    bne     v1, v0, lbl_80A3ED68       
    sh      t7, %lo(var_80A47EF6)($at) 
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4B70(t8)            # 8011B490
    andi    t1, t8, 0x0400             # t1 = 00000000
    bne     t1, $zero, lbl_80A3ED80    
    nop
lbl_80A3ED68:
    beq     v1, v0, lbl_80A3EDB4       
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4B70(t2)            # 8011B490
    andi    t3, t2, 0x0800             # t3 = 00000000
    beql    t3, $zero, lbl_80A3EDB8    
    sh      $zero, 0x014A(s0)          # 0000014A
lbl_80A3ED80:
    beq     $zero, $zero, lbl_80A3EDB4 
    sb      $zero, 0x0000(a0)          # 80A44A5C
lbl_80A3ED88:
    addiu   t4, $zero, 0x4082          # t4 = 00004082
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      t4, %lo(var_80A47EF6)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_8009151C              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x100A                 # a0 = 100A0000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100A00FF
lbl_80A3EDB4:
    sh      $zero, 0x014A(s0)          # 0000014A
lbl_80A3EDB8:
    lh      t5, 0x014A(s0)             # 0000014A
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t6, $zero, 0x2710          # t6 = 00002710
    addiu   t9, $zero, 0x01F4          # t9 = 000001F4
    sh      t6, 0x0194(s0)             # 00000194
    sh      t9, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    sh      $zero, 0x016A(s0)          # 0000016A
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A457A4)     # $at = 80A40000
    sh      t5, 0x0148(s0)             # 00000148
    lwc1    $f6, %lo(var_80A457A4)($at) 
    lui     t7, %hi(var_80A44A74)      # t7 = 80A40000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    swc1    $f6, 0x0184(s0)            # 00000184
    lh      t7, %lo(var_80A44A74)(t7)  
    bne     t7, $at, lbl_80A3EE08      
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    sh      t8, %lo(var_80A44A74)($at) 
lbl_80A3EE08:
    lui     $at, %hi(var_80A47F16)     # $at = 80A40000
    sh      v0, %lo(var_80A47F16)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, %hi(var_80A47F8C)     # $at = 80A40000
    swc1    $f10, %lo(var_80A47F8C)($at) 
    beq     $zero, $zero, lbl_80A3F8F0 
    sb      $zero, 0x0142(s0)          # 00000142
lbl_80A3EE28:
    lui     $at, 0x4248                # $at = 42480000
lbl_80A3EE2C:
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f8                   
    nop
    bc1f    lbl_80A3F8F0               
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sh      t1, 0x0148(s0)             # 00000148
    sh      t2, 0x016A(s0)             # 0000016A
    lw      t4, 0x00E0($sp)            
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8009151C              
    sh      t3, 0x0850(t4)             # 00000850
    lui     v0, %hi(var_80A47EF4)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47EF4)  # v0 = 80A47EF4
    lhu     t5, 0x0000(v0)             # 80A47EF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    addiu   t6, t5, 0x0001             # t6 = 00000001
    jal     func_80052328              
    sh      t6, 0x0000(v0)             # 80A47EF4
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      t9, %lo(var_80A44AAC)($at) 
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    lui     $at, %hi(var_80A49D38)     # $at = 80A50000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    swc1    $f6, %lo(var_80A49D38)($at) 
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    sh      t7, %lo(var_80A44A74)($at) 
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A457A8)     # $at = 80A40000
    swc1    $f10, 0x0184(s0)           # 00000184
    lwc1    $f4, %lo(var_80A457A8)($at) 
    lwc1    $f10, 0x0028(s0)           # 00000028
    swc1    $f4, 0x018C(s0)            # 0000018C
    lw      t8, 0x07C0(s1)             # 000007C0
    lw      t1, 0x0028(t8)             # 00000028
    lh      t2, 0x0002(t1)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8                   
    c.le.s  $f10, $f6                  
    nop
    bc1f    lbl_80A3EF18               
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3BA68              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80A3EF18:
    addiu   t3, s0, 0x0024             # t3 = 00000024
    addiu   t4, s0, 0x0028             # t4 = 00000028
    addiu   t5, s0, 0x002C             # t5 = 0000002C
    sw      t5, 0x003C($sp)            
    sw      t4, 0x0044($sp)            
    sw      t3, 0x0048($sp)            
    lw      a0, 0x0040($sp)            
    addiu   a1, $zero, 0x2AF8          # a1 = 00002AF8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lui     a0, %hi(var_80A49D38)      # a0 = 80A50000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, a0, %lo(var_80A49D38)  # a0 = 80A49D38
    lui     a1, 0x4170                 # a1 = 41700000
    jal     func_80064280              
    lui     a3, 0x3F40                 # a3 = 3F400000
    lui     $at, %hi(var_80A49D38)     # $at = 80A50000
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    lwc1    $f4, %lo(var_80A49D38)($at) 
    lbu     t6, %lo(var_80A47EE5)(t6)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f4, 0x010C($sp)           
    beq     t6, $at, lbl_80A3EF98      
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f6                   # $f6 = 55.00
    swc1    $f8, 0x0110($sp)           
    beq     $zero, $zero, lbl_80A3EFB0 
    swc1    $f6, 0x0114($sp)           
lbl_80A3EF98:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    swc1    $f10, 0x0110($sp)          
    swc1    $f4, 0x0114($sp)           
lbl_80A3EFB0:
    lw      t9, 0x00E0($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    lh      t7, 0x00B6(t9)             # 000000B6
    lui     $at, %hi(var_80A457AC)     # $at = 80A40000
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8                   
    lwc1    $f8, %lo(var_80A457AC)($at) 
    div.s   $f4, $f6, $f10             
    mul.s   $f12, $f4, $f8             
    jal     func_800AAB94              
    nop
    lui     a1, %hi(var_80A49D18)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A49D18)  # a1 = 80A49D18
    jal     func_800AB958              
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFD4
    lw      v1, 0x00E0($sp)            
    lui     a1, %hi(var_80A49D18)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A49D18)  # a1 = 80A49D18
    lwc1    $f6, 0x0000(a1)            # 80A49D18
    lwc1    $f10, 0x0024(v1)           # 00000024
    lwc1    $f8, 0x0004(a1)            # 80A49D1C
    lui     v0, %hi(var_80A49D28)      # v0 = 80A50000
    add.s   $f4, $f6, $f10             
    addiu   v0, v0, %lo(var_80A49D28)  # v0 = 80A49D28
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f4, 0x0000(a1)            # 80A49D18
    lwc1    $f6, 0x0028(v1)            # 00000028
    lwc1    $f4, 0x0008(a1)            # 80A49D20
    add.s   $f10, $f8, $f6             
    swc1    $f10, 0x0004(a1)           # 80A49D1C
    lwc1    $f8, 0x002C(v1)            # 0000002C
    add.s   $f6, $f4, $f8              
    swc1    $f6, 0x0008(a1)            # 80A49D20
    lw      t1, 0x0024(v1)             # 00000024
    sw      t1, 0x0000(v0)             # 80A49D28
    lw      t8, 0x0028(v1)             # 00000028
    sw      t8, 0x0004(v0)             # 80A49D2C
    lw      t1, 0x002C(v1)             # 0000002C
    sw      t1, 0x0008(v0)             # 80A49D30
    lbu     t2, %lo(var_80A47EE5)(t2)  
    beq     t2, $at, lbl_80A3F07C      
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f10, 0x0004(v0)           # 80A49D2C
    add.s   $f8, $f10, $f4             
    beq     $zero, $zero, lbl_80A3F090 
    swc1    $f8, 0x0004(v0)            # 80A49D2C
lbl_80A3F07C:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lwc1    $f6, 0x0004(v0)            # 80A49D2C
    add.s   $f4, $f6, $f10             
    swc1    $f4, 0x0004(v0)            # 80A49D2C
lbl_80A3F090:
    lh      t3, 0x016A(s0)             # 0000016A
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bnel    t3, $at, lbl_80A3F23C      
    addiu   t5, $zero, 0xC000          # t5 = FFFFC000
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0924          # a0 = 00000924
    lui     a0, %hi(var_80A44A5C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A5C)  # a0 = 80A44A5C
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    sb      t4, 0x0000(a0)             # 80A44A5C
    lbu     t5, 0x0140(s0)             # 00000140
    bnel    t5, $zero, lbl_80A3F198    
    lwc1    $f0, 0x019C(s0)            # 0000019C
    cfc1    t6, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    ctc1    t9, $f31                   
    lwc1    $f8, 0x019C(s0)            # 0000019C
    cvt.w.s $f6, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beq     t9, $zero, lbl_80A3F130    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f6, $f8, $f6              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80A3F128    
    nop
    mfc1    t9, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3F140 
    or      t9, t9, $at                # t9 = 80000000
lbl_80A3F128:
    beq     $zero, $zero, lbl_80A3F140 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
lbl_80A3F130:
    mfc1    t9, $f6                    
    nop
    bltz    t9, lbl_80A3F128           
    nop
lbl_80A3F140:
    lui     $at, %hi(var_80A44A58)     # $at = 80A40000
    sh      t9, %lo(var_80A44A58)($at) 
    lui     v0, %hi(var_80A44A58)      # v0 = 80A40000
    lhu     v0, %lo(var_80A44A58)(v0)  
    ctc1    t6, $f31                   
    slti    $at, v0, 0x004B            
    bne     $at, $zero, lbl_80A3F16C   
    addiu   t7, $zero, 0x409F          # t7 = 0000409F
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3F230 
    sh      t7, %lo(var_80A47EF6)($at) 
lbl_80A3F16C:
    slti    $at, v0, 0x0032            
    bne     $at, $zero, lbl_80A3F184   
    addiu   t8, $zero, 0x4091          # t8 = 00004091
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3F230 
    sh      t8, %lo(var_80A47EF6)($at) 
lbl_80A3F184:
    addiu   t1, $zero, 0x4083          # t1 = 00004083
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3F230 
    sh      t1, %lo(var_80A47EF6)($at) 
    lwc1    $f0, 0x019C(s0)            # 0000019C
lbl_80A3F198:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    add.s   $f10, $f0, $f0             
    cfc1    t2, $f31                   
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f4, $f10                  
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_80A3F208    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f4, $f10, $f4             
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80A3F200    
    nop
    mfc1    t3, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3F218 
    or      t3, t3, $at                # t3 = 80000000
lbl_80A3F200:
    beq     $zero, $zero, lbl_80A3F218 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_80A3F208:
    mfc1    t3, $f4                    
    nop
    bltz    t3, lbl_80A3F200           
    nop
lbl_80A3F218:
    lui     $at, %hi(var_80A44A58)     # $at = 80A40000
    sh      t3, %lo(var_80A44A58)($at) 
    ctc1    t2, $f31                   
    lui     $at, %hi(var_80A47EF6)     # $at = 80A40000
    addiu   t4, $zero, 0x4099          # t4 = 00004099
    sh      t4, %lo(var_80A47EF6)($at) 
lbl_80A3F230:
    sb      $zero, 0x01C5(s0)          # 000001C5
    lw      v1, 0x00E0($sp)            
    addiu   t5, $zero, 0xC000          # t5 = FFFFC000
lbl_80A3F23C:
    sh      t5, 0x0150(s0)             # 00000150
    lh      t6, 0x00B6(v1)             # 000000B6
    sh      $zero, 0x015E(s0)          # 0000015E
    lh      v0, 0x015E(s0)             # 0000015E
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t9, t6, 0x5000             # t9 = 00005000
    mtc1    $at, $f10                  # $f10 = 5.00
    sh      t9, 0x00B6(s0)             # 000000B6
    sh      v0, 0x0154(s0)             # 00000154
    sh      v0, 0x0152(s0)             # 00000152
    sh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x00B4(s0)             # 000000B4
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFD4
    addiu   a1, $sp, 0x0100            # a1 = FFFFFFC8
    swc1    $f8, 0x010C($sp)           
    swc1    $f6, 0x0110($sp)           
    jal     func_800AB958              
    swc1    $f10, 0x0114($sp)          
    lw      t7, 0x00E0($sp)            
    lwc1    $f8, 0x0100($sp)           
    mfc1    a2, $f20                   
    lwc1    $f4, 0x09AC(t7)            # 000009AC
    lw      a0, 0x0048($sp)            
    lui     a3, 0x40C0                 # a3 = 40C00000
    add.s   $f6, $f4, $f8              
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    lw      t8, 0x00E0($sp)            
    lwc1    $f4, 0x0104($sp)           
    mfc1    a2, $f20                   
    lwc1    $f10, 0x09B0(t8)           # 000009B0
    lw      a0, 0x0044($sp)            
    lui     a3, 0x40C0                 # a3 = 40C00000
    add.s   $f8, $f10, $f4             
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lw      t1, 0x00E0($sp)            
    lwc1    $f10, 0x0108($sp)          
    mfc1    a2, $f20                   
    lwc1    $f6, 0x09B4(t1)            # 000009B4
    lw      a0, 0x003C($sp)            
    lui     a3, 0x40C0                 # a3 = 40C00000
    add.s   $f4, $f6, $f10             
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lui     $at, 0x433C                # $at = 433C0000
    mtc1    $at, $f8                   # $f8 = 188.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    swc1    $f8, %lo(var_80A47FB4)($at) 
    lh      t2, 0x016A(s0)             # 0000016A
    slti    $at, t2, 0x0033            
    beq     $at, $zero, lbl_80A3F534   
    nop
    lbu     v0, 0x01C5(s0)             # 000001C5
    beq     v0, $zero, lbl_80A3F348    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80A3F4AC      
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    beq     $zero, $zero, lbl_80A3F534 
    nop
lbl_80A3F348:
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x004C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A3F370      
    lw      a0, 0x004C($sp)            
    jal     func_800DD464              
    nop
    bne     v0, $zero, lbl_80A3F534    
    nop
lbl_80A3F370:
    jal     func_800D6110              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A3F534    
    nop
    jal     func_800D6218              
    or      a0, s1, $zero              # a0 = 00000000
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s1                 
    lbu     t3, 0x04BD(t3)             # 000104BD
    bne     t3, $zero, lbl_80A3F494    
    lui     $at, %hi(var_80A44A50)     # $at = 80A40000
    lwc1    $f0, %lo(var_80A44A50)($at) 
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A3F3F4               
    lbu     t6, 0x0140(s0)             # 00000140
    lwc1    $f10, 0x019C(s0)           # 0000019C
    lui     $at, %hi(var_80A44A50)     # $at = 80A40000
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    swc1    $f10, %lo(var_80A44A50)($at) 
    lbu     t4, 0x0140(s0)             # 00000140
    lui     $at, %hi(var_80A47EEC)     # $at = 80A40000
    lbu     t5, %lo(var_80A47F26)(t5)  
    sb      t4, %lo(var_80A47EEC)($at) 
    lui     $at, %hi(var_80A47EEE)     # $at = 80A40000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4              
    sb      t5, %lo(var_80A47EEE)($at) 
    beq     $zero, $zero, lbl_80A3F498 
    lbu     t3, 0x01C5(s0)             # 000001C5
    lbu     t6, 0x0140(s0)             # 00000140
lbl_80A3F3F4:
    bne     t6, $zero, lbl_80A3F45C    
    lui     t9, %hi(var_80A47EEC)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47EEC)(t9)  
    bnel    t9, $zero, lbl_80A3F460    
    lwc1    $f10, 0x019C(s0)           # 0000019C
    lwc1    $f4, 0x019C(s0)            # 0000019C
    trunc.w.s $f6, $f0                   
    trunc.w.s $f8, $f4                   
    mfc1    t4, $f6                    
    mfc1    t8, $f8                    
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    sll     t1, t8, 16                 
    sra     t2, t1, 16                 
    slt     $at, t2, t6                
    beq     $at, $zero, lbl_80A3F45C   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sb      t9, 0x01C5(s0)             # 000001C5
    sh      t7, 0x016A(s0)             # 0000016A
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4098          # a1 = 00004098
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80A3F498 
    lbu     t3, 0x01C5(s0)             # 000001C5
lbl_80A3F45C:
    lwc1    $f10, 0x019C(s0)           # 0000019C
lbl_80A3F460:
    lui     $at, %hi(var_80A44A50)     # $at = 80A40000
    lui     v0, %hi(var_80A47EEC)      # v0 = 80A40000
    swc1    $f10, %lo(var_80A44A50)($at) 
    lbu     t8, 0x0140(s0)             # 00000140
    lui     t1, %hi(var_80A47F26)      # t1 = 80A40000
    lbu     v0, %lo(var_80A47EEC)(v0)  
    lbu     t1, %lo(var_80A47F26)(t1)  
    lui     $at, %hi(var_80A47EEC)     # $at = 80A40000
    sb      t8, %lo(var_80A47EEC)($at) 
    lui     $at, %hi(var_80A47EEE)     # $at = 80A40000
    sb      t1, %lo(var_80A47EEE)($at) 
    swc1    $f0, 0x019C(s0)            # 0000019C
    sb      v0, 0x0140(s0)             # 00000140
lbl_80A3F494:
    lbu     t3, 0x01C5(s0)             # 000001C5
lbl_80A3F498:
    bne     t3, $zero, lbl_80A3F534    
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A3F534 
    sh      $zero, %lo(var_80A44A74)($at) 
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
lbl_80A3F4AC:
    jal     func_800DD464              
    sw      a0, 0x004C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A3F4D0      
    lw      a0, 0x004C($sp)            
    jal     func_800DD464              
    nop
    bne     v0, $zero, lbl_80A3F534    
    nop
lbl_80A3F4D0:
    jal     func_800D6110              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A3F534    
    nop
    jal     func_800D6218              
    or      a0, s1, $zero              # a0 = 00000000
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t4, t4, s1                 
    lbu     t4, 0x04BD(t4)             # 000104BD
    beq     t4, $zero, lbl_80A3F52C    
    nop
    lwc1    $f4, 0x019C(s0)            # 0000019C
    lui     $at, %hi(var_80A44A50)     # $at = 80A40000
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    lwc1    $f0, %lo(var_80A44A50)($at) 
    lbu     t5, %lo(var_80A47F26)(t5)  
    lui     v0, %hi(var_80A47EEC)      # v0 = 80A40000
    swc1    $f4, %lo(var_80A44A50)($at) 
    lbu     v0, %lo(var_80A47EEC)(v0)  
    lui     $at, %hi(var_80A47EEE)     # $at = 80A40000
    sb      t5, %lo(var_80A47EEE)($at) 
    swc1    $f0, 0x019C(s0)            # 0000019C
    sb      v0, 0x0140(s0)             # 00000140
lbl_80A3F52C:
    lui     $at, %hi(var_80A44A74)     # $at = 80A40000
    sh      $zero, %lo(var_80A44A74)($at) 
lbl_80A3F534:
    lui     t2, %hi(var_80A44A74)      # t2 = 80A40000
    lh      t2, %lo(var_80A44A74)(t2)  
    bnel    t2, $zero, lbl_80A3F8F4    
    lh      a0, 0x014C(s0)             # 0000014C
    lw      t6, 0x0130(s0)             # 00000130
    beql    t6, $zero, lbl_80A3F624    
    lui     $at, 0x4402                # $at = 44020000
    sh      $zero, 0x014A(s0)          # 0000014A
    lui     $at, 0x44FA                # $at = 44FA0000
    lh      t9, 0x014A(s0)             # 0000014A
    mtc1    $at, $f8                   # $f8 = 2000.00
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t7, $zero, 0x2710          # t7 = 00002710
    addiu   t8, $zero, 0x01F4          # t8 = 000001F4
    sh      t7, 0x0194(s0)             # 00000194
    sh      t8, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    sh      $zero, 0x016A(s0)          # 0000016A
    swc1    $f20, 0x0180(s0)           # 00000180
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    sh      t9, 0x0148(s0)             # 00000148
    swc1    $f8, 0x0184(s0)            # 00000184
    sw      a0, 0x004C($sp)            
    jal     func_8008D6D0              
    or      a1, s1, $zero              # a1 = 00000000
    lbu     t1, 0x0140(s0)             # 00000140
    bne     t1, $zero, lbl_80A3F5E4    
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x007C             # a3 = 0600007C
    addiu   a2, a2, 0x29C0             # a2 = 060029C0
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x007C             # a1 = 0600007C
    lw      a0, 0x004C($sp)            
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     $zero, $zero, lbl_80A3F624 
    lui     $at, 0x4402                # $at = 44020000
lbl_80A3F5E4:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0xCFE0             # a3 = 0600CFE0
    addiu   a2, a2, 0x1058             # a2 = 06011058
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCFE0             # a1 = 0600CFE0
    lw      a0, 0x004C($sp)            
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x4402                # $at = 44020000
lbl_80A3F624:
    mtc1    $at, $f6                   # $f6 = 520.00
    lui     $at, %hi(var_80A47FB8)     # $at = 80A40000
    lui     a0, 0x100A                 # a0 = 100A0000
    swc1    $f6, %lo(var_80A47FB8)($at) 
    lui     $at, 0x4343                # $at = 43430000
    mtc1    $at, $f10                  # $f10 = 195.00
    lui     $at, %hi(var_80A47FB4)     # $at = 80A40000
    ori     a0, a0, 0x00FF             # a0 = 100A00FF
    jal     func_800CAA70              
    swc1    $f10, %lo(var_80A47FB4)($at) 
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    lui     $at, %hi(var_80A47F16)     # $at = 80A40000
    sh      t3, %lo(var_80A47F16)($at) 
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    beq     $zero, $zero, lbl_80A3F8F0 
    sb      t4, %lo(var_80A44AAC)($at) 
var_80A3F668:
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    sb      t5, 0x0141(s0)             # 00000141
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    sh      t2, 0x0134($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, 0x4640                # $at = 46400000
    mtc1    $at, $f4                   # $f4 = 12288.00
    slti    $at, v0, 0x0068            
    beq     $at, $zero, lbl_80A3F6D8   
    swc1    $f4, 0x01A0(s0)            # 000001A0
    sll     t6, v0,  3                 
    addu    t6, t6, v0                 
    sll     t6, t6,  3                 
    lui     t7, %hi(var_80A4BE38)      # t7 = 80A50000
    addiu   t7, t7, %lo(var_80A4BE38)  # t7 = 80A4BE38
    addiu   t9, t6, 0xE3E4             # t9 = FFFFE3E4
    addu    t8, t9, t7                 
    lw      t3, 0x0000(t8)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sw      t3, 0x01A4(s0)             # 000001A4
    lw      t1, 0x0004(t8)             # 00000004
    lui     $at, %hi(var_80A44C78)     # $at = 80A40000
    sw      t1, 0x01A8(s0)             # 000001A8
    lw      t3, 0x0008(t8)             # 00000008
    sw      t3, 0x01AC(s0)             # 000001AC
    beq     $zero, $zero, lbl_80A3F76C 
    swc1    $f8, %lo(var_80A44C78)($at) 
lbl_80A3F6D8:
    slti    $at, v0, 0x006C            
    beq     $at, $zero, lbl_80A3F728   
    sll     t4, v0,  3                 
    addu    t4, t4, v0                 
    sll     t4, t4,  3                 
    lui     t2, %hi(var_80A4BE38)      # t2 = 80A50000
    addiu   t2, t2, %lo(var_80A4BE38)  # t2 = 80A4BE38
    addiu   t5, t4, 0xE864             # t5 = FFFFE867
    addu    t6, t5, t2                 
    lw      t7, 0x0000(t6)             # 00000000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    sw      t7, 0x01A4(s0)             # 000001A4
    lw      t9, 0x0004(t6)             # 00000004
    lui     $at, %hi(var_80A44C78)     # $at = 80A40000
    sw      t9, 0x01A8(s0)             # 000001A8
    lw      t7, 0x0008(t6)             # 00000008
    sw      t7, 0x01AC(s0)             # 000001AC
    beq     $zero, $zero, lbl_80A3F76C 
    swc1    $f6, %lo(var_80A44C78)($at) 
lbl_80A3F728:
    sll     t8, v0,  3                 
    addu    t8, t8, v0                 
    sll     t8, t8,  3                 
    lui     t3, %hi(var_80A4BE38)      # t3 = 80A50000
    addiu   t3, t3, %lo(var_80A4BE38)  # t3 = 80A4BE38
    addiu   t1, t8, 0xECE4             # t1 = FFFFECE4
    addu    t4, t1, t3                 
    lw      t2, 0x0000(t4)             # 00000003
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    sw      t2, 0x01A4(s0)             # 000001A4
    lw      t5, 0x0004(t4)             # 00000007
    lui     $at, %hi(var_80A44C78)     # $at = 80A40000
    sw      t5, 0x01A8(s0)             # 000001A8
    lw      t2, 0x0008(t4)             # 0000000B
    sw      t2, 0x01AC(s0)             # 000001AC
    swc1    $f10, %lo(var_80A44C78)($at) 
lbl_80A3F76C:
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f4, 0x0124($sp)           
    c.lt.s  $f4, $f8                   
    nop
    bc1fl   lbl_80A3F888               
    lh      t5, 0x0170(s0)             # 00000170
    lw      a0, 0x0040($sp)            
    addiu   a1, $zero, 0x4E20          # a1 = 00004E20
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lh      t6, 0x016E(s0)             # 0000016E
    bne     t6, $zero, lbl_80A3F884    
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_80A3F884    
    lui     $at, %hi(var_80A457B0)     # $at = 80A40000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A457B0)($at) 
    cfc1    t9, $f31                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    ctc1    a1, $f31                   
    or      a0, s0, $zero              # a0 = 00000000
    cvt.w.s $f6, $f0                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_80A3F844    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f0, $f6              
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80A3F83C    
    nop
    mfc1    a1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A3F854 
    or      a1, a1, $at                # a1 = 80000000
lbl_80A3F83C:
    beq     $zero, $zero, lbl_80A3F854 
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_80A3F844:
    mfc1    a1, $f6                    
    nop
    bltz    a1, lbl_80A3F83C           
    nop
lbl_80A3F854:
    ctc1    t9, $f31                   
    jal     func_80A3BA68              
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    mfc1    t3, $f10                   
    nop
    addiu   t4, t3, 0x0014             # t4 = 00000014
    sh      t4, 0x016E(s0)             # 0000016E
lbl_80A3F884:
    lh      t5, 0x0170(s0)             # 00000170
lbl_80A3F888:
    bne     t5, $zero, lbl_80A3F89C    
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    sh      v0, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A3F8F0 
    sh      v0, 0x014A(s0)             # 0000014A
lbl_80A3F89C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B6C8              
    addiu   a1, s1, 0x0014             # a1 = 00000014
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f6, 0x0118($sp)           
    lwc1    $f4, 0x0090(s0)            # 00000090
    mul.s   $f10, $f8, $f6             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80A3F8F4               
    lh      a0, 0x014C(s0)             # 0000014C
    sh      $zero, 0x0148(s0)          # 00000148
    lh      t2, 0x0148(s0)             # 00000148
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   t6, $zero, 0x01F4          # t6 = 000001F4
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    sh      t6, 0x0194(s0)             # 00000194
    sh      t9, 0x0192(s0)             # 00000192
    sh      v0, 0x016C(s0)             # 0000016C
    sh      t2, 0x014A(s0)             # 0000014A
lbl_80A3F8F0:
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80A3F8F4:
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A457B4)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A457B4)($at) 
    lui     $at, %hi(var_80A457B8)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A457B8)($at) 
    mul.s   $f6, $f0, $f8              
    addiu   a0, s0, 0x0162             # a0 = 00000162
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    add.s   $f10, $f6, $f4             
    trunc.w.s $f8, $f10                  
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lh      t8, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t8, $at, lbl_80A40134      
    lbu     v0, 0x01C2(s0)             # 000001C2
    lw      t1, 0x07C0(s1)             # 000007C0
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      t3, 0x0028(t1)             # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_80A3F9E0               
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    lui     $at, %hi(var_80A457BC)     # $at = 80A40000
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    swc1    $f8, 0x0180(s0)            # 00000180
    lwc1    $f6, %lo(var_80A457BC)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064624              
    swc1    $f6, 0x0184(s0)            # 00000184
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t9, $zero, 0x2000          # t9 = 00002000
    addiu   t7, $zero, 0x2000          # t7 = 00002000
    sh      t6, 0x00F4($sp)            
    sh      t2, 0x00F0($sp)            
    sh      t5, 0x00FA($sp)            
    sh      t7, 0x00F2($sp)            
    sh      t9, 0x00EE($sp)            
    lwc1    $f4, 0x0174(s0)            # 00000174
    sh      $zero, 0x016E(s0)          # 0000016E
    sub.s   $f10, $f4, $f20            
    beq     $zero, $zero, lbl_80A3FB38 
    swc1    $f10, 0x0174(s0)           # 00000174
lbl_80A3F9E0:
    mfc1    a1, $f20                   
    addiu   a0, s0, 0x0174             # a0 = 00000174
    jal     func_800642F0              
    lui     a2, 0x4000                 # a2 = 40000000
    lh      v1, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v1, $at, lbl_80A3FA14      
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    beq     v1, $at, lbl_80A3FA14      
    addiu   $at, $zero, 0xFFE7         # $at = FFFFFFE7
    beql    v1, $at, lbl_80A3FA18      
    sh      $zero, 0x015A(s0)          # 0000015A
    sh      $zero, 0x0156(s0)          # 00000156
lbl_80A3FA14:
    sh      $zero, 0x015A(s0)          # 0000015A
lbl_80A3FA18:
    lh      t8, 0x015A(s0)             # 0000015A
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sh      t8, 0x0158(s0)             # 00000158
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    addiu   t5, $zero, 0x2000          # t5 = 00002000
    addiu   t2, $zero, 0x2000          # t2 = 00002000
    sh      t4, 0x00F4($sp)            
    sh      t3, 0x00F0($sp)            
    sh      t1, 0x00FA($sp)            
    sh      t2, 0x00F2($sp)            
    sh      t5, 0x00EE($sp)            
    lwc1    $f8, 0x01A0(s0)            # 000001A0
    lh      a2, 0x0134($sp)            
    lh      a1, 0x00FC($sp)            
    trunc.w.s $f6, $f8                   
    addiu   a0, s0, 0x0032             # a0 = 00000032
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    jal     func_80A34708              
    sra     a3, a3, 16                 
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    cvt.s.w $f10, $f4                  
    lui     $at, 0x3F00                # $at = 3F000000
    addiu   a0, s0, 0x0030             # a0 = 00000030
    lh      a1, 0x00FE($sp)            
    lh      a2, 0x0134($sp)            
    mul.s   $f6, $f10, $f8             
    mtc1    $at, $f8                   # $f8 = 0.50
    trunc.w.s $f4, $f6                   
    mfc1    t7, $f4                    
    nop
    sh      t7, 0x00F6($sp)            
    lwc1    $f10, 0x01A0(s0)           # 000001A0
    mul.s   $f6, $f10, $f8             
    trunc.w.s $f4, $f6                   
    mfc1    a3, $f4                    
    nop
    sll     a3, a3, 16                 
    jal     func_80064624              
    sra     a3, a3, 16                 
    lh      a1, 0x00F6($sp)            
    slti    $at, a1, 0x1F41            
    bnel    $at, $zero, lbl_80A3FAE4   
    slti    $at, a1, 0xE0C0            
    beq     $zero, $zero, lbl_80A3FAF0 
    addiu   a1, $zero, 0x1F40          # a1 = 00001F40
    slti    $at, a1, 0xE0C0            
lbl_80A3FAE4:
    beq     $at, $zero, lbl_80A3FAF0   
    nop
    addiu   a1, $zero, 0xE0C0          # a1 = FFFFE0C0
lbl_80A3FAF0:
    lui     $at, %hi(var_80A457C0)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A457C0)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.le.s  $f8, $f10                  
    nop
    bc1f    lbl_80A3FB20               
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x4E20          # a3 = 00004E20
    beq     $zero, $zero, lbl_80A3FB30 
    nop
lbl_80A3FB20:
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624              
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
lbl_80A3FB30:
    jal     func_80021248              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A3FB38:
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lwc1    $f6, 0x0174(s0)            # 00000174
    lwc1    $f8, 0x0028(s0)            # 00000028
    lbu     v0, 0x0142(s0)             # 00000142
    mul.s   $f10, $f6, $f4             
    add.s   $f6, $f8, $f10             
    beq     v0, $zero, lbl_80A3FBC4    
    swc1    $f6, 0x0028(s0)            # 00000028
    lbu     t4, 0x0146(s0)             # 00000146
    lh      t1, 0x0144(s0)             # 00000144
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x0142(s0)             # 00000142
    beq     t4, $zero, lbl_80A3FB90    
    sh      t1, 0x0158(s0)             # 00000158
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    addiu   t2, $zero, 0x4000          # t2 = 00004000
    sh      t5, 0x00F0($sp)            
    beq     $zero, $zero, lbl_80A3FBA0 
    sh      t2, 0x00EE($sp)            
lbl_80A3FB90:
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t9, $zero, 0x0800          # t9 = 00000800
    sh      t6, 0x00F0($sp)            
    sh      t9, 0x00EE($sp)            
lbl_80A3FBA0:
    lh      t7, 0x00B4(s0)             # 000000B4
    addiu   t8, $zero, 0xFB00          # t8 = FFFFFB00
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    subu    t1, t8, t7                 
    sh      t1, 0x0156(s0)             # 00000156
    addiu   t4, $zero, 0x4000          # t4 = 00004000
    sh      t3, 0x00F4($sp)            
    beq     $zero, $zero, lbl_80A3FBC8 
    sh      t4, 0x00F2($sp)            
lbl_80A3FBC4:
    sb      $zero, 0x0146(s0)          # 00000146
lbl_80A3FBC8:
    addiu   a0, s0, 0x0150             # a0 = 00000150
    lh      a1, 0x0156(s0)             # 00000156
    lh      a2, 0x00F4($sp)            
    jal     func_80064624              
    lh      a3, 0x00F2($sp)            
    addiu   a0, s0, 0x0152             # a0 = 00000152
    lh      a1, 0x0158(s0)             # 00000158
    lh      a2, 0x00F0($sp)            
    jal     func_80064624              
    lh      a3, 0x00EE($sp)            
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      a1, 0x015A(s0)             # 0000015A
    lh      a2, 0x00FA($sp)            
    jal     func_80064624              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f8, 0x0068(s0)            # 00000068
    c.le.s  $f8, $f4                   
    nop
    bc1f    lbl_80A3FC4C               
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624              
    lh      a3, 0x0168(s0)             # 00000168
    addiu   a0, s0, 0x0168             # a0 = 00000168
    addiu   a1, $zero, 0x0500          # a1 = 00000500
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624              
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    beq     $zero, $zero, lbl_80A3FC74 
    lh      v1, 0x0148(s0)             # 00000148
lbl_80A3FC4C:
    lh      a1, 0x0030(s0)             # 00000030
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064624              
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    sh      $zero, 0x0168(s0)          # 00000168
    lh      v1, 0x0148(s0)             # 00000148
lbl_80A3FC74:
    lh      t5, 0x0032(s0)             # 00000032
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v1, $at, lbl_80A3FD88      
    sh      t5, 0x00B6(s0)             # 000000B6
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    beq     v1, $at, lbl_80A3FD88      
    addiu   $at, $zero, 0xFFE7         # $at = FFFFFFE7
    beql    v1, $at, lbl_80A3FD8C      
    lw      t4, 0x07C0(s1)             # 000007C0
    lw      t2, 0x07C0(s1)             # 000007C0
    lwc1    $f0, 0x0028(s0)            # 00000028
    lw      t6, 0x0028(t2)             # 00000028
    lh      t9, 0x0002(t6)             # 00000002
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f14, $f10                 
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_80A3FD20               
    c.lt.s  $f0, $f14                  
    lwc1    $f6, 0x0104(s0)            # 00000104
    c.le.s  $f6, $f14                  
    nop
    bc1f    lbl_80A3FD1C               
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3BA68              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f12                  # $f12 = 32768.00
    swc1    $f4, 0x0174(s0)            # 00000174
    jal     func_80026D90              
    swc1    $f8, 0x0060(s0)            # 00000060
    trunc.w.s $f10, $f0                  
    mfc1    t7, $f10                   
    beq     $zero, $zero, lbl_80A3FD88 
    sh      t7, 0x015A(s0)             # 0000015A
lbl_80A3FD1C:
    c.lt.s  $f0, $f14                  
lbl_80A3FD20:
    nop
    bc1fl   lbl_80A3FD8C               
    lw      t4, 0x07C0(s1)             # 000007C0
    lwc1    $f6, 0x0104(s0)            # 00000104
    c.le.s  $f14, $f6                  
    nop
    bc1f    lbl_80A3FD88               
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f0                   # $f0 = -5.00
    lwc1    $f4, 0x0174(s0)            # 00000174
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A3FD60               
    addiu   t1, $zero, 0xF060          # t1 = FFFFF060
    swc1    $f0, 0x0174(s0)            # 00000174
    addiu   t1, $zero, 0xF060          # t1 = FFFFF060
lbl_80A3FD60:
    sh      t1, 0x0030(s0)             # 00000030
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A3B21C              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x01C2(s0)             # 000001C2
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3BA68              
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80A3FD88:
    lw      t4, 0x07C0(s1)             # 000007C0
lbl_80A3FD8C:
    lwc1    $f0, 0x0028(s0)            # 00000028
    lw      t5, 0x0028(t4)             # 00000028
    lh      t2, 0x0002(t5)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f14, $f8                  
    c.lt.s  $f0, $f14                  
    nop
    bc1f    lbl_80A3FE60               
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    sub.s   $f6, $f14, $f10            
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A3FE64               
    mtc1    $zero, $f8                 # $f8 = 0.00
    lh      t6, 0x014C(s0)             # 0000014C
    andi    t9, t6, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_80A3FE64    
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    c.lt.s  $f4, $f8                   
    nop
    bc1f    lbl_80A3FE60               
    addiu   a2, $sp, 0x0084            # a2 = FFFFFF4C
    lw      t7, 0x0024(s0)             # 00000024
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s1                 
    sw      t7, 0x0000(a2)             # FFFFFF4C
    lw      t8, 0x0028(s0)             # 00000028
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    sw      t8, 0x0004(a2)             # FFFFFF50
    lw      t7, 0x002C(s0)             # 0000002C
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    addiu   t2, $zero, 0x005A          # t2 = 0000005A
    sw      t7, 0x0008(a2)             # FFFFFF54
    lw      t1, 0x07C0(s1)             # 000007C0
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lui     a3, 0x42A0                 # a3 = 42A00000
    lw      t3, 0x0028(t1)             # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    swc1    $f6, 0x0088($sp)           
    lw      a1, 0x1E10(a1)             # 00011E10
    sw      t2, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    jal     func_80A347B4              
    swc1    $f4, 0x0010($sp)           
lbl_80A3FE60:
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80A3FE64:
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.lt.s  $f8, $f10                  
    nop
    bc1tl   lbl_80A3FE8C               
    lwc1    $f6, 0x0060(s0)            # 00000060
    lh      t6, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t6, $at, lbl_80A40134      
    lbu     v0, 0x01C2(s0)             # 000001C2
    lwc1    $f6, 0x0060(s0)            # 00000060
lbl_80A3FE8C:
    lui     $at, %hi(var_80A457C4)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A457C4)($at) 
    swc1    $f6, 0x0080($sp)           
    lwc1    $f4, 0x019C(s0)            # 0000019C
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0xBF80                # $at = BF800000
    mul.s   $f0, $f4, $f8              
    lwc1    $f4, 0x0104(s0)            # 00000104
    addiu   t9, $zero, 0x0045          # t9 = 00000045
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41F0                 # a2 = 41F00000
    lui     a3, 0x41F0                 # a3 = 41F00000
    sub.s   $f6, $f10, $f0             
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     $at, 0x42C8                # $at = 42C80000
    sub.s   $f8, $f4, $f0              
    swc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 100.00
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f8, 0x0104(s0)            # 00000104
    swc1    $f0, 0x00D8($sp)           
    sw      t9, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f6, 0x0010($sp)           
    lwc1    $f0, 0x00D8($sp)           
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0104(s0)           # 00000104
    lhu     v0, 0x0088(s0)             # 00000088
    add.s   $f8, $f4, $f0              
    andi    t8, v0, 0x0008             # t8 = 00000000
    add.s   $f6, $f10, $f0             
    swc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f6, 0x0104(s0)            # 00000104
    lwc1    $f4, 0x0080($sp)           
    beq     t8, $zero, lbl_80A3FF2C    
    swc1    $f4, 0x0060(s0)            # 00000060
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0190(s0)             # 00000190
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80A3FF2C:
    andi    t1, v0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80A40134    
    lbu     v0, 0x01C2(s0)             # 000001C2
    lw      t3, 0x07C0(s1)             # 000007C0
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      t4, 0x0028(t3)             # 00000028
    lh      t5, 0x0002(t4)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f6                  
    nop
    bc1f    lbl_80A40080               
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64              
    nop
    lui     $at, %hi(var_80A457C8)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A457C8)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f10, 0x0024(s0)           # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f0, $f4              
    mul.s   $f6, $f10, $f2             
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a1, $zero, 0x2869          # a1 = 00002869
    swc1    $f8, 0x0174(s0)            # 00000174
    mul.s   $f8, $f4, $f2              
    swc1    $f6, 0x005C(s0)            # 0000005C
    jal     func_80022FD0              
    swc1    $f8, 0x0064(s0)            # 00000064
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A3B4E4              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80A3FFE4               
    addiu   t2, $zero, 0x4000          # t2 = 00004000
    beq     $zero, $zero, lbl_80A3FFEC 
    sh      t2, 0x015A(s0)             # 0000015A
lbl_80A3FFE4:
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    sh      t6, 0x015A(s0)             # 0000015A
lbl_80A3FFEC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A4001C               
    lui     $at, 0x4200                # $at = 42000000
    beq     $zero, $zero, lbl_80A40040 
    sh      $zero, 0x0156(s0)          # 00000156
    lui     $at, 0x4200                # $at = 42000000
lbl_80A4001C:
    mtc1    $at, $f12                  # $f12 = 32.00
    jal     func_80026D90              
    nop
    trunc.w.s $f4, $f0                   
    ori     $at, $zero, 0x8000         # $at = 00008000
    mfc1    t1, $f4                    
    nop
    addu    t3, t1, $at                
    sh      t3, 0x0156(s0)             # 00000156
lbl_80A40040:
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    jal     func_80026D90              
    nop
    trunc.w.s $f8, $f0                   
    swc1    $f20, 0x0180(s0)           # 00000180
    lui     $at, %hi(var_80A457CC)     # $at = 80A40000
    mfc1    t5, $f8                    
    nop
    sh      t5, 0x0158(s0)             # 00000158
    lwc1    $f10, %lo(var_80A457CC)($at) 
    lui     $at, %hi(var_80A457D0)     # $at = 80A40000
    swc1    $f10, 0x0184(s0)           # 00000184
    lwc1    $f6, %lo(var_80A457D0)($at) 
    beq     $zero, $zero, lbl_80A40130 
    swc1    $f6, 0x018C(s0)            # 0000018C
lbl_80A40080:
    lh      t2, 0x0148(s0)             # 00000148
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t2, $at, lbl_80A40130      
    swc1    $f4, 0x0174(s0)            # 00000174
    lh      t6, 0x014C(s0)             # 0000014C
    andi    t9, t6, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_80A40130    
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lui     $at, 0x0001                # $at = 00010000
    addu    t7, s1, $at                
    addiu   t8, s0, 0x00E4             # t8 = 000000E4
    sw      t8, 0x004C($sp)            
    jal     func_80026D90              
    sw      t7, 0x0048($sp)            
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0074($sp)          
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    add.s   $f4, $f0, $f6              
    lui     $at, %hi(var_80A457D4)     # $at = 80A40000
    lw      t1, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    swc1    $f4, 0x007C($sp)           
    lwc1    $f8, 0x0080(s0)            # 00000080
    addiu   a2, $sp, 0x0074            # a2 = FFFFFF3C
    add.s   $f6, $f8, $f10             
    lwc1    $f8, %lo(var_80A457D4)($at) 
    lui     $at, %hi(var_80A457D8)     # $at = 80A40000
    swc1    $f6, 0x0078($sp)           
    lwc1    $f4, 0x019C(s0)            # 0000019C
    lwc1    $f6, %lo(var_80A457D8)($at) 
    lw      a1, 0x1E10(t1)             # 00001E10
    mul.s   $f10, $f4, $f8             
    add.s   $f4, $f10, $f6             
    mfc1    a3, $f4                    
    jal     func_80A34A54              
    nop
lbl_80A40130:
    lbu     v0, 0x01C2(s0)             # 000001C2
lbl_80A40134:
    beq     v0, $zero, lbl_80A40208    
    lui     $at, %hi(var_80A457DC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A457DC)($at) 
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mul.s   $f6, $f8, $f10             
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x01C2(s0)             # 000001C2
    lui     $at, 0x0001                # $at = 00010000
    addu    t5, s1, $at                
    addiu   t4, s0, 0x00E4             # t4 = 000000E4
    sw      t4, 0x004C($sp)            
    add.s   $f12, $f6, $f4             
    sw      t5, 0x0048($sp)            
    sh      $zero, 0x0072($sp)         
    swc1    $f12, 0x0060($sp)          
lbl_80A40178:
    jal     func_80026D90              
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f12, 0x0060($sp)          
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0064($sp)          
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f12, 0x0060($sp)          
    add.s   $f4, $f0, $f6              
    jal     func_80026D90              
    swc1    $f4, 0x0068($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_80A457E0)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A457E0)($at) 
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x006C($sp)          
    lui     $at, %hi(var_80A457E4)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A457E4)($at) 
    lw      t2, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    add.s   $f4, $f0, $f6              
    lw      a1, 0x1E10(t2)             # 00001E10
    sw      $zero, 0x0010($sp)         
    addiu   a2, $sp, 0x0064            # a2 = FFFFFF2C
    mfc1    a3, $f4                    
    jal     func_80A34B8C              
    nop
    lh      v0, 0x0072($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0002            
    bne     $at, $zero, lbl_80A40178   
    sh      v0, 0x0072($sp)            
lbl_80A40208:
    lw      $ra, 0x0034($sp)           
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0138           # $sp = 00000000


func_80A40220:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a1, $at, lbl_80A40254      
    lw      v0, 0x0010($sp)            
    lw      t7, 0x0014($sp)            
    lh      t6, 0x0004(v0)             # 00000004
    lh      t8, 0x0160(t7)             # 00000160
    subu    t9, t6, t8                 
    addiu   t0, t9, 0x2AF8             # t0 = 00002AF8
    beq     $zero, $zero, lbl_80A40334 
    sh      t0, 0x0004(v0)             # 00000004
lbl_80A40254:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_80A4026C      
    lw      v0, 0x0010($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    a1, $at, lbl_80A40288      
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80A4026C:
    lw      t2, 0x0014($sp)            
    lh      t1, 0x0002(v0)             # 00000002
    lh      t3, 0x015C(t2)             # 0000015C
    addu    t4, t1, t3                 
    beq     $zero, $zero, lbl_80A40334 
    sh      t4, 0x0002(v0)             # 00000002
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80A40288:
    bne     a1, $at, lbl_80A402A8      
    lw      v0, 0x0010($sp)            
    lw      t7, 0x0014($sp)            
    lh      t5, 0x0002(v0)             # 00000002
    lh      t6, 0x0166(t7)             # 00000166
    addu    t8, t5, t6                 
    beq     $zero, $zero, lbl_80A40334 
    sh      t8, 0x0002(v0)             # 00000002
lbl_80A402A8:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_80A402CC      
    lw      v0, 0x0010($sp)            
    lw      t0, 0x0014($sp)            
    lh      t9, 0x0002(v0)             # 00000002
    lh      t2, 0x0162(t0)             # 00002C5A
    subu    t1, t9, t2                 
    beq     $zero, $zero, lbl_80A40334 
    sh      t1, 0x0002(v0)             # 00000002
lbl_80A402CC:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80A402F0      
    lw      v0, 0x0010($sp)            
    lw      t4, 0x0014($sp)            
    lh      t3, 0x0002(v0)             # 00000002
    lh      t7, 0x0162(t4)             # 00000162
    addu    t5, t3, t7                 
    beq     $zero, $zero, lbl_80A40334 
    sh      t5, 0x0002(v0)             # 00000002
lbl_80A402F0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80A40314      
    lw      v0, 0x0010($sp)            
    lw      t8, 0x0014($sp)            
    lh      t6, 0x0002(v0)             # 00000002
    lh      t0, 0x0164(t8)             # 00000164
    addu    t9, t6, t0                 
    beq     $zero, $zero, lbl_80A40334 
    sh      t9, 0x0002(v0)             # 00000002
lbl_80A40314:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80A40334      
    lw      v0, 0x0010($sp)            
    lw      t1, 0x0014($sp)            
    lh      t2, 0x0002(v0)             # 00000002
    lh      t4, 0x0164(t1)             # 00000164
    subu    t3, t2, t4                 
    sh      t3, 0x0002(v0)             # 00000002
lbl_80A40334:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80A40340:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a1, $at, lbl_80A40370      
    lui     a0, %hi(var_80A44A78)      # a0 = 80A40000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80A44A78)  # a0 = 80A44A78
    jal     func_800AB958              
    addiu   a1, a1, 0x01B0             # a1 = 000001B0
lbl_80A40370:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A40380:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_80A403B0      
    lw      v0, 0x0010($sp)            
    lw      t7, 0x0014($sp)            
    lh      t6, 0x0002(v0)             # 00000002
    lh      t8, 0x01BC(t7)             # 000001BC
    addu    t9, t6, t8                 
    beq     $zero, $zero, lbl_80A403F4 
    sh      t9, 0x0002(v0)             # 00000002
lbl_80A403B0:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_80A403D4      
    lw      v0, 0x0010($sp)            
    lw      t1, 0x0014($sp)            
    lh      t0, 0x0002(v0)             # 00000002
    lh      t2, 0x01BE(t1)             # 000001BE
    addu    t3, t0, t2                 
    beq     $zero, $zero, lbl_80A403F4 
    sh      t3, 0x0002(v0)             # 00000002
lbl_80A403D4:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80A403F4      
    lw      v0, 0x0010($sp)            
    lw      t5, 0x0014($sp)            
    lh      t4, 0x0002(v0)             # 00000002
    lh      t7, 0x01C0(t5)             # 000001C0
    addu    t6, t4, t7                 
    sh      t6, 0x0002(v0)             # 00000002
lbl_80A403F4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80A40400:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a1, $at, lbl_80A40430      
    lui     a0, %hi(var_80A4538C)      # a0 = 80A40000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80A4538C)  # a0 = 80A4538C
    jal     func_800AB958              
    addiu   a1, a1, 0x01B0             # a1 = 000001B0
lbl_80A40430:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A40440:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0028(s0)           # 00000028
    lw      a2, 0x002C(s0)             # 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t7, 0x0152(s0)             # 00000152
    lh      t8, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    addu    t9, t7, t8                 
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A457E8)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A457E8)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lh      t0, 0x0150(s0)             # 00000150
    lh      t1, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    addu    t2, t0, t1                 
    mtc1    t2, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80A457EC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A457EC)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AA9E0              
    nop
    lh      t3, 0x0154(s0)             # 00000154
    lh      t4, 0x00B8(s0)             # 000000B8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    addu    t5, t3, t4                 
    mtc1    t5, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80A457F0)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A457F0)($at) 
    cvt.s.w $f18, $f16                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t6, 0x0140(s0)             # 00000140
    lui     a2, 0x453B                 # a2 = 453B0000
    ori     a2, a2, 0x8000             # a2 = 453B8000
    bnel    t6, $zero, lbl_80A405EC    
    mtc1    $zero, $f12                # $f12 = 0.00
    lh      t7, 0x015C(s0)             # 0000015C
    lui     $at, %hi(var_80A457F4)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A457F4)($at) 
    mtc1    t7, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A457F8)     # $at = 80A40000
    lwc1    $f6, %lo(var_80A457F8)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f4, $f16, $f18            
    jal     func_800AAB94              
    sub.s   $f12, $f4, $f6             
    lh      t8, 0x015C(s0)             # 0000015C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80A457FC)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A457FC)($at) 
    cvt.s.w $f10, $f8                  
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12                 
    mul.s   $f18, $f10, $f16           
    nop
    mul.s   $f6, $f18, $f4             
    mfc1    a2, $f6                    
    jal     func_800AA7F4              
    nop
    lw      a1, 0x01CC(s0)             # 000001CC
    lw      a2, 0x01E8(s0)             # 000001E8
    lbu     a3, 0x01CA(s0)             # 000001CA
    lui     t9, %hi(func_80A40220)     # t9 = 80A40000
    lui     t0, %hi(func_80A40340)     # t0 = 80A40000
    addiu   t0, t0, %lo(func_80A40340) # t0 = 80A40340
    addiu   t9, t9, %lo(func_80A40220) # t9 = 80A40220
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0034($sp)            
    beq     $zero, $zero, lbl_80A40678 
    lw      $ra, 0x002C($sp)           
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_80A405EC:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    lh      t1, 0x015C(s0)             # 0000015C
    lui     $at, %hi(var_80A45800)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A45800)($at) 
    mtc1    t1, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0xC53B                 # a2 = C53B0000
    ori     a2, a2, 0x8000             # a2 = C53B8000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_80A45804)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45804)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a1, 0x01CC(s0)             # 000001CC
    lw      a2, 0x01E8(s0)             # 000001E8
    lbu     a3, 0x01CA(s0)             # 000001CA
    lui     t2, %hi(func_80A40380)     # t2 = 80A40000
    lui     t3, %hi(func_80A40400)     # t3 = 80A40000
    addiu   t3, t3, %lo(func_80A40400) # t3 = 80A40400
    addiu   t2, t2, %lo(func_80A40380) # t2 = 80A40380
    sw      t2, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0034($sp)            
    lw      $ra, 0x002C($sp)           
lbl_80A40678:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A40688:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x0008(a1)           # 00000008
    sub.s   $f14, $f4, $f6             
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    sub.s   $f12, $f8, $f10            
    mul.s   $f16, $f14, $f14           
    nop
    mul.s   $f18, $f12, $f12           
    add.s   $f0, $f16, $f18            
    sqrt.s  $f2, $f0                   
    c.le.s  $f2, $f4                   
    nop
    bc1f    lbl_80A40724               
    nop
    sw      a0, 0x0028($sp)            
    jal     func_800AA670              
    swc1    $f2, 0x001C($sp)           
    lui     $at, %hi(var_80A45808)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45808)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    lw      v0, 0x0028($sp)            
    lwc1    $f2, 0x001C($sp)           
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, %hi(var_80A4580C)     # $at = 80A40000
    swc1    $f0, 0x0010(v0)            # 00000010
    sub.s   $f8, $f6, $f2              
    lwc1    $f10, %lo(var_80A4580C)($at) 
    mfc1    a2, $f12                   
    mfc1    a3, $f12                   
    mul.s   $f16, $f8, $f10            
    addiu   a0, v0, 0x000C             # a0 = 0000000C
    mfc1    a1, $f16                   
    jal     func_80064280              
    nop
lbl_80A40724:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A40734:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    lw      t6, 0x0028($sp)            
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0008(a1)           # 00000008
    lwc1    $f4, 0x0000(t6)            # 00000000
    lwc1    $f8, 0x0008(t6)            # 00000008
    lui     $at, 0x4220                # $at = 42200000
    sub.s   $f14, $f4, $f6             
    mtc1    $at, $f4                   # $f4 = 40.00
    sub.s   $f12, $f8, $f10            
    mul.s   $f16, $f14, $f14           
    nop
    mul.s   $f18, $f12, $f12           
    add.s   $f0, $f16, $f18            
    sqrt.s  $f0, $f0                   
    c.le.s  $f0, $f4                   
    swc1    $f0, 0x001C($sp)           
    bc1f    lbl_80A407B0               
    nop
    jal     func_800AA4F8              
    nop
    lw      a0, 0x0028($sp)            
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x0300          # a3 = 00000300
    jal     func_80064624              
    addiu   a0, a0, 0x0028             # a0 = 00000028
lbl_80A407B0:
    lbu     t7, 0x0033($sp)            
    lui     $at, 0x4270                # $at = 42700000
    lwc1    $f8, 0x001C($sp)           
    beql    t7, $zero, lbl_80A40810    
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f6                   # $f6 = 60.00
    lw      a0, 0x0028($sp)            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    c.le.s  $f8, $f6                   
    lui     $at, 0x3F80                # $at = 3F800000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    bc1f    lbl_80A4080C               
    addiu   a0, a0, 0x002C             # a0 = 0000002C
    mtc1    $at, $f0                   # $f0 = 1.00
    slti    $at, t7, 0x0015            
    bne     $at, $zero, lbl_80A40800   
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f0                   # $f0 = 1.50
    nop
lbl_80A40800:
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
lbl_80A4080C:
    lw      $ra, 0x0014($sp)           
lbl_80A40810:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A4081C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s3, 0x0030($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s5, 0x0038($sp)            
    sw      s4, 0x0034($sp)            
    sw      s2, 0x002C($sp)            
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    lui     $at, %hi(var_80A45810)     # $at = 80A40000
    lwc1    $f22, %lo(var_80A45810)($at) 
    lui     $at, 0x42C8                # $at = 42C80000
    lui     s1, %hi(var_80A49D68)      # s1 = 80A50000
    mtc1    $at, $f20                  # $f20 = 100.00
    addiu   s1, s1, %lo(var_80A49D68)  # s1 = 80A49D68
    lw      s5, 0x1C44(s3)             # 00001C44
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s2, $zero, 0x00FE          # s2 = 000000FE
lbl_80A4086C:
    lbu     t6, 0x0030(s1)             # 80A49D98
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    beq     t6, $zero, lbl_80A40A68    
    addu    a0, s3, $at                
    lh      t7, 0x0032(s1)             # 80A49D9A
    lui     a3, %hi(var_80A49D14)      # a3 = 80A50000
    sb      $zero, 0x0034(s1)          # 80A49D9C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0032(s1)             # 80A49D9A
    addiu   a3, a3, %lo(var_80A49D14)  # a3 = 80A49D14
    or      a1, s1, $zero              # a1 = 80A49D68
    jal     func_8008EC20              
    addiu   a2, s1, 0x0018             # a2 = 80A49D80
    lwc1    $f2, 0x0020(s1)            # 80A49D88
    lwc1    $f4, 0x0038(s1)            # 80A49DA0
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_80A408F0               
    c.lt.s  $f2, $f8                   
    lwc1    $f0, 0x0018(s1)            # 80A49D80
    add.s   $f6, $f20, $f2             
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A408F0               
    c.lt.s  $f2, $f8                   
    sb      t9, 0x0034(s1)             # 80A49D9C
    lwc1    $f2, 0x0020(s1)            # 80A49D88
    c.lt.s  $f2, $f8                   
lbl_80A408F0:
    nop
    bc1fl   lbl_80A40A6C               
    addiu   s4, s4, 0x0001             # s4 = 00000001
    lwc1    $f0, 0x0018(s1)            # 80A49D80
    add.s   $f10, $f20, $f2            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A40A6C               
    addiu   s4, s4, 0x0001             # s4 = 00000002
    lbu     v0, 0x0030(s1)             # 80A49D98
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 80A49D68
    bnel    v0, $at, lbl_80A40998      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_80A40688              
    addiu   a1, s5, 0x0024             # a1 = 00000024
    lw      s0, 0x1C54(s3)             # 00001C54
    beql    s0, $zero, lbl_80A40980    
    mfc1    a1, $f22                   
    lh      t0, 0x0000(s0)             # 00000000
lbl_80A40944:
    bne     s2, t0, lbl_80A40960       
    nop
    lh      t1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 80A49D68
    slti    $at, t1, 0x0064            
    beq     $at, $zero, lbl_80A40968   
    nop
lbl_80A40960:
    beq     $zero, $zero, lbl_80A40974 
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A40968:
    jal     func_80A40688              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A40974:
    bnel    s0, $zero, lbl_80A40944    
    lh      t0, 0x0000(s0)             # 00000000
    mfc1    a1, $f22                   
lbl_80A40980:
    mfc1    a2, $f22                   
    jal     func_800642F0              
    addiu   a0, s1, 0x000C             # a0 = 80A49D74
    beq     $zero, $zero, lbl_80A40A6C 
    addiu   s4, s4, 0x0001             # s4 = 00000003
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A40998:
    bne     v0, $at, lbl_80A40A68      
    or      a0, s1, $zero              # a0 = 80A49D68
    addiu   a1, s5, 0x0024             # a1 = 00000024
    jal     func_80A40734              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      s0, 0x1C54(s3)             # 00001C54
    beql    s0, $zero, lbl_80A409FC    
    addiu   a0, s1, 0x0028             # a0 = 80A49D90
    lh      t2, 0x0000(s0)             # 00000000
lbl_80A409BC:
    bne     s2, t2, lbl_80A409DC       
    nop
    lh      t3, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 80A49D68
    addiu   a1, s0, 0x0024             # a1 = 00000024
    slti    $at, t3, 0x0064            
    beq     $at, $zero, lbl_80A409E4   
    nop
lbl_80A409DC:
    beq     $zero, $zero, lbl_80A409F0 
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A409E4:
    jal     func_80A40734              
    lbu     a2, 0x0141(s0)             # 00000141
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A409F0:
    bnel    s0, $zero, lbl_80A409BC    
    lh      t2, 0x0000(s0)             # 00000000
    addiu   a0, s1, 0x0028             # a0 = 80A49D90
lbl_80A409FC:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064624              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lh      a0, 0x0032(s1)             # 80A49D9A
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lw      t4, 0x07C0(s3)             # 000007C0
    lwc1    $f8, 0x002C(s1)            # 80A49D94
    lui     $at, 0x4000                # $at = 40000000
    lw      t5, 0x0028(t4)             # 00000028
    mul.s   $f10, $f0, $f8             
    mtc1    $at, $f4                   # $f4 = 2.00
    lh      t6, 0x0002(t5)             # 00000002
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    mtc1    t6, $f16                   # $f16 = 0.00
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    cvt.s.w $f18, $f16                 
    addiu   a0, s1, 0x002C             # a0 = 80A49D94
    add.s   $f6, $f18, $f4             
    add.s   $f16, $f10, $f6            
    jal     func_800642F0              
    swc1    $f16, 0x0004(s1)           # 80A49D6C
lbl_80A40A68:
    addiu   s4, s4, 0x0001             # s4 = 00000004
lbl_80A40A6C:
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x008C            
    bne     $at, $zero, lbl_80A4086C   
    addiu   s1, s1, 0x003C             # s1 = 80A49DA4
    lui     t7, %hi(var_80A49D34)      # t7 = 80A50000
    lh      t7, %lo(var_80A49D34)(t7)  
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t7, $zero, lbl_80A40AAC    
    or      a0, s3, $zero              # a0 = 00000000
    lui     a2, %hi(var_80A47EE0)      # a2 = 80A40000
    lw      a2, %lo(var_80A47EE0)(a2)  
    addu    a1, s3, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, a2, 0x0220             # a2 = 80A40220
lbl_80A40AAC:
    lw      $ra, 0x003C($sp)           
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    lw      s4, 0x0034($sp)            
    lw      s5, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A40AD8:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0048($sp)            
    lui     s1, %hi(var_80A49D68)      # s1 = 80A50000
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s1, s1, %lo(var_80A49D68)  # s1 = 80A49D68
    lw      t6, 0x0048($sp)            
    jal     func_800AA6EC              
    lw      s2, 0x0000(t6)             # 00000000
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
lbl_80A40B34:
    lbu     t7, 0x0030(s1)             # 80A49D98
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_80A40C04      
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_80A40B70    
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x4030             # t9 = 06014030
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_80A40B70:
    lbu     t0, 0x0034(s1)             # 80A49D9C
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0x40B0             # s4 = 060140B0
    beql    t0, $zero, lbl_80A40C04    
    addiu   s5, s5, 0x0001             # s5 = 00000002
    lwc1    $f12, 0x0000(s1)           # 80A49D68
    lwc1    $f14, 0x0004(s1)           # 80A49D6C
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 80A49D70
    lwc1    $f12, 0x0024(s1)           # 80A49D8C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lwc1    $f12, 0x0010(s1)           # 80A49D78
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x000C(s1)           # 80A49D74
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0014(s1)           # 80A49D7C
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    addiu   t1, s3, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s3)             # 00000000
    lw      t2, 0x0048($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t2)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000003
lbl_80A40C04:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x008C            
    bne     $at, $zero, lbl_80A40B34   
    addiu   s1, s1, 0x003C             # s1 = 80A49DA4
    lui     s1, %hi(var_80A49D68)      # s1 = 80A50000
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s1, s1, %lo(var_80A49D68)  # s1 = 80A49D68
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80A40C28:
    lbu     t4, 0x0030(s1)             # 80A49D98
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t4, $at, lbl_80A40CD4      
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_80A40C64    
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x3F50             # t6 = 06013F50
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s2)             # 000002C0
    sw      t6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_80A40C64:
    lbu     t7, 0x0034(s1)             # 80A49D9C
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0x3FD0             # s4 = 06013FD0
    beql    t7, $zero, lbl_80A40CD4    
    addiu   s5, s5, 0x0001             # s5 = 00000002
    lwc1    $f12, 0x0000(s1)           # 80A49D68
    lwc1    $f14, 0x0004(s1)           # 80A49D6C
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 80A49D70
    lwc1    $f12, 0x0024(s1)           # 80A49D8C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02C0(s2)             # 000002C0
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s2)             # 000002C0
    sw      s8, 0x0000(s3)             # 00000000
    lw      t9, 0x0048($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000003
lbl_80A40CD4:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x008C            
    bne     $at, $zero, lbl_80A40C28   
    addiu   s1, s1, 0x003C             # s1 = 80A49DA4
    lui     s1, %hi(var_80A49D68)      # s1 = 80A50000
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s1, s1, %lo(var_80A49D68)  # s1 = 80A49D68
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80A40CFC:
    lbu     t1, 0x0030(s1)             # 80A49D98
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t1, $at, lbl_80A40DF0      
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_80A40D38    
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0x3330             # t3 = 06013330
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_80A40D38:
    lbu     t4, 0x0034(s1)             # 80A49D9C
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0x33B0             # s4 = 060133B0
    beql    t4, $zero, lbl_80A40DF0    
    addiu   s5, s5, 0x0001             # s5 = 00000002
    lwc1    $f12, 0x0000(s1)           # 80A49D68
    lwc1    $f14, 0x0004(s1)           # 80A49D6C
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 80A49D70
    lwc1    $f12, 0x0024(s1)           # 80A49D8C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t5, 0x0028(s1)             # 80A49D90
    lui     $at, %hi(var_80A45814)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45814)($at) 
    mtc1    t5, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    lui     a2, 0x41A0                 # a2 = 41A00000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0010(s1)           # 80A49D78
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    addiu   t6, s3, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s3)             # 00000000
    lw      t7, 0x0048($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t7)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000003
lbl_80A40DF0:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x008C            
    bne     $at, $zero, lbl_80A40CFC   
    addiu   s1, s1, 0x003C             # s1 = 80A49DA4
    lui     s1, %hi(var_80A49D68)      # s1 = 80A50000
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s1, s1, %lo(var_80A49D68)  # s1 = 80A49D68
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80A40E14:
    lbu     t9, 0x0030(s1)             # 80A49D98
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t9, $at, lbl_80A40ECC      
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_80A40E50    
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x3590             # t1 = 06013590
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s2)             # 000002C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_80A40E50:
    lbu     t2, 0x0034(s1)             # 80A49D9C
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0x3610             # s4 = 06013610
    beql    t2, $zero, lbl_80A40ECC    
    addiu   s5, s5, 0x0001             # s5 = 00000002
    lwc1    $f12, 0x0000(s1)           # 80A49D68
    lwc1    $f14, 0x0004(s1)           # 80A49D6C
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 80A49D70
    lwc1    $f12, 0x0024(s1)           # 80A49D8C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lwc1    $f12, 0x0010(s1)           # 80A49D78
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02C0(s2)             # 000002C0
    addiu   t3, s3, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      s8, 0x0000(s3)             # 00000000
    lw      t4, 0x0048($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000003
lbl_80A40ECC:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x008C            
    bne     $at, $zero, lbl_80A40E14   
    addiu   s1, s1, 0x003C             # s1 = 80A49DA4
    jal     func_800AA724              
    nop
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A40F1C:
    addiu   $sp, $sp, 0xFF00           # $sp = FFFFFF00
    sw      s7, 0x0074($sp)            
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s8, 0x0078($sp)            
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lui     t6, %hi(var_80A47F84)      # t6 = 80A40000
    lb      t6, %lo(var_80A47F84)(t6)  
    sh      $zero, 0x00FE($sp)         
    lui     s0, %hi(var_80A4BE38)      # s0 = 80A50000
    lw      v0, 0x1C44(s7)             # 00001C44
    bne     t6, $zero, lbl_80A40F98    
    addiu   s0, s0, %lo(var_80A4BE38)  # s0 = 80A4BE38
    lui     t7, %hi(var_80A44A74)      # t7 = 80A40000
    lh      t7, %lo(var_80A44A74)(t7)  
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   s2, v0, 0x0024             # s2 = 00000024
    bne     t7, $at, lbl_80A40FA4      
    nop
lbl_80A40F98:
    lui     s2, %hi(var_80A47F28)      # s2 = 80A40000
    beq     $zero, $zero, lbl_80A40FA4 
    addiu   s2, s2, %lo(var_80A47F28)  # s2 = 80A47F28
lbl_80A40FA4:
    lui     s1, %hi(var_80A4CF18)      # s1 = 80A50000
    addiu   s1, s1, %lo(var_80A4CF18)  # s1 = 80A4CF18
    jal     func_800CF470              
    lwc1    $f12, 0x0000(s1)           # 80A4CF18
    lui     $at, 0x4434                # $at = 44340000
    mtc1    $at, $f26                  # $f26 = 720.00
    lui     $at, 0xC20C                # $at = C20C0000
    mtc1    $at, $f28                  # $f28 = -35.00
    mul.s   $f4, $f0, $f26             
    lwc1    $f12, 0x0000(s1)           # 80A4CF18
    swc1    $f28, 0x00B0($sp)          
    jal     func_800D2CD0              
    swc1    $f4, 0x00AC($sp)           
    mul.s   $f6, $f0, $f26             
    lwc1    $f10, 0x00AC($sp)          
    lui     $at, %hi(var_80A45818)     # $at = 80A40000
    lui     s8, %hi(var_80A44C78)      # s8 = 80A40000
    addiu   s8, s8, %lo(var_80A44C78)  # s8 = 80A44C78
    swc1    $f6, 0x00B4($sp)           
    lwc1    $f8, 0x0000(s2)            # 80A47F28
    lwc1    $f18, 0x00B4($sp)          
    lwc1    $f16, 0x0008(s2)           # 80A47F30
    sub.s   $f20, $f8, $f10            
    lwc1    $f10, %lo(var_80A45818)($at) 
    sub.s   $f22, $f16, $f18           
    mul.s   $f4, $f20, $f20            
    nop
    mul.s   $f6, $f22, $f22            
    add.s   $f8, $f4, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80A4105C               
    nop
    lui     $at, %hi(var_80A4581C)     # $at = 80A40000
    lwc1    $f18, %lo(var_80A4581C)($at) 
    lwc1    $f16, 0x0000(s1)           # 80A4CF18
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    add.s   $f4, $f16, $f18            
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    mtc1    $zero, $f30                # $f30 = 0.00
    lui     s8, %hi(var_80A44C78)      # s8 = 80A40000
    swc1    $f4, 0x0000(s1)            # 80A4CF18
    addiu   s8, s8, %lo(var_80A44C78)  # s8 = 80A44C78
    beq     $zero, $zero, lbl_80A410DC 
    sh      t8, 0x00FE($sp)            
lbl_80A4105C:
    mtc1    $zero, $f30                # $f30 = 0.00
    lwc1    $f6, 0x0000(s8)            # 80A44C78
    lui     $at, 0x3F80                # $at = 3F800000
    or      a0, s1, $zero              # a0 = 80A4CF18
    c.eq.s  $f30, $f6                  
    lui     a1, 0x3F33                 # a1 = 3F330000
    bc1tl   lbl_80A410C8               
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, %hi(var_80A45820)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A45820)($at) 
    lwc1    $f8, 0x0000(s1)            # 80A4CF18
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    add.s   $f16, $f8, $f10            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    swc1    $f16, 0x0000(s1)           # 80A4CF18
    lw      t9, 0x07C0(s7)             # 000007C0
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    sub.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80A410DC 
    swc1    $f8, 0x00B0($sp)           
    mtc1    $at, $f24                  # $f24 = 1.00
lbl_80A410C8:
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    mfc1    a2, $f24                   
    jal     func_80064280              
    ori     a1, a1, 0x3333             # a1 = 3F333333
lbl_80A410DC:
    lui     s1, %hi(var_80A4CF1C)      # s1 = 80A50000
    addiu   s1, s1, %lo(var_80A4CF1C)  # s1 = 80A4CF1C
    jal     func_800CF470              
    lwc1    $f12, 0x0000(s1)           # 80A4CF1C
    mul.s   $f10, $f0, $f26            
    swc1    $f28, 0x00BC($sp)          
    lwc1    $f12, 0x0000(s1)           # 80A4CF1C
    jal     func_800D2CD0              
    swc1    $f10, 0x00B8($sp)          
    mul.s   $f16, $f0, $f26            
    lwc1    $f4, 0x00B8($sp)           
    lui     $at, %hi(var_80A45824)     # $at = 80A40000
    swc1    $f16, 0x00C0($sp)          
    lwc1    $f18, 0x0000(s2)           # 80A47F28
    lwc1    $f8, 0x00C0($sp)           
    lwc1    $f6, 0x0008(s2)            # 80A47F30
    sub.s   $f20, $f18, $f4            
    lwc1    $f4, %lo(var_80A45824)($at) 
    lui     $at, %hi(var_80A45828)     # $at = 80A40000
    sub.s   $f22, $f6, $f8             
    mul.s   $f10, $f20, $f20           
    nop
    mul.s   $f16, $f22, $f22           
    add.s   $f18, $f10, $f16           
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_80A4116C               
    nop
    lwc1    $f6, 0x0000(s1)            # 80A4CF1C
    lwc1    $f8, %lo(var_80A45828)($at) 
    lh      t2, 0x00FE($sp)            
    sub.s   $f10, $f6, $f8             
    ori     t3, t2, 0x0002             # t3 = 00000002
    sh      t3, 0x00FE($sp)            
    beq     $zero, $zero, lbl_80A411D8 
    swc1    $f10, 0x0000(s1)           # 80A4CF1C
lbl_80A4116C:
    lwc1    $f16, 0x0000(s8)           # 80A44C78
    lui     a1, 0x4013                 # a1 = 40130000
    lui     $at, %hi(var_80A4582C)     # $at = 80A40000
    c.eq.s  $f30, $f16                 
    ori     a1, a1, 0x3333             # a1 = 40133333
    or      a0, s1, $zero              # a0 = 80A4CF1C
    lui     a3, 0x3A83                 # a3 = 3A830000
    bc1tl   lbl_80A411D0               
    mfc1    a2, $f24                   
    lwc1    $f18, 0x0000(s1)           # 80A4CF1C
    lwc1    $f4, %lo(var_80A4582C)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    sub.s   $f6, $f18, $f4             
    swc1    $f6, 0x0000(s1)            # 80A4CF1C
    lw      t4, 0x07C0(s7)             # 000007C0
    lw      t5, 0x0028(t4)             # 00000028
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    sub.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_80A411D8 
    swc1    $f18, 0x00BC($sp)          
    mfc1    a2, $f24                   
lbl_80A411D0:
    jal     func_80064280              
    ori     a3, a3, 0x126F             # a3 = 3A83126F
lbl_80A411D8:
    lui     s1, %hi(var_80A4CF20)      # s1 = 80A50000
    addiu   s1, s1, %lo(var_80A4CF20)  # s1 = 80A4CF20
    jal     func_800CF470              
    lwc1    $f12, 0x0000(s1)           # 80A4CF20
    mul.s   $f4, $f0, $f26             
    swc1    $f28, 0x00C8($sp)          
    lwc1    $f12, 0x0000(s1)           # 80A4CF20
    jal     func_800D2CD0              
    swc1    $f4, 0x00C4($sp)           
    mul.s   $f6, $f0, $f26             
    lwc1    $f10, 0x00C4($sp)          
    lui     $at, %hi(var_80A45830)     # $at = 80A40000
    swc1    $f6, 0x00CC($sp)           
    lwc1    $f8, 0x0000(s2)            # 80A47F28
    lwc1    $f18, 0x00CC($sp)          
    lwc1    $f16, 0x0008(s2)           # 80A47F30
    sub.s   $f20, $f8, $f10            
    lwc1    $f10, %lo(var_80A45830)($at) 
    lui     $at, %hi(var_80A45834)     # $at = 80A40000
    sub.s   $f22, $f16, $f18           
    mul.s   $f4, $f20, $f20            
    nop
    mul.s   $f6, $f22, $f22            
    add.s   $f8, $f4, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80A41268               
    nop
    lwc1    $f16, 0x0000(s1)           # 80A4CF20
    lwc1    $f18, %lo(var_80A45834)($at) 
    lh      t7, 0x00FE($sp)            
    sub.s   $f4, $f16, $f18            
    ori     t8, t7, 0x0004             # t8 = 00000004
    sh      t8, 0x00FE($sp)            
    beq     $zero, $zero, lbl_80A412D4 
    swc1    $f4, 0x0000(s1)            # 80A4CF20
lbl_80A41268:
    lwc1    $f6, 0x0000(s8)            # 80A44C78
    lui     a1, 0x4093                 # a1 = 40930000
    lui     $at, %hi(var_80A45838)     # $at = 80A40000
    c.eq.s  $f30, $f6                  
    ori     a1, a1, 0x3333             # a1 = 40933333
    or      a0, s1, $zero              # a0 = 80A4CF20
    lui     a3, 0x3A83                 # a3 = 3A830000
    bc1tl   lbl_80A412CC               
    mfc1    a2, $f24                   
    lwc1    $f8, 0x0000(s1)            # 80A4CF20
    lwc1    $f10, %lo(var_80A45838)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0000(s1)           # 80A4CF20
    lw      t9, 0x07C0(s7)             # 000007C0
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    sub.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80A412D4 
    swc1    $f8, 0x00C8($sp)           
    mfc1    a2, $f24                   
lbl_80A412CC:
    jal     func_80064280              
    ori     a3, a3, 0x126F             # a3 = 3A83126F
lbl_80A412D4:
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    lbu     t2, %lo(var_80A47EE5)(t2)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_80A412F4      
    lui     $at, %hi(var_80A4583C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A4583C)($at) 
    beq     $zero, $zero, lbl_80A412F8 
    swc1    $f10, 0x00D8($sp)          
lbl_80A412F4:
    swc1    $f24, 0x00D8($sp)          
lbl_80A412F8:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f28                  # $f28 = 1.50
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f26                  # $f26 = 100.00
    or      s6, $zero, $zero           # s6 = 00000000
lbl_80A4130C:
    lbu     t3, 0x0000(s0)             # 80A4BE38
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    beq     t3, $zero, lbl_80A41788    
    addu    a0, s7, $at                
    lh      t4, 0x0002(s0)             # 80A4BE3A
    addiu   s4, s0, 0x0004             # s4 = 80A4BE3C
    addiu   s5, s0, 0x001C             # s5 = 80A4BE54
    lui     a3, %hi(var_80A49D14)      # a3 = 80A50000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0002(s0)             # 80A4BE3A
    addiu   a3, a3, %lo(var_80A49D14)  # a3 = 80A49D14
    or      a2, s5, $zero              # a2 = 80A4BE54
    jal     func_8008EC20              
    or      a1, s4, $zero              # a1 = 80A4BE3C
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    lwc1    $f2, 0x0024(s0)            # 80A4BE5C
    slti    $at, s6, 0x0015            
    or      s2, $zero, $zero           # s2 = 00000000
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80A41398               
    sb      $zero, 0x0044(s0)          # 80A4BE7C
    lwc1    $f0, 0x001C(s0)            # 80A4BE54
    add.s   $f18, $f26, $f2            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80A41398               
    sb      $zero, 0x0044(s0)          # 80A4BE7C
    beq     $zero, $zero, lbl_80A41398 
    sb      t6, 0x0044(s0)             # 80A4BE7C
    sb      $zero, 0x0044(s0)          # 80A4BE7C
lbl_80A41398:
    beql    $at, $zero, lbl_80A413AC   
    slti    $at, s6, 0x0029            
    beq     $zero, $zero, lbl_80A413C4 
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    slti    $at, s6, 0x0029            
lbl_80A413AC:
    beq     $at, $zero, lbl_80A413C0   
    addiu   s2, $zero, 0x0002          # s2 = 00000002
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    beq     $zero, $zero, lbl_80A413C4 
    addiu   s3, $zero, 0x0002          # s3 = 00000002
lbl_80A413C0:
    addiu   s3, $zero, 0x0004          # s3 = 00000004
lbl_80A413C4:
    lwc1    $f8, 0x0014(s0)            # 80A4BE4C
    lwc1    $f10, 0x0008(s0)           # 80A4BE40
    lwc1    $f4, 0x0010(s0)            # 80A4BE48
    lwc1    $f6, 0x0004(s0)            # 80A4BE3C
    sub.s   $f16, $f8, $f10            
    sub.s   $f20, $f4, $f6             
    swc1    $f16, 0x00F0($sp)          
    lwc1    $f4, 0x000C(s0)            # 80A4BE44
    lwc1    $f18, 0x0018(s0)           # 80A4BE50
    mov.s   $f14, $f20                 
    sub.s   $f22, $f18, $f4            
    jal     func_800AA4F8              
    mov.s   $f12, $f22                 
    mul.s   $f6, $f20, $f20            
    sh      v0, 0x00D4($sp)            
    lwc1    $f14, 0x00F0($sp)          
    mul.s   $f8, $f22, $f22            
    add.s   $f0, $f6, $f8              
    sqrt.s  $f12, $f0                  
    jal     func_800AA4F8              
    swc1    $f12, 0x00E8($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lwc1    $f10, 0x00E8($sp)          
    sh      v0, 0x00D6($sp)            
    c.lt.s  $f10, $f16                 
    nop
    bc1tl   lbl_80A4146C               
    lui     $at, 0x4120                # $at = 41200000
    lh      t7, 0x0002(s0)             # 80A4BE3A
    andi    t8, t7, 0x001F             # t8 = 00000000
    bnel    t8, $zero, lbl_80A415AC    
    addiu   a0, s0, 0x003E             # a0 = 80A4BE76
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    nop
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_80A415A8               
    lui     $at, 0x4120                # $at = 41200000
lbl_80A4146C:
    mtc1    $at, $f12                  # $f12 = 10.00
    lui     $at, 0x0001                # $at = 00010000
    addu    t9, s7, $at                
    jal     func_80026D90              
    sw      t9, 0x0080($sp)            
    sll     t0, s2,  2                 
    subu    t0, t0, s2                 
    sll     t0, t0,  2                 
    addiu   t1, $sp, 0x00AC            # t1 = FFFFFFAC
    addu    s1, t0, t1                 
    lwc1    $f4, 0x0004(s1)            # 80A4CF24
    lui     $at, 0x4348                # $at = 43480000
    add.s   $f6, $f0, $f4              
    swc1    $f6, 0x0014(s0)            # 80A4BE4C
    lwc1    $f8, 0x0000(s8)            # 80A44C78
    c.eq.s  $f30, $f8                  
    nop
    bc1t    lbl_80A414EC               
    nop
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D90              
    nop
    lwc1    $f10, 0x0000(s1)           # 80A4CF20
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0010(s0)           # 80A4BE48
    lwc1    $f18, 0x0008(s1)           # 80A4CF28
    add.s   $f4, $f0, $f18             
    beq     $zero, $zero, lbl_80A41514 
    swc1    $f4, 0x0018(s0)            # 80A4BE50
lbl_80A414EC:
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    lwc1    $f6, 0x0000(s1)            # 80A4CF20
    mov.s   $f12, $f26                 
    add.s   $f8, $f0, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x0010(s0)            # 80A4BE48
    lwc1    $f10, 0x0008(s1)           # 80A4CF28
    add.s   $f16, $f0, $f10            
    swc1    $f16, 0x0018(s0)           # 80A4BE50
lbl_80A41514:
    lw      t4, 0x0000(s4)             # 80A4BE3C
    addiu   t2, $sp, 0x00A0            # t2 = FFFFFFA0
    lui     $at, 0x4248                # $at = 42480000
    sw      t4, 0x0000(t2)             # FFFFFFA0
    lw      t3, 0x0004(s4)             # 80A4BE40
    mtc1    $at, $f12                  # $f12 = 50.00
    sw      t3, 0x0004(t2)             # FFFFFFA4
    lw      t4, 0x0008(s4)             # 80A4BE44
    sw      t4, 0x0008(t2)             # FFFFFFA8
    lw      t5, 0x07C0(s7)             # 000007C0
    lw      t6, 0x0028(t5)             # 00000028
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    jal     func_80026D64              
    swc1    $f4, 0x00A4($sp)           
    lw      t8, 0x0080($sp)            
    add.s   $f6, $f0, $f26             
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    lw      a1, 0x1E10(t8)             # 00001E10
    addiu   t0, $zero, 0x005A          # t0 = 0000005A
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    or      a0, s5, $zero              # a0 = 80A4BE54
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFFA0
    jal     func_80A347B4              
    lui     a3, 0x41A0                 # a3 = 41A00000
    lwc1    $f8, 0x0028(s0)            # 80A4BE60
    c.lt.s  $f8, $f28                  
    nop
    bc1fl   lbl_80A415A4               
    swc1    $f28, 0x0034(s0)           # 80A4BE6C
    swc1    $f28, 0x0028(s0)           # 80A4BE60
    swc1    $f28, 0x0034(s0)           # 80A4BE6C
lbl_80A415A4:
    swc1    $f24, 0x0038(s0)           # 80A4BE70
lbl_80A415A8:
    addiu   a0, s0, 0x003E             # a0 = 80A4BE76
lbl_80A415AC:
    lh      a1, 0x00D4($sp)            
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80A34708              
    addiu   a3, $zero, 0x4000          # a3 = 00004000
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    cvt.s.w $f16, $f10                 
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    v1, $f6                    
    nop
    sll     a0, v1, 16                 
    sra     a0, a0, 16                 
    slti    $at, a0, 0x1F41            
    sll     a1, v1, 16                 
    bne     $at, $zero, lbl_80A41604   
    sra     a1, a1, 16                 
    beq     $zero, $zero, lbl_80A41614 
    addiu   a1, $zero, 0x1F40          # a1 = 00001F40
lbl_80A41604:
    slti    $at, a0, 0xE0C0            
    beq     $at, $zero, lbl_80A41614   
    nop
    addiu   a1, $zero, 0xE0C0          # a1 = FFFFE0C0
lbl_80A41614:
    jal     func_80064624              
    addiu   a0, s0, 0x0042             # a0 = 80A4BE7A
    lh      t2, 0x0042(s0)             # 80A4BE7A
    lui     $at, %hi(var_80A45840)     # $at = 80A40000
    lwc1    $f16, %lo(var_80A45840)($at) 
    mtc1    t2, $f8                    # $f8 = 0.00
    addiu   a0, s0, 0x003C             # a0 = 80A4BE74
    lh      a1, 0x00D6($sp)            
    cvt.s.w $f10, $f8                  
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x4000          # a3 = 00004000
    mul.s   $f18, $f10, $f16           
    jal     func_80064624              
    swc1    $f18, 0x00E0($sp)          
    lh      t3, 0x00FE($sp)            
    mfc1    a2, $f24                   
    addiu   a0, s0, 0x0028             # a0 = 80A4BE60
    and     t4, t3, s3                 
    beq     t4, $zero, lbl_80A41680    
    lui     a1, 0x3F40                 # a1 = 3F400000
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    swc1    $f24, 0x0038(s0)           # 80A4BE70
    swc1    $f4, 0x0028(s0)            # 80A4BE60
    swc1    $f6, 0x0034(s0)            # 80A4BE6C
lbl_80A41680:
    lwc1    $f8, 0x0000(s8)            # 80A44C78
    lui     $at, 0x4080                # $at = 40800000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    c.eq.s  $f30, $f8                  
    nop
    bc1t    lbl_80A416B4               
    nop
    mtc1    $at, $f10                  # $f10 = 4.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    swc1    $f24, 0x0038(s0)           # 80A4BE70
    swc1    $f10, 0x0028(s0)           # 80A4BE60
    swc1    $f16, 0x0034(s0)           # 80A4BE6C
lbl_80A416B4:
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lwc1    $f18, 0x0028(s0)           # 80A4BE60
    lwc1    $f4, 0x00D8($sp)           
    lh      a0, 0x003C(s0)             # 80A4BE74
    mul.s   $f20, $f18, $f4            
    jal     func_80063684              # coss?
    nop
    mul.s   $f22, $f0, $f20            
    jal     func_800636C4              # sins?
    lh      a0, 0x003E(s0)             # 80A4BE76
    mul.s   $f8, $f22, $f0             
    lwc1    $f6, 0x0004(s0)            # 80A4BE3C
    lh      a0, 0x003C(s0)             # 80A4BE74
    add.s   $f10, $f6, $f8             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0004(s0)           # 80A4BE3C
    mul.s   $f18, $f20, $f0            
    lwc1    $f16, 0x0008(s0)           # 80A4BE40
    lh      a0, 0x003E(s0)             # 80A4BE76
    add.s   $f4, $f16, $f18            
    jal     func_80063684              # coss?
    swc1    $f4, 0x0008(s0)            # 80A4BE40
    mul.s   $f8, $f22, $f0             
    lwc1    $f6, 0x000C(s0)            # 80A4BE44
    lbu     t5, 0x0044(s0)             # 80A4BE7C
    addiu   a0, s0, 0x0034             # a0 = 80A4BE6C
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    add.s   $f10, $f6, $f8             
    beq     t5, $zero, lbl_80A41788    
    swc1    $f10, 0x000C(s0)           # 80A4BE44
    mfc1    a1, $f24                   
    mfc1    a2, $f24                   
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    mfc1    a2, $f24                   
    lui     a3, 0x3D23                 # a3 = 3D230000
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0038             # a0 = 80A4BE70
    lwc1    $f16, 0x0030(s0)           # 80A4BE68
    lwc1    $f18, 0x0034(s0)           # 80A4BE6C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0030(s0)            # 80A4BE68
    jal     func_800D2CD0              
    lwc1    $f12, 0x0030(s0)           # 80A4BE68
    lwc1    $f6, 0x0038(s0)            # 80A4BE70
    lwc1    $f10, 0x00E0($sp)          
    mul.s   $f8, $f0, $f6              
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x002C(s0)           # 80A4BE64
lbl_80A41788:
    addiu   s6, s6, 0x0001             # s6 = 00000001
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x003C            
    bne     $at, $zero, lbl_80A4130C   
    addiu   s0, s0, 0x0048             # s0 = 80A4BE80
    swc1    $f30, 0x0000(s8)           # 80A44C78
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0100           # $sp = 00000000


func_80A417EC:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0054($sp)           
    sw      s8, 0x0050($sp)            
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0058($sp)            
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47EE5)(t6)  
    lui     s2, %hi(var_80A4BE38)      # s2 = 80A50000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      s6, $zero, $zero           # s6 = 00000000
    bne     t6, $at, lbl_80A41850      
    addiu   s2, s2, %lo(var_80A4BE38)  # s2 = 80A4BE38
    lui     $at, %hi(var_80A45844)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A41858 
    lwc1    $f20, %lo(var_80A45844)($at) 
lbl_80A41850:
    lui     $at, %hi(var_80A45848)     # $at = 80A40000
    lwc1    $f20, %lo(var_80A45848)($at) 
lbl_80A41858:
    lw      t7, 0x0058($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f24                  # $f24 = 32768.00
    lui     $at, %hi(var_80A4584C)     # $at = 80A40000
    lui     s8, 0x0601                 # s8 = 06010000
    addiu   s8, s8, 0xC220             # s8 = 0600C220
    lwc1    $f22, %lo(var_80A4584C)($at) 
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
    lw      s1, 0x0000(t7)             # 00000000
lbl_80A41880:
    lbu     t8, 0x0000(s2)             # 80A4BE38
    beql    t8, $zero, lbl_80A4198C    
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bne     s6, $zero, lbl_80A418CC    
    lui     t1, 0xFA00                 # t1 = FA000000
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      s8, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0x9B9B                 # t2 = 9B9B0000
    ori     t2, t2, 0x9BFF             # t2 = 9B9B9BFF
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
lbl_80A418CC:
    lbu     t3, 0x0044(s2)             # 80A4BE7C
    lui     s5, 0x0601                 # s5 = 06010000
    addiu   s5, s5, 0xC298             # s5 = 0600C298
    beq     t3, $zero, lbl_80A41988    
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0004(s2)           # 80A4BE3C
    lwc1    $f14, 0x0008(s2)           # 80A4BE40
    jal     func_800AA7F4              
    lw      a2, 0x000C(s2)             # 80A4BE44
    lh      t4, 0x003E(s2)             # 80A4BE76
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f22             
    jal     func_800AAB94              
    div.s   $f12, $f8, $f24            
    lh      t5, 0x003C(s2)             # 80A4BE74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    neg.s   $f18, $f16                 
    mul.s   $f4, $f18, $f22            
    jal     func_800AA9E0              
    div.s   $f12, $f4, $f24            
    lwc1    $f6, 0x002C(s2)            # 80A4BE64
    mfc1    a2, $f20                   
    mov.s   $f14, $f20                 
    mul.s   $f12, $f6, $f20            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s3, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s3, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s3)             # 00000000
    lw      t8, 0x0058($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80A41988:
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_80A4198C:
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x003C            
    bne     $at, $zero, lbl_80A41880   
    addiu   s2, s2, 0x0048             # s2 = 80A4BE80
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A419DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0030($sp)            
    lhu     t7, 0x014C(t6)             # 0000014C
    sltiu   $at, t7, 0x0019            
    beq     $at, $zero, lbl_80A42850   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80A45850)     # $at = 80A40000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80A45850)($at) 
    jr      t7                         
    nop
var_80A41A14:
    lui     t8, %hi(var_80A47F1C)      # t8 = 80A40000
    lh      t8, %lo(var_80A47F1C)(t8)  
    lui     t9, %hi(var_80A44A6C)      # t9 = 80A40000
    bne     t8, $zero, lbl_80A41A84    
    nop
    lui     t9, %hi(var_80A47EE5)      # t9 = 80A40000
    lbu     t9, %lo(var_80A47EE5)(t9)  
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     a2, 0x8012                 # a2 = 80120000
    beq     t0, t9, lbl_80A41A74       
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lw      v1, 0x0EC0(a2)             # 8011B490
    lw      t6, 0x0030($sp)            
    andi    t1, v1, 0x0100             # t1 = 00000000
    beq     t1, $zero, lbl_80A41A68    
    andi    t2, v1, 0x0200             # t2 = 00000000
    bne     t2, $zero, lbl_80A41A68    
    lw      t4, 0x0030($sp)            
    addiu   t3, $zero, 0x4093          # t3 = 00004093
    beq     $zero, $zero, lbl_80A41AA8 
    sh      t3, 0x010E(t4)             # 0000010E
lbl_80A41A68:
    addiu   t5, $zero, 0x407B          # t5 = 0000407B
    beq     $zero, $zero, lbl_80A41AA8 
    sh      t5, 0x010E(t6)             # 0000010E
lbl_80A41A74:
    lw      t8, 0x0030($sp)            
    addiu   t7, $zero, 0x407B          # t7 = 0000407B
    beq     $zero, $zero, lbl_80A41AA8 
    sh      t7, 0x010E(t8)             # 80A4010E
lbl_80A41A84:
    lbu     t9, %lo(var_80A44A6C)(t9)  
    lw      t2, 0x0030($sp)            
    lw      t4, 0x0030($sp)            
    bne     t9, $zero, lbl_80A41AA0    
    addiu   t1, $zero, 0x4084          # t1 = 00004084
    beq     $zero, $zero, lbl_80A41AA8 
    sh      t1, 0x010E(t2)             # 0000010E
lbl_80A41AA0:
    addiu   t3, $zero, 0x4097          # t3 = 00004097
    sh      t3, 0x010E(t4)             # 0000010E
lbl_80A41AA8:
    lw      a0, 0x0030($sp)            
    jal     func_80022930              
    lw      a1, 0x0034($sp)            
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    beq     v0, $zero, lbl_80A41B18    
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t5, %hi(var_80A47F1C)      # t5 = 80A40000
    lh      t5, %lo(var_80A47F1C)(t5)  
    lw      t6, 0x0030($sp)            
    lui     t7, %hi(var_80A47EE5)      # t7 = 80A40000
    bne     t5, $zero, lbl_80A41B0C    
    lw      t4, 0x0030($sp)            
    sh      t0, 0x014C(t6)             # 0000014C
    lbu     t7, %lo(var_80A47EE5)(t7)  
    beql    t0, t7, lbl_80A41B00       
    lw      t1, 0x0EC0(a2)             # 8011B490
    lw      t8, 0x0EC0(a2)             # 8011B490
    ori     t9, t8, 0x0200             # t9 = 00000200
    beq     $zero, $zero, lbl_80A42850 
    sw      t9, 0x0EC0(a2)             # 8011B490
    lw      t1, 0x0EC0(a2)             # 8011B490
lbl_80A41B00:
    ori     t2, t1, 0x0100             # t2 = 00000100
    beq     $zero, $zero, lbl_80A42850 
    sw      t2, 0x0EC0(a2)             # 8011B490
lbl_80A41B0C:
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    beq     $zero, $zero, lbl_80A42850 
    sh      t3, 0x014C(t4)             # 0000014C
lbl_80A41B18:
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0034($sp)            
    jal     func_80022A68              
    lui     a2, 0x42C8                 # a2 = 42C80000
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
var_80A41B30:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      t5, 0x0034($sp)            
    lui     v0, 0x0001                 # v0 = 00010000
    lui     a2, 0x8012                 # a2 = 80120000
    addu    v0, v0, t5                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beql    v0, $zero, lbl_80A41B98    
    lh      t6, 0x0034(a2)             # 8011A604
    beq     v0, t0, lbl_80A41C10       
    lw      a0, 0x0034($sp)            
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
    lh      t6, 0x0034(a2)             # 8011A604
lbl_80A41B98:
    lw      a0, 0x0034($sp)            
    slti    $at, t6, 0x0014            
    bne     $at, $zero, lbl_80A41BF8   
    nop
    jal     func_800721CC              
    addiu   a0, $zero, 0xFFEC          # a0 = FFFFFFEC
    jal     func_80091730              
    nop
    bne     v0, $zero, lbl_80A41BD0    
    lw      t1, 0x0030($sp)            
    lw      t8, 0x0030($sp)            
    addiu   t7, $zero, 0x407C          # t7 = 0000407C
    beq     $zero, $zero, lbl_80A41BD8 
    sh      t7, 0x010E(t8)             # 0000010E
lbl_80A41BD0:
    addiu   t9, $zero, 0x407D          # t9 = 0000407D
    sh      t9, 0x010E(t1)             # 0000010E
lbl_80A41BD8:
    lw      t2, 0x0030($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_800DCE80              
    lhu     a1, 0x010E(t2)             # 0000010E
    lw      t4, 0x0030($sp)            
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    beq     $zero, $zero, lbl_80A42850 
    sh      t3, 0x014C(t4)             # 0000014C
lbl_80A41BF8:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x407E          # a1 = 0000407E
    lw      t6, 0x0030($sp)            
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    beq     $zero, $zero, lbl_80A42850 
    sh      t5, 0x014C(t6)             # 0000014C
lbl_80A41C10:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    lw      t8, 0x0030($sp)            
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beq     $zero, $zero, lbl_80A42850 
    sh      t7, 0x014C(t8)             # 0000014C
var_80A41C28:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x407F          # a1 = 0000407F
    lw      t1, 0x0030($sp)            
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    beq     $zero, $zero, lbl_80A42850 
    sh      t9, 0x014C(t1)             # 0000014C
var_80A41C74:
    lw      a0, 0x0034($sp)            
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80A41CB0      
    nop
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beq     v0, $zero, lbl_80A41CB0    
    nop
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      t2, 0x0030($sp)            
    sh      $zero, 0x014C(t2)          # 0000014C
lbl_80A41CB0:
    jal     func_800DD464              
    lw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80A42850      
    lw      t3, 0x0030($sp)            
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t3)          # 0000014C
var_80A41CCC:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      t4, 0x0034($sp)            
    lui     v0, 0x0001                 # v0 = 00010000
    lui     a3, %hi(var_80A47EE8)      # a3 = 80A40000
    addu    v0, v0, t4                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   a3, a3, %lo(var_80A47EE8)  # a3 = 80A47EE8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     v0, $zero, lbl_80A41D34    
    addiu   a1, $zero, 0x4080          # a1 = 00004080
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     v0, t0, lbl_80A41DD4       
    lw      a0, 0x0034($sp)            
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
lbl_80A41D34:
    cfc1    t5, $f31                   
    ctc1    t6, $f31                   
    lwc1    $f4, 0x0000(a3)            # 80A47EE8
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4                   
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80A41DA4    
    mfc1    t6, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t6, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80A41D98    
    nop
    mfc1    t6, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A41DB0 
    or      t6, t6, $at                # t6 = 80000000
lbl_80A41D98:
    beq     $zero, $zero, lbl_80A41DB0 
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f6                    
lbl_80A41DA4:
    nop
    bltz    t6, lbl_80A41D98           
    nop
lbl_80A41DB0:
    ctc1    t5, $f31                   
    lui     $at, %hi(var_80A44A58)     # $at = 80A40000
    sh      t6, %lo(var_80A44A58)($at) 
    jal     func_800DCE80              
    lw      a0, 0x0034($sp)            
    lw      t8, 0x0030($sp)            
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    beq     $zero, $zero, lbl_80A42850 
    sh      t7, 0x014C(t8)             # 0000014C
lbl_80A41DD4:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x407F          # a1 = 0000407F
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
var_80A41DE4:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      t1, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addu    $at, $at, t1               
    sb      t9, 0x0750($at)            # 00010750
    lw      a0, 0x0034($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a0                 
    lw      t9, 0x1D48(t9)             # 00011D48
    jalr    $ra, t9                    
    nop
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, %hi(var_80A47F1C)     # $at = 80A40000
    lw      t4, 0x0030($sp)            
    sh      t0, %lo(var_80A47F1C)($at) 
    lui     $at, %hi(var_80A44A64)     # $at = 80A40000
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    lui     a2, 0x8012                 # a2 = 80120000
    sh      t3, %lo(var_80A44A64)($at) 
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sh      $zero, 0x014C(t4)          # 0000014C
    lw      v1, 0x0EC0(a2)             # 8011B490
    lui     a0, 0x00FF                 # a0 = 00FF0000
    and     t5, v1, a0                 
    slt     $at, t5, a0                
    beq     $at, $zero, lbl_80A42850   
    lui     $at, 0x0001                # $at = 00010000
    addu    t6, v1, $at                
    beq     $zero, $zero, lbl_80A42850 
    sw      t6, 0x0EC0(a2)             # 8011B490
var_80A41E8C:
    lui     t7, %hi(var_80A44A6C)      # t7 = 80A40000
    lbu     t7, %lo(var_80A44A6C)(t7)  
    lw      a0, 0x0034($sp)            
    beq     t7, $zero, lbl_80A41F30    
    nop
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 00FF20D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addu    v0, v0, a0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    beq     v0, $zero, lbl_80A41EFC    
    nop
    beq     v0, t0, lbl_80A41F28       
    lw      t9, 0x0030($sp)            
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
lbl_80A41EFC:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x40B2          # a1 = 000040B2
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    sb      t8, %lo(var_80A44A68)($at) 
    lw      t2, 0x0030($sp)            
    lui     $at, %hi(var_80A44A6C)     # $at = 80A40000
    sb      $zero, %lo(var_80A44A6C)($at) 
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    beq     $zero, $zero, lbl_80A42850 
    sh      t1, 0x014C(t2)             # 0000014C
lbl_80A41F28:
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t9)          # 0000014C
lbl_80A41F30:
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addu    v0, v0, a0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    beq     v0, $zero, lbl_80A41F90    
    nop
    beq     v0, t0, lbl_80A42108       
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A42220      
    lui     t9, %hi(var_80A47EF4)      # t9 = 80A40000
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
lbl_80A41F90:
    lui     v0, %hi(var_80A44A50)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A44A50)  # v0 = 80A44A50
    lwc1    $f0, 0x0000(v0)            # 80A44A50
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      v0, 0x0030($sp)            
    addiu   t3, $zero, 0x408C          # t3 = 0000408C
    c.eq.s  $f8, $f0                   
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    lui     t5, %hi(var_80A47EEC)      # t5 = 80A40000
    bc1f    lbl_80A41FC8               
    nop
    sh      t3, 0x010E(v0)             # 80A44B5E
    beq     $zero, $zero, lbl_80A420F8 
    sh      t4, 0x014C(v0)             # 80A44B9C
lbl_80A41FC8:
    lbu     t5, %lo(var_80A47EEC)(t5)  
    lw      v0, 0x0030($sp)            
    addiu   t7, $zero, 0x409B          # t7 = 0000409B
    bne     t5, $zero, lbl_80A420F0    
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    cfc1    t6, $f31                   
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    ctc1    t7, $f31                   
    lui     a3, %hi(var_80A47EE8)      # a3 = 80A40000
    addiu   a3, a3, %lo(var_80A47EE8)  # a3 = 80A47EE8
    cvt.w.s $f10, $f0                  
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80A42054    
    mfc1    t7, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f0, $f10            
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80A42048    
    nop
    mfc1    t7, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A42060 
    or      t7, t7, $at                # t7 = 80000000
lbl_80A42048:
    beq     $zero, $zero, lbl_80A42060 
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f10                   
lbl_80A42054:
    nop
    bltz    t7, lbl_80A42048           
    nop
lbl_80A42060:
    lui     $at, %hi(var_80A44A58)     # $at = 80A40000
    ctc1    t6, $f31                   
    sh      t7, %lo(var_80A44A58)($at) 
    lwc1    $f16, 0x0000(a3)           # 80A47EE8
    trunc.w.s $f4, $f0                   
    lui     t7, %hi(var_80A47EEE)      # t7 = 80A40000
    lw      v0, 0x0030($sp)            
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f4                    
    mfc1    t1, $f18                   
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    sll     t2, t1, 16                 
    sra     t9, t2, 16                 
    slt     $at, t9, t6                
    beq     $at, $zero, lbl_80A420DC   
    addiu   t9, $zero, 0x408B          # t9 = 0000408B
    lbu     t7, %lo(var_80A47EEE)(t7)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t1, 0x0030($sp)            
    bne     t7, $at, lbl_80A420C4      
    lw      t3, 0x0030($sp)            
    addiu   t8, $zero, 0x40B0          # t8 = 000040B0
    beq     $zero, $zero, lbl_80A420CC 
    sh      t8, 0x010E(t1)             # 0000010E
lbl_80A420C4:
    addiu   t2, $zero, 0x4086          # t2 = 00004086
    sh      t2, 0x010E(t3)             # 0000419A
lbl_80A420CC:
    lw      t5, 0x0030($sp)            
    addiu   t4, $zero, 0x000B          # t4 = 0000000B
    beq     $zero, $zero, lbl_80A420E8 
    sh      t4, 0x014C(t5)             # 80A4014C
lbl_80A420DC:
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t9, 0x010E(v0)             # 80A44B5E
    sh      t6, 0x014C(v0)             # 80A44B9C
lbl_80A420E8:
    beq     $zero, $zero, lbl_80A420F8 
    lw      v0, 0x0030($sp)            
lbl_80A420F0:
    sh      t7, 0x010E(v0)             # 80A44B5E
    sh      t8, 0x014C(v0)             # 80A44B9C
lbl_80A420F8:
    jal     func_800DCE80              
    lhu     a1, 0x010E(v0)             # 80A44B5E
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
lbl_80A42108:
    lui     v0, %hi(var_80A44A60)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A44A60)  # v0 = 80A44A60
    lw      t1, 0x0000(v0)             # 80A44A60
    ori     $at, $zero, 0x8CA1         # $at = 00008CA1
    lui     t3, %hi(var_80A47EE6)      # t3 = 80A40000
    slt     $at, t1, $at               
    bne     $at, $zero, lbl_80A42140   
    lui     t5, %hi(var_80A47F26)      # t5 = 80A40000
    addiu   t2, $zero, 0x7530          # t2 = 00007530
    sw      t2, 0x0000(v0)             # 80A44A60
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4088          # a1 = 00004088
    beq     $zero, $zero, lbl_80A42218 
    lw      t5, 0x0030($sp)            
lbl_80A42140:
    lbu     t3, %lo(var_80A47EE6)(t3)  
    lui     v1, %hi(var_80A47EF2)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47EF2)  # v1 = 80A47EF2
    bne     t3, $zero, lbl_80A42164    
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     v0, 0x0000(v1)             # 80A47EF2
    bne     v0, $zero, lbl_80A42164    
    addiu   t4, v0, 0x0001             # t4 = 00000001
    sb      t4, 0x0000(v1)             # 80A47EF2
lbl_80A42164:
    lbu     t5, %lo(var_80A47F26)(t5)  
    lui     v1, %hi(var_80A47EF2)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47EF2)  # v1 = 80A47EF2
    bne     t5, $at, lbl_80A421AC      
    lbu     v0, 0x0000(v1)             # 80A47EF2
    sll     t9, v0,  1                 
    lui     t6, %hi(var_80A45398)      # t6 = 80A40000
    addu    t6, t6, t9                 
    lhu     t6, %lo(var_80A45398)(t6)  
    addiu   $at, $zero, 0x408D         # $at = 0000408D
    bnel    t6, $at, lbl_80A421B0      
    sll     t7, v0,  1                 
    jal     func_800DCE80              
    addiu   a1, $zero, 0x40AF          # a1 = 000040AF
    lui     v1, %hi(var_80A47EF2)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47EF2)  # v1 = 80A47EF2
    beq     $zero, $zero, lbl_80A421CC 
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80A421AC:
    sll     t7, v0,  1                 
lbl_80A421B0:
    lui     a1, %hi(var_80A45398)      # a1 = 80A40000
    addu    a1, a1, t7                 
    jal     func_800DCE80              
    lhu     a1, %lo(var_80A45398)(a1)  
    lui     v1, %hi(var_80A47EF2)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47EF2)  # v1 = 80A47EF2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80A421CC:
    lbu     t8, 0x0000(v1)             # 80A47EF2
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    addiu   t1, t8, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(v1)             # 80A47EF2
    lbu     t2, %lo(var_80A47EE5)(t2)  
    andi    t3, t1, 0x00FF             # t3 = 00000001
    slti    $at, t3, 0x0006            
    beql    t0, t2, lbl_80A42204       
    lbu     t4, 0x0000(v1)             # 80A47EF2
    bnel    $at, $zero, lbl_80A42218   
    lw      t5, 0x0030($sp)            
    beq     $zero, $zero, lbl_80A42214 
    sb      $zero, 0x0000(v1)          # 80A47EF2
    lbu     t4, 0x0000(v1)             # 80A47EF2
lbl_80A42204:
    slti    $at, t4, 0x0004            
    bnel    $at, $zero, lbl_80A42218   
    lw      t5, 0x0030($sp)            
    sb      $zero, 0x0000(v1)          # 80A47EF2
lbl_80A42214:
    lw      t5, 0x0030($sp)            
lbl_80A42218:
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t5)          # 0000014C
lbl_80A42220:
    lhu     t9, %lo(var_80A47EF4)(t9)  
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    bne     t9, $zero, lbl_80A42240    
    nop
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4085          # a1 = 00004085
    beq     $zero, $zero, lbl_80A42258 
    lw      t8, 0x0030($sp)            
lbl_80A42240:
    lbu     t6, %lo(var_80A47EE5)(t6)  
    bnel    t0, t6, lbl_80A42258       
    lw      t8, 0x0030($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4092          # a1 = 00004092
    lw      t8, 0x0030($sp)            
lbl_80A42258:
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    beq     $zero, $zero, lbl_80A42850 
    sh      t7, 0x014C(t8)             # 0000014C
var_80A42264:
    lw      a0, 0x0034($sp)            
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80A42290      
    nop
    jal     func_800DD464              
    lw      a0, 0x0020($sp)            
    bnel    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
lbl_80A42290:
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lui     t1, %hi(var_80A47EEC)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47EEC)(t1)  
    lui     v0, %hi(var_80A44A50)      # v0 = 80A40000
    lui     a3, %hi(var_80A47EE8)      # a3 = 80A40000
    bne     t1, $zero, lbl_80A42618    
    addiu   v0, v0, %lo(var_80A44A50)  # v0 = 80A44A50
    lui     v0, %hi(var_80A44A50)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A44A50)  # v0 = 80A44A50
    lwc1    $f6, 0x0000(v0)            # 80A44A50
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a3, a3, %lo(var_80A47EE8)  # a3 = 80A47EE8
    lui     a0, %hi(var_80A47EE5)      # a0 = 80A40000
    swc1    $f6, 0x0000(a3)            # 80A47EE8
    swc1    $f8, 0x0000(v0)            # 80A44A50
    lbu     a0, %lo(var_80A47EE5)(a0)  
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     a2, 0x8012                 # a2 = 80120000
    bne     t0, a0, lbl_80A423A4       
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lwc1    $f0, 0x0000(a3)            # 80A47EE8
    lw      t2, 0x0EC0(a2)             # 8011B490
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    trunc.w.s $f10, $f0                  
    and     t3, t2, $at                
    lui     $at, 0x7F00                # $at = 7F000000
    sw      t3, 0x0EC0(a2)             # 8011B490
    mfc1    v0, $f10                   
    lui     t4, %hi(var_80A47EEE)      # t4 = 80A40000
    andi    v0, v0, 0x007F             # v0 = 00000050
    or      t9, t3, v0                 # t9 = 00000050
    and     t6, t9, $at                
    sra     t7, t6, 24                 
    mtc1    t7, $f16                   # $f16 = 0.00
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    cvt.s.w $f2, $f16                  
    and     t8, t9, $at                
    sll     t2, v0, 24                 
    sw      t9, 0x0EC0(a2)             # 8011B490
    or      t3, t8, t2                 # t3 = 00000000
    lui     t6, %hi(var_80A47EEE)      # t6 = 80A40000
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_80A4237C               
    nop
    sw      t8, 0x0EC0(a2)             # 8011B490
    sw      t3, 0x0EC0(a2)             # 8011B490
    lbu     t4, %lo(var_80A47EEE)(t4)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t4, $at, lbl_80A4237C      
    lui     $at, 0x8000                # $at = 80000000
    or      t9, t3, $at                # t9 = 80000000
    sw      t9, 0x0EC0(a2)             # 8011B490
lbl_80A4237C:
    lbu     t6, %lo(var_80A47EEE)(t6)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_80A42408      
    lui     $at, 0x4270                # $at = 42700000
    lw      t7, 0x0EC0(a2)             # 8011B490
    lw      t1, 0x0030($sp)            
    ori     t8, t7, 0x0080             # t8 = 00000080
    sw      t8, 0x0EC0(a2)             # 8011B490
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t1)          # 80A4014C
lbl_80A423A4:
    lwc1    $f0, 0x0000(a3)            # 80A47EE8
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    trunc.w.s $f18, $f0                  
    lw      t2, 0x0EC0(a2)             # 8011B490
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    mfc1    t9, $f18                   
    and     t3, t2, $at                
    sw      t3, 0x0EC0(a2)             # 8011B490
    andi    t6, t9, 0x007F             # t6 = 00000000
    sll     t7, t6, 24                 
    or      t8, t3, t7                 # t8 = 00000000
    sw      t8, 0x0EC0(a2)             # 8011B490
    lui     t1, %hi(var_80A47EEE)      # t1 = 80A40000
    lbu     t1, %lo(var_80A47EEE)(t1)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_80A42404      
    lui     $at, 0x8000                # $at = 80000000
    lw      t5, 0x0030($sp)            
    or      t3, t8, $at                # t3 = 80000000
    sw      t3, 0x0EC0(a2)             # 8011B490
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t5)          # 0000014C
lbl_80A42404:
    lui     $at, 0x4270                # $at = 42700000
lbl_80A42408:
    mtc1    $at, $f2                   # $f2 = 60.00
    addiu   t9, $zero, 0x0055          # t9 = 00000055
    lui     $at, 0x4248                # $at = 42480000
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A42430               
    mtc1    $at, $f4                   # $f4 = 50.00
    beq     $zero, $zero, lbl_80A42478 
    sw      t9, 0x002C($sp)            
    mtc1    $at, $f4                   # $f4 = 50.00
lbl_80A42430:
    addiu   t6, $zero, 0x004E          # t6 = 0000004E
    lui     $at, 0x4220                # $at = 42200000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A42454               
    mtc1    $at, $f6                   # $f6 = 40.00
    beq     $zero, $zero, lbl_80A42478 
    sw      t6, 0x002C($sp)            
    mtc1    $at, $f6                   # $f6 = 40.00
lbl_80A42454:
    addiu   t4, $zero, 0x004D          # t4 = 0000004D
    addiu   t7, $zero, 0x004C          # t7 = 0000004C
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A42478               
    sw      t7, 0x002C($sp)            
    beq     $zero, $zero, lbl_80A42478 
    sw      t4, 0x002C($sp)            
    sw      t7, 0x002C($sp)            
lbl_80A42478:
    bne     t0, a0, lbl_80A42550       
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A4262C               
    lw      a0, 0x0030($sp)            
    lw      v1, 0x0EC0(a2)             # 8011B490
    addiu   t2, $zero, 0x003E          # t2 = 0000003E
    lui     $at, %hi(var_80A458B4)     # $at = 80A40000
    andi    t8, v1, 0x0400             # t8 = 00000000
    bne     t8, $zero, lbl_80A42628    
    ori     t1, v1, 0x0400             # t1 = 00000400
    sw      t1, 0x0EC0(a2)             # 8011B490
    sw      t2, 0x002C($sp)            
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A458B4)($at) 
    cfc1    t3, $f31                   
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    ctc1    t5, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f10, $f0                  
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_80A42530    
    mfc1    t5, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f10, $f0, $f10            
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80A42524    
    nop
    mfc1    t5, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A4253C 
    or      t5, t5, $at                # t5 = 80000000
lbl_80A42524:
    beq     $zero, $zero, lbl_80A4253C 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f10                   
lbl_80A42530:
    nop
    bltz    t5, lbl_80A42524           
    nop
lbl_80A4253C:
    ctc1    t3, $f31                   
    addiu   t6, t5, 0x0001             # t6 = 00000000
    lui     $at, %hi(var_80A44A4C)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A42628 
    sb      t6, %lo(var_80A44A4C)($at) 
lbl_80A42550:
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A4262C               
    lw      a0, 0x0030($sp)            
    lw      v1, 0x0EC0(a2)             # 00000EC0
    addiu   t8, $zero, 0x0038          # t8 = 00000038
    lui     $at, %hi(var_80A458B8)     # $at = 80A40000
    andi    t4, v1, 0x0800             # t4 = 00000000
    bne     t4, $zero, lbl_80A42628    
    ori     t7, v1, 0x0800             # t7 = 00000800
    sw      t7, 0x0EC0(a2)             # 00000EC0
    sw      t8, 0x002C($sp)            
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A458B8)($at) 
    cfc1    t1, $f31                   
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    ctc1    t2, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f0                  
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80A425F8    
    mfc1    t2, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f16, $f0, $f16            
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80A425EC    
    nop
    mfc1    t2, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A42604 
    or      t2, t2, $at                # t2 = 80000000
lbl_80A425EC:
    beq     $zero, $zero, lbl_80A42604 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f16                   
lbl_80A425F8:
    nop
    bltz    t2, lbl_80A425EC           
    nop
lbl_80A42604:
    ctc1    t1, $f31                   
    addiu   t5, t2, 0x0001             # t5 = 00000000
    lui     $at, %hi(var_80A44A4C)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A42628 
    sb      t5, %lo(var_80A44A4C)($at) 
lbl_80A42618:
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t9, $zero, 0x0055          # t9 = 00000055
    sw      t9, 0x002C($sp)            
    swc1    $f18, 0x0000(v0)           # 00000000
lbl_80A42628:
    lw      a0, 0x0030($sp)            
lbl_80A4262C:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    sw      $zero, 0x0118(a0)          # 00000118
    lw      a2, 0x002C($sp)            
    lw      a1, 0x0034($sp)            
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      t4, 0x0030($sp)            
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    sh      t6, 0x014C(t4)             # 0000014C
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
var_80A42660:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      t7, 0x0030($sp)            
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t7)          # 0000014C
var_80A4269C:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_80A42854    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addu    v0, v0, a0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    lw      t8, 0x0030($sp)            
    beq     v0, $zero, lbl_80A426FC    
    nop
    beq     v0, t0, lbl_80A42704       
    lui     t1, %hi(var_80A47EF4)      # t1 = 80A40000
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
lbl_80A426FC:
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t8)          # 0000014C
lbl_80A42704:
    lhu     t1, %lo(var_80A47EF4)(t1)  
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    bne     t1, $zero, lbl_80A42724    
    nop
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4085          # a1 = 00004085
    beq     $zero, $zero, lbl_80A4273C 
    lw      t5, 0x0030($sp)            
lbl_80A42724:
    lbu     t2, %lo(var_80A47EE5)(t2)  
    bnel    t0, t2, lbl_80A4273C       
    lw      t5, 0x0030($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4092          # a1 = 00004092
    lw      t5, 0x0030($sp)            
lbl_80A4273C:
    addiu   t3, $zero, 0x0016          # t3 = 00000016
    beq     $zero, $zero, lbl_80A42850 
    sh      t3, 0x014C(t5)             # 0000014C
var_80A42748:
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80A42850    
    lw      t9, 0x0030($sp)            
    lui     v0, %hi(var_80A44A6C)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A44A6C)  # v0 = 80A44A6C
    sh      $zero, 0x014C(t9)          # 0000014C
    lbu     t6, 0x0000(v0)             # 80A44A6C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    beql    t6, $zero, lbl_80A42788    
    lw      t7, 0x0034($sp)            
    sb      t4, %lo(var_80A44A68)($at) 
    sb      $zero, 0x0000(v0)          # 80A44A6C
    lw      t7, 0x0034($sp)            
lbl_80A42788:
    lui     $at, %hi(var_80A47F1C)     # $at = 80A40000
    sh      $zero, %lo(var_80A47F1C)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t7               
    beq     $zero, $zero, lbl_80A42850 
    sb      $zero, 0x0750($at)         # 00010750
var_80A427A0:
    lui     $at, %hi(var_80A44A54)     # $at = 80A40000
    sb      $zero, %lo(var_80A44A54)($at) 
    lw      a0, 0x0030($sp)            
    jal     func_80022BB0              
    lw      a1, 0x0034($sp)            
    beq     v0, $zero, lbl_80A427CC    
    lw      a0, 0x0030($sp)            
    lw      t1, 0x0030($sp)            
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    beq     $zero, $zero, lbl_80A42850 
    sh      t8, 0x014C(t1)             # 0000014C
lbl_80A427CC:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    lw      a1, 0x0034($sp)            
    addiu   a2, $zero, 0x0038          # a2 = 00000038
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4              
    swc1    $f6, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A42854 
    lw      $ra, 0x001C($sp)           
var_80A427F0:
    lw      a0, 0x0034($sp)            
    lui     $at, %hi(var_80A44A54)     # $at = 80A40000
    sb      $zero, %lo(var_80A44A54)($at) 
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A42854      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0034($sp)            
    beq     v0, $zero, lbl_80A42850    
    lui     t2, %hi(var_80A47EEC)      # t2 = 80A40000
    lbu     t2, %lo(var_80A47EEC)(t2)  
    lw      t3, 0x0030($sp)            
    lw      a0, 0x0034($sp)            
    bne     t2, $zero, lbl_80A4283C    
    addiu   a1, $zero, 0x409C          # a1 = 0000409C
    beq     $zero, $zero, lbl_80A42850 
    sh      $zero, 0x014C(t3)          # 0000014C
lbl_80A4283C:
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t9, 0x0030($sp)            
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sh      t5, 0x014C(t9)             # 0000014C
lbl_80A42850:
    lw      $ra, 0x001C($sp)           
lbl_80A42854:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A42860:
    addiu   $sp, $sp, 0xFEE8           # $sp = FFFFFEE8
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0118($sp)            
    lw      v0, 0x1C44(s0)             # 00001C44
    lui     $at, %hi(var_80A458BC)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A458BC)($at) 
    lbu     t6, 0x00C8(v0)             # 000000C8
    addiu   a0, $sp, 0x00E8            # a0 = FFFFFFD0
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    sh      t6, 0x00E8($sp)            
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f2, 0x002C(v0)            # 0000002C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f4, $f0, $f0              
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    mul.s   $f6, $f2, $f2              
    add.s   $f8, $f4, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80A428DC               
    nop
    addiu   a0, $sp, 0x00E8            # a0 = FFFFFFD0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    jal     func_80064624              
    sw      v0, 0x00D4($sp)            
    beq     $zero, $zero, lbl_80A428E8 
    lh      t7, 0x00E8($sp)            
lbl_80A428DC:
    jal     func_80064624              
    sw      v0, 0x00D4($sp)            
    lh      t7, 0x00E8($sp)            
lbl_80A428E8:
    lw      t8, 0x00D4($sp)            
    sb      t7, 0x00C8(t8)             # 000000C8
    lw      a0, 0x0118($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x01C8             # a0 = 000001C8
    lui     t9, %hi(var_80A44A64)      # t9 = 80A40000
    lh      t9, %lo(var_80A44A64)(t9)  
    bnel    t9, $zero, lbl_80A42920    
    lw      v0, 0x0118($sp)            
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    beq     v0, $zero, lbl_80A42934    
    lw      t3, 0x0118($sp)            
    lw      v0, 0x0118($sp)            
lbl_80A42920:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t1, 0x0004(v0)             # 00000004
    and     t2, t1, $at                
    beq     $zero, $zero, lbl_80A42944 
    sw      t2, 0x0004(v0)             # 00000004
lbl_80A42934:
    lw      t4, 0x0004(t3)             # 00000004
    ori     t5, t4, 0x0021             # t5 = 00000021
    sw      t5, 0x0004(t3)             # 00000004
    lw      v0, 0x0118($sp)            
lbl_80A42944:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(v0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1tl   lbl_80A42978               
    lh      t6, 0x00B6(v0)             # 000000B6
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    beq     v0, $zero, lbl_80A4298C    
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v0, 0x0118($sp)            
    lh      t6, 0x00B6(v0)             # 000000B6
lbl_80A42978:
    lh      t7, 0x008A(v0)             # 0000008A
    subu    a1, t6, t7                 
    sll     a1, a1, 16                 
    beq     $zero, $zero, lbl_80A42990 
    sra     a1, a1, 16                 
lbl_80A4298C:
    lw      v0, 0x0118($sp)            
lbl_80A42990:
    slti    $at, a1, 0x2711            
    bne     $at, $zero, lbl_80A429A4   
    addiu   a0, v0, 0x0154             # a0 = 00000154
    beq     $zero, $zero, lbl_80A429B4 
    addiu   a1, $zero, 0x2710          # a1 = 00002710
lbl_80A429A4:
    slti    $at, a1, 0xD8F0            
    beql    $at, $zero, lbl_80A429B8   
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a1, $zero, 0xD8F0          # a1 = FFFFD8F0
lbl_80A429B4:
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_80A429B8:
    jal     func_80064624              
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    lui     $at, 0x0001                # $at = 00010000
    addu    t8, s0, $at                
    sw      t8, 0x002C($sp)            
    lw      t1, 0x1DE4(t8)             # 00001DE4
    andi    t2, t1, 0x001F             # t2 = 00000000
    bnel    t2, $zero, lbl_80A42A0C    
    lw      a3, 0x0118($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A458C0)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A458C0)($at) 
    lw      a3, 0x0118($sp)            
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80A42A0C               
    lw      a3, 0x0118($sp)            
    sh      t4, 0x0152(a3)             # 00000152
    lw      a3, 0x0118($sp)            
lbl_80A42A0C:
    lui     t3, %hi(var_80A453A4)      # t3 = 80A40000
    lui     v1, %hi(var_80A44A6C)      # v1 = 80A40000
    lh      v0, 0x0152(a3)             # 00000152
    addiu   v1, v1, %lo(var_80A44A6C)  # v1 = 80A44A6C
    lui     $at, %hi(var_80A44A64)     # $at = 80A40000
    sll     t5, v0,  1                 
    addu    t3, t3, t5                 
    lh      t3, %lo(var_80A453A4)(t3)  
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_80A42A3C    
    sh      t3, 0x0150(a3)             # 00000150
    sh      t6, 0x0152(a3)             # 00000152
lbl_80A42A3C:
    lui     v0, %hi(var_80A44A64)      # v0 = 80A40000
    lh      v0, %lo(var_80A44A64)(v0)  
    lui     t9, %hi(var_80A47F26)      # t9 = 80A40000
    beq     v0, $zero, lbl_80A42A54    
    addiu   t7, v0, 0xFFFF             # t7 = 80A3FFFF
    sh      t7, %lo(var_80A44A64)($at) 
lbl_80A42A54:
    lbu     t8, 0x0000(v1)             # 80A44A6C
    bne     t8, $zero, lbl_80A42B28    
    nop
    lbu     t9, %lo(var_80A47F26)(t9)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t1, %hi(var_80A44A74)      # t1 = 80A40000
    beq     t9, $at, lbl_80A42B28      
    nop
    lh      t1, %lo(var_80A44A74)(t1)  
    lui     t2, %hi(var_80A44A68)      # t2 = 80A40000
    blez    t1, lbl_80A42B28           
    nop
    lbu     t2, %lo(var_80A44A68)(t2)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t4, %hi(var_80A44A64)      # t4 = 80A40000
    bne     t2, $at, lbl_80A42B28      
    nop
    lh      t4, %lo(var_80A44A64)(t4)  
    lui     v0, %hi(var_80A47F00)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F00)  # v0 = 80A47F00
    bne     t4, $zero, lbl_80A42B28    
    lui     $at, %hi(var_80A47F28)     # $at = 80A40000
    lwc1    $f10, 0x0000(v0)           # 80A47F00
    lwc1    $f4, %lo(var_80A47F28)($at) 
    lwc1    $f6, 0x0004(v0)            # 80A47F04
    lwc1    $f8, %lo(var_80A47F2C)($at) 
    sub.s   $f2, $f10, $f4             
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A47F30)($at) 
    sub.s   $f12, $f6, $f8             
    mul.s   $f6, $f2, $f2              
    lwc1    $f10, 0x0008(v0)           # 80A47F08
    lui     $at, 0x41C8                # $at = 41C80000
    mul.s   $f8, $f12, $f12            
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f14, $f10, $f4            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4087          # a1 = 00004087
    or      a2, $zero, $zero           # a2 = 00000000
    mul.s   $f4, $f14, $f14            
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f6                   # $f6 = 25.00
    lui     $at, %hi(var_80A44A68)     # $at = 80A40000
    add.s   $f0, $f10, $f4             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A42B28               
    nop
    sb      $zero, %lo(var_80A44A68)($at) 
    jal     func_800DCE14              
    sb      t5, 0x0000(v1)             # 80A44A6C
    lw      a3, 0x0118($sp)            
lbl_80A42B28:
    lui     v0, %hi(var_80A44A68)      # v0 = 80A40000
    lbu     v0, %lo(var_80A44A68)(v0)  
    lui     v1, %hi(var_80A44A5C)      # v1 = 80A40000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80A42B58    
    addiu   v1, v1, %lo(var_80A44A5C)  # v1 = 80A44A5C
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x4B70(t3)            # 8011B490
    lui     $at, 0x8012                # $at = 80120000
    ori     t6, t3, 0x1000             # t6 = 80121000
    beq     $zero, $zero, lbl_80A42B74 
    sw      t6, -0x4B70($at)           # 8011B490
lbl_80A42B58:
    bne     v0, $at, lbl_80A42B74      
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4B70(t7)            # 8011B490
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    and     t8, t7, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x4B70($at)           # 8011B490
lbl_80A42B74:
    lbu     v0, 0x0000(v1)             # 80A44A5C
    beq     v0, $zero, lbl_80A42BA4    
    addiu   t9, v0, 0xFFFF             # t9 = 80A3FFFF
    andi    t1, t9, 0x00FF             # t1 = 000000FF
    bne     t1, $zero, lbl_80A42BA4    
    sb      t9, 0x0000(v1)             # 80A44A5C
    lui     a1, %hi(var_80A47EF6)      # a1 = 80A40000
    lhu     a1, %lo(var_80A47EF6)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x0118($sp)            
lbl_80A42BA4:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A419DC              
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, %hi(var_80A458C4)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A458C4)($at) 
    lui     t2, %hi(var_80A44A60)      # t2 = 80A40000
    lw      t2, %lo(var_80A44A60)(t2)  
    lui     t5, %hi(var_80A47F1C)      # t5 = 80A40000
    lh      t5, %lo(var_80A47F1C)(t5)  
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    swc1    $f8, %lo(var_80A47FBC)($at) 
    lui     $at, %hi(var_80A44A60)     # $at = 80A40000
    addiu   t4, t2, 0x0001             # t4 = 80A40001
    beq     t5, $zero, lbl_80A42BFC    
    sw      t4, %lo(var_80A44A60)($at) 
    lui     t3, %hi(var_80A44A54)      # t3 = 80A40000
    lbu     t3, %lo(var_80A44A54)(t3)  
    lw      a0, 0x0118($sp)            
    beql    t3, $zero, lbl_80A42C00    
    lw      t6, 0x002C($sp)            
    jal     func_80A39268              
    or      a1, s0, $zero              # a1 = 00000000
lbl_80A42BFC:
    lw      t6, 0x002C($sp)            
lbl_80A42C00:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A35A28              
    lw      a0, 0x1E10(t6)             # 00001E10
    jal     func_80A4081C              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A40F1C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(var_80A47F1C)      # t7 = 80A40000
    lh      t7, %lo(var_80A47F1C)(t7)  
    lui     a0, %hi(var_80A44A4C)      # a0 = 80A40000
    lui     t8, %hi(var_80A44AAC)      # t8 = 80A40000
    beq     t7, $zero, lbl_80A42CB0    
    addiu   a0, a0, %lo(var_80A44A4C)  # a0 = 80A44A4C
    lbu     t8, %lo(var_80A44AAC)(t8)  
    lw      t0, 0x00D4($sp)            
    lui     $at, 0x44AA                # $at = 44AA0000
    bnel    t8, $zero, lbl_80A42CB4    
    lbu     v1, 0x0000(a0)             # 80A44A4C
    mtc1    $at, $f10                  # $f10 = 1360.00
    lwc1    $f4, 0x002C(t0)            # 0000002C
    c.lt.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A42CB4               
    lbu     v1, 0x0000(a0)             # 80A44A4C
    lwc1    $f0, 0x0024(t0)            # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    abs.s   $f0, $f0                   
    lui     $at, 0x44AA                # $at = 44AA0000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A42CB4               
    lbu     v1, 0x0000(a0)             # 80A44A4C
    mtc1    $at, $f8                   # $f8 = 1360.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     t9, %hi(var_80A44AB0)      # t9 = 80A40000
    swc1    $f8, 0x002C(t0)            # 0000002C
    swc1    $f10, 0x0068(t0)           # 00000068
    lbu     t9, %lo(var_80A44AB0)(t9)  
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    bnel    t9, $zero, lbl_80A42CB4    
    lbu     v1, 0x0000(a0)             # 80A44A4C
    sb      t1, %lo(var_80A44AAC)($at) 
lbl_80A42CB0:
    lbu     v1, 0x0000(a0)             # 80A44A4C
lbl_80A42CB4:
    lw      t0, 0x00D4($sp)            
    lui     t4, %hi(var_80A453BC)      # t4 = 80A40000
    beq     v1, $zero, lbl_80A42DA0    
    sll     t2, v1,  2                 
    subu    t2, t2, v1                 
    sll     t2, t2,  1                 
    addiu   t4, t4, %lo(var_80A453BC)  # t4 = 80A453BC
    addu    v0, t2, t4                 
    lh      t5, -0x0006(v0)            # FFFFFFFA
    lwc1    $f4, 0x0024(t0)            # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    t5, $f6                    # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 25.00
    cvt.s.w $f8, $f6                   
    sub.s   $f0, $f4, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80A42DA0               
    nop
    lh      t3, -0x0004(v0)            # FFFFFFFC
    lwc1    $f6, 0x0028(t0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    $at, $f10                  # $f10 = 10.00
    cvt.s.w $f8, $f4                   
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80A42DA0               
    nop
    lh      t6, -0x0002(v0)            # FFFFFFFE
    lwc1    $f4, 0x002C(t0)            # 0000002C
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 25.00
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    cvt.s.w $f8, $f6                   
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sub.s   $f0, $f4, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80A42DA0               
    nop
    sb      $zero, 0x0000(a0)          # 80A44A4C
    mtc1    $zero, $f12                # $f12 = 0.00
    sb      t7, %lo(var_80A44AAC)($at) 
    jal     func_8009151C              
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lui     a0, 0x1014                 # a0 = 10140000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 101400FF
    lw      t0, 0x00D4($sp)            
lbl_80A42DA0:
    lui     v0, %hi(var_80A44AB0)      # v0 = 80A40000
    lbu     v0, %lo(var_80A44AB0)(v0)  
    lui     v1, %hi(var_80A44AAC)      # v1 = 80A40000
    lbu     v1, %lo(var_80A44AAC)(v1)  
    beq     v0, $zero, lbl_80A42DC0    
    addiu   t8, v0, 0xFFFF             # t8 = 80A3FFFF
    lui     $at, %hi(var_80A44AB0)     # $at = 80A40000
    sb      t8, %lo(var_80A44AB0)($at) 
lbl_80A42DC0:
    slti    $at, v1, 0x0017            
    bne     $at, $zero, lbl_80A42DE0   
    or      v0, v1, $zero              # v0 = 80A40000
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beq     v1, $at, lbl_80A43ACC      
    nop
    beq     $zero, $zero, lbl_80A43ACC 
    nop
lbl_80A42DE0:
    sltiu   $at, v0, 0x0017            
    beq     $at, $zero, lbl_80A43ACC   
    sll     t9, v0,  2                 
    lui     $at, %hi(var_80A458C8)     # $at = 80A40000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80A458C8)($at) 
    jr      t9                         
    nop
var_80A42E00:
    jal     func_8009D0F0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      v0, %lo(var_80A49D34)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f6, 0x005C(v0)            # 0000005C
    lui     $at, %hi(var_80A49D18)     # $at = 80A50000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    swc1    $f6, %lo(var_80A49D18)($at) 
    lwc1    $f4, 0x0060(v0)            # 00000060
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    swc1    $f4, %lo(var_80A49D1C)($at) 
    lwc1    $f8, 0x0064(v0)            # 00000064
    lui     $at, %hi(var_80A49D20)     # $at = 80A50000
    swc1    $f8, %lo(var_80A49D20)($at) 
    lwc1    $f10, 0x0050(v0)           # 00000050
    lui     $at, %hi(var_80A49D28)     # $at = 80A50000
    swc1    $f10, %lo(var_80A49D28)($at) 
    lwc1    $f6, 0x0054(v0)            # 00000054
    swc1    $f6, %lo(var_80A49D2C)($at) 
    lwc1    $f4, 0x0058(v0)            # 00000058
    lui     $at, %hi(var_80A49D30)     # $at = 80A50000
    swc1    $f4, %lo(var_80A49D30)($at) 
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    jal     func_8006D8E0              
    sb      t1, %lo(var_80A44AAC)($at) 
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    swc1    $f8, %lo(var_80A49D3C)($at) 
var_80A42EA0:
    jal     func_80099620              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lw      t2, 0x00D4($sp)            
    lui     v0, %hi(var_80A47F28)      # v0 = 80A40000
    addiu   v0, v0, %lo(var_80A47F28)  # v0 = 80A47F28
    lwc1    $f10, 0x0000(v0)           # 80A47F28
    lwc1    $f6, 0x0024(t2)            # 00000024
    lwc1    $f8, 0x0008(v0)            # 80A47F30
    sub.s   $f4, $f10, $f6             
    swc1    $f4, 0x00EC($sp)           
    lwc1    $f10, 0x002C(t2)           # 0000002C
    lwc1    $f14, 0x00EC($sp)          
    sub.s   $f6, $f8, $f10             
    mul.s   $f8, $f14, $f14            
    swc1    $f6, 0x00F4($sp)           
    lwc1    $f12, 0x00F4($sp)          
    mul.s   $f6, $f12, $f12            
    add.s   $f0, $f8, $f6              
    sqrt.s  $f0, $f0                   
    jal     func_800AA670              
    swc1    $f0, 0x00DC($sp)           
    mov.s   $f12, $f0                  
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f6                   # $f6 = 100.00
    addiu   a0, $sp, 0x0104            # a0 = FFFFFFEC
    addiu   a1, $sp, 0x00EC            # a1 = FFFFFFD4
    swc1    $f8, 0x0104($sp)           
    swc1    $f2, 0x0108($sp)           
    jal     func_800AB958              
    swc1    $f6, 0x010C($sp)           
    lui     t4, %hi(var_80A44A74)      # t4 = 80A40000
    lh      t4, %lo(var_80A44A74)(t4)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lwc1    $f14, 0x00EC($sp)          
    bne     t4, $at, lbl_80A42F48      
    lui     $at, %hi(var_80A45924)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A42F50 
    lwc1    $f2, %lo(var_80A45924)($at) 
lbl_80A42F48:
    lui     $at, %hi(var_80A45928)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A45928)($at) 
lbl_80A42F50:
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A49D3C)($at) 
    abs.s   $f0, $f14                  
    lui     a0, %hi(var_80A49D28)      # a0 = 80A50000
    mul.s   $f4, $f0, $f10             
    lui     a1, %hi(var_80A47F28)      # a1 = 80A40000
    mfc1    a2, $f2                    
    lw      a1, %lo(var_80A47F28)(a1)  
    addiu   a0, a0, %lo(var_80A49D28)  # a0 = 80A49D28
    swc1    $f2, 0x00E0($sp)           
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f6, %lo(var_80A49D3C)($at) 
    lwc1    $f2, 0x00E0($sp)           
    lui     a0, %hi(var_80A49D2C)      # a0 = 80A50000
    mul.s   $f10, $f8, $f6             
    lui     a1, %hi(var_80A47F2C)      # a1 = 80A40000
    mfc1    a2, $f2                    
    lw      a1, %lo(var_80A47F2C)(a1)  
    addiu   a0, a0, %lo(var_80A49D2C)  # a0 = 80A49D2C
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f16, 0x00F4($sp)          
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A49D3C)($at) 
    abs.s   $f0, $f16                  
    lwc1    $f2, 0x00E0($sp)           
    mul.s   $f8, $f0, $f4              
    lui     a0, %hi(var_80A49D30)      # a0 = 80A50000
    lui     a1, %hi(var_80A47F30)      # a1 = 80A40000
    mfc1    a2, $f2                    
    lw      a1, %lo(var_80A47F30)(a1)  
    addiu   a0, a0, %lo(var_80A49D30)  # a0 = 80A49D30
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     $at, %hi(var_80A49D40)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A49D40)($at) 
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     t5, %hi(var_80A47EE5)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47EE5)(t5)  
    sub.s   $f4, $f6, $f10             
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $sp, 0x0104            # a0 = FFFFFFEC
    beq     t5, $at, lbl_80A4302C      
    swc1    $f4, 0x0104($sp)           
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f2                   # $f2 = 80.00
    beq     $zero, $zero, lbl_80A4303C 
    swc1    $f2, 0x0108($sp)           
lbl_80A4302C:
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f2                   # $f2 = 55.00
    nop
    swc1    $f2, 0x0108($sp)           
lbl_80A4303C:
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $at, $f8                   # $f8 = -80.00
    addiu   a1, $sp, 0x00F8            # a1 = FFFFFFE0
    jal     func_800AB958              
    swc1    $f8, 0x010C($sp)           
    lw      t3, 0x00D4($sp)            
    lwc1    $f6, 0x00F8($sp)           
    lwc1    $f8, 0x00FC($sp)           
    lwc1    $f10, 0x0024(t3)           # 00000024
    lui     a0, %hi(var_80A49D40)      # a0 = 80A50000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    add.s   $f4, $f6, $f10             
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    swc1    $f4, 0x00F8($sp)           
    lwc1    $f6, 0x0028(t3)            # 00000028
    lwc1    $f4, 0x0100($sp)           
    addiu   a0, a0, %lo(var_80A49D40)  # a0 = 80A49D40
    add.s   $f10, $f8, $f6             
    lui     a1, 0x41F0                 # a1 = 41F00000
    swc1    $f10, 0x00FC($sp)          
    lwc1    $f8, 0x002C(t3)            # 0000002C
    add.s   $f6, $f4, $f8              
    jal     func_80064280              
    swc1    $f6, 0x0100($sp)           
    lhu     t6, 0x0020(s0)             # 00000020
    addiu   $at, $zero, 0x2000         # $at = 00002000
    lui     v1, %hi(var_80A47EF8)      # v1 = 80A40000
    andi    t7, t6, 0x2000             # t7 = 00000000
    bne     t7, $at, lbl_80A43120      
    addiu   v1, v1, %lo(var_80A47EF8)  # v1 = 80A47EF8
    lb      v0, 0x0000(v1)             # 80A47EF8
    lui     t8, %hi(var_80A47F92)      # t8 = 80A40000
    bltz    v0, lbl_80A43120           
    nop
    lh      t8, %lo(var_80A47F92)(t8)  
    addiu   t9, v0, 0x0001             # t9 = 00000001
    bne     t8, $zero, lbl_80A43120    
    nop
    sb      t9, 0x0000(v1)             # 80A47EF8
    lb      v0, 0x0000(v1)             # 80A47EF8
    slti    $at, v0, 0x0004            
    bne     $at, $zero, lbl_80A430F8   
    nop
    sb      $zero, 0x0000(v1)          # 80A47EF8
    lb      v0, 0x0000(v1)             # 80A47EF8
lbl_80A430F8:
    beq     v0, $zero, lbl_80A43108    
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80A43118      
    nop
lbl_80A43108:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4814          # a0 = 00004814
    beq     $zero, $zero, lbl_80A43120 
    nop
lbl_80A43118:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4813          # a0 = 00004813
lbl_80A43120:
    lui     t1, %hi(var_80A44A74)      # t1 = 80A40000
    lh      t1, %lo(var_80A44A74)(t1)  
    lui     v1, %hi(var_80A47EF8)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47EF8)  # v1 = 80A47EF8
    slti    $at, t1, 0x0003            
    bne     $at, $zero, lbl_80A43190   
    addiu   a0, $sp, 0x0104            # a0 = FFFFFFEC
    lui     $at, 0x42DC                # $at = 42DC0000
    lwc1    $f0, 0x00DC($sp)           
    mtc1    $at, $f10                  # $f10 = 110.00
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A4316C               
    mtc1    $at, $f4                   # $f4 = 300.00
    beq     $zero, $zero, lbl_80A43190 
    sb      t2, 0x0000(v1)             # 80A47EF8
    mtc1    $at, $f4                   # $f4 = 300.00
lbl_80A4316C:
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A43194               
    lb      v0, 0x0000(v1)             # 80A47EF8
    lb      t4, 0x0000(v1)             # 80A47EF8
    bgezl   t4, lbl_80A43194           
    lb      v0, 0x0000(v1)             # 80A47EF8
    sb      $zero, 0x0000(v1)          # 80A47EF8
lbl_80A43190:
    lb      v0, 0x0000(v1)             # 80A47EF8
lbl_80A43194:
    lwc1    $f14, 0x00EC($sp)          
    lwc1    $f16, 0x00F4($sp)          
    blez    v0, lbl_80A43288           
    addiu   a1, $sp, 0x00EC            # a1 = FFFFFFD4
    mul.s   $f8, $f14, $f14            
    lui     $at, %hi(var_80A4592C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A4592C)($at) 
    mul.s   $f6, $f16, $f16            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f0, $f8, $f6              
    sqrt.s  $f0, $f0                   
    mul.s   $f12, $f0, $f10            
    c.lt.s  $f4, $f12                  
    nop
    bc1fl   lbl_80A431E8               
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mtc1    $at, $f12                  # $f12 = 0.00
    nop
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A431E8:
    bne     v0, $at, lbl_80A431F8      
    lui     $at, %hi(var_80A45930)     # $at = 80A40000
    beq     $zero, $zero, lbl_80A43200 
    lwc1    $f2, %lo(var_80A45930)($at) 
lbl_80A431F8:
    lui     $at, %hi(var_80A45934)     # $at = 80A40000
    lwc1    $f2, %lo(var_80A45934)($at) 
lbl_80A43200:
    lui     $at, %hi(var_80A45938)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45938)($at) 
    lui     $at, %hi(var_80A4593C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A4593C)($at) 
    add.s   $f6, $f8, $f2              
    lui     $at, %hi(var_80A47F28)     # $at = 80A40000
    mul.s   $f4, $f12, $f10            
    lwc1    $f16, 0x00F8($sp)          
    lwc1    $f8, %lo(var_80A47F28)($at) 
    lwc1    $f14, 0x00FC($sp)          
    lwc1    $f18, 0x0100($sp)          
    sub.s   $f10, $f8, $f16            
    add.s   $f0, $f6, $f4              
    lwc1    $f4, %lo(var_80A47F2C)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f6, $f10, $f0             
    sub.s   $f8, $f4, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f16, $f6            
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, %hi(var_80A47F30)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A47F30)($at) 
    lui     $at, %hi(var_80A45940)     # $at = 80A40000
    add.s   $f4, $f10, $f6             
    sub.s   $f10, $f8, $f18            
    add.s   $f14, $f14, $f4            
    mul.s   $f6, $f10, $f0             
    lwc1    $f4, %lo(var_80A45940)($at) 
    lui     $at, %hi(var_80A47FBC)     # $at = 80A40000
    swc1    $f4, %lo(var_80A47FBC)($at) 
    add.s   $f18, $f18, $f6            
    swc1    $f14, 0x00FC($sp)          
    swc1    $f16, 0x00F8($sp)          
    swc1    $f18, 0x0100($sp)          
lbl_80A43288:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f10                  # $f10 = 100.00
    swc1    $f8, 0x0104($sp)           
    swc1    $f2, 0x0108($sp)           
    jal     func_800AB958              
    swc1    $f10, 0x010C($sp)          
    lwc1    $f14, 0x00EC($sp)          
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f6, %lo(var_80A49D3C)($at) 
    abs.s   $f0, $f14                  
    lwc1    $f16, 0x00F8($sp)          
    mul.s   $f4, $f0, $f6              
    lui     a0, %hi(var_80A49D18)      # a0 = 80A50000
    lui     a2, 0x3E99                 # a2 = 3E990000
    mfc1    a1, $f16                   
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_80A49D18)  # a0 = 80A49D18
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A49D3C)($at) 
    lwc1    $f14, 0x00FC($sp)          
    lui     a0, %hi(var_80A49D1C)      # a0 = 80A50000
    mul.s   $f6, $f8, $f10             
    lui     a2, 0x3E99                 # a2 = 3E990000
    mfc1    a1, $f14                   
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_80A49D1C)  # a0 = 80A49D1C
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lwc1    $f16, 0x00F4($sp)          
    lui     $at, %hi(var_80A49D3C)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A49D3C)($at) 
    abs.s   $f0, $f16                  
    lwc1    $f18, 0x0100($sp)          
    mul.s   $f8, $f0, $f4              
    lui     a0, %hi(var_80A49D20)      # a0 = 80A50000
    lui     a2, 0x3E99                 # a2 = 3E990000
    mfc1    a1, $f18                   
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_80A49D20)  # a0 = 80A49D20
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    beq     $zero, $zero, lbl_80A43ACC 
    lw      t0, 0x00D4($sp)            
var_80A43358:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t5, %hi(var_80A49D18)      # t5 = 80A50000
    addiu   t5, t5, %lo(var_80A49D18)  # t5 = 80A49D18
    lw      t6, 0x0000(t5)             # 80A49D18
    lui     t7, %hi(var_80A49D18)      # t7 = 80A50000
    addiu   t7, t7, %lo(var_80A49D18)  # t7 = 80A49D18
    sw      t6, 0x005C(v0)             # 0000005C
    lw      t3, 0x0004(t5)             # 80A49D1C
    lui     t1, %hi(var_80A49D28)      # t1 = 80A50000
    addiu   t1, t1, %lo(var_80A49D28)  # t1 = 80A49D28
    sw      t3, 0x0060(v0)             # 00000060
    lw      t6, 0x0008(t5)             # 80A49D20
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    sw      t6, 0x0064(v0)             # 00000064
    lw      t9, 0x0000(t7)             # 80A49D18
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x0074(v0)             # 00000074
    lw      t8, 0x0004(t7)             # 80A49D1C
    sw      t8, 0x0078(v0)             # 00000078
    lw      t9, 0x0008(t7)             # 80A49D20
    sw      t9, 0x007C(v0)             # 0000007C
    lw      t4, 0x0000(t1)             # 80A49D28
    sw      t4, 0x0050(v0)             # 00000050
    lw      t2, 0x0004(t1)             # 80A49D2C
    sw      t2, 0x0054(v0)             # 00000054
    lw      t4, 0x0008(t1)             # 80A49D30
    sw      t4, 0x0058(v0)             # 00000058
    jal     func_8009D718              
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052340              
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      $zero, %lo(var_80A44AAC)($at) 
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      $zero, %lo(var_80A49D34)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005D2B4              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      $zero, 0x0AC2($at)         # 00010AC2
    lw      t3, 0x00D4($sp)            
    addiu   t5, $zero, 0xFFFB          # t5 = FFFFFFFB
    lui     $at, %hi(var_80A47F20)     # $at = 80A40000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t5, 0x0850(t3)             # 00000850
    sh      t6, %lo(var_80A47F20)($at) 
    beq     $zero, $zero, lbl_80A43ACC 
    lw      t0, 0x00D4($sp)            
var_80A4342C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      v0, %lo(var_80A49D34)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0118($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f10, 0x005C(v0)           # 0000005C
    lui     $at, %hi(var_80A49D18)     # $at = 80A50000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, %lo(var_80A49D18)($at) 
    lwc1    $f6, 0x0060(v0)            # 00000060
    addiu   a1, $zero, 0x409E          # a1 = 0000409E
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f6, %lo(var_80A49D1C)($at) 
    lwc1    $f4, 0x0064(v0)            # 00000064
    lui     $at, %hi(var_80A49D20)     # $at = 80A50000
    swc1    $f4, %lo(var_80A49D20)($at) 
    lwc1    $f8, 0x0050(v0)            # 00000050
    lui     $at, %hi(var_80A49D28)     # $at = 80A50000
    swc1    $f8, %lo(var_80A49D28)($at) 
    lwc1    $f10, 0x0054(v0)           # 00000054
    swc1    $f10, %lo(var_80A49D2C)($at) 
    lwc1    $f6, 0x0058(v0)            # 00000058
    lui     $at, %hi(var_80A49D30)     # $at = 80A50000
    jal     func_800DCE14              
    swc1    $f6, %lo(var_80A49D30)($at) 
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    mtc1    $zero, $f12                # $f12 = 0.00
    sb      t7, %lo(var_80A44AAC)($at) 
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_8009151C              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      t0, 0x00D4($sp)            
var_80A434FC:
    lui     $at, 0x44AA                # $at = 44AA0000
    mtc1    $at, $f4                   # $f4 = 1360.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    swc1    $f4, 0x002C(t0)            # 0000002C
    jal     func_800DD464              
    swc1    $f8, 0x0068(t0)            # 00000068
    bne     v0, $zero, lbl_80A435EC    
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, s0, 0x1D64             # t8 = 00001D64
    sw      t8, 0x0034($sp)            
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     v1, %hi(var_80A49D18)      # v1 = 80A50000
    addiu   v1, v1, %lo(var_80A49D18)  # v1 = 80A49D18
    lw      t1, 0x0000(v1)             # 80A49D18
    lui     t5, %hi(var_80A49D28)      # t5 = 80A50000
    addiu   t5, t5, %lo(var_80A49D28)  # t5 = 80A49D28
    sw      t1, 0x005C(v0)             # 0000005C
    lw      t9, 0x0004(v1)             # 80A49D1C
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t9, 0x0060(v0)             # 00000060
    lw      t1, 0x0008(v1)             # 80A49D20
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t1, 0x0064(v0)             # 00000064
    lw      t4, 0x0000(v1)             # 80A49D18
    sw      t4, 0x0074(v0)             # 00000074
    lw      t2, 0x0004(v1)             # 80A49D1C
    sw      t2, 0x0078(v0)             # 00000078
    lw      t4, 0x0008(v1)             # 80A49D20
    sw      t4, 0x007C(v0)             # 0000007C
    lw      t6, 0x0000(t5)             # 80A49D28
    sw      t6, 0x0050(v0)             # 00000050
    lw      t3, 0x0004(t5)             # 80A49D2C
    sw      t3, 0x0054(v0)             # 00000054
    lw      t6, 0x0008(t5)             # 80A49D30
    sw      t6, 0x0058(v0)             # 00000058
    jal     func_8009D718              
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052340              
    lw      a1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0118($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      $zero, %lo(var_80A44AAC)($at) 
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      $zero, %lo(var_80A49D34)($at) 
    lui     $at, %hi(var_80A44AB0)     # $at = 80A40000
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sb      t7, %lo(var_80A44AB0)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005D2B4              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      $zero, 0x0AC2($at)         # 00010AC2
lbl_80A435EC:
    beq     $zero, $zero, lbl_80A43ACC 
    lw      t0, 0x00D4($sp)            
var_80A435F4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      v0, %lo(var_80A49D34)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0118($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f10, 0x005C(v0)           # 0000005C
    lui     v1, %hi(var_80A49D18)      # v1 = 80A50000
    addiu   v1, v1, %lo(var_80A49D18)  # v1 = 80A49D18
    swc1    $f10, 0x0000(v1)           # 80A49D18
    lwc1    $f6, 0x0060(v0)            # 00000060
    lui     a3, %hi(var_80A49D28)      # a3 = 80A50000
    addiu   a3, a3, %lo(var_80A49D28)  # a3 = 80A49D28
    swc1    $f6, 0x0004(v1)            # 80A49D1C
    lwc1    $f4, 0x0064(v0)            # 00000064
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x409A          # a1 = 0000409A
    swc1    $f4, 0x0008(v1)            # 80A49D20
    lwc1    $f8, 0x0050(v0)            # 00000050
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f8, 0x0000(a3)            # 80A49D28
    lwc1    $f10, 0x0054(v0)           # 00000054
    swc1    $f10, 0x0004(a3)           # 80A49D2C
    lwc1    $f6, 0x0058(v0)            # 00000058
    jal     func_800DCE14              
    swc1    $f6, 0x0008(a3)            # 80A49D30
    addiu   t8, $zero, 0x0015          # t8 = 00000015
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      t8, %lo(var_80A44AAC)($at) 
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    lui     $at, %hi(var_80A49D38)     # $at = 80A50000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    swc1    $f4, %lo(var_80A49D38)($at) 
    lui     $at, %hi(var_80A44AB0)     # $at = 80A40000
    sb      t9, %lo(var_80A44AB0)($at) 
var_80A436C8:
    lui     t1, %hi(var_80A44AB0)      # t1 = 80A40000
    lbu     t1, %lo(var_80A44AB0)(t1)  
    bne     t1, $zero, lbl_80A43718    
    nop
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A43718    
    addiu   t2, $zero, 0x0016          # t2 = 00000016
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      t2, %lo(var_80A44AAC)($at) 
    lui     $at, %hi(var_80A44AB0)     # $at = 80A40000
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    sb      t4, %lo(var_80A44AB0)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0118($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x001C          # a2 = 0000001C
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80A49D54)     # $at = 80A50000
    swc1    $f8, %lo(var_80A49D54)($at) 
lbl_80A43718:
    beq     $zero, $zero, lbl_80A43ACC 
    lw      t0, 0x00D4($sp)            
var_80A43720:
    lui     t5, %hi(var_80A44AB0)      # t5 = 80A40000
    lbu     t5, %lo(var_80A44AB0)(t5)  
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    t5, $at, lbl_80A43740      
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0922          # a0 = 00000922
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80A43740:
    lui     $at, %hi(var_80A44AB4)     # $at = 80A40000
    lui     a0, %hi(var_80A49D54)      # a0 = 80A50000
    sb      t3, %lo(var_80A44AB4)($at) 
    addiu   a0, a0, %lo(var_80A49D54)  # a0 = 80A49D54
    lui     a1, 0x428E                 # a1 = 428E0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4040                 # a3 = 40400000
    lw      t6, 0x00D4($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    lh      t7, 0x00B6(t6)             # 000000B6
    lui     $at, %hi(var_80A45944)     # $at = 80A40000
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    lwc1    $f10, %lo(var_80A45944)($at) 
    div.s   $f8, $f6, $f4              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAB94              
    nop
    lw      t8, 0x002C($sp)            
    lw      a0, 0x1DE4(t8)             # 00001DE4
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A49D54)     # $at = 80A50000
    lwc1    $f2, %lo(var_80A49D54)($at) 
    lui     $at, 0xC0A0                # $at = C0A00000
    lui     t9, %hi(var_80A47EE5)      # t9 = 80A40000
    mtc1    $at, $f6                   # $f6 = -5.00
    lbu     t9, %lo(var_80A47EE5)(t9)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f0, 0x0104($sp)           
    swc1    $f2, 0x0108($sp)           
    bne     t9, $at, lbl_80A437F0      
    swc1    $f6, 0x010C($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    sub.s   $f2, $f2, $f4              
    swc1    $f2, 0x0108($sp)           
lbl_80A437F0:
    addiu   a0, $sp, 0x0104            # a0 = FFFFFFEC
    jal     func_800AB958              
    addiu   a1, $sp, 0x00F8            # a1 = FFFFFFE0
    lw      t1, 0x00D4($sp)            
    lwc1    $f10, 0x00F8($sp)          
    lw      t2, 0x00D4($sp)            
    lwc1    $f8, 0x0024(t1)            # 00000024
    lui     v0, %hi(var_80A49D48)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A49D48)  # v0 = 80A49D48
    add.s   $f6, $f8, $f10             
    lwc1    $f8, 0x00FC($sp)           
    lw      t4, 0x00D4($sp)            
    lui     a0, %hi(var_80A49D38)      # a0 = 80A50000
    swc1    $f6, 0x0000(v0)            # 80A49D48
    lwc1    $f4, 0x0028(t2)            # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f10, $f4, $f8             
    lwc1    $f4, 0x0100($sp)           
    addiu   a0, a0, %lo(var_80A49D38)  # a0 = 80A49D38
    lui     a1, 0x4170                 # a1 = 41700000
    swc1    $f10, 0x0004(v0)           # 80A49D4C
    lwc1    $f6, 0x002C(t4)            # 0000002C
    lui     a3, 0x3F40                 # a3 = 3F400000
    add.s   $f8, $f6, $f4              
    jal     func_80064280              
    swc1    $f8, 0x0008(v0)            # 80A49D50
    lui     $at, %hi(var_80A49D38)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A49D38)($at) 
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     t5, %hi(var_80A47EE5)      # t5 = 80A40000
    lbu     t5, %lo(var_80A47EE5)(t5)  
    sub.s   $f4, $f10, $f6             
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $sp, 0x0104            # a0 = FFFFFFEC
    beq     t5, $at, lbl_80A438A4      
    swc1    $f4, 0x0104($sp)           
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f8                   # $f8 = -30.00
    swc1    $f2, 0x0108($sp)           
    beq     $zero, $zero, lbl_80A438BC 
    swc1    $f8, 0x010C($sp)           
lbl_80A438A4:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0xC20C                # $at = C20C0000
    mtc1    $at, $f10                  # $f10 = -35.00
    swc1    $f2, 0x0108($sp)           
    swc1    $f10, 0x010C($sp)          
lbl_80A438BC:
    lui     a1, %hi(var_80A49D18)      # a1 = 80A50000
    jal     func_800AB958              
    addiu   a1, a1, %lo(var_80A49D18)  # a1 = 80A49D18
    lw      t3, 0x00D4($sp)            
    lui     v0, %hi(var_80A49D18)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A49D18)  # v0 = 80A49D18
    lwc1    $f6, 0x0000(v0)            # 80A49D18
    lwc1    $f4, 0x0024(t3)            # 00000024
    lw      t6, 0x00D4($sp)            
    lwc1    $f10, 0x0004(v0)           # 80A49D1C
    add.s   $f8, $f6, $f4              
    lw      t7, 0x00D4($sp)            
    lw      t8, 0x00D4($sp)            
    lui     v1, %hi(var_80A49D28)      # v1 = 80A50000
    swc1    $f8, 0x0000(v0)            # 80A49D18
    lwc1    $f6, 0x0028(t6)            # 00000028
    lwc1    $f8, 0x0008(v0)            # 80A49D20
    addiu   v1, v1, %lo(var_80A49D28)  # v1 = 80A49D28
    add.s   $f4, $f10, $f6             
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t4, %hi(var_80A44AB0)      # t4 = 80A40000
    swc1    $f4, 0x0004(v0)            # 80A49D1C
    lwc1    $f10, 0x002C(t7)           # 0000002C
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    add.s   $f6, $f8, $f10             
    swc1    $f6, 0x0008(v0)            # 80A49D20
    lw      t1, 0x0024(t8)             # 00000024
    sw      t1, 0x0000(v1)             # 80A49D28
    lw      t9, 0x0028(t8)             # 00000028
    sw      t9, 0x0004(v1)             # 80A49D2C
    lw      t1, 0x002C(t8)             # 0000002C
    sw      t1, 0x0008(v1)             # 80A49D30
    lbu     t2, %lo(var_80A47EE5)(t2)  
    beq     t2, $at, lbl_80A43960      
    lui     $at, 0x4278                # $at = 42780000
    mtc1    $at, $f8                   # $f8 = 62.00
    lwc1    $f4, 0x0004(v1)            # 80A49D2C
    add.s   $f10, $f4, $f8             
    beq     $zero, $zero, lbl_80A43974 
    swc1    $f10, 0x0004(v1)           # 80A49D2C
lbl_80A43960:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f6, 0x0004(v1)            # 80A49D2C
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x0004(v1)            # 80A49D2C
lbl_80A43974:
    lbu     t4, %lo(var_80A44AB0)(t4)  
    bnel    t4, $zero, lbl_80A43ACC    
    lw      t0, 0x00D4($sp)            
    jal     func_800DD464              
    sw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A439A4      
    lw      a0, 0x0034($sp)            
    jal     func_800DD464              
    nop
    bnel    v0, $zero, lbl_80A43ACC    
    lw      t0, 0x00D4($sp)            
lbl_80A439A4:
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A43AC8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6218              
    sw      v0, 0x00AC($sp)            
    lw      t5, 0x002C($sp)            
    lui     v0, %hi(var_80A49D18)      # v0 = 80A50000
    lw      v1, 0x00AC($sp)            
    lbu     t3, 0x04BD(t5)             # 000004BD
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, %hi(var_80A47F26)     # $at = 80A40000
    bne     t3, $zero, lbl_80A439F4    
    addiu   v0, v0, %lo(var_80A49D18)  # v0 = 80A49D18
    sb      t6, %lo(var_80A47F26)($at) 
    lui     $at, %hi(var_80A47EF2)     # $at = 80A40000
    sb      $zero, %lo(var_80A47EF2)($at) 
lbl_80A439F4:
    lw      t8, 0x0000(v0)             # 80A49D18
    lui     t2, %hi(var_80A49D28)      # t2 = 80A50000
    addiu   t2, t2, %lo(var_80A49D28)  # t2 = 80A49D28
    sw      t8, 0x005C(v1)             # 0000005C
    lw      t7, 0x0004(v0)             # 80A49D1C
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0060(v1)             # 00000060
    lw      t8, 0x0008(v0)             # 80A49D20
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t8, 0x0064(v1)             # 00000064
    lw      t1, 0x0000(v0)             # 80A49D18
    sw      t1, 0x0074(v1)             # 00000074
    lw      t9, 0x0004(v0)             # 80A49D1C
    sw      t9, 0x0078(v1)             # 00000078
    lw      t1, 0x0008(v0)             # 80A49D20
    sw      t1, 0x007C(v1)             # 0000007C
    lw      t5, 0x0000(t2)             # 80A49D28
    sw      t5, 0x0050(v1)             # 00000050
    lw      t4, 0x0004(t2)             # 80A49D2C
    sw      t4, 0x0054(v1)             # 00000054
    lw      t5, 0x0008(t2)             # 80A49D30
    sw      t5, 0x0058(v1)             # 00000058
    jal     func_8009D718              
    lh      a1, %lo(var_80A49D34)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052340              
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0118($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_80A44AAC)     # $at = 80A40000
    sb      $zero, %lo(var_80A44AAC)($at) 
    lw      t6, 0x00D4($sp)            
    lui     $at, %hi(var_80A49D34)     # $at = 80A50000
    sh      $zero, %lo(var_80A49D34)($at) 
    addiu   t3, $zero, 0xFFFB          # t3 = FFFFFFFB
    lui     $at, %hi(var_80A47F20)     # $at = 80A40000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t3, 0x0850(t6)             # 00000850
    sh      t7, %lo(var_80A47F20)($at) 
    lui     $at, %hi(var_80A44AB4)     # $at = 80A40000
    sb      $zero, %lo(var_80A44AB4)($at) 
    lui     $at, %hi(var_80A47F16)     # $at = 80A40000
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t8, %lo(var_80A47F16)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005D2B4              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      $zero, 0x0AC2($at)         # 00010AC2
lbl_80A43AC8:
    lw      t0, 0x00D4($sp)            
lbl_80A43ACC:
    lui     a1, %hi(var_80A49D34)      # a1 = 80A50000
    lh      a1, %lo(var_80A49D34)(a1)  
    beq     a1, $zero, lbl_80A43BB0    
    lui     a2, %hi(var_80A49D28)      # a2 = 80A50000
    lui     a3, %hi(var_80A49D18)      # a3 = 80A50000
    addiu   a3, a3, %lo(var_80A49D18)  # a3 = 80A49D18
    addiu   a2, a2, %lo(var_80A49D28)  # a2 = 80A49D28
    jal     func_8009D328              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a0, %hi(var_80A49D3C)      # a0 = 80A50000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    jal     func_80064280              
    addiu   a0, a0, %lo(var_80A49D3C)  # a0 = 80A49D3C
    lw      t9, 0x07C0(s0)             # 000007C0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t1, 0x0028(t9)             # 00000028
    lui     $at, %hi(var_80A49D1C)     # $at = 80A50000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t2, 0x0002(t1)             # 00000002
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    lwc1    $f10, %lo(var_80A49D1C)($at) 
    add.s   $f8, $f6, $f4              
    c.le.s  $f10, $f8                  
    nop
    bc1f    lbl_80A43B98               
    nop
    jal     func_8005D2B4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t4, %hi(var_80A47EE6)      # t4 = 80A40000
    lbu     t4, %lo(var_80A47EE6)(t4)  
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    beq     t4, $zero, lbl_80A43B8C    
    addiu   t3, $zero, 0xFFD2          # t3 = FFFFFFD2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    addiu   t5, $zero, 0xFF4E          # t5 = FFFFFF4E
    beq     $zero, $zero, lbl_80A43B90 
    sh      t5, 0x0AC2($at)            # 00010AC2
lbl_80A43B8C:
    sh      t3, 0x0AC2($at)            # 00010AC2
lbl_80A43B90:
    beq     $zero, $zero, lbl_80A43BB0 
    lw      t0, 0x00D4($sp)            
lbl_80A43B98:
    jal     func_8005D2B4              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      $zero, 0x0AC2($at)         # 00010AC2
    lw      t0, 0x00D4($sp)            
lbl_80A43BB0:
    lw      t6, 0x07C0(s0)             # 000007C0
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lw      t7, 0x0028(t6)             # 00000028
    lwc1    $f0, 0x0080(t0)            # 00000080
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
    sub.s   $f8, $f2, $f4              
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A43CBC               
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f10, 0x0028(t0)           # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f4, $f0, $f6              
    c.lt.s  $f10, $f4                  
    nop
    bc1fl   lbl_80A43CC0               
    c.lt.s  $f0, $f2                   
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f6, 0x0068(t0)            # 00000068
    lw      t9, 0x002C($sp)            
    c.lt.s  $f8, $f6                   
    nop
    bc1fl   lbl_80A43CC0               
    c.lt.s  $f0, $f2                   
    lw      t1, 0x1DE4(t9)             # 00001DE4
    lui     $at, 0x41A0                # $at = 41A00000
    andi    t2, t1, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_80A43CC0    
    c.lt.s  $f0, $f2                   
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90              
    nop
    lw      t4, 0x00D4($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    lwc1    $f10, 0x0024(t4)           # 00000024
    add.s   $f4, $f0, $f10             
    jal     func_80026D90              
    swc1    $f4, 0x00A0($sp)           
    lw      v0, 0x00D4($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x002C(v0)            # 0000002C
    lw      t5, 0x002C($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    add.s   $f6, $f0, $f8              
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFF88
    lui     a3, 0x3F00                 # a3 = 3F000000
    swc1    $f6, 0x00A8($sp)           
    lwc1    $f10, 0x0080(v0)           # 00000080
    add.s   $f8, $f10, $f4             
    swc1    $f8, 0x00A4($sp)           
    jal     func_80A34A54              
    lw      a1, 0x1E10(t5)             # 00001E10
    lw      t6, 0x07C0(s0)             # 000007C0
    lw      t0, 0x00D4($sp)            
    lw      t7, 0x0028(t6)             # 00000028
    lwc1    $f0, 0x0080(t0)            # 00000080
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
lbl_80A43CBC:
    c.lt.s  $f0, $f2                   
lbl_80A43CC0:
    nop
    bc1f    lbl_80A43E48               
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x4080                # $at = 40800000
    sub.s   $f4, $f2, $f10             
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80A43E48               
    nop
    lwc1    $f8, 0x0068(t0)            # 00000068
    mtc1    $at, $f6                   # $f6 = 4.00
    lw      t9, 0x002C($sp)            
    c.le.s  $f6, $f8                   
    nop
    bc1f    lbl_80A43E48               
    nop
    lw      t1, 0x1DE4(t9)             # 00001DE4
    addiu   t4, t0, 0x0024             # t4 = 00000024
    andi    t2, t1, 0x0003             # t2 = 00000000
    bne     t2, $zero, lbl_80A43E48    
    nop
    sh      $zero, 0x009E($sp)         
    sw      t4, 0x0034($sp)            
lbl_80A43D20:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_80026D64              
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lui     $at, %hi(var_80A45948)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45948)($at) 
    add.s   $f4, $f0, $f10             
    jal     func_80026D64              
    swc1    $f4, 0x0080($sp)           
    swc1    $f0, 0x007C($sp)           
    jal     func_800CF470              
    mov.s   $f12, $f0                  
    lwc1    $f8, 0x0080($sp)           
    lwc1    $f12, 0x007C($sp)          
    mul.s   $f6, $f0, $f8              
    jal     func_800D2CD0              
    swc1    $f6, 0x0084($sp)           
    lwc1    $f10, 0x0080($sp)          
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mul.s   $f4, $f0, $f10             
    jal     func_80026D64              
    swc1    $f4, 0x008C($sp)           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lw      t6, 0x0034($sp)            
    addiu   t5, $sp, 0x0090            # t5 = FFFFFF78
    add.s   $f6, $f0, $f8              
    lui     $at, %hi(var_80A4594C)     # $at = 80A40000
    swc1    $f6, 0x0088($sp)           
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(t5)             # FFFFFF78
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(t5)             # FFFFFF7C
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(t5)             # FFFFFF80
    lwc1    $f10, 0x0084($sp)          
    lwc1    $f8, 0x0090($sp)           
    lwc1    $f12, %lo(var_80A4594C)($at) 
    add.s   $f4, $f10, $f10            
    add.s   $f6, $f8, $f4              
    lwc1    $f4, 0x008C($sp)           
    swc1    $f6, 0x0090($sp)           
    lw      t3, 0x07C0(s0)             # 000007C0
    add.s   $f6, $f4, $f4              
    lw      t9, 0x0028(t3)             # 00000028
    lh      t1, 0x0002(t9)             # 00000002
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    lwc1    $f10, 0x0098($sp)          
    swc1    $f8, 0x0094($sp)           
    add.s   $f8, $f10, $f6             
    jal     func_80026D64              
    swc1    $f8, 0x0098($sp)           
    lui     $at, %hi(var_80A45950)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45950)($at) 
    lw      t2, 0x002C($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    add.s   $f10, $f0, $f4             
    lw      a1, 0x1E10(t2)             # 00001E10
    addiu   a2, $sp, 0x0090            # a2 = FFFFFF78
    addiu   a3, $sp, 0x0084            # a3 = FFFFFF6C
    jal     func_80A3490C              
    swc1    $f10, 0x0010($sp)          
    lh      v0, 0x009E($sp)            
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_80A43D20   
    sh      v0, 0x009E($sp)            
lbl_80A43E48:
    lui     a1, %hi(var_80A47EE7)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47EE7)  # a1 = 80A47EE7
    lbu     v1, 0x0000(a1)             # 80A47EE7
    slti    $at, v1, 0x0002            
    bne     $at, $zero, lbl_80A43E6C   
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sb      t4, 0x0000(a1)             # 80A47EE7
    andi    v0, t4, 0x00FF             # v0 = 000000FF
lbl_80A43E6C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A43F90      
    nop
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lui     a1, %hi(var_80A47EE7)      # a1 = 80A40000
    bne     v0, $zero, lbl_80A43F90    
    addiu   a1, a1, %lo(var_80A47EE7)  # a1 = 80A47EE7
    lui     t5, %hi(var_80A44A60)      # t5 = 80A40000
    lw      t5, %lo(var_80A44A60)(t5)  
    addiu   $at, $zero, 0x0FFF         # $at = 00000FFF
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    andi    t6, t5, 0x0FFF             # t6 = 00000000
    bne     t6, $at, lbl_80A43F90      
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sb      t7, 0x0000(a1)             # 80A47EE7
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80A44A34)     # $at = 80A40000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A43F80               
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    nop
    cfc1    t8, $f31                   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    ctc1    t3, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    cvt.w.s $f8, $f0                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80A43F54    
    mfc1    t3, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f0, $f8              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80A43F48    
    nop
    mfc1    t3, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A43F60 
    or      t3, t3, $at                # t3 = 80000000
lbl_80A43F48:
    beq     $zero, $zero, lbl_80A43F60 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8                    
lbl_80A43F54:
    nop
    bltz    t3, lbl_80A43F48           
    nop
lbl_80A43F60:
    addiu   t1, t3, 0x0005             # t1 = 00000004
    lui     $at, %hi(var_80A44A34)     # $at = 80A40000
    sb      t1, %lo(var_80A44A34)($at) 
    lui     $at, 0x0001                # $at = 00010000
    ctc1    t8, $f31                   
    addu    $at, $at, s0               
    beq     $zero, $zero, lbl_80A43F90 
    sb      t2, 0x0B01($at)            # 00010B01
lbl_80A43F80:
    sb      $zero, %lo(var_80A44A34)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t4, 0x0B01($at)            # 00010B01
lbl_80A43F90:
    lui     t5, %hi(var_80A44A34)      # t5 = 80A40000
    lbu     t5, %lo(var_80A44A34)(t5)  
    lui     a0, %hi(var_80A44A30)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A30)  # a0 = 80A44A30
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    bgez    t5, lbl_80A43FC0           
    cvt.s.w $f4, $f4                   
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f4, $f4, $f10             
lbl_80A43FC0:
    mfc1    a1, $f4                    
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    lwc1    $f0, %lo(var_80A44A30)($at) 
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_80A45954)     # $at = 80A40000
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A44048               
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f12, %lo(var_80A45954)($at) 
    lui     $at, %hi(var_80A45958)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45958)($at) 
    lui     $at, %hi(var_80A4595C)     # $at = 80A40000
    lwc1    $f10, %lo(var_80A4595C)($at) 
    mul.s   $f4, $f0, $f8              
    lui     a0, %hi(var_80A44A48)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A48)  # a0 = 80A44A48
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3C23                 # a3 = 3C230000
    add.s   $f2, $f4, $f10             
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80A44034               
    mfc1    a1, $f2                    
    mov.s   $f2, $f12                  
    mfc1    a1, $f2                    
lbl_80A44034:
    jal     func_80064280              
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    lwc1    $f0, %lo(var_80A44A30)($at) 
    lui     $at, 0x4120                # $at = 41200000
lbl_80A44048:
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, %hi(var_80A45960)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45960)($at) 
    sub.s   $f8, $f6, $f0              
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a0, %hi(var_80A44A44)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A44)  # a0 = 80A44A44
    mul.s   $f2, $f8, $f4              
    lui     a2, 0x3F80                 # a2 = 3F800000
    c.lt.s  $f2, $f10                  
    nop
    bc1fl   lbl_80A44088               
    mfc1    a1, $f2                    
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    mfc1    a1, $f2                    
lbl_80A44088:
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lui     a0, %hi(var_80A44A3C)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A3C)  # a0 = 80A44A3C
    lui     $at, %hi(var_80A45964)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45964)($at) 
    lwc1    $f6, 0x0008(a0)            # 80A44A44
    addiu   a1, $zero, 0x20DA          # a1 = 000020DA
    lui     a2, %hi(var_80A44A48)      # a2 = 80A40000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80A440C4               
    nop
    jal     func_800C50AC              
    lw      a2, %lo(var_80A44A48)(a2)  
lbl_80A440C4:
    lui     t6, %hi(var_80A44A34)      # t6 = 80A40000
    lbu     t6, %lo(var_80A44A34)(t6)  
    lui     a0, %hi(var_80A44A38)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A38)  # a0 = 80A44A38
    beq     t6, $zero, lbl_80A440FC    
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a0, %hi(var_80A44A38)      # a0 = 80A40000
    addiu   a0, a0, %lo(var_80A44A38)  # a0 = 80A44A38
    lui     a1, 0xC348                 # a1 = C3480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    beq     $zero, $zero, lbl_80A44104 
    nop
lbl_80A440FC:
    jal     func_800642F0              
    lui     a2, 0x4000                 # a2 = 40000000
lbl_80A44104:
    lui     $at, %hi(var_80A44A38)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A44A38)($at) 
    lw      t8, 0x002C($sp)            
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    trunc.w.s $f10, $f4                  
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    v0, $f10                   
    cfc1    t1, $f31                   
    ctc1    t2, $f31                   
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x0ABA(t8)             # 00000ABA
    lw      t3, 0x002C($sp)            
    sh      v0, 0x0AB8(t3)             # 00000AB8
    lw      t9, 0x002C($sp)            
    sh      v0, 0x0AB6(t9)             # 00000AB6
    lwc1    $f6, %lo(var_80A44A30)($at) 
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f8, $f6                   
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80A441B0    
    mfc1    t2, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80A441A4    
    nop
    mfc1    t2, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A441BC 
    or      t2, t2, $at                # t2 = 80000000
lbl_80A441A4:
    beq     $zero, $zero, lbl_80A441BC 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f8                    
lbl_80A441B0:
    nop
    bltz    t2, lbl_80A441A4           
    nop
lbl_80A441BC:
    ctc1    t1, $f31                   
    andi    t4, t2, 0x00FF             # t4 = 000000FF
    blezl   t4, lbl_80A44430           
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, %hi(var_80A45968)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45968)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    or      a0, v0, $zero              # a0 = 00000000
    swc1    $f4, 0x0054($sp)           
    jal     func_80049708              
    swc1    $f10, 0x0058($sp)          
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A4596C)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A4596C)($at) 
    cvt.s.w $f8, $f6                   
    lwc1    $f6, 0x0058($sp)           
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
    mul.s   $f10, $f8, $f4             
    lwc1    $f4, %lo(var_80A44A30)($at) 
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f8, $f10, $f6             
    cfc1    t5, $f31                   
    ctc1    t6, $f31                   
    swc1    $f8, 0x005C($sp)           
    cvt.w.s $f10, $f4                  
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80A44290    
    mfc1    t6, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f4, $f10            
    ctc1    t6, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80A44284    
    nop
    mfc1    t6, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A4429C 
    or      t6, t6, $at                # t6 = 80000000
lbl_80A44284:
    beq     $zero, $zero, lbl_80A4429C 
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10                   
lbl_80A44290:
    nop
    bltz    t6, lbl_80A44284           
    nop
lbl_80A4429C:
    ctc1    t5, $f31                   
    andi    t7, t6, 0x00FF             # t7 = 000000FF
    blez    t7, lbl_80A4442C           
    lui     $at, 0x442F                # $at = 442F0000
lbl_80A442AC:
    mtc1    $at, $f12                  # $f12 = 700.00
    jal     func_80026D90              
    sh      v1, 0x0072($sp)            
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x0060($sp)           
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f6                   # $f6 = 170.00
    add.s   $f10, $f0, $f4             
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f12                  # $f12 = 700.00
    sub.s   $f8, $f10, $f6             
    jal     func_80026D90              
    swc1    $f8, 0x0064($sp)           
    lwc1    $f4, 0x00E8(s0)            # 000000E8
    lui     $at, 0x4491                # $at = 44910000
    mtc1    $at, $f8                   # $f8 = 1160.00
    add.s   $f10, $f0, $f4             
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a3, %hi(var_80A49D14)      # a3 = 80A50000
    swc1    $f10, 0x0068($sp)          
    lwc1    $f6, 0x0068($sp)           
    lh      v1, 0x0072($sp)            
    addiu   a3, a3, %lo(var_80A49D14)  # a3 = 80A49D14
    c.lt.s  $f6, $f8                   
    addu    a0, s0, $at                
    addiu   a1, $sp, 0x0060            # a1 = FFFFFF48
    addiu   a2, $sp, 0x0048            # a2 = FFFFFF30
    bc1f    lbl_80A44388               
    nop
    jal     func_8008EC20              
    sh      v1, 0x0072($sp)            
    lwc1    $f4, 0x0050($sp)           
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      v1, 0x0072($sp)            
    lw      t8, 0x002C($sp)            
    c.lt.s  $f4, $f10                  
    addiu   a1, $sp, 0x0060            # a1 = FFFFFF48
    addiu   a2, $sp, 0x0054            # a2 = FFFFFF3C
    bc1fl   lbl_80A4437C               
    lw      a0, 0x1E10(t8)             # 00001E10
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80A44388 
    sra     v1, v1, 16                 
    lw      a0, 0x1E10(t8)             # 00001E10
lbl_80A4437C:
    jal     func_80A34CBC              
    sh      v1, 0x0072($sp)            
    lh      v1, 0x0072($sp)            
lbl_80A44388:
    lui     $at, %hi(var_80A44A30)     # $at = 80A40000
    cfc1    t3, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    ctc1    t9, $f31                   
    lwc1    $f6, %lo(var_80A44A30)($at) 
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    cvt.w.s $f8, $f6                   
    sra     v1, v1, 16                 
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80A4440C    
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
    bne     t9, $zero, lbl_80A44400    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A44418 
    or      t9, t9, $at                # t9 = 80000000
lbl_80A44400:
    beq     $zero, $zero, lbl_80A44418 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8                    
lbl_80A4440C:
    nop
    bltz    t9, lbl_80A44400           
    nop
lbl_80A44418:
    andi    t1, t9, 0x00FF             # t1 = 000000FF
    slt     $at, v1, t1                
    ctc1    t3, $f31                   
    bnel    $at, $zero, lbl_80A442AC   
    lui     $at, 0x442F                # $at = 442F0000
lbl_80A4442C:
    lui     $at, 0x0001                # $at = 00010000
lbl_80A44430:
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a1, %hi(var_80A453B0)      # a1 = 80A40000
    lui     a2, %hi(var_80A4EFA8)      # a2 = 80A50000
    lui     a3, %hi(var_80A49D14)      # a3 = 80A50000
    addiu   a3, a3, %lo(var_80A49D14)  # a3 = 80A49D14
    addiu   a2, a2, %lo(var_80A4EFA8)  # a2 = 80A4EFA8
    addiu   a1, a1, %lo(var_80A453B0)  # a1 = 80A453B0
    jal     func_8008EC20              
    addu    a0, s0, $at                
    lui     a0, %hi(var_80A4EFA8)      # a0 = 80A50000
    addiu   a0, a0, %lo(var_80A4EFA8)  # a0 = 80A4EFA8
    jal     func_80064780              
    addiu   a1, $zero, 0x2028          # a1 = 00002028
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lbu     t2, 0x1409(v0)             # 8011B9D9
    lui     t4, %hi(var_80A44A58)      # t4 = 80A40000
    lui     t5, %hi(var_80A44A58)      # t5 = 80A40000
    bne     t2, $zero, lbl_80A4448C    
    nop
    lhu     t4, %lo(var_80A44A58)(t4)  
    beq     $zero, $zero, lbl_80A44554 
    sh      t4, 0x1406(v0)             # 8011B9D6
lbl_80A4448C:
    lhu     t5, %lo(var_80A44A58)(t5)  
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_80A444AC           
    cvt.s.w $f0, $f4                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f0, $f0, $f10             
lbl_80A444AC:
    mul.s   $f6, $f0, $f0              
    lui     $at, %hi(var_80A45970)     # $at = 80A40000
    lwc1    $f8, %lo(var_80A45970)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f6, $f8              
    add.s   $f6, $f4, $f10             
    cfc1    t6, $f31                   
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80A4453C    
    mfc1    t7, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80A44530    
    nop
    mfc1    t7, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A44548 
    or      t7, t7, $at                # t7 = 80000000
lbl_80A44530:
    beq     $zero, $zero, lbl_80A44548 
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f8                    
lbl_80A4453C:
    nop
    bltz    t7, lbl_80A44530           
    nop
lbl_80A44548:
    ctc1    t6, $f31                   
    sh      t7, 0x1406(v0)             # 8011B9D6
    nop
lbl_80A44554:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0118           # $sp = 00000000
    jr      $ra                        
    nop


func_80A44568:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80A44594      
    lw      v0, 0x0010($sp)            
    lw      t7, 0x0014($sp)            
    lh      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x0154(t7)             # 00000154
    subu    t9, t6, t8                 
    sh      t9, 0x0000(v0)             # 00000000
lbl_80A44594:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80A445A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a3, 0x002C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a2, 0x0028($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80A446A0      
    lui     a0, %hi(var_80A44C7C)      # a0 = 80A40000
    lw      a2, 0x0000(a3)             # 00000000
    lui     a1, %hi(var_80A47F00)      # a1 = 80A40000
    addiu   a1, a1, %lo(var_80A47F00)  # a1 = 80A47F00
    addiu   a0, a0, %lo(var_80A44C7C)  # a0 = 80A44C7C
    jal     func_800AB958              
    sw      a2, 0x001C($sp)            
    lui     v0, %hi(var_80A44A68)      # v0 = 80A40000
    lbu     v0, %lo(var_80A44A68)(v0)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a2, 0x001C($sp)            
    bne     v0, $at, lbl_80A44648      
    lui     t7, 0xDE00                 # t7 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x74C8             # a0 = 060074C8
    sll     t8, a0,  4                 
    srl     t9, t8, 28                 
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sll     t0, t9,  2                 
    lui     t1, 0x8012                 # t1 = 80120000
    addu    t1, t1, t0                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(v1)             # 00000000
    lw      t1, 0x0C38(t1)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80A446A4 
    lw      $ra, 0x0014($sp)           
lbl_80A44648:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A446A0      
    lui     t6, 0xDE00                 # t6 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x7350             # a0 = 06007350
    sll     t7, a0,  4                 
    srl     t8, t7, 28                 
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sll     t9, t8,  2                 
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0004(v1)             # 00000004
lbl_80A446A0:
    lw      $ra, 0x0014($sp)           
lbl_80A446A4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A446B0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0024($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a0, 0x0050($sp)            
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s0)             # 00000000
    lw      t1, 0x0050($sp)            
    lui     $at, %hi(var_80A45974)     # $at = 80A40000
    lwc1    $f4, %lo(var_80A45974)($at) 
    lwc1    $f2, 0x00EC(t1)            # 000000EC
    c.lt.s  $f2, $f4                   
    nop
    bc1f    lbl_80A447AC               
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f0, 0x00E4(t1)            # 000000E4
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f6, $f2              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A447AC               
    nop
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lh      t8, 0x0150(t1)             # 00000150
    lui     t0, %hi(var_80A453D4)      # t0 = 80A40000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80A453D4)(t0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, t0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             # 00000004
    lw      a1, 0x01CC(t1)             # 000001CC
    lw      a2, 0x01E8(t1)             # 000001E8
    lbu     a3, 0x01CA(t1)             # 000001CA
    lui     t9, %hi(func_80A44568)     # t9 = 80A40000
    lui     t3, %hi(func_80A445A0)     # t3 = 80A40000
    addiu   t3, t3, %lo(func_80A445A0) # t3 = 80A445A0
    addiu   t9, t9, %lo(func_80A44568) # t9 = 80A44568
    sw      t9, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    jal     func_80089D8C              
    sw      t1, 0x0018($sp)            
lbl_80A447AC:
    jal     func_80A40AD8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0001                 # a0 = 00010000
    addu    a0, a0, s0                 
    lw      a0, 0x1E10(a0)             # 00011E10
    jal     func_80A3616C              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A417EC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A36BCC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, %hi(var_80A47F16)      # v1 = 80A40000
    addiu   v1, v1, %lo(var_80A47F16)  # v1 = 80A47F16
    lh      v0, 0x0000(v1)             # 80A47F16
    beq     v0, $zero, lbl_80A44854    
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0000(v1)             # 80A47F16
    lh      t5, 0x0000(v1)             # 80A47F16
    lui     t2, %hi(var_80A47EE5)      # t2 = 80A40000
    bne     t5, $zero, lbl_80A44854    
    nop
    lbu     t2, %lo(var_80A47EE5)(t2)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t2, $at, lbl_80A44820      
    nop
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    beq     $zero, $zero, lbl_80A44828 
    nop
lbl_80A44820:
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0027          # a0 = 00000027
lbl_80A44828:
    lui     t6, %hi(var_80A47EE5)      # t6 = 80A40000
    lbu     t6, %lo(var_80A47EE5)(t6)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t6, $at, lbl_80A4484C      
    nop
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    beq     $zero, $zero, lbl_80A44854 
    nop
lbl_80A4484C:
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0027          # a0 = 00000027
lbl_80A44854:
    lui     t7, %hi(var_80A47F1C)      # t7 = 80A40000
    lh      t7, %lo(var_80A47F1C)(t7)  
    lui     t8, %hi(var_80A44A54)      # t8 = 80A40000
    beql    t7, $zero, lbl_80A448EC    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lbu     t8, %lo(var_80A44A54)(t8)  
    beql    t8, $zero, lbl_80A448EC    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jal     func_80A3880C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A47FD8)      # a0 = 80A40000
    jal     func_80A373D0              
    addiu   a0, a0, %lo(var_80A47FD8)  # a0 = 80A47FD8
    lui     t9, %hi(var_80A49298)      # t9 = 80A50000
    addiu   t9, t9, %lo(var_80A49298)  # t9 = 80A49298
    lui     a1, %hi(var_80A47FC8)      # a1 = 80A40000
    lui     a2, %hi(var_80A47FD8)      # a2 = 80A40000
    lui     a3, %hi(var_80A48938)      # a3 = 80A50000
    addiu   a3, a3, %lo(var_80A48938)  # a3 = 80A48938
    addiu   a2, a2, %lo(var_80A47FD8)  # a2 = 80A47FD8
    addiu   a1, a1, %lo(var_80A47FC8)  # a1 = 80A47FC8
    sw      t9, 0x0010($sp)            
    jal     func_80A36E44              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80A47FD8)      # a1 = 80A40000
    lui     a2, %hi(var_80A48938)      # a2 = 80A50000
    addiu   a2, a2, %lo(var_80A48938)  # a2 = 80A48938
    addiu   a1, a1, %lo(var_80A47FD8)  # a1 = 80A47FD8
    jal     func_80A3801C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, s0, 0x0014             # v0 = 00000014
    lb      t3, 0x0014(v0)             # 00000028
    lui     $at, %hi(var_80A44AA4)     # $at = 80A40000
    sh      t3, %lo(var_80A44AA4)($at) 
    lb      t4, 0x0015(v0)             # 00000029
    lui     $at, %hi(var_80A44AA8)     # $at = 80A40000
    sh      t4, %lo(var_80A44AA8)($at) 
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_80A448EC:
    lui     $at, %hi(var_80A44A54)     # $at = 80A40000
    sb      t5, %lo(var_80A44A54)($at) 
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f12                  # $f12 = 130.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f14                  # $f14 = 40.00
    lui     a2, 0x44A2                 # a2 = 44A20000
    ori     a2, a2, 0x8000             # a2 = 44A28000
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80A45978)     # $at = 80A40000
    lwc1    $f12, %lo(var_80A45978)($at) 
    lui     $at, %hi(var_80A4597C)     # $at = 80A40000
    lui     a2, 0x3E0F                 # a2 = 3E0F0000
    ori     a2, a2, 0x5C29             # a2 = 3E0F5C29
    lwc1    $f14, %lo(var_80A4597C)($at) 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0034($sp)            
    lw      a2, 0x0034($sp)            
    sw      v0, 0x0004(a2)             # 00000004
    lw      a1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(a1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      a1, 0x0030($sp)            
    lw      a3, 0x0030($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    lui     t2, %hi(var_80A47F1C)      # t2 = 80A40000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0x53D0             # t3 = 060153D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      a1, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x5470             # t5 = 06015470
    addiu   t4, a1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(a1)             # 00000004
    sw      t0, 0x0000(a1)             # 00000000
    lh      t2, %lo(var_80A47F1C)(t2)  
    lui     t6, %hi(var_80A47F26)      # t6 = 80A40000
    beql    t2, $zero, lbl_80A449F8    
    lw      $ra, 0x002C($sp)           
    lbu     t6, %lo(var_80A47F26)(t6)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_80A449F8      
    lw      $ra, 0x002C($sp)           
    jal     func_80A37D50              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80A449F8:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
    nop

.section .data

var_80A44A10: .word 0x00FE0400, 0x00000010, 0x015B0000, 0x00000540
.word func_80A350C8
.word func_80A359B0
.word func_80A3BDE8
.word func_80A40440
var_80A44A30: .word 0x00000000
var_80A44A34: .word 0x00000000
var_80A44A38: .word 0x00000000
var_80A44A3C: .word 0x00000000, 0x00000000
var_80A44A44: .word 0x00000000
var_80A44A48: .word 0x00000000
var_80A44A4C: .word 0x00000000
var_80A44A50: .word 0x00000000
var_80A44A54: .word 0x01000000
var_80A44A58: .word 0x00000000
var_80A44A5C: .word 0x00000000
var_80A44A60: .word 0x00000000
var_80A44A64: .word 0x00000000
var_80A44A68: .word 0x00000000
var_80A44A6C: .word 0x00000000
var_80A44A70: .word 0x00000000
var_80A44A74: .word 0x00000000
var_80A44A78: .word 0x43FA0000
var_80A44A7C: .word 0x43FA0000, 0x00000000
var_80A44A84: .word 0x00000000
var_80A44A88: .word 0x00000000
var_80A44A8C: .word 0x00000000
var_80A44A90: .word 0x00000000
var_80A44A94: .word 0x00000000
var_80A44A98: .word 0x00000000
var_80A44A9C: .word 0x00000000
var_80A44AA0: .word 0x00000000
var_80A44AA4: .word 0x00000000
var_80A44AA8: .word 0x00000000
var_80A44AAC: .word 0x00000000
var_80A44AB0: .word 0x00000000
var_80A44AB4: .word 0x00000000
var_80A44AB8: .word \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x001E0064, 0x00000000
var_80A44AE0: .word 0xFFCFFFFF, 0x00100000
var_80A44AE8: .word 0xFFCFFFFF
var_80A44AEC: .word \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x001E0064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x001E0064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x00000000, 0x00000000, 0x001E0064, 0x00000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x00000100, 0x00000000, 0x00000000, 0x001E0064, \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x001E0064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x001E0064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x00000000, 0x00000000, 0x001E0064, 0x00000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x00000100, 0x00000000, 0x00000000, 0x001E0064, \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x001E0064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x001E0064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x00000000, 0x00000000, 0x001E0064
var_80A44C68: .word 0x0A100809, 0x10000000, 0x0000000C
.word var_80A44AB8
var_80A44C78: .word 0x00000000
var_80A44C7C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x44FA0000
var_80A44C94: .word 0x00000000, 0xBF800000, 0x00000000
var_80A44CA0: .word 0x00000000, 0x3D4CCCCD, 0x00000000
var_80A44CAC: .word 0x00000000, 0x3F800000, 0x00000000
var_80A44CB8: .word \
0x03000211, 0xFFCBFE0E, 0x030001CD, 0xFFBEFE20, \
0x0300018E, 0xFFB7FE26, 0x0300FF1E, 0xFFCCFD4D, \
0x0300FED4, 0xFFD7FD3A, 0x0300FEB3, 0xFFCEFD7D, \
0x0300FE7D, 0xFFD2FD88, 0x0300FE1C, 0xFFD5FDAC, \
0x0300FE67, 0xFFC7FDD0, 0x040001BC, 0xFFA9FEBE, \
0x040001BF, 0xFFA5FEEE, 0x0400018B, 0xFF93FF43, \
0x01000269, 0xFFE30286, 0x010002BA, 0xFFE60248, \
0x010002C7, 0xFFE301F5, 0x010002F5, 0xFFE401C9, \
0x0100032C, 0xFFE30155, 0x01000358, 0xFFE200EB, \
0x0100034F, 0xFFE10053, 0x01000384, 0xFFE60077, \
0x0200035D, 0xFFEA0089, 0x02000344, 0xFFEA0096, \
0x0200033D, 0xFFEA00C8, 0x02000314, 0xFFEA00E8, \
0x02000323, 0xFFEA013F, 0x020002F4, 0xFFEA015C, \
0x020002DB, 0xFFEA0179, 0x020002BC, 0xFFEA0188, \
0x020002C2, 0xFFEA015F, 0x020002A5, 0xFFEA011E, \
0x020002B3, 0xFFEA00FA, 0x020002E8, 0xFFEA0122, \
0x020002FE, 0xFFEA00C9, 0x0200030D, 0xFFEA0080, \
0x02000331, 0xFFEA002E, 0x02000359, 0xFFEAFFCE, \
0x020002D4, 0xFFEA006E, 0x020002D3, 0xFFEA0091, \
0x020002D8, 0xFFEA00CA, 0x020002D1, 0xFFEA00ED, \
0x020002BA, 0xFFEA0138, 0x02000294, 0xFFEA015D, \
0x02000296, 0xFFEA0184, 0x0200029B, 0xFFEA01B0, \
0x020002DC, 0xFFEA01AD, 0x0200025E, 0xFFEA016E, \
0x0200025C, 0xFFEA011E, 0x0200026C, 0xFFEA00D9, \
0x02000297, 0xFFEA009F, 0x020002AA, 0xFFEA0049, \
0x02000309, 0xFFEA0053, 0x020002FE, 0xFFEA009E, \
0x01000431, 0x0000FC94, 0x010003CA, 0x0000FCAB, \
0x01000380, 0x0000FC8A, 0x01000286, 0xFFE5FD75, \
0x01000255, 0xFFE3FD6F, 0x01000223, 0xFFE0FD75, \
0x010002B2, 0xFFE3FDDE, 0x010002D0, 0xFFE3FE16, \
0x0100FD0C, 0xFFE2FE67, 0x0100FD50, 0xFFDEFE36, \
0x0100FD9B, 0xFFDEFDBB, 0x0200FDAF, 0xFFEAFE21, \
0x0200FDA6, 0xFFEAFE5B, 0x0200FD68, 0xFFEAFE8D, \
0x0200FD3C, 0xFFEAFEC4, 0x0200FD32, 0xFFEAFF13, \
0x0100FCD9, 0xFFDCFF49, 0x0100FCA8, 0xFFE3FEFD, \
0x0200FCD2, 0xFFEAFEC3, 0x0200FD09, 0xFFEAFE80, \
0x0200FD32, 0xFFEAFE47, 0x0200FE26, 0xFFEAFDC9, \
0x0200FDF9, 0xFFEAFDFB, 0x0200FDE5, 0xFFEAFE19, \
0x0200FDC1, 0xFFEAFE46, 0x0200FDAE, 0xFFEAFDF3, \
0x0200FD63, 0xFFEAFDFE, 0x0200FD73, 0xFFEAFE38, \
0x0100FD69, 0xFFE4FDA2, 0x0100FD3C, 0xFFE6FDC9, \
0x0100FD1D, 0xFFE5FE06, 0x0100FD10, 0xFFE4FE30, \
0x0100FD3B, 0xFFE3FDFF, 0x0200FDE0, 0xFFEAFE4C, \
0x0200FDD1, 0xFFEAFE73, 0x0200FD98, 0xFFEAFE9F, \
0x0200FD38, 0xFFEAFE90, 0x0200FD5A, 0xFFEAFE6D, \
0x0200FD68, 0xFFEAFEEF, 0x0200FD8A, 0xFFEAFEEC, \
0x0200FDBD, 0xFFEAFEC9, 0x0200FDB4, 0xFFEAFEA1, \
0x0200FDD5, 0xFFEAFDEA, 0x0200FDDD, 0xFFEAFDC9, \
0x0200FDB0, 0xFFEAFDC5, 0x0200FDE3, 0xFFEAFD9E, \
0x0200FE24, 0xFFEAFD8B, 0x0200FE49, 0xFFEAFDAA, \
0x0200FE64, 0xFFEAFDDA, 0x0200FE65, 0xFFEAFDA2, \
0x0200FE8E, 0xFFEAFD86, 0x0200FEA0, 0xFFEAFD6A, \
0x0200FE63, 0xFFEAFD7F, 0x0200FE18, 0xFFEAFD66, \
0x0200FDBE, 0xFFEAFD70, 0x0200FDD0, 0xFFEAFD80, \
0x0200FDED, 0xFFEAFD72, 0x0200FE3D, 0xFFEAFD63, \
0x0200FE49, 0xFFEAFD45, 0x0200FE1E, 0xFFEAFD31, \
0x0200FDF4, 0xFFEAFD30, 0x0200FDC7, 0xFFEAFD36, \
0x0100FDF8, 0xFFE5FD29, 0x0100FDC4, 0xFFE4FD52, \
0x0100FDB4, 0xFFE0FD89, 0x0100FD92, 0xFFDEFDC5, \
0x0100FD8C, 0xFFDCFE02, 0x0100FD71, 0xFFDCFE2E, \
0x0100FD71, 0xFFD7FE77, 0x0100FD6B, 0xFFD1FEB8, \
0x0100FD2D, 0xFFD8FEE1, 0x0100FD0C, 0xFFDFFEA3, \
0x0100FD0D, 0xFFD5FF2E, 0x0200FCFE, 0xFFEAFEE7, \
0x0200FD12, 0xFFEAFEC7, 0x0200FD20, 0xFFEAFEAB, \
0x0200FD94, 0xFFEAFE5E, 0x0200FDA7, 0xFFEAFE8D, \
0x0200FD85, 0xFFEAFE81, 0x0200FD8D, 0xFFEAFEC9, \
0x0200FD67, 0xFFEAFEB9, 0x0200FDF4, 0xFFEAFDE7, \
0x0200FDFE, 0xFFEAFDBD, 0x0200FE00, 0xFFEAFD91, \
0x0200FDC0, 0xFFEAFDBA, 0x0200FDA8, 0xFFEAFDA0, \
0x0200FD6F, 0xFFEAFDED, 0x0200FD7F, 0xFFEAFDDD, \
0x23000000, 0x00000000
var_80A45120: .word \
0x0000029A, 0xFFD30162, 0x26000000, 0x3DCCCCCD, \
0x000002A9, 0xFFD300F0, 0x24000000, 0x3DCCCCCD, \
0x0000029E, 0xFFD3005A, 0x29000000, 0x3D4CCCCD, \
0x00000267, 0xFFD3FE3E, 0x23000000, 0x3E4CCCCD, \
0x000001F4, 0xFFD3FE5C, 0x27000000, 0x3DCCCCCD, \
0x000001A4, 0xFFD3FDDA, 0x2C000000, 0x3D4CCCCD, \
0x0000FEF8, 0xFFD3FD80, 0x28000000, 0x3DCCCCCD, \
0x0000FE2A, 0xFFD3FDE4, 0x22000000, 0x3E4CCCCD, \
0x0000FDD3, 0xFFD3FE52, 0x36000000, 0x3C23D70A, \
0x0000FEFC, 0xFFC4FEB6, 0x2F000000, 0x3D4CCCCD, \
0x0000FE0C, 0xFFC4014A, 0x2A000000, 0x3D75C28F, \
0x000001AC, 0xFFD8FEE5, 0x21000000, 0x3E4CCCCD, \
0x00000199, 0xFFBAFF1A, 0x39000000, 0x00000000, \
0x000001C2, 0xFFBDFED4, 0x3F000000, 0x00000000, \
0x0000FF78, 0xFFBFFF3C, 0x47000000, 0x00000000, \
0x0100FDCF, 0xFFDDFDDD, 0x2D000000, 0x00000000, \
0x0100029B, 0xFFDD013D, 0x2B000000, 0x00000000
var_80A45230: .word 0x801F0005, 0x304C0000
var_80A45238: .word 0x00000000, 0x00000000, 0x00000000
var_80A45244: .word 0x00000000, 0x00000000, 0x00000000
var_80A45250: .word 0x00000000, 0x00000000, 0x3F800000
var_80A4525C: .word 0x00000000, 0x00000000, 0x00000000
var_80A45268: .word \
0x3F800000, 0x3FC00000, 0x3FE66666, 0x40000000, \
0x3FE66666, 0x3FCCCCCD, 0x3FB33333, 0x3F99999A, \
0x3F800000, 0x3F800000, 0x3F666666, 0x3F59999A, \
0x3F4CCCCD, 0x3F333333, 0x3F4CCCCD, 0x3F800000, \
0x3F99999A, 0x3F8CCCCD, 0x3F800000, 0x3F4CCCCD
var_80A452B8: .word \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F766666, \
0x3F6CCCCD, 0x3F633333, 0x3F59999A, 0x3F500000, \
0x3F466666, 0x3F3CCCCC, 0x3F333333, 0x3F29999A, \
0x3F200000, 0x3F166666, 0x3F0CCCCC, 0x3F033333, \
0x3EF33332, 0x3EE00000, 0x3ECCCCCC, 0x3EB99998, \
0x3EA66666, 0x3E933332
var_80A45310: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x3D75C28F, 0x3DF5C28F, 0x3E3851EC, \
0x3E75C28F, 0x3E99999A, 0x3EB851EC, 0x3ED70A3D, \
0x3EF5C28F, 0x3F0A3D71, 0x3F19999A, 0x3F19999A, \
0x3F03A29C, 0x3EDB645A, 0x3EAF837B, 0x3E83A29C, \
0x3E2F837B, 0x3DAF837B
var_80A45368: .word 0x00000000, 0x00000000, 0x00000000
var_80A45374: .word 0x00000000, 0x00000000, 0x00000000
var_80A45380: .word 0x00000000, 0x00000000, 0x00000000
var_80A4538C: .word 0x43FA0000, 0x43FA0000, 0x00000000
var_80A45398: .word 0x4096408D, 0x408E408F, 0x40944095
var_80A453A4: .word 0x00000001, 0x00020002, 0x00010000
var_80A453B0: .word 0x44278000, 0x00000000, 0xC4160000
var_80A453BC: .word \
0xFE94FFE2, 0xFEF30469, 0x0003FCA9, 0xFE200000, \
0xFBE10229, 0xFFD0FE04
var_80A453D4: .word 0x06009250, 0x06009650, 0x06009A50

.section .rodata

var_80A453E0: .word 0x3FCCCCCD
var_80A453E4: .word 0x46EC7A00
var_80A453E8: .word 0x46ECC600
var_80A453EC: .word 0x46ECE600
var_80A453F0: .word 0x3B23D70A
var_80A453F4: .word 0x3D4CCCCD
var_80A453F8: .word 0x3DCCCCCD
var_80A453FC: .word 0x3E99999A
var_80A45400: .word 0x3F19999A
var_80A45404: .word 0x40C90FDB
var_80A45408: .word 0x3DA3D70A
var_80A4540C: .word 0x3DCCCCCD
var_80A45410: .word 0x3F333333
var_80A45414: .word 0x40133333
var_80A45418: .word 0x40933333
var_80A4541C: .word 0x44758000
var_80A45420: .word 0x409FFFEB
var_80A45424: .word 0x3D4CCCCD
var_80A45428: .word 0x40FFFFEB
var_80A4542C: .word 0x3F3AE148
var_80A45430: .word 0x3A83126F
var_80A45434: .word 0x3DCCCCCD
var_80A45438: .word 0x3E99999A
var_80A4543C: .word 0x494EA400
var_80A45440: .word 0x3DE147AE
var_80A45444: .word 0x3C23D70B
var_80A45448: .word 0x3E16872B
var_80A4544C: .word 0x3B03126F
var_80A45450: .word 0x40490FDB
var_80A45454: .word 0x40490FDB
var_80A45458: .word 0x40490FDB
var_80A4545C: .word 0x40490FDB
var_80A45460: .word 0xC49C4000
var_80A45464: .word 0x3FC90FDB
var_80A45468: .word 0x44278000
var_80A4546C: .word 0x3CA3D70A
var_80A45470: .word 0x3F7851EC
var_80A45474: .word 0x3A83126F
var_80A45478: .word 0x3E999999
var_80A4547C: .word 0x494EA400
var_80A45480: .word 0x3DE147AE
var_80A45484: .word 0x3E16872B
var_80A45488: .word 0x3D4CCCCD
var_80A4548C: .word 0x3CA3D70A
var_80A45490: .word 0x3E4CCCCD
var_80A45494: .word 0x3B83126E
var_80A45498: .word 0x40490FDB
var_80A4549C: .word 0x3FC90FDB
var_80A454A0: .word 0xC49C4000
var_80A454A4: .word 0x3FC90FDB
var_80A454A8: .word 0x3F59999A
var_80A454AC: .word 0x38C90FDB
var_80A454B0: .word 0x3DCCCCCD
var_80A454B4: .word 0x3D23D70A
var_80A454B8: .word 0x3D23D70A
var_80A454BC: .word 0x38C90FDB
var_80A454C0: .word 0x40490FDB
var_80A454C4: .word 0x3B83126E
var_80A454C8: .word 0x3FC90FDB
var_80A454CC: .word 0x3FC90FDB
var_80A454D0: .word 0xC4548000
var_80A454D4: .word 0x45034000
var_80A454D8: .word 0x3A83126F
var_80A454DC: .word 0x3A83126F
var_80A454E0: .word 0x44BB8000
var_80A454E4: .word 0x3CA3D70A
var_80A454E8: .word 0x3CA3D70A
var_80A454EC: .word 0xBC23D70A
var_80A454F0: .word 0x3C23D70A
var_80A454F4: .word 0x3CCCCCCD
var_80A454F8: .word 0xBCF5C28F
var_80A454FC: .word 0x3FE1307A
var_80A45500: .word 0x3FA4DEEC
var_80A45504: .word 0xBF20D97B
var_80A45508: .word 0x3EF1463A
var_80A4550C: .word 0x3C23D70A
var_80A45510: .word 0x40490FDB
var_80A45514: .word 0x3F333334
var_80A45518: .word 0x407FEF9E
var_80A4551C: .word var_80A396B0
.word var_80A39910
.word var_80A3A188
.word var_80A3A278
.word var_80A3B0AC
.word var_80A3B1C0
var_80A45534: .word 0x40490FDB
var_80A45538: .word 0x3FF33333
var_80A4553C: .word 0x3F666666
var_80A45540: .word 0x40490FDB
var_80A45544: .word 0x40490FDB
var_80A45548: .word 0x3A83126F
var_80A4554C: .word 0x494EA400
var_80A45550: .word 0x44A8C000
var_80A45554: .word 0x44898000
var_80A45558: .word 0x3DE147AE
var_80A4555C: .word 0x3E4CCCCD
var_80A45560: .word 0x40C8F5C3
var_80A45564: .word 0x3CA3D70A
var_80A45568: .word 0x3CCCCCCD
var_80A4556C: .word 0x48742400
var_80A45570: .word 0xBF060A92
var_80A45574: .word 0x494EA400
var_80A45578: .word 0x3C888889
var_80A4557C: .word 0x3C888889
var_80A45580: .word 0x3E99999A
var_80A45584: .word 0x3E99999A
var_80A45588: .word 0x3E4CCCCD
var_80A4558C: .word 0x3F4CCCCD
var_80A45590: .word 0x3FFFDF3B
var_80A45594: .word 0x40490FDB
var_80A45598: .word 0x3E4CCCCD
var_80A4559C: .word 0x40490FDB
var_80A455A0: .word 0x40490FDB
var_80A455A4: .word 0x3DE147AE
var_80A455A8: .word 0x40490FDB
var_80A455AC: .word 0x40490FDB
var_80A455B0: .word 0x40490FDB
var_80A455B4: .word 0x40490FDB
var_80A455B8: .word 0x40490FDB
var_80A455BC: .word 0x3E4CCCCD
var_80A455C0: .word 0x494EA400
var_80A455C4: .word 0x3A031270
var_80A455C8: .word 0x3F99999A
var_80A455CC: .word 0x40C8F5C3
var_80A455D0: .word 0x3CA3D70A
var_80A455D4: .word 0x3CCCCCCD
var_80A455D8: .word 0x3E99999A
var_80A455DC: .word 0x40C8F5C3
var_80A455E0: .word 0x3CA3D70A
var_80A455E4: .word 0x3CCCCCCD
var_80A455E8: .word 0x40490FDB
var_80A455EC: .word 0x471C4000
var_80A455F0: .word 0x45992000
var_80A455F4: .word 0x461C4000
var_80A455F8: .word 0x3E19999A
var_80A455FC: .word 0x3E99999A
var_80A45600: .word 0x448FC000
var_80A45604: .word 0x3727C5AC
var_80A45608: .word 0xBF99999A
var_80A4560C: .word 0x3FCCCCCD
var_80A45610: .word 0x358637BD
var_80A45614: .word 0x3F8CCCCD
var_80A45618: .word 0x3F4CCCCD
var_80A4561C: .word 0x40066666
var_80A45620: .word 0x3ECCCCCD
var_80A45624: .word 0x3F19999A
var_80A45628: .word var_80A3CFE0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word var_80A3DDC4
.word var_80A3CD8C
.word var_80A3CB7C
.word var_80A3C8D8
.word var_80A3C9F4
.word var_80A3D0A8
.word var_80A3D740
.word var_80A3D948
.word var_80A3DFE0
.word lbl_80A3EF18
.word var_80A3F668
.word lbl_80A3F8F0
.word lbl_80A3F8F0
.word var_80A3C6A8
.word var_80A3C778
var_80A456BC: .word 0x44A28000
var_80A456C0: .word 0x3CA3D70A
var_80A456C4: .word 0x3CF5C28F
var_80A456C8: .word 0x451C4000
var_80A456CC: .word 0x44BB8000
var_80A456D0: .word 0x3E99999A
var_80A456D4: .word 0x43A6AAAB
var_80A456D8: .word 0x3ECCCCCD
var_80A456DC: .word 0x3F99999A
var_80A456E0: .word 0x3F4CCCCD
var_80A456E4: .word 0x44BB8000
var_80A456E8: .word 0x3ECCCCCD
var_80A456EC: .word 0x3F19999A
var_80A456F0: .word 0x3F333333
var_80A456F4: .word 0x3DCCCCCD
var_80A456F8: .word 0x3BA3D70A
var_80A456FC: .word 0x3C23D70A
var_80A45700: .word 0x3D4CCCCD
var_80A45704: .word 0x3C03126F
var_80A45708: .word 0x453B8000
var_80A4570C: .word 0x3E99999A
var_80A45710: .word 0x3F19999A
var_80A45714: .word 0x3CF5C28F
var_80A45718: .word 0x3F99999A
var_80A4571C: .word 0x459C4000
var_80A45720: .word 0x453B8000
var_80A45724: .word 0x3F4CCCCD
var_80A45728: .word 0x3F99999A
var_80A4572C: .word 0x459C4000
var_80A45730: .word 0x3F99999A
var_80A45734: .word 0x459C4000
var_80A45738: .word 0x3F99999A
var_80A4573C: .word 0x459C4000
var_80A45740: .word 0x3FAAAAA8
var_80A45744: .word 0x3FD9999A
var_80A45748: .word 0x45DAC000
var_80A4574C: .word 0x4016CBE4
var_80A45750: .word 0x40490FDB
var_80A45754: .word 0x49095440
var_80A45758: .word 0x3DCCCCCD
var_80A4575C: .word 0x3FCCCCCD
var_80A45760: .word 0x45BB8000
var_80A45764: .word 0x3FB33333
var_80A45768: .word 0x459C4000
var_80A4576C: .word 0x3C134ACB
var_80A45770: .word 0x3C134ACB
var_80A45774: .word 0x3FB33333
var_80A45778: .word 0x458CA000
var_80A4577C: .word 0x3C134ACB
var_80A45780: .word 0x3FA66666
var_80A45784: .word 0x3C134ACB
var_80A45788: .word 0x3FB33333
var_80A4578C: .word 0x3FA66666
var_80A45790: .word 0xBF4CCCCD
var_80A45794: .word 0xBF666666
var_80A45798: .word 0xBF59999A
var_80A4579C: .word 0x3DCCCCCD
var_80A457A0: .word 0x3D4CCCCD
var_80A457A4: .word 0x453B8000
var_80A457A8: .word 0x459C4000
var_80A457AC: .word 0x40490FDB
var_80A457B0: .word 0x3FFEB852
var_80A457B4: .word 0x459C4000
var_80A457B8: .word 0x459C4000
var_80A457BC: .word 0x459C4000
var_80A457C0: .word 0x404CCCCD
var_80A457C4: .word 0x3DCCCCCD
var_80A457C8: .word 0xBB449BA6
var_80A457CC: .word 0x459C4000
var_80A457D0: .word 0x459C4000
var_80A457D4: .word 0x3BA3D70A
var_80A457D8: .word 0x3E19999A
var_80A457DC: .word 0x3D99999A
var_80A457E0: .word 0x3D0F5C29
var_80A457E4: .word 0x3D23D70A
var_80A457E8: .word 0x40490FDB
var_80A457EC: .word 0x40490FDB
var_80A457F0: .word 0x40490FDB
var_80A457F4: .word 0x38C90FDB
var_80A457F8: .word 0x3FC90FDB
var_80A457FC: .word 0x3C23D70A
var_80A45800: .word 0x38C90FDB
var_80A45804: .word 0xBFC90FDB
var_80A45808: .word 0x3E4CCCCD
var_80A4580C: .word 0x3CF5C28F
var_80A45810: .word 0x3D4CCCCD
var_80A45814: .word 0x38C90FDB
var_80A45818: .word 0x451C4000
var_80A4581C: .word 0x3E99999A
var_80A45820: .word 0x3D4CCCCD
var_80A45824: .word 0x451C4000
var_80A45828: .word 0x3E99999A
var_80A4582C: .word 0x3D4CCCCD
var_80A45830: .word 0x451C4000
var_80A45834: .word 0x3E99999A
var_80A45838: .word 0x3D4CCCCD
var_80A4583C: .word 0x3F4CCCCD
var_80A45840: .word 0xB8D1B717
var_80A45844: .word 0x3B59E83E
var_80A45848: .word 0x3B9BA5E3
var_80A4584C: .word 0x40490FDB
var_80A45850: .word var_80A41A14
.word var_80A41B30
.word var_80A41C28
.word var_80A41C74
.word var_80A41CCC
.word var_80A41DE4
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word var_80A41E8C
.word var_80A42264
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word lbl_80A42850
.word var_80A42660
.word var_80A4269C
.word var_80A42748
.word var_80A427A0
.word var_80A427F0
var_80A458B4: .word 0x407FEF9E
var_80A458B8: .word 0x407FEF9E
var_80A458BC: .word 0x494EA400
var_80A458C0: .word 0x3E99999A
var_80A458C4: .word 0x3AC49BA6
var_80A458C8: .word lbl_80A43ACC
.word var_80A42E00
.word var_80A42EA0
.word var_80A43358
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word var_80A4342C
.word var_80A434FC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word lbl_80A43ACC
.word var_80A435F4
.word var_80A436C8
.word var_80A43720
var_80A45924: .word 0x3E4CCCCD
var_80A45928: .word 0x3DCCCCCD
var_80A4592C: .word 0x3A83126F
var_80A45930: .word 0x3E99999A
var_80A45934: .word 0x3DCCCCCD
var_80A45938: .word 0x3ECCCCCD
var_80A4593C: .word 0x3ECCCCCD
var_80A45940: .word 0x3A031270
var_80A45944: .word 0x40490FDB
var_80A45948: .word 0x40C8F5C3
var_80A4594C: .word 0x3C23D70A
var_80A45950: .word 0x3CA3D70B
var_80A45954: .word 0x3F99999A
var_80A45958: .word 0x3CF5C28F
var_80A4595C: .word 0x3F4CCCCD
var_80A45960: .word 0x4316199A
var_80A45964: .word 0x44BB8000
var_80A45968: .word 0x3FD5DCA8
var_80A4596C: .word 0xB8C90FDB
var_80A45970: .word 0x3B6BEDFA
var_80A45974: .word 0x44BB8000
var_80A45978: .word 0x3DA3D70A
var_80A4597C: .word 0x3DF5C28F

.bss

var_80A47EE0: .space 0x04
var_80A47EE4: .space 0x01
var_80A47EE5: .space 0x01
var_80A47EE6: .space 0x01
var_80A47EE7: .space 0x01
var_80A47EE8: .space 0x04
var_80A47EEC: .space 0x01
var_80A47EED: .space 0x01
var_80A47EEE: .space 0x02
var_80A47EF0: .space 0x02
var_80A47EF2: .space 0x02
var_80A47EF4: .space 0x02
var_80A47EF6: .space 0x02
var_80A47EF8: .space 0x08
var_80A47F00: .space 0x0C
var_80A47F0C: .space 0x02
var_80A47F0E: .space 0x02
var_80A47F10: .space 0x02
var_80A47F12: .space 0x02
var_80A47F14: .space 0x02
var_80A47F16: .space 0x02
var_80A47F18: .space 0x04
var_80A47F1C: .space 0x02
var_80A47F1E: .space 0x02
var_80A47F20: .space 0x02
var_80A47F22: .space 0x02
var_80A47F24: .space 0x02
var_80A47F26: .space 0x02
var_80A47F28: .space 0x04
var_80A47F2C: .space 0x04
var_80A47F30: .space 0x08
var_80A47F38: .space 0x10
var_80A47F48: .space 0x04
var_80A47F4C: .space 0x0C
var_80A47F58: .space 0x04
var_80A47F5C: .space 0x0C
var_80A47F68: .space 0x0C
var_80A47F74: .space 0x04
var_80A47F78: .space 0x04
var_80A47F7C: .space 0x04
var_80A47F80: .space 0x04
var_80A47F84: .space 0x02
var_80A47F86: .space 0x02
var_80A47F88: .space 0x04
var_80A47F8C: .space 0x04
var_80A47F90: .space 0x02
var_80A47F92: .space 0x02
var_80A47F94: .space 0x04
var_80A47F98: .space 0x04
var_80A47F9C: .space 0x08
var_80A47FA4: .space 0x04
var_80A47FA8: .space 0x04
var_80A47FAC: .space 0x04
var_80A47FB0: .space 0x04
var_80A47FB4: .space 0x04
var_80A47FB8: .space 0x04
var_80A47FBC: .space 0x04
var_80A47FC0: .space 0x04
var_80A47FC4: .space 0x04
var_80A47FC8: .space 0x10
var_80A47FD8: .space 0x954
var_80A4892C: .space 0x04
var_80A48930: .space 0x04
var_80A48934: .space 0x04
var_80A48938: .space 0x960
var_80A49298: .space 0x960
var_80A49BF8: .space 0x0C
var_80A49C04: .space 0x0C
var_80A49C10: .space 0x08
var_80A49C18: .space 0x08
var_80A49C20: .space 0xF0
var_80A49D10: .space 0x04
var_80A49D14: .space 0x04
var_80A49D18: .space 0x04
var_80A49D1C: .space 0x04
var_80A49D20: .space 0x08
var_80A49D28: .space 0x04
var_80A49D2C: .space 0x04
var_80A49D30: .space 0x04
var_80A49D34: .space 0x04
var_80A49D38: .space 0x04
var_80A49D3C: .space 0x04
var_80A49D40: .space 0x08
var_80A49D48: .space 0x0C
var_80A49D54: .space 0x04
var_80A49D58: .space 0x04
var_80A49D5C: .space 0x04
var_80A49D60: .space 0x08
var_80A49D68: .space 0x20D0
var_80A4BE38: .space 0x10E0
var_80A4CF18: .space 0x04
var_80A4CF1C: .space 0x04
var_80A4CF20: .space 0x08
var_80A4CF28: .space 0x2080
var_80A4EFA8: .space 0x18
