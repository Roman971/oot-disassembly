.section .text
func_809A6160:
    lui     $at, %hi(var_809B6200)     # $at = 809B0000
    sw      a0, %lo(var_809B6200)($at) 
    lui     $at, %hi(var_809B6204)     # $at = 809B0000
    sw      a1, %lo(var_809B6204)($at) 
    lui     $at, %hi(var_809B6208)     # $at = 809B0000
    sw      a2, %lo(var_809B6208)($at) 
    jr      $ra                        
    nop


func_809A6180:
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_809B6200)      # v0 = 809B0000
    lui     v1, %hi(var_809B6204)      # v1 = 809B0000
    lui     a0, %hi(var_809B6208)      # a0 = 809B0000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, a0, %lo(var_809B6208)  # a0 = 809B6208
    addiu   v1, v1, %lo(var_809B6204)  # v1 = 809B6204
    addiu   v0, v0, %lo(var_809B6200)  # v0 = 809B6200
    lw      t6, 0x0000(v0)             # 809B6200
    addiu   $at, $zero, 0x763D         # $at = 0000763D
    lw      t9, 0x0000(v1)             # 809B6204
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
    lw      t2, 0x0000(a0)             # 809B6208
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
    sw      t5, 0x0000(v0)             # 809B6200
    sw      t6, 0x0000(v1)             # 809B6204
    sw      t7, 0x0000(a0)             # 809B6208
    lui     $at, %hi(var_809B08A0)     # $at = 809B0000
    cvt.s.w $f18, $f16                 
    lwc1    $f8, %lo(var_809B08A0)($at) 
    lui     $at, %hi(var_809B08A4)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B08A4)($at) 
    mtc1    t7, $f16                   # $f16 = 0.00
    div.s   $f10, $f6, $f8             
    lui     $at, %hi(var_809B08A8)     # $at = 809B0000
    div.s   $f6, $f18, $f4             
    lwc1    $f4, %lo(var_809B08A8)($at) 
    cvt.s.w $f18, $f16                 
    add.s   $f8, $f10, $f6             
    div.s   $f10, $f18, $f4            
    add.s   $f2, $f8, $f10             
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_809A62A0               
    abs.s   $f0, $f2                   
    sub.s   $f2, $f2, $f0              
lbl_809A628C:
    c.le.s  $f0, $f2                   
    nop
    bc1tl   lbl_809A628C               
    sub.s   $f2, $f2, $f0              
    abs.s   $f0, $f2                   
lbl_809A62A0:
    jr      $ra                        
    nop


func_809A62A8:
    mtc1    a1, $f12                   # $f12 = 0.00
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f4                   # $f4 = 450.00
    lwc1    $f2, 0x0000(a0)            # 00000000
    sub.s   $f14, $f4, $f12            
    abs.s   $f0, $f2                   
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_809A62DC               
    lwc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809A62D8:
    lwc1    $f16, 0x0008(a0)           # 00000008
lbl_809A62DC:
    lui     $at, 0x4334                # $at = 43340000
    abs.s   $f0, $f16                  
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_809A6300               
    mtc1    $at, $f18                  # $f18 = 180.00
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809A62FC:
    mtc1    $at, $f18                  # $f18 = 180.00
lbl_809A6300:
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f6                   # $f6 = 90.00
    sub.s   $f0, $f2, $f18             
    lui     $at, 0xC334                # $at = C3340000
    add.s   $f14, $f6, $f12            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1tl   lbl_809A634C               
    sub.s   $f0, $f16, $f18            
    mtc1    $at, $f8                   # $f8 = -180.00
    nop
    sub.s   $f0, $f2, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_809A6398               
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f0, $f16, $f18            
lbl_809A634C:
    lui     $at, 0xC334                # $at = C3340000
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_809A6370               
    mtc1    $at, $f10                  # $f10 = -180.00
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809A636C:
    mtc1    $at, $f10                  # $f10 = -180.00
lbl_809A6370:
    nop
    sub.s   $f0, $f16, $f10            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_809A6398               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809A6394:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809A6398:
    jr      $ra                        
    nop


func_809A63A0:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    lh      a2, 0x0016($sp)            
    blez    a2, lbl_809A64B8           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809A63B4:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809A64AC    
    sra     v0, v0, 16                 
    lui     $at, %hi(var_809B08AC)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B08AC)($at) 
    sb      $zero, 0x0026(a0)          # 00000026
    lbu     t7, 0x001B($sp)            
    lui     v0, %hi(var_809B03F8)      # v0 = 809B0000
    addiu   v0, v0, %lo(var_809B03F8)  # v0 = 809B03F8
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    mul.s   $f4, $f12, $f0             
    lui     $at, 0x4396                # $at = 43960000
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    mtc1    $at, $f8                   # $f8 = 300.00
    mul.s   $f6, $f14, $f0             
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    c.lt.s  $f8, $f12                  
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(v0)             # 809B03F8
    lui     $at, %hi(var_809B08B4)     # $at = 809B0000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(v0)             # 809B03FC
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(v0)             # 809B0400
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(v0)             # 809B03F8
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(v0)             # 809B03FC
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(v0)             # 809B0400
    swc1    $f4, 0x0030(a0)            # 00000030
    swc1    $f6, 0x0034(a0)            # 00000034
    bc1f    lbl_809A6484               
    sw      t3, 0x0020(a0)             # 00000020
    sh      $zero, 0x002A(a0)          # 0000002A
    lh      t4, 0x0012($sp)            
    lwc1    $f10, 0x0034(a0)           # 00000034
    lwc1    $f16, 0x0030(a0)           # 00000030
    sh      $zero, 0x002C(a0)          # 0000002C
    lui     $at, %hi(var_809B08B0)     # $at = 809B0000
    sub.s   $f18, $f10, $f16           
    sh      t4, 0x002E(a0)             # 0000002E
    lwc1    $f4, %lo(var_809B08B0)($at) 
    mul.s   $f6, $f18, $f4             
    jr      $ra                        
    swc1    $f6, 0x0038(a0)            # 00000038
lbl_809A6484:
    lh      t5, 0x0012($sp)            
    lwc1    $f8, 0x0034(a0)            # 00000034
    lwc1    $f10, 0x0030(a0)           # 00000030
    sh      t6, 0x002C(a0)             # 0000002C
    sh      t5, 0x002A(a0)             # 0000002A
    sub.s   $f16, $f8, $f10            
    lwc1    $f18, %lo(var_809B08B4)($at) 
    mul.s   $f4, $f16, $f18            
    jr      $ra                        
    swc1    $f4, 0x0038(a0)            # 00000038
lbl_809A64AC:
    slt     $at, v0, a2                
    bne     $at, $zero, lbl_809A63B4   
    addiu   a0, a0, 0x0040             # a0 = 00000040
lbl_809A64B8:
    jr      $ra                        
    nop


func_809A64C0:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sw      a0, 0x0010($sp)            
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addiu   v1, $sp, 0x0000            # v1 = FFFFFFF0
    lui     t6, %hi(var_809B0404)      # t6 = 809B0000
    addiu   t6, t6, %lo(var_809B0404)  # t6 = 809B0404
    lw      t8, 0x0000(t6)             # 809B0404
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809B0408
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809B040C
    sw      t8, 0x0008(v1)             # FFFFFFF8
lbl_809A64F8:
    lbu     t9, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t9, $zero, lbl_809A6588    
    sra     v0, v0, 16                 
    sb      a0, 0x0024(a1)             # 00000024
    lw      t1, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      t1, 0x0000(a1)             # 00000000
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0004(a1)             # 00000004
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0008(a1)             # 00000008
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x000C(a1)             # 0000000C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0010(a1)             # 00000010
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0014(a1)             # 00000014
    lw      t5, 0x0000(v1)             # FFFFFFF0
    sw      t5, 0x0018(a1)             # 00000018
    lw      t4, 0x0004(v1)             # FFFFFFF4
    sw      t4, 0x001C(a1)             # 0000001C
    lw      t5, 0x0008(v1)             # FFFFFFF8
    bne     a0, $at, lbl_809A656C      
    sw      t5, 0x0020(a1)             # 00000020
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x001C(a1)            # 0000001C
lbl_809A656C:
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f6, 0x0020($sp)           
    mtc1    $at, $f8                   # $f8 = 1.00
    sb      $zero, 0x0026(a1)          # 00000026
    swc1    $f6, 0x0030(a1)            # 00000030
    beq     $zero, $zero, lbl_809A6594 
    swc1    $f8, 0x0038(a1)            # 00000038
lbl_809A6588:
    slti    $at, v0, 0x0122            
    bne     $at, $zero, lbl_809A64F8   
    addiu   a1, a1, 0x0040             # a1 = 00000040
lbl_809A6594:
    jr      $ra                        
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_809A659C:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    mtc1    a2, $f12                   # $f12 = 0.00
    addiu   v1, $sp, 0x0000            # v1 = FFFFFFF0
    lui     t6, %hi(var_809B0410)      # t6 = 809B0000
    addiu   t6, t6, %lo(var_809B0410)  # t6 = 809B0410
    lw      t8, 0x0000(t6)             # 809B0410
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809B0414
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809B0418
    sw      t8, 0x0008(v1)             # FFFFFFF8
lbl_809A65D4:
    lbu     t9, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t9, $zero, lbl_809A664C    
    sra     v0, v0, 16                 
    sb      t0, 0x0024(a0)             # 00000024
    sb      t1, 0x0026(a0)             # 00000026
    lw      t3, 0x0000(a1)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sw      t3, 0x0000(a0)             # 00000000
    lw      t2, 0x0004(a1)             # 00000004
    sw      t2, 0x0004(a0)             # 00000004
    lw      t3, 0x0008(a1)             # 00000008
    sw      t3, 0x0008(a0)             # 00000008
    lw      t5, 0x0000(v1)             # FFFFFFF0
    sw      t5, 0x000C(a0)             # 0000000C
    lw      t4, 0x0004(v1)             # FFFFFFF4
    sw      t4, 0x0010(a0)             # 00000010
    lw      t5, 0x0008(v1)             # FFFFFFF8
    sw      t5, 0x0014(a0)             # 00000014
    lw      t7, 0x0000(v1)             # FFFFFFF0
    sw      t7, 0x0018(a0)             # 00000018
    lw      t6, 0x0004(v1)             # FFFFFFF4
    sw      t6, 0x001C(a0)             # 0000001C
    lw      t7, 0x0008(v1)             # FFFFFFF8
    swc1    $f12, 0x0030(a0)           # 00000030
    swc1    $f4, 0x0038(a0)            # 00000038
    beq     $zero, $zero, lbl_809A6658 
    sw      t7, 0x0020(a0)             # 00000020
lbl_809A664C:
    slti    $at, v0, 0x0122            
    bne     $at, $zero, lbl_809A65D4   
    addiu   a0, a0, 0x0040             # a0 = 00000040
lbl_809A6658:
    jr      $ra                        
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_809A6660:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809A6664:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809A6700    
    sra     v0, v0, 16                 
    lw      v0, 0x0014($sp)            
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sb      t7, 0x0024(a0)             # 00000024
    sb      $zero, 0x0026(a0)          # 00000026
    lw      t9, 0x0000(a1)             # 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0010($sp)           
    sw      v0, 0x003C(a0)             # 0000003C
    swc1    $f6, 0x0034(a0)            # 00000034
    bne     v0, $zero, lbl_809A66F4    
    swc1    $f4, 0x0030(a0)            # 00000030
    beq     $zero, $zero, lbl_809A66F8 
    sh      t4, 0x002A(a0)             # 0000002A
lbl_809A66F4:
    sh      $zero, 0x002A(a0)          # 0000002A
lbl_809A66F8:
    jr      $ra                        
    sb      $zero, 0x0025(a0)          # 00000025
lbl_809A6700:
    slti    $at, v0, 0x0118            
    bne     $at, $zero, lbl_809A6664   
    addiu   a0, a0, 0x0040             # a0 = 00000040
    jr      $ra                        
    nop


func_809A6714:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     a1, %hi(var_809B0518)      # a1 = 809B0000
    addiu   a1, a1, %lo(var_809B0518)  # a1 = 809B0518
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_809A6A08      
    lui     a1, 0x3C23                 # a1 = 3C230000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, %hi(var_809B0060)     # $at = 809B0000
    sw      s0, %lo(var_809B0060)($at) 
    lw      t7, 0x07C0(s1)             # 000007C0
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, s1, $at                
    lw      t8, 0x0028(t7)             # 00000028
    lui     v1, %hi(var_809B1700)      # v1 = 809B0000
    addiu   t4, $zero, 0x00A0          # t4 = 000000A0
    lh      t9, 0x0002(t8)             # 00000002
    addiu   v1, v1, %lo(var_809B1700)  # v1 = 809B1700
    addu    $at, $at, s1               
    mtc1    t9, $f4                    # $f4 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    cvt.s.w $f0, $f4                   
    trunc.w.s $f6, $f0                   
    swc1    $f0, 0x01AC(s0)            # 000001AC
    lw      t2, 0x07C0(s1)             # 000007C0
    mfc1    t1, $f6                    
    lw      t3, 0x0028(t2)             # 00000028
    sh      t1, 0x0002(t3)             # 00000002
    sh      t4, 0x1D30(a2)             # 00001D30
    sw      v1, 0x1E10($at)            # 00011E10
lbl_809A67D0:
    sll     t5, v0,  6                 
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x012C            
    addu    t6, v1, t5                 
    bne     $at, $zero, lbl_809A67D0   
    sb      $zero, 0x0024(t6)          # 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    swc1    $f8, 0x0024(s0)            # 00000024
    lw      t7, 0x07C0(s1)             # 000007C0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lw      t8, 0x0028(t7)             # 00000028
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    lh      t9, 0x0002(t8)             # 00000002
    sb      t0, 0x01C1(s0)             # 000001C1
    sb      t2, 0x00AF(s0)             # 000000AF
    mtc1    t9, $f10                   # $f10 = 0.00
    sb      $zero, 0x00AE(s0)          # 000000AE
    sh      $zero, 0x001C(s0)          # 0000001C
    cvt.s.w $f16, $f10                 
    lui     a1, 0x3C23                 # a1 = 3C230000
    swc1    $f6, 0x017C(s0)            # 0000017C
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0028(s0)            # 00000028
    jal     func_80020F88              
    sw      a2, 0x0044($sp)            
    addiu   a1, s0, 0x14EC             # a1 = 000014EC
    sw      a1, 0x0048($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809B03CC)      # a3 = 809B0000
    lw      a1, 0x0048($sp)            
    addiu   a3, a3, %lo(var_809B03CC)  # a3 = 809B03CC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lw      t1, 0x0044($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020640              
    lb      a1, 0x1CBC(t1)             # 00001CBC
    beq     v0, $zero, lbl_809A6938    
    lui     t9, 0x8012                 # t9 = 80120000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f8                   # $f8 = -280.00
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sw      t3, 0x0028($sp)            
    sw      a0, 0x0048($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0018($sp)           
    jal     func_800253F0              
    swc1    $f8, 0x0014($sp)           
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f10                  # $f10 = -280.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      a0, 0x0048($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0xC348                 # a3 = C3480000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f10, 0x0010($sp)          
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)          
    lw      t5, 0x0044($sp)            
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t6, $zero, 0xFE0C          # t6 = FFFFFE0C
    sh      t4, 0x1D30(t5)             # 00001D30
    lw      t7, 0x07C0(s1)             # 000007C0
    lw      t8, 0x0028(t7)             # 00000028
    beq     $zero, $zero, lbl_809A6AE8 
    sh      t6, 0x0002(t8)             # 00000002
lbl_809A6938:
    lhu     t9, -0x4B4E(t9)            # FFFFB4B2
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    andi    t0, t9, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_809A6970    
    lui     $at, 0x447A                # $at = 447A0000
    jal     func_800CAA70              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sh      t2, 0x016E(s0)             # 0000016E
    beq     $zero, $zero, lbl_809A6988 
    swc1    $f18, 0x0D54(s0)           # 00000D54
lbl_809A6970:
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    sh      t1, 0x0F50(s0)             # 00000F50
    sh      t3, 0x0148(s0)             # 00000148
    sh      t4, 0x016E(s0)             # 0000016E
    swc1    $f4, 0x0024(s0)            # 00000024
lbl_809A6988:
    lwc1    $f6, 0x0024(s0)            # 00000024
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      a0, 0x0048($sp)            
    sw      t5, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a3, $zero, 0x00C4          # a3 = 000000C4
    jal     func_800253F0              
    swc1    $f10, 0x0018($sp)          
    lui     $at, %hi(var_809B0064)     # $at = 809B0000
    sw      v0, %lo(var_809B0064)($at) 
    lui     t7, %hi(func_809AE788)     # t7 = 809B0000
    lui     t6, %hi(func_809AD348)     # t6 = 809B0000
    addiu   t7, t7, %lo(func_809AE788) # t7 = 809AE788
    addiu   t6, t6, %lo(func_809AD348) # t6 = 809AD348
    sw      t7, 0x0134(s0)             # 00000134
    sw      t6, 0x0130(s0)             # 00000130
    lw      a1, 0x0048($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    beq     $zero, $zero, lbl_809A6AEC 
    lw      $ra, 0x003C($sp)           
lbl_809A6A08:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 0000D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809A6B4C              
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00AE(s0)             # 000000AE
    lw      t0, 0x07C0(s1)             # 000007C0
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    lw      t2, 0x0028(t0)             # 00000028
    addiu   t9, $zero, 0xFFCE          # t9 = FFFFFFCE
    addiu   v0, $sp, 0x004C            # v0 = FFFFFFE4
    sh      t9, 0x0002(t2)             # 00000002
    swc1    $f16, 0x01B4(s0)           # 000001B4
    lw      t1, 0x07C0(s1)             # 000007C0
    lw      t7, 0x0024(s0)             # 00000024
    addiu   a1, s0, 0x100C             # a1 = 0000100C
    lw      t3, 0x0028(t1)             # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    swc1    $f4, 0x0028(s0)            # 00000028
    sw      t7, 0x0000(v0)             # FFFFFFE4
    lw      t5, 0x0028(s0)             # 00000028
    lw      t8, 0x0000(v0)             # FFFFFFE4
    sw      t5, 0x0004(v0)             # FFFFFFE8
    lw      t7, 0x002C(s0)             # 0000002C
    sw      t7, 0x0008(v0)             # FFFFFFEC
    sw      t8, 0x01C4(s0)             # 000001C4
    lw      t6, 0x0004(v0)             # FFFFFFE8
    sw      t6, 0x01C8(s0)             # 000001C8
    lw      t8, 0x0008(v0)             # FFFFFFEC
    sw      t8, 0x01CC(s0)             # 000001CC
    lw      t9, 0x0000(v0)             # FFFFFFE4
    sw      t9, 0x0100(s0)             # 00000100
    lw      t0, 0x0004(v0)             # FFFFFFE8
    sw      t0, 0x0104(s0)             # 00000104
    lw      t9, 0x0008(v0)             # FFFFFFEC
    sw      t9, 0x0108(s0)             # 00000108
    jal     func_8004A484              
    sw      a1, 0x0048($sp)            
    lui     a3, %hi(var_809B03BC)      # a3 = 809B0000
    addiu   t2, s0, 0x102C             # t2 = 0000102C
    lw      a1, 0x0048($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809B03BC)  # a3 = 809B03BC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    swc1    $f6, 0x0D54(s0)            # 00000D54
lbl_809A6AE8:
    lw      $ra, 0x003C($sp)           
lbl_809A6AEC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809A6AFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   a1, a2, 0x100C             # a1 = 0000100C
    or      a0, a3, $zero              # a0 = 00000000
    slti    $at, t6, 0x0064            
    bne     $at, $zero, lbl_809A6B34   
    nop
    jal     func_8004A550              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809A6B40 
    lw      $ra, 0x0014($sp)           
lbl_809A6B34:
    jal     func_8004ABCC              
    addiu   a1, a2, 0x14EC             # a1 = 000014EC
    lw      $ra, 0x0014($sp)           
lbl_809A6B40:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809A6B4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     t6, %hi(func_809A6BA0)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_809A6BA0) # t6 = 809A6BA0
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t6, 0x0140(a0)             # 00000140
    sh      t7, 0x0148(a0)             # 00000148
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    trunc.w.s $f4, $f0                   
    lw      a0, 0x0018($sp)            
    mfc1    t1, $f4                    
    nop
    addiu   t2, t1, 0x0032             # t2 = 00000032
    sh      t2, 0x016E(a0)             # 0000016E
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809A6BA0:
    addiu   $sp, $sp, 0xFE48           # $sp = FFFFFE48
    sw      s2, 0x006C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s5, 0x0078($sp)            
    sw      s4, 0x0074($sp)            
    sw      s3, 0x0070($sp)            
    sw      s1, 0x0068($sp)            
    sw      s0, 0x0064($sp)            
    sdc1    $f30, 0x0058($sp)          
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    sw      a1, 0x01BC($sp)            
    lw      t6, 0x01BC($sp)            
    sh      $zero, 0x01B4($sp)         
    lw      t7, 0x013C(s2)             # 0000013C
    lw      s5, 0x1C44(t6)             # 00001C44
    sw      t7, 0x019C($sp)            
    lh      v1, 0x0148(s2)             # 00000148
    slti    $at, v1, 0x00CC            
    beq     $at, $zero, lbl_809A6C24   
    nop
    lw      t8, 0x07C0(t6)             # 000007C0
    lh      v1, 0x0148(s2)             # 00000148
    lw      t9, 0x0028(t8)             # 00000028
    lh      t0, 0x0002(t9)             # 00000002
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0028(s2)            # 00000028
lbl_809A6C24:
    beq     v1, $zero, lbl_809A6C4C    
    slti    $at, v1, 0x00C8            
    beq     $at, $zero, lbl_809A6C4C   
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beq     v1, $at, lbl_809A6C4C      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_809A6C4C      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_809A7094      
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809A6C4C:
    bne     v1, $zero, lbl_809A6D0C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t1, %hi(var_809B0060)      # t1 = 809B0000
    lw      t1, %lo(var_809B0060)(t1)  
    lui     $at, 0x447A                # $at = 447A0000
    lh      t2, 0x0F50(t1)             # 809B0F50
    beql    t2, $zero, lbl_809A6CB8    
    mtc1    $at, $f0                   # $f0 = 1000.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f0                   # $f0 = 1000.00
    lui     $at, %hi(var_809B08B8)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B08B8)($at) 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f24                  # $f24 = 2000.00
    lui     $at, %hi(var_809B08BC)     # $at = 809B0000
    lwc1    $f26, %lo(var_809B08BC)($at) 
    lui     $at, %hi(var_809B08C0)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B08C0)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    mtc1    $at, $f22                  # $f22 = 10.00
    swc1    $f0, 0x0190($sp)           
    swc1    $f0, 0x0184($sp)           
    swc1    $f2, 0x0188($sp)           
    beq     $zero, $zero, lbl_809A6CF8 
    swc1    $f8, 0x018C($sp)           
    mtc1    $at, $f0                   # $f0 = 10.00
lbl_809A6CB8:
    lui     $at, %hi(var_809B08C4)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B08C4)($at) 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f24                  # $f24 = 2000.00
    lui     $at, %hi(var_809B08C8)     # $at = 809B0000
    lwc1    $f26, %lo(var_809B08C8)($at) 
    lui     $at, %hi(var_809B08CC)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B08CC)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f22                  # $f22 = 30.00
    swc1    $f0, 0x0190($sp)           
    swc1    $f0, 0x0184($sp)           
    swc1    $f2, 0x0188($sp)           
    swc1    $f10, 0x018C($sp)          
lbl_809A6CF8:
    swc1    $f20, 0x0180($sp)          
    swc1    $f22, 0x017C($sp)          
    swc1    $f24, 0x0198($sp)          
    beq     $zero, $zero, lbl_809A6FCC 
    swc1    $f26, 0x0194($sp)          
lbl_809A6D0C:
    bne     v1, $at, lbl_809A6D98      
    lui     $at, %hi(var_809B08D0)     # $at = 809B0000
    lwc1    $f24, %lo(var_809B08D0)($at) 
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f26                  # $f26 = -1000.00
    lui     $at, %hi(var_809B08D4)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B08D4)($at) 
    lui     $at, %hi(var_809B08D8)     # $at = 809B0000
    mtc1    $zero, $f30                # $f30 = 0.00
    lwc1    $f18, %lo(var_809B08D8)($at) 
    swc1    $f24, 0x0188($sp)          
    swc1    $f16, 0x0190($sp)          
    swc1    $f18, 0x018C($sp)          
    swc1    $f30, 0x0184($sp)          
    lh      t3, 0x016C(s2)             # 0000016C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f22                  # $f22 = 60.00
    andi    t4, t3, 0x000F             # t4 = 00000000
    bnel    t4, $zero, lbl_809A6D88    
    swc1    $f20, 0x0180($sp)          
    lh      t5, 0x016E(s2)             # 0000016E
    addiu   a0, s2, 0x1000             # a0 = 00001000
    addiu   a1, $zero, 0x38F2          # a1 = 000038F2
    slti    $at, t5, 0x001E            
    beq     $at, $zero, lbl_809A6D84   
    lui     a2, 0x8010                 # a2 = 80100000
    jal     func_800C5898              
    addiu   a2, a2, 0x18E0             # a2 = 801018E0
lbl_809A6D84:
    swc1    $f20, 0x0180($sp)          
lbl_809A6D88:
    swc1    $f22, 0x017C($sp)          
    swc1    $f24, 0x0198($sp)          
    beq     $zero, $zero, lbl_809A6FCC 
    swc1    $f26, 0x0194($sp)          
lbl_809A6D98:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_809A6F04      
    addiu   $at, $zero, 0x0065         # $at = 00000065
    lh      t7, 0x016E(s2)             # 0000016E
    slti    $at, t7, 0x0029            
    bne     $at, $zero, lbl_809A6E54   
    lui     $at, %hi(var_809B08DC)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B08DC)($at) 
    lui     $at, %hi(var_809B08E0)     # $at = 809B0000
    lwc1    $f24, %lo(var_809B08E0)($at) 
    lui     $at, 0xC548                # $at = C5480000
    mtc1    $at, $f26                  # $f26 = -3200.00
    lui     $at, %hi(var_809B08E4)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B08E4)($at) 
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    lui     $at, %hi(var_809B08E8)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B08E8)($at) 
    swc1    $f2, 0x0188($sp)           
    swc1    $f4, 0x0190($sp)           
    swc1    $f6, 0x018C($sp)           
    swc1    $f8, 0x0184($sp)           
    lh      t6, 0x016C(s2)             # 0000016C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f22                  # $f22 = 60.00
    andi    t8, t6, 0x001F             # t8 = 00000000
    bne     t8, $zero, lbl_809A6E4C    
    addiu   a0, s2, 0x1000             # a0 = 00001000
    lui     a2, 0x8010                 # a2 = 80100000
    addiu   a2, a2, 0x18E0             # a2 = 801018E0
    jal     func_800C5898              
    addiu   a1, $zero, 0x38F2          # a1 = 000038F2
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_800915CC              
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t9, 0x0668(s5)             # 00000668
    or      a0, s5, $zero              # a0 = 00000000
    lhu     a1, 0x0092(t9)             # 00000092
    addiu   a1, a1, 0x6806             # a1 = 00006806
    jal     func_80022F84              
    andi    a1, a1, 0xFFFF             # a1 = 00006806
lbl_809A6E4C:
    beq     $zero, $zero, lbl_809A6EF0 
    swc1    $f20, 0x0180($sp)          
lbl_809A6E54:
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f22                  # $f22 = 70.00
    lui     $at, %hi(var_809B08EC)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B08EC)($at) 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f24                  # $f24 = 2000.00
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f26                  # $f26 = -1000.00
    lui     $at, %hi(var_809B08F0)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B08F0)($at) 
    lui     $at, %hi(var_809B08F4)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B08F4)($at) 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    swc1    $f2, 0x0188($sp)           
    swc1    $f10, 0x0190($sp)          
    swc1    $f16, 0x018C($sp)          
    swc1    $f18, 0x0184($sp)          
    lh      t0, 0x016C(s2)             # 0000016C
    addiu   a0, s2, 0x1000             # a0 = 00001000
    addiu   a1, $zero, 0x38F2          # a1 = 000038F2
    andi    t1, t0, 0x000F             # t1 = 00000000
    bne     t1, $zero, lbl_809A6EEC    
    mov.s   $f20, $f22                 
    lui     a2, 0x8010                 # a2 = 80100000
    jal     func_800C5898              
    addiu   a2, a2, 0x18E0             # a2 = 801018E0
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_800915CC              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      t2, 0x0668(s5)             # 00000668
    or      a0, s5, $zero              # a0 = 00000000
    lhu     a1, 0x0092(t2)             # 00000092
    addiu   a1, a1, 0x6806             # a1 = 00006806
    jal     func_80022F84              
    andi    a1, a1, 0xFFFF             # a1 = 00006806
lbl_809A6EEC:
    swc1    $f20, 0x0180($sp)          
lbl_809A6EF0:
    swc1    $f22, 0x017C($sp)          
    swc1    $f24, 0x0198($sp)          
    beq     $zero, $zero, lbl_809A6FCC 
    swc1    $f26, 0x0194($sp)          
    addiu   $at, $zero, 0x0065         # $at = 00000065
lbl_809A6F04:
    bne     v1, $at, lbl_809A6F68      
    lui     $at, %hi(var_809B08F8)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B08F8)($at) 
    lui     $at, %hi(var_809B08FC)     # $at = 809B0000
    lwc1    $f24, %lo(var_809B08FC)($at) 
    lui     $at, 0x4548                # $at = 45480000
    mtc1    $at, $f26                  # $f26 = 3200.00
    lui     $at, %hi(var_809B0900)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0900)($at) 
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    lui     $at, %hi(var_809B0904)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0904)($at) 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    mtc1    $at, $f22                  # $f22 = 30.00
    swc1    $f2, 0x0188($sp)           
    swc1    $f24, 0x0198($sp)          
    swc1    $f26, 0x0194($sp)          
    swc1    $f4, 0x0190($sp)           
    swc1    $f6, 0x018C($sp)           
    swc1    $f8, 0x0184($sp)           
    swc1    $f20, 0x0180($sp)          
    beq     $zero, $zero, lbl_809A6FCC 
    swc1    $f22, 0x017C($sp)          
lbl_809A6F68:
    slti    $at, v1, 0x00C8            
    bne     $at, $zero, lbl_809A6FCC   
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f24                  # $f24 = -400.00
    lui     $at, 0xC548                # $at = C5480000
    mtc1    $at, $f26                  # $f26 = -3200.00
    lui     $at, %hi(var_809B0908)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B0908)($at) 
    lui     $at, 0x4548                # $at = 45480000
    mtc1    $at, $f18                  # $f18 = 3200.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f22                  # $f22 = 60.00
    swc1    $f24, 0x0198($sp)          
    swc1    $f26, 0x0194($sp)          
    swc1    $f16, 0x018C($sp)          
    swc1    $f18, 0x0188($sp)          
    swc1    $f4, 0x0184($sp)           
    swc1    $f20, 0x0180($sp)          
    swc1    $f10, 0x0190($sp)          
    swc1    $f22, 0x017C($sp)          
lbl_809A6FCC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f28                  # $f28 = 1.00
    lwc1    $f20, 0x0180($sp)          
    lwc1    $f24, 0x0198($sp)          
    mfc1    a2, $f28                   
    mfc1    a3, $f20                   
    mfc1    a1, $f24                   
    lwc1    $f22, 0x017C($sp)          
    lwc1    $f26, 0x0194($sp)          
    jal     func_80064280              
    addiu   a0, s2, 0x0180             # a0 = 00000180
    mfc1    a1, $f26                   
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0178             # a0 = 00000178
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a2, $f28                   
    mfc1    a3, $f22                   
    addiu   a0, s2, 0x017C             # a0 = 0000017C
    jal     func_80064280              
    lw      a1, 0x0190($sp)            
    mfc1    a2, $f28                   
    mfc1    a3, $f20                   
    addiu   a0, s2, 0x018C             # a0 = 0000018C
    jal     func_80064280              
    lw      a1, 0x018C($sp)            
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0184             # a0 = 00000184
    lw      a1, 0x0188($sp)            
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a2, $f28                   
    mfc1    a3, $f22                   
    addiu   a0, s2, 0x0188             # a0 = 00000188
    jal     func_80064280              
    lw      a1, 0x0184($sp)            
    lwc1    $f6, 0x0180(s2)            # 00000180
    lwc1    $f10, 0x018C(s2)           # 0000018C
    lh      t3, 0x015E(s2)             # 0000015E
    trunc.w.s $f8, $f6                   
    lh      t9, 0x0160(s2)             # 00000160
    trunc.w.s $f16, $f10                 
    mfc1    t6, $f8                    
    mfc1    t4, $f16                   
    addu    t8, t3, t6                 
    sh      t8, 0x015E(s2)             # 0000015E
    addu    t5, t9, t4                 
    sh      t5, 0x0160(s2)             # 00000160
    lh      v1, 0x0148(s2)             # 00000148
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809A7094:
    mtc1    $at, $f28                  # $f28 = 1.00
    mtc1    $zero, $f30                # $f30 = 0.00
    slti    $at, v1, 0x0066            
    bne     $at, $zero, lbl_809A70E8   
    or      v0, v1, $zero              # v0 = 00000000
    slti    $at, v0, 0x0067            
    bne     $at, $zero, lbl_809A70D4   
    addiu   t7, v0, 0xFF38             # t7 = FFFFFF38
    sltiu   $at, t7, 0x0007            
    beq     $at, $zero, lbl_809A977C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_809B090C)     # $at = 809B0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_809B090C)($at) 
    jr      t7                         
    nop
lbl_809A70D4:
    addiu   $at, $zero, 0x0066         # $at = 00000066
    beq     v0, $at, lbl_809A8BA4      
    addiu   a0, s2, 0x0194             # a0 = 00000194
    beq     $zero, $zero, lbl_809A9780 
    lwc1    $f0, 0x0050(s2)            # 00000050
lbl_809A70E8:
    slti    $at, v0, 0x0065            
    bne     $at, $zero, lbl_809A7108   
    sll     t3, v0,  2                 
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beql    v0, $at, lbl_809A8630      
    lh      t0, 0x0F52(s2)             # 00000F52
    beq     $zero, $zero, lbl_809A9780 
    lwc1    $f0, 0x0050(s2)            # 00000050
lbl_809A7108:
    slti    $at, v0, 0x000C            
    bne     $at, $zero, lbl_809A7124   
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beq     v0, $at, lbl_809A848C      
    addiu   a0, s2, 0x1000             # a0 = 00001000
    beq     $zero, $zero, lbl_809A9780 
    lwc1    $f0, 0x0050(s2)            # 00000050
lbl_809A7124:
    sltiu   $at, v0, 0x000C            
    beq     $at, $zero, lbl_809A977C   
    lui     $at, %hi(var_809B0928)     # $at = 809B0000
    addu    $at, $at, t3               
    lw      t3, %lo(var_809B0928)($at) 
    jr      t3                         
    nop
var_809A7140:
    lw      t6, 0x0004(s2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     s3, %hi(var_809B0068)      # s3 = 809B0000
    and     t8, t6, $at                
    addiu   s3, s3, %lo(var_809B0068)  # s3 = 809B0068
    sw      t8, 0x0004(s2)             # 00000004
    lw      t0, 0x0000(s3)             # 809B0068
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    addiu   t2, $zero, 0x0046          # t2 = 00000046
    bne     s2, t0, lbl_809A717C       
    nop
    lh      t9, 0x008A(s2)             # 0000008A
    sh      t1, 0x0148(s2)             # 00000148
    sh      t2, 0x016E(s2)             # 0000016E
    sh      t9, 0x00B6(s2)             # 000000B6
lbl_809A717C:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A7184:
    lh      t7, 0x016E(s2)             # 0000016E
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    slti    $at, t7, 0x0014            
    sb      t4, 0x01C1(s2)             # 000001C1
    beq     $at, $zero, lbl_809A7204   
    sh      t5, 0x01BC(s2)             # 000001BC
    lui     $at, %hi(var_809B0958)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B0958)($at) 
    lui     a1, 0x3E19                 # a1 = 3E190000
    ori     a1, a1, 0x999A             # a1 = 3E19999A
    mfc1    a3, $f22                   
    addiu   a0, s2, 0x01D0             # a0 = 000001D0
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f20                  # $f20 = 150.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    mfc1    a2, $f28                   
    mfc1    a1, $f20                   
    mfc1    a3, $f26                   
    jal     func_80064280              
    addiu   a0, s2, 0x0194             # a0 = 00000194
    lwc1    $f18, 0x0194(s2)           # 00000194
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    c.le.s  $f20, $f18                 
    nop
    bc1fl   lbl_809A7208               
    lh      v0, 0x016E(s2)             # 0000016E
    sh      $zero, 0x0148(s2)          # 00000148
    sh      t3, 0x016E(s2)             # 0000016E
lbl_809A7204:
    lh      v0, 0x016E(s2)             # 0000016E
lbl_809A7208:
    slti    $at, v0, 0x0033            
    bne     $at, $zero, lbl_809A721C   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     $zero, $zero, lbl_809A7260 
    sh      t6, 0x017A($sp)            
lbl_809A721C:
    slti    $at, v0, 0x0029            
    bne     $at, $zero, lbl_809A7230   
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    beq     $zero, $zero, lbl_809A7260 
    sh      t8, 0x017A($sp)            
lbl_809A7230:
    slti    $at, v0, 0x001F            
    bne     $at, $zero, lbl_809A7244   
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    beq     $zero, $zero, lbl_809A7260 
    sh      t0, 0x017A($sp)            
lbl_809A7244:
    slti    $at, v0, 0x0015            
    bne     $at, $zero, lbl_809A725C   
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    beq     $zero, $zero, lbl_809A7260 
    sh      t1, 0x017A($sp)            
lbl_809A725C:
    sh      t2, 0x017A($sp)            
lbl_809A7260:
    lh      t9, 0x017A($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
    lw      s5, 0x01BC($sp)            
    blez    t9, lbl_809A7368           
    lui     $at, 0x0001                # $at = 00010000
    addu    s5, s5, $at                
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f28                  # $f28 = 110.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f24                  # $f24 = 65536.00
    addiu   s3, s2, 0x0024             # s3 = 00000024
    addiu   s0, $sp, 0x016C            # s0 = FFFFFFB4
    lui     $at, 0x4248                # $at = 42480000
lbl_809A729C:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    nop
    mov.s   $f20, $f0                  
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    lw      t5, 0x0000(s3)             # 00000024
    mov.s   $f22, $f0                  
    mov.s   $f12, $f0                  
    sw      t5, 0x0000(s0)             # FFFFFFB4
    lw      t4, 0x0004(s3)             # 00000028
    sw      t4, 0x0004(s0)             # FFFFFFB8
    lw      t5, 0x0008(s3)             # 0000002C
    jal     func_800CF470              
    sw      t5, 0x0008(s0)             # FFFFFFBC
    mul.s   $f6, $f0, $f20             
    lwc1    $f4, 0x016C($sp)           
    mov.s   $f12, $f22                 
    add.s   $f8, $f4, $f6              
    jal     func_800D2CD0              
    swc1    $f8, 0x016C($sp)           
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x0174($sp)          
    lw      t7, 0x01BC($sp)            
    mfc1    a2, $f26                   
    mfc1    a3, $f28                   
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    addiu   t1, $zero, 0x0122          # t1 = 00000122
    add.s   $f18, $f10, $f16           
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    or      a1, s0, $zero              # a1 = FFFFFFB4
    swc1    $f18, 0x0174($sp)          
    lw      t3, 0x07C0(t7)             # 000007C0
    lw      t6, 0x0028(t3)             # 00000028
    lh      t8, 0x0002(t6)             # 00000002
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0170($sp)           
    lw      a0, 0x1E10(s5)             # 00001E10
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    jal     func_809A63A0              
    sw      t0, 0x0010($sp)            
    lh      t9, 0x017A($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slt     $at, s1, t9                
    bnel    $at, $zero, lbl_809A729C   
    lui     $at, 0x4248                # $at = 42480000
lbl_809A7368:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A7370:
    lui     t4, %hi(var_809B0060)      # t4 = 809B0000
    lw      t4, %lo(var_809B0060)(t4)  
    addiu   a0, s2, 0x1000             # a0 = 00001000
    lh      t5, 0x0F50(t4)             # 809B0F50
    bnel    t5, $zero, lbl_809A7394    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    jal     func_80064780              
    addiu   a1, $zero, 0x30F0          # a1 = 000030F0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
lbl_809A7394:
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x01B8             # a0 = 000001B8
    jal     func_80064280              
    lui     a1, 0xC0A0                 # a1 = C0A00000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lwc1    $f8, 0x0178(s2)            # 00000178
lbl_809A73C4:
    lh      t1, 0x015E(s2)             # 0000015E
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    nop
    sll     t6, t3, 16                 
    sra     t8, t6, 16                 
    multu   t8, s1                     
    mflo    t0                         
    addu    a0, t0, t1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f16                   # $f16 = 0.00
    lwc1    $f10, 0x0184(s2)           # 00000184
    lui     $at, %hi(var_809B095C)     # $at = 809B0000
    cvt.s.w $f18, $f16                 
    lwc1    $f4, %lo(var_809B095C)($at) 
    lh      t3, 0x0160(s2)             # 00000160
    lwc1    $f6, 0x017C(s2)            # 0000017C
    trunc.w.s $f16, $f10                 
    mul.s   $f20, $f18, $f4            
    mfc1    t9, $f16                   
    nop
    sll     t4, t9, 16                 
    sra     t5, t4, 16                 
    multu   t5, s1                     
    mul.s   $f8, $f20, $f0             
    nop
    mul.s   $f22, $f6, $f8             
    mflo    t7                         
    addu    a0, t7, t3                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    multu   s1, s4                     
    mul.s   $f30, $f20, $f0            
    lwc1    $f18, 0x0190(s2)           # 00000190
    lwc1    $f16, 0x0188(s2)           # 00000188
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f18, $f18, $f26           
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f24, $f16, $f30           
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    mflo    t6                         
    addu    a0, s2, t6                 
    mfc1    a1, $f18                   
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    bnel    s1, $at, lbl_809A74AC      
    lwc1    $f16, 0x0D54(s2)           # 00000D54
    multu   s1, s3                     
    mflo    t8                         
    addu    t0, s2, t8                 
    lh      t1, 0x0C5C(t0)             # 00000C5C
    sh      t1, 0x01B4($sp)            
    lwc1    $f16, 0x0D54(s2)           # 00000D54
lbl_809A74AC:
    multu   s1, s3                     
    lwc1    $f6, 0x0D58(s2)            # 00000D58
    div.s   $f18, $f28, $f16           
    trunc.w.s $f10, $f22                 
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f10                   
    mflo    t2                         
    addu    s0, s2, t2                 
    mfc1    a3, $f8                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 00000C10
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f16, 0x0D54(s2)           # 00000D54
    lwc1    $f6, 0x0D58(s2)            # 00000D58
    trunc.w.s $f10, $f24                 
    addiu   a0, s0, 0x0C60             # a0 = 00000C14
    div.s   $f18, $f28, $f16           
    mfc1    a1, $f10                   
    trunc.w.s $f8, $f6                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A73C4   
    lwc1    $f8, 0x0178(s2)            # 00000178
    lw      t0, 0x0024(s2)             # 00000024
    lw      t8, 0x0028(s2)             # 00000028
    mfc1    a2, $f28                   
    sw      t0, 0x01C4(s2)             # 000001C4
    lw      t0, 0x002C(s2)             # 0000002C
    lui     a3, 0x3D23                 # a3 = 3D230000
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    addiu   a0, s2, 0x0068             # a0 = 00000068
    lui     a1, 0x3F40                 # a1 = 3F400000
    sw      t8, 0x01C8(s2)             # 000001C8
    jal     func_80064280              
    sw      t0, 0x01CC(s2)             # 000001CC
    lh      t1, 0x0148(s2)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s2, 0x00B6             # a0 = 000000B6
    bnel    t1, $at, lbl_809A75C8      
    mfc1    a1, $f28                   
    lh      t2, 0x008A(s2)             # 0000008A
    lh      t9, 0x01BE(s2)             # 000001BE
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    addu    a1, t2, t9                 
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    mfc1    a1, $f28                   
lbl_809A75C8:
    lui     a3, 0x3D23                 # a3 = 3D230000
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    addiu   a0, s2, 0x0190             # a0 = 00000190
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     t4, %hi(var_809B0060)      # t4 = 809B0000
    lw      t4, %lo(var_809B0060)(t4)  
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    lui     a3, 0x3B03                 # a3 = 3B030000
    lh      t5, 0x0F50(t4)             # 809B0F50
    beql    t5, $zero, lbl_809A7630    
    mfc1    a1, $f28                   
    mfc1    a1, $f28                   
    mfc1    a2, $f28                   
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    jal     func_80064280              
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    lui     a1, 0x4370                 # a1 = 43700000
    jal     func_80064280              
    lui     a3, 0x4040                 # a3 = 40400000
    beq     $zero, $zero, lbl_809A7654 
    lh      v1, 0x0148(s2)             # 00000148
    mfc1    a1, $f28                   
lbl_809A7630:
    mfc1    a2, $f28                   
    jal     func_80064280              
    ori     a3, a3, 0x126F             # a3 = 0000126F
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    lui     a1, 0x43C8                 # a1 = 43C80000
    jal     func_80064280              
    lui     a3, 0x40C0                 # a3 = 40C00000
    lh      v1, 0x0148(s2)             # 00000148
lbl_809A7654:
    bnel    v1, $zero, lbl_809A76C0    
    lh      t2, 0x016E(s2)             # 0000016E
    lh      t7, 0x016E(s2)             # 0000016E
    lw      t3, 0x019C($sp)            
    bnel    t7, $zero, lbl_809A9780    
    lwc1    $f0, 0x0050(s2)            # 00000050
    beq     t3, $zero, lbl_809A7688    
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lh      v0, 0x0148(t3)             # 00000148
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809A977C      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_809A977C      
lbl_809A7688:
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sh      t6, 0x0148(s2)             # 00000148
    jal     func_800C5928              
    sh      t8, 0x016E(s2)             # 0000016E
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f12                  # $f12 = 4096.00
    jal     func_80026D90              
    nop
    trunc.w.s $f10, $f0                  
    lh      v1, 0x0148(s2)             # 00000148
    mfc1    t1, $f10                   
    beq     $zero, $zero, lbl_809A977C 
    sh      t1, 0x01BE(s2)             # 000001BE
    lh      t2, 0x016E(s2)             # 0000016E
lbl_809A76C0:
    lh      v0, 0x0D04(s2)             # 00000D04
    bnel    t2, $zero, lbl_809A9780    
    lwc1    $f0, 0x0050(s2)            # 00000050
    bltz    v0, lbl_809A977C           
    lh      t9, 0x01B4($sp)            
    bgez    t9, lbl_809A977C           
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   s0, s0, %lo(var_809B0064)  # s0 = 809B0064
    sh      t4, 0x0148(s2)             # 00000148
    lw      t5, 0x0000(s0)             # 809B0064
    addiu   t7, $zero, 0x00AF          # t7 = 000000AF
    addiu   t3, $zero, 0x0037          # t3 = 00000037
    bnel    s2, t5, lbl_809A770C       
    sh      t3, 0x016E(s2)             # 0000016E
    sh      t7, 0x016E(s2)             # 0000016E
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
    sh      t3, 0x016E(s2)             # 0000016E
lbl_809A770C:
    lh      v1, 0x0148(s2)             # 00000148
    beq     $zero, $zero, lbl_809A9780 
    lwc1    $f0, 0x0050(s2)            # 00000050
var_809A7718:
    lw      t6, 0x0004(s2)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    addiu   a0, s2, 0x1000             # a0 = 00001000
    or      t8, t6, $at                # t8 = 01000000
    sw      t8, 0x0004(s2)             # 00000004
    jal     func_80064780              
    addiu   a1, $zero, 0x30F1          # a1 = 000030F1
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x01B8             # a0 = 000001B8
    jal     func_80064280              
    lui     a1, 0xC0A0                 # a1 = C0A00000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lui     $at, %hi(var_809B0960)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B0960)($at) 
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    addiu   t1, $zero, 0x0028          # t1 = 00000028
lbl_809A7770:
    subu    t2, t1, s1                 
    mtc1    t2, $f16                   # $f16 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    cvt.s.w $f18, $f16                 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    multu   s1, s4                     
    mfc1    a3, $f20                   
    lui     a2, 0x3F00                 # a2 = 3F000000
    mul.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0190(s2)           # 00000190
    div.s   $f10, $f6, $f8             
    mflo    t0                         
    addu    a0, s2, t0                 
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    add.s   $f16, $f10, $f26           
    mul.s   $f4, $f18, $f16            
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    lwc1    $f6, 0x0D54(s2)            # 00000D54
    multu   s1, s3                     
    lwc1    $f18, 0x0D58(s2)           # 00000D58
    div.s   $f8, $f28, $f6             
    sll     t4, s1,  1                 
    lui     a1, %hi(var_809B04C4)      # a1 = 809B0000
    addu    a1, a1, t4                 
    trunc.w.s $f16, $f18                 
    lh      a1, %lo(var_809B04C4)(a1)  
    mfc1    a3, $f16                   
    mflo    t9                         
    sll     a1, a1,  8                 
    sll     a1, a1, 16                 
    addu    s0, s2, t9                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 809B0CC0
    sra     a1, a1, 16                 
    trunc.w.s $f10, $f8                  
    mfc1    a2, $f10                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f4, 0x0D54(s2)            # 00000D54
    lwc1    $f10, 0x0D58(s2)           # 00000D58
    addiu   a0, s0, 0x0C60             # a0 = 809B0CC4
    div.s   $f6, $f28, $f4             
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f18, $f10                 
    mfc1    a3, $f18                   
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f8, $f6                   
    mfc1    a2, $f8                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A7770   
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    lw      t0, 0x0024(s2)             # 00000024
    lui     $at, %hi(var_809B0964)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B0964)($at) 
    sw      t0, 0x01C4(s2)             # 000001C4
    lw      t0, 0x002C(s2)             # 0000002C
    lw      t8, 0x0028(s2)             # 00000028
    mfc1    a2, $f28                   
    mfc1    a3, $f22                   
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    lui     a1, 0x3F00                 # a1 = 3F000000
    sw      t0, 0x01CC(s2)             # 000001CC
    jal     func_80064280              
    sw      t8, 0x01C8(s2)             # 000001C8
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    lui     a1, 0x4320                 # a1 = 43200000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    lh      t1, 0x016E(s2)             # 0000016E
    beql    t1, $zero, lbl_809A78E0    
    lwc1    $f6, 0x0E6C(s2)            # 00000E6C
    lbu     t2, 0x01C2(s2)             # 000001C2
    beq     t2, $zero, lbl_809A7A90    
    nop
    lwc1    $f6, 0x0E6C(s2)            # 00000E6C
lbl_809A78E0:
    lwc1    $f8, 0x0028(s5)            # 00000028
    lwc1    $f16, 0x0E68(s2)           # 00000E68
    lwc1    $f4, 0x0024(s5)            # 00000024
    sub.s   $f2, $f6, $f8              
    lui     $at, 0x4248                # $at = 42480000
    lwc1    $f10, 0x0E70(s2)           # 00000E70
    sub.s   $f12, $f16, $f4            
    mtc1    $at, $f16                  # $f16 = 50.00
    lwc1    $f18, 0x002C(s5)           # 0000002C
    abs.s   $f0, $f2                   
    lw      t9, 0x019C($sp)            
    c.lt.s  $f0, $f16                  
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sub.s   $f14, $f10, $f18           
    bc1fl   lbl_809A79C0               
    lui     $at, 0x4396                # $at = 43960000
    beq     t9, $zero, lbl_809A7940    
    nop
    lh      v0, 0x0148(t9)             # 00000148
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809A79BC      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    v0, $at, lbl_809A79C0      
    lui     $at, 0x4396                # $at = 43960000
lbl_809A7940:
    mul.s   $f4, $f12, $f12            
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f18                  # $f18 = 120.00
    mul.s   $f6, $f2, $f2              
    lui     $at, %hi(var_809B0968)     # $at = 809B0000
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    mul.s   $f10, $f14, $f14           
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    add.s   $f8, $f4, $f6              
    add.s   $f0, $f8, $f10             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_809A79C0               
    lui     $at, 0x4396                # $at = 43960000
    lh      t7, 0x00B6(s2)             # 000000B6
    lh      t3, 0x008A(s2)             # 0000008A
    lwc1    $f20, %lo(var_809B0968)($at) 
    sh      t4, 0x0148(s2)             # 00000148
    subu    t6, t7, t3                 
    sll     t8, t6, 16                 
    sra     t0, t8, 16                 
    sh      t5, 0x016E(s2)             # 0000016E
    swc1    $f30, 0x0D58(s2)           # 00000D58
    bltz    t0, lbl_809A79B0           
    swc1    $f20, 0x0D54(s2)           # 00000D54
    beq     $zero, $zero, lbl_809A7A90 
    sh      $zero, 0x0166(s2)          # 00000166
lbl_809A79B0:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_809A7A90 
    sh      t1, 0x0166(s2)             # 00000166
lbl_809A79BC:
    lui     $at, 0x4396                # $at = 43960000
lbl_809A79C0:
    mtc1    $at, $f2                   # $f2 = 300.00
    lui     $at, %hi(var_809B096C)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B096C)($at) 
    sh      $zero, 0x0148(s2)          # 00000148
    swc1    $f30, 0x0D58(s2)           # 00000D58
    swc1    $f30, 0x0180(s2)           # 00000180
    swc1    $f30, 0x018C(s2)           # 0000018C
    swc1    $f30, 0x017C(s2)           # 0000017C
    swc1    $f30, 0x0188(s2)           # 00000188
    sh      t2, 0x016E(s2)             # 0000016E
    swc1    $f20, 0x0D54(s2)           # 00000D54
    lwc1    $f16, 0x0024(s5)           # 00000024
    lwc1    $f4, 0x0024(s2)            # 00000024
    lw      t9, 0x01BC($sp)            
    addiu   t6, $zero, 0x0065          # t6 = 00000065
    sub.s   $f0, $f16, $f4             
    addiu   t8, $zero, 0x004B          # t8 = 0000004B
    abs.s   $f0, $f0                   
    c.lt.s  $f2, $f0                   
    nop
    bc1tl   lbl_809A7A8C               
    sh      t6, 0x0148(s2)             # 00000148
    lw      t4, 0x07C0(t9)             # 000007C0
    lwc1    $f6, 0x0028(s5)            # 00000028
    lw      t3, 0x019C($sp)            
    lw      t5, 0x0028(t4)             # 0000002B
    lh      t7, 0x0002(t5)             # 0000002A
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f6, $f10                  
    nop
    bc1tl   lbl_809A7A8C               
    sh      t6, 0x0148(s2)             # 00000148
    beql    t3, $zero, lbl_809A7A6C    
    lwc1    $f18, 0x002C(s5)           # 0000002C
    lh      v0, 0x0148(t3)             # 00000148
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809A7A88      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    v0, $at, lbl_809A7A8C      
    sh      t6, 0x0148(s2)             # 00000148
    lwc1    $f18, 0x002C(s5)           # 0000002C
lbl_809A7A6C:
    lwc1    $f16, 0x002C(s2)           # 0000002C
    sub.s   $f0, $f18, $f16            
    abs.s   $f0, $f0                   
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_809A7A90               
    nop
lbl_809A7A88:
    sh      t6, 0x0148(s2)             # 00000148
lbl_809A7A8C:
    sh      t8, 0x016E(s2)             # 0000016E
lbl_809A7A90:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A7A98:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x01B8             # a0 = 000001B8
    jal     func_80064280              
    lui     a1, 0xC0A0                 # a1 = C0A00000
    lh      t0, 0x016E(s2)             # 0000016E
    addiu   $at, $zero, 0x007D         # $at = 0000007D
    or      s1, $zero, $zero           # s1 = 00000000
    bne     t0, $at, lbl_809A7AD8      
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lui     $at, %hi(var_809B0970)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B0970)($at) 
    swc1    $f30, 0x0D58(s2)           # 00000D58
    swc1    $f20, 0x0D54(s2)           # 00000D54
lbl_809A7AD8:
    lui     $at, %hi(var_809B0974)     # $at = 809B0000
    lui     s0, %hi(var_809B041C)      # s0 = 809B0000
    lwc1    $f20, %lo(var_809B0974)($at) 
    addiu   s0, s0, %lo(var_809B041C)  # s0 = 809B041C
    lh      t1, 0x016E(s2)             # 0000016E
lbl_809A7AEC:
    slti    $at, t1, 0x001A            
    bnel    $at, $zero, lbl_809A7BD4   
    lh      t9, 0x0166(s2)             # 00000166
    lh      t2, 0x0166(s2)             # 00000166
    bnel    t2, $zero, lbl_809A7B6C    
    lwc1    $f16, 0x0D54(s2)           # 00000D54
    lwc1    $f4, 0x0D54(s2)            # 00000D54
    multu   s1, s3                     
    lwc1    $f10, 0x0D58(s2)           # 00000D58
    div.s   $f8, $f28, $f4             
    sll     t4, s1,  1                 
    addu    t5, s0, t4                 
    lh      a1, 0x0000(t5)             # 00000000
    trunc.w.s $f18, $f10                 
    sll     a1, a1,  8                 
    sll     a1, a1, 16                 
    mfc1    a3, $f18                   
    mflo    t9                         
    addu    a0, s2, t9                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, a0, 0x0C60             # a0 = 00000C60
    sra     a1, a1, 16                 
    trunc.w.s $f6, $f8                   
    mfc1    a2, $f6                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_809A7CAC 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lwc1    $f16, 0x0D54(s2)           # 00000D54
lbl_809A7B6C:
    multu   s1, s3                     
    lwc1    $f6, 0x0D58(s2)            # 00000D58
    div.s   $f4, $f28, $f16            
    sll     t8, s1,  1                 
    addu    t0, s0, t8                 
    lh      a1, 0x0000(t0)             # 00000000
    trunc.w.s $f10, $f6                  
    subu    $at, $zero, a1             
    or      a1, $at, $zero             # a1 = 00000000
    mfc1    a3, $f10                   
    mflo    t6                         
    addu    a0, s2, t6                 
    sll     a1, a1, 24                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    addiu   a0, a0, 0x0C60             # a0 = 00000C60
    trunc.w.s $f8, $f4                   
    mfc1    a2, $f8                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_809A7CAC 
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lh      t9, 0x0166(s2)             # 00000166
lbl_809A7BD4:
    bnel    t9, $zero, lbl_809A7C48    
    lwc1    $f10, 0x0D54(s2)           # 00000D54
    lwc1    $f18, 0x0D54(s2)           # 00000D54
    multu   s1, s3                     
    lwc1    $f8, 0x0D58(s2)            # 00000D58
    div.s   $f16, $f28, $f18           
    sll     t5, s1,  1                 
    lui     a1, %hi(var_809B0470)      # a1 = 809B0000
    addu    a1, a1, t5                 
    trunc.w.s $f6, $f8                   
    lh      a1, %lo(var_809B0470)(a1)  
    mfc1    a3, $f6                    
    mflo    t4                         
    sll     a1, a1,  8                 
    sll     a1, a1, 16                 
    addu    a0, s2, t4                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, a0, 0x0C60             # a0 = 00000C60
    sra     a1, a1, 16                 
    trunc.w.s $f4, $f16                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_809A7CAC 
    addiu   s1, s1, 0x0001             # s1 = 00000003
    lwc1    $f10, 0x0D54(s2)           # 00000D54
lbl_809A7C48:
    multu   s1, s3                     
    lwc1    $f4, 0x0D58(s2)            # 00000D58
    div.s   $f18, $f28, $f10           
    sll     t8, s1,  1                 
    lui     a1, %hi(var_809B0470)      # a1 = 809B0000
    addu    a1, a1, t8                 
    trunc.w.s $f8, $f4                   
    lh      a1, %lo(var_809B0470)(a1)  
    mfc1    a3, $f8                    
    subu    $at, $zero, a1             
    or      a1, $at, $zero             # a1 = 00000000
    mflo    t6                         
    addu    a0, s2, t6                 
    sll     a1, a1, 24                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    addiu   a0, a0, 0x0C60             # a0 = 00000C60
    trunc.w.s $f16, $f18                 
    mfc1    a2, $f16                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000004
lbl_809A7CAC:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A7AEC   
    lh      t1, 0x016E(s2)             # 0000016E
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    mfc1    a2, $f28                   
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80064280              
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    lui     a1, 0x4470                 # a1 = 44700000
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lh      t2, 0x016E(s2)             # 0000016E
    addiu   a0, s2, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    slti    $at, t2, 0x001E            
    bne     $at, $zero, lbl_809A7D10   
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_80064624              
    lh      a1, 0x008A(s2)             # 0000008A
lbl_809A7D10:
    lh      t9, 0x0148(s2)             # 00000148
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t9, $at, lbl_809A7E04      
    lh      t1, 0x0148(s2)             # 00000148
    lh      v0, 0x016E(s2)             # 0000016E
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_809A7DD8   
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t4, 0x01C2(s2)             # 000001C2
    beql    t4, $zero, lbl_809A7DD8    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t5, 0x0118(s5)             # 00000118
    lw      a0, 0x01BC($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    bne     t5, $zero, lbl_809A7DD4    
    addu    t9, t9, a0                 
    lw      t9, 0x1D4C(t9)             # 00011D4C
    or      a1, s5, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    beq     v0, $zero, lbl_809A7DB0    
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      s2, 0x0118(s5)             # 00000118
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sh      t3, 0x0148(s2)             # 00000148
    addiu   a0, s2, 0x1000             # a0 = 00001000
    jal     func_80064780              
    addiu   a1, $zero, 0x38F3          # a1 = 000038F3
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x6805          # a0 = 00006805
    addiu   a1, s5, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_809A7DD4 
    lh      v0, 0x016E(s2)             # 0000016E
lbl_809A7DB0:
    sh      t8, 0x016E(s2)             # 0000016E
    sh      $zero, 0x0148(s2)          # 00000148
    swc1    $f20, 0x0D54(s2)           # 00000D54
    swc1    $f30, 0x0D58(s2)           # 00000D58
    swc1    $f30, 0x0188(s2)           # 00000188
    swc1    $f30, 0x017C(s2)           # 0000017C
    swc1    $f30, 0x018C(s2)           # 0000018C
    swc1    $f30, 0x0180(s2)           # 00000180
    lh      v0, 0x016E(s2)             # 0000016E
lbl_809A7DD4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809A7DD8:
    bne     v0, $at, lbl_809A7E00      
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sh      $zero, 0x0148(s2)          # 00000148
    swc1    $f20, 0x0D54(s2)           # 00000D54
    swc1    $f30, 0x0D58(s2)           # 00000D58
    swc1    $f30, 0x0188(s2)           # 00000188
    swc1    $f30, 0x017C(s2)           # 0000017C
    swc1    $f30, 0x018C(s2)           # 0000018C
    swc1    $f30, 0x0180(s2)           # 00000180
    sh      t0, 0x016E(s2)             # 0000016E
lbl_809A7E00:
    lh      t1, 0x0148(s2)             # 00000148
lbl_809A7E04:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    bne     t1, $at, lbl_809A7F78      
    addiu   a0, s5, 0x0024             # a0 = 00000024
    sh      t2, 0x0840(s5)             # 00000840
    swc1    $f30, 0x0060(s5)           # 00000060
    swc1    $f30, 0x0068(s5)           # 00000068
    lw      a1, 0x01D4(s2)             # 000001D4
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a0, s5, 0x0028             # a0 = 00000028
    lw      a1, 0x01D8(s2)             # 000001D8
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a0, s5, 0x002C             # a0 = 0000002C
    lw      a1, 0x01DC(s2)             # 000001DC
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a0, s5, 0x00B4             # a0 = 000000B4
    lh      a1, 0x01E0(s2)             # 000001E0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s5, 0x00B6             # a0 = 000000B6
    lh      a1, 0x01E2(s2)             # 000001E2
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s5, 0x00B8             # a0 = 000000B8
    lh      a1, 0x01E4(s2)             # 000001E4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t4, 0x016E(s2)             # 0000016E
    lw      a0, 0x01BC($sp)            
    bne     t4, $zero, lbl_809A7F78    
    nop
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    or      s0, v0, $zero              # s0 = 00000000
    sh      t5, 0x0148(s2)             # 00000148
    swc1    $f20, 0x0D54(s2)           # 00000D54
    swc1    $f30, 0x0D58(s2)           # 00000D58
    swc1    $f30, 0x0188(s2)           # 00000188
    swc1    $f30, 0x017C(s2)           # 0000017C
    swc1    $f30, 0x018C(s2)           # 0000018C
    swc1    $f30, 0x0180(s2)           # 00000180
    sh      t7, 0x016E(s2)             # 0000016E
    sh      $zero, 0x0168(s2)          # 00000168
    jal     func_800C5928              
    sh      t9, 0x016C(s2)             # 0000016C
    lw      a0, 0x01BC($sp)            
    jal     func_80052328              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0              
    lw      a0, 0x01BC($sp)            
    sh      v0, 0x0F52(s2)             # 00000F52
    lw      a0, 0x01BC($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x01BC($sp)            
    lh      a1, 0x0F52(s2)             # 00000F52
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t8, 0x005C(s0)             # 0000005C
    lwc1    $f10, 0x0024(s2)           # 00000024
    lwc1    $f16, 0x002C(s2)           # 0000002C
    sw      t8, 0x0F58(s2)             # 00000F58
    lw      t6, 0x0060(s0)             # 00000060
    lwc1    $f6, 0x0F58(s2)            # 00000F58
    sw      t6, 0x0F5C(s2)             # 00000F5C
    lw      t8, 0x0064(s0)             # 00000064
    sub.s   $f12, $f6, $f10            
    sw      t8, 0x0F60(s2)             # 00000F60
    lw      t1, 0x0050(s0)             # 00000050
    lwc1    $f18, 0x0F60(s2)           # 00000F60
    sw      t1, 0x0F64(s2)             # 00000F64
    lw      t0, 0x0054(s0)             # 00000054
    sub.s   $f14, $f18, $f16           
    sw      t0, 0x0F68(s2)             # 00000F68
    lw      t1, 0x0058(s0)             # 00000058
    jal     func_800CD76C              
    sw      t1, 0x0F6C(s2)             # 00000F6C
    swc1    $f0, 0x0FF4(s2)            # 00000FF4
    beq     $zero, $zero, lbl_809A7F80 
    swc1    $f30, 0x0FF8(s2)           # 00000FF8
lbl_809A7F78:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
lbl_809A7F80:
    lh      v0, 0x016E(s2)             # 0000016E
    addiu   t2, s2, 0x0D54             # t2 = 00000D54
    addiu   t4, s2, 0x0D58             # t4 = 00000D58
    addiu   $at, $zero, 0x008A         # $at = 0000008A
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    sw      t4, 0x0084($sp)            
    sw      t2, 0x0088($sp)            
    bne     v0, $at, lbl_809A7FB8      
    addiu   s0, s2, 0x01B8             # s0 = 000001B8
    jal     func_80099620              
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_8006D8E0              
    addiu   a0, $zero, 0x000B          # a0 = 0000000B
    lh      v0, 0x016E(s2)             # 0000016E
lbl_809A7FB8:
    andi    t5, v0, 0x0007             # t5 = 00000000
    bne     t5, $zero, lbl_809A7FDC    
    lw      a0, 0x01BC($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             # 00011D58
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    jalr    $ra, t9                    
    nop
lbl_809A7FDC:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    or      a0, s0, $zero              # a0 = 000001B8
    jal     func_80064280              
    lui     a1, 0xC0A0                 # a1 = C0A00000
    lh      t3, 0x0CB6(s2)             # 00000CB6
    lw      t6, 0x01BC($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    sh      t3, 0x01B4($sp)            
    lhu     v0, 0x0020(t6)             # 00000020
    or      s1, $zero, $zero           # s1 = 00000000
    andi    t8, v0, 0x8000             # t8 = 00000000
    beq     t8, $at, lbl_809A8028      
    andi    t0, v0, 0x4000             # t0 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bnel    t0, $at, lbl_809A8038      
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809A8028:
    lh      t1, 0x0168(s2)             # 00000168
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0168(s2)             # 00000168
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809A8038:
    mtc1    $at, $f26                  # $f26 = 5.00
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    slti    $at, s1, 0x0014            
lbl_809A8044:
    beql    $at, $zero, lbl_809A81E4   
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lwc1    $f4, 0x0178(s2)            # 00000178
    lh      t6, 0x015E(s2)             # 0000015E
    trunc.w.s $f8, $f4                   
    mfc1    t5, $f8                    
    nop
    sll     t7, t5, 16                 
    sra     t9, t7, 16                 
    multu   t9, s1                     
    mflo    t3                         
    addu    a0, t3, t6                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x0184(s2)            # 00000184
    lui     $at, %hi(var_809B0978)     # $at = 809B0000
    cvt.s.w $f10, $f6                  
    lwc1    $f18, %lo(var_809B0978)($at) 
    lh      t5, 0x0160(s2)             # 00000160
    lwc1    $f16, 0x017C(s2)           # 0000017C
    trunc.w.s $f6, $f8                   
    mul.s   $f20, $f10, $f18           
    mfc1    t0, $f6                    
    nop
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    multu   t2, s1                     
    mul.s   $f4, $f20, $f0             
    nop
    mul.s   $f22, $f16, $f4            
    mflo    t4                         
    addu    a0, t4, t5                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    mul.s   $f18, $f20, $f0            
    subu    t3, t9, s1                 
    mtc1    t3, $f16                   # $f16 = 0.00
    lwc1    $f10, 0x0188(s2)           # 00000188
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    cvt.s.w $f4, $f16                  
    mul.s   $f24, $f10, $f18           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    multu   s1, s4                     
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f4, $f8              
    lwc1    $f4, 0x0190(s2)            # 00000190
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addu    a3, a2, $zero              
    div.s   $f18, $f6, $f10            
    mflo    t7                         
    addu    a0, s2, t7                 
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    add.s   $f16, $f18, $f26           
    mul.s   $f8, $f4, $f16             
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x0D54(s2)           # 00000D54
    multu   s1, s3                     
    lwc1    $f16, 0x0D58(s2)           # 00000D58
    div.s   $f18, $f28, $f10           
    trunc.w.s $f6, $f22                  
    trunc.w.s $f8, $f16                  
    mfc1    a1, $f6                    
    mflo    t6                         
    addu    s0, s2, t6                 
    mfc1    a3, $f8                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 00000E14
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f10, 0x0D54(s2)           # 00000D54
    lwc1    $f16, 0x0D58(s2)           # 00000D58
    trunc.w.s $f6, $f24                  
    addiu   a0, s0, 0x0C60             # a0 = 00000E18
    div.s   $f18, $f28, $f10           
    mfc1    a1, $f6                    
    trunc.w.s $f8, $f16                  
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_809A81E4:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A8044   
    slti    $at, s1, 0x0014            
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x0840(s5)             # 00000840
    lwc1    $f6, 0x01D4(s2)            # 000001D4
    lui     $at, %hi(var_809B097C)     # $at = 809B0000
    mfc1    a1, $f28                   
    swc1    $f6, 0x0024(s5)            # 00000024
    lwc1    $f10, 0x01D8(s2)           # 000001D8
    addiu   a0, s2, 0x0190             # a0 = 00000190
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f10, 0x0028(s5)           # 00000028
    lwc1    $f18, 0x01DC(s2)           # 000001DC
    swc1    $f18, 0x002C(s5)           # 0000002C
    lh      v0, 0x01E0(s2)             # 000001E0
    sh      v0, 0x00B4(s5)             # 000000B4
    sh      v0, 0x0030(s5)             # 00000030
    lh      v0, 0x01E2(s2)             # 000001E2
    sh      v0, 0x00B6(s5)             # 000000B6
    sh      v0, 0x0032(s5)             # 00000032
    lh      v0, 0x01E4(s2)             # 000001E4
    sh      v0, 0x00B8(s5)             # 000000B8
    lwc1    $f22, %lo(var_809B097C)($at) 
    swc1    $f30, 0x0060(s5)           # 00000060
    swc1    $f30, 0x0068(s5)           # 00000068
    mfc1    a3, $f22                   
    jal     func_80064280              
    sh      v0, 0x0034(s5)             # 00000034
    mfc1    a2, $f28                   
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    lw      a0, 0x0088($sp)            
    jal     func_80064280              
    lui     a1, 0x3F00                 # a1 = 3F000000
    mfc1    a2, $f28                   
    lw      a0, 0x0084($sp)            
    lui     a1, 0x43F0                 # a1 = 43F00000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, %hi(var_809B0980)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B0980)($at) 
    lui     $at, %hi(var_809B0984)     # $at = 809B0000
    lwc1    $f24, %lo(var_809B0984)($at) 
    mfc1    a1, $f20                   
    addiu   a0, s2, 0x0D5C             # a0 = 00000D5C
    mfc1    a3, $f24                   
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      t9, 0x0168(s2)             # 00000168
    slti    $at, t9, 0x0028            
    beql    $at, $zero, lbl_809A82D0   
    lh      v0, 0x0CB6(s2)             # 00000CB6
    lh      t3, 0x016E(s2)             # 0000016E
    bnel    t3, $zero, lbl_809A8354    
    lh      t7, 0x0F52(s2)             # 00000F52
    lh      v0, 0x0CB6(s2)             # 00000CB6
lbl_809A82D0:
    lh      t6, 0x01B4($sp)            
    bgezl   v0, lbl_809A8354           
    lh      t7, 0x0F52(s2)             # 00000F52
    bltz    t6, lbl_809A8350           
    addiu   t8, $zero, 0x0065          # t8 = 00000065
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sh      t8, 0x0148(s2)             # 00000148
    sh      t0, 0x0150(s2)             # 00000150
    lw      t1, 0x0118(s5)             # 00000118
    addiu   t2, $zero, 0x0065          # t2 = 00000065
    bnel    s2, t1, lbl_809A834C       
    addiu   t5, $zero, 0x004B          # t5 = 0000004B
    sh      t2, 0x0840(s5)             # 00000840
    sw      $zero, 0x0118(s5)          # 00000118
    sb      $zero, 0x0434(s5)          # 00000434
    lh      t4, 0x016E(s2)             # 0000016E
    lw      a0, 0x01BC($sp)            
    or      a1, s2, $zero              # a1 = 00000000
    bne     t4, $zero, lbl_809A8348    
    lui     a2, 0x41A0                 # a2 = 41A00000
    lh      a3, 0x00B6(s2)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    sw      $zero, 0x0014($sp)         
    addu    a3, a3, $at                
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    jal     func_80022E7C              
    swc1    $f4, 0x0010($sp)           
lbl_809A8348:
    addiu   t5, $zero, 0x004B          # t5 = 0000004B
lbl_809A834C:
    sh      t5, 0x016E(s2)             # 0000016E
lbl_809A8350:
    lh      t7, 0x0F52(s2)             # 00000F52
lbl_809A8354:
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   a0, s2, 0x0FF8             # a0 = 00000FF8
    beq     t7, $zero, lbl_809A8484    
    lui     a3, 0x3B03                 # a3 = 3B030000
    mtc1    $at, $f16                  # $f16 = 100.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    swc1    $f30, 0x0138($sp)          
    swc1    $f16, 0x013C($sp)          
    swc1    $f8, 0x0140($sp)           
    lwc1    $f6, 0x0FF4(s2)            # 00000FF4
    lwc1    $f10, 0x0FF8(s2)           # 00000FF8
    mfc1    a1, $f22                   
    mfc1    a2, $f28                   
    sub.s   $f18, $f6, $f10            
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    addiu   s0, s2, 0x0F58             # s0 = 00000F58
    addiu   s1, s2, 0x0F64             # s1 = 00000F64
    jal     func_80064280              
    swc1    $f18, 0x0FF4(s2)           # 00000FF4
    lwc1    $f12, 0x0FF4(s2)           # 00000FF4
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, $sp, 0x0138            # a0 = FFFFFF80
    jal     func_800AB958              
    addiu   a1, $sp, 0x012C            # a1 = FFFFFF74
    lwc1    $f4, 0x0024(s2)            # 00000024
    lwc1    $f16, 0x012C($sp)          
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f8, $f4, $f16             
    or      a0, s0, $zero              # a0 = 00000F58
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f6, 0x0028(s2)            # 00000028
    lwc1    $f10, 0x0130($sp)          
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f18, $f6, $f10            
    addiu   a0, s2, 0x0F5C             # a0 = 00000F5C
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x002C(s2)            # 0000002C
    lwc1    $f16, 0x0134($sp)          
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f8, $f4, $f16             
    addiu   a0, s2, 0x0F60             # a0 = 00000F60
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    or      a0, s1, $zero              # a0 = 00000F64
    lw      a1, 0x0024(s5)             # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    addiu   a0, s2, 0x0F68             # a0 = 00000F68
    lw      a1, 0x0028(s5)             # 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    addiu   a0, s2, 0x0F6C             # a0 = 00000F6C
    lw      a1, 0x002C(s5)             # 0000002C
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    lw      a0, 0x01BC($sp)            
    lh      a1, 0x0F52(s2)             # 00000F52
    or      a2, s1, $zero              # a2 = 00000F64
    jal     func_8009D328              
    or      a3, s0, $zero              # a3 = 00000F58
lbl_809A8484:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
lbl_809A848C:
    jal     func_80064780              
    addiu   a1, $zero, 0x2028          # a1 = 00002028
    lw      t9, 0x0118(s5)             # 00000118
    addiu   t3, $zero, 0x0065          # t3 = 00000065
    lui     $at, %hi(var_809B0988)     # $at = 809B0000
    bne     s2, t9, lbl_809A84B4       
    addiu   a0, s2, 0x01D0             # a0 = 000001D0
    sh      t3, 0x0840(s5)             # 00000840
    sw      $zero, 0x0118(s5)          # 00000118
    sb      $zero, 0x0434(s5)          # 00000434
lbl_809A84B4:
    lwc1    $f22, %lo(var_809B0988)($at) 
    lui     a1, 0x3E19                 # a1 = 3E190000
    ori     a1, a1, 0x999A             # a1 = 3E19999A
    mfc1    a3, $f22                   
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      t6, 0x0164(s2)             # 00000164
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s5, 0x01BC($sp)            
    slti    $at, t6, 0x0029            
    beq     $at, $zero, lbl_809A85B0   
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    lui     $at, 0x0001                # $at = 00010000
    addu    s5, s5, $at                
    lui     $at, %hi(var_809B098C)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B098C)($at) 
    addiu   s1, $sp, 0x0120            # s1 = FFFFFF68
    lh      t8, 0x0164(s2)             # 00000164
lbl_809A84FC:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    multu   t8, s4                     
    mflo    t0                         
    addu    t1, s2, t0                 
    lw      t4, 0x0D60(t1)             # 00000D60
    sw      t4, 0x0000(s1)             # FFFFFF68
    lw      t2, 0x0D64(t1)             # 00000D64
    sw      t2, 0x0004(s1)             # FFFFFF6C
    lw      t4, 0x0D68(t1)             # 00000D68
    jal     func_80026D90              
    sw      t4, 0x0008(s1)             # FFFFFF70
    lwc1    $f6, 0x0120($sp)           
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f10, $f6, $f0             
    jal     func_80026D90              
    swc1    $f10, 0x0120($sp)          
    lwc1    $f18, 0x0124($sp)          
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f4, $f18, $f0             
    jal     func_80026D90              
    swc1    $f4, 0x0124($sp)           
    lwc1    $f16, 0x0128($sp)          
    lui     $at, %hi(var_809B0990)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0990)($at) 
    add.s   $f8, $f16, $f0             
    jal     func_80026D64              
    swc1    $f8, 0x0128($sp)           
    add.s   $f6, $f0, $f20             
    lw      a0, 0x1E10(s5)             # 00001E10
    or      a1, s1, $zero              # a1 = FFFFFF68
    mfc1    a2, $f6                    
    jal     func_809A659C              
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bnel    $at, $zero, lbl_809A84FC   
    lh      t8, 0x0164(s2)             # 00000164
    lh      t5, 0x0164(s2)             # 00000164
    addiu   t7, t5, 0x0001             # t7 = 00000001
    sh      t7, 0x0164(s2)             # 00000164
lbl_809A85B0:
    mfc1    a1, $f30                   
    mfc1    a2, $f28                   
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s2, 0x0198             # a0 = 00000198
    lh      t9, 0x0164(s2)             # 00000164
    addiu   t6, $zero, 0x0065          # t6 = 00000065
    addiu   t8, $zero, 0x004B          # t8 = 0000004B
    slti    $at, t9, 0x0029            
    beql    $at, $zero, lbl_809A85F0   
    sh      t6, 0x0148(s2)             # 00000148
    lh      t3, 0x016E(s2)             # 0000016E
    bne     t3, $zero, lbl_809A8624    
    nop
    sh      t6, 0x0148(s2)             # 00000148
lbl_809A85F0:
    sh      t8, 0x016E(s2)             # 0000016E
    lui     $at, %hi(var_809B0994)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0994)($at) 
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, %hi(var_809B0998)     # $at = 809B0000
    swc1    $f10, 0x0D54(s2)           # 00000D54
    swc1    $f18, 0x0D58(s2)           # 00000D58
    lwc1    $f4, %lo(var_809B0998)($at) 
    lui     $at, %hi(var_809B099C)     # $at = 809B0000
    swc1    $f4, 0x017C(s2)            # 0000017C
    lwc1    $f16, %lo(var_809B099C)($at) 
    swc1    $f16, 0x0188(s2)           # 00000188
lbl_809A8624:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
    lh      t0, 0x0F52(s2)             # 00000F52
lbl_809A8630:
    addiu   s1, s2, 0x0F64             # s1 = 00000F64
    or      a0, s1, $zero              # a0 = 00000F64
    beq     t0, $zero, lbl_809A871C    
    lui     a2, 0x3F00                 # a2 = 3F000000
    lw      a1, 0x0024(s5)             # 00000024
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    addiu   a0, s2, 0x0F68             # a0 = 00000F68
    lw      a1, 0x0028(s5)             # 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    addiu   a0, s2, 0x0F6C             # a0 = 00000F6C
    lw      a1, 0x002C(s5)             # 0000002C
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    addiu   s0, s2, 0x0F58             # s0 = 00000F58
    or      a3, s0, $zero              # a3 = 00000F58
    lw      a0, 0x01BC($sp)            
    lh      a1, 0x0F52(s2)             # 00000F52
    jal     func_8009D328              
    or      a2, s1, $zero              # a2 = 00000F64
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f8                   # $f8 = 42.00
    lwc1    $f6, 0x0028(s5)            # 00000028
    lw      a0, 0x01BC($sp)            
    c.le.s  $f6, $f8                   
    nop
    bc1fl   lbl_809A8720               
    lui     $at, 0x40A0                # $at = 40A00000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t2, 0x0000(s0)             # 00000F58
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t2, 0x005C(v0)             # 0000005C
    lw      t1, 0x0004(s0)             # 00000F5C
    sw      t1, 0x0060(v0)             # 00000060
    lw      t2, 0x0008(s0)             # 00000F60
    sw      t2, 0x0064(v0)             # 00000064
    lw      t5, 0x0000(s0)             # 00000F58
    sw      t5, 0x0074(v0)             # 00000074
    lw      t4, 0x0004(s0)             # 00000F5C
    sw      t4, 0x0078(v0)             # 00000078
    lw      t5, 0x0008(s0)             # 00000F60
    sw      t5, 0x007C(v0)             # 0000007C
    lw      t9, 0x0000(s1)             # 00000F64
    sw      t9, 0x0050(v0)             # 00000050
    lw      t7, 0x0004(s1)             # 00000F68
    sw      t7, 0x0054(v0)             # 00000054
    lw      t9, 0x0008(s1)             # 00000F6C
    sw      t9, 0x0058(v0)             # 00000058
    lh      a1, 0x0F52(s2)             # 00000F52
    jal     func_8009D718              
    lw      a0, 0x01BC($sp)            
    sh      $zero, 0x0F52(s2)          # 00000F52
    lw      a0, 0x01BC($sp)            
    jal     func_80052340              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
lbl_809A871C:
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809A8720:
    mtc1    $at, $f26                  # $f26 = 5.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lwc1    $f10, 0x0178(s2)           # 00000178
lbl_809A8734:
    lh      t4, 0x015E(s2)             # 0000015E
    trunc.w.s $f18, $f10                 
    mfc1    t8, $f18                   
    nop
    sll     t0, t8, 16                 
    sra     t1, t0, 16                 
    multu   t1, s1                     
    mflo    t2                         
    addu    a0, t2, t4                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B09A0)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B09A0)($at) 
    cvt.s.w $f16, $f4                  
    lwc1    $f10, 0x017C(s2)           # 0000017C
    lh      t8, 0x0160(s2)             # 00000160
    lwc1    $f4, 0x0190(s2)            # 00000190
    mul.s   $f20, $f16, $f8            
    lwc1    $f16, 0x0184(s2)           # 00000184
    trunc.w.s $f8, $f16                  
    mul.s   $f6, $f20, $f0             
    mfc1    t7, $f8                    
    nop
    sll     t9, t7, 16                 
    sra     t3, t9, 16                 
    multu   t3, s1                     
    mul.s   $f18, $f6, $f10            
    nop
    mul.s   $f22, $f4, $f18            
    mflo    t6                         
    addu    a0, t6, t8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f6, $f20, $f0             
    lwc1    $f10, 0x0188(s2)           # 00000188
    lwc1    $f2, 0x0190(s2)            # 00000190
    multu   s1, s4                     
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lui     a2, 0x3F00                 # a2 = 3F000000
    mul.s   $f4, $f6, $f10             
    mflo    t0                         
    mul.s   $f24, $f2, $f4             
    addu    a0, s2, t0                 
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    mul.s   $f18, $f2, $f26            
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f8, 0x0D54(s2)            # 00000D54
    multu   s1, s3                     
    lwc1    $f4, 0x0D58(s2)            # 00000D58
    div.s   $f6, $f28, $f8             
    trunc.w.s $f16, $f22                 
    trunc.w.s $f18, $f4                  
    mfc1    a1, $f16                   
    mflo    t1                         
    addu    s0, s2, t1                 
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 00001BB4
    trunc.w.s $f10, $f6                  
    mfc1    a2, $f10                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f8, 0x0D54(s2)            # 00000D54
    lwc1    $f4, 0x0D58(s2)            # 00000D58
    trunc.w.s $f16, $f24                 
    addiu   a0, s0, 0x0C60             # a0 = 00001BB8
    div.s   $f6, $f28, $f8             
    mfc1    a1, $f16                   
    trunc.w.s $f18, $f4                  
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f18                   
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f10, $f6                  
    mfc1    a2, $f10                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A8734   
    lwc1    $f10, 0x0178(s2)           # 00000178
    mfc1    a1, $f30                   
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, s2, 0x0190             # a0 = 00000190
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, %hi(var_809B09A4)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09A4)($at) 
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    mfc1    a3, $f22                   
    jal     func_80064280              
    lui     a1, 0x3F00                 # a1 = 3F000000
    mfc1    a2, $f28                   
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    lui     a1, 0x43A0                 # a1 = 43A00000
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    lh      t6, 0x016E(s2)             # 0000016E
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a0, s2, 0x0194             # a0 = 00000194
    bne     t6, $zero, lbl_809A8A94    
    nop
    lw      t8, 0x0004(s2)             # 00000004
    mfc1    a1, $f30                   
    mfc1    a2, $f28                   
    mfc1    a3, $f26                   
    and     t0, t8, $at                
    jal     func_80064280              
    sw      t0, 0x0004(s2)             # 00000004
    lui     $at, %hi(var_809B09A8)     # $at = 809B0000
    lwc1    $f26, %lo(var_809B09A8)($at) 
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f24                  # $f24 = 32768.00
    lui     $at, %hi(var_809B09AC)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09AC)($at) 
    lui     $at, 0x43A0                # $at = 43A00000
    lui     s3, %hi(var_809B0068)      # s3 = 809B0000
    mtc1    $at, $f20                  # $f20 = 320.00
    addiu   s3, s3, %lo(var_809B0068)  # s3 = 809B0068
    or      s1, $zero, $zero           # s1 = 00000000
lbl_809A8960:
    jal     func_80026D64              
    mov.s   $f12, $f22                 
    swc1    $f30, 0x00FC($sp)          
    swc1    $f30, 0x0100($sp)          
    swc1    $f30, 0x0104($sp)          
    lh      t7, 0x0032(s5)             # 00000032
    trunc.w.s $f16, $f0                  
    lui     s0, %hi(var_809B0534)      # s0 = 809B0000
    mtc1    t7, $f8                    # $f8 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    mfc1    t2, $f16                   
    cvt.s.w $f6, $f8                   
    sll     t4, t2, 16                 
    sra     t5, t4, 16                 
    addu    s0, s0, t5                 
    lbu     s0, %lo(var_809B0534)(s0)  
    div.s   $f10, $f6, $f24            
    mul.s   $f12, $f10, $f26           
    jal     func_800AAB94              
    nop
    addiu   a0, $sp, 0x00FC            # a0 = FFFFFF44
    jal     func_800AB958              
    addiu   a1, $sp, 0x00F0            # a1 = FFFFFF38
    lwc1    $f4, 0x0024(s5)            # 00000024
    lwc1    $f18, 0x00F0($sp)          
    lui     t3, %hi(var_809B054C)      # t3 = 809B0000
    addiu   t3, t3, %lo(var_809B054C)  # t3 = 809B054C
    add.s   $f16, $f4, $f18            
    sll     t9, s0,  3                 
    addu    v0, t9, t3                 
    lwc1    $f2, 0x0000(v0)            # 00000000
    swc1    $f16, 0x00F0($sp)          
    lwc1    $f4, 0x00F0($sp)           
    lwc1    $f8, 0x002C(s5)            # 0000002C
    lwc1    $f6, 0x00F8($sp)           
    sub.s   $f0, $f4, $f2              
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    add.s   $f10, $f8, $f6             
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0028            
    abs.s   $f0, $f0                   
    swc1    $f10, 0x00F8($sp)          
    c.le.s  $f0, $f20                  
    lwc1    $f18, 0x00F8($sp)          
    bc1f    lbl_809A8A8C               
    nop
    lwc1    $f16, 0x0004(v0)           # 00000004
    sub.s   $f0, $f18, $f16            
    abs.s   $f0, $f0                   
    c.le.s  $f0, $f20                  
    nop
    bc1f    lbl_809A8A8C               
    nop
    lw      v1, 0x0000(s3)             # 809B0068
    beql    v1, $zero, lbl_809A8A54    
    swc1    $f2, 0x01C4(s2)            # 000001C4
    lbu     t6, 0x0146(v1)             # 00000146
    beq     s0, t6, lbl_809A8A8C       
    nop
    swc1    $f2, 0x01C4(s2)            # 000001C4
lbl_809A8A54:
    lwc1    $f8, 0x0004(v0)            # 00000004
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    sb      s0, 0x0146(s2)             # 00000146
    jal     func_80026D64              
    swc1    $f8, 0x01CC(s2)            # 000001CC
    trunc.w.s $f6, $f0                   
    addiu   t5, $zero, 0x0066          # t5 = 00000066
    sh      t5, 0x0148(s2)             # 00000148
    mfc1    t2, $f6                    
    nop
    addiu   t4, t2, 0x001E             # t4 = 0000001E
    beq     $zero, $zero, lbl_809A8A94 
    sh      t4, 0x016E(s2)             # 0000016E
lbl_809A8A8C:
    bne     $at, $zero, lbl_809A8960   
    nop
lbl_809A8A94:
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    addiu   s0, s0, %lo(var_809B0064)  # s0 = 809B0064
    lw      t7, 0x0000(s0)             # 809B0064
    lui     s3, %hi(var_809B0068)      # s3 = 809B0000
    addiu   s3, s3, %lo(var_809B0068)  # s3 = 809B0068
    bne     s2, t7, lbl_809A8B9C       
    lui     t9, %hi(var_809B0060)      # t9 = 809B0000
    lw      t9, %lo(var_809B0060)(t9)  
    lbu     t3, 0x0145(t9)             # 809B0145
    slti    $at, t3, 0x0003            
    bne     $at, $zero, lbl_809A8B9C   
    nop
    lw      t6, 0x0000(s3)             # 809B0068
    lw      a1, 0x01BC($sp)            
    addiu   a2, $zero, 0x00C4          # a2 = 000000C4
    bne     t6, $zero, lbl_809A8B9C    
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lwc1    $f10, 0x0028(s2)           # 00000028
    lw      a3, 0x0024(s2)             # 00000024
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    swc1    $f10, 0x0010($sp)          
    lwc1    $f4, 0x002C(s2)            # 0000002C
    sw      t0, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)           
    sw      v0, 0x0000(s3)             # 809B0068
    lbu     t1, 0x0146(s2)             # 00000146
    sb      t1, 0x0146(v0)             # 00000146
    lw      v1, 0x0000(s3)             # 809B0068
    lbu     a0, 0x0146(v1)             # 00000146
    slti    $at, a0, 0x000B            
    bne     $at, $zero, lbl_809A8B30   
    addiu   t5, a0, 0x0001             # t5 = 00000001
    addiu   t4, a0, 0xFFFF             # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_809A8B34 
    sb      t4, 0x0146(v1)             # 00000146
lbl_809A8B30:
    sb      t5, 0x0146(v1)             # 00000146
lbl_809A8B34:
    lw      v1, 0x0000(s3)             # 809B0068
    lui     $at, %hi(var_809B054C)     # $at = 809B0000
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    lbu     t7, 0x0146(v1)             # 00000146
    addiu   t1, $zero, 0x0066          # t1 = 00000066
    sll     t9, t7,  3                 
    addu    $at, $at, t9               
    lwc1    $f18, %lo(var_809B054C)($at) 
    lui     $at, %hi(var_809B0550)     # $at = 809B0000
    swc1    $f18, 0x01C4(v1)           # 000001C4
    lw      v1, 0x0000(s3)             # 809B0068
    lbu     t3, 0x0146(v1)             # 00000146
    sll     t6, t3,  3                 
    addu    $at, $at, t6               
    lwc1    $f16, %lo(var_809B0550)($at) 
    swc1    $f16, 0x01CC(v1)           # 000001CC
    lw      t0, 0x0000(s3)             # 809B0068
    sh      t8, 0x016E(t0)             # 0000016E
    lw      t2, 0x0000(s3)             # 809B0068
    sh      t1, 0x0148(t2)             # 00000148
    lw      t4, 0x0000(s0)             # 809B0064
    lw      t5, 0x0000(s3)             # 809B0068
    sw      t4, 0x013C(t5)             # 0000013D
    lw      t9, 0x0000(s0)             # 809B0064
    lw      t7, 0x0000(s3)             # 809B0068
    sw      t7, 0x013C(t9)             # 0000013C
lbl_809A8B9C:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
lbl_809A8BA4:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lw      t3, 0x0004(s2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    mfc1    a1, $f30                   
    mfc1    a2, $f28                   
    and     t6, t3, $at                
    mfc1    a3, $f26                   
    jal     func_80064280              
    sw      t6, 0x0004(s2)             # 00000004
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0194(s2)            # 00000194
    c.le.s  $f6, $f8                   
    nop
    bc1f    lbl_809A8C70               
    nop
    lh      t8, 0x016E(s2)             # 0000016E
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    lui     $at, 0x41A0                # $at = 41A00000
    bne     t8, $zero, lbl_809A8C70    
    nop
    lwc1    $f10, 0x01C4(s2)           # 000001C4
    lwc1    $f4, 0x01CC(s2)            # 000001CC
    sh      $zero, 0x0164(s2)          # 00000164
    swc1    $f10, 0x0024(s2)           # 00000024
    lw      t1, 0x0024(s2)             # 00000024
    swc1    $f4, 0x002C(s2)            # 0000002C
    lw      t0, 0x0028(s2)             # 00000028
    sw      t1, 0x0100(s2)             # 00000100
    lw      t1, 0x002C(s2)             # 0000002C
    lh      t2, 0x0164(s2)             # 00000164
    mtc1    $at, $f12                  # $f12 = 20.00
    swc1    $f28, 0x0198(s2)           # 00000198
    sh      t4, 0x0148(s2)             # 00000148
    sw      t0, 0x0104(s2)             # 00000104
    sw      t1, 0x0108(s2)             # 00000108
    jal     func_80026D64              
    sh      t2, 0x0162(s2)             # 00000162
    trunc.w.s $f18, $f0                  
    lui     $at, %hi(var_809B09B0)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B09B0)($at) 
    swc1    $f30, 0x0D58(s2)           # 00000D58
    mfc1    t3, $f18                   
    swc1    $f30, 0x0180(s2)           # 00000180
    swc1    $f30, 0x018C(s2)           # 0000018C
    addiu   t6, t3, 0x000A             # t6 = 0000000A
    sh      t6, 0x016E(s2)             # 0000016E
    swc1    $f30, 0x017C(s2)           # 0000017C
    swc1    $f30, 0x0188(s2)           # 00000188
    swc1    $f20, 0x0D54(s2)           # 00000D54
lbl_809A8C70:
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A8C78:
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    sh      t8, 0x00B6(s2)             # 000000B6
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A8C88:
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sh      t0, 0x01BC(s2)             # 000001BC
    lui     a0, %hi(var_809B0060)      # a0 = 809B0000
    lw      a0, %lo(var_809B0060)(a0)  
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a1, 0xC396                 # a1 = C3960000
    jal     func_80064280              
    addiu   a0, a0, 0x01AC             # a0 = 809B01AC
    lw      t1, 0x0004(s2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      s1, $zero, $zero           # s1 = 00000000
    and     t2, t1, $at                
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    sw      t2, 0x0004(s2)             # 00000004
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lwc1    $f16, 0x0178(s2)           # 00000178
lbl_809A8CDC:
    lh      t6, 0x015E(s2)             # 0000015E
    trunc.w.s $f8, $f16                  
    mfc1    t5, $f8                    
    nop
    sll     t7, t5, 16                 
    sra     t9, t7, 16                 
    multu   t9, s1                     
    mflo    t3                         
    addu    a0, t3, t6                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x0184(s2)            # 00000184
    lui     $at, %hi(var_809B09B4)     # $at = 809B0000
    cvt.s.w $f10, $f6                  
    lwc1    $f4, %lo(var_809B09B4)($at) 
    lh      t5, 0x0160(s2)             # 00000160
    lwc1    $f18, 0x017C(s2)           # 0000017C
    trunc.w.s $f6, $f8                   
    mul.s   $f20, $f10, $f4            
    mfc1    t0, $f6                    
    nop
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    multu   t2, s1                     
    mul.s   $f16, $f20, $f0            
    nop
    mul.s   $f22, $f18, $f16           
    mflo    t4                         
    addu    a0, t4, t5                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    multu   s1, s4                     
    mul.s   $f18, $f20, $f0            
    lwc1    $f16, 0x0190(s2)           # 00000190
    lwc1    $f14, 0x0188(s2)           # 00000188
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f16, $f16, $f26           
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f24, $f14, $f18           
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    mflo    t7                         
    addu    a0, s2, t7                 
    mfc1    a1, $f16                   
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    lwc1    $f6, 0x0D54(s2)            # 00000D54
    multu   s1, s3                     
    lwc1    $f18, 0x0D58(s2)           # 00000D58
    div.s   $f10, $f28, $f6            
    trunc.w.s $f8, $f22                  
    trunc.w.s $f16, $f18                 
    mfc1    a1, $f8                    
    mflo    t9                         
    addu    s0, s2, t9                 
    mfc1    a3, $f16                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 809B0CC0
    trunc.w.s $f4, $f10                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f6, 0x0D54(s2)            # 00000D54
    lwc1    $f18, 0x0D58(s2)           # 00000D58
    trunc.w.s $f8, $f24                  
    addiu   a0, s0, 0x0C60             # a0 = 809B0CC4
    div.s   $f10, $f28, $f6            
    mfc1    a1, $f8                    
    trunc.w.s $f16, $f18                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f16                   
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f4, $f10                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A8CDC   
    lwc1    $f16, 0x0178(s2)           # 00000178
    lui     a1, 0x4089                 # a1 = 40890000
    lui     a3, 0x3D23                 # a3 = 3D230000
    swc1    $f30, 0x0068(s2)           # 00000068
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    ori     a1, a1, 0x999A             # a1 = 4089999A
    addiu   a0, s2, 0x0190             # a0 = 00000190
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, %hi(var_809B09B8)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09B8)($at) 
    lui     a1, 0x3FA6                 # a1 = 3FA60000
    ori     a1, a1, 0x6666             # a1 = 3FA66666
    mfc1    a3, $f22                   
    addiu   a0, s2, 0x0D5C             # a0 = 00000D5C
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A8EA0:
    lui     v0, %hi(var_809B0060)      # v0 = 809B0000
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t5, $zero, 0x4000          # t5 = 00004000
    addiu   t7, $zero, 0x8000          # t7 = FFFF8000
    addiu   v0, v0, %lo(var_809B0060)  # v0 = 809B0060
    sh      t4, 0x01BC(s2)             # 000001BC
    sh      t5, 0x00B6(s2)             # 000000B6
    sh      t7, 0x00B4(s2)             # 000000B4
    lw      t9, 0x0000(v0)             # 809B0060
    lui     $at, %hi(var_809B09BC)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B09BC)($at) 
    lwc1    $f8, 0x01AC(t9)            # 000001AC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3FA6                 # a3 = 3FA60000
    add.s   $f10, $f8, $f6             
    ori     a3, a3, 0x6666             # a3 = 3FA66666
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a1, 0xC396                 # a1 = C3960000
    swc1    $f10, 0x0028(s2)           # 00000028
    lw      a0, 0x0000(v0)             # 809B0060
    jal     func_80064280              
    addiu   a0, a0, 0x01AC             # a0 = 000001AC
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lwc1    $f4, 0x0178(s2)            # 00000178
lbl_809A8F10:
    lh      t2, 0x015E(s2)             # 0000015E
    trunc.w.s $f18, $f4                  
    mfc1    t6, $f18                   
    nop
    sll     t8, t6, 16                 
    sra     t0, t8, 16                 
    multu   t0, s1                     
    mflo    t1                         
    addu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f16                   # $f16 = 0.00
    lwc1    $f18, 0x0184(s2)           # 00000184
    lui     $at, %hi(var_809B09C0)     # $at = 809B0000
    cvt.s.w $f8, $f16                  
    lwc1    $f6, %lo(var_809B09C0)($at) 
    lh      t6, 0x0160(s2)             # 00000160
    lwc1    $f10, 0x017C(s2)           # 0000017C
    trunc.w.s $f16, $f18                 
    mul.s   $f20, $f8, $f6             
    mfc1    t5, $f16                   
    nop
    sll     t7, t5, 16                 
    sra     t9, t7, 16                 
    multu   t9, s1                     
    mul.s   $f4, $f20, $f0             
    nop
    mul.s   $f22, $f10, $f4            
    mflo    t3                         
    addu    a0, t3, t6                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    multu   s1, s4                     
    mul.s   $f18, $f20, $f0            
    lwc1    $f16, 0x0190(s2)           # 00000190
    lwc1    $f14, 0x0188(s2)           # 00000188
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f16, $f16, $f26           
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f24, $f14, $f18           
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    mflo    t8                         
    addu    a0, s2, t8                 
    mfc1    a1, $f16                   
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    lwc1    $f16, 0x0D54(s2)           # 00000D54
    multu   s1, s3                     
    lwc1    $f10, 0x0D58(s2)           # 00000D58
    div.s   $f8, $f28, $f16            
    trunc.w.s $f18, $f22                 
    trunc.w.s $f4, $f10                  
    mfc1    a1, $f18                   
    mflo    t0                         
    addu    s0, s2, t0                 
    mfc1    a3, $f4                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 809B0CC0
    trunc.w.s $f6, $f8                   
    mfc1    a2, $f6                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f16, 0x0D54(s2)           # 00000D54
    lwc1    $f10, 0x0D58(s2)           # 00000D58
    trunc.w.s $f18, $f24                 
    addiu   a0, s0, 0x0C60             # a0 = 809B0CC4
    div.s   $f8, $f28, $f16            
    mfc1    a1, $f18                   
    trunc.w.s $f4, $f10                  
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f4                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f6, $f8                   
    mfc1    a2, $f6                    
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A8F10   
    lwc1    $f4, 0x0178(s2)            # 00000178
    lui     $at, %hi(var_809B09C4)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09C4)($at) 
    lui     a1, 0x3FA6                 # a1 = 3FA60000
    swc1    $f30, 0x0068(s2)           # 00000068
    mfc1    a3, $f22                   
    ori     a1, a1, 0x6666             # a1 = 3FA66666
    addiu   a0, s2, 0x0D5C             # a0 = 00000D5C
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A90B8:
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sh      t3, 0x01BC(s2)             # 000001BC
    lui     a0, %hi(var_809B0060)      # a0 = 809B0000
    lw      a0, %lo(var_809B0060)(a0)  
    lui     a1, 0xC393                 # a1 = C3930000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3FA6                 # a3 = 3FA60000
    ori     a3, a3, 0x6666             # a3 = 3FA66666
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x8000             # a1 = C3938000
    jal     func_80064280              
    addiu   a0, a0, 0x01AC             # a0 = 809B01AC
    lui     t6, %hi(var_809B0060)      # t6 = 809B0000
    lw      t6, %lo(var_809B0060)(t6)  
    lui     $at, %hi(var_809B09C8)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B09C8)($at) 
    lwc1    $f18, 0x01AC(t6)           # 809B01AC
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    add.s   $f8, $f18, $f16            
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    swc1    $f8, 0x0028(s2)            # 00000028
    lwc1    $f6, 0x0178(s2)            # 00000178
lbl_809A911C:
    lh      t5, 0x015E(s2)             # 0000015E
    trunc.w.s $f10, $f6                  
    mfc1    t0, $f10                   
    nop
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    multu   t2, s1                     
    mflo    t4                         
    addu    a0, t4, t5                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    s1, $f4                    # $f4 = 0.00
    lwc1    $f10, 0x0184(s2)           # 00000184
    lui     $at, %hi(var_809B09CC)     # $at = 809B0000
    cvt.s.w $f18, $f4                  
    lwc1    $f16, %lo(var_809B09CC)($at) 
    lh      t0, 0x0160(s2)             # 00000160
    lwc1    $f8, 0x017C(s2)            # 0000017C
    trunc.w.s $f4, $f10                  
    mul.s   $f20, $f18, $f16           
    mfc1    t9, $f4                    
    nop
    sll     t3, t9, 16                 
    sra     t6, t3, 16                 
    multu   t6, s1                     
    mul.s   $f6, $f20, $f0             
    nop
    mul.s   $f22, $f8, $f6             
    mflo    t8                         
    addu    a0, t8, t0                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    multu   s1, s4                     
    mul.s   $f18, $f20, $f0            
    lwc1    $f16, 0x0190(s2)           # 00000190
    lwc1    $f14, 0x0188(s2)           # 00000188
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f16, $f16, $f26           
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f24, $f14, $f18           
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    mflo    t1                         
    addu    a0, s2, t1                 
    mfc1    a1, $f16                   
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    lwc1    $f4, 0x0D54(s2)            # 00000D54
    multu   s1, s3                     
    lwc1    $f8, 0x0D58(s2)            # 00000D58
    div.s   $f18, $f28, $f4            
    trunc.w.s $f10, $f22                 
    trunc.w.s $f6, $f8                   
    mfc1    a1, $f10                   
    mflo    t2                         
    addu    s0, s2, t2                 
    mfc1    a3, $f6                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x0C5C             # a0 = 809B0CC0
    trunc.w.s $f16, $f18                 
    mfc1    a2, $f16                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f4, 0x0D54(s2)            # 00000D54
    lwc1    $f8, 0x0D58(s2)            # 00000D58
    trunc.w.s $f10, $f24                 
    addiu   a0, s0, 0x0C60             # a0 = 809B0CC4
    div.s   $f18, $f28, $f4            
    mfc1    a1, $f10                   
    trunc.w.s $f6, $f8                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    trunc.w.s $f16, $f18                 
    mfc1    a2, $f16                   
    nop
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    bnel    $at, $zero, lbl_809A911C   
    lwc1    $f6, 0x0178(s2)            # 00000178
    lui     $at, %hi(var_809B09D0)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B09D0)($at) 
    lh      t8, 0x016A(s2)             # 0000016A
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    addiu   t0, t8, 0xFFFF             # t0 = FFFFFFFF
    swc1    $f30, 0x0068(s2)           # 00000068
    sh      t0, 0x016A(s2)             # 0000016A
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    jal     func_80064280              
    addiu   a0, s2, 0x0190             # a0 = 00000190
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    lui     a3, 0x3C75                 # a3 = 3C750000
    ori     a3, a3, 0xC28F             # a3 = 3C75C28F
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    addiu   a0, s2, 0x0D5C             # a0 = 00000D5C
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      v0, 0x016E(s2)             # 0000016E
    blez    v0, lbl_809A932C           
    slti    $at, v0, 0x0028            
    beq     $at, $zero, lbl_809A932C   
    addiu   a0, s2, 0x0050             # a0 = 00000050
    lui     $at, %hi(var_809B09D4)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09D4)($at) 
    lui     a1, 0x3D0F                 # a1 = 3D0F0000
    ori     a1, a1, 0x5C29             # a1 = 3D0F5C29
    mfc1    a2, $f22                   
    jal     func_80064280              
    lw      a3, 0x01B0(s2)             # 000001B0
    lh      t1, 0x016E(s2)             # 0000016E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t1, $at, lbl_809A9358      
    lui     a1, 0x39EB                 # a1 = 39EB0000
    beq     $zero, $zero, lbl_809A9354 
    swc1    $f30, 0x01B0(s2)           # 000001B0
lbl_809A932C:
    bne     v0, $zero, lbl_809A9354    
    lui     $at, %hi(var_809B09D8)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B09D8)($at) 
    lui     $at, %hi(var_809B09DC)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09DC)($at) 
    mfc1    a1, $f20                   
    addiu   a0, s2, 0x0050             # a0 = 00000050
    mfc1    a2, $f22                   
    jal     func_80064280              
    lw      a3, 0x01B0(s2)             # 000001B0
lbl_809A9354:
    lui     a1, 0x39EB                 # a1 = 39EB0000
lbl_809A9358:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3727                 # a3 = 37270000
    ori     a3, a3, 0xC5AC             # a3 = 3727C5AC
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xEDFA             # a1 = 39EBEDFA
    jal     func_80064280              
    addiu   a0, s2, 0x01B0             # a0 = 000001B0
    beq     $zero, $zero, lbl_809A977C 
    lh      v1, 0x0148(s2)             # 00000148
var_809A937C:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lui     $at, %hi(var_809B09E0)     # $at = 809B0000
    lwc1    $f22, %lo(var_809B09E0)($at) 
    lui     $at, %hi(var_809B09E4)     # $at = 809B0000
    lwc1    $f20, %lo(var_809B09E4)($at) 
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s3, $zero, 0x0006          # s3 = 00000006
lbl_809A93A0:
    lh      t2, 0x016E(s2)             # 0000016E
    beq     t2, $zero, lbl_809A93DC    
    nop
    multu   s1, s4                     
    lwc1    $f10, 0x0190(s2)           # 00000190
    mfc1    a2, $f22                   
    lw      a3, 0x0D58(s2)             # 00000D58
    mul.s   $f4, $f10, $f26            
    mflo    t4                         
    addu    a0, s2, t4                 
    mfc1    a1, $f4                    
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
    beq     $zero, $zero, lbl_809A9404 
    nop
lbl_809A93DC:
    multu   s1, s4                     
    lwc1    $f18, 0x0190(s2)           # 00000190
    mfc1    a2, $f20                   
    lui     a3, 0x42C8                 # a3 = 42C80000
    mul.s   $f16, $f18, $f26           
    mflo    t5                         
    addu    a0, s2, t5                 
    mfc1    a1, $f16                   
    jal     func_80064280              
    addiu   a0, a0, 0x069C             # a0 = 0000069C
lbl_809A9404:
    multu   s1, s3                     
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    mflo    t7                         
    addu    s0, s2, t7                 
    sh      $zero, 0x0C60(s0)          # 809B0CC4
    lh      t9, 0x0C60(s0)             # 809B0CC4
    bne     $at, $zero, lbl_809A93A0   
    sh      t9, 0x0C5C(s0)             # 809B0CC0
    lh      t3, 0x016E(s2)             # 0000016E
    swc1    $f30, 0x0D5C(s2)           # 00000D5C
    lui     t6, %hi(var_809B0060)      # t6 = 809B0000
    beq     t3, $zero, lbl_809A94BC    
    lui     $at, %hi(var_809B09E8)     # $at = 809B0000
    lw      t6, %lo(var_809B0060)(t6)  
    lwc1    $f6, %lo(var_809B09E8)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    lwc1    $f8, 0x01AC(t6)            # 809B01AC
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     a1, 0x3AC4                 # a1 = 3AC40000
    add.s   $f10, $f8, $f6             
    mfc1    a2, $f22                   
    ori     a1, a1, 0x9BA6             # a1 = 3AC49BA6
    addiu   a0, s2, 0x0050             # a0 = 00000050
    swc1    $f10, 0x0028(s2)           # 00000028
    lw      a3, 0x0D54(s2)             # 00000D54
    jal     func_80064280              
    swc1    $f4, 0x0190(s2)            # 00000190
    lui     a1, 0x39B7                 # a1 = 39B70000
    mfc1    a2, $f28                   
    lui     a3, 0x3792                 # a3 = 37920000
    ori     a3, a3, 0xCCF7             # a3 = 3792CCF7
    ori     a1, a1, 0x8034             # a1 = 39B78034
    jal     func_80064280              
    addiu   a0, s2, 0x0D54             # a0 = 00000D54
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    mfc1    a2, $f28                   
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80064280              
    addiu   a0, s2, 0x0D58             # a0 = 00000D58
    beq     $zero, $zero, lbl_809A9778 
    swc1    $f30, 0x0060(s2)           # 00000060
lbl_809A94BC:
    lh      a0, 0x014A(s2)             # 0000014A
    lui     $at, %hi(var_809B09EC)     # $at = 809B0000
    lwc1    $f18, %lo(var_809B09EC)($at) 
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0190(s2)           # 00000190
    mul.s   $f8, $f0, $f22             
    lwc1    $f16, 0x0190(s2)           # 00000190
    lh      a0, 0x014A(s2)             # 0000014A
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    add.s   $f6, $f16, $f8             
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f6, 0x0190(s2)            # 00000190
    lui     $at, %hi(var_809B09F0)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B09F0)($at) 
    lui     $at, %hi(var_809B09F4)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B09F4)($at) 
    mul.s   $f4, $f0, $f2              
    mfc1    a3, $f2                    
    addiu   a0, s2, 0x0050             # a0 = 00000050
    lui     a2, 0x3F00                 # a2 = 3F000000
    add.s   $f18, $f10, $f4            
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f0, 0x0060(s2)            # 00000060
    lwc1    $f16, 0x0028(s2)           # 00000028
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f2                   # $f2 = -250.00
    add.s   $f8, $f16, $f0             
    addiu   t8, $zero, 0x00CE          # t8 = 000000CE
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    sub.s   $f6, $f0, $f28             
    swc1    $f8, 0x0028(s2)            # 00000028
    lwc1    $f10, 0x0028(s2)           # 00000028
    addiu   a0, s2, 0x1000             # a0 = 00001000
    swc1    $f6, 0x0060(s2)            # 00000060
    c.lt.s  $f10, $f2                  
    addiu   a1, $zero, 0x38F7          # a1 = 000038F7
    bc1fl   lbl_809A977C               
    lh      v1, 0x0148(s2)             # 00000148
    swc1    $f2, 0x0028(s2)            # 00000028
    swc1    $f30, 0x0060(s2)           # 00000060
    sb      $zero, 0x01C1(s2)          # 000001C1
    sh      t8, 0x0148(s2)             # 00000148
    jal     func_80064780              
    sh      t0, 0x016E(s2)             # 0000016E
    lw      t1, 0x01BC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    or      s1, $zero, $zero           # s1 = 00000000
    addu    t2, t1, $at                
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f28                  # $f28 = 7.00
    lui     $at, %hi(var_809B09F8)     # $at = 809B0000
    lwc1    $f26, %lo(var_809B09F8)($at) 
    lui     $at, %hi(var_809B09FC)     # $at = 809B0000
    lwc1    $f24, %lo(var_809B09FC)($at) 
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f22                  # $f22 = -280.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f20                  # $f20 = 3.00
    sw      t2, 0x008C($sp)            
    addiu   s3, s2, 0x0024             # s3 = 00000024
    addiu   s0, $sp, 0x00E0            # s0 = FFFFFF28
lbl_809A95CC:
    mtc1    s1, $f4                    # $f4 = 0.00
    swc1    $f30, 0x00C8($sp)          
    swc1    $f30, 0x00CC($sp)          
    cvt.s.w $f0, $f4                   
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f18, $f0, $f24            
    swc1    $f18, 0x00D0($sp)          
    mul.s   $f12, $f0, $f26            
    jal     func_800AAB94              
    nop
    lw      s5, 0x008C($sp)            
    addiu   a0, $sp, 0x00C8            # a0 = FFFFFF10
    jal     func_800AB958              
    or      a1, s0, $zero              # a1 = FFFFFF28
    jal     func_80026D64              
    mov.s   $f12, $f28                 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    addiu   a2, $sp, 0x00D4            # a2 = FFFFFF1C
    lui     $at, 0x41F0                # $at = 41F00000
    add.s   $f8, $f0, $f16             
    addiu   t7, $zero, 0x012C          # t7 = 0000012C
    swc1    $f8, 0x00E4($sp)           
    lw      t5, 0x0000(s3)             # 00000024
    sw      t5, 0x0000(a2)             # FFFFFF1C
    lw      t4, 0x0004(s3)             # 00000028
    sw      t4, 0x0004(a2)             # FFFFFF20
    lw      t5, 0x0008(s3)             # 0000002C
    sw      t5, 0x0008(a2)             # FFFFFF24
    lwc1    $f10, 0x00E0($sp)          
    lwc1    $f16, 0x00E4($sp)          
    lwc1    $f6, 0x00D4($sp)           
    mul.s   $f4, $f10, $f20            
    mtc1    $at, $f10                  # $f10 = 30.00
    mul.s   $f8, $f16, $f20            
    add.s   $f18, $f6, $f4             
    lwc1    $f4, 0x00D8($sp)           
    sub.s   $f6, $f8, $f10             
    swc1    $f18, 0x00D4($sp)          
    add.s   $f18, $f4, $f6             
    c.lt.s  $f18, $f22                 
    swc1    $f18, 0x00D8($sp)          
    bc1fl   lbl_809A9684               
    lwc1    $f8, 0x00E8($sp)           
    swc1    $f22, 0x00D8($sp)          
    lwc1    $f8, 0x00E8($sp)           
lbl_809A9684:
    subu    t9, t7, s1                 
    mtc1    t9, $f6                    # $f6 = 0.00
    mul.s   $f10, $f8, $f20            
    lwc1    $f16, 0x00DC($sp)          
    lui     $at, %hi(var_809B0A00)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0A00)($at) 
    lui     $at, %hi(var_809B0A04)     # $at = 809B0000
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    cvt.s.w $f18, $f6                  
    or      a3, s0, $zero              # a3 = FFFFFF28
    add.s   $f4, $f16, $f10            
    mul.s   $f16, $f18, $f8            
    lwc1    $f10, %lo(var_809B0A04)($at) 
    swc1    $f4, 0x00DC($sp)           
    lw      a1, 0x1E10(s5)             # 00001E10
    add.s   $f4, $f16, $f10            
    jal     func_809A64C0              
    swc1    $f4, 0x0010($sp)           
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x012C            
    bne     $at, $zero, lbl_809A95CC   
    sw      s5, 0x008C($sp)            
    lwc1    $f6, 0x0024(s2)            # 00000024
    swc1    $f22, 0x0014($sp)          
    lw      a2, 0x01BC($sp)            
    swc1    $f6, 0x0010($sp)           
    lwc1    $f18, 0x002C(s2)           # 0000002C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   s0, a2, 0x1C24             # s0 = 00001C24
    or      a0, s0, $zero              # a0 = 00001C24
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f8, 0x0024(s2)            # 00000024
    swc1    $f22, 0x0010($sp)          
    lwc1    $f4, 0x002C(s2)            # 0000002C
    add.s   $f10, $f8, $f16            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    mfc1    a3, $f10                   
    sw      $zero, 0x0018($sp)         
    or      a0, s0, $zero              # a0 = 00001C24
    lw      a1, 0x01BC($sp)            
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)           
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lw      a0, 0x01BC($sp)            
    jal     func_80020658              
    lb      a1, 0x1CBC(s5)             # 00001CBC
lbl_809A9778:
    lh      v1, 0x0148(s2)             # 00000148
lbl_809A977C:
    lwc1    $f0, 0x0050(s2)            # 00000050
lbl_809A9780:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    swc1    $f0, 0x0058(s2)            # 00000058
    beq     v1, $at, lbl_809A97B0      
    swc1    $f0, 0x0054(s2)            # 00000054
    addiu   $at, $zero, 0x00CA         # $at = 000000CA
    beq     v1, $at, lbl_809A97B0      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_809A97B0      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v1, $at, lbl_809A9924      
    lw      $ra, 0x007C($sp)           
lbl_809A97B0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809B0A08)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0A08)($at) 
    lui     $at, %hi(var_809B0A0C)     # $at = 809B0000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_809A9924               
    lw      $ra, 0x007C($sp)           
    lwc1    $f18, %lo(var_809B0A0C)($at) 
    lwc1    $f8, 0x0050(s2)            # 00000050
    lui     t8, %hi(var_809B073C)      # t8 = 809B0000
    addiu   s3, $sp, 0x00B0            # s3 = FFFFFEF8
    c.lt.s  $f18, $f8                  
    addiu   t8, t8, %lo(var_809B073C)  # t8 = 809B073C
    bc1fl   lbl_809A9924               
    lw      $ra, 0x007C($sp)           
    lw      t1, 0x0000(t8)             # 809B073C
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0000(s3)             # FFFFFEF8
    lw      t0, 0x0004(t8)             # 809B0740
    sw      t0, 0x0004(s3)             # FFFFFEFC
    lw      t1, 0x0008(t8)             # 809B0744
    sw      t1, 0x0008(s3)             # FFFFFF00
    lw      t2, 0x01BC($sp)            
    addu    t4, t2, $at                
    sw      t4, 0x008C($sp)            
    lh      t5, 0x0148(s2)             # 00000148
    slti    $at, t5, 0x00CA            
    bne     $at, $zero, lbl_809A9854   
    lui     $at, %hi(var_809B0A10)     # $at = 809B0000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809B0A10)($at) 
    lui     $at, %hi(var_809B0A14)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B0A14)($at) 
    lwc1    $f10, 0x0F2C(s2)           # 00000F2C
    lw      s5, 0x008C($sp)            
    addiu   s0, s2, 0x01C8             # s0 = 000001C8
    add.s   $f20, $f0, $f16            
    beq     $zero, $zero, lbl_809A98C0 
    swc1    $f10, 0x00C0($sp)          
lbl_809A9854:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, %hi(var_809B0A18)     # $at = 809B0000
    lw      s5, 0x008C($sp)            
    lwc1    $f12, %lo(var_809B0A18)($at) 
    mfc1    s1, $f4                    
    nop
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    addiu   s1, s1, 0x0012             # s1 = 00000013
    sll     s1, s1, 16                 
    jal     func_80026D64              
    sra     s1, s1, 16                 
    multu   s1, s4                     
    lui     $at, %hi(var_809B0A1C)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0A1C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    add.s   $f20, $f0, $f6             
    mflo    t9                         
    addu    s0, s2, t9                 
    lwc1    $f18, 0x0D64(s0)           # 00000F2C
    sub.s   $f16, $f18, $f8            
    swc1    $f16, 0x00C0($sp)          
lbl_809A98C0:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f10, 0x0050(s2)           # 00000050
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mul.s   $f6, $f10, $f4             
    nop
    mul.s   $f22, $f6, $f18            
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lwc1    $f8, 0x0D60(s0)            # 00000F28
    mov.s   $f12, $f22                 
    add.s   $f16, $f0, $f8             
    jal     func_80026D90              
    swc1    $f16, 0x00BC($sp)          
    lwc1    $f10, 0x0D68(s0)           # 00000F30
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    addiu   a2, $sp, 0x00BC            # a2 = FFFFFF04
    add.s   $f4, $f0, $f10             
    or      a3, s3, $zero              # a3 = FFFFFEF8
    swc1    $f4, 0x00C4($sp)           
    lw      a1, 0x1E10(s5)             # 00001E10
    jal     func_809A64C0              
    swc1    $f20, 0x0010($sp)          
    lw      $ra, 0x007C($sp)           
lbl_809A9924:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    ldc1    $f30, 0x0058($sp)          
    lw      s0, 0x0064($sp)            
    lw      s1, 0x0068($sp)            
    lw      s2, 0x006C($sp)            
    lw      s3, 0x0070($sp)            
    lw      s4, 0x0074($sp)            
    lw      s5, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01B8           # $sp = 00000000


func_809A995C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s1, 0x0054($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f30, 0x0048($sp)          
    sdc1    $f28, 0x0040($sp)          
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t0, 0x1028(a3)             # 00001028
    sll     a0, a2,  6                 
lbl_809A99A4:
    addu    v0, t0, a0                 
    lbu     t6, 0x0016(v0)             # 00000016
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809A9B98    
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   a1, $zero, 0xFFFD          # a1 = FFFFFFFD
lbl_809A99BC:
    lw      t8, 0x1028(a3)             # 00001028
    sll     v1, s0,  6                 
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addu    v0, t8, v1                 
    lbu     t9, 0x0016(v0)             # 00000016
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    and     t1, t9, a1                 
    sb      t1, 0x0016(v0)             # 00000016
    lw      t2, 0x1028(a3)             # 00001028
    slti    $at, s0, 0x0013            
    addu    v0, t2, v1                 
    lbu     t3, 0x0015(v0)             # 00000015
    and     t4, t3, a1                 
    bne     $at, $zero, lbl_809A99BC   
    sb      t4, 0x0015(v0)             # 00000015
    lw      t5, 0x1028(a3)             # 00001028
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     $at, 0x0D80                # $at = 0D800000
    addu    t6, t5, a0                 
    lw      v0, 0x0024(t6)             # 00000024
    sh      t7, 0x0150(a3)             # 00000150
    ori     $at, $at, 0x0600           # $at = 0D800600
    lw      v1, 0x0000(v0)             # 00000000
    addiu   a0, a3, 0x1000             # a0 = 00001000
    addiu   a1, $zero, 0x38F4          # a1 = 000038F4
    sll     t8, v1, 14                 
    bgez    t8, lbl_809A9A78           
    and     t5, v1, $at                
    sh      a2, 0x0096($sp)            
    jal     func_80064780              
    sw      a3, 0x0098($sp)            
    lw      a3, 0x0098($sp)            
    lh      a2, 0x0096($sp)            
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sh      t9, 0x0162(a3)             # 00000162
    lh      t1, 0x0162(a3)             # 00000162
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0164(a3)             # 00000164
    sh      t3, 0x0148(a3)             # 00000148
    sh      t4, 0x016E(a3)             # 0000016E
    beq     $zero, $zero, lbl_809A9A84 
    swc1    $f4, 0x0198(a3)            # 00000198
lbl_809A9A78:
    beq     t5, $zero, lbl_809A9A84    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sb      t6, 0x01C2(a3)             # 000001C2
lbl_809A9A84:
    lui     $at, %hi(var_809B0A20)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0A20)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    s3, s1, $at                
    lui     $at, %hi(var_809B0A24)     # $at = 809B0000
    swc1    $f6, 0x01D0(a3)            # 000001D0
    lwc1    $f30, %lo(var_809B0A24)($at) 
    lui     $at, %hi(var_809B0A28)     # $at = 809B0000
    lwc1    $f28, %lo(var_809B0A28)($at) 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f26                  # $f26 = 4.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f24                  # $f24 = 7.00
    sll     t7, a2,  1                 
    sll     t8, t7,  2                 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f22                  # $f22 = 3.00
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    lui     $at, 0x4100                # $at = 41000000
    addu    s2, a3, t8                 
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s2, s2, 0x0D60             # s2 = 00000D60
    addiu   s1, $sp, 0x0084            # s1 = FFFFFFEC
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFE0
lbl_809A9AEC:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0078($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    add.s   $f8, $f0, $f26             
    mov.s   $f12, $f20                 
    jal     func_80026D90              
    swc1    $f8, 0x007C($sp)           
    swc1    $f0, 0x0080($sp)           
    lw      t1, 0x0000(s2)             # 00000D60
    mov.s   $f12, $f28                 
    sw      t1, 0x0000(s1)             # FFFFFFEC
    lw      t9, 0x0004(s2)             # 00000D64
    sw      t9, 0x0004(s1)             # FFFFFFF0
    lw      t1, 0x0008(s2)             # 00000D68
    sw      t1, 0x0008(s1)             # FFFFFFF4
    lwc1    $f16, 0x0078($sp)          
    lwc1    $f10, 0x0084($sp)          
    lwc1    $f6, 0x008C($sp)           
    mul.s   $f18, $f16, $f22           
    nop
    mul.s   $f8, $f0, $f22             
    add.s   $f4, $f10, $f18            
    add.s   $f16, $f6, $f8             
    swc1    $f4, 0x0084($sp)           
    jal     func_80026D64              
    swc1    $f16, 0x008C($sp)          
    add.s   $f10, $f0, $f30            
    lw      a1, 0x1E10(s3)             # 00001E10
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    or      a2, s1, $zero              # a2 = FFFFFFEC
    swc1    $f10, 0x0010($sp)          
    jal     func_809A64C0              
    or      a3, s4, $zero              # a3 = FFFFFFE0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bne     $at, $zero, lbl_809A9AEC   
    nop
    beq     $zero, $zero, lbl_809A9BD4 
    lw      $ra, 0x0064($sp)           
lbl_809A9B98:
    lbu     v1, 0x0015(v0)             # 00000015
    addiu   a2, a2, 0x0001             # a2 = 00000001
    sll     a2, a2, 16                 
    andi    t2, v1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_809A9BC4    
    sra     a2, a2, 16                 
    andi    t3, v1, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0015(v0)             # 00000015
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    beq     $zero, $zero, lbl_809A9BD0 
    sb      t4, 0x01C2(a3)             # 000001C2
lbl_809A9BC4:
    slti    $at, a2, 0x0013            
    bnel    $at, $zero, lbl_809A99A4   
    sll     a0, a2,  6                 
lbl_809A9BD0:
    lw      $ra, 0x0064($sp)           
lbl_809A9BD4:
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
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809A9C08:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    sb      $zero, 0x009F($sp)         
    lw      t6, 0x1C44(a2)             # 00001C44
    sw      a2, 0x00A4($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D2F0              
    sw      t6, 0x0074($sp)            
    sw      v0, 0x0070($sp)            
    lh      v1, 0x0F50(s0)             # 00000F50
    slti    $at, v1, 0x0004            
    beq     $at, $zero, lbl_809A9C58   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lh      v1, 0x0F50(s0)             # 00000F50
    swc1    $f4, 0x0F4C(s0)            # 00000F4C
lbl_809A9C58:
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x0005            
    beq     $at, $zero, lbl_809AA9F8   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_809B0A2C)     # $at = 809B0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_809B0A2C)($at) 
    jr      t7                         
    nop
var_809A9C7C:
    lh      t8, 0x016E(s0)             # 0000016E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x00A4($sp)            
    bne     t8, $at, lbl_809A9C98      
    addiu   a1, $zero, 0x403F          # a1 = 0000403F
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
lbl_809A9C98:
    lw      v0, 0x0074($sp)            
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lwc1    $f12, 0x002C(v0)           # 0000002C
    lui     $at, 0x4334                # $at = 43340000
    sub.s   $f14, $f12, $f6            
    abs.s   $f14, $f14                 
    c.lt.s  $f14, $f2                  
    nop
    bc1fl   lbl_809A9CF0               
    lui     $at, 0xC334                # $at = C3340000
    lwc1    $f8, 0x0024(v0)            # 00000024
    mtc1    $at, $f10                  # $f10 = -180.00
    nop
    sub.s   $f0, $f8, $f10             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1t    lbl_809A9D8C               
    lui     $at, 0xC334                # $at = C3340000
lbl_809A9CF0:
    mtc1    $at, $f18                  # $f18 = -180.00
    lui     $at, 0x4334                # $at = 43340000
    sub.s   $f16, $f12, $f18           
    abs.s   $f16, $f16                 
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_809A9D38               
    c.lt.s  $f14, $f2                  
    lwc1    $f4, 0x0024(v0)            # 00000024
    mtc1    $at, $f6                   # $f6 = 180.00
    nop
    sub.s   $f0, $f4, $f6              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1tl   lbl_809A9D90               
    lw      a0, 0x00A4($sp)            
    c.lt.s  $f14, $f2                  
lbl_809A9D38:
    nop
    bc1fl   lbl_809A9D64               
    c.lt.s  $f16, $f2                  
    lwc1    $f8, 0x0024(v0)            # 00000024
    sub.s   $f0, $f8, $f18             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1tl   lbl_809A9D90               
    lw      a0, 0x00A4($sp)            
    c.lt.s  $f16, $f2                  
lbl_809A9D64:
    nop
    bc1f    lbl_809AA9F8               
    nop
    lwc1    $f10, 0x0024(v0)           # 00000024
    sub.s   $f0, $f10, $f18            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_809AA9F8               
    nop
lbl_809A9D8C:
    lw      a0, 0x00A4($sp)            
lbl_809A9D90:
    jal     func_80052328              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x00A4($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0              
    lw      a0, 0x00A4($sp)            
    sh      v0, 0x0F52(s0)             # 00000F52
    lw      a0, 0x00A4($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x00A4($sp)            
    lh      a1, 0x0F52(s0)             # 00000F52
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sh      $zero, 0x014A(s0)          # 0000014A
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t1, 0x014A(s0)             # 0000014A
    lui     v1, %hi(var_809B0064)      # v1 = 809B0000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t2, $zero, 0x721A          # t2 = 0000721A
    addiu   v1, v1, %lo(var_809B0064)  # v1 = 809B0064
    sh      t9, 0x0F50(s0)             # 00000F50
    sh      t0, 0x0172(s0)             # 00000172
    sh      t2, 0x0032(s0)             # 00000032
    swc1    $f4, 0x0068(s0)            # 00000068
    sh      t1, 0x014C(s0)             # 0000014C
    lw      t3, 0x0000(v1)             # 809B0064
    addiu   t4, $zero, 0x7530          # t4 = 00007530
    lui     a0, 0x1032                 # a0 = 10320000
    sh      $zero, 0x0148(t3)          # 00000148
    lw      t5, 0x0000(v1)             # 809B0064
    ori     a0, a0, 0x00FF             # a0 = 103200FF
    jal     func_800CAA70              
    sh      t4, 0x016E(t5)             # 0000016E
    jal     func_800D6218              
    lw      a0, 0x00A4($sp)            
var_809A9E30:
    lw      v1, 0x0074($sp)            
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f8                   # $f8 = -130.00
    lui     $at, 0xC3D4                # $at = C3D40000
    sh      $zero, 0x0032(v1)          # 00000032
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f4                   # $f4 = -424.00
    lh      t6, 0x0032(v1)             # 00000032
    lui     $at, 0xC33E                # $at = C33E0000
    swc1    $f6, 0x0024(v1)            # 00000024
    mtc1    $at, $f6                   # $f6 = -190.00
    swc1    $f8, 0x002C(v1)            # 0000002C
    lui     $at, 0x4334                # $at = 43340000
    swc1    $f10, 0x0068(v1)           # 00000068
    sh      t6, 0x00B6(v1)             # 000000B6
    mtc1    $at, $f8                   # $f8 = 180.00
    swc1    $f4, 0x0F58(s0)            # 00000F58
    swc1    $f6, 0x0F5C(s0)            # 00000F5C
    lh      v0, 0x0172(s0)             # 00000172
    lui     $at, 0xC3A5                # $at = C3A50000
    swc1    $f8, 0x0F60(s0)            # 00000F60
    mtc1    $at, $f4                   # $f4 = -330.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f10, 0x0024(v1)           # 00000024
    swc1    $f4, 0x0F68(s0)            # 00000F68
    swc1    $f6, 0x0F6C(s0)            # 00000F6C
    bne     v0, $zero, lbl_809A9EBC    
    swc1    $f10, 0x0F64(s0)           # 00000F64
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sh      t7, 0x0F50(s0)             # 00000F50
    sh      $zero, 0x014A(s0)          # 0000014A
    beq     $zero, $zero, lbl_809A9F38 
    lh      v0, 0x0172(s0)             # 00000172
lbl_809A9EBC:
    slti    $at, v0, 0x0032            
    beq     $at, $zero, lbl_809A9F38   
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0F58(s0)            # 00000F58
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    add.s   $f4, $f8, $f10             
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f10                  # $f10 = -250.00
    lui     $at, %hi(var_809B0A40)     # $at = 809B0000
    add.s   $f8, $f4, $f6              
    swc1    $f10, 0x0068($sp)          
    lwc1    $f12, %lo(var_809B0A40)($at) 
    swc1    $f8, 0x0064($sp)           
    lwc1    $f4, 0x0F60(s0)            # 00000F60
    jal     func_80026D64              
    swc1    $f4, 0x006C($sp)           
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, %hi(var_809B0A44)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0A44)($at) 
    lw      a0, 0x00A4($sp)            
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFC4
    add.s   $f10, $f0, $f8             
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f6, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f10, 0x0014($sp)          
    lh      v0, 0x0172(s0)             # 00000172
lbl_809A9F38:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v0, $at, lbl_809AA9F8      
    lui     a0, %hi(var_809B0528)      # a0 = 809B0000
    addiu   a0, a0, %lo(var_809B0528)  # a0 = 809B0528
    jal     func_80064780              
    addiu   a1, $zero, 0x38F6          # a1 = 000038F6
    beq     $zero, $zero, lbl_809AA9F8 
    nop
var_809A9F58:
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    addiu   a0, s0, 0x0FFC             # a0 = 00000FFC
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t8, 0x0F54(s0)             # 00000F54
    lui     t0, %hi(var_809B0748)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0748)  # t0 = 809B0748
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addu    t1, t9, t0                 
    lw      t3, 0x0000(t1)             # 00000000
    lh      t4, 0x0F54(s0)             # 00000F54
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      t3, 0x01C4(s0)             # 000001C4
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x01C8(s0)             # 000001C8
    lw      t3, 0x0008(t1)             # 00000008
    bne     t4, $at, lbl_809A9FEC      
    sw      t3, 0x01CC(s0)             # 000001CC
    lh      a0, 0x014A(s0)             # 0000014A
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    mul.s   $f2, $f0, $f4              
    beq     $zero, $zero, lbl_809AA024 
    lwc1    $f8, 0x01C4(s0)            # 000001C4
lbl_809A9FEC:
    lh      a0, 0x014A(s0)             # 0000014A
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    nop
    mul.s   $f2, $f0, $f6              
    nop
    lwc1    $f8, 0x01C4(s0)            # 000001C4
lbl_809AA024:
    lwc1    $f10, 0x0F58(s0)           # 00000F58
    lwc1    $f4, 0x01C8(s0)            # 000001C8
    lwc1    $f6, 0x0F5C(s0)            # 00000F5C
    sub.s   $f12, $f8, $f10            
    sub.s   $f8, $f4, $f6              
    add.s   $f10, $f8, $f2             
    swc1    $f10, 0x0094($sp)          
    lwc1    $f6, 0x0F60(s0)            # 00000F60
    lwc1    $f4, 0x01CC(s0)            # 000001CC
    swc1    $f12, 0x0098($sp)          
    sub.s   $f14, $f4, $f6             
    jal     func_800CD76C              
    swc1    $f14, 0x0090($sp)          
    lwc1    $f16, 0x0098($sp)          
    lwc1    $f18, 0x0090($sp)          
    lwc1    $f12, 0x0094($sp)          
    mul.s   $f8, $f16, $f16            
    swc1    $f0, 0x0088($sp)           
    mul.s   $f10, $f18, $f18           
    add.s   $f4, $f8, $f10             
    swc1    $f4, 0x003C($sp)           
    jal     func_800CD76C              
    sqrt.s  $f14, $f4                  
    lui     $at, %hi(var_809B0A48)     # $at = 809B0000
    lwc1    $f2, 0x0088($sp)           
    lwc1    $f6, %lo(var_809B0A48)($at) 
    swc1    $f0, 0x008C($sp)           
    lwc1    $f4, 0x0FF8(s0)            # 00000FF8
    mul.s   $f8, $f2, $f6              
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    trunc.w.s $f6, $f4                   
    trunc.w.s $f10, $f8                  
    mfc1    a3, $f6                    
    mfc1    a1, $f10                   
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lui     $at, %hi(var_809B0A4C)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0A4C)($at) 
    lwc1    $f8, 0x008C($sp)           
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mul.s   $f4, $f8, $f10             
    lwc1    $f8, 0x0FF8(s0)            # 00000FF8
    trunc.w.s $f10, $f8                  
    trunc.w.s $f6, $f4                   
    mfc1    a3, $f10                   
    mfc1    a1, $f6                    
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sll     a1, a1, 16                 
    jal     func_80064624              
    sra     a1, a1, 16                 
    lh      v1, 0x014A(s0)             # 0000014A
    addiu   $at, $zero, 0x0096         # $at = 00000096
    lw      t9, 0x0074($sp)            
    bnel    v1, $at, lbl_809AA164      
    slti    $at, v1, 0x0096            
    lwc1    $f4, 0x0F64(s0)            # 00000F64
    lwc1    $f6, 0x0024(t9)            # 00000024
    lwc1    $f8, 0x0F68(s0)            # 00000F68
    lh      v1, 0x014A(s0)             # 0000014A
    sub.s   $f0, $f4, $f6              
    lwc1    $f4, 0x0F6C(s0)            # 00000F6C
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0FA0(s0)            # 00000FA0
    lw      t0, 0x0074($sp)            
    lwc1    $f10, 0x0028(t0)           # 00000028
    sub.s   $f0, $f8, $f10             
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0FA4(s0)            # 00000FA4
    lw      t1, 0x0074($sp)            
    lwc1    $f6, 0x002C(t1)            # 0000002C
    sub.s   $f0, $f4, $f6              
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0FA8(s0)            # 00000FA8
    slti    $at, v1, 0x0096            
lbl_809AA164:
    bnel    $at, $zero, lbl_809AA224   
    addiu   $at, $zero, 0x00BE         # $at = 000000BE
    lwc1    $f8, 0x0FA0(s0)            # 00000FA0
    lwc1    $f10, 0x0FDC(s0)           # 00000FDC
    lw      t2, 0x0074($sp)            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f4, $f8, $f10             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0F64             # a0 = 00000F64
    lw      a1, 0x0024(t2)             # 00000024
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lw      t3, 0x0074($sp)            
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0028(t3)            # 00000028
    lwc1    $f4, 0x0FA4(s0)            # 00000FA4
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    add.s   $f10, $f6, $f8             
    lwc1    $f6, 0x0FDC(s0)            # 00000FDC
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0F68             # a0 = 00000F68
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f10                   
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x0FA8(s0)           # 00000FA8
    lwc1    $f4, 0x0FDC(s0)            # 00000FDC
    lw      t4, 0x0074($sp)            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f10, $f4             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0F6C             # a0 = 00000F6C
    lw      a1, 0x002C(t4)             # 0000002C
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    addiu   a0, s0, 0x0FDC             # a0 = 00000FDC
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x014A(s0)             # 0000014A
    addiu   $at, $zero, 0x00BE         # $at = 000000BE
lbl_809AA224:
    bne     v1, $at, lbl_809AA23C      
    lui     a0, %hi(var_809B0528)      # a0 = 809B0000
    addiu   a0, a0, %lo(var_809B0528)  # a0 = 809B0528
    jal     func_80064780              
    addiu   a1, $zero, 0x38F6          # a1 = 000038F6
    lh      v1, 0x014A(s0)             # 0000014A
lbl_809AA23C:
    slti    $at, v1, 0x0097            
    bne     $at, $zero, lbl_809AA2C0   
    slti    $at, v1, 0x00B4            
    beq     $at, $zero, lbl_809AA2C0   
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0F58(s0)            # 00000F58
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    add.s   $f4, $f8, $f10             
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f10                  # $f10 = -250.00
    lui     $at, %hi(var_809B0A50)     # $at = 809B0000
    add.s   $f8, $f4, $f6              
    swc1    $f10, 0x005C($sp)          
    lwc1    $f12, %lo(var_809B0A50)($at) 
    swc1    $f8, 0x0058($sp)           
    lwc1    $f4, 0x0F60(s0)            # 00000F60
    jal     func_80026D64              
    swc1    $f4, 0x0060($sp)           
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, %hi(var_809B0A54)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0A54)($at) 
    lw      a0, 0x00A4($sp)            
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFB8
    add.s   $f10, $f0, $f8             
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f6, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f10, 0x0014($sp)          
    lh      v1, 0x014A(s0)             # 0000014A
lbl_809AA2C0:
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f16                  # $f16 = 4096.00
    lui     $at, %hi(var_809B0A58)     # $at = 809B0000
    lwc1    $f14, %lo(var_809B0A58)($at) 
    slti    $at, v1, 0x0065            
    bne     $at, $zero, lbl_809AA2F4   
    addiu   a0, s0, 0x0178             # a0 = 00000178
    slti    $at, v1, 0x00DC            
    beql    $at, $zero, lbl_809AA2F8   
    slti    $at, v1, 0x015F            
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     $zero, $zero, lbl_809AA348 
    slti    $at, v1, 0x00FB            
lbl_809AA2F4:
    slti    $at, v1, 0x015F            
lbl_809AA2F8:
    bne     $at, $zero, lbl_809AA310   
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    lui     $at, %hi(var_809B0A5C)     # $at = 809B0000
    beq     $zero, $zero, lbl_809AA344 
    lwc1    $f14, %lo(var_809B0A5C)($at) 
lbl_809AA310:
    slti    $at, v1, 0x00DD            
    bne     $at, $zero, lbl_809AA338   
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f12                  # $f12 = 7.00
    lui     $at, %hi(var_809B0A60)     # $at = 809B0000
    lwc1    $f14, %lo(var_809B0A60)($at) 
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f16                  # $f16 = 8192.00
    beq     $zero, $zero, lbl_809AA348 
    slti    $at, v1, 0x00FB            
lbl_809AA338:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    nop
lbl_809AA344:
    slti    $at, v1, 0x00FB            
lbl_809AA348:
    bne     $at, $zero, lbl_809AA374   
    lui     a1, 0x42C8                 # a1 = 42C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f12, 0x0080($sp)          
    swc1    $f14, 0x0078($sp)          
    jal     func_80064280              
    swc1    $f16, 0x007C($sp)          
    lwc1    $f12, 0x0080($sp)          
    lwc1    $f14, 0x0078($sp)          
    lwc1    $f16, 0x007C($sp)          
lbl_809AA374:
    lh      v0, 0x0F54(s0)             # 00000F54
    mfc1    a3, $f14                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    slti    $at, v0, 0x0005            
    beq     $at, $zero, lbl_809AA3CC   
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f18, 0x0094($sp)          
    lwc1    $f4, 0x003C($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mul.s   $f6, $f18, $f18            
    mtc1    $at, $f2                   # $f2 = 40.00
    addiu   t5, v0, 0x0001             # t5 = 00000001
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809AA3E4               
    mfc1    a1, $f12                   
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t5, 0x0F54(s0)             # 00000F54
    beq     $zero, $zero, lbl_809AA3E0 
    swc1    $f8, 0x0FF8(s0)            # 00000FF8
lbl_809AA3CC:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    lui     $at, 0x44C0                # $at = 44C00000
    mtc1    $at, $f16                  # $f16 = 1536.00
    nop
lbl_809AA3E0:
    mfc1    a1, $f12                   
lbl_809AA3E4:
    jal     func_80064280              
    swc1    $f16, 0x007C($sp)          
    lwc1    $f16, 0x007C($sp)          
    addiu   a0, s0, 0x0FF8             # a0 = 00000FF8
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f16                   
    jal     func_80064280              
    lui     a3, 0x4300                 # a3 = 43000000
    lh      v1, 0x014A(s0)             # 0000014A
    addiu   $at, $zero, 0x020D         # $at = 0000020D
    lw      a0, 0x00A4($sp)            
    bne     v1, $at, lbl_809AA424      
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      v1, 0x014A(s0)             # 0000014A
lbl_809AA424:
    slti    $at, v1, 0x021D            
    bne     $at, $zero, lbl_809AA518   
    addiu   t5, $zero, 0x0CEC          # t5 = 00000CEC
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x0F50(s0)             # 00000F50
    lw      a0, 0x00A4($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t8, %hi(var_809B0064)      # t8 = 809B0000
    lw      t8, %lo(var_809B0064)(t8)  
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4334                # $at = 43340000
    sb      t7, 0x01C1(t8)             # 809B01C1
    lw      t9, 0x0074($sp)            
    mtc1    $at, $f10                  # $f10 = 180.00
    lui     $at, 0xC352                # $at = C3520000
    mtc1    $at, $f4                   # $f4 = -210.00
    swc1    $f10, 0x0024(t9)           # 00000024
    lw      t0, 0x0074($sp)            
    addiu   t1, $zero, 0x8000          # t1 = FFFF8000
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x002C(t0)            # 0000002C
    lw      t2, 0x0074($sp)            
    lui     $at, 0x4316                # $at = 43160000
    lui     t5, %hi(var_809B0064)      # t5 = 809B0000
    sh      t1, 0x0032(t2)             # 00000032
    lw      t3, 0x0074($sp)            
    mtc1    $at, $f8                   # $f8 = 150.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      t4, 0x0032(t3)             # 00000032
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    sh      t4, 0x00B6(t3)             # 000000B6
    swc1    $f6, 0x0FFC(s0)            # 00000FFC
    lw      t5, %lo(var_809B0064)(t5)  
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, $zero, 0x0015          # t0 = 00000015
    swc1    $f8, 0x0194(t5)            # 809B0194
    sh      t6, 0x0172(s0)             # 00000172
    swc1    $f14, 0x0F4C(s0)           # 00000F4C
    swc1    $f10, 0x0068(s0)           # 00000068
    lw      t7, %lo(var_809B0064)(t7)  
    lw      t1, 0x0004(s0)             # 00000004
    lui     v1, %hi(var_809B0064)      # v1 = 809B0000
    lw      t9, 0x0024(t7)             # 809B0024
    and     t2, t1, $at                
    sw      t9, 0x0024(s0)             # 00000024
    lw      t8, 0x0028(t7)             # 809B0028
    sw      t8, 0x0028(s0)             # 00000028
    lw      t9, 0x002C(t7)             # 809B002C
    sh      t0, 0x0148(s0)             # 00000148
    sw      t2, 0x0004(s0)             # 00000004
    sw      t9, 0x002C(s0)             # 0000002C
    lw      v1, %lo(var_809B0064)(v1)  
    lw      t4, 0x0004(v1)             # 809B0004
    ori     t3, t4, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_809AA560 
    sw      t3, 0x0004(v1)             # 809B0004
lbl_809AA518:
    lui     t6, %hi(var_809B0064)      # t6 = 809B0000
    lw      t6, %lo(var_809B0064)(t6)  
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t5, 0x015E(t6)             # 809B015E
    lw      t7, %lo(var_809B0064)(t7)  
    lui     $at, 0x447A                # $at = 447A0000
    lui     t8, %hi(var_809B0064)      # t8 = 809B0000
    swc1    $f4, 0x0180(t7)            # 809B0180
    lw      t8, %lo(var_809B0064)(t8)  
    mtc1    $at, $f6                   # $f6 = 1000.00
    lui     $at, %hi(var_809B0A64)     # $at = 809B0000
    lui     t9, %hi(var_809B0064)      # t9 = 809B0000
    swc1    $f6, 0x0178(t8)            # 809B0178
    lw      t9, %lo(var_809B0064)(t9)  
    lwc1    $f8, %lo(var_809B0A64)($at) 
    beq     $zero, $zero, lbl_809AA9F8 
    swc1    $f8, 0x017C(t9)            # 809B017C
lbl_809AA560:
    lh      v0, 0x0172(s0)             # 00000172
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    slti    $at, v0, 0x00A0            
    bne     $at, $zero, lbl_809AA724   
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f12                  # $f12 = 150.00
    lui     $at, 0xC366                # $at = C3660000
    mtc1    $at, $f10                  # $f10 = -230.00
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f4                   # $f4 = 170.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f8                   # $f8 = -280.00
    swc1    $f14, 0x0F5C(s0)           # 00000F5C
    lui     t1, %hi(var_809B0064)      # t1 = 809B0000
    swc1    $f12, 0x0F58(s0)           # 00000F58
    swc1    $f10, 0x0F60(s0)           # 00000F60
    swc1    $f4, 0x0F64(s0)            # 00000F64
    swc1    $f6, 0x0F68(s0)            # 00000F68
    swc1    $f8, 0x0F6C(s0)            # 00000F6C
    lw      t1, %lo(var_809B0064)(t1)  
    addiu   t0, $zero, 0x0CEC          # t0 = 00000CEC
    lui     t2, %hi(var_809B0064)      # t2 = 809B0000
    sh      t0, 0x015E(t1)             # 809B015E
    lw      t2, %lo(var_809B0064)(t2)  
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x447A                # $at = 447A0000
    lui     t4, %hi(var_809B0064)      # t4 = 809B0000
    swc1    $f10, 0x0180(t2)           # 809B0180
    lw      t4, %lo(var_809B0064)(t4)  
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     $at, %hi(var_809B0A68)     # $at = 809B0000
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    swc1    $f4, 0x0178(t4)            # 809B0178
    lw      t3, %lo(var_809B0064)(t3)  
    lwc1    $f6, %lo(var_809B0A68)($at) 
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    swc1    $f6, 0x017C(t3)            # 809B017C
    lh      v0, 0x0172(s0)             # 00000172
    bne     v0, $at, lbl_809AA718      
    lui     $at, %hi(var_809B0A6C)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B0A6C)($at) 
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f16                  # $f16 = -260.00
    lwc1    $f4, 0x0F58(s0)            # 00000F58
    lui     $at, 0x431B                # $at = 431B0000
    mtc1    $at, $f18                  # $f18 = 155.00
    lui     $at, 0x4282                # $at = 42820000
    sub.s   $f0, $f4, $f12             
    mtc1    $at, $f8                   # $f8 = 65.00
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f10                  # $f10 = -280.00
    swc1    $f8, 0x0FC8(s0)            # 00000FC8
    lwc1    $f8, 0x0F5C(s0)            # 00000F5C
    abs.s   $f0, $f0                   
    lwc1    $f4, 0x0F60(s0)            # 00000F60
    mul.s   $f6, $f0, $f2              
    sub.s   $f0, $f8, $f14             
    swc1    $f10, 0x0FCC(s0)           # 00000FCC
    lwc1    $f8, 0x0F64(s0)            # 00000F64
    swc1    $f12, 0x0FAC(s0)           # 00000FAC
    swc1    $f14, 0x0FB0(s0)           # 00000FB0
    abs.s   $f0, $f0                   
    swc1    $f6, 0x0F94(s0)            # 00000F94
    mul.s   $f10, $f0, $f2             
    sub.s   $f0, $f4, $f16             
    lwc1    $f4, 0x0F68(s0)            # 00000F68
    lui     $at, %hi(var_809B0A70)     # $at = 809B0000
    swc1    $f2, 0x0FD8(s0)            # 00000FD8
    swc1    $f2, 0x0FD4(s0)            # 00000FD4
    abs.s   $f0, $f0                   
    swc1    $f10, 0x0F98(s0)           # 00000F98
    mul.s   $f6, $f0, $f2              
    sub.s   $f0, $f8, $f18             
    swc1    $f2, 0x0FD0(s0)            # 00000FD0
    swc1    $f2, 0x0FC0(s0)            # 00000FC0
    swc1    $f2, 0x0FBC(s0)            # 00000FBC
    swc1    $f2, 0x0FB8(s0)            # 00000FB8
    abs.s   $f0, $f0                   
    swc1    $f6, 0x0F9C(s0)            # 00000F9C
    mul.s   $f10, $f0, $f2             
    lwc1    $f6, 0x0FC8(s0)            # 00000FC8
    swc1    $f16, 0x0FB4(s0)           # 00000FB4
    swc1    $f18, 0x0FC4(s0)           # 00000FC4
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f0, $f4, $f6              
    lwc1    $f4, 0x0FCC(s0)            # 00000FCC
    swc1    $f10, 0x0FA0(s0)           # 00000FA0
    lwc1    $f10, 0x0F6C(s0)           # 00000F6C
    abs.s   $f0, $f0                   
    mul.s   $f8, $f0, $f2              
    sub.s   $f0, $f10, $f4             
    abs.s   $f0, $f0                   
    swc1    $f8, 0x0FA4(s0)            # 00000FA4
    mul.s   $f6, $f0, $f2              
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0FDC(s0)            # 00000FDC
    swc1    $f6, 0x0FA8(s0)            # 00000FA8
    lwc1    $f10, %lo(var_809B0A70)($at) 
    lui     $at, %hi(var_809B0A74)     # $at = 809B0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f10, 0x0FE0(s0)           # 00000FE0
    lwc1    $f4, %lo(var_809B0A74)($at) 
    swc1    $f6, 0x0D58(s0)            # 00000D58
    swc1    $f4, 0x0D54(s0)            # 00000D54
    sb      t5, 0x009F($sp)            
    lh      v0, 0x0172(s0)             # 00000172
lbl_809AA718:
    lui     $at, %hi(var_809B0A78)     # $at = 809B0000
    beq     $zero, $zero, lbl_809AA734 
    lwc1    $f2, %lo(var_809B0A78)($at) 
lbl_809AA724:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, %hi(var_809B0A7C)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B0A7C)($at) 
    sb      t6, 0x009F($sp)            
lbl_809AA734:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v0, $at, lbl_809AA848      
    lui     $at, 0x42DE                # $at = 42DE0000
    mtc1    $at, $f12                  # $f12 = 111.00
    lui     $at, 0x4305                # $at = 43050000
    mtc1    $at, $f14                  # $f14 = 133.00
    lui     $at, 0xC33F                # $at = C33F0000
    mtc1    $at, $f16                  # $f16 = -191.00
    lwc1    $f6, 0x0F58(s0)            # 00000F58
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0x4268                # $at = 42680000
    sub.s   $f0, $f6, $f12             
    mtc1    $at, $f10                  # $f10 = 58.00
    swc1    $f8, 0x0FC4(s0)            # 00000FC4
    lui     $at, 0xC377                # $at = C3770000
    swc1    $f10, 0x0FC8(s0)           # 00000FC8
    lwc1    $f10, 0x0F5C(s0)           # 00000F5C
    abs.s   $f0, $f0                   
    mtc1    $at, $f4                   # $f4 = -247.00
    mul.s   $f8, $f0, $f2              
    sub.s   $f0, $f10, $f14            
    swc1    $f4, 0x0FCC(s0)            # 00000FCC
    lwc1    $f6, 0x0F60(s0)            # 00000F60
    lwc1    $f10, 0x0F64(s0)           # 00000F64
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    abs.s   $f0, $f0                   
    swc1    $f8, 0x0F94(s0)            # 00000F94
    mul.s   $f4, $f0, $f2              
    sub.s   $f0, $f6, $f16             
    addiu   t8, $zero, 0x006E          # t8 = 0000006E
    sh      t7, 0x0F50(s0)             # 00000F50
    sh      t8, 0x0172(s0)             # 00000172
    lui     $at, %hi(var_809B0A80)     # $at = 809B0000
    abs.s   $f0, $f0                   
    swc1    $f4, 0x0F98(s0)            # 00000F98
    lwc1    $f4, 0x0FC4(s0)            # 00000FC4
    mul.s   $f8, $f0, $f2              
    swc1    $f12, 0x0FAC(s0)           # 00000FAC
    sub.s   $f0, $f10, $f4             
    lwc1    $f10, 0x0FC8(s0)           # 00000FC8
    swc1    $f14, 0x0FB0(s0)           # 00000FB0
    swc1    $f16, 0x0FB4(s0)           # 00000FB4
    abs.s   $f0, $f0                   
    swc1    $f8, 0x0F9C(s0)            # 00000F9C
    mul.s   $f6, $f0, $f2              
    lwc1    $f8, 0x0F68(s0)            # 00000F68
    lh      v0, 0x0172(s0)             # 00000172
    sub.s   $f0, $f8, $f10             
    lwc1    $f8, 0x0FCC(s0)            # 00000FCC
    swc1    $f6, 0x0FA0(s0)            # 00000FA0
    lwc1    $f6, 0x0F6C(s0)            # 00000F6C
    abs.s   $f0, $f0                   
    mul.s   $f4, $f0, $f2              
    sub.s   $f0, $f6, $f8              
    mtc1    $zero, $f8                 # $f8 = 0.00
    abs.s   $f0, $f0                   
    swc1    $f4, 0x0FA4(s0)            # 00000FA4
    mul.s   $f10, $f0, $f2             
    swc1    $f10, 0x0FA8(s0)           # 00000FA8
    lwc1    $f4, %lo(var_809B0A80)($at) 
    lui     $at, %hi(var_809B0A84)     # $at = 809B0000
    swc1    $f4, 0x0FBC(s0)            # 00000FBC
    lwc1    $f6, %lo(var_809B0A84)($at) 
    lui     $at, %hi(var_809B0A88)     # $at = 809B0000
    swc1    $f8, 0x0FDC(s0)            # 00000FDC
    swc1    $f6, 0x0FD4(s0)            # 00000FD4
    lwc1    $f10, %lo(var_809B0A88)($at) 
    swc1    $f10, 0x0FE0(s0)           # 00000FE0
lbl_809AA848:
    addiu   $at, $zero, 0x0096         # $at = 00000096
    bnel    v0, $at, lbl_809AA864      
    addiu   $at, $zero, 0x0082         # $at = 00000082
    jal     func_800CAA70              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lh      v0, 0x0172(s0)             # 00000172
    addiu   $at, $zero, 0x0082         # $at = 00000082
lbl_809AA864:
    bne     v0, $at, lbl_809AA9F8      
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x1010             # v0 = 06001010
    sll     t0, v0,  4                 
    srl     t1, t0, 28                 
    sll     t2, t1,  2                 
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t2                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v0, $at                
    lw      a0, 0x00A4($sp)            
    lui     $at, 0x8000                # $at = 80000000
    addiu   t5, $zero, 0x00B4          # t5 = 000000B4
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addu    a2, t4, t3                 
    addu    a2, a2, $at                
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    jal     func_80020780              
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EE2(v0)             # 8011B4B2
    ori     t9, t8, 0x0010             # t9 = 00000010
    beq     $zero, $zero, lbl_809AA9F8 
    sh      t9, 0x0EE2(v0)             # 8011B4B2
var_809AA8E0:
    lui     $at, 0x42DE                # $at = 42DE0000
    mtc1    $at, $f12                  # $f12 = 111.00
    lui     $at, 0x4305                # $at = 43050000
    mtc1    $at, $f14                  # $f14 = 133.00
    lui     $at, 0xC33F                # $at = C33F0000
    mtc1    $at, $f16                  # $f16 = -191.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x009F($sp)            
    lui     $at, 0x4268                # $at = 42680000
    mtc1    $at, $f6                   # $f6 = 58.00
    lui     $at, 0xC377                # $at = C3770000
    mtc1    $at, $f8                   # $f8 = -247.00
    lh      v0, 0x0172(s0)             # 00000172
    addiu   $at, $zero, 0x0064         # $at = 00000064
    swc1    $f12, 0x0FAC(s0)           # 00000FAC
    swc1    $f14, 0x0FB0(s0)           # 00000FB0
    swc1    $f16, 0x0FB4(s0)           # 00000FB4
    swc1    $f4, 0x0FC4(s0)            # 00000FC4
    swc1    $f6, 0x0FC8(s0)            # 00000FC8
    bne     v0, $at, lbl_809AA960      
    swc1    $f8, 0x0FCC(s0)            # 00000FCC
    lui     t2, %hi(var_809B0064)      # t2 = 809B0000
    lw      t2, %lo(var_809B0064)(t2)  
    addiu   t1, $zero, 0x0065          # t1 = 00000065
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    sh      t1, 0x0148(t2)             # 809B0148
    lw      t3, %lo(var_809B0064)(t3)  
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sh      t4, 0x016E(t3)             # 809B016E
    lh      v0, 0x0172(s0)             # 00000172
lbl_809AA960:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v0, $at, lbl_809AA9F8      
    lw      a0, 0x00A4($sp)            
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v1, s0, 0x0F58             # v1 = 00000F58
    lw      t6, 0x0000(v1)             # 00000F58
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t6, 0x005C(v0)             # 0000005C
    lw      t5, 0x0004(v1)             # 00000F5C
    sw      t5, 0x0060(v0)             # 00000060
    lw      t6, 0x0008(v1)             # 00000F60
    sw      t6, 0x0064(v0)             # 00000064
    lw      t8, 0x0000(v1)             # 00000F58
    sw      t8, 0x0074(v0)             # 00000074
    lw      t7, 0x0004(v1)             # 00000F5C
    sw      t7, 0x0078(v0)             # 00000078
    lw      t8, 0x0008(v1)             # 00000F60
    sw      t8, 0x007C(v0)             # 0000007C
    lw      t0, 0x0F64(s0)             # 00000F64
    sw      t0, 0x0050(v0)             # 00000050
    lw      t9, 0x0F68(s0)             # 00000F68
    sw      t9, 0x0054(v0)             # 00000054
    lw      t0, 0x0F6C(s0)             # 00000F6C
    sw      t0, 0x0058(v0)             # 00000058
    lh      a1, 0x0F52(s0)             # 00000F52
    jal     func_8009D718              
    lw      a0, 0x00A4($sp)            
    lw      a0, 0x00A4($sp)            
    sh      $zero, 0x0F52(s0)          # 00000F52
    lh      t1, 0x0F52(s0)             # 00000F52
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_80052340              
    sh      t1, 0x0F50(s0)             # 00000F50
    lw      a0, 0x00A4($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_809AA9F8:
    lui     v0, %hi(var_809B0064)      # v0 = 809B0000
    addiu   v0, v0, %lo(var_809B0064)  # v0 = 809B0064
    lw      v1, 0x0000(v0)             # 809B0064
    lh      t2, 0x0148(v1)             # 00000148
    bne     t2, $zero, lbl_809AAA5C    
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f10                  # $f10 = 180.00
    lui     $at, 0xC3B4                # $at = C3B40000
    mtc1    $at, $f4                   # $f4 = -360.00
    swc1    $f10, 0x0024(v1)           # 00000024
    lw      t4, 0x0000(v0)             # 809B0064
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x002C(t4)            # 0000002C
    lw      v1, 0x0000(v0)             # 809B0064
    lw      t5, 0x0024(v1)             # 00000024
    lw      t3, 0x0028(v1)             # 00000028
    sw      t5, 0x0100(v1)             # 00000100
    lw      t5, 0x002C(v1)             # 0000002C
    sw      t3, 0x0104(v1)             # 00000104
    sw      t5, 0x0108(v1)             # 00000108
    lw      t6, 0x0000(v0)             # 809B0064
    swc1    $f6, 0x0068(t6)            # 00000068
    lw      v1, 0x0000(v0)             # 809B0064
    lh      t7, 0x008A(v1)             # 0000008A
    sh      t7, 0x00B6(v1)             # 000000B6
lbl_809AAA5C:
    lh      t8, 0x0F52(s0)             # 00000F52
    beql    t8, $zero, lbl_809AACC0    
    lh      v1, 0x0F50(s0)             # 00000F50
    lbu     t1, 0x009F($sp)            
    addiu   t9, s0, 0x0F64             # t9 = 00000F64
    addiu   t0, s0, 0x0F58             # t0 = 00000F58
    sw      t0, 0x0030($sp)            
    beq     t1, $zero, lbl_809AAB94    
    sw      t9, 0x0040($sp)            
    lwc1    $f8, 0x0F94(s0)            # 00000F94
    lwc1    $f10, 0x0FDC(s0)           # 00000FDC
    lw      a1, 0x0FAC(s0)             # 00000FAC
    lw      a2, 0x0FB8(s0)             # 00000FB8
    mul.s   $f4, $f8, $f10             
    addiu   t2, s0, 0x0F68             # t2 = 00000F68
    addiu   t4, s0, 0x0F6C             # t4 = 00000F6C
    addiu   t3, s0, 0x0FDC             # t3 = 00000FDC
    sw      t3, 0x0034($sp)            
    sw      t4, 0x0038($sp)            
    sw      t2, 0x003C($sp)            
    mfc1    a3, $f4                    
    jal     func_80064280              
    or      a0, t0, $zero              # a0 = 00000F58
    lwc1    $f6, 0x0F98(s0)            # 00000F98
    lwc1    $f8, 0x0FDC(s0)            # 00000FDC
    addiu   a0, s0, 0x0F5C             # a0 = 00000F5C
    lw      a1, 0x0FB0(s0)             # 00000FB0
    mul.s   $f10, $f6, $f8             
    lw      a2, 0x0FBC(s0)             # 00000FBC
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x0F9C(s0)            # 00000F9C
    lwc1    $f6, 0x0FDC(s0)            # 00000FDC
    addiu   a0, s0, 0x0F60             # a0 = 00000F60
    lw      a1, 0x0FB4(s0)             # 00000FB4
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x0FC0(s0)             # 00000FC0
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x0FA0(s0)           # 00000FA0
    lwc1    $f4, 0x0FDC(s0)            # 00000FDC
    lw      a0, 0x0040($sp)            
    lw      a1, 0x0FC4(s0)             # 00000FC4
    mul.s   $f6, $f10, $f4             
    lw      a2, 0x0FD0(s0)             # 00000FD0
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lwc1    $f8, 0x0FA4(s0)            # 00000FA4
    lwc1    $f10, 0x0FDC(s0)           # 00000FDC
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0FC8(s0)             # 00000FC8
    mul.s   $f4, $f8, $f10             
    lw      a2, 0x0FD4(s0)             # 00000FD4
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lwc1    $f6, 0x0FA8(s0)            # 00000FA8
    lwc1    $f8, 0x0FDC(s0)            # 00000FDC
    lw      a0, 0x0038($sp)            
    lw      a1, 0x0FCC(s0)             # 00000FCC
    mul.s   $f10, $f6, $f8             
    lw      a2, 0x0FD8(s0)             # 00000FD8
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lw      a0, 0x0034($sp)            
    lw      a3, 0x0FE0(s0)             # 00000FE0
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    nop
    beq     $zero, $zero, lbl_809AABE0 
    lh      t6, 0x014C(s0)             # 0000014C
lbl_809AAB94:
    lh      t5, 0x0F50(s0)             # 00000F50
    slti    $at, t5, 0x0004            
    beql    $at, $zero, lbl_809AABE0   
    lh      t6, 0x014C(s0)             # 0000014C
    jal     func_80021248              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0F58(s0)            # 00000F58
    lwc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, 0x0F5C(s0)           # 00000F5C
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0060(s0)            # 00000060
    add.s   $f6, $f10, $f4             
    swc1    $f8, 0x0F58(s0)            # 00000F58
    lwc1    $f8, 0x0F60(s0)            # 00000F60
    lwc1    $f10, 0x0064(s0)           # 00000064
    swc1    $f6, 0x0F5C(s0)            # 00000F5C
    add.s   $f4, $f8, $f10             
    swc1    $f4, 0x0F60(s0)            # 00000F60
    lh      t6, 0x014C(s0)             # 0000014C
lbl_809AABE0:
    lui     $at, %hi(var_809B0A8C)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0A8C)($at) 
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f12, $f8, $f10            
    jal     func_800CF470              
    nop
    lwc1    $f4, 0x0FFC(s0)            # 00000FFC
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    mul.s   $f6, $f0, $f4              
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lh      a1, 0x0F52(s0)             # 00000F52
    addiu   t7, s0, 0x0F70             # t7 = 00000F70
    swc1    $f10, 0x0F74(s0)           # 00000F74
    mul.s   $f2, $f6, $f8              
    swc1    $f2, 0x0F78(s0)            # 00000F78
    swc1    $f2, 0x0F70(s0)            # 00000F70
    sw      t7, 0x0010($sp)            
    lw      a3, 0x0030($sp)            
    lw      a2, 0x0040($sp)            
    jal     func_8009D438              
    lw      a0, 0x00A4($sp)            
    lw      t9, 0x0030($sp)            
    lw      t8, 0x0070($sp)            
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x005C(t8)             # 0000005C
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0060(t8)             # 00000060
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0064(t8)             # 00000064
    lw      t4, 0x0030($sp)            
    lw      t2, 0x0070($sp)            
    lw      t5, 0x0000(t4)             # 00000000
    sw      t5, 0x0074(t2)             # 00000074
    lw      t3, 0x0004(t4)             # 00000004
    sw      t3, 0x0078(t2)             # 00000078
    lw      t5, 0x0008(t4)             # 00000008
    sw      t5, 0x007C(t2)             # 0000007C
    lw      t7, 0x0040($sp)            
    lw      t6, 0x0070($sp)            
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0050(t6)             # 00000050
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0054(t6)             # 00000054
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0058(t6)             # 00000058
    lw      a2, 0x0F4C(s0)             # 00000F4C
    lh      a1, 0x0F52(s0)             # 00000F52
    jal     func_8009D55C              
    lw      a0, 0x00A4($sp)            
    lui     v0, %hi(var_809B0064)      # v0 = 809B0000
    addiu   v0, v0, %lo(var_809B0064)  # v0 = 809B0064
    lh      v1, 0x0F50(s0)             # 00000F50
lbl_809AACC0:
    slti    $at, v1, 0x0003            
    bnel    $at, $zero, lbl_809AACF8   
    slti    $at, v1, 0x0002            
    lh      t0, 0x014A(s0)             # 0000014A
    slti    $at, t0, 0x021D            
    bnel    $at, $zero, lbl_809AACF8   
    slti    $at, v1, 0x0002            
    lw      a0, 0x0000(v0)             # 809B0064
    addiu   a1, $zero, 0x30F0          # a1 = 000030F0
    jal     func_80064780              
    addiu   a0, a0, 0x1000             # a0 = 00001000
    beq     $zero, $zero, lbl_809AAD10 
    lw      $ra, 0x002C($sp)           
    slti    $at, v1, 0x0002            
lbl_809AACF8:
    bne     $at, $zero, lbl_809AAD0C   
    lui     a0, %hi(var_809B0528)      # a0 = 809B0000
    addiu   a0, a0, %lo(var_809B0528)  # a0 = 809B0528
    jal     func_80064780              
    addiu   a1, $zero, 0x30F5          # a1 = 000030F5
lbl_809AAD0C:
    lw      $ra, 0x002C($sp)           
lbl_809AAD10:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    jr      $ra                        
    nop


func_809AAD20:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s1, 0x0020($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x001C($sp)            
    sw      a1, 0x0094($sp)            
    lw      a0, 0x0094($sp)            
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0060($sp)            
    lh      a0, 0x0F50(s1)             # 00000F50
    slti    $at, a0, 0x006A            
    bne     $at, $zero, lbl_809AAD6C   
    or      v1, a0, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x0096         # $at = 00000096
    beql    v1, $at, lbl_809AAE54      
    lh      t4, 0x016E(s1)             # 0000016E
    beq     $zero, $zero, lbl_809AB6D8 
    nop
lbl_809AAD6C:
    addiu   t6, v1, 0xFF9C             # t6 = FFFFFF9C
    sltiu   $at, t6, 0x0006            
    beq     $at, $zero, lbl_809AB6D8   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_809B0A90)     # $at = 809B0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_809B0A90)($at) 
    jr      t6                         
    nop
var_809AAD90:
    lw      a0, 0x0094($sp)            
    jal     func_80052328              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x0094($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0              
    lw      a0, 0x0094($sp)            
    sh      v0, 0x0F52(s1)             # 00000F52
    lw      a0, 0x0094($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0094($sp)            
    lh      a1, 0x0F52(s1)             # 00000F52
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    sh      t8, 0x0F50(s1)             # 00000F50
    lw      t9, 0x0060($sp)            
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lw      t2, 0x005C(t9)             # 0000005C
    addiu   t3, $zero, 0x005A          # t3 = 0000005A
    sw      t2, 0x0F58(s1)             # 00000F58
    lw      t1, 0x0060(t9)             # 00000060
    lwc1    $f6, 0x0F58(s1)            # 00000F58
    sw      t1, 0x0F5C(s1)             # 00000F5C
    lw      t2, 0x0064(t9)             # 00000064
    sub.s   $f12, $f4, $f6             
    sh      t3, 0x016E(s1)             # 0000016E
    sw      t2, 0x0F60(s1)             # 00000F60
    lwc1    $f10, 0x0F60(s1)           # 00000F60
    swc1    $f12, 0x0088($sp)          
    sub.s   $f14, $f8, $f10            
    jal     func_800CD76C              
    swc1    $f14, 0x0084($sp)          
    lwc1    $f12, 0x0088($sp)          
    lwc1    $f14, 0x0084($sp)          
    swc1    $f0, 0x0FF4(s1)            # 00000FF4
    mul.s   $f16, $f12, $f12           
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f18, $f14, $f14           
    swc1    $f4, 0x0FF8(s1)            # 00000FF8
    add.s   $f0, $f16, $f18            
    sqrt.s  $f0, $f0                   
    swc1    $f0, 0x0FEC(s1)            # 00000FEC
    lh      t4, 0x016E(s1)             # 0000016E
lbl_809AAE54:
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s1, 0x0050             # a0 = 00000050
    andi    t5, t4, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_809AAE7C    
    swc1    $f6, 0x0194(s1)            # 00000194
    lui     $at, %hi(var_809B0AA8)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B0AA8)($at) 
    lui     $at, %hi(var_809B0AAC)     # $at = 809B0000
    beq     $zero, $zero, lbl_809AAE8C 
    lwc1    $f2, %lo(var_809B0AAC)($at) 
lbl_809AAE7C:
    lui     $at, %hi(var_809B0AB0)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B0AB0)($at) 
    lui     $at, %hi(var_809B0AB4)     # $at = 809B0000
    lwc1    $f2, %lo(var_809B0AB4)($at) 
lbl_809AAE8C:
    mfc1    a1, $f0                    
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    swc1    $f2, 0x007C($sp)           
    lwc1    $f2, 0x007C($sp)           
    lwc1    $f8, 0x0050(s1)            # 00000050
    lui     a3, 0x3B03                 # a3 = 3B030000
    mfc1    a1, $f2                    
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    addiu   a0, s1, 0x0054             # a0 = 00000054
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    swc1    $f8, 0x0058(s1)            # 00000058
    lwc1    $f10, 0x0FF4(s1)           # 00000FF4
    lwc1    $f16, 0x0FF8(s1)           # 00000FF8
    lh      t6, 0x016E(s1)             # 0000016E
    lui     $at, %hi(var_809B0AB8)     # $at = 809B0000
    add.s   $f18, $f10, $f16           
    lwc1    $f0, %lo(var_809B0AB8)($at) 
    slti    $at, t6, 0x001E            
    bne     $at, $zero, lbl_809AAF0C   
    swc1    $f18, 0x0FF4(s1)           # 00000FF4
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    mfc1    a3, $f0                    
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    addiu   a0, s1, 0x0FF8             # a0 = 00000FF8
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_809AAF24 
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_809AAF0C:
    mfc1    a3, $f0                    
    addiu   a0, s1, 0x0FF8             # a0 = 00000FF8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_809AAF24:
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0F5C             # a0 = 00000F5C
    lui     a1, 0x42C8                 # a1 = 42C80000
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    addiu   t7, s1, 0x0024             # t7 = 00000024
    sw      t7, 0x002C($sp)            
    lw      t1, 0x0000(t7)             # 00000024
    addiu   v1, $sp, 0x0038            # v1 = FFFFFFA8
    or      a0, s1, $zero              # a0 = 00000000
    sw      t1, 0x0000(v1)             # FFFFFFA8
    lw      t9, 0x0004(t7)             # 00000028
    lw      t3, 0x0000(v1)             # FFFFFFA8
    sw      t9, 0x0004(v1)             # FFFFFFAC
    lw      t1, 0x0008(t7)             # 0000002C
    sw      t1, 0x0008(v1)             # FFFFFFB0
    sw      t3, 0x0FC4(s1)             # 00000FC4
    lw      t2, 0x0004(v1)             # FFFFFFAC
    lh      v0, 0x016E(s1)             # 0000016E
    sw      t2, 0x0FC8(s1)             # 00000FC8
    lw      t3, 0x0008(v1)             # FFFFFFB0
    slti    $at, v0, 0x0015            
    sw      t3, 0x0FCC(s1)             # 00000FCC
    lw      t5, 0x0000(v1)             # FFFFFFA8
    sw      t5, 0x0F64(s1)             # 00000F64
    lw      t4, 0x0004(v1)             # FFFFFFAC
    sw      t4, 0x0F68(s1)             # 00000F68
    lw      t5, 0x0008(v1)             # FFFFFFB0
    bne     $at, $zero, lbl_809AAFC0   
    sw      t5, 0x0F6C(s1)             # 00000F6C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x30F8          # a1 = 000030F8
    lh      v0, 0x016E(s1)             # 0000016E
lbl_809AAFC0:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v0, $at, lbl_809AB0EC      
    lw      t6, 0x0094($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    t7, t6, $at                
    sw      t7, 0x0030($sp)            
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_809AAFE0:
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90              
    swc1    $f0, 0x0054($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90              
    swc1    $f0, 0x0058($sp)           
    lw      t9, 0x002C($sp)            
    swc1    $f0, 0x005C($sp)           
    addiu   t8, $sp, 0x0048            # t8 = FFFFFFB8
    lw      t2, 0x0000(t9)             # 00000000
    lui     $at, %hi(var_809B0ABC)     # $at = 809B0000
    sw      t2, 0x0000(t8)             # FFFFFFB8
    lw      t1, 0x0004(t9)             # 00000004
    sw      t1, 0x0004(t8)             # FFFFFFBC
    lw      t2, 0x0008(t9)             # 00000008
    sw      t2, 0x0008(t8)             # FFFFFFC0
    lwc1    $f4, 0x0054($sp)           
    lwc1    $f8, 0x0048($sp)           
    lwc1    $f16, 0x0058($sp)          
    add.s   $f6, $f4, $f4              
    lwc1    $f4, 0x004C($sp)           
    lwc1    $f12, %lo(var_809B0ABC)($at) 
    add.s   $f18, $f16, $f16           
    add.s   $f10, $f8, $f6             
    lwc1    $f6, 0x0050($sp)           
    add.s   $f8, $f4, $f18             
    swc1    $f10, 0x0048($sp)          
    add.s   $f10, $f0, $f0             
    swc1    $f8, 0x004C($sp)           
    add.s   $f16, $f6, $f10            
    jal     func_80026D64              
    swc1    $f16, 0x0050($sp)          
    lui     $at, %hi(var_809B0AC0)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0AC0)($at) 
    lw      t3, 0x0030($sp)            
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    add.s   $f18, $f0, $f4             
    lw      a1, 0x1E10(t3)             # 00001E10
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFB8
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFC4
    jal     func_809A64C0              
    swc1    $f18, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x012C            
    bnel    $at, $zero, lbl_809AAFE0   
    lui     $at, 0x4120                # $at = 41200000
    lw      t4, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sb      $zero, 0x01C1(s1)          # 000001C1
    and     t5, t4, $at                
    sw      t5, 0x0004(s1)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38F7          # a1 = 000038F7
    lw      a0, 0x0094($sp)            
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38F9          # a3 = 000038F9
    lh      v0, 0x016E(s1)             # 0000016E
lbl_809AB0EC:
    bne     v0, $zero, lbl_809AB304    
    lui     $at, 0x43F5                # $at = 43F50000
    mtc1    $at, $f0                   # $f0 = 490.00
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f8                   # $f8 = -1000.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f10                  # $f10 = 50.00
    lui     $at, 0xC2C8                # $at = C2C80000
    sh      $zero, 0x014A(s1)          # 0000014A
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $at, $f4                   # $f4 = -100.00
    lh      t7, 0x014A(s1)             # 0000014A
    addiu   t6, $zero, 0x0065          # t6 = 00000065
    sh      t6, 0x0F50(s1)             # 00000F50
    lui     $at, %hi(var_809B0AC4)     # $at = 809B0000
    swc1    $f0, 0x0FEC(s1)            # 00000FEC
    swc1    $f0, 0x0F58(s1)            # 00000F58
    swc1    $f8, 0x0028(s1)            # 00000028
    swc1    $f6, 0x017C(s1)            # 0000017C
    swc1    $f2, 0x0FF4(s1)            # 00000FF4
    swc1    $f2, 0x0F60(s1)            # 00000F60
    swc1    $f2, 0x0F6C(s1)            # 00000F6C
    swc1    $f10, 0x0F5C(s1)           # 00000F5C
    swc1    $f16, 0x0F64(s1)           # 00000F64
    swc1    $f4, 0x0F68(s1)            # 00000F68
    sh      t7, 0x014C(s1)             # 0000014C
    lwc1    $f18, %lo(var_809B0AC4)($at) 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, %hi(var_809B0AC8)     # $at = 809B0000
    swc1    $f2, 0x0FDC(s1)            # 00000FDC
    swc1    $f18, 0x0FD4(s1)           # 00000FD4
    swc1    $f8, 0x0FA4(s1)            # 00000FA4
    lwc1    $f6, %lo(var_809B0AC8)($at) 
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f10                  # $f10 = 320.00
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    sh      t8, 0x016E(s1)             # 0000016E
    swc1    $f6, 0x0FE0(s1)            # 00000FE0
    swc1    $f10, 0x0FC8(s1)           # 00000FC8
    lw      t1, 0x0000(t0)             # 809B0064
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t2, $zero, 0x00CB          # t2 = 000000CB
    sb      t9, 0x01C1(t1)             # 000001C1
    lw      t3, 0x0000(t0)             # 809B0064
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f0                   # $f0 = -50.00
    sh      t2, 0x0148(t3)             # 00000148
    lw      t4, 0x0000(t0)             # 809B0064
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    sh      $zero, 0x00B4(t4)          # 000000B4
    lw      t5, 0x0000(t0)             # 809B0064
    lui     $at, %hi(var_809B0ACC)     # $at = 809B0000
    lui     t1, %hi(var_809B0060)      # t1 = 809B0000
    swc1    $f2, 0x0024(t5)            # 00000024
    lw      t6, 0x0000(t0)             # 809B0064
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
    swc1    $f0, 0x0028(t6)            # 0000008D
    lw      t7, 0x0000(t0)             # 809B0064
    swc1    $f2, 0x002C(t7)            # 0000002C
    lw      t8, 0x0000(t0)             # 809B0064
    swc1    $f12, 0x0190(t8)           # 000001F4
    lw      t9, 0x0000(t0)             # 809B0064
    lwc1    $f16, %lo(var_809B0ACC)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f16, 0x0D5C(t9)           # 00000D5D
    lw      t1, %lo(var_809B0060)(t1)  
    swc1    $f0, 0x01AC(t1)            # 809B01AC
    lw      t2, 0x0000(t0)             # 809B0064
    mtc1    $at, $f0                   # $f0 = 5.00
    swc1    $f2, 0x01B0(t2)            # 0000027B
    lw      t3, 0x0000(t0)             # 809B0064
    sh      $zero, 0x016A(t3)          # 0000016A
lbl_809AB22C:
    multu   s0, v0                     
    lw      t4, 0x0000(t0)             # 809B0064
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0029            
    mflo    t5                         
    addu    t6, t4, t5                 
    bne     $at, $zero, lbl_809AB22C   
    swc1    $f0, 0x069C(t6)            # 00000701
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f4                   # $f4 = -400.00
    lw      t7, 0x0000(t0)             # 809B0064
    lui     $at, 0xC548                # $at = C5480000
    mtc1    $at, $f18                  # $f18 = -3200.00
    swc1    $f4, 0x0180(t7)            # 00000180
    lw      t8, 0x0000(t0)             # 809B0064
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_809B0AD0)     # $at = 809B0000
    swc1    $f18, 0x0178(t8)           # 000001DC
    lw      t9, 0x0000(t0)             # 809B0064
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    swc1    $f8, 0x017C(t9)            # 0000017D
    lw      t1, 0x0000(t0)             # 809B0064
    lwc1    $f6, %lo(var_809B0AD0)($at) 
    lui     $at, %hi(var_809B0AD4)     # $at = 809B0000
    swc1    $f6, 0x018C(t1)            # 809B018C
    lw      t2, 0x0000(t0)             # 809B0064
    lwc1    $f10, %lo(var_809B0AD4)($at) 
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f16                  # $f16 = 4000.00
    swc1    $f10, 0x0184(t2)           # 0000024F
    lw      t3, 0x0000(t0)             # 809B0064
    lui     $at, 0x46A0                # $at = 46A00000
    mtc1    $at, $f4                   # $f4 = 20480.00
    swc1    $f16, 0x0188(t3)           # 00000188
    lw      t4, 0x0000(t0)             # 809B0064
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    swc1    $f12, 0x0D54(t4)           # 00000D54
    lw      t5, 0x0000(t0)             # 809B0064
    swc1    $f4, 0x0D58(t5)            # 00000D58
    lw      t6, 0x0000(t0)             # 809B0064
    swc1    $f18, 0x0194(t6)           # 000001F9
    lw      t7, 0x0000(t0)             # 809B0064
    sh      $zero, 0x0164(t7)          # 00000164
    lw      v1, 0x0000(t0)             # 809B0064
    lh      t8, 0x0164(v1)             # 00000164
    sh      t8, 0x0162(v1)             # 00000162
    lw      t9, 0x0000(t0)             # 809B0064
    swc1    $f12, 0x0198(t9)           # 00000199
    jal     func_80020F88              
    lw      a0, 0x0000(t0)             # 809B0064
lbl_809AB304:
    beq     $zero, $zero, lbl_809AB6D8 
    lh      a0, 0x0F50(s1)             # 00000F50
var_809AB30C:
    lh      t1, 0x016E(s1)             # 0000016E
    bne     t1, $zero, lbl_809AB6D8    
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f8                   # $f8 = -200.00
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f6                   # $f6 = 320.00
    addiu   t2, $zero, 0x0066          # t2 = 00000066
    sh      t2, 0x0F50(s1)             # 00000F50
    lui     $at, %hi(var_809B0AD8)     # $at = 809B0000
    swc1    $f8, 0x0F68(s1)            # 00000F68
    swc1    $f6, 0x0FC8(s1)            # 00000FC8
    lwc1    $f10, %lo(var_809B0AD8)($at) 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    swc1    $f10, 0x0FD4(s1)           # 00000FD4
    swc1    $f16, 0x0FA4(s1)           # 00000FA4
    swc1    $f4, 0x0FDC(s1)            # 00000FDC
    swc1    $f18, 0x0FE0(s1)           # 00000FE0
    lw      t4, 0x0000(t0)             # 809B0064
    addiu   t3, $zero, 0x00C9          # t3 = 000000C9
    addiu   t5, $zero, 0x007D          # t5 = 0000007D
    sh      t3, 0x0148(t4)             # 00000148
    sh      t5, 0x016E(s1)             # 0000016E
    lui     $at, %hi(var_809B0ADC)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0ADC)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    lw      t6, 0x0000(t0)             # 809B0064
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    swc1    $f8, 0x0190(t6)            # 00000190
    swc1    $f6, 0x0FF4(s1)            # 00000FF4
    beq     $zero, $zero, lbl_809AB8C8 
    swc1    $f10, 0x0FEC(s1)           # 00000FEC
var_809AB3A4:
    lh      t7, 0x016E(s1)             # 0000016E
    bne     t7, $zero, lbl_809AB3E8    
    lui     $at, %hi(var_809B0AE0)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B0AE0)($at) 
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    swc1    $f16, 0x0FE0(s1)           # 00000FE0
    lw      t9, 0x0000(t0)             # 809B0064
    addiu   t8, $zero, 0x00CA          # t8 = 000000CA
    addiu   t1, $zero, 0x0067          # t1 = 00000067
    sh      t8, 0x0148(t9)             # 00000148
    sh      t1, 0x0F50(s1)             # 00000F50
    lw      t3, 0x0000(t0)             # 809B0064
    addiu   t2, $zero, 0x0078          # t2 = 00000078
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    sh      t2, 0x016E(t3)             # 00000237
    sh      t4, 0x016E(s1)             # 0000016E
lbl_809AB3E8:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lui     a3, 0x3B44                 # a3 = 3B440000
    ori     a3, a3, 0x9BA4             # a3 = 3B449BA4
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0FF4             # a0 = 00000FF4
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0x43F5                # $at = 43F50000
    mtc1    $at, $f0                   # $f0 = 490.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f0                    
    addiu   a0, s1, 0x0FEC             # a0 = 00000FEC
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t5, 0x016E(s1)             # 0000016E
    addiu   t6, $zero, 0x0068          # t6 = 00000068
    addiu   t7, $zero, 0x008C          # t7 = 0000008C
    bne     t5, $zero, lbl_809AB450    
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      t6, 0x0F50(s1)             # 00000F50
    sh      t7, 0x016E(s1)             # 0000016E
    swc1    $f4, 0x0FF8(s1)            # 00000FF8
    swc1    $f18, 0x0FF0(s1)           # 00000FF0
lbl_809AB450:
    beq     $zero, $zero, lbl_809AB6D8 
    lh      a0, 0x0F50(s1)             # 00000F50
var_809AB458:
    lh      v0, 0x016E(s1)             # 0000016E
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    bne     a0, v0, lbl_809AB49C       
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lw      t9, 0x0000(t0)             # 809B0064
    addiu   t8, $zero, 0x00CD          # t8 = 000000CD
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t8, 0x0148(t9)             # 00000148
    lw      t1, 0x0000(t0)             # 809B0064
    sh      a0, 0x016E(t1)             # 0000016E
    lw      t2, 0x0000(t0)             # 809B0064
    swc1    $f8, 0x0D54(t2)            # 00000D54
    lw      v1, 0x0000(t0)             # 809B0064
    lwc1    $f6, 0x0D54(v1)            # 00000D54
    swc1    $f6, 0x0D58(v1)            # 00000D58
    lh      v0, 0x016E(s1)             # 0000016E
lbl_809AB49C:
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    bne     v0, $zero, lbl_809AB560    
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f10                  # $f10 = -100.00
    lwc1    $f16, 0x0F5C(s1)           # 00000F5C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    c.lt.s  $f10, $f16                 
    addiu   a0, s1, 0x0F5C             # a0 = 00000F5C
    lui     a1, 0xC348                 # a1 = C3480000
    bc1f    lbl_809AB50C               
    nop
    lw      t3, 0x0000(t0)             # 809B0064
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    lwc1    $f4, 0x0028(t3)            # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sub.s   $f8, $f4, $f18             
    addiu   a0, s1, 0x0F5C             # a0 = 00000F5C
    lui     a3, 0x44FA                 # a3 = 44FA0000
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    beq     $zero, $zero, lbl_809AB51C 
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
lbl_809AB50C:
    jal     func_80064280              
    lui     a3, 0x44FA                 # a3 = 44FA0000
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
lbl_809AB51C:
    lw      t4, 0x0000(t0)             # 809B0064
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f6, 0x0028(t4)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    sub.s   $f16, $f6, $f10            
    addiu   a0, s1, 0x0F68             # a0 = 00000F68
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x44FA                 # a3 = 44FA0000
    add.s   $f18, $f16, $f4            
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f8, 0x0F68(s1)            # 00000F68
    beq     $zero, $zero, lbl_809AB578 
    swc1    $f8, 0x0FC8(s1)            # 00000FC8
lbl_809AB560:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0F5C             # a0 = 00000F5C
    lui     a1, 0x4396                 # a1 = 43960000
    jal     func_80064280              
    lw      a3, 0x0FF0(s1)             # 00000FF0
lbl_809AB578:
    lui     a1, 0xBFC9                 # a1 = BFC90000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x0FDB             # a1 = BFC90FDB
    addiu   a0, s1, 0x0FF4             # a0 = 00000FF4
    jal     func_80064280              
    lw      a3, 0x0FF8(s1)             # 00000FF8
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s1, 0x0FF0             # a0 = 00000FF0
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a1, 0x3C54                 # a1 = 3C540000
    lui     a3, 0x3A03                 # a3 = 3A030000
    ori     a3, a3, 0x126F             # a3 = 3A03126F
    ori     a1, a1, 0xFDF3             # a1 = 3C54FDF3
    addiu   a0, s1, 0x0FF8             # a0 = 00000FF8
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lw      t5, 0x0000(t0)             # 809B0064
    addiu   $at, $zero, 0x00CE         # $at = 000000CE
    lh      t6, 0x0148(t5)             # 00000148
    bne     t6, $at, lbl_809AB6BC      
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s1, 0x0FEC             # a0 = 00000FEC
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280              
    lw      a3, 0x0FF0(s1)             # 00000FF0
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lw      t7, 0x0000(t0)             # 809B0064
    addiu   t9, $zero, 0x0069          # t9 = 00000069
    addiu   s0, s1, 0x0F58             # s0 = 00000F58
    lh      t8, 0x016E(t7)             # 0000016E
    bnel    t8, $zero, lbl_809AB6D8    
    lh      a0, 0x0F50(s1)             # 00000F50
    sh      t9, 0x0F50(s1)             # 00000F50
    lw      t1, 0x0060($sp)            
    lw      t3, 0x0000(s0)             # 00000F58
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t3, 0x005C(t1)             # 0000005C
    lw      t2, 0x0004(s0)             # 00000F5C
    sw      t2, 0x0060(t1)             # 00000060
    lw      t3, 0x0008(s0)             # 00000F60
    sw      t3, 0x0064(t1)             # 00000064
    lw      t4, 0x0060($sp)            
    lw      t6, 0x0000(s0)             # 00000F58
    sw      t6, 0x0074(t4)             # 00000074
    lw      t5, 0x0004(s0)             # 00000F5C
    sw      t5, 0x0078(t4)             # 00000078
    lw      t6, 0x0008(s0)             # 00000F60
    sw      t6, 0x007C(t4)             # 0000007C
    lw      t9, 0x0F64(s1)             # 00000F64
    lw      t7, 0x0060($sp)            
    sw      t9, 0x0050(t7)             # 00000050
    lw      t8, 0x0F68(s1)             # 00000F68
    sw      t8, 0x0054(t7)             # 00000054
    lw      t9, 0x0F6C(s1)             # 00000F6C
    sw      t9, 0x0058(t7)             # 00000058
    lh      a1, 0x0F52(s1)             # 00000F52
    jal     func_8009D718              
    lw      a0, 0x0094($sp)            
    sh      $zero, 0x0F52(s1)          # 00000F52
    lw      a0, 0x0094($sp)            
    jal     func_80052340              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x0094($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f6                   # $f6 = -1000.00
    lw      t2, 0x0000(t0)             # 809B0064
    beq     $zero, $zero, lbl_809AB6D4 
    swc1    $f6, 0x0028(t2)            # 00000028
lbl_809AB6BC:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0FEC             # a0 = 00000FEC
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064280              
    lw      a3, 0x0FF0(s1)             # 00000FF0
lbl_809AB6D4:
    lh      a0, 0x0F50(s1)             # 00000F50
lbl_809AB6D8:
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    slti    $at, a0, 0x0065            
    bne     $at, $zero, lbl_809AB76C   
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    slti    $at, a0, 0x0069            
    beq     $at, $zero, lbl_809AB76C   
    nop
    lh      v0, 0x014A(s1)             # 0000014A
    lui     s0, %hi(var_809B0528)      # s0 = 809B0000
    addiu   a0, s0, %lo(var_809B0528)  # a0 = 809B0528
    slti    $at, v0, 0x01F4            
    beq     $at, $zero, lbl_809AB720   
    nop
    jal     func_80064780              
    addiu   a1, $zero, 0x30F0          # a1 = 000030F0
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lh      v0, 0x014A(s1)             # 0000014A
lbl_809AB720:
    lui     s0, %hi(var_809B0528)      # s0 = 809B0000
    slti    $at, v0, 0x01EA            
    beq     $at, $zero, lbl_809AB750   
    addiu   s0, s0, %lo(var_809B0528)  # s0 = 809B0528
    slti    $at, v0, 0x00E7            
    bne     $at, $zero, lbl_809AB750   
    or      a0, s0, $zero              # a0 = 809B0528
    jal     func_80064780              
    addiu   a1, $zero, 0x2075          # a1 = 00002075
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
    lh      v0, 0x014A(s1)             # 0000014A
lbl_809AB750:
    slti    $at, v0, 0x00DC            
    beq     $at, $zero, lbl_809AB76C   
    or      a0, s0, $zero              # a0 = 809B0528
    jal     func_80064780              
    addiu   a1, $zero, 0x2074          # a1 = 00002074
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    addiu   t0, t0, %lo(var_809B0064)  # t0 = 809B0064
lbl_809AB76C:
    lui     t3, %hi(var_809B0060)      # t3 = 809B0000
    lw      t3, %lo(var_809B0060)(t3)  
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f16                  # $f16 = -200.00
    lwc1    $f10, 0x01AC(t3)           # 809B01AC
    lw      v0, 0x0094($sp)            
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f10, $f16                 
    lui     t8, %hi(var_809B0060)      # t8 = 809B0000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1f    lbl_809AB7C4               
    addu    v0, v0, $at                
    lh      t4, 0x1D30(v0)             # 00001D30
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x1D30(v0)             # 00001D30
    lh      t6, 0x1D30(v0)             # 00001D30
    slti    $at, t6, 0x00FF            
    bne     $at, $zero, lbl_809AB7C4   
    nop
    sh      t7, 0x1D30(v0)             # 00001D30
lbl_809AB7C4:
    lw      t8, %lo(var_809B0060)(t8)  
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f18                  # $f18 = -250.00
    lwc1    $f4, 0x01AC(t8)            # 809B01AC
    c.lt.s  $f4, $f18                  
    nop
    bc1fl   lbl_809AB7F8               
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lw      a0, 0x0000(t0)             # 809B0064
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064280              
    addiu   a0, a0, 0x01B4             # a0 = 000001B4
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
lbl_809AB7F8:
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x017C             # a0 = 0000017C
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0FEC(s1)            # 00000FEC
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f0, 0x0074($sp)           
    swc1    $f8, 0x0070($sp)           
    swc1    $f0, 0x0078($sp)           
    jal     func_800AAB94              
    lwc1    $f12, 0x0FF4(s1)           # 00000FF4
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE0
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    lwc1    $f6, 0x0F64(s1)            # 00000F64
    lwc1    $f10, 0x0064($sp)          
    lwc1    $f4, 0x0F6C(s1)            # 00000F6C
    lh      a1, 0x0F52(s1)             # 00000F52
    add.s   $f16, $f6, $f10            
    addiu   t9, s1, 0x0F64             # t9 = 00000F64
    swc1    $f16, 0x0F58(s1)           # 00000F58
    lwc1    $f18, 0x006C($sp)          
    add.s   $f8, $f4, $f18             
    beq     a1, $zero, lbl_809AB8C8    
    swc1    $f8, 0x0F60(s1)            # 00000F60
    sw      t9, 0x0028($sp)            
    lwc1    $f10, 0x0FDC(s1)           # 00000FDC
    lwc1    $f6, 0x0FA4(s1)            # 00000FA4
    addiu   s0, s1, 0x0F58             # s0 = 00000F58
    lw      a2, 0x0FD4(s1)             # 00000FD4
    mul.s   $f16, $f6, $f10            
    lw      a1, 0x0FC8(s1)             # 00000FC8
    addiu   a0, s1, 0x0F68             # a0 = 00000F68
    mfc1    a3, $f16                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s1, 0x0FDC             # a0 = 00000FDC
    lw      a3, 0x0FE0(s1)             # 00000FE0
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    nop
    lh      a1, 0x0F52(s1)             # 00000F52
    lw      a0, 0x0094($sp)            
    lw      a2, 0x0028($sp)            
    jal     func_8009D328              
    or      a3, s0, $zero              # a3 = 00000F58
lbl_809AB8C8:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809AB8DC:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x0030($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s0, 0x002C($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x0074($sp)            
    lbu     v0, 0x14FC(s1)             # 000014FC
    lw      t6, 0x0074($sp)            
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809AB934    
    lw      v1, 0x1C44(t6)             # 00001C44
    lh      t9, 0x0148(s1)             # 00000148
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t9, $at, lbl_809AB934      
    sb      t8, 0x14FC(s1)             # 000014FC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    sh      t0, 0x0158(s1)             # 00000158
    sh      t1, 0x016E(s1)             # 0000016E
lbl_809AB934:
    lbu     v0, 0x14FD(s1)             # 000014FD
    andi    t2, v0, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_809ABCCC    
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x1528(s1)             # 00001528
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    sb      t3, 0x14FD(s1)             # 000014FD
    lw      t4, 0x0000(s0)             # 00000000
    sll     t5, t4, 14                 
    bgezl   t5, lbl_809AB97C           
    lh      t8, 0x0148(s1)             # 00000148
    lh      t6, 0x0148(s1)             # 00000148
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    bnel    t6, $at, lbl_809AB97C      
    lh      t8, 0x0148(s1)             # 00000148
    sh      t7, 0x0148(s1)             # 00000148
    lh      t8, 0x0148(s1)             # 00000148
lbl_809AB97C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t8, $at, lbl_809ABCCC      
    lw      $ra, 0x0034($sp)           
    lh      t9, 0x0150(s1)             # 00000150
    bnel    t9, $zero, lbl_809ABCCC    
    lw      $ra, 0x0034($sp)           
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_80051A34              
    sw      v1, 0x0068($sp)            
    lw      v1, 0x0068($sp)            
    beq     v0, $zero, lbl_809ABB04    
    andi    a2, v0, 0x00FF             # a2 = 00000000
    lh      t0, 0x0148(s1)             # 00000148
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    slti    $at, t0, 0x000A            
    beq     $at, $zero, lbl_809ABB04   
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lh      t3, 0x008A(s1)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    sh      t1, 0x0148(s1)             # 00000148
    addu    t4, t3, $at                
    sh      t2, 0x016E(s1)             # 0000016E
    sh      t4, 0x0032(s1)             # 00000032
    sh      t5, 0x014E(s1)             # 0000014E
    swc1    $f4, 0x0068(s1)            # 00000068
    sb      a2, 0x0063($sp)            
    sw      v1, 0x0068($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39EC          # a1 = 000039EC
    lbu     a2, 0x0063($sp)            
    lbu     t6, 0x00AF(s1)             # 000000AF
    lw      v1, 0x0068($sp)            
    lbu     t8, 0x0145(s1)             # 00000145
    subu    t7, t6, a2                 
    sb      t7, 0x00AF(s1)             # 000000AF
    lb      t0, 0x00AF(s1)             # 000000AF
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0145(s1)             # 00000145
    bgtz    t0, lbl_809ABAF8           
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    addiu   s0, s0, %lo(var_809B0064)  # s0 = 809B0064
    lw      t1, 0x0000(s0)             # 809B0064
    lui     t2, %hi(var_809B0068)      # t2 = 809B0000
    lh      v0, 0x0F52(t1)             # 00000F52
    bne     v0, $zero, lbl_809ABA50    
    nop
    lw      t2, %lo(var_809B0068)(t2)  
    beql    t2, $zero, lbl_809ABA78    
    lw      a0, 0x0074($sp)            
lbl_809ABA50:
    bne     v0, $zero, lbl_809ABAF4    
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     v0, %hi(var_809B0068)      # v0 = 809B0000
    lw      v0, %lo(var_809B0068)(v0)  
    beql    v0, $zero, lbl_809ABAF8    
    sb      t2, 0x00AF(s1)             # 000000AF
    lh      t3, 0x0F52(v0)             # 809B0F52
    bnel    t3, $zero, lbl_809ABAF8    
    sb      t2, 0x00AF(s1)             # 000000AF
    lw      a0, 0x0074($sp)            
lbl_809ABA78:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80025B4C              
    sw      v1, 0x0068($sp)            
    lui     a0, 0x1001                 # a0 = 10010000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lw      v1, 0x0068($sp)            
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sh      t4, 0x0F50(s1)             # 00000F50
    lw      t5, 0x0000(s0)             # 809B0064
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      $zero, 0x01C1(t5)          # 000001C1
    lw      t7, 0x0000(s0)             # 809B0064
    lui     v0, %hi(var_809B0068)      # v0 = 809B0000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t6, 0x0148(t7)             # 00000148
    lw      t8, 0x0000(s0)             # 809B0064
    addiu   t1, $zero, 0x0065          # t1 = 00000065
    swc1    $f6, 0x0194(t8)            # 00000194
    lw      v0, %lo(var_809B0068)(v0)  
    beql    v0, $zero, lbl_809ABADC    
    lw      t0, 0x0118(v1)             # 00000118
    sb      t9, 0x0144(v0)             # 809B0144
    lw      t0, 0x0118(v1)             # 00000118
lbl_809ABADC:
    beql    t0, $zero, lbl_809ABAFC    
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t1, 0x0840(v1)             # 00000840
    sw      $zero, 0x0118(v1)          # 00000118
    beq     $zero, $zero, lbl_809ABAF8 
    sb      $zero, 0x0434(v1)          # 00000434
lbl_809ABAF4:
    sb      t2, 0x00AF(s1)             # 000000AF
lbl_809ABAF8:
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
lbl_809ABAFC:
    beq     $zero, $zero, lbl_809ABBE0 
    sh      t3, 0x0150(s1)             # 00000150
lbl_809ABB04:
    lw      v0, 0x0000(s0)             # 809B0064
    sll     t4, v0, 11                 
    bltz    t4, lbl_809ABBE0           
    andi    t5, v0, 0x0080             # t5 = 00000000
    beql    t5, $zero, lbl_809ABBE4    
    lw      t5, 0x0074($sp)            
    lh      t6, 0x0148(s1)             # 00000148
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    addiu   s0, s0, %lo(var_809B0064)  # s0 = 809B0064
    slti    $at, t6, 0x000A            
    bne     $at, $zero, lbl_809ABBC0   
    addiu   a1, $zero, 0x38F4          # a1 = 000038F4
    lw      a0, 0x0000(s0)             # 809B0064
    sw      v1, 0x0068($sp)            
    jal     func_80064780              
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lh      t7, 0x0154(s1)             # 00000154
    lw      t8, 0x0000(s0)             # 809B0064
    lw      v1, 0x0068($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    sh      t7, 0x0162(t8)             # 00000162
    lw      v0, 0x0000(s0)             # 809B0064
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    lh      t9, 0x0162(v0)             # 00000162
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0164(v0)             # 00000164
    lw      t1, 0x0000(s0)             # 809B0064
    addiu   t0, $zero, 0x0065          # t0 = 00000065
    swc1    $f8, 0x0198(t1)            # 00000198
    lw      t3, 0x0000(s0)             # 809B0064
    sh      t2, 0x0148(t3)             # 00000148
    lw      t5, 0x0000(s0)             # 809B0064
    sh      t4, 0x016E(t5)             # 0000016E
    lw      v0, 0x0000(s0)             # 809B0064
    lw      t6, 0x0004(v0)             # 00000004
    and     t7, t6, $at                
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0000(s0)             # 809B0064
    lw      t9, 0x0118(v1)             # 00000118
    bnel    t8, t9, lbl_809ABBC4       
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t0, 0x0840(v1)             # 00000840
    sw      $zero, 0x0118(v1)          # 00000118
    sb      $zero, 0x0434(v1)          # 00000434
lbl_809ABBC0:
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_809ABBC4:
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t1, 0x0148(s1)             # 00000148
    sh      t2, 0x016E(s1)             # 0000016E
    sh      t3, 0x0150(s1)             # 00000150
    swc1    $f10, 0x0068(s1)           # 00000068
lbl_809ABBE0:
    lw      t5, 0x0074($sp)            
lbl_809ABBE4:
    lui     $at, 0x0001                # $at = 00010000
    addiu   t4, s1, 0x0024             # t4 = 00000024
    addu    t6, t5, $at                
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f22                  # $f22 = 4.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f20                  # $f20 = 3.00
    sw      t6, 0x003C($sp)            
    sw      t4, 0x0040($sp)            
    addiu   s1, $sp, 0x0054            # s1 = FFFFFFE4
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809ABC10:
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64              
    swc1    $f0, 0x0048($sp)           
    add.s   $f16, $f0, $f20            
    mov.s   $f12, $f22                 
    jal     func_80026D90              
    swc1    $f16, 0x004C($sp)          
    lw      t7, 0x0040($sp)            
    swc1    $f0, 0x0050($sp)           
    lui     $at, %hi(var_809B0AE4)     # $at = 809B0000
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0000(s1)             # FFFFFFE4
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(s1)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(s1)             # FFFFFFEC
    lwc1    $f4, 0x0048($sp)           
    lwc1    $f18, 0x0054($sp)          
    lwc1    $f10, 0x005C($sp)          
    mul.s   $f6, $f4, $f20             
    lwc1    $f12, %lo(var_809B0AE4)($at) 
    mul.s   $f16, $f0, $f20            
    add.s   $f8, $f18, $f6             
    add.s   $f4, $f10, $f16            
    swc1    $f8, 0x0054($sp)           
    jal     func_80026D64              
    swc1    $f4, 0x005C($sp)           
    lui     $at, %hi(var_809B0AE8)     # $at = 809B0000
    lwc1    $f18, %lo(var_809B0AE8)($at) 
    lw      t0, 0x003C($sp)            
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    add.s   $f6, $f0, $f18             
    lw      a1, 0x1E10(t0)             # 00001E10
    or      a2, s1, $zero              # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFD8
    jal     func_809A64C0              
    swc1    $f6, 0x0010($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bne     $at, $zero, lbl_809ABC10   
    nop
    lw      $ra, 0x0034($sp)           
lbl_809ABCCC:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809ABCE4:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    lui     $at, 0xBF80                # $at = BF800000
    sw      s1, 0x0034($sp)            
    mtc1    $at, $f0                   # $f0 = -1.00
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s2, 0x0038($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00EC($sp)            
    lwc1    $f4, 0x019C(s1)            # 0000019C
    lw      t6, 0x00EC($sp)            
    lwc1    $f8, 0x01A0(s1)            # 000001A0
    add.s   $f6, $f4, $f0              
    lw      s2, 0x1C44(t6)             # 00001C44
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f4, 0x01A8(s1)            # 000001A8
    swc1    $f6, 0x019C(s1)            # 0000019C
    mtc1    $at, $f6                   # $f6 = 1.00
    add.s   $f10, $f8, $f0             
    lwc1    $f18, 0x01A4(s1)           # 000001A4
    addiu   a0, s1, 0x0194             # a0 = 00000194
    add.s   $f8, $f4, $f6              
    swc1    $f10, 0x01A0(s1)           # 000001A0
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x01A8(s1)            # 000001A8
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064280              
    swc1    $f18, 0x01A4(s1)           # 000001A4
    lh      v0, 0x0F50(s1)             # 00000F50
    beq     v0, $zero, lbl_809ABD9C    
    slti    $at, v0, 0x0064            
    beq     $at, $zero, lbl_809ABD9C   
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809A9C08              
    lw      a1, 0x00EC($sp)            
    lh      t7, 0x0148(s1)             # 00000148
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    t7, $at, lbl_809ABDBC      
    lh      v1, 0x0148(s1)             # 00000148
    lw      t8, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t9, t8, $at                
    beq     $zero, $zero, lbl_809AD32C 
    sw      t9, 0x0004(s1)             # 00000004
lbl_809ABD9C:
    slti    $at, v0, 0x0064            
    bne     $at, $zero, lbl_809ABDB8   
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809AAD20              
    lw      a1, 0x00EC($sp)            
    beq     $zero, $zero, lbl_809AD330 
    lw      $ra, 0x003C($sp)           
lbl_809ABDB8:
    lh      v1, 0x0148(s1)             # 00000148
lbl_809ABDBC:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    slti    $at, v1, 0x000A            
    beq     $at, $zero, lbl_809ABE44   
    addiu   a0, s1, 0x0050             # a0 = 00000050
    bltz    v1, lbl_809ABE44           
    lw      t0, 0x00EC($sp)            
    lw      t1, 0x07C0(t0)             # 000007C0
    lwc1    $f4, 0x0028(s1)            # 00000028
    lw      t2, 0x0028(t1)             # 00000028
    lh      t3, 0x0002(t2)             # 00000002
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_809ABE44               
    nop
    mtc1    $zero, $f20                # $f20 = 0.00
    lwc1    $f6, 0x0060(s1)            # 00000060
    lui     $at, %hi(var_809B0AF4)     # $at = 809B0000
    c.lt.s  $f20, $f6                  
    nop
    bc1f    lbl_809ABE34               
    nop
    lui     $at, %hi(var_809B0AEC)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B0AEC)($at) 
    lui     $at, %hi(var_809B0AF0)     # $at = 809B0000
    beq     $zero, $zero, lbl_809ABE54 
    lwc1    $f2, %lo(var_809B0AF0)($at) 
lbl_809ABE34:
    lwc1    $f0, %lo(var_809B0AF4)($at) 
    lui     $at, %hi(var_809B0AF8)     # $at = 809B0000
    beq     $zero, $zero, lbl_809ABE54 
    lwc1    $f2, %lo(var_809B0AF8)($at) 
lbl_809ABE44:
    lui     $at, %hi(var_809B0AFC)     # $at = 809B0000
    lwc1    $f0, %lo(var_809B0AFC)($at) 
    mtc1    $zero, $f20                # $f20 = 0.00
    mov.s   $f2, $f0                   
lbl_809ABE54:
    mfc1    a1, $f0                    
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    jal     func_80064280              
    swc1    $f2, 0x00BC($sp)           
    lwc1    $f2, 0x00BC($sp)           
    lwc1    $f8, 0x0050(s1)            # 00000050
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3A83                 # a3 = 3A830000
    mfc1    a1, $f2                    
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0054             # a0 = 00000054
    jal     func_80064280              
    swc1    $f8, 0x0058(s1)            # 00000058
    addiu   a0, s1, 0x0024             # a0 = 00000024
    sw      a0, 0x0040($sp)            
    jal     func_809A62A8              
    lui     a1, 0x4170                 # a1 = 41700000
    sh      v0, 0x0156(s1)             # 00000156
    mfc1    a1, $f20                   
    jal     func_809A62A8              
    lw      a0, 0x0040($sp)            
    lw      t4, 0x00EC($sp)            
    sb      v0, 0x00E7($sp)            
    lui     $at, 0x4248                # $at = 42480000
    lw      t5, 0x07C0(t4)             # 000007C0
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f10, 0x0028(s2)           # 00000028
    lw      t6, 0x0028(t5)             # 00000028
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    sub.s   $f8, $f4, $f6              
    c.lt.s  $f10, $f8                  
    nop
    bc1fl   lbl_809ABF1C               
    lh      v1, 0x0148(s1)             # 00000148
    lh      v1, 0x0148(s1)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    beql    v1, $zero, lbl_809ABF10    
    sh      t8, 0x0148(s1)             # 00000148
    bnel    v1, $at, lbl_809ABF1C      
    lh      v1, 0x0148(s1)             # 00000148
    sh      t8, 0x0148(s1)             # 00000148
lbl_809ABF10:
    swc1    $f20, 0x0068(s1)           # 00000068
    sh      $zero, 0x0158(s1)          # 00000158
    lh      v1, 0x0148(s1)             # 00000148
lbl_809ABF1C:
    addiu   t9, v1, 0x000B             # t9 = 0000000B
    sltiu   $at, t9, 0x0011            
    beq     $at, $zero, lbl_809AC120   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_809B0B00)     # $at = 809B0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_809B0B00)($at) 
    jr      t9                         
    nop
var_809ABF40:
    lw      t0, 0x0004(s1)             # 00000004
    lh      t2, 0x016E(s1)             # 0000016E
    ori     t1, t0, 0x0001             # t1 = 00000001
    bne     t2, $zero, lbl_809ABFEC    
    sw      t1, 0x0004(s1)             # 00000004
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    lw      t3, %lo(var_809B0064)(t3)  
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lh      v0, 0x0148(t3)             # 809B0148
    beql    a0, v0, lbl_809ABF78       
    lw      t4, 0x00EC($sp)            
    bne     v0, $zero, lbl_809ABFEC    
    nop
    lw      t4, 0x00EC($sp)            
lbl_809ABF78:
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t5, 0x07C0(t4)             # 000007C0
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    lw      t6, 0x0028(t5)             # 00000028
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f18, $f6                  
    nop
    bc1f    lbl_809ABFEC               
    nop
    swc1    $f20, 0x0068(s1)           # 00000068
    sh      t8, 0x0148(s1)             # 00000148
    lw      s0, %lo(var_809B0064)(s0)  
    addiu   t0, $zero, 0x000B          # t0 = 0000000B
    lui     t2, %hi(var_809B0064)      # t2 = 809B0000
    lh      t9, 0x0148(s0)             # 809B0148
    bne     a0, t9, lbl_809ABFEC       
    nop
    sh      t0, 0x0148(s0)             # 809B0148
    lw      t2, %lo(var_809B0064)(t2)  
    addiu   t1, $zero, 0x0046          # t1 = 00000046
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    sh      t1, 0x016E(t2)             # 809B016E
    lw      s0, %lo(var_809B0064)(s0)  
    lh      t3, 0x008A(s0)             # 809B008A
    sh      t3, 0x00B6(s0)             # 809B00B6
lbl_809ABFEC:
    beq     $zero, $zero, lbl_809AC120 
    lh      v1, 0x0148(s1)             # 00000148
var_809ABFF4:
    lui     t4, %hi(var_809B0064)      # t4 = 809B0000
    lw      t4, %lo(var_809B0064)(t4)  
    addiu   $at, $zero, 0x0066         # $at = 00000066
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lh      v0, 0x0148(t4)             # 809B0148
    addiu   s0, $zero, 0x0064          # s0 = 00000064
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    beql    v0, $at, lbl_809AC024      
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    bne     a0, v0, lbl_809AC03C       
    nop
    addiu   t5, $zero, 0x0046          # t5 = 00000046
lbl_809AC024:
    sh      $zero, 0x0148(s1)          # 00000148
    sh      t5, 0x016E(s1)             # 0000016E
    lui     t6, %hi(var_809B0064)      # t6 = 809B0000
    lw      t6, %lo(var_809B0064)(t6)  
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lh      v0, 0x0148(t6)             # 809B0148
lbl_809AC03C:
    bne     s0, v0, lbl_809AC058       
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sh      a0, 0x0148(s1)             # 00000148
    sh      $zero, 0x0154(s1)          # 00000154
    sh      $zero, 0x016E(s1)          # 0000016E
    lw      t7, %lo(var_809B0064)(t7)  
    lh      v0, 0x0148(t7)             # 809B0148
lbl_809AC058:
    bne     v0, $at, lbl_809AC070      
    nop
    sh      a0, 0x0148(s1)             # 00000148
    sh      $zero, 0x0154(s1)          # 00000154
    sh      $zero, 0x016E(s1)          # 0000016E
    swc1    $f20, 0x0068(s1)           # 00000068
lbl_809AC070:
    beq     $zero, $zero, lbl_809AC120 
    lh      v1, 0x0148(s1)             # 00000148
var_809AC078:
    lw      t8, 0x00EC($sp)            
    lwc1    $f10, 0x0028(s2)           # 00000028
    lw      t9, 0x07C0(t8)             # 000007C1
    lw      t0, 0x0028(t9)             # 00000033
    lh      t1, 0x0002(t0)             # 0000000D
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    c.le.s  $f4, $f10                  
    nop
    bc1fl   lbl_809AC124               
    lh      t2, 0x016E(s1)             # 0000016E
    sh      $zero, 0x0148(s1)          # 00000148
    lh      v1, 0x0148(s1)             # 00000148
    beq     $zero, $zero, lbl_809AC120 
    swc1    $f20, 0x0068(s1)           # 00000068
var_809AC0B8:
    lw      t2, 0x0004(s1)             # 00000004
    lh      t4, 0x016E(s1)             # 0000016E
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    ori     t3, t2, 0x0001             # t3 = 809B0001
    bne     t4, $zero, lbl_809AC0DC    
    sw      t3, 0x0004(s1)             # 00000004
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      $zero, 0x0148(s1)          # 00000148
    sh      t5, 0x016E(s1)             # 0000016E
lbl_809AC0DC:
    lw      t6, 0x00EC($sp)            
    lwc1    $f18, 0x0028(s1)           # 00000028
    lw      t7, 0x07C0(t6)             # 809B07C0
    lw      t8, 0x0028(t7)             # 809B0028
    lh      t9, 0x0002(t8)             # 00000003
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    c.lt.s  $f18, $f8                  
    nop
    bc1fl   lbl_809AC120               
    lh      v1, 0x0148(s1)             # 00000148
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    sh      t0, 0x0148(s1)             # 00000148
    sh      t1, 0x016E(s1)             # 0000016E
    swc1    $f20, 0x0068(s1)           # 00000068
    lh      v1, 0x0148(s1)             # 00000148
lbl_809AC120:
    lh      t2, 0x016E(s1)             # 0000016E
lbl_809AC124:
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    addiu   s0, $zero, 0x0064          # s0 = 00000064
    bnel    t2, $zero, lbl_809AC2E8    
    slti    $at, v1, 0x000A            
    beq     v1, a0, lbl_809AC158       
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v1, $at, lbl_809AC214      
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beql    v1, $at, lbl_809AC250      
    lw      t7, 0x0004(s1)             # 00000004
    beq     $zero, $zero, lbl_809AC2E8 
    slti    $at, v1, 0x000A            
lbl_809AC158:
    lw      t3, 0x0004(s1)             # 00000004
    lh      t5, 0x0154(s1)             # 00000154
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    ori     t4, t3, 0x0001             # t4 = 809B0001
    addiu   t6, t5, 0x0001             # t6 = 0000001F
    sw      t4, 0x0004(s1)             # 00000004
    sh      t6, 0x0154(s1)             # 00000154
    lw      t7, %lo(var_809B0064)(t7)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t8, 0x0148(t7)             # 809B0148
    bne     t8, $at, lbl_809AC1E0      
    nop
    lh      a0, 0x014A(s1)             # 0000014A
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t0, 0x0154(s1)             # 00000154
    mul.s   $f4, $f0, $f10             
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x000F             # v0 = 0000000F
    slt     $at, t0, v0                
    bne     $at, $zero, lbl_809AC1E0   
    nop
    sh      v0, 0x0154(s1)             # 00000154
lbl_809AC1E0:
    lui     t1, %hi(var_809B0064)      # t1 = 809B0000
    lw      t1, %lo(var_809B0064)(t1)  
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x0148(t1)             # 809B0148
    beq     v0, $at, lbl_809AC20C      
    nop
    beq     s0, v0, lbl_809AC20C       
    nop
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    sh      t2, 0x0148(s1)             # 00000148
    sh      $zero, 0x016E(s1)          # 0000016E
lbl_809AC20C:
    beq     $zero, $zero, lbl_809AC2E4 
    lh      v1, 0x0148(s1)             # 00000148
lbl_809AC214:
    lh      t3, 0x0154(s1)             # 00000154
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0154(s1)             # 00000154
    lh      t5, 0x0154(s1)             # 00000154
    bgtzl   t5, lbl_809AC244           
    sh      $zero, 0x016E(s1)          # 0000016E
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0148(s1)             # 00000148
    sh      s0, 0x016E(s1)             # 0000016E
    swc1    $f20, 0x0D58(s1)           # 00000D58
    swc1    $f20, 0x0068(s1)           # 00000068
    sh      $zero, 0x016E(s1)          # 0000016E
lbl_809AC244:
    beq     $zero, $zero, lbl_809AC2E4 
    lh      v1, 0x0148(s1)             # 00000148
    lw      t7, 0x0004(s1)             # 00000004
lbl_809AC250:
    lh      a0, 0x014A(s1)             # 0000014A
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t8, t7, $at                
    addu    $at, a0, $zero             
    lh      t9, 0x0154(s1)             # 00000154
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sw      t8, 0x0004(s1)             # 00000004
    sh      t0, 0x0154(s1)             # 00000154
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lh      t2, 0x0154(s1)             # 00000154
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    mul.s   $f8, $f0, $f18             
    trunc.w.s $f10, $f8                  
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    addiu   v0, v0, 0x000F             # v0 = 0000000F
    slt     $at, t2, v0                
    bne     $at, $zero, lbl_809AC2C4   
    nop
    sh      v0, 0x0154(s1)             # 00000154
lbl_809AC2C4:
    lw      t3, %lo(var_809B0064)(t3)  
    lh      t4, 0x0148(t3)             # 809B0148
    beql    t4, $zero, lbl_809AC2E4    
    lh      v1, 0x0148(s1)             # 00000148
    addiu   t5, $zero, 0x000B          # t5 = 0000000B
    sh      t5, 0x0148(s1)             # 00000148
    sh      $zero, 0x016E(s1)          # 0000016E
    lh      v1, 0x0148(s1)             # 00000148
lbl_809AC2E4:
    slti    $at, v1, 0x000A            
lbl_809AC2E8:
    bne     $at, $zero, lbl_809AC510   
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    lh      a0, 0x0154(s1)             # 00000154
    bgezl   a0, lbl_809AC30C           
    slti    $at, a0, 0x0029            
    sh      $zero, 0x0154(s1)          # 00000154
    beq     $zero, $zero, lbl_809AC320 
    lh      a0, 0x0154(s1)             # 00000154
    slti    $at, a0, 0x0029            
lbl_809AC30C:
    bne     $at, $zero, lbl_809AC320   
    nop
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sh      t6, 0x0154(s1)             # 00000154
    lh      a0, 0x0154(s1)             # 00000154
lbl_809AC320:
    lw      s0, %lo(var_809B0064)(s0)  
    addiu   a1, $zero, 0x012C          # a1 = 0000012C
    sll     t7, a0,  1                 
    lh      t9, 0x015A(s0)             # 809B015A
    subu    t8, a1, t7                 
    sll     t1, a0,  2                 
    addu    t0, t8, t9                 
    div     $zero, t0, a1              
    bne     a1, $zero, lbl_809AC34C    
    nop
    break   # 0x01C00
lbl_809AC34C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_809AC364      
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_809AC364      
    nop
    break   # 0x01800
lbl_809AC364:
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t2, v0,  2                 
    lui     $at, %hi(var_809B05F4)     # $at = 809B0000
    addu    $at, $at, t1               
    addu    t3, s0, t2                 
    lwc1    $f6, 0x01E8(t3)            # 809B01E8
    lwc1    $f4, %lo(var_809B05F4)($at) 
    addiu   v1, $zero, 0xFFFB          # v1 = FFFFFFFB
    mul.s   $f18, $f4, $f6             
    swc1    $f18, 0x0088($sp)          
    addu    v0, a0, v1                 
lbl_809AC398:
    addiu   v0, v0, 0xFFFE             # v0 = 0000000D
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_809AC41C           
    slti    $at, v0, 0x0029            
    beq     $at, $zero, lbl_809AC41C   
    sll     t5, v1,  2                 
    lui     $at, %hi(var_809B07A4)     # $at = 809B0000
    addu    $at, $at, t5               
    lwc1    $f8, %lo(var_809B07A4)($at) 
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    mul.s   $f4, $f8, $f10             
    lwc1    $f8, 0x0088($sp)           
    sll     t4, v0,  2                 
    subu    t4, t4, v0                 
    sll     t4, t4,  2                 
    addu    a0, s0, t4                 
    addiu   a0, a0, 0x0884             # a0 = 00000884
    div.s   $f18, $f4, $f6             
    lui     a2, 0x3F40                 # a2 = 3F400000
    lui     a3, 0x40A0                 # a3 = 40A00000
    sh      v1, 0x008E($sp)            
    add.s   $f10, $f18, $f8            
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    lw      s0, %lo(var_809B0064)(s0)  
    lh      v1, 0x008E($sp)            
    lh      a0, 0x0154(s1)             # 00000154
lbl_809AC41C:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x0006            
    bnel    $at, $zero, lbl_809AC398   
    addu    v0, a0, v1                 
    sll     v0, a0,  2                 
    subu    v0, v0, a0                 
    sll     v0, v0,  2                 
    addu    t6, s0, v0                 
    lwc1    $f4, 0x0D60(t6)            # 00000D60
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    lui     t9, %hi(var_809B0064)      # t9 = 809B0000
    swc1    $f4, 0x01C4(s1)            # 000001C4
    lw      t7, %lo(var_809B0064)(t7)  
    slti    $at, a0, 0x0002            
    lui     a2, 0x3F00                 # a2 = 3F000000
    addu    t8, t7, v0                 
    lwc1    $f6, 0x0D64(t8)            # 00000D64
    swc1    $f6, 0x01C8(s1)            # 000001C8
    lw      t9, %lo(var_809B0064)(t9)  
    addu    t0, t9, v0                 
    lwc1    $f18, 0x0D68(t0)           # 00000D68
    beq     $at, $zero, lbl_809AC494   
    swc1    $f18, 0x01CC(s1)           # 000001CC
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x01C8(s1)            # 000001C8
    sub.s   $f4, $f8, $f10             
    swc1    $f4, 0x01C8(s1)            # 000001C8
lbl_809AC494:
    lw      a0, 0x0040($sp)            
    lw      a1, 0x01C4(s1)             # 000001C4
    jal     func_80064280              
    lw      a3, 0x0068(s1)             # 00000068
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lw      a1, 0x01C8(s1)             # 000001C8
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lw      a3, 0x0068(s1)             # 00000068
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    lw      a1, 0x01CC(s1)             # 000001CC
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lw      a3, 0x0068(s1)             # 00000068
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x41F0                 # a1 = 41F00000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    jal     func_80064280              
    nop
    lw      t1, 0x00EC($sp)            
    lwc1    $f12, 0x0028(s1)           # 00000028
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFFC8
    lw      t2, 0x07C0(t1)             # 000007C0
    lw      t3, 0x0028(t2)             # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f6                    # $f6 = 0.00
    beq     $zero, $zero, lbl_809ACEC4 
    cvt.s.w $f0, $f6                   
lbl_809AC510:
    beq     v1, $zero, lbl_809AC528    
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_809AC5F4      
    nop
    beq     $zero, $zero, lbl_809AC640 
    lwc1    $f12, 0x0028(s1)           # 00000028
lbl_809AC528:
    lh      a0, 0x014C(s1)             # 0000014C
    sll     a0, a0, 11                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    nop
    mul.s   $f8, $f0, $f18             
    swc1    $f8, 0x0080($sp)           
    lh      a0, 0x014C(s1)             # 0000014C
    sll     a0, a0, 11                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     t5, %hi(var_809B0064)      # t5 = 809B0000
    lw      t5, %lo(var_809B0064)(t5)  
    mul.s   $f4, $f0, $f10             
    lwc1    $f18, 0x0080($sp)          
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lw      a0, 0x0040($sp)            
    swc1    $f4, 0x007C($sp)           
    lwc1    $f6, 0x01C4(t5)            # 809B01C4
    lw      a3, 0x0068(s1)             # 00000068
    add.s   $f8, $f6, $f18             
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    lui     t6, %hi(var_809B0064)      # t6 = 809B0000
    lw      t6, %lo(var_809B0064)(t6)  
    lwc1    $f4, 0x007C($sp)           
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lwc1    $f10, 0x01CC(t6)           # 809B01CC
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    add.s   $f6, $f10, $f4             
    lw      a3, 0x0068(s1)             # 00000068
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      v1, 0x0148(s1)             # 00000148
    beq     $zero, $zero, lbl_809AC640 
    lwc1    $f12, 0x0028(s1)           # 00000028
lbl_809AC5F4:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f18, 0x0068(s1)           # 00000068
    lh      a0, 0x0032(s1)             # 00000032
    mul.s   $f8, $f0, $f18             
    jal     func_80063684              # coss?
    swc1    $f8, 0x005C(s1)            # 0000005C
    lwc1    $f10, 0x0068(s1)           # 00000068
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f6, 0x005C(s1)            # 0000005C
    mul.s   $f2, $f0, $f10             
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f18, $f4, $f6             
    lh      v1, 0x0148(s1)             # 00000148
    lwc1    $f12, 0x0028(s1)           # 00000028
    swc1    $f18, 0x0024(s1)           # 00000024
    add.s   $f10, $f8, $f2             
    swc1    $f2, 0x0064(s1)            # 00000064
    swc1    $f10, 0x002C(s1)           # 0000002C
lbl_809AC640:
    beq     v1, $zero, lbl_809AC650    
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_809AC9C4      
    lw      t7, 0x00EC($sp)            
lbl_809AC650:
    lwc1    $f0, 0x0060(s1)            # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    add.s   $f4, $f12, $f0             
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    sub.s   $f18, $f0, $f6             
    swc1    $f4, 0x0028(s1)            # 00000028
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f18, 0x0060(s1)           # 00000060
    sw      t7, 0x0014($sp)            
    lw      a0, 0x00EC($sp)            
    lui     a2, 0x4248                 # a2 = 42480000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    lw      t8, 0x00EC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f20, 0x00AC($sp)          
    addu    t9, t8, $at                
    swc1    $f20, 0x00A8($sp)          
    swc1    $f20, 0x00A4($sp)          
    sw      t9, 0x004C($sp)            
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFFC8
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809AC6BC:
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90              
    nop
    lwc1    $f10, 0x0024(s1)           # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f4, $f0, $f10             
    jal     func_80026D90              
    swc1    $f4, 0x00B0($sp)           
    lwc1    $f6, 0x0028(s1)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f18, $f0, $f6             
    jal     func_80026D90              
    swc1    $f18, 0x00B4($sp)          
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lui     $at, %hi(var_809B0B44)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0B44)($at) 
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x00B8($sp)          
    lui     $at, %hi(var_809B0B48)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0B48)($at) 
    lw      t0, 0x004C($sp)            
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    add.s   $f6, $f0, $f4              
    lw      a1, 0x1E10(t0)             # 00001E10
    or      a2, s2, $zero              # a2 = FFFFFFC8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFBC
    jal     func_809A64C0              
    swc1    $f6, 0x0010($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    blezl   s0, lbl_809AC6BC           
    lui     $at, 0x41A0                # $at = 41A00000
    lbu     t1, 0x00E7($sp)            
    lui     $at, 0x4120                # $at = 41200000
    lw      t5, 0x00EC($sp)            
    beql    t1, $zero, lbl_809AC900    
    lw      t6, 0x07C0(t5)             # 000007C0
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f12, 0x0028(s1)           # 00000028
    lui     $at, %hi(var_809B0B4C)     # $at = 809B0000
    c.le.s  $f12, $f0                  
    nop
    bc1fl   lbl_809AC8E4               
    lw      t1, 0x00EC($sp)            
    lh      v0, 0x0170(s1)             # 00000170
    swc1    $f0, 0x0028(s1)            # 00000028
    lwc1    $f18, %lo(var_809B0B4C)($at) 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    beq     v0, $zero, lbl_809AC7B4    
    swc1    $f18, 0x0060(s1)           # 00000060
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809AC7AC      
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    nop
    swc1    $f8, 0x0060(s1)            # 00000060
lbl_809AC7AC:
    beq     $zero, $zero, lbl_809AC8E0 
    lwc1    $f12, 0x0028(s1)           # 00000028
lbl_809AC7B4:
    sh      t2, 0x0170(s1)             # 00000170
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38DD          # a1 = 000038DD
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x4080                # $at = 40800000
lbl_809AC7CC:
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64              
    swc1    $f0, 0x00A4($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    add.s   $f4, $f0, $f10             
    jal     func_80026D90              
    swc1    $f4, 0x00A8($sp)           
    lw      t3, 0x0040($sp)            
    swc1    $f0, 0x00AC($sp)           
    lui     $at, %hi(var_809B0B50)     # $at = 809B0000
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0000(s2)             # FFFFFFC8
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0004(s2)             # FFFFFFCC
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0008(s2)             # FFFFFFD0
    lwc1    $f6, 0x00B0($sp)           
    lwc1    $f18, 0x00A4($sp)          
    lwc1    $f10, 0x00B8($sp)          
    lwc1    $f12, %lo(var_809B0B50)($at) 
    add.s   $f8, $f6, $f18             
    add.s   $f4, $f10, $f0             
    swc1    $f8, 0x00B0($sp)           
    jal     func_80026D64              
    swc1    $f4, 0x00B8($sp)           
    lui     $at, %hi(var_809B0B54)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0B54)($at) 
    lw      t6, 0x004C($sp)            
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    add.s   $f18, $f0, $f6             
    lw      a1, 0x1E10(t6)             # 00001E10
    or      a2, s2, $zero              # a2 = FFFFFFC8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFBC
    jal     func_809A64C0              
    swc1    $f18, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bnel    $at, $zero, lbl_809AC7CC   
    lui     $at, 0x4080                # $at = 40800000
    lw      t7, 0x0040($sp)            
    swc1    $f20, 0x00AC($sp)          
    swc1    $f20, 0x00A8($sp)          
    swc1    $f20, 0x00A4($sp)          
    lw      t9, 0x0000(t7)             # 00000000
    lui     $at, %hi(var_809B0B58)     # $at = 809B0000
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    sw      t9, 0x0000(s2)             # FFFFFFC8
    lw      t8, 0x0004(t7)             # 00000004
    or      a2, s2, $zero              # a2 = FFFFFFC8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFBC
    sw      t8, 0x0004(s2)             # FFFFFFCC
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(s2)             # FFFFFFD0
    lw      t0, 0x004C($sp)            
    lwc1    $f8, %lo(var_809B0B58)($at) 
    swc1    $f20, 0x00B4($sp)          
    lw      a1, 0x1E10(t0)             # 00001E10
    jal     func_809A64C0              
    swc1    $f8, 0x0010($sp)           
    lwc1    $f12, 0x0028(s1)           # 00000028
lbl_809AC8E0:
    lw      t1, 0x00EC($sp)            
lbl_809AC8E4:
    lw      t2, 0x07C0(t1)             # 000007C0
    lw      t3, 0x0028(t2)             # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    mtc1    t4, $f10                   # $f10 = 0.00
    beq     $zero, $zero, lbl_809ACEC0 
    cvt.s.w $f0, $f10                  
    lw      t6, 0x07C0(t5)             # 000007C0
lbl_809AC900:
    lwc1    $f12, 0x0028(s1)           # 00000028
    lw      a0, 0x0040($sp)            
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_809ACEC4               
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFFC8
    jal     func_809A62A8              
    lui     a1, 0x4220                 # a1 = 42200000
    beq     v0, $zero, lbl_809AC94C    
    lui     $at, 0x40C0                # $at = 40C00000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    beq     $zero, $zero, lbl_809AC958 
    swc1    $f6, 0x0060(s1)            # 00000060
lbl_809AC94C:
    mtc1    $at, $f18                  # $f18 = 15.00
    nop
    swc1    $f18, 0x0060(s1)           # 00000060
lbl_809AC958:
    lw      t9, 0x00EC($sp)            
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lw      t0, 0x07C0(t9)             # 000007C0
    lwc1    $f12, 0x0028(s1)           # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    lw      t1, 0x0028(t0)             # 00000028
    add.s   $f4, $f12, $f10            
    lh      t2, 0x0002(t1)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8                   
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_809ACEC4               
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFFC8
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38F7          # a1 = 000038F7
    lw      t3, 0x00EC($sp)            
    lwc1    $f12, 0x0028(s1)           # 00000028
    lw      t4, 0x07C0(t3)             # 000007C0
    lw      t5, 0x0028(t4)             # 00000028
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f6                    # $f6 = 0.00
    beq     $zero, $zero, lbl_809ACEC0 
    cvt.s.w $f0, $f6                   
    lw      t7, 0x00EC($sp)            
lbl_809AC9C4:
    lw      t8, 0x07C0(t7)             # 000007C0
    lw      t9, 0x0028(t8)             # 00000028
    lh      t0, 0x0002(t9)             # 00000002
    mtc1    t0, $f18                   # $f18 = 0.00
    bltz    v1, lbl_809ACEC0           
    cvt.s.w $f0, $f18                  
    c.lt.s  $f12, $f0                  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bc1fl   lbl_809ACE18               
    lwc1    $f0, 0x0060(s1)            # 00000060
    bne     v1, $at, lbl_809ACA48      
    lui     t1, %hi(var_809B0064)      # t1 = 809B0000
    lw      t1, %lo(var_809B0064)(t1)  
    lui     t2, %hi(var_809B0064)      # t2 = 809B0000
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f8, 0x01C4(t1)            # 809B01C4
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    swc1    $f8, 0x01C4(s1)            # 000001C4
    lw      t2, %lo(var_809B0064)(t2)  
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f10, 0x0028(t2)           # 809B0028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    sub.s   $f6, $f10, $f4             
    swc1    $f6, 0x01C8(s1)            # 000001C8
    lw      t3, %lo(var_809B0064)(t3)  
    lwc1    $f18, 0x01CC(t3)           # 809B01CC
    jal     func_80064280              
    swc1    $f18, 0x01CC(s1)           # 000001CC
    beq     $zero, $zero, lbl_809ACBDC 
    lh      t0, 0x014A(s1)             # 0000014A
lbl_809ACA48:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v1, $at, lbl_809ACBDC      
    lh      t0, 0x014A(s1)             # 0000014A
    lh      v0, 0x0158(s1)             # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_809ACA78    
    lw      t5, 0x0024(s2)             # FFFFFFEC
    beql    v0, $at, lbl_809ACB80      
    lui     $at, 0x3F80                # $at = 3F800000
    beq     $zero, $zero, lbl_809ACBDC 
    lh      t0, 0x014A(s1)             # 0000014A
    lw      t5, 0x0024(s2)             # FFFFFFEC
lbl_809ACA78:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    sw      t5, 0x01C4(s1)             # 000001C4
    lw      t4, 0x0028(s2)             # FFFFFFF0
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    sw      t4, 0x01C8(s1)             # 000001C8
    lwc1    $f8, 0x01C8(s1)            # 000001C8
    lw      t5, 0x002C(s2)             # FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    add.s   $f4, $f8, $f10             
    sw      t5, 0x01CC(s1)             # 000001CC
    mtc1    $at, $f10                  # $f10 = 32768.00
    lui     $at, %hi(var_809B0B5C)     # $at = 809B0000
    swc1    $f4, 0x01C8(s1)            # 000001C8
    swc1    $f20, 0x0070($sp)          
    swc1    $f20, 0x0074($sp)          
    swc1    $f6, 0x0078($sp)           
    lh      t6, 0x0032(s2)             # FFFFFFFA
    lwc1    $f6, %lo(var_809B0B5C)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t6, $f18                   # $f18 = 0.00
    addiu   s0, s1, 0x0068             # s0 = 00000068
    cvt.s.w $f8, $f18                  
    div.s   $f4, $f8, $f10             
    mul.s   $f12, $f4, $f6             
    jal     func_800AAB94              
    nop
    addiu   a0, $sp, 0x0070            # a0 = FFFFFF88
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFF7C
    lwc1    $f18, 0x0024(s2)           # FFFFFFEC
    lwc1    $f8, 0x0064($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    add.s   $f10, $f18, $f8            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mfc1    a2, $f0                    
    swc1    $f10, 0x01C4(s1)           # 000001C4
    lwc1    $f4, 0x0028(s2)            # FFFFFFF0
    mfc1    a3, $f0                    
    or      a0, s0, $zero              # a0 = 00000068
    add.s   $f18, $f4, $f6             
    lui     a1, 0x4120                 # a1 = 41200000
    swc1    $f18, 0x01C8(s1)           # 000001C8
    lwc1    $f10, 0x006C($sp)          
    lwc1    $f8, 0x002C(s2)            # FFFFFFF4
    add.s   $f4, $f8, $f10             
    jal     func_80064280              
    swc1    $f4, 0x01CC(s1)            # 000001CC
    lh      t7, 0x016E(s1)             # 0000016E
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4248                # $at = 42480000
    bnel    t7, $zero, lbl_809ACBDC    
    lh      t0, 0x014A(s1)             # 0000014A
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    sh      t8, 0x0158(s1)             # 00000158
    trunc.w.s $f6, $f0                   
    mfc1    t2, $f6                    
    nop
    addiu   t3, t2, 0x0032             # t3 = 00000032
    beq     $zero, $zero, lbl_809ACBD8 
    sh      t3, 0x016E(s1)             # 0000016E
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809ACB80:
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a3, 0x3F00                 # a3 = 3F000000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    nop
    lh      t4, 0x016E(s1)             # 0000016E
    lui     $at, 0x41A0                # $at = 41A00000
    bnel    t4, $zero, lbl_809ACBDC    
    lh      t0, 0x014A(s1)             # 0000014A
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64              
    sh      $zero, 0x0158(s1)          # 00000158
    trunc.w.s $f18, $f0                  
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38DE          # a1 = 000038DE
    mfc1    t8, $f18                   
    nop
    addiu   t9, t8, 0x0014             # t9 = 00000014
    jal     func_80022FD0              
    sh      t9, 0x016E(s1)             # 0000016E
lbl_809ACBD8:
    lh      t0, 0x014A(s1)             # 0000014A
lbl_809ACBDC:
    lui     $at, %hi(var_809B0B60)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0B60)($at) 
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f6, $f10, $f4             
    trunc.w.s $f18, $f6                  
    mfc1    a0, $f18                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lh      t2, 0x014A(s1)             # 0000014A
    lwc1    $f8, 0x01C4(s1)            # 000001C4
    mul.s   $f4, $f0, $f10             
    mtc1    t2, $f18                   # $f18 = 0.00
    lui     $at, 0x4503                # $at = 45030000
    cvt.s.w $f10, $f18                 
    add.s   $f6, $f8, $f4              
    mtc1    $at, $f8                   # $f8 = 2096.00
    nop
    mul.s   $f4, $f10, $f8             
    swc1    $f6, 0x01C4(s1)            # 000001C4
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lh      t4, 0x014A(s1)             # 0000014A
    lwc1    $f18, 0x01C8(s1)           # 000001C8
    mul.s   $f8, $f0, $f10             
    mtc1    t4, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_809B0B64)     # $at = 809B0000
    cvt.s.w $f10, $f6                  
    add.s   $f4, $f18, $f8             
    swc1    $f4, 0x01C8(s1)            # 000001C8
    lwc1    $f18, %lo(var_809B0B64)($at) 
    mul.s   $f8, $f10, $f18            
    trunc.w.s $f4, $f8                   
    mfc1    a0, $f4                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f6, 0x01CC(s1)            # 000001CC
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f18, $f0, $f10            
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f10                  # $f10 = 4000.00
    swc1    $f4, 0x0D54(s1)            # 00000D54
    lwc1    $f4, 0x0028(s1)            # 00000028
    swc1    $f10, 0x0D58(s1)           # 00000D58
    add.s   $f8, $f6, $f18             
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f6, 0x01C4(s1)            # 000001C4
    swc1    $f8, 0x01CC(s1)            # 000001CC
    lwc1    $f8, 0x01C8(s1)            # 000001C8
    sub.s   $f12, $f6, $f18            
    sub.s   $f10, $f8, $f4             
    swc1    $f10, 0x00D8($sp)          
    lwc1    $f18, 0x002C(s1)           # 0000002C
    lwc1    $f6, 0x01CC(s1)            # 000001CC
    swc1    $f12, 0x00DC($sp)          
    sub.s   $f14, $f6, $f18            
    jal     func_800CD76C              
    swc1    $f14, 0x00D4($sp)          
    lui     $at, %hi(var_809B0B68)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0B68)($at) 
    lwc1    $f2, 0x00DC($sp)           
    lwc1    $f16, 0x00D4($sp)          
    mul.s   $f4, $f0, $f8              
    lwc1    $f12, 0x00D8($sp)          
    mul.s   $f8, $f2, $f2              
    trunc.w.s $f10, $f4                  
    mul.s   $f4, $f16, $f16            
    mfc1    t7, $f10                   
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f6                    # $f6 = 0.00
    add.s   $f0, $f8, $f4              
    cvt.s.w $f18, $f6                  
    sqrt.s  $f14, $f0                  
    jal     func_800CD76C              
    swc1    $f18, 0x00CC($sp)          
    lui     $at, %hi(var_809B0B6C)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0B6C)($at) 
    addiu   a0, s1, 0x0032             # a0 = 00000032
    mul.s   $f6, $f0, $f10             
    lwc1    $f10, 0x00CC($sp)          
    trunc.w.s $f18, $f6                  
    trunc.w.s $f6, $f10                  
    mfc1    t1, $f18                   
    nop
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    mtc1    t3, $f8                    # $f8 = 0.00
    mfc1    a1, $f6                    
    cvt.s.w $f4, $f8                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    swc1    $f4, 0x00D0($sp)           
    lwc1    $f4, 0x0D58(s1)            # 00000D58
    lwc1    $f18, 0x0D54(s1)           # 00000D54
    trunc.w.s $f10, $f4                  
    trunc.w.s $f8, $f18                  
    mfc1    a3, $f10                   
    mfc1    a2, $f8                    
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sll     a2, a2, 16                 
    jal     func_80064624              
    sra     a2, a2, 16                 
    lwc1    $f6, 0x00D0($sp)           
    lwc1    $f8, 0x0D54(s1)            # 00000D54
    lwc1    $f10, 0x0D58(s1)           # 00000D58
    trunc.w.s $f18, $f6                  
    addiu   a0, s1, 0x0030             # a0 = 00000030
    trunc.w.s $f4, $f8                   
    mfc1    a1, $f18                   
    trunc.w.s $f6, $f10                  
    mfc1    a2, $f4                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f6                    
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    jal     func_80064624              
    sra     a3, a3, 16                 
    jal     func_80021248              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809ACE30 
    nop
    lwc1    $f0, 0x0060(s1)            # 00000060
lbl_809ACE18:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    add.s   $f18, $f12, $f0            
    sub.s   $f4, $f0, $f8              
    swc1    $f18, 0x0028(s1)           # 00000028
    swc1    $f4, 0x0060(s1)            # 00000060
lbl_809ACE30:
    jal     func_80021124              
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    lwc1    $f12, 0x0028(s1)           # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    c.lt.s  $f12, $f10                 
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x4248                 # a2 = 42480000
    lui     a3, 0x41A0                 # a3 = 41A00000
    bc1f    lbl_809ACE6C               
    sub.s   $f18, $f12, $f6            
    beq     $zero, $zero, lbl_809ACE70 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_809ACE6C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809ACE70:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    swc1    $f18, 0x0028(s1)           # 00000028
    sw      v0, 0x0014($sp)            
    lw      a0, 0x00EC($sp)            
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f6, $f4, $f10             
    swc1    $f6, 0x0028(s1)            # 00000028
    lw      t0, 0x00EC($sp)            
    lwc1    $f12, 0x0028(s1)           # 00000028
    lw      t1, 0x07C0(t0)             # 000007C0
    lw      t2, 0x0028(t1)             # 00000028
    lh      t3, 0x0002(t2)             # 00000002
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f0, $f18                  
lbl_809ACEC0:
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFFC8
lbl_809ACEC4:
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_809AD228               
    c.lt.s  $f12, $f0                  
    lwc1    $f8, 0x0104(s1)            # 00000104
    lui     $at, 0xC0A0                # $at = C0A00000
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_809AD228               
    c.lt.s  $f12, $f0                  
    lwc1    $f4, 0x0060(s1)            # 00000060
    mtc1    $at, $f10                  # $f10 = -5.00
    addiu   a1, $zero, 0x38F7          # a1 = 000038F7
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_809ACF1C               
    nop
    jal     func_80022FD0              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809ACF28 
    lh      t4, 0x0174(s1)             # 00000174
lbl_809ACF1C:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38DF          # a1 = 000038DF
    lh      t4, 0x0174(s1)             # 00000174
lbl_809ACF28:
    lui     s0, %hi(var_809B0064)      # s0 = 809B0000
    lw      t5, 0x00EC($sp)            
    bnel    t4, $zero, lbl_809ACFA8    
    lw      t6, 0x07C0(t5)             # 000007C0
    lw      s0, %lo(var_809B0064)(s0)  
    lui     $at, %hi(var_809B0B70)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0B70)($at) 
    lwc1    $f18, 0x0190(s0)           # 809B0190
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    c.lt.s  $f6, $f18                  
    nop
    bc1fl   lbl_809ACFC4               
    sh      t9, 0x0174(s1)             # 00000174
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f4, 0x0024(s0)            # 809B0024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    sub.s   $f0, $f8, $f4              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809ACFC4               
    sh      t9, 0x0174(s1)             # 00000174
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lwc1    $f6, 0x002C(s0)            # 809B002C
    sub.s   $f0, $f10, $f6             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809ACFC4               
    sh      t9, 0x0174(s1)             # 00000174
    lw      t6, 0x07C0(t5)             # 000007C0
lbl_809ACFA8:
    lwc1    $f12, 0x0028(s1)           # 00000028
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f18                   # $f18 = 0.00
    beq     $zero, $zero, lbl_809AD224 
    cvt.s.w $f0, $f18                  
    sh      t9, 0x0174(s1)             # 00000174
lbl_809ACFC4:
    lw      t0, 0x00EC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    or      s0, $zero, $zero           # s0 = 00000000
    addu    t1, t0, $at                
    sw      t1, 0x004C($sp)            
lbl_809ACFD8:
    lui     $at, %hi(var_809B0B74)     # $at = 809B0000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809B0B74)($at) 
    lui     $at, %hi(var_809B0B78)     # $at = 809B0000
    swc1    $f0, 0x005C($sp)           
    jal     func_80026D64              
    lwc1    $f12, %lo(var_809B0B78)($at) 
    mtc1    s0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B0B7C)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0B7C)($at) 
    cvt.s.w $f6, $f10                  
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f18                  # $f18 = 65536.00
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f4, $f0, $f8              
    mul.s   $f8, $f6, $f18             
    lwc1    $f6, 0x005C($sp)           
    swc1    $f4, 0x0060($sp)           
    mtc1    $at, $f4                   # $f4 = 10.00
    nop
    div.s   $f10, $f8, $f4             
    add.s   $f18, $f10, $f6            
    trunc.w.s $f8, $f18                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sw      a0, 0x0048($sp)            
    lwc1    $f4, 0x0060($sp)           
    lw      a0, 0x0048($sp)            
    mul.s   $f10, $f0, $f4             
    jal     func_80063684              # coss?
    swc1    $f10, 0x00A4($sp)          
    lwc1    $f6, 0x0060($sp)           
    lui     $at, %hi(var_809B0B80)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0B80)($at) 
    mul.s   $f18, $f0, $f6             
    jal     func_80026D64              
    swc1    $f18, 0x00AC($sp)          
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    lw      t3, 0x0040($sp)            
    lui     $at, %hi(var_809B0B84)     # $at = 809B0000
    add.s   $f8, $f0, $f2              
    swc1    $f8, 0x00A8($sp)           
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0000(s2)             # FFFFFFC8
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0004(s2)             # FFFFFFCC
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0008(s2)             # FFFFFFD0
    lwc1    $f10, 0x00A4($sp)          
    lwc1    $f4, 0x00B0($sp)           
    lw      t6, 0x00EC($sp)            
    mul.s   $f6, $f10, $f2             
    lwc1    $f12, %lo(var_809B0B84)($at) 
    add.s   $f18, $f4, $f6             
    lwc1    $f6, 0x00AC($sp)           
    lwc1    $f4, 0x00B8($sp)           
    swc1    $f18, 0x00B0($sp)          
    lw      t7, 0x07C0(t6)             # 000007C0
    mul.s   $f18, $f6, $f2             
    lw      t8, 0x0028(t7)             # 00000028
    lh      t9, 0x0002(t8)             # 00000002
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f8, $f4, $f18             
    swc1    $f10, 0x00B4($sp)          
    jal     func_80026D64              
    swc1    $f8, 0x00B8($sp)           
    lui     $at, %hi(var_809B0B88)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0B88)($at) 
    lw      t0, 0x004C($sp)            
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    add.s   $f6, $f0, $f10             
    lw      a1, 0x1E10(t0)             # 00001E10
    or      a2, s2, $zero              # a2 = FFFFFFC8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFBC
    jal     func_809A64C0              
    swc1    $f6, 0x0010($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bne     $at, $zero, lbl_809ACFD8   
    nop
    lw      t1, 0x0040($sp)            
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0122          # t0 = 00000122
    lw      t3, 0x0000(t1)             # 00000000
    or      a1, s2, $zero              # a1 = FFFFFFC8
    lui     a2, 0x42C8                 # a2 = 42C80000
    sw      t3, 0x0000(s2)             # FFFFFFC8
    lw      t2, 0x0004(t1)             # 00000004
    lui     a3, 0x4448                 # a3 = 44480000
    sw      t2, 0x0004(s2)             # FFFFFFCC
    lw      t3, 0x0008(t1)             # 00000008
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t3, 0x0008(s2)             # FFFFFFD0
    lw      t4, 0x00EC($sp)            
    lw      t8, 0x004C($sp)            
    lw      t5, 0x07C0(t4)             # 000007C0
    lw      t6, 0x0028(t5)             # 00000028
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4                  
    swc1    $f18, 0x00B4($sp)          
    lw      a0, 0x1E10(t8)             # 00001E10
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    jal     func_809A63A0              
    sw      t9, 0x0010($sp)            
    lw      t2, 0x004C($sp)            
    addiu   t3, $zero, 0x0046          # t3 = 00000046
    addiu   t4, $zero, 0x0122          # t4 = 00000122
    lw      a0, 0x1E10(t2)             # 00001E10
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    or      a1, s2, $zero              # a1 = FFFFFFC8
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_809A63A0              
    lui     a3, 0x4416                 # a3 = 44160000
    lw      t6, 0x004C($sp)            
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addiu   t8, $zero, 0x0122          # t8 = 00000122
    lw      a0, 0x1E10(t6)             # 00001E10
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a1, s2, $zero              # a1 = FFFFFFC8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_809A63A0              
    lui     a3, 0x43C8                 # a3 = 43C80000
    lw      t0, 0x00EC($sp)            
    lwc1    $f12, 0x0028(s1)           # 00000028
    lw      t1, 0x07C0(t0)             # 000007C0
    lw      t2, 0x0028(t1)             # 00000028
    lh      t3, 0x0002(t2)             # 00000002
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8                   
lbl_809AD224:
    c.lt.s  $f12, $f0                  
lbl_809AD228:
    lw      t5, 0x00EC($sp)            
    bc1tl   lbl_809AD244               
    lui     $at, 0x0001                # $at = 00010000
    lh      t4, 0x0148(s1)             # 00000148
    slti    $at, t4, 0x000A            
    bne     $at, $zero, lbl_809AD320   
    lui     $at, 0x0001                # $at = 00010000
lbl_809AD244:
    addu    t6, t5, $at                
    sw      t6, 0x004C($sp)            
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f20, 0x00A0($sp)          
lbl_809AD254:
    swc1    $f20, 0x0098($sp)          
    swc1    $f20, 0x00AC($sp)          
    swc1    $f20, 0x00A8($sp)          
    swc1    $f20, 0x00A4($sp)          
    lh      t7, 0x0148(s1)             # 00000148
    slti    $at, t7, 0x000A            
    bne     $at, $zero, lbl_809AD280   
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    beq     $zero, $zero, lbl_809AD294 
    swc1    $f20, 0x009C($sp)          
lbl_809AD280:
    lui     $at, %hi(var_809B0B8C)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0B8C)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    swc1    $f10, 0x009C($sp)          
lbl_809AD294:
    jal     func_80026D90              
    swc1    $f12, 0x0058($sp)          
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f12, 0x0058($sp)          
    add.s   $f4, $f0, $f6              
    jal     func_80026D90              
    swc1    $f4, 0x00B0($sp)           
    lwc1    $f18, 0x0028(s1)           # 00000028
    lwc1    $f12, 0x0058($sp)          
    add.s   $f8, $f0, $f18             
    jal     func_80026D90              
    swc1    $f8, 0x00B4($sp)           
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lui     $at, %hi(var_809B0B90)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0B90)($at) 
    add.s   $f6, $f0, $f10             
    jal     func_80026D64              
    swc1    $f6, 0x00B8($sp)           
    lui     $at, %hi(var_809B0B94)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0B94)($at) 
    lw      t8, 0x004C($sp)            
    or      a1, s2, $zero              # a1 = FFFFFFC8
    add.s   $f18, $f0, $f4             
    lw      a0, 0x1E10(t8)             # 00001E10
    sw      $zero, 0x0014($sp)         
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFBC
    swc1    $f18, 0x0010($sp)          
    jal     func_809A6660              
    addiu   a3, $sp, 0x0098            # a3 = FFFFFFB0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0003            
    bnel    $at, $zero, lbl_809AD254   
    swc1    $f20, 0x00A0($sp)          
lbl_809AD320:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809AB8DC              
    lw      a1, 0x00EC($sp)            
lbl_809AD32C:
    lw      $ra, 0x003C($sp)           
lbl_809AD330:
    ldc1    $f20, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_809AD348:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     v0, %hi(var_809B0068)      # v0 = 809B0000
    lw      v0, %lo(var_809B0068)(v0)  
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_809AD3C0    
    sw      t6, 0x0028($sp)            
    lwc1    $f6, 0x01AC(s0)            # 000001AC
    lui     t7, %hi(var_809B0064)      # t7 = 809B0000
    lw      t7, %lo(var_809B0064)(t7)  
    trunc.w.s $f8, $f6                   
    lw      t4, 0x07C0(s1)             # 000007C0
    lwc1    $f4, 0x01B8(t7)            # 809B01B8
    mfc1    t9, $f8                    
    lw      t5, 0x0028(t4)             # 00000028
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f4, $f16            
    trunc.w.s $f6, $f18                  
    mfc1    t3, $f6                    
    beq     $zero, $zero, lbl_809AD410 
    sh      t3, 0x0002(t5)             # 00000002
lbl_809AD3C0:
    lwc1    $f8, 0x01AC(s0)            # 000001AC
    lui     t0, %hi(var_809B0064)      # t0 = 809B0000
    lw      t0, %lo(var_809B0064)(t0)  
    trunc.w.s $f10, $f8                  
    lwc1    $f8, 0x01B8(v0)            # 809B01B8
    lwc1    $f18, 0x01B8(t0)           # 809B01B8
    lw      t4, 0x07C0(s1)             # 000007C0
    mfc1    t7, $f10                   
    lw      t3, 0x0028(t4)             # 00000028
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f16, $f4                  
    add.s   $f6, $f16, $f18            
    add.s   $f10, $f8, $f6             
    trunc.w.s $f4, $f10                  
    mfc1    t2, $f4                    
    nop
    sh      t2, 0x0002(t3)             # 00000002
lbl_809AD410:
    lw      t8, 0x0024(s0)             # 00000024
    lw      t5, 0x0004(s0)             # 00000004
    lh      t9, 0x014C(s0)             # 0000014C
    lh      v0, 0x014E(s0)             # 0000014E
    sw      t8, 0x0038(s0)             # 00000038
    lw      t8, 0x002C(s0)             # 0000002C
    lw      t7, 0x0028(s0)             # 00000028
    ori     t6, t5, 0x0200             # t6 = 00000200
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sw      t6, 0x0004(s0)             # 00000004
    sh      t0, 0x014C(s0)             # 0000014C
    sw      t8, 0x0040(s0)             # 00000040
    beq     v0, $zero, lbl_809AD450    
    sw      t7, 0x003C(s0)             # 0000003C
    addiu   t1, v0, 0xFFFF             # t1 = 809AFFFF
    sh      t1, 0x014E(s0)             # 0000014E
lbl_809AD450:
    lh      v0, 0x0150(s0)             # 00000150
    beq     v0, $zero, lbl_809AD460    
    addiu   t4, v0, 0xFFFF             # t4 = 809AFFFF
    sh      t4, 0x0150(s0)             # 00000150
lbl_809AD460:
    lh      t2, 0x014A(s0)             # 0000014A
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x014A(s0)             # 0000014A
    sll     t5, v0,  1                 
lbl_809AD474:
    addu    v1, s0, t5                 
    lh      a0, 0x016E(v1)             # 0000016E
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    beq     a0, $zero, lbl_809AD494    
    sra     v0, v0, 16                 
    addiu   t6, a0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x016E(v1)             # 0000016E
lbl_809AD494:
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_809AD474   
    sll     t5, v0,  1                 
    jal     func_809ABCE4              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, s0, 0x14EC             # a2 = 000014EC
    or      a1, a2, $zero              # a1 = 000014EC
    sw      a2, 0x0020($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    lw      a2, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lh      t7, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      a1, 0x0024($sp)            
    bne     t7, $at, lbl_809AD518      
    lw      a2, 0x0020($sp)            
    lw      t8, 0x07C0(s1)             # 000007C0
    lwc1    $f16, 0x0028(s0)           # 00000028
    lw      t9, 0x0028(t8)             # 00000028
    lh      t0, 0x0002(t9)             # 00000002
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f8, $f18                  
    c.lt.s  $f16, $f8                  
    nop
    bc1f    lbl_809AD528               
    nop
lbl_809AD518:
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809AD534 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809AD528:
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_809AD534:
    jal     func_809AF214              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t1, 0x0028($sp)            
    lw      t4, 0x0118(t1)             # 00000118
    beql    t4, $zero, lbl_809AD560    
    lw      $ra, 0x001C($sp)           
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t3, t2, $at                
    sw      t3, 0x0004(s0)             # 00000004
    lw      $ra, 0x001C($sp)           
lbl_809AD560:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809AD570:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s3, 0x0038($sp)            
    lui     s3, %hi(var_809B0068)      # s3 = 809B0000
    sw      s2, 0x0034($sp)            
    sw      s1, 0x0030($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    addiu   s3, s3, %lo(var_809B0068)  # s3 = 809B0068
    sw      $ra, 0x0044($sp)           
    sw      s5, 0x0040($sp)            
    sw      s4, 0x003C($sp)            
    sw      s0, 0x002C($sp)            
    sdc1    $f20, 0x0020($sp)          
    lw      t6, 0x0000(s3)             # 809B0068
    lui     $at, 0x0001                # $at = 00010000
    lw      s0, 0x1C44(s1)             # 00001C44
    bne     s2, t6, lbl_809AD5F0       
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lbu     v0, 0x0144(s2)             # 00000144
    beq     v0, $zero, lbl_809AD5F0    
    addiu   t7, v0, 0x0001             # t7 = 00000001
    andi    t8, t7, 0x00FF             # t8 = 00000001
    slti    $at, t8, 0x0015            
    sb      t7, 0x0144(s2)             # 00000144
    bne     $at, $zero, lbl_809ADD80   
    sw      $zero, 0x0134(s2)          # 00000134
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800C9568              
    addiu   a0, s2, 0x1000             # a0 = 00001000
    beq     $zero, $zero, lbl_809ADD80 
    sw      $zero, 0x0000(s3)          # 809B0068
lbl_809AD5F0:
    addiu   a2, s2, 0x1000             # a2 = 00001000
    sw      a2, 0x004C($sp)            
    addu    a0, s1, $at                
    addiu   a1, s2, 0x0F40             # a1 = 00000F40
    addiu   a3, s2, 0x00F0             # a3 = 000000F0
    jal     func_8008EC20              
    sw      s1, 0x00BC($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t5, 0x015A(s2)             # 0000015A
    lh      t9, 0x014C(s2)             # 0000014C
    lh      t1, 0x016C(s2)             # 0000016C
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x015A(s2)             # 0000015A
    lh      t3, 0x014A(s2)             # 0000014A
    lh      v1, 0x015A(s2)             # 0000015A
    addiu   t0, t9, 0x0001             # t0 = 00000001
    addiu   t2, t1, 0x0001             # t2 = 00000001
    addiu   t4, t3, 0x0001             # t4 = 00000001
    slti    $at, v1, 0x012C            
    sh      t0, 0x014C(s2)             # 0000014C
    sh      t2, 0x016C(s2)             # 0000016C
    bne     $at, $zero, lbl_809AD678   
    sh      t4, 0x014A(s2)             # 0000014A
    sh      $zero, 0x015A(s2)          # 0000015A
    lh      v1, 0x015A(s2)             # 0000015A
lbl_809AD678:
    lh      t7, 0x015C(s2)             # 0000015C
    addiu   t8, t7, 0xF448             # t8 = FFFFF448
    sh      t8, 0x015C(s2)             # 0000015C
    lh      a0, 0x015C(s2)             # 0000015C
    jal     func_800636C4              # sins?
    sh      v1, 0x00B4($sp)            
    lwc1    $f2, 0x0D5C(s2)            # 00000D5C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f0, $f2              
    lh      v0, 0x00B4($sp)            
    add.s   $f8, $f6, $f2              
    lui     $at, 0x3F00                # $at = 3F000000
    sll     t9, v0,  2                 
    addu    t0, s2, t9                 
    lui     s4, %hi(var_809B05F4)      # s4 = 809B0000
    add.s   $f10, $f4, $f8             
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s4, s4, %lo(var_809B05F4)  # s4 = 809B05F4
    or      s1, $zero, $zero           # s1 = 00000000
    swc1    $f10, 0x01E8(t0)           # 000001E8
    addiu   s5, $zero, 0x000C          # s5 = 0000000C
    addiu   s3, $zero, 0x012C          # s3 = 0000012C
lbl_809AD6D4:
    lh      v0, 0x0148(s2)             # 00000148
    sll     t7, s1,  2                 
    slti    $at, v0, 0x00C8            
    bnel    $at, $zero, lbl_809AD854   
    lh      t3, 0x015A(s2)             # 0000015A
    slti    $at, v0, 0x00C9            
    bne     $at, $zero, lbl_809AD7E0   
    sll     t5, s1,  1                 
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
    bne     v0, $at, lbl_809AD754      
    sll     t6, s1,  1                 
    lh      t1, 0x016E(s2)             # 0000016E
    sll     t3, s1,  2                 
    lui     $at, %hi(var_809B0698)     # $at = 809B0000
    beq     t1, $zero, lbl_809AD728    
    addu    $at, $at, t3               
    sll     t2, s1,  2                 
    lui     $at, %hi(var_809B006C)     # $at = 809B0000
    addu    $at, $at, t2               
    beq     $zero, $zero, lbl_809AD72C 
    lwc1    $f0, %lo(var_809B006C)($at) 
lbl_809AD728:
    lwc1    $f0, %lo(var_809B0698)($at) 
lbl_809AD72C:
    multu   s1, s5                     
    mfc1    a1, $f0                    
    mfc1    a2, $f20                   
    lui     a3, 0x42C8                 # a3 = 42C80000
    mflo    t4                         
    addu    s0, s2, t4                 
    jal     func_80064280              
    addiu   a0, s0, 0x0884             # a0 = 00000884
    beq     $zero, $zero, lbl_809AD8D8 
    lh      t2, 0x014C(s2)             # 0000014C
lbl_809AD754:
    lh      t5, 0x015A(s2)             # 0000015A
    sll     t9, s1,  2                 
    addu    t0, s4, t9                 
    addu    t7, t5, t6                 
    addiu   t8, t7, 0x00DC             # t8 = 000000DC
    div     $zero, t8, s3              
    mfhi    v0                         
    lwc1    $f2, 0x0000(t0)            # 00000000
    sll     v0, v0, 16                 
    multu   s1, s5                     
    mul.s   $f16, $f2, $f2             
    sra     v0, v0, 16                 
    sll     t1, v0,  2                 
    addu    t2, s2, t1                 
    lwc1    $f18, 0x01E8(t2)           # 000001E8
    bne     s3, $zero, lbl_809AD79C    
    nop
    break   # 0x01C00
lbl_809AD79C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s3, $at, lbl_809AD7B4      
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_809AD7B4      
    nop
    break   # 0x01800
lbl_809AD7B4:
    add.s   $f0, $f16, $f18            
    mflo    t3                         
    addu    s0, s2, t3                 
    mfc1    a2, $f20                   
    mfc1    a1, $f0                    
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    jal     func_80064280              
    addiu   a0, s0, 0x0884             # a0 = 00000884
    beq     $zero, $zero, lbl_809AD8D8 
    lh      t2, 0x014C(s2)             # 0000014C
lbl_809AD7E0:
    lh      t4, 0x015A(s2)             # 0000015A
    sll     t8, s1,  2                 
    addu    t9, s4, t8                 
    subu    t6, t4, t5                 
    addiu   t7, t6, 0x012C             # t7 = 0000012C
    div     $zero, t7, s3              
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    multu   s1, s5                     
    sll     t0, v0,  2                 
    addu    t1, s2, t0                 
    lwc1    $f4, 0x01E8(t1)            # 000001E8
    lwc1    $f6, 0x0000(t9)            # 00000000
    bne     s3, $zero, lbl_809AD824    
    nop
    break   # 0x01C00
lbl_809AD824:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s3, $at, lbl_809AD83C      
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_809AD83C      
    nop
    break   # 0x01800
lbl_809AD83C:
    mul.s   $f0, $f6, $f4              
    mflo    t2                         
    addu    s0, s2, t2                 
    beq     $zero, $zero, lbl_809AD8D4 
    swc1    $f0, 0x0884(s0)            # 00000884
    lh      t3, 0x015A(s2)             # 0000015A
lbl_809AD854:
    sll     t4, s1,  1                 
    addu    t8, s4, t7                 
    subu    t5, t3, t4                 
    addiu   t6, t5, 0x012C             # t6 = 0000012C
    div     $zero, t6, s3              
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t9, v0,  2                 
    multu   s1, s5                     
    addu    t0, s2, t9                 
    lwc1    $f10, 0x01E8(t0)           # 000001E8
    lwc1    $f8, 0x0000(t8)            # 00000000
    bne     s3, $zero, lbl_809AD894    
    nop
    break   # 0x01C00
lbl_809AD894:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s3, $at, lbl_809AD8AC      
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_809AD8AC      
    nop
    break   # 0x01800
lbl_809AD8AC:
    mul.s   $f0, $f8, $f10             
    mflo    t1                         
    addu    s0, s2, t1                 
    mfc1    a2, $f20                   
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    addiu   a0, s0, 0x0884             # a0 = 00000884
    mfc1    a1, $f0                    
    jal     func_80064280              
    nop
lbl_809AD8D4:
    lh      t2, 0x014C(s2)             # 0000014C
lbl_809AD8D8:
    mtc1    s1, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_809B0B98)     # $at = 809B0000
    mtc1    t2, $f16                   # $f16 = 0.00
    cvt.s.w $f10, $f8                  
    lwc1    $f6, %lo(var_809B0B98)($at) 
    lui     $at, %hi(var_809B0B9C)     # $at = 809B0000
    cvt.s.w $f18, $f16                 
    lwc1    $f16, %lo(var_809B0B9C)($at) 
    mul.s   $f4, $f18, $f6             
    nop
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f4, $f18             
    trunc.w.s $f8, $f6                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x01D0(s2)           # 000001D0
    lwc1    $f2, 0x0884(s0)            # 00000884
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mul.s   $f16, $f0, $f10            
    swc1    $f2, 0x088C(s0)            # 0000088C
    swc1    $f2, 0x0888(s0)            # 00000888
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0029            
    swc1    $f16, 0x0A70(s0)           # 00000A70
    lwc1    $f2, 0x0A70(s0)            # 00000A70
    swc1    $f2, 0x0A78(s0)            # 00000A78
    bne     $at, $zero, lbl_809AD6D4   
    swc1    $f2, 0x0A74(s0)            # 00000A74
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x01D0             # a0 = 000001D0
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    mfc1    a2, $f20                   
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s2, 0x0D5C             # a0 = 00000D5C
    lw      t9, 0x0140(s2)             # 00000140
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x00BC($sp)            
    jalr    $ra, t9                    
    nop
    or      s1, $zero, $zero           # s1 = 00000000
    sll     t4, s1,  1                 
lbl_809AD9AC:
    addu    v0, s2, t4                 
    lh      v1, 0x016E(v0)             # 0000016E
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    beq     v1, $zero, lbl_809AD9CC    
    sra     s1, s1, 16                 
    addiu   t5, v1, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x016E(v0)             # 0000016E
lbl_809AD9CC:
    slti    $at, s1, 0x0005            
    bnel    $at, $zero, lbl_809AD9AC   
    sll     t4, s1,  1                 
    addiu   a0, s2, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s2)             # 0000008A
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624              
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_8002121C              
    or      a0, s2, $zero              # a0 = 00000000
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    mfc1    a1, $f20                   
    addiu   a0, s2, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   s0, s2, 0x0024             # s0 = 00000024
    or      a0, s0, $zero              # a0 = 00000024
    jal     func_809A62A8              
    lui     a1, 0x4220                 # a1 = 42200000
    beq     v0, $zero, lbl_809ADA40    
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFDC
    lw      t7, 0x0100(s2)             # 00000100
    sw      t7, 0x0000(s0)             # 00000024
    lw      t6, 0x0104(s2)             # 00000104
    sw      t6, 0x0004(s0)             # 00000028
    lw      t7, 0x0108(s2)             # 00000108
    sw      t7, 0x0008(s0)             # 0000002C
lbl_809ADA40:
    lh      t8, 0x014C(s2)             # 0000014C
    andi    t0, t8, 0x0007             # t0 = 00000000
    bnel    t0, $zero, lbl_809ADB00    
    lh      t0, 0x01BC(s2)             # 000001BC
    lw      t2, 0x0000(s0)             # 00000024
    sw      t2, 0x0000(a1)             # FFFFFFDC
    lw      t1, 0x0004(s0)             # 00000028
    sw      t1, 0x0004(a1)             # FFFFFFE0
    lw      t2, 0x0008(s0)             # 0000002C
    sw      t2, 0x0008(a1)             # FFFFFFE4
    lh      v0, 0x0148(s2)             # 00000148
    slti    $at, v0, 0x00C8            
    beq     $at, $zero, lbl_809ADA84   
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f0                   # $f0 = 400.00
    beq     $zero, $zero, lbl_809ADAAC 
    lui     $at, 0x4040                # $at = 40400000
lbl_809ADA84:
    slti    $at, v0, 0x00C9            
    bne     $at, $zero, lbl_809ADAA8   
    mov.s   $f0, $f20                  
    lw      t9, 0x0F28(s2)             # 00000F28
    sw      t9, 0x0000(a1)             # FFFFFFDC
    lw      t3, 0x0F2C(s2)             # 00000F2C
    sw      t3, 0x0004(a1)             # FFFFFFE0
    lw      t9, 0x0F30(s2)             # 00000F30
    sw      t9, 0x0008(a1)             # FFFFFFE4
lbl_809ADAA8:
    lui     $at, 0x4040                # $at = 40400000
lbl_809ADAAC:
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     $at, %hi(var_809B0BA0)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0BA0)($at) 
    mul.s   $f18, $f0, $f4             
    lwc1    $f6, 0x0194(s2)            # 00000194
    lw      t4, 0x00BC($sp)            
    lui     a0, 0x0001                 # a0 = 00010000
    mul.s   $f10, $f6, $f8             
    addu    a0, a0, t4                 
    lw      a0, 0x1E10(a0)             # 00011E10
    mfc1    a3, $f18                   
    mfc1    a2, $f0                    
    addiu   t7, $zero, 0x012C          # t7 = 0000012C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    trunc.w.s $f16, $f10                 
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    mfc1    t6, $f16                   
    jal     func_809A63A0              
    sw      t6, 0x0010($sp)            
    lh      t0, 0x01BC(s2)             # 000001BC
lbl_809ADB00:
    lui     t1, %hi(var_809B07BC)      # t1 = 809B0000
    addiu   s4, $sp, 0x0064            # s4 = FFFFFFAC
    beq     t0, $zero, lbl_809ADC50    
    addiu   t1, t1, %lo(var_809B07BC)  # t1 = 809B07BC
    lw      t3, 0x0000(t1)             # 809B07BC
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    sw      t3, 0x0000(s4)             # FFFFFFAC
    lw      t2, 0x0004(t1)             # 809B07C0
    lui     $at, %hi(var_809B0BA4)     # $at = 809B0000
    sw      t2, 0x0004(s4)             # FFFFFFB0
    lw      t3, 0x0008(t1)             # 809B07C4
    sw      t3, 0x0008(s4)             # FFFFFFB4
    lh      t9, 0x01BC(s2)             # 000001BC
    addiu   t4, t9, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x01BC(s2)             # 000001BC
    lw      s3, 0x00BC($sp)            
    lwc1    $f12, %lo(var_809B0BA4)($at) 
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f20, 0x0088($sp)          
    swc1    $f20, 0x008C($sp)          
    swc1    $f4, 0x0090($sp)           
    jal     func_80026D64              
    addu    s3, s3, $at                
    mov.s   $f12, $f0                  
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, $sp, 0x0088            # a0 = FFFFFFD0
    jal     func_800AB958              
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFC4
    lh      v0, 0x0148(s2)             # 00000148
    slti    $at, v0, 0x00C9            
    bne     $at, $zero, lbl_809ADB98   
    addiu   $at, $zero, 0x00CB         # $at = 000000CB
    beql    v0, $at, lbl_809ADB9C      
    slti    $at, v0, 0x0064            
    beq     $zero, $zero, lbl_809ADBB0 
    addiu   s1, $zero, 0x0026          # s1 = 00000026
lbl_809ADB98:
    slti    $at, v0, 0x0064            
lbl_809ADB9C:
    beq     $at, $zero, lbl_809ADBB0   
    or      s1, $zero, $zero           # s1 = 00000000
    lw      a0, 0x004C($sp)            
    jal     func_80064780              
    addiu   a1, $zero, 0x30FA          # a1 = 000030FA
lbl_809ADBB0:
    multu   s1, s5                     
    lwc1    $f6, 0x007C($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    mflo    t5                         
    addu    s0, s2, t5                 
    lwc1    $f18, 0x0D60(s0)           # 00000D84
    add.s   $f8, $f18, $f6             
    jal     func_80026D64              
    swc1    $f8, 0x0070($sp)           
    lw      t6, 0x00BC($sp)            
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lw      t7, 0x07C0(t6)             # 000007C0
    lui     $at, %hi(var_809B0BA8)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BA8)($at) 
    lw      t8, 0x0028(t7)             # 00000028
    lh      t0, 0x0002(t8)             # 00000002
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    lwc1    $f10, 0x0084($sp)          
    sub.s   $f18, $f16, $f4            
    add.s   $f6, $f0, $f18             
    swc1    $f6, 0x0074($sp)           
    lwc1    $f8, 0x0D68(s0)            # 00000D8C
    add.s   $f16, $f8, $f10            
    jal     func_80026D64              
    swc1    $f16, 0x0078($sp)          
    lui     $at, %hi(var_809B0BAC)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0BAC)($at) 
    lw      a0, 0x1E10(s3)             # 00001F3C
    addiu   t1, s0, 0x0D60             # t1 = 00000D84
    add.s   $f18, $f0, $f4             
    sw      t1, 0x0014($sp)            
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFB8
    or      a2, s4, $zero              # a2 = FFFFFFAC
    swc1    $f18, 0x0010($sp)          
    jal     func_809A6660              
    or      a3, s4, $zero              # a3 = FFFFFFAC
lbl_809ADC50:
    lh      v0, 0x014E(s2)             # 0000014E
    or      a0, s2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809ADC64    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x014E(s2)             # 0000014E
lbl_809ADC64:
    lh      v0, 0x0150(s2)             # 00000150
    beq     v0, $zero, lbl_809ADC74    
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0150(s2)             # 00000150
lbl_809ADC74:
    lbu     v0, 0x01C2(s2)             # 000001C2
    beq     v0, $zero, lbl_809ADC84    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x01C2(s2)             # 000001C2
lbl_809ADC84:
    lbu     t4, 0x01C1(s2)             # 000001C1
    beql    t4, $zero, lbl_809ADD3C    
    lh      t1, 0x0152(s2)             # 00000152
    jal     func_809A995C              
    lw      a1, 0x00BC($sp)            
    lh      t5, 0x0150(s2)             # 00000150
    bnel    t5, $zero, lbl_809ADD1C    
    lh      t8, 0x0162(s2)             # 00000162
    lh      v0, 0x0148(s2)             # 00000148
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beql    a0, v0, lbl_809ADD1C       
    lh      t8, 0x0162(s2)             # 00000162
    beql    a1, v0, lbl_809ADD1C       
    lh      t8, 0x0162(s2)             # 00000162
    lw      v0, 0x013C(s2)             # 0000013C
    beql    v0, $zero, lbl_809ADCE4    
    lh      t6, 0x0162(s2)             # 00000162
    lh      v1, 0x0148(v0)             # 00000148
    beql    a0, v1, lbl_809ADD1C       
    lh      t8, 0x0162(s2)             # 00000162
    beql    a1, v1, lbl_809ADD1C       
    lh      t8, 0x0162(s2)             # 00000162
    lh      t6, 0x0162(s2)             # 00000162
lbl_809ADCE4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t6, $zero, lbl_809ADD18    
    lw      a0, 0x00BC($sp)            
    addu    s0, a0, $at                
    addiu   s1, s2, 0x100C             # s1 = 0000100C
    or      a2, s1, $zero              # a2 = 0000100C
    jal     func_8004C130              # CollisionCheck_setOT
    or      a1, s0, $zero              # a1 = 00000024
    lw      a0, 0x00BC($sp)            
    or      a1, s0, $zero              # a1 = 00000024
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s1, $zero              # a2 = 0000100C
lbl_809ADD18:
    lh      t8, 0x0162(s2)             # 00000162
lbl_809ADD1C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t8, $zero, lbl_809ADD38    
    lw      a0, 0x00BC($sp)            
    addu    a1, a0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s2, 0x100C             # a2 = 0000100C
lbl_809ADD38:
    lh      t1, 0x0152(s2)             # 00000152
lbl_809ADD3C:
    lh      t3, 0x0154(s2)             # 00000154
    lh      t4, 0x0156(s2)             # 00000156
    lh      t6, 0x0158(s2)             # 00000158
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    addiu   t2, t1, 0x0001             # t2 = 00000001
    addiu   t9, t3, 0x0001             # t9 = 00000001
    addiu   t5, t4, 0xFFFD             # t5 = FFFFFFFD
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t2, 0x0152(s2)             # 00000152
    sh      t9, 0x0154(s2)             # 00000154
    sh      t5, 0x0156(s2)             # 00000156
    sh      t7, 0x0158(s2)             # 00000158
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_800642F0              
    addiu   a0, s2, 0x01B8             # a0 = 000001B8
lbl_809ADD80:
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    lw      s2, 0x0034($sp)            
    lw      s3, 0x0038($sp)            
    lw      s4, 0x003C($sp)            
    lw      s5, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_809ADDA8:
    lwc1    $f4, 0x0000(a3)            # 00000000
    lw      t8, 0x001C(a2)             # 0000001C
    sll     v0, a1,  6                 
    trunc.w.s $f6, $f4                   
    addu    t9, t8, v0                 
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0004(a3)            # 00000004
    lw      t2, 0x001C(a2)             # 0000001C
    trunc.w.s $f10, $f8                  
    addu    t3, t2, v0                 
    mfc1    t1, $f10                   
    nop
    sh      t1, 0x0032(t3)             # 00000032
    lwc1    $f16, 0x0008(a3)           # 00000008
    lw      t6, 0x001C(a2)             # 0000001C
    trunc.w.s $f18, $f16                 
    addu    t8, t6, v0                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x0034(t8)             # 00000034
    lh      t7, 0x0148(a0)             # 00000148
    slti    $at, t7, 0x0006            
    beql    $at, $zero, lbl_809ADE44   
    lw      t3, 0x001C(a2)             # 0000001C
    lw      t9, 0x001C(a2)             # 0000001C
    addu    v1, t9, v0                 
    lh      t0, 0x002E(v1)             # 0000002E
    lwc1    $f4, 0x0038(v1)            # 00000038
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f4, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    jr      $ra                        
    sh      t1, 0x0036(v1)             # 00000036
lbl_809ADE40:
    lw      t3, 0x001C(a2)             # 0000001C
lbl_809ADE44:
    addu    t4, t3, v0                 
    sh      $zero, 0x0036(t4)          # 00000036
    jr      $ra                        
    nop


func_809ADE54:
    addiu   $sp, $sp, 0xFEC8           # $sp = FFFFFEC8
    sw      s7, 0x0064($sp)            
    sw      s1, 0x004C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lw      v1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s7, $at                
    lw      s0, 0x02C4(v1)             # 000002C4
    addiu   s0, s0, 0xF5C0             # s0 = FFFFF5C0
    or      s8, s0, $zero              # s8 = FFFFF5C0
    sw      s0, 0x02C4(v1)             # 000002C4
    lb      t6, 0x0A4E(v0)             # 00000A4E
    lw      s4, 0x0000(s7)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0118($sp)           
    lb      t7, 0x0A4F(v0)             # 00000A4F
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x011C($sp)          
    lb      t8, 0x0A50(v0)             # 00000A50
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_800AA6EC              
    swc1    $f18, 0x0120($sp)          
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0030             # t2 = DB060030
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s4)             # 000002D0
    sw      s0, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0024(s1)           # 00000024
    lwc1    $f14, 0x0028(s1)           # 00000028
    jal     func_800AA7F4              
    lw      a2, 0x002C(s1)             # 0000002C
    lh      t3, 0x00B6(s1)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809B0BB0)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B0BB0)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lh      t4, 0x00B4(s1)             # 000000B4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t4, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_809B0BB4)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0BB4)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AA9E0              
    nop
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x71AC          # a1 = 000071AC
    jal     func_809A6160              
    addiu   a2, $zero, 0x263A          # a2 = 0000263A
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f30                  # $f30 = 0.50
    mtc1    $zero, $f28                # $f28 = 0.00
    or      s3, $zero, $zero           # s3 = 00000000
lbl_809ADFC8:
    slti    $at, s3, 0x0002            
    beq     $at, $zero, lbl_809AE004   
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    jal     func_800AA6EC              
    nop
    mfc1    a2, $f28                   
    mov.s   $f12, $f28                 
    mov.s   $f14, $f28                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t5, s3,  2                 
    subu    t5, t5, s3                 
    sll     t5, t5,  2                 
    beq     $zero, $zero, lbl_809AE138 
    addu    s0, s1, t5                 
lbl_809AE004:
    slti    $at, s3, 0x0003            
    bne     $at, $zero, lbl_809AE0A0   
    sll     t6, s3,  2                 
    subu    t6, t6, s3                 
    sll     t6, t6,  2                 
    addu    t7, s1, t6                 
    mfc1    a2, $f28                   
    lwc1    $f14, 0x0684(t7)           # 00000684
    mov.s   $f12, $f28                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t8, s3,  2                 
    subu    t8, t8, s3                 
    sll     t8, t8,  1                 
    addu    s0, s1, t8                 
    lh      t9, 0x0C50(s0)             # 00000210
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t9, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_809B0BB8)     # $at = 809B0000
    lwc1    $f8, %lo(var_809B0BB8)($at) 
    cvt.s.w $f18, $f16                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lh      t0, 0x0C54(s0)             # 00000214
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809B0BBC)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0BBC)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AAD4C              
    nop
lbl_809AE0A0:
    sll     t1, s3,  2                 
    subu    t1, t1, s3                 
    sll     t1, t1,  2                 
    jal     func_800AA6EC              
    addu    s0, s1, t1                 
    lwc1    $f8, 0x0A58(s0)            # 00000018
    lwc1    $f10, 0x086C(s0)           # FFFFFE2C
    lwc1    $f18, 0x0050(s1)           # 00000050
    lwc1    $f4, 0x0A5C(s0)            # 0000001C
    add.s   $f16, $f8, $f10            
    lwc1    $f6, 0x0870(s0)            # FFFFFE30
    lwc1    $f10, 0x0054(s1)           # 00000054
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f16, $f18           
    add.s   $f8, $f4, $f6              
    lwc1    $f18, 0x0874(s0)           # FFFFFE34
    lwc1    $f16, 0x0A60(s0)           # 00000020
    lwc1    $f6, 0x0058(s1)            # 00000058
    mul.s   $f14, $f8, $f10            
    add.s   $f4, $f16, $f18            
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_800AA8FC              
    nop
    lh      t2, 0x0162(s1)             # 00000162
    slt     $at, s3, t2                
    bnel    $at, $zero, lbl_809AE13C   
    lh      t4, 0x015A(s1)             # 0000015A
    lh      t3, 0x0164(s1)             # 00000164
    slt     $at, t3, s3                
    bnel    $at, $zero, lbl_809AE13C   
    lh      t4, 0x015A(s1)             # 0000015A
    lwc1    $f12, 0x0198(s1)           # 00000198
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    or      s2, $zero, $zero           # s2 = 00000000
lbl_809AE138:
    lh      t4, 0x015A(s1)             # 0000015A
lbl_809AE13C:
    sll     t5, s3,  1                 
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    subu    v0, t4, t5                 
    addiu   v0, v0, 0x012C             # v0 = 0000012C
    div     $zero, v0, $at             
    lh      t6, 0x0148(s1)             # 00000148
    mfhi    v0                         
    sll     v0, v0, 16                 
    slti    $at, t6, 0x00C8            
    beq     $at, $zero, lbl_809AE1B0   
    sra     v0, v0, 16                 
    sll     t7, v0,  2                 
    addu    t8, s1, t7                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x01E8(t8)           # 000001E8
    lwc1    $f4, 0x0D5C(s1)            # 00000D5C
    lui     $at, 0x447A                # $at = 447A0000
    sub.s   $f18, $f10, $f16           
    mtc1    $at, $f8                   # $f8 = 1000.00
    mtc1    $at, $f16                  # $f16 = 1000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f18, $f4             
    lwc1    $f4, 0x0190(s1)            # 00000190
    mul.s   $f10, $f6, $f8             
    div.s   $f18, $f10, $f16           
    mul.s   $f12, $f4, $f18            
    jal     func_800AAB94              
    nop
lbl_809AE1B0:
    lui     $at, %hi(var_809B0BC0)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BC0)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AB8D8              
    or      a0, s8, $zero              # a0 = FFFFF5C0
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      s8, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    bne     s3, $zero, lbl_809AE1FC    
    addiu   a0, s0, 0x0D60             # a0 = 00000320
    addiu   a1, s7, 0x00E0             # a1 = 000000E0
    addiu   a2, $sp, 0x0118            # a2 = FFFFFFE0
    jal     func_80022400              
    lw      a3, 0x0000(s7)             # 00000000
lbl_809AE1FC:
    bne     s3, $zero, lbl_809AE22C    
    addiu   s6, s0, 0x0D60             # s6 = 00000320
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x6800             # t3 = 06006800
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s4)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809AE254 
    nop
lbl_809AE22C:
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    sll     t6, s3,  2                 
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    lui     t7, %hi(var_809B07C8)      # t7 = 809B0000
    addu    t7, t7, t6                 
    sw      t5, 0x0000(v1)             # 00000000
    lw      t7, %lo(var_809B07C8)(t7)  
    sw      t7, 0x0004(v1)             # 00000004
lbl_809AE254:
    jal     func_800AA724              
    nop
    slti    $at, s3, 0x0002            
    bne     $at, $zero, lbl_809AE418   
    nop
    beq     s2, $zero, lbl_809AE418    
    nop
    lh      t8, 0x016A(s1)             # 0000016A
    lui     s5, 0x0600                 # s5 = 06000000
    addiu   t9, t8, 0x0026             # t9 = 00000026
    slt     $at, s3, t9                
    beq     $at, $zero, lbl_809AE418   
    lui     $at, 0x0001                # $at = 00010000
    lh      v0, 0x0148(s1)             # 00000148
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s2, s7, $at                
    addiu   $at, $zero, 0x00C9         # $at = 000000C9
    beq     v0, $at, lbl_809AE2AC      
    addiu   s5, s5, 0x0140             # s5 = 06000140
    addiu   $at, $zero, 0x00CA         # $at = 000000CA
    bne     v0, $at, lbl_809AE30C      
    nop
lbl_809AE2AC:
    lh      t0, 0x014A(s1)             # 0000014A
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f8                   # $f8 = -15.00
    andi    t1, t0, 0x0003             # t1 = 00000000
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f20, $f6                  
    mul.s   $f20, $f20, $f8            
    jal     func_809A6180              
    nop
    lui     $at, %hi(var_809B0BC4)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0BC4)($at) 
    lui     $at, %hi(var_809B0BC8)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0BC8)($at) 
    mul.s   $f16, $f0, $f10            
    lwc1    $f6, 0x0050(s1)            # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    add.s   $f18, $f16, $f4            
    mul.s   $f8, $f18, $f6             
    nop
    mul.s   $f22, $f8, $f10            
    beq     $zero, $zero, lbl_809AE348 
    nop
lbl_809AE30C:
    jal     func_809A6180              
    mov.s   $f20, $f28                 
    lui     $at, %hi(var_809B0BCC)     # $at = 809B0000
    lwc1    $f16, %lo(var_809B0BCC)($at) 
    lui     $at, %hi(var_809B0BD0)     # $at = 809B0000
    lwc1    $f18, %lo(var_809B0BD0)($at) 
    mul.s   $f4, $f0, $f16             
    lwc1    $f8, 0x0050(s1)            # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    add.s   $f6, $f4, $f18             
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f22, $f10, $f16           
    nop
lbl_809AE348:
    jal     func_800AA6EC              
    nop
    jal     func_809A6180              
    nop
    jal     func_809A6180              
    mov.s   $f24, $f0                  
    jal     func_809A6180              
    mov.s   $f26, $f0                  
    sub.s   $f18, $f24, $f30           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lwc1    $f4, 0x086C(s0)            # FFFFFE2C
    sub.s   $f8, $f26, $f30            
    mul.s   $f6, $f18, $f2             
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f18, 0x0874(s0)           # FFFFFE34
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f4, $f6             
    sub.s   $f4, $f0, $f30             
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f6, $f4, $f2              
    add.s   $f14, $f16, $f20           
    mul.s   $f8, $f18, $f6             
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    jal     func_800ABE54              
    or      a0, s2, $zero              # a0 = 00000000
    mov.s   $f12, $f22                 
    mov.s   $f14, $f22                 
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02C0(s4)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s2, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s4)             # 000002C0
    sw      t3, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t4, s0, 0x0008             # t4 = FFFFF5C8
    sw      t4, 0x02C0(s4)             # 000002C0
    sw      s5, 0x0004(s0)             # FFFFF5C4
    sw      t5, 0x0000(s0)             # FFFFF5C0
    jal     func_800AA724              
    nop
lbl_809AE418:
    lui     a0, %hi(var_809B0878)      # a0 = 809B0000
    addiu   a0, a0, %lo(var_809B0878)  # a0 = 809B0878
    jal     func_800AB958              
    or      a1, s6, $zero              # a1 = 00000320
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bne     s3, $at, lbl_809AE440      
    lui     a0, %hi(var_809B0878)      # a0 = 809B0000
    addiu   a0, a0, %lo(var_809B0878)  # a0 = 809B0878
    jal     func_800AB958              
    addiu   a1, s1, 0x0038             # a1 = 00000038
lbl_809AE440:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     s3, $at, lbl_809AE4E4      
    addiu   t6, $sp, 0x00A0            # t6 = FFFFFF68
    lui     t7, %hi(var_809B086C)      # t7 = 809B0000
    addiu   t7, t7, %lo(var_809B086C)  # t7 = 809B086C
    lw      t9, 0x0000(t7)             # 809B086C
    lw      t8, 0x0004(t7)             # 809B0870
    addiu   s0, s1, 0x01D4             # s0 = 000001D4
    sw      t9, 0x0000(t6)             # FFFFFF68
    lw      t9, 0x0008(t7)             # 809B0874
    sw      t8, 0x0004(t6)             # FFFFFF6C
    jal     func_800AA6EC              
    sw      t9, 0x0008(t6)             # FFFFFF70
    lh      t0, 0x0166(s1)             # 00000166
    lwc1    $f10, 0x00A0($sp)          
    lui     $at, 0xBF80                # $at = BF800000
    beq     t0, $zero, lbl_809AE498    
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFF68
    mtc1    $at, $f16                  # $f16 = -1.00
    nop
    mul.s   $f4, $f10, $f16            
    swc1    $f4, 0x00A0($sp)           
lbl_809AE498:
    jal     func_800AB958              
    or      a1, s0, $zero              # a1 = 000001D4
    lui     $at, %hi(var_809B0BD4)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BD4)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA740              
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF74
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF74
    addiu   a1, $sp, 0x0098            # a1 = FFFFFF60
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t1, 0x0098($sp)            
    sh      t1, 0x01E0(s1)             # 000001E0
    lh      t2, 0x009A($sp)            
    sh      t2, 0x01E2(s1)             # 000001E2
    lh      t3, 0x009C($sp)            
    jal     func_800AA724              
    sh      t3, 0x01E4(s1)             # 000001E4
lbl_809AE4E4:
    slti    $at, s3, 0x0026            
    beq     $at, $zero, lbl_809AE518   
    andi    t4, s3, 0x0001             # t4 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_809AE518      
    or      a0, s1, $zero              # a0 = 00000000
    bgez    s3, lbl_809AE50C           
    sra     a1, s3,  1                 
    addiu   $at, s3, 0x0001            # $at = 00000001
    sra     a1, $at,  1                
lbl_809AE50C:
    addiu   a2, s1, 0x100C             # a2 = 0000100C
    jal     func_809ADDA8              
    or      a3, s6, $zero              # a3 = 00000320
lbl_809AE518:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0029            
    bne     $at, $zero, lbl_809ADFC8   
    addiu   s8, s8, 0x0040             # s8 = FFFFF600
    jal     func_800AA724              
    nop
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
    addiu   $sp, $sp, 0x0138           # $sp = 00000000


func_809AE580:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0040($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0068($sp)            
    jal     func_800AA6EC              
    lw      s1, 0x0000(s2)             # 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      t6, 0x07C0(s2)             # 000007C0
    mtc1    $zero, $f12                # $f12 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t7, 0x0028(t6)             # 00000028
    mfc1    a2, $f12                   
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f4                    # $f4 = 0.00
    jal     func_800AA7F4              
    cvt.s.w $f14, $f4                  
    lw      v0, 0x0068($sp)            
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0034             # t1 = DB060034
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lwc1    $f10, 0x01A0(v0)           # 000001A0
    lwc1    $f6, 0x019C(v0)            # 0000019C
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lwc1    $f18, 0x01A4(v0)           # 000001A4
    trunc.w.s $f8, $f6                   
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f8                    
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f4                    
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     t9, t8, 16                 
    sra     t1, t9, 16                 
    sw      t1, 0x001C($sp)            
    lwc1    $f6, 0x01A8(v0)            # 000001A8
    mfc1    a3, $f16                   
    sw      t7, 0x0028($sp)            
    trunc.w.s $f8, $f6                   
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t6, 0x0024($sp)            
    mfc1    t3, $f8                    
    sw      s0, 0x0058($sp)            
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    jal     func_8007EB84              
    sw      t5, 0x0020($sp)            
    lw      t0, 0x0058($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t2, t2, 0xFFFF             # t2 = FA00FFFF
    lui     t3, %hi(var_809B0064)      # t3 = 809B0000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, %lo(var_809B0064)(t3)  
    lui     $at, 0xC8FF                # $at = C8FF0000
    ori     $at, $at, 0xFF00           # $at = C8FFFF00
    lwc1    $f10, 0x01B4(t3)           # 809B01B4
    mfc1    a2, $f12                   
    lui     t2, 0xFB00                 # t2 = FB000000
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = C8FFFF00
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0x0064                 # t3 = 00640000
    ori     t3, t3, 0xFF50             # t3 = 0064FF50
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0048($sp)            
    lw      a1, 0x0048($sp)            
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x3850             # t8 = 06003850
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    jal     func_800AA724              
    nop
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809AE788:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    lw      t6, 0x07C0(s2)             # 000007C0
    lwc1    $f8, 0x0028(s1)            # 00000028
    lw      s0, 0x0000(s2)             # 00000000
    lw      t7, 0x0028(t6)             # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    lh      t8, 0x0002(t7)             # 00000002
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_809AE7E4               
    lbu     t9, 0x01C1(s1)             # 000001C1
    jal     func_809AE580              
    or      a1, s2, $zero              # a1 = 00000000
    lbu     t9, 0x01C1(s1)             # 000001C1
lbl_809AE7E4:
    beql    t9, $zero, lbl_809AEC4C    
    lw      t7, 0x07C0(s2)             # 000007C0
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    lui     t5, %hi(var_809B0064)      # t5 = 809B0000
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, %lo(var_809B0064)(t5)  
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    lh      t0, 0x014C(t5)             # 809B014C
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    subu    $at, $zero, t0             
    sll     v0, $at,  2                
    sll     a2, t0,  2                 
    subu    v0, v0, $at                
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    subu    a2, a2, t0                 
    or      a3, a2, $zero              # a3 = 00000000
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      v0, 0x001C($sp)            
    sw      v0, 0x0020($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    sw      t3, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x00CC($sp)            
    lw      t1, 0x00CC($sp)            
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_809B0064)      # t6 = 809B0000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, %lo(var_809B0064)(t6)  
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    lh      t0, 0x014C(t6)             # 809B014C
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    $at, $zero, t0             
    sll     t3, $at,  2                
    addu    t3, t3, $at                
    sll     t3, t3,  1                 
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sll     a2, t0,  2                 
    sw      t9, 0x0018($sp)            
    sw      t3, 0x0020($sp)            
    sw      t8, 0x0014($sp)            
    sw      t4, 0x0024($sp)            
    sw      t5, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t7, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x00C8($sp)            
    jal     func_8007EB84              
    addu    a2, a2, t0                 
    lw      t2, 0x00C8($sp)            
    sw      v0, 0x0004(t2)             # 00000004
    lh      t6, 0x014A(s1)             # 0000014A
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mtc1    t6, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f10                 
    mul.s   $f12, $f18, $f4            
    jal     func_800AA9E0              
    nop
    lh      t7, 0x014A(s1)             # 0000014A
    lui     $at, %hi(var_809B0BD8)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0BD8)($at) 
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6                   
    mul.s   $f12, $f8, $f10            
    jal     func_800AAD4C              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x00C4($sp)            
    lw      t0, 0x00C4($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x0194(s1)           # 00000194
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t3, t9, $at                # t3 = FFFFFF00
    sw      t3, 0x0004(v1)             # 00000004
    jal     func_80022554              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xFA00                 # a3 = FA000000
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    ori     a3, a3, 0x8080             # a3 = FA008080
    lui     t2, 0x8000                 # t2 = 80000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5300             # a0 = 06005300
    sll     t6, a0,  4                 
    srl     t7, t6, 28                 
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sll     t8, t7,  2                 
    lui     t5, 0xDE00                 # t5 = DE000000
    addu    t9, t0, t8                 
    sw      t5, 0x0000(v1)             # 00000000
    lw      t3, 0x0000(t9)             # 00000000
    and     t4, a0, t1                 
    lui     a0, 0x0600                 # a0 = 06000000
    addu    t5, t3, t4                 
    addu    t6, t5, t2                 
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x00DC                 # t4 = 00DC0000
    ori     t4, t4, 0xFF80             # t4 = 00DCFF80
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lh      t5, 0x014E(s1)             # 0000014E
    addiu   a0, a0, 0x5438             # a0 = 06005438
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_809AEA8C    
    lui     t5, 0xDE00                 # t5 = DE000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFF3C                 # t8 = FF3C0000
    ori     t8, t8, 0x00FF             # t8 = FF3C00FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_809AEAA8 
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809AEA8C:
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809AEAA8:
    sll     t6, a0,  4                 
    srl     t7, t6, 28                 
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sll     t8, t7,  2                 
    addu    t9, t0, t8                 
    sw      t5, 0x0000(v1)             # 00000000
    lw      t3, 0x0000(t9)             # 00000008
    and     t4, a0, t1                 
    addu    t5, t3, t4                 
    addu    t6, t5, t2                 
    sw      t6, 0x0004(v1)             # 00000004
    lh      t7, 0x0156(s1)             # 00000156
    beql    t7, $zero, lbl_809AEB04    
    lw      t8, 0x07C0(s2)             # 000007C0
    lwc1    $f0, 0x0028(s1)            # 00000028
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.le.s  $f6, $f0                   
    nop
    bc1tl   lbl_809AEB30               
    lw      t4, 0x07C0(s2)             # 000007C0
    lw      t8, 0x07C0(s2)             # 000007C0
lbl_809AEB04:
    lwc1    $f0, 0x0028(s1)            # 00000028
    lw      t9, 0x0028(t8)             # FF3C0127
    lh      t3, 0x0002(t9)             # 0000000A
    mtc1    t3, $f8                    # $f8 = NaN
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_809AEC4C               
    lw      t7, 0x07C0(s2)             # 000007C0
    lw      t4, 0x07C0(s2)             # 000007C0
lbl_809AEB30:
    lui     $at, 0xC38C                # $at = C38C0000
    lw      t5, 0x0028(t4)             # 00000030
    lh      t6, 0x0002(t5)             # DE000002
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_809AEB68               
    mtc1    $zero, $f14                # $f14 = 0.00
    mtc1    $at, $f14                  # $f14 = -280.00
    beq     $zero, $zero, lbl_809AEB6C 
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    mtc1    $zero, $f14                # $f14 = 0.00
lbl_809AEB68:
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
lbl_809AEB6C:
    lw      a0, 0x0000(s2)             # 00000000
    swc1    $f14, 0x00A4($sp)          
    jal     func_8007E404              
    sh      a1, 0x00A2($sp)            
    lh      a1, 0x00A2($sp)            
    lwc1    $f14, 0x00A4($sp)          
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    andi    t9, a1, 0x00FF             # t9 = 00000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0024(s1)           # 00000024
    lw      a2, 0x002C(s1)             # 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_809B0BDC)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BDC)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0098($sp)            
    lw      a2, 0x0098($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     a1, 0x0405                 # a1 = 04050000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, 0xE740             # a1 = 0404E740
    sll     t7, a1,  4                 
    srl     t8, t7, 28                 
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sll     t9, t8,  2                 
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t9                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t3, t4                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(v1)             # 00000004
    lw      t7, 0x07C0(s2)             # 000007C0
lbl_809AEC4C:
    lwc1    $f6, 0x0028(s1)            # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    lw      t8, 0x0028(t7)             # 00000028
    lh      t9, 0x0002(t8)             # 00000002
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f6, $f10                  
    nop
    bc1fl   lbl_809AEC84               
    lh      t3, 0x0F52(s1)             # 00000F52
    jal     func_809AE580              
    or      a1, s2, $zero              # a1 = 00000000
    lh      t3, 0x0F52(s1)             # 00000F52
lbl_809AEC84:
    beql    t3, $zero, lbl_809AEFB8    
    lui     a0, 0x0001                 # a0 = 00010000
    lh      t4, 0x0F50(s1)             # 00000F50
    slti    $at, t4, 0x0004            
    beql    $at, $zero, lbl_809AEFB8   
    lui     a0, 0x0001                 # a0 = 00010000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0xFFFF             # t6 = FA00FFFF
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x0178(s1)           # 00000178
    lui     $at, 0xC8FF                # $at = C8FF0000
    ori     $at, $at, 0xFF00           # $at = C8FFFF00
    trunc.w.s $f4, $f18                  
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0034             # t8 = DB060034
    lui     v0, %hi(var_809B0064)      # v0 = 809B0000
    mfc1    t3, $f4                    
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = C8FFFF00
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     $at, 0x0064                # $at = 00640000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x0178(s1)            # 00000178
    ori     $at, $at, 0xFF00           # $at = 0064FF00
    trunc.w.s $f6, $f8                   
    mfc1    t4, $f6                    
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = 0064FF00
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, %lo(var_809B0064)(v0)  
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lwc1    $f10, 0x019C(v0)           # 809B019C
    lwc1    $f4, 0x01A0(v0)            # 809B01A0
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lwc1    $f6, 0x01A4(v0)            # 809B01A4
    trunc.w.s $f18, $f10                 
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f10, $f6                  
    mfc1    a2, $f18                   
    trunc.w.s $f8, $f4                   
    mfc1    t8, $f10                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     t9, t8, 16                 
    sra     t3, t9, 16                 
    sw      t3, 0x001C($sp)            
    lwc1    $f18, 0x01A8(v0)           # 809B01A8
    mfc1    a3, $f8                    
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    trunc.w.s $f4, $f18                  
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    t5, $f4                    
    sw      t8, 0x0024($sp)            
    sw      t9, 0x0028($sp)            
    sll     t6, t5, 16                 
    sra     t7, t6, 16                 
    sw      t7, 0x0020($sp)            
    jal     func_8007EB84              
    sw      v1, 0x0058($sp)            
    lw      t2, 0x0058($sp)            
    sw      v0, 0x0004(t2)             # 00000004
    lwc1    $f10, 0x0F68(s1)           # 00000F68
    lwc1    $f18, 0x0F5C(s1)           # 00000F5C
    lwc1    $f8, 0x0F64(s1)            # 00000F64
    lwc1    $f6, 0x0F58(s1)            # 00000F58
    sub.s   $f4, $f10, $f18            
    sub.s   $f12, $f8, $f6             
    swc1    $f4, 0x008C($sp)           
    lwc1    $f6, 0x0F60(s1)            # 00000F60
    lwc1    $f8, 0x0F6C(s1)            # 00000F6C
    swc1    $f12, 0x0090($sp)          
    sub.s   $f14, $f8, $f6             
    jal     func_800CD76C              
    swc1    $f14, 0x0088($sp)          
    lwc1    $f16, 0x0090($sp)          
    lwc1    $f2, 0x0088($sp)           
    swc1    $f0, 0x0080($sp)           
    mul.s   $f10, $f16, $f16           
    lwc1    $f12, 0x008C($sp)          
    mul.s   $f18, $f2, $f2             
    add.s   $f0, $f10, $f18            
    jal     func_800CD76C              
    sqrt.s  $f14, $f0                  
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 10.00
    neg.s   $f4, $f0                   
    lwc1    $f12, 0x0080($sp)          
    swc1    $f4, 0x007C($sp)           
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f8, 0x0070($sp)           
    swc1    $f6, 0x0074($sp)           
    jal     func_800AAB94              
    swc1    $f10, 0x0078($sp)          
    lwc1    $f12, 0x007C($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x0070            # a0 = FFFFFF90
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFF84
    lwc1    $f18, 0x0F58(s1)           # 00000F58
    lwc1    $f4, 0x0064($sp)           
    lwc1    $f10, 0x0F60(s1)           # 00000F60
    lwc1    $f8, 0x0F5C(s1)            # 00000F5C
    add.s   $f12, $f18, $f4            
    lwc1    $f18, 0x006C($sp)          
    lwc1    $f6, 0x0068($sp)           
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f2, $f10, $f18            
    add.s   $f14, $f8, $f6             
    mfc1    a2, $f2                    
    jal     func_800AA7F4              
    nop
    lwc1    $f12, 0x0080($sp)          
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x007C($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t3, 0x014C(s1)             # 0000014C
    lui     $at, %hi(var_809B0BE0)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0BE0)($at) 
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f4                   
    mul.s   $f12, $f8, $f6             
    jal     func_800AAD4C              
    neg.s   $f12, $f12                 
    lh      t4, 0x014C(s1)             # 0000014C
    lui     $at, %hi(var_809B0BE4)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B0BE4)($at) 
    mtc1    t4, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f10                 
    mul.s   $f12, $f18, $f4            
    jal     func_800AAD4C              
    nop
    lui     $at, %hi(var_809B0BE8)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BE8)($at) 
    lui     $at, %hi(var_809B0BEC)     # $at = 809B0000
    lwc1    $f14, %lo(var_809B0BEC)($at) 
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t5, 0x014C(s1)             # 0000014C
    lui     $at, %hi(var_809B0BF0)     # $at = 809B0000
    lwc1    $f10, %lo(var_809B0BF0)($at) 
    mtc1    t5, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f8                   
    mul.s   $f12, $f6, $f10            
    jal     func_800AAD4C              
    neg.s   $f12, $f12                 
    lui     $at, %hi(var_809B0BF4)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BF4)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_809B0BF8)     # $at = 809B0000
    lwc1    $f12, %lo(var_809B0BF8)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x3850             # t3 = 06003850
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lui     a0, 0x0001                 # a0 = 00010000
lbl_809AEFB8:
    addu    a0, a0, s2                 
    lw      a0, 0x1E10(a0)             # 00011E10
    jal     func_809AF924              
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_809AEFE0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x0194(s1)            # 00000194
    mtc1    $at, $f6                   # $f6 = 1.50
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lui     t7, 0xFB00                 # t7 = FB000000
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0x9696                 # t8 = 96960000
    ori     t8, t8, 0x9600             # t8 = 96969600
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      t9, 0x0064($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t9)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0064($sp)            
    lh      a3, 0x0154(s1)             # 00000154
    lh      a2, 0x0152(s1)             # 00000152
    lw      a0, 0x0000(t3)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lh      t7, 0x0156(s1)             # 00000156
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t7, 0x001C($sp)            
    lh      t8, 0x0158(s1)             # 00000158
    sw      t1, 0x0028($sp)            
    sw      t9, 0x0024($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x0040($sp)            
    jal     func_8007EB84              
    sw      t8, 0x0020($sp)            
    lw      t0, 0x0040($sp)            
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0xFFFF             # t3 = FA00FFFF
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f18                  # $f18 = 12.00
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lwc1    $f16, 0x0194(s1)           # 00000194
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    mul.s   $f4, $f16, $f18            
    lui     $at, 0xC8FF                # $at = C8FF0000
    ori     $at, $at, 0xFF00           # $at = C8FFFF00
    div.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = C8FFFF00
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     $at, 0x0064                # $at = 00640000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f16, 0x0194(s1)           # 00000194
    ori     $at, $at, 0xFF00           # $at = 0064FF00
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = 0064FF00
    sw      t8, 0x0004(v1)             # 00000004
    lh      a0, 0x014C(s1)             # 0000014C
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xD700                 # t1 = D7000000
    mul.s   $f6, $f0, $f4              
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    ori     t1, t1, 0x0002             # t1 = D7000002
    sw      t1, 0x0000(v1)             # 00000000
    trunc.w.s $f8, $f6                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addiu   a0, a0, 0x015E             # a0 = 0000015E
    andi    a0, a0, 0xFFFF             # a0 = 0000015E
    sll     t3, a0, 16                 
    or      t4, t3, a0                 # t4 = 0000015E
    sw      t4, 0x0004(v1)             # 00000004
    lbu     t5, 0x01C1(s1)             # 000001C1
    or      a0, s1, $zero              # a0 = 00000000
    beql    t5, $zero, lbl_809AF204    
    lw      $ra, 0x003C($sp)           
    jal     func_809ADE54              
    lw      a1, 0x0064($sp)            
    lw      $ra, 0x003C($sp)           
lbl_809AF204:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809AF214:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s1, 0x0048($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s5, 0x0058($sp)            
    sw      s4, 0x0054($sp)            
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a0, 0x00C0($sp)            
    lui     t7, %hi(var_809B0884)      # t7 = 809B0000
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, t7, %lo(var_809B0884)  # t7 = 809B0884
    lw      t9, 0x0000(t7)             # 809B0884
    addu    s2, s1, $at                
    lui     $at, 0xC38C                # $at = C38C0000
    lw      s0, 0x1E10(s2)             # 00001E10
    addiu   t6, $sp, 0x00A0            # t6 = FFFFFFE0
    mtc1    $at, $f26                  # $f26 = -280.00
    lui     $at, 0xC1A0                # $at = C1A00000
    sw      t9, 0x0000(t6)             # FFFFFFE0
    lw      t9, 0x0008(t7)             # 809B088C
    lw      t8, 0x0004(t7)             # 809B0888
    mtc1    $at, $f24                  # $f24 = -20.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s5, $sp, 0x0078            # s5 = FFFFFFB8
    addiu   s4, $zero, 0x0004          # s4 = 00000004
    sw      t9, 0x0008(t6)             # FFFFFFE8
    sw      t8, 0x0004(t6)             # FFFFFFE4
lbl_809AF2A4:
    lbu     t0, 0x0024(s0)             # 00000024
    beql    t0, $zero, lbl_809AF8DC    
    addiu   s3, s3, 0x0001             # s3 = 00000001
    lbu     t1, 0x0025(s0)             # 00000025
    lbu     v0, 0x0026(s0)             # 00000026
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   t2, t1, 0x0001             # t2 = 00000001
    bne     v0, $zero, lbl_809AF320    
    sb      t2, 0x0025(s0)             # 00000025
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f2, 0x0010(s0)            # 00000010
    lwc1    $f8, 0x0004(s0)            # 00000004
    lwc1    $f12, 0x0014(s0)           # 00000014
    lwc1    $f16, 0x0008(s0)           # 00000008
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x0018(s0)            # 00000018
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x001C(s0)            # 0000001C
    swc1    $f6, 0x0000(s0)            # 00000000
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0020(s0)           # 00000020
    swc1    $f10, 0x0004(s0)           # 00000004
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x0008(s0)           # 00000008
    add.s   $f10, $f2, $f8             
    swc1    $f6, 0x000C(s0)            # 0000000C
    add.s   $f18, $f12, $f16           
    swc1    $f10, 0x0010(s0)           # 00000010
    beq     $zero, $zero, lbl_809AF328 
    swc1    $f18, 0x0014(s0)           # 00000014
lbl_809AF320:
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x0026(s0)             # 00000026
lbl_809AF328:
    lbu     v0, 0x0024(s0)             # 00000024
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lw      t4, 0x00C0($sp)            
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_809AF3DC   
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lh      t5, 0x0F50(t4)             # 00000F50
    slti    $at, t5, 0x0064            
    bnel    $at, $zero, lbl_809AF370   
    lw      a1, 0x0034(s0)             # 00000034
    lw      t6, 0x07C0(s1)             # 000007C0
    lw      t7, 0x0028(t6)             # 00000008
    lh      t8, 0x0002(t7)             # 809B0886
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0004(s0)            # 00000004
    lw      a1, 0x0034(s0)             # 00000034
lbl_809AF370:
    jal     func_80064280              
    lw      a3, 0x0038(s0)             # 00000038
    lh      t9, 0x002C(s0)             # 0000002C
    bnel    t9, $zero, lbl_809AF3BC    
    lh      t5, 0x002A(s0)             # 0000002A
    lh      t0, 0x002A(s0)             # 0000002A
    lh      v0, 0x002E(s0)             # 0000002E
    addiu   t1, t0, 0x000F             # t1 = 0000000F
    sh      t1, 0x002A(s0)             # 0000002A
    lh      t2, 0x002A(s0)             # 0000002A
    slt     $at, t2, v0                
    bnel    $at, $zero, lbl_809AF8DC   
    addiu   s3, s3, 0x0001             # s3 = 00000002
    lh      t3, 0x002C(s0)             # 0000002C
    sh      v0, 0x002A(s0)             # 0000002A
    addiu   t4, t3, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_809AF8D8 
    sh      t4, 0x002C(s0)             # 0000002C
    lh      t5, 0x002A(s0)             # 0000002A
lbl_809AF3BC:
    addiu   t6, t5, 0xFFFB             # t6 = FFFFFFFB
    sh      t6, 0x002A(s0)             # 0000002A
    lh      t7, 0x002A(s0)             # 0000002A
    bgtzl   t7, lbl_809AF8DC           
    addiu   s3, s3, 0x0001             # s3 = 00000003
    sh      $zero, 0x002A(s0)          # 0000002A
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
lbl_809AF3DC:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_809AF594      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      v1, 0x003C(s0)             # 0000003C
    bnel    v1, $zero, lbl_809AF490    
    lbu     t4, 0x0025(s0)             # 00000025
    lwc1    $f8, 0x001C(s0)            # 0000001C
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f20, $f8                  
    nop
    bc1fl   lbl_809AF444               
    mtc1    $at, $f4                   # $f4 = 2.00
    lw      t8, 0x07C0(s1)             # 000007C0
    lwc1    $f10, 0x0004(s0)           # 00000004
    lw      t9, 0x0028(t8)             # 00000028
    lh      t0, 0x0002(t9)             # 00000002
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    c.le.s  $f18, $f10                 
    nop
    bc1fl   lbl_809AF444               
    mtc1    $at, $f4                   # $f4 = 2.00
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
    mtc1    $at, $f4                   # $f4 = 2.00
lbl_809AF444:
    lwc1    $f6, 0x0010(s0)            # 00000010
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809AF46C               
    lh      t1, 0x002A(s0)             # 0000002A
    mtc1    $at, $f8                   # $f8 = 2.00
    nop
    swc1    $f8, 0x0010(s0)            # 00000010
    lh      t1, 0x002A(s0)             # 0000002A
lbl_809AF46C:
    addiu   t2, t1, 0xFFEC             # t2 = FFFFFFFB
    sh      t2, 0x002A(s0)             # 0000002A
    lh      t3, 0x002A(s0)             # 0000002A
    bgtzl   t3, lbl_809AF8DC           
    addiu   s3, s3, 0x0001             # s3 = 00000004
    sh      $zero, 0x002A(s0)          # 0000002A
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
    lbu     t4, 0x0025(s0)             # 00000025
lbl_809AF490:
    andi    t5, t4, 0x0003             # t5 = 00000001
    bnel    t5, $zero, lbl_809AF4EC    
    mfc1    a2, $f22                   
    lwc1    $f16, 0x0000(v1)           # 00000000
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f18, 0x0008(v1)           # 00000008
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f6, 0x0034(s0)            # 00000034
    sub.s   $f12, $f16, $f10           
    swc1    $f6, 0x00A8($sp)           
    jal     func_800CD76C              
    sub.s   $f14, $f18, $f4            
    mov.s   $f12, $f0                  
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFE0
    jal     func_800AB958              
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFD4
    lwc1    $f8, 0x0094($sp)           
    swc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x009C($sp)          
    swc1    $f16, 0x0014(s0)           # 00000014
    mfc1    a2, $f22                   
lbl_809AF4EC:
    addiu   a0, s0, 0x0034             # a0 = 00000034
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80064280              
    lui     a3, 0x3F00                 # a3 = 3F000000
    lbu     t6, 0x0025(s0)             # 00000025
    slti    $at, t6, 0x0015            
    bnel    $at, $zero, lbl_809AF56C   
    lh      t3, 0x002A(s0)             # 0000002A
    lh      t7, 0x002A(s0)             # 0000002A
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    addiu   t8, t7, 0xFFE2             # t8 = FFFFFFE2
    sh      t8, 0x002A(s0)             # 0000002A
    lh      t9, 0x002A(s0)             # 0000002A
    swc1    $f10, 0x001C(s0)           # 0000001C
    blezl   t9, lbl_809AF560           
    sh      $zero, 0x002A(s0)          # 0000002A
    lw      t0, 0x07C0(s1)             # 000007C0
    lwc1    $f18, 0x0004(s0)           # 00000004
    lw      t1, 0x0028(t0)             # 00000028
    lh      t2, 0x0002(t1)             # 00000002
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.le.s  $f6, $f18                  
    nop
    bc1fl   lbl_809AF8DC               
    addiu   s3, s3, 0x0001             # s3 = 00000005
    sh      $zero, 0x002A(s0)          # 0000002A
lbl_809AF560:
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
    lh      t3, 0x002A(s0)             # 0000002A
lbl_809AF56C:
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t4, t3, 0x001E             # t4 = 0000001E
    sh      t4, 0x002A(s0)             # 0000002A
    lh      t5, 0x002A(s0)             # 0000002A
    slti    $at, t5, 0x00FF            
    bnel    $at, $zero, lbl_809AF8DC   
    addiu   s3, s3, 0x0001             # s3 = 00000006
    beq     $zero, $zero, lbl_809AF8D8 
    sh      t6, 0x002A(s0)             # 0000002A
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_809AF594:
    beq     v0, $at, lbl_809AF5B4      
    addiu   a0, s0, 0x0034             # a0 = 00000034
    beq     s4, v0, lbl_809AF5B4       
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_809AF5B4      
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_809AF8DC      
    addiu   s3, s3, 0x0001             # s3 = 00000007
lbl_809AF5B4:
    lbu     t7, 0x0025(s0)             # 00000025
    mfc1    a2, $f22                   
    lui     $at, 0x4348                # $at = 43480000
    andi    t8, t7, 0x0006             # t8 = 00000000
    beql    t8, $zero, lbl_809AF5E0    
    mtc1    $at, $f0                   # $f0 = 200.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f0                   # $f0 = 80.00
    beq     $zero, $zero, lbl_809AF5E8 
    mfc1    a1, $f0                    
    mtc1    $at, $f0                   # $f0 = 80.00
lbl_809AF5E0:
    nop
    mfc1    a1, $f0                    
lbl_809AF5E8:
    jal     func_80064280              
    lui     a3, 0x42A0                 # a3 = 42A00000
    lbu     v0, 0x0024(s0)             # 00000024
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a0, s0, 0x0030             # a0 = 00000030
    bne     v0, $at, lbl_809AF63C      
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3F19                 # a3 = 3F190000
    ori     a3, a3, 0x999A             # a3 = 3F19999A
    lw      a1, 0x0038(s0)             # 00000038
    jal     func_80064280              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lh      t9, 0x002A(s0)             # 0000002A
    addiu   t0, t9, 0xFFF1             # t0 = FFFFFFF1
    sh      t0, 0x002A(s0)             # 0000002A
    lh      t1, 0x002A(s0)             # 0000002A
    bgtzl   t1, lbl_809AF8DC           
    addiu   s3, s3, 0x0001             # s3 = 00000008
    sh      $zero, 0x002A(s0)          # 0000002A
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
lbl_809AF63C:
    lwc1    $f8, 0x0034(s0)            # 00000034
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a0, s0, 0x0030             # a0 = 00000030
    trunc.w.s $f16, $f8                  
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    mfc1    t3, $f16                   
    bne     v0, $at, lbl_809AF688      
    sh      t3, 0x002A(s0)             # 0000002A
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    jal     func_80064280              
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    lwc1    $f10, 0x0030(s0)           # 00000030
    c.le.s  $f10, $f20                 
    nop
    bc1fl   lbl_809AF8DC               
    addiu   s3, s3, 0x0001             # s3 = 00000009
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
lbl_809AF688:
    bne     s4, v0, lbl_809AF6C8       
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFC4
    lui     t4, %hi(var_809B0890)      # t4 = 809B0000
    addiu   t4, t4, %lo(var_809B0890)  # t4 = 809B0890
    lw      t6, 0x0000(t4)             # 809B0890
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    or      a2, s0, $zero              # a2 = 00000000
    sw      t6, 0x0000(a3)             # FFFFFFC4
    lw      t5, 0x0004(t4)             # 809B0894
    sw      t5, 0x0004(a3)             # FFFFFFC8
    lw      t6, 0x0008(t4)             # 809B0898
    sw      t6, 0x0008(a3)             # FFFFFFCC
    lwc1    $f4, 0x0030(s0)            # 00000030
    lw      a1, 0x1E10(s2)             # 00001E10
    jal     func_809A64C0              
    swc1    $f4, 0x0010($sp)           
lbl_809AF6C8:
    lwc1    $f18, 0x0010(s0)           # 00000010
    addiu   $at, $zero, 0x0001         # $at = 00000001
    c.lt.s  $f18, $f24                 
    nop
    bc1fl   lbl_809AF6EC               
    lbu     v0, 0x0026(s0)             # 00000026
    swc1    $f24, 0x0010(s0)           # 00000010
    swc1    $f20, 0x001C(s0)           # 0000001C
    lbu     v0, 0x0026(s0)             # 00000026
lbl_809AF6EC:
    bne     v0, $zero, lbl_809AF730    
    nop
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    lwc1    $f6, 0x0010(s0)            # 00000010
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    c.lt.s  $f6, $f8                   
    addiu   a0, s0, 0x0038             # a0 = 00000038
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     a3, 0x3E19                 # a3 = 3E190000
    bc1fl   lbl_809AF768               
    lwc1    $f0, 0x0004(s0)            # 00000004
    jal     func_80064280              
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    beq     $zero, $zero, lbl_809AF768 
    lwc1    $f0, 0x0004(s0)            # 00000004
lbl_809AF730:
    bne     v0, $at, lbl_809AF764      
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90              
    swc1    $f0, 0x000C(s0)            # 0000000C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    swc1    $f0, 0x0014(s0)            # 00000014
    swc1    $f16, 0x001C(s0)           # 0000001C
lbl_809AF764:
    lwc1    $f0, 0x0004(s0)            # 00000004
lbl_809AF768:
    c.le.s  $f0, $f26                  
    nop
    bc1tl   lbl_809AF7B4               
    c.le.s  $f0, $f26                  
    c.le.s  $f0, $f22                  
    nop
    bc1fl   lbl_809AF80C               
    lw      t9, 0x07C0(s1)             # 000007C0
    c.le.s  $f24, $f0                  
    nop
    bc1fl   lbl_809AF80C               
    lw      t9, 0x07C0(s1)             # 000007C0
    mfc1    a1, $f20                   
    jal     func_809A62A8              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809AF80C    
    lw      t9, 0x07C0(s1)             # 000007C0
    lwc1    $f0, 0x0004(s0)            # 00000004
    c.le.s  $f0, $f26                  
lbl_809AF7B4:
    swc1    $f20, 0x001C(s0)           # 0000001C
    swc1    $f20, 0x0014(s0)           # 00000014
    swc1    $f20, 0x0010(s0)           # 00000010
    bc1f    lbl_809AF7D0               
    swc1    $f20, 0x000C(s0)           # 0000000C
    beq     $zero, $zero, lbl_809AF7D4 
    swc1    $f26, 0x0004(s0)           # 00000004
lbl_809AF7D0:
    swc1    $f20, 0x0004(s0)           # 00000004
lbl_809AF7D4:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f10, 0x0030(s0)           # 00000030
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    mul.s   $f18, $f10, $f4            
    sb      t7, 0x0024(s0)             # 00000024
    sh      t8, 0x002A(s0)             # 0000002A
    lui     $at, %hi(var_809B0BFC)     # $at = 809B0000
    lwc1    $f6, %lo(var_809B0BFC)($at) 
    mul.s   $f8, $f18, $f6             
    beq     $zero, $zero, lbl_809AF8D8 
    swc1    $f8, 0x0038(s0)            # 00000038
    lw      t9, 0x07C0(s1)             # 000007C0
lbl_809AF80C:
    lwc1    $f4, 0x0004(s0)            # 00000004
    lw      t0, 0x0028(t9)             # 00000028
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16                 
    c.le.s  $f4, $f10                  
    nop
    bc1fl   lbl_809AF8DC               
    addiu   s3, s3, 0x0001             # s3 = 0000000A
    lw      t3, 0x0000(s0)             # 00000000
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    addiu   t9, $zero, 0x0122          # t9 = 00000122
    sw      t3, 0x0000(s5)             # FFFFFFB8
    lw      t2, 0x0004(s0)             # 00000004
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      a1, s5, $zero              # a1 = FFFFFFB8
    sw      t2, 0x0004(s5)             # FFFFFFBC
    lw      t3, 0x0008(s0)             # 00000008
    addiu   t2, $zero, 0x0122          # t2 = 00000122
    lui     a2, 0x4220                 # a2 = 42200000
    sw      t3, 0x0008(s5)             # FFFFFFC0
    lw      t4, 0x07C0(s1)             # 000007C0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     a3, 0x42DC                 # a3 = 42DC0000
    lw      t5, 0x0028(t4)             # 00000028
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    swc1    $f6, 0x007C($sp)           
    lbu     t7, 0x0024(s0)             # 00000024
    bnel    s4, t7, lbl_809AF8C4       
    lw      a0, 0x1E10(s2)             # 00001E10
    lw      a0, 0x1E10(s2)             # 00001E10
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    or      a1, s5, $zero              # a1 = FFFFFFB8
    lui     a2, 0x4270                 # a2 = 42700000
    jal     func_809A63A0              
    lui     a3, 0x4320                 # a3 = 43200000
    beq     $zero, $zero, lbl_809AF8D8 
    sb      $zero, 0x0024(s0)          # 00000024
    lw      a0, 0x1E10(s2)             # 00001E10
lbl_809AF8C4:
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    jal     func_809A63A0              
    sw      t1, 0x0010($sp)            
    sb      $zero, 0x0024(s0)          # 00000024
lbl_809AF8D8:
    addiu   s3, s3, 0x0001             # s3 = 0000000B
lbl_809AF8DC:
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x012C            
    bne     $at, $zero, lbl_809AF2A4   
    addiu   s0, s0, 0x0040             # s0 = 00000040
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    lw      s4, 0x0054($sp)            
    lw      s5, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_809AF924:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s2, 0x0030($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s8, 0x0048($sp)            
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x00E4($sp)            
    lw      t6, 0x00E4($sp)            
    or      s8, $zero, $zero           # s8 = 00000000
    lw      s1, 0x0000(t6)             # 00000000
    sw      s2, 0x00D0($sp)            
    jal     func_800AA6EC              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s7, 0x9B9B                 # s7 = 9B9B0000
    mtc1    $at, $f22                  # $f22 = 1.00
    ori     s7, s7, 0xFF00             # s7 = 9B9BFF00
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s5, $zero, 0x0002          # s5 = 00000002
lbl_809AF990:
    lbu     t7, 0x0024(s2)             # 00000024
    lui     s4, 0x0402                 # s4 = 04020000
    bnel    s5, t7, lbl_809AFA64       
    addiu   s6, s6, 0x0001             # s6 = 00000001
    bne     s8, $zero, lbl_809AF9D0    
    addiu   s4, s4, 0x5950             # s4 = 04025950
    jal     func_8007E930              
    or      a0, s1, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   s8, s8, 0x0001             # s8 = 00000001
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    andi    s8, s8, 0x00FF             # s8 = 00000001
lbl_809AF9D0:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lh      t2, 0x002A(s2)             # 0000002A
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFFFF00
    sw      t4, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000000
    lwc1    $f14, 0x0004(s2)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000008
    lwc1    $f20, 0x0030(s2)           # 00000030
    mov.s   $f14, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f20                   
    jal     func_800AA8FC              
    mov.s   $f12, $f20                 
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s3, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t6, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000002
lbl_809AFA64:
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x012C            
    bne     $at, $zero, lbl_809AF990   
    addiu   s2, s2, 0x0040             # s2 = 00000040
    or      s8, $zero, $zero           # s8 = 00000000
    lw      s2, 0x00D0($sp)            
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s5, $zero, 0x0001          # s5 = 00000001
lbl_809AFA88:
    lbu     t9, 0x0024(s2)             # 00000064
    lui     s4, 0x0402                 # s4 = 04020000
    bnel    s5, t9, lbl_809AFB60       
    addiu   s6, s6, 0x0001             # s6 = 00000001
    bne     s8, $zero, lbl_809AFACC    
    addiu   s4, s4, 0xA550             # s4 = 0401A550
    lw      t0, 0x00E4($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   s8, s8, 0x0001             # s8 = 00000001
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    andi    s8, s8, 0x00FF             # s8 = 00000001
lbl_809AFACC:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lh      t5, 0x002A(s2)             # 0000006A
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000040
    lwc1    $f14, 0x0004(s2)           # 00000044
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000048
    lwc1    $f20, 0x0030(s2)           # 00000070
    mov.s   $f14, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f20                   
    jal     func_800AA8FC              
    mov.s   $f12, $f20                 
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t9, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000002
lbl_809AFB60:
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x012C            
    bne     $at, $zero, lbl_809AFA88   
    addiu   s2, s2, 0x0040             # s2 = 00000080
    or      s8, $zero, $zero           # s8 = 00000000
    lw      s2, 0x00D0($sp)            
    or      s6, $zero, $zero           # s6 = 00000000
lbl_809AFB80:
    lbu     v0, 0x0024(s2)             # 000000A4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      s7, 0x00E4($sp)            
    beq     v0, $at, lbl_809AFBA4      
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809AFBA4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_809AFD2C      
lbl_809AFBA4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   t2, t2, 0x0F70             # t2 = 06000F70
    sw      t2, 0x0050($sp)            
    bne     s8, $zero, lbl_809AFC64    
    addu    s7, s7, $at                
    lui     v0, 0x0405                 # v0 = 04050000
    addiu   v0, v0, 0x72E0             # v0 = 040572E0
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t5, t4,  2                 
    lui     s5, 0x0600                 # s5 = 06000000
    addiu   s5, s5, 0x0F20             # s5 = 06000F20
    addu    s3, t5, t6                 
    and     s4, v0, $at                
    lw      a0, 0x02D0(s1)             # 000002D0
    jal     func_8007DFBC              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(s3)             # 00000000
    lui     $at, 0x8000                # $at = 80000000
    lui     t5, 0xFB00                 # t5 = FB000000
    addu    t0, t9, s4                 
    addu    t1, t0, $at                
    sw      t1, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   s8, s8, 0x0001             # s8 = 00000001
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFAFA                 # t6 = FAFA0000
    ori     t6, t6, 0xFF00             # t6 = FAFAFF00
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    andi    s8, s8, 0x00FF             # s8 = 00000001
lbl_809AFC64:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x0034(s2)            # 000000B4
    lh      t4, 0x002A(s2)             # 000000AA
    trunc.w.s $f6, $f4                   
    andi    t5, t4, 0x00FF             # t5 = 00000008
    mfc1    v1, $f6                    
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sll     t0, v1, 16                 
    sll     t1, v1, 24                 
    or      t2, t0, t1                 # t2 = 00000000
    ori     t3, t2, 0xFF00             # t3 = 0000FF00
    or      t6, t3, t5                 # t6 = 0000FF08
    sw      t6, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000080
    lwc1    $f14, 0x0004(s2)           # 00000084
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000088
    jal     func_800ABE54              
    or      a0, s7, $zero              # a0 = 9B9BFF00
    lwc1    $f20, 0x0030(s2)           # 000000B0
    lwc1    $f0, 0x0038(s2)            # 000000B8
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f0, $f20            
    jal     func_800AA8FC              
    div.s   $f12, $f20, $f0            
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s3, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t8, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lw      t1, 0x0050($sp)            
    sw      t1, 0x0004(s0)             # 00000004
lbl_809AFD2C:
    addiu   s6, s6, 0x0001             # s6 = 00000001
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x012C            
    bne     $at, $zero, lbl_809AFB80   
    addiu   s2, s2, 0x0040             # s2 = 000000C0
    or      s8, $zero, $zero           # s8 = 00000000
    lw      s2, 0x00D0($sp)            
    or      s6, $zero, $zero           # s6 = 00000000
lbl_809AFD50:
    lbu     t2, 0x0024(s2)             # 000000E4
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     s7, 0x0600                 # s7 = 06000000
    bnel    t2, $at, lbl_809AFED0      
    addiu   s6, s6, 0x0001             # s6 = 00000001
    bne     s8, $zero, lbl_809AFE14    
    addiu   s7, s7, 0x0FC8             # s7 = 06000FC8
    lui     v0, 0x0405                 # v0 = 04050000
    addiu   v0, v0, 0x72E0             # v0 = 040572E0
    sll     t4, v0,  4                 
    srl     t3, t4, 28                 
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t5, t3,  2                 
    lui     s5, 0x0600                 # s5 = 06000000
    addiu   s5, s5, 0x0F20             # s5 = 06000F20
    addu    s3, t5, t6                 
    and     s4, v0, $at                
    jal     func_8007E404              
    or      a0, s1, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x0000(s3)             # 00000000
    lui     $at, 0x8000                # $at = 80000000
    lui     t4, 0xFB00                 # t4 = FB000000
    addu    t0, t9, s4                 
    addu    t1, t0, $at                
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFAFA                 # t3 = FAFA0000
    ori     t3, t3, 0xFF00             # t3 = FAFAFF00
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   s8, s8, 0x0001             # s8 = 00000001
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    andi    s8, s8, 0x00FF             # s8 = 00000001
lbl_809AFE14:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0034(s2)            # 000000F4
    lh      t3, 0x002A(s2)             # 000000EA
    trunc.w.s $f10, $f8                  
    andi    t5, t3, 0x00FF             # t5 = 00000000
    mfc1    v1, $f10                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sll     t0, v1, 16                 
    sll     t1, v1, 24                 
    or      t2, t0, t1                 # t2 = 00000000
    ori     t4, t2, 0xFF00             # t4 = 0000FF00
    or      t6, t4, t5                 # t6 = 0000FF00
    sw      t6, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 000000C0
    lwc1    $f14, 0x0004(s2)           # 000000C4
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 000000C8
    lwc1    $f20, 0x0030(s2)           # 000000F0
    mov.s   $f14, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f20                   
    jal     func_800AA8FC              
    mov.s   $f12, $f20                 
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s3, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t8, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000002
lbl_809AFED0:
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x012C            
    bne     $at, $zero, lbl_809AFD50   
    addiu   s2, s2, 0x0040             # s2 = 00000100
    or      s8, $zero, $zero           # s8 = 00000000
    lw      s2, 0x00D0($sp)            
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s5, $zero, 0x0007          # s5 = 00000007
lbl_809AFEF4:
    lbu     t1, 0x0024(s2)             # 00000124
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s5, t1, lbl_809AFFE0       
    lw      t2, 0x00E4($sp)            
    lui     s4, 0x0600                 # s4 = 06000000
    addiu   s4, s4, 0x0140             # s4 = 06000140
    bne     s8, $zero, lbl_809AFF48    
    addu    s7, t2, $at                
    jal     func_8007E298              
    lw      a0, 0x0000(t2)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0x9696                 # t5 = 96960000
    ori     t5, t5, 0x9600             # t5 = 96969600
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    addiu   s8, s8, 0x0001             # s8 = 00000001
    andi    s8, s8, 0x00FF             # s8 = 00000001
lbl_809AFF48:
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lh      t8, 0x002A(s2)             # 0000012A
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t0, t9, $at                # t0 = FFFFFF00
    sw      t0, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000100
    lwc1    $f14, 0x0004(s2)           # 00000104
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000108
    jal     func_800ABE54              
    or      a0, s7, $zero              # a0 = 06000FC8
    lwc1    $f20, 0x0030(s2)           # 00000130
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f12, $f20                 
    jal     func_800AA8FC              
    mov.s   $f14, $f20                 
    lw      s3, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t2, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
lbl_809AFFE0:
    addiu   s6, s6, 0x0001             # s6 = 00000001
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x012C            
    bne     $at, $zero, lbl_809AFEF4   
    addiu   s2, s2, 0x0040             # s2 = 00000140
    jal     func_800AA724              
    nop
    lw      $ra, 0x004C($sp)           
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
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000
    nop
    nop

.section .data

var_809B0040: .word 0x00C40900, 0x00000035, 0x00B40000, 0x0000157C
.word func_809A6714
.word func_809A6AFC
.word func_809AD570
.word func_809AEFE0
var_809B0060: .word 0x00000000
var_809B0064: .word 0x00000000
var_809B0068: .word 0x00000000
var_809B006C: .word \
0x41700000, 0x41400000, 0x41100000, 0x40D00000, \
0x4099999A, 0x40800000, 0x4059999A, 0x40466666, \
0x40400000, 0x40466666, 0x404CCCCD, 0x4059999A, \
0x40666666, 0x40733333, 0x40800000, 0x40933333, \
0x40A33333, 0x40B00000, 0x40C33333, 0x40D33333, \
0x40E9999A, 0x40F66666, 0x41066666, 0x41080000, \
0x410B3333, 0x410CCCCD, 0x410CCCCD, 0x410B3333, \
0x4109999A, 0x4104CCCD, 0x41033333, 0x4101999A, \
0x40E66666, 0x40D66666, 0x40BCCCCD, 0x409CCCCD, \
0x402CCCCD, 0x00000000, 0x00000000, 0x00000000, \
0x00000000
var_809B0110: .word \
0x04000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x00000000, 0x00000000, \
0x00000064, 0x04000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x01000000, \
0x00000000, 0x00000064, 0x04000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x02000000, 0x00000000, 0x001E0064, 0x04000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x03000000, 0x00000000, 0x00180064, \
0x04000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x04000000, 0x00000000, \
0x00160064, 0x04000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x05000000, \
0x00000000, 0x00140064, 0x04000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x06000000, 0x00000000, 0x00120064, 0x04000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x07000000, 0x00000000, 0x00100064, \
0x04000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x08000000, 0x00000000, \
0x000E0064, 0x04000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x09000000, \
0x00000000, 0x000C0064, 0x04000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0A000000, 0x00000000, 0x000A0064, 0x04000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0B000000, 0x00000000, 0x000A0064, \
0x04000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x0C000000, 0x00000000, \
0x000A0064, 0x04000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x0D000000, \
0x00000000, 0x000A0064, 0x04000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0E000000, 0x00000000, 0x000A0064, 0x04000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0F000000, 0x00000000, 0x000A0064, \
0x04000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x10000000, 0x00000000, \
0x000A0064, 0x04000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x11000000, \
0x00000000, 0x000A0064, 0x04000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x12000000, 0x00000000, 0x000A0064
var_809B03BC: .word 0x0A110909, 0x10000000, 0x00000013
.word var_809B0110
var_809B03CC: .word \
0x03110909, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFDFFFFF, 0x00000000, 0x01050100, \
0x00140028, 0xFFEC0000, 0x00000000
var_809B03F8: .word 0x00000000, 0x00000000, 0x00000000
var_809B0404: .word 0x00000000, 0xBF800000, 0x00000000
var_809B0410: .word 0x00000000, 0x00000000, 0x00000000
var_809B041C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000002, 0x00040008, \
0x00080008, 0x00090009, 0x00090009, 0x00090009, \
0x000C000F, 0x000F000F, 0x000F000F, 0x000F000F, \
0x00140014, 0x00140000, 0x00000000, 0x00000000, \
0x00000000
var_809B0470: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0xFFFBFFFB, 0xFFFB0000, 0x0005000A, \
0x00140014, 0x00140014, 0x00140014, 0x00140014, \
0x00140014, 0x00140014, 0x00000000, 0x00000000, \
0x00000000
var_809B04C4: .word \
0x00000005, 0x00060007, 0x00080008, 0x00070006, \
0x00060002, 0x00020002, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000
var_809B0518: .word 0x801F0005, 0x89170025, 0xB86C0000, 0x304C0000
var_809B0528: .word 0x00000000, 0x00000000, 0x00000000
var_809B0534: .word \
0x00010203, 0x040F1305, 0x0E101112, 0x060D1407, \
0x0C0B0A09, 0x08000000
var_809B054C: .word 0xC3B40000
var_809B0550: .word \
0xC3B40000, 0xC3340000, 0xC3B40000, 0x00000000, \
0xC3B40000, 0x43340000, 0xC3B40000, 0x43B40000, \
0xC3B40000, 0xC3B40000, 0xC3340000, 0x00000000, \
0xC3340000, 0x43B40000, 0xC3340000, 0xC3B40000, \
0x00000000, 0xC3340000, 0x00000000, 0x00000000, \
0x00000000, 0x43340000, 0x00000000, 0x43B40000, \
0x00000000, 0xC3B40000, 0x43340000, 0x00000000, \
0x43340000, 0x43B40000, 0x43340000, 0xC3B40000, \
0x43B40000, 0xC3340000, 0x43B40000, 0x00000000, \
0x43B40000, 0x43340000, 0x43B40000, 0x43B40000, \
0x43B40000
var_809B05F4: .word \
0x4063D70A, 0x40500000, 0x403D70A4, 0x402C28F6, \
0x401C28F6, 0x400D70A4, 0x40000000, 0x3FE7AE14, \
0x3FD1EB85, 0x3FBEB852, 0x3FAE147B, 0x3FA00000, \
0x3F947AE1, 0x3F8B851F, 0x3F851EB8, 0x3F8147AE, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F7AE148, 0x3F733333, 0x3F666666, 0x3F4CCCCD, \
0x3F19999A, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000
var_809B0698: .word \
0x00000000, 0x403D5087, 0x4083F07C, 0x409F32AF, \
0x40B504F3, 0x40C732CA, 0x40D6A99B, 0x40E3F703, \
0x40EF7751, 0x40F96A53, 0x4100FF02, 0x4104AA3D, \
0x4107C3B6, 0x410A553B, 0x410C6641, 0x410DFC65, \
0x410F1BBD, 0x410FC711, 0x41100000, 0x410FC711, \
0x410F1BBD, 0x410DFC65, 0x410C6641, 0x410A553B, \
0x4107C3B6, 0x4104AA3D, 0x4100FF02, 0x40F96A53, \
0x40EF7751, 0x40E3F703, 0x40D6A99B, 0x40C732CA, \
0x40B504F3, 0x409F32AF, 0x4083F07C, 0x403D5087, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000
var_809B073C: .word 0x00000000, 0x00000000, 0x00000000
var_809B0748: .word \
0xC3B40000, 0xC33E0000, 0x00000000, 0x437A0000, \
0xC33E0000, 0x00000000, 0x43960000, 0xC2F00000, \
0xC38B0000, 0x43340000, 0xC2A00000, 0xC3AA0000, \
0x43340000, 0x00000000, 0xC3AA0000, 0x43340000, \
0x42700000, 0xC3660000, 0x3DCCCCCD, 0x3E19999A, \
0x3E4CCCCD, 0x3E99999A, 0x3ECCCCCD
var_809B07A4: .word \
0x3EDC28F6, 0x3ECCCCCD, 0x3E99999A, 0x3E4CCCCD, \
0x3E19999A, 0x3DCCCCCD
var_809B07BC: .word 0x00000000, 0x00000000, 0x00000000
var_809B07C8: .word \
0x06006878, 0x06006938, 0x06006988, 0x060069D0, \
0x06006A18, 0x06006A60, 0x06006AA8, 0x06006AF0, \
0x06006B38, 0x06006B80, 0x06006BC8, 0x06006C10, \
0x06006C58, 0x06006CA0, 0x06006CE8, 0x06006D30, \
0x06006D78, 0x06006DC0, 0x06006E08, 0x06006E50, \
0x06006E98, 0x06006EE0, 0x06006F28, 0x06006F70, \
0x06006FB8, 0x06007000, 0x06007048, 0x06007090, \
0x060070D8, 0x06007120, 0x06007168, 0x060071B0, \
0x060071F8, 0x06007240, 0x06007288, 0x060072D0, \
0x06007318, 0x06007360, 0x060073A8, 0x060073F0, \
0x06007438
var_809B086C: .word 0xC1800000, 0x41500000, 0x41F00000
var_809B0878: .word 0x00000000, 0x00000000, 0x00000000
var_809B0884: .word 0x00000000, 0x00000000, 0x00000000
var_809B0890: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809B08A0: .word 0x46EC7A00
var_809B08A4: .word 0x46ECC600
var_809B08A8: .word 0x46ECE600
var_809B08AC: .word 0x3B23D70A
var_809B08B0: .word 0x3D4CCCCD
var_809B08B4: .word 0x3DCCCCCD
var_809B08B8: .word 0x451C4000
var_809B08BC: .word 0x453B8000
var_809B08C0: .word 0x44BB8000
var_809B08C4: .word 0x451C4000
var_809B08C8: .word 0x453B8000
var_809B08CC: .word 0x44BB8000
var_809B08D0: .word 0x451C4000
var_809B08D4: .word 0x453B8000
var_809B08D8: .word 0x44BB8000
var_809B08DC: .word 0x451C4000
var_809B08E0: .word 0x44A28000
var_809B08E4: .word 0x45DAC000
var_809B08E8: .word 0x459C4000
var_809B08EC: .word 0x451C4000
var_809B08F0: .word 0x459C4000
var_809B08F4: .word 0x44BB8000
var_809B08F8: .word 0x451C4000
var_809B08FC: .word 0x44A28000
var_809B0900: .word 0x45DAC000
var_809B0904: .word 0x459C4000
var_809B0908: .word 0x450FC000
var_809B090C: .word var_809A8C78
.word var_809A8EA0
.word var_809A90B8
.word var_809A8C88
.word lbl_809A977C
.word var_809A937C
.word lbl_809A977C
var_809B0928: .word var_809A7370
.word var_809A7370
.word var_809A7718
.word var_809A7A98
.word var_809A7A98
.word lbl_809A7F80
.word lbl_809A977C
.word lbl_809A977C
.word lbl_809A977C
.word lbl_809A977C
.word var_809A7140
.word var_809A7184
var_809B0958: .word 0x3C23D70A
var_809B095C: .word 0x3CCCCCCD
var_809B0960: .word 0x3F333333
var_809B0964: .word 0x3C23D70A
var_809B0968: .word 0x3A83126F
var_809B096C: .word 0x3A83126F
var_809B0970: .word 0x3A83126F
var_809B0974: .word 0x3A83126F
var_809B0978: .word 0x3CCCCCCD
var_809B097C: .word 0x3C23D70A
var_809B0980: .word 0x3E99999A
var_809B0984: .word 0x3CF5C28F
var_809B0988: .word 0x3C23D70A
var_809B098C: .word 0x3E4CCCCD
var_809B0990: .word 0x3DCCCCCD
var_809B0994: .word 0x3BA3D70A
var_809B0998: .word 0x45DAC000
var_809B099C: .word 0x459C4000
var_809B09A0: .word 0x3CCCCCCD
var_809B09A4: .word 0x3C23D70A
var_809B09A8: .word 0x40490FDB
var_809B09AC: .word 0x41A73333
var_809B09B0: .word 0x3A83126F
var_809B09B4: .word 0x3CCCCCCD
var_809B09B8: .word 0x3D4CCCCD
var_809B09BC: .word 0x44228000
var_809B09C0: .word 0x3CCCCCCD
var_809B09C4: .word 0x3D4CCCCD
var_809B09C8: .word 0x44228000
var_809B09CC: .word 0x3CCCCCCD
var_809B09D0: .word 0x3DCCCCCD
var_809B09D4: .word 0x3D4CCCCD
var_809B09D8: .word 0x3A83126F
var_809B09DC: .word 0x3D4CCCCD
var_809B09E0: .word 0x3D4CCCCD
var_809B09E4: .word 0x3E99999A
var_809B09E8: .word 0x44228000
var_809B09EC: .word 0x3E4CCCCD
var_809B09F0: .word 0x3A03126F
var_809B09F4: .word 0x3B03126F
var_809B09F8: .word 0x3E6B851F
var_809B09FC: .word 0x3CF5C28F
var_809B0A00: .word 0x3AC49BA6
var_809B0A04: .word 0x3E051EB8
var_809B0A08: .word 0x3F4CCCCD
var_809B0A0C: .word 0x3A83126F
var_809B0A10: .word 0x3DCCCCCD
var_809B0A14: .word 0x3DCCCCCD
var_809B0A18: .word 0x3CA3D70A
var_809B0A1C: .word 0x3D4CCCCD
var_809B0A20: .word 0x3E4CCCCD
var_809B0A24: .word 0x3E051EB8
var_809B0A28: .word 0x3DA3D70A
var_809B0A2C: .word var_809A9C7C
.word var_809A9E30
.word var_809A9F58
.word lbl_809AA560
.word var_809AA8E0
var_809B0A40: .word 0x3D4CCCCD
var_809B0A44: .word 0x3E051EB8
var_809B0A48: .word 0x4622F983
var_809B0A4C: .word 0x4622F983
var_809B0A50: .word 0x3D4CCCCD
var_809B0A54: .word 0x3E051EB8
var_809B0A58: .word 0x3DCCCCCD
var_809B0A5C: .word 0x3ECCCCCD
var_809B0A60: .word 0x3E99999A
var_809B0A64: .word 0x451C4000
var_809B0A68: .word 0x451C4000
var_809B0A6C: .word 0x3DCCCCCD
var_809B0A70: .word 0x3C23D70A
var_809B0A74: .word 0x3A83126F
var_809B0A78: .word 0x3DCCCCCD
var_809B0A7C: .word 0x3DCCCCCD
var_809B0A80: .word 0x3CF5C28F
var_809B0A84: .word 0x3CF5C28F
var_809B0A88: .word 0x3C23D70A
var_809B0A8C: .word 0x3CF5C28F
var_809B0A90: .word var_809AAD90
.word var_809AB30C
.word var_809AB3A4
.word lbl_809AB3E8
.word var_809AB458
.word lbl_809AB6D8
var_809B0AA8: .word 0x3BA3D70A
var_809B0AAC: .word 0x3C75C28F
var_809B0AB0: .word 0x3C75C28F
var_809B0AB4: .word 0x3BA3D70A
var_809B0AB8: .word 0x3B03126F
var_809B0ABC: .word 0x3DA3D70A
var_809B0AC0: .word 0x3E051EB8
var_809B0AC4: .word 0x3D4CCCCD
var_809B0AC8: .word 0x3CA3D70A
var_809B0ACC: .word 0x3E4CCCCD
var_809B0AD0: .word 0x453B8000
var_809B0AD4: .word 0x451C4000
var_809B0AD8: .word 0x3D4CCCCD
var_809B0ADC: .word 0x406CCCCE
var_809B0AE0: .word 0x3CA3D70A
var_809B0AE4: .word 0x3DA3D70A
var_809B0AE8: .word 0x3E051EB8
var_809B0AEC: .word 0x3BA3D70A
var_809B0AF0: .word 0x3C75C28F
var_809B0AF4: .word 0x3C75C28F
var_809B0AF8: .word 0x3BA3D70A
var_809B0AFC: .word 0x3C03126F
var_809B0B00: .word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word lbl_809AC120
.word var_809ABF40
.word var_809ABFF4
.word var_809AC078
.word lbl_809AC120
.word lbl_809AC120
.word var_809AC0B8
var_809B0B44: .word 0x3CA3D70A
var_809B0B48: .word 0x3D4CCCCD
var_809B0B4C: .word 0xBC23D70A
var_809B0B50: .word 0x3DA3D70A
var_809B0B54: .word 0x3E051EB8
var_809B0B58: .word 0x3ECCCCCD
var_809B0B5C: .word 0x40490FDB
var_809B0B60: .word 0x45418000
var_809B0B64: .word 0x452EC000
var_809B0B68: .word 0x4622F983
var_809B0B6C: .word 0x4622F983
var_809B0B70: .word 0x3E4CCCCD
var_809B0B74: .word 0x4048F5C3
var_809B0B78: .word 0x3F19999A
var_809B0B7C: .word 0x3FCCCCCD
var_809B0B80: .word 0x3E99999A
var_809B0B84: .word 0x3D99999A
var_809B0B88: .word 0x3E19999A
var_809B0B8C: .word 0x3DCCCCCD
var_809B0B90: .word 0x3D4CCCCD
var_809B0B94: .word 0x3DCCCCCD
var_809B0B98: .word 0x463B8000
var_809B0B9C: .word 0x469C4000
var_809B0BA0: .word 0x3F2AA64C
var_809B0BA4: .word 0x40C90FDB
var_809B0BA8: .word 0x3D4CCCCD
var_809B0BAC: .word 0x3E4CCCCD
var_809B0BB0: .word 0x40490FDB
var_809B0BB4: .word 0x40490FDB
var_809B0BB8: .word 0x40490FDB
var_809B0BBC: .word 0x40490FDB
var_809B0BC0: .word 0x3FC90FDB
var_809B0BC4: .word 0x3DCCCCCD
var_809B0BC8: .word 0x3E3851EC
var_809B0BCC: .word 0x3DA3D70A
var_809B0BD0: .word 0x3DA3D70A
var_809B0BD4: .word 0xBFDBE958
var_809B0BD8: .word 0x3F4CCCCD
var_809B0BDC: .word 0x3E6B851F
var_809B0BE0: .word 0x3C23D70A
var_809B0BE4: .word 0x3DCCCCCD
var_809B0BE8: .word 0x3F533333
var_809B0BEC: .word 0x3F966666
var_809B0BF0: .word 0x3DCCCCCD
var_809B0BF4: .word 0x3FC90FDB
var_809B0BF8: .word 0x3D4CCCCD
var_809B0BFC: .word 0x3E19999A

.bss

var_809B1700: .space 0x4B00
var_809B6200: .space 0x04
var_809B6204: .space 0x04
var_809B6208: .space 0x08
