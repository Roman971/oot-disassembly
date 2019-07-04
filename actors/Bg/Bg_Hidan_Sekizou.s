.section .text
func_808DB230:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0048($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    sll     v1, a1,  2                 
    subu    v1, v1, a1                 
    addiu   t1, v1, 0x0003             # t1 = 00000003
    sw      t1, 0x0034($sp)            
    sw      t1, 0x001C($sp)            
    sw      v1, 0x0020($sp)            
    lh      a0, 0x004A($sp)            
    jal     func_800636C4              # sins?
    sw      a3, 0x0040($sp)            
    lh      a0, 0x004A($sp)            
    jal     func_80063684              # coss?
    swc1    $f0, 0x0030($sp)           
    lw      v1, 0x0020($sp)            
    lw      t1, 0x001C($sp)            
    lw      a3, 0x0040($sp)            
    lw      t0, 0x0034($sp)            
    slt     $at, v1, t1                
    lwc1    $f14, 0x0030($sp)          
    beq     $at, $zero, lbl_808DB5DC   
    or      a1, v1, $zero              # a1 = 00000000
    subu    v0, t1, v1                 
    andi    v0, v0, 0x0001             # v0 = 00000000
    beq     v0, $zero, lbl_808DB340    
    sll     a0, t0,  6                 
    lw      t6, 0x0180(a3)             # 00000180
    sll     t7, v1,  6                 
    lwc1    $f8, 0x0008(a3)            # 00000008
    addu    v0, t6, t7                 
    lh      t8, 0x0028(v0)             # 00000028
    lh      t9, 0x002C(v0)             # 0000002C
    lbu     t4, 0x0015(v0)             # 00000015
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f6                    # $f6 = 0.00
    lh      t8, 0x002A(v0)             # 0000002A
    cvt.s.w $f2, $f4                   
    lbu     t6, 0x0017(v0)             # 00000017
    addiu   a1, v1, 0x0001             # a1 = 00000001
    ori     t5, t4, 0x0001             # t5 = 00000001
    cvt.s.w $f12, $f6                  
    mul.s   $f10, $f0, $f2             
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f14, $f12           
    add.s   $f4, $f16, $f18            
    mul.s   $f18, $f14, $f2            
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    mul.s   $f6, $f0, $f12             
    sh      t3, 0x0030(v0)             # 00000030
    lwc1    $f8, 0x000C(a3)            # 0000000C
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    nop
    addu    t9, t7, t8                 
    sh      t9, 0x0032(v0)             # 00000032
    lwc1    $f16, 0x0010(a3)           # 00000010
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0017(v0)             # 00000017
    sub.s   $f4, $f16, $f18            
    sb      t5, 0x0015(v0)             # 00000015
    add.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    beq     a1, t1, lbl_808DB5DC       
    sh      t3, 0x0034(v0)             # 00000034
lbl_808DB340:
    sll     v1, a1,  6                 
    lw      t8, 0x0180(a3)             # 00000180
    addiu   a0, a0, 0xFF80             # a0 = FFFFFF80
    addu    v0, t8, v1                 
    beq     v1, a0, lbl_808DB49C       
    lh      t9, 0x0028(v0)             # 00000028
lbl_808DB358:
    mtc1    t9, $f18                   # $f18 = 0.00
    lh      t2, 0x002C(v0)             # 0000002C
    lwc1    $f16, 0x0008(a3)           # 00000008
    cvt.s.w $f18, $f18                 
    mtc1    t2, $f12                   # $f12 = 0.00
    lh      t9, 0x002A(v0)             # 0000002A
    lbu     t5, 0x0015(v0)             # 00000015
    lbu     t7, 0x0017(v0)             # 00000017
    cvt.s.w $f12, $f12                 
    mul.s   $f10, $f0, $f18            
    ori     t6, t5, 0x0001             # t6 = 00000001
    mul.s   $f8, $f14, $f12            
    add.s   $f10, $f16, $f10           
    mul.s   $f18, $f14, $f18           
    add.s   $f8, $f10, $f8             
    trunc.w.s $f8, $f8                   
    mul.s   $f12, $f0, $f12            
    mfc1    t4, $f8                    
    nop
    sh      t4, 0x0030(v0)             # 00000030
    lwc1    $f8, 0x000C(a3)            # 0000000C
    trunc.w.s $f8, $f8                   
    mfc1    t8, $f8                    
    nop
    addu    t2, t8, t9                 
    sh      t2, 0x0032(v0)             # 00000032
    lwc1    $f8, 0x0010(a3)            # 00000010
    sb      t6, 0x0015(v0)             # 00000015
    ori     t8, t7, 0x0001             # t8 = 00000001
    sub.s   $f18, $f8, $f18            
    sb      t8, 0x0017(v0)             # 00000017
    add.s   $f12, $f18, $f12           
    trunc.w.s $f12, $f12                 
    mfc1    t4, $f12                   
    nop
    sh      t4, 0x0034(v0)             # 00000034
    lw      t9, 0x0180(a3)             # 00000180
    lwc1    $f12, 0x0008(a3)           # 00000008
    addu    v0, t9, v1                 
    lh      t2, 0x0068(v0)             # 00000068
    lh      t3, 0x006C(v0)             # 0000006C
    lbu     t6, 0x0055(v0)             # 00000055
    mtc1    t2, $f18                   # $f18 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t2, 0x006A(v0)             # 0000006A
    cvt.s.w $f18, $f18                 
    lbu     t8, 0x0057(v0)             # 00000057
    addiu   v0, v0, 0x0040             # v0 = 00000040
    ori     t7, t6, 0x0001             # t7 = 00000001
    addiu   v1, v1, 0x0080             # v1 = 00000080
    cvt.s.w $f8, $f8                   
    mul.s   $f10, $f0, $f18            
    add.s   $f10, $f12, $f10           
    mul.s   $f12, $f14, $f8            
    add.s   $f12, $f10, $f12           
    mul.s   $f18, $f14, $f18           
    trunc.w.s $f12, $f12                 
    mul.s   $f8, $f0, $f8              
    mfc1    t5, $f12                   
    nop
    sh      t5, 0x0030(v0)             # 00000070
    lwc1    $f12, 0x000C(a3)           # 0000000C
    trunc.w.s $f12, $f12                 
    mfc1    t9, $f12                   
    nop
    addu    t3, t9, t2                 
    sh      t3, 0x0032(v0)             # 00000072
    lwc1    $f12, 0x0010(a3)           # 00000010
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t7, 0x0015(v0)             # 00000055
    sub.s   $f18, $f12, $f18           
    sb      t9, 0x0017(v0)             # 00000057
    add.s   $f8, $f18, $f8             
    trunc.w.s $f8, $f8                   
    mfc1    t5, $f8                    
    nop
    sh      t5, 0x0034(v0)             # 00000074
    lw      t8, 0x0180(a3)             # 00000180
    addu    v0, t8, v1                 
    bne     v1, a0, lbl_808DB358       
    lh      t9, 0x0028(v0)             # 00000068
lbl_808DB49C:
    mtc1    t9, $f18                   # $f18 = 0.00
    lh      t2, 0x002C(v0)             # 0000006C
    lwc1    $f16, 0x0008(a3)           # 00000008
    cvt.s.w $f18, $f18                 
    mtc1    t2, $f12                   # $f12 = 0.00
    lh      t9, 0x002A(v0)             # 0000006A
    lbu     t5, 0x0015(v0)             # 00000055
    lbu     t7, 0x0017(v0)             # 00000057
    cvt.s.w $f12, $f12                 
    mul.s   $f10, $f0, $f18            
    ori     t6, t5, 0x0001             # t6 = 00000001
    addiu   a0, a0, 0x0080             # a0 = 00000000
    mul.s   $f8, $f14, $f12            
    add.s   $f10, $f16, $f10           
    mul.s   $f18, $f14, $f18           
    nop
    mul.s   $f12, $f0, $f12            
    add.s   $f8, $f10, $f8             
    trunc.w.s $f8, $f8                   
    mfc1    t4, $f8                    
    nop
    sh      t4, 0x0030(v0)             # 00000070
    lwc1    $f8, 0x000C(a3)            # 0000000C
    trunc.w.s $f8, $f8                   
    mfc1    t8, $f8                    
    nop
    addu    t2, t8, t9                 
    sh      t2, 0x0032(v0)             # 00000072
    lwc1    $f8, 0x0010(a3)            # 00000010
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      t6, 0x0015(v0)             # 00000055
    sub.s   $f18, $f8, $f18            
    sb      t8, 0x0017(v0)             # 00000057
    add.s   $f12, $f18, $f12           
    trunc.w.s $f12, $f12                 
    mfc1    t4, $f12                   
    nop
    sh      t4, 0x0034(v0)             # 00000074
    lw      t9, 0x0180(a3)             # 00000180
    lwc1    $f12, 0x0008(a3)           # 00000008
    addu    v0, t9, v1                 
    lh      t2, 0x0068(v0)             # 000000A8
    lh      t3, 0x006C(v0)             # 000000AC
    lbu     t6, 0x0055(v0)             # 00000095
    mtc1    t2, $f18                   # $f18 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t2, 0x006A(v0)             # 000000AA
    cvt.s.w $f18, $f18                 
    lbu     t8, 0x0057(v0)             # 00000097
    ori     t7, t6, 0x0001             # t7 = 00000001
    addiu   v0, v0, 0x0040             # v0 = 00000080
    addiu   v1, v1, 0x0080             # v1 = 00000100
    cvt.s.w $f8, $f8                   
    mul.s   $f10, $f0, $f18            
    add.s   $f10, $f12, $f10           
    mul.s   $f12, $f14, $f8            
    add.s   $f12, $f10, $f12           
    mul.s   $f18, $f14, $f18           
    nop
    mul.s   $f8, $f0, $f8              
    trunc.w.s $f12, $f12                 
    mfc1    t5, $f12                   
    nop
    sh      t5, 0x0030(v0)             # 000000B0
    lwc1    $f12, 0x000C(a3)           # 0000000C
    trunc.w.s $f12, $f12                 
    mfc1    t9, $f12                   
    nop
    addu    t3, t9, t2                 
    sh      t3, 0x0032(v0)             # 000000B2
    lwc1    $f12, 0x0010(a3)           # 00000010
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0017(v0)             # 00000097
    sub.s   $f18, $f12, $f18           
    sb      t7, 0x0015(v0)             # 00000095
    add.s   $f8, $f18, $f8             
    trunc.w.s $f8, $f8                   
    mfc1    t5, $f8                    
    nop
    sh      t5, 0x0034(v0)             # 000000B4
lbl_808DB5DC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808DB5EC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0024($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    sw      a1, 0x0054($sp)            
    lui     a1, %hi(var_808DC5A0)      # a1 = 808E0000
    sw      $zero, 0x0040($sp)         
    addiu   a1, a1, %lo(var_808DC5A0)  # a1 = 808DC5A0
    jal     func_80063F7C              
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   s0, s1, 0x0164             # s0 = 00000164
    or      a1, s0, $zero              # a1 = 00000164
    jal     func_8004A484              
    lw      a0, 0x0054($sp)            
    lui     a3, %hi(var_808DC588)      # a3 = 808E0000
    addiu   t6, s1, 0x0184             # t6 = 00000184
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_808DC588)  # a3 = 808DC588
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              # a1 = 00000164
    jal     func_8004A874              
    or      a2, s1, $zero              # a2 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808DB65C:
    lw      t7, 0x0180(s1)             # 00000180
    addu    v0, t7, v1                 
    lh      t8, 0x002E(v0)             # 0000002E
    addiu   v1, v1, 0x0040             # v1 = 00000040
    slti    $at, v1, 0x0180            
    bne     $at, $zero, lbl_808DB65C   
    sh      t8, 0x0036(v0)             # 00000036
    lh      t9, 0x001C(s1)             # 0000001C
    addiu   t0, $zero, 0x0024          # t0 = 00000024
    or      s0, $zero, $zero           # s0 = 00000000
    bne     t9, $zero, lbl_808DB6EC    
    lui     a0, 0x0601                 # a0 = 06010000
    sh      t0, 0x0158(s1)             # 00000158
    addiu   s2, $zero, 0x0002          # s2 = 00000002
lbl_808DB694:
    bne     s0, $zero, lbl_808DB6A4    
    addiu   v0, $zero, 0xE000          # v0 = FFFFE000
    beq     $zero, $zero, lbl_808DB6A4 
    addiu   v0, $zero, 0x2000          # v0 = 00002000
lbl_808DB6A4:
    lh      t1, 0x00B6(s1)             # 000000B6
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addu    a2, v0, t1                 
    sll     a2, a2, 16                 
    jal     func_808DB230              
    sra     a2, a2, 16                 
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s2, lbl_808DB694       
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xCC90             # a0 = 0600CC90
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF0
    lui     t2, %hi(func_808DBA94)     # t2 = 808E0000
    addiu   t2, t2, %lo(func_808DBA94) # t2 = 808DBA94
    beq     $zero, $zero, lbl_808DB718 
    sw      t2, 0x0154(s1)             # 00000154
lbl_808DB6EC:
    sh      $zero, 0x015E(s1)          # 0000015E
    lh      v0, 0x015E(s1)             # 0000015E
    addiu   a0, a0, 0xCDA0             # a0 = FFFFCDA0
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF0
    sh      v0, 0x015C(s1)             # 0000015C
    sh      v0, 0x015A(s1)             # 0000015A
    jal     func_80033EF4              
    sh      v0, 0x0158(s1)             # 00000158
    lui     t3, %hi(func_808DB7A8)     # t3 = 808E0000
    addiu   t3, t3, %lo(func_808DB7A8) # t3 = 808DB7A8
    sw      t3, 0x0154(s1)             # 00000154
lbl_808DB718:
    sh      $zero, 0x0160(s1)          # 00000160
    lw      a0, 0x0054($sp)            
    lw      a3, 0x0040($sp)            
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a2, %hi(var_808DC598)      # a2 = 808E0000
    sw      v0, 0x013C(s1)             # 0000013C
    addiu   a2, a2, %lo(var_808DC598)  # a2 = 808DC598
    addiu   a0, s1, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_808DB760:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0164             # a1 = 00000164
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808DB7A8:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    lui     $at, 0x42A0                # $at = 42A00000
    sw      s0, 0x0014($sp)            
    mtc1    $at, $f2                   # $f2 = 80.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s7, 0x0030($sp)            
    sw      s6, 0x002C($sp)            
    sw      s5, 0x0028($sp)            
    sw      s4, 0x0024($sp)            
    sw      s3, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    or      s7, $zero, $zero           # s7 = 00000000
    c.lt.s  $f4, $f6                   
    or      s4, $zero, $zero           # s4 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    or      s2, s0, $zero              # s2 = 00000000
    bc1f    lbl_808DB80C               
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $zero, 0x0001          # s7 = 00000001
lbl_808DB80C:
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0024(v0)           # 00000024
    or      t6, $zero, $zero           # t6 = 00000000
    addiu   s6, $zero, 0x0023          # s6 = 00000023
    sub.s   $f0, $f8, $f10             
    addiu   s5, $sp, 0x0060            # s5 = FFFFFFF0
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808DB840               
    sw      t6, 0x0060($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0060($sp)            
lbl_808DB840:
    lwc1    $f18, 0x002C(v0)           # 0000002C
    lwc1    $f16, 0x002C(s0)           # 0000002C
    or      t7, $zero, $zero           # t7 = 00000000
    sub.s   $f0, $f16, $f18            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808DB86C               
    sw      t7, 0x0064($sp)            
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0064($sp)            
lbl_808DB86C:
    lh      t8, 0x0158(s2)             # 00000158
    addiu   v0, s2, 0x0158             # v0 = 00000158
    bnel    t8, $zero, lbl_808DB88C    
    lh      t0, 0x0000(v0)             # 00000158
    lh      t9, 0x008A(s0)             # 0000008A
    beq     $zero, $zero, lbl_808DB89C 
    subu    v1, t9, s3                 
    lh      t0, 0x0000(v0)             # 00000158
lbl_808DB88C:
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0000(v0)             # 00000158
    lh      t2, 0x008A(s0)             # 0000008A
    subu    v1, t2, s3                 
lbl_808DB89C:
    sll     v0, v1, 16                 
    sra     v0, v0, 16                 
    bgez    s1, lbl_808DB8B8           
    andi    t3, s1, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_808DB8B8    
    nop
    addiu   t3, t3, 0xFFFE             # t3 = FFFFFFFE
lbl_808DB8B8:
    sll     t4, t3,  2                 
    addu    t5, s5, t4                 
    lw      t6, 0x0000(t5)             # 00000000
    beql    t6, $zero, lbl_808DB93C    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    beql    s7, $zero, lbl_808DB93C    
    addiu   s1, s1, 0x0001             # s1 = 00000002
    bltz    v0, lbl_808DB8E4           
    subu    a1, $zero, v0              
    beq     $zero, $zero, lbl_808DB8E4 
    or      a1, v0, $zero              # a1 = 00000158
lbl_808DB8E4:
    slti    $at, a1, 0x4001            
    beq     $at, $zero, lbl_808DB938   
    addiu   v0, s2, 0x0158             # v0 = 00000158
    lh      v1, 0x0000(v0)             # 00000158
    or      a1, s4, $zero              # a1 = 00000000
    slti    $at, v1, 0x0004            
    beq     $at, $zero, lbl_808DB908   
    subu    t7, s6, v1                 
    sh      t7, 0x0000(v0)             # 00000158
lbl_808DB908:
    slti    $at, s4, 0x0002            
    bne     $at, $zero, lbl_808DB91C   
    nop
    beq     $zero, $zero, lbl_808DB91C 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_808DB91C:
    lh      t8, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    addu    a2, t8, s3                 
    sll     a2, a2, 16                 
    jal     func_808DB230              
    sra     a2, a2, 16                 
    addiu   s4, s4, 0x0001             # s4 = 00000001
lbl_808DB938:
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_808DB93C:
    slti    $at, s1, 0x0004            
    addiu   s2, s2, 0x0002             # s2 = 00000002
    bne     $at, $zero, lbl_808DB86C   
    addiu   s3, s3, 0x4000             # s3 = 00004000
    sll     v0, s4,  2                 
    subu    v0, v0, s4                 
    slti    $at, v0, 0x0006            
    beq     $at, $zero, lbl_808DBA68   
    or      s1, v0, $zero              # s1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    subu    a0, a2, v0                 
    andi    a0, a0, 0x0003             # a0 = 00000000
    beq     a0, $zero, lbl_808DB9B4    
    addu    a1, a0, v0                 
    sll     v1, v0,  6                 
    addiu   a0, $zero, 0xFFFE          # a0 = FFFFFFFE
lbl_808DB97C:
    lw      t9, 0x0180(s0)             # 00000180
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addu    v0, t9, v1                 
    lbu     t0, 0x0015(v0)             # 00000015
    and     t1, t0, a0                 
    sb      t1, 0x0015(v0)             # 00000015
    lw      t2, 0x0180(s0)             # 00000180
    addu    v0, t2, v1                 
    lbu     t3, 0x0017(v0)             # 00000017
    addiu   v1, v1, 0x0040             # v1 = 00000040
    and     t4, t3, a0                 
    bne     a1, s1, lbl_808DB97C       
    sb      t4, 0x0017(v0)             # 00000017
    beq     s1, a2, lbl_808DBA68       
lbl_808DB9B4:
    addiu   a0, $zero, 0xFFFE          # a0 = FFFFFFFE
    sll     v1, s1,  6                 
    addiu   a1, $zero, 0x0180          # a1 = 00000180
lbl_808DB9C0:
    lw      t5, 0x0180(s0)             # 00000180
    addu    v0, t5, v1                 
    lbu     t6, 0x0015(v0)             # 00000015
    and     t7, t6, a0                 
    sb      t7, 0x0015(v0)             # 00000015
    lw      t8, 0x0180(s0)             # 00000180
    addu    v0, t8, v1                 
    lbu     t9, 0x0017(v0)             # 00000017
    and     t0, t9, a0                 
    sb      t0, 0x0017(v0)             # 00000017
    lw      t1, 0x0180(s0)             # 00000180
    addu    v0, t1, v1                 
    lbu     t2, 0x0055(v0)             # 00000055
    and     t3, t2, a0                 
    sb      t3, 0x0055(v0)             # 00000055
    lw      t4, 0x0180(s0)             # 00000180
    addu    v0, t4, v1                 
    lbu     t5, 0x0057(v0)             # 00000057
    and     t6, t5, a0                 
    sb      t6, 0x0057(v0)             # 00000057
    lw      t7, 0x0180(s0)             # 00000180
    addu    v0, t7, v1                 
    lbu     t8, 0x0095(v0)             # 00000095
    and     t9, t8, a0                 
    sb      t9, 0x0095(v0)             # 00000095
    lw      t0, 0x0180(s0)             # 00000180
    addu    v0, t0, v1                 
    lbu     t1, 0x0097(v0)             # 00000097
    and     t2, t1, a0                 
    sb      t2, 0x0097(v0)             # 00000097
    lw      t3, 0x0180(s0)             # 00000180
    addu    v0, t3, v1                 
    lbu     t4, 0x00D5(v0)             # 000000D5
    and     t5, t4, a0                 
    sb      t5, 0x00D5(v0)             # 000000D5
    lw      t6, 0x0180(s0)             # 00000180
    addu    v0, t6, v1                 
    lbu     t7, 0x00D7(v0)             # 000000D7
    addiu   v1, v1, 0x0100             # v1 = 00000140
    and     t8, t7, a0                 
    bne     v1, a1, lbl_808DB9C0       
    sb      t8, 0x00D7(v0)             # 000000D7
lbl_808DBA68:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    lw      s6, 0x002C($sp)            
    lw      s7, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_808DBA94:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x0158(a0)             # 00000158
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0158(a0)             # 00000158
    lh      t8, 0x0158(a0)             # 00000158
    slti    $at, t8, 0xFFDD            
    beq     $at, $zero, lbl_808DBABC   
    nop
    sh      t9, 0x0158(a0)             # 00000158
lbl_808DBABC:
    jr      $ra                        
    nop


func_808DBAC4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0020($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f6, 0x0090(t6)            # 00000090
    lw      t7, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    c.lt.s  $f4, $f6                   
    lw      a1, 0x0020($sp)            
    bc1fl   lbl_808DBB08               
    lh      t8, 0x001C(t7)             # 0000001C
    beq     $zero, $zero, lbl_808DBC0C 
    lh      a3, 0x008A(t6)             # 0000008A
    lh      t8, 0x001C(t7)             # 0000001C
lbl_808DBB08:
    lw      t0, 0x0020($sp)            
    bnel    t8, $zero, lbl_808DBB88    
    lh      a3, 0x008A(t0)             # 0000008A
    lh      v0, 0x00B6(t7)             # 000000B6
    lh      t9, 0x008A(t7)             # 0000008A
    subu    a3, t9, v0                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    slti    $at, a3, 0x2001            
    bnel    $at, $zero, lbl_808DBB48   
    slti    $at, a3, 0xE000            
    addiu   a3, v0, 0x6000             # a3 = 00006000
    sll     a3, a3, 16                 
    beq     $zero, $zero, lbl_808DBC0C 
    sra     a3, a3, 16                 
    slti    $at, a3, 0xE000            
lbl_808DBB48:
    beq     $at, $zero, lbl_808DBB60   
    nop
    addiu   a3, v0, 0xA000             # a3 = FFFFA000
    sll     a3, a3, 16                 
    beq     $zero, $zero, lbl_808DBC0C 
    sra     a3, a3, 16                 
lbl_808DBB60:
    blez    a3, lbl_808DBB74           
    addiu   a3, v0, 0xE000             # a3 = FFFFE000
    sll     a3, a3, 16                 
    beq     $zero, $zero, lbl_808DBC0C 
    sra     a3, a3, 16                 
lbl_808DBB74:
    addiu   a3, v0, 0x2000             # a3 = 00002000
    sll     a3, a3, 16                 
    beq     $zero, $zero, lbl_808DBC0C 
    sra     a3, a3, 16                 
    lh      a3, 0x008A(t0)             # 0000008A
lbl_808DBB88:
    slti    $at, a3, 0x6001            
    bnel    $at, $zero, lbl_808DBBA0   
    slti    $at, a3, 0x4001            
    beq     $zero, $zero, lbl_808DBC0C 
    addiu   a3, $zero, 0x4000          # a3 = 00004000
    slti    $at, a3, 0x4001            
lbl_808DBBA0:
    bnel    $at, $zero, lbl_808DBBB4   
    slti    $at, a3, 0x2001            
    beq     $zero, $zero, lbl_808DBC0C 
    addiu   a3, $zero, 0x8000          # a3 = FFFF8000
    slti    $at, a3, 0x2001            
lbl_808DBBB4:
    bne     $at, $zero, lbl_808DBBC4   
    nop
    beq     $zero, $zero, lbl_808DBC0C 
    or      a3, $zero, $zero           # a3 = 00000000
lbl_808DBBC4:
    blez    a3, lbl_808DBBD4           
    slti    $at, a3, 0xA000            
    beq     $zero, $zero, lbl_808DBC0C 
    addiu   a3, $zero, 0x4000          # a3 = 00004000
lbl_808DBBD4:
    beql    $at, $zero, lbl_808DBBE8   
    slti    $at, a3, 0xC000            
    beq     $zero, $zero, lbl_808DBC0C 
    addiu   a3, $zero, 0xC000          # a3 = FFFFC000
    slti    $at, a3, 0xC000            
lbl_808DBBE8:
    beql    $at, $zero, lbl_808DBBFC   
    slti    $at, a3, 0xE000            
    beq     $zero, $zero, lbl_808DBC0C 
    addiu   a3, $zero, 0x8000          # a3 = FFFF8000
    slti    $at, a3, 0xE000            
lbl_808DBBFC:
    beq     $at, $zero, lbl_808DBC0C   
    addiu   a3, $zero, 0xC000          # a3 = FFFFC000
    beq     $zero, $zero, lbl_808DBC0C 
    or      a3, $zero, $zero           # a3 = 00000000
lbl_808DBC0C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f8, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808DBC30:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0160(s0)             # 00000160
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808DBC64    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0160(s0)             # 00000160
    lh      v0, 0x0160(s0)             # 00000160
lbl_808DBC64:
    bne     v0, $zero, lbl_808DBC70    
    or      a1, s1, $zero              # a1 = 00000000
    sh      t7, 0x0160(s0)             # 00000160
lbl_808DBC70:
    lbu     v0, 0x0174(s0)             # 00000174
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_808DBC88    
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    jal     func_808DBAC4              
    sb      t9, 0x0174(s0)             # 00000174
lbl_808DBC88:
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t0, 0x001C(s0)             # 0000001C
    bnel    t0, $zero, lbl_808DBCF8    
    lh      t2, 0x0158(s0)             # 00000158
    lh      t1, 0x0158(s0)             # 00000158
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    blez    t1, lbl_808DBD58           
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0164             # a2 = 00000164
    sw      a2, 0x0020($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2033          # a1 = 00002033
    beq     $zero, $zero, lbl_808DBD5C 
    lw      $ra, 0x001C($sp)           
    lh      t2, 0x0158(s0)             # 00000158
lbl_808DBCF8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bgtz    t2, lbl_808DBD28           
    or      a0, s1, $zero              # a0 = 00000000
    lh      t3, 0x015A(s0)             # 0000015A
    bgtzl   t3, lbl_808DBD2C           
    addu    a1, s1, $at                
    lh      t4, 0x015C(s0)             # 0000015C
    bgtzl   t4, lbl_808DBD2C           
    addu    a1, s1, $at                
    lh      t5, 0x015E(s0)             # 0000015E
    blez    t5, lbl_808DBD58           
lbl_808DBD28:
    addu    a1, s1, $at                
lbl_808DBD2C:
    addiu   a2, s0, 0x0164             # a2 = 00000164
    sw      a2, 0x0020($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2033          # a1 = 00002033
lbl_808DBD58:
    lw      $ra, 0x001C($sp)           
lbl_808DBD5C:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808DBD6C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      a2, 0x0048($sp)            
    sll     a2, a2, 16                 
    sw      s0, 0x0018($sp)            
    lw      s0, 0x005C($sp)            
    sra     a2, a2, 16                 
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    lh      t6, 0x005A($sp)            
    lui     $at, %hi(var_808DC5D0)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DC5D0)($at) 
    addu    t7, t6, a2                 
    bgez    t7, lbl_808DBDB4           
    andi    t8, t7, 0x0007             # t8 = 00000000
    beq     t8, $zero, lbl_808DBDB4    
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
lbl_808DBDB4:
    sll     t9, t8,  3                 
    subu    t9, t9, t8                 
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   a2, a2, 0x0001             # a2 = 00000001
    or      v0, s0, $zero              # v0 = 00000000
    cvt.s.w $f6, $f4                   
    lui     t3, 0xDB06                 # t3 = DB060000
    sll     a2, a2, 16                 
    ori     t3, t3, 0x0024             # t3 = DB060024
    addiu   s0, s0, 0x0008             # s0 = 00000008
    sra     a2, a2, 16                 
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x005A($sp)            
    sw      t3, 0x0000(v0)             # 00000000
    lh      t4, 0x005A($sp)            
    lui     v1, %hi(var_808DC5AC)      # v1 = 808E0000
    lui     t1, 0x8012                 # t1 = 80120000
    sll     t5, t4,  2                 
    addu    v1, v1, t5                 
    lw      v1, %lo(var_808DC5AC)(v1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, v1,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t1, t1, t9                 
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t6, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t6, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0004(v0)             # 00000004
    beq     a2, t0, lbl_808DBE74       
    or      v0, s0, $zero              # v0 = 00000008
    lh      t4, 0x0160(a1)             # 00000160
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    subu    t5, t0, t4                 
    mtc1    t5, $f18                   # $f18 = 0.00
    mtc1    a2, $f10                   # $f10 = 0.00
    cvt.s.w $f4, $f18                  
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_808DBE80 
    add.s   $f12, $f16, $f8            
lbl_808DBE74:
    mtc1    a2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f12, $f18                 
lbl_808DBE80:
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     t8, 0xFFFF                 # t8 = FFFF0000
    ori     t8, t8, 0x0096             # t8 = FFFF0096
    ori     t7, t7, 0x0001             # t7 = FA000001
    sw      t7, 0x0000(v0)             # 00000008
    sw      t8, 0x0004(v0)             # 0000000C
    addiu   s0, s0, 0x0008             # s0 = 00000010
    or      v1, s0, $zero              # v1 = 00000010
    lui     t6, 0xFF00                 # t6 = FF000000
    ori     t6, t6, 0x00FF             # t6 = FF0000FF
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(v1)             # 00000010
    sw      t6, 0x0004(v1)             # 00000014
    addiu   s0, s0, 0x0008             # s0 = 00000018
    lui     $at, %hi(var_808DC5D4)     # $at = 808E0000
    lwc1    $f4, %lo(var_808DC5D4)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f6, $f4, $f12             
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     t1, 0xDA38                 # t1 = DA380000
    add.s   $f0, $f6, $f10             
    ori     t1, t1, 0x0003             # t1 = DA380003
    or      a2, s0, $zero              # a2 = 00000018
    mul.s   $f8, $f0, $f16             
    swc1    $f0, 0x0028(a3)            # 00000028
    swc1    $f0, 0x0014(a3)            # 00000014
    swc1    $f0, 0x0000(a3)            # 00000000
    lwc1    $f6, 0x0050($sp)           
    lwc1    $f16, 0x0024(a1)           # 00000024
    mul.s   $f18, $f8, $f12            
    add.s   $f2, $f18, $f4             
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, %hi(var_808DC5D8)     # $at = 808E0000
    mul.s   $f10, $f2, $f6             
    add.s   $f8, $f10, $f16            
    swc1    $f8, 0x0030(a3)            # 00000030
    lwc1    $f10, %lo(var_808DC5D8)($at) 
    lwc1    $f18, 0x0028(a1)           # 00000028
    mul.s   $f16, $f10, $f12           
    add.s   $f6, $f18, $f4             
    add.s   $f8, $f6, $f16             
    swc1    $f8, 0x0034(a3)            # 00000034
    lwc1    $f18, 0x0054($sp)          
    lwc1    $f10, 0x002C(a1)           # 0000002C
    mul.s   $f4, $f2, $f18             
    add.s   $f6, $f4, $f10             
    swc1    $f6, 0x0038(a3)            # 00000038
    sw      t1, 0x0000(a2)             # 00000018
    lw      t2, 0x0040($sp)            
    addiu   s0, s0, 0x0008             # s0 = 00000020
    or      a0, a3, $zero              # a0 = 00000000
    lw      v0, 0x0000(t2)             # 00000000
    lw      a1, 0x02C4(v0)             # 000002CC
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    sw      a1, 0x02C4(v0)             # 000002CC
    jal     func_800AB6BC              # guMtxF2L
    sw      a2, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    or      v1, s0, $zero              # v1 = 00000020
    addiu   s0, s0, 0x0008             # s0 = 00000028
    sw      v0, 0x0004(a2)             # 00000004
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0xDC30             # t4 = 0600DC30
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000020
    sw      t4, 0x0004(v1)             # 00000024
    or      v0, s0, $zero              # v0 = 00000028
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808DBFB4:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s4, 0x0048($sp)            
    sw      s0, 0x0038($sp)            
    sll     s0, a2, 16                 
    sll     s4, a3, 16                 
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sra     s4, s4, 16                 
    sra     s0, s0, 16                 
    sw      $ra, 0x0054($sp)           
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a2, 0x00C8($sp)            
    sw      a3, 0x00CC($sp)            
    slti    $at, s4, 0x0004            
    beq     $at, $zero, lbl_808DC01C   
    sll     a0, s0, 16                 
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    subu    s1, t6, s4                 
    beq     $zero, $zero, lbl_808DC034 
    addiu   s2, $zero, 0x0004          # s2 = 00000004
lbl_808DC01C:
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    subu    s2, t7, s4                 
    slti    $at, s2, 0x0005            
    bne     $at, $zero, lbl_808DC034   
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $zero, 0x0004          # s2 = 00000004
lbl_808DC034:
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s0, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    addiu   s3, $sp, 0x0068            # s3 = FFFFFFA8
    lui     a1, 0x8010                 # a1 = 80100000
    mov.s   $f22, $f0                  
    addiu   a1, a1, 0xEDF0             # a1 = 800FEDF0
    jal     func_800ABA10              
    or      a0, s3, $zero              # a0 = FFFFFFA8
    lh      t8, 0x07A0(s5)             # 000007A0
    sll     t9, t8,  2                 
    addu    t0, s5, t9                 
    jal     func_8004977C              
    lw      a0, 0x0790(t0)             # 00000790
    subu    v1, v0, s0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_808DC094           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808DC094 
    or      v0, v1, $zero              # v0 = 00000000
lbl_808DC094:
    slti    $at, v0, 0x4000            
    beq     $at, $zero, lbl_808DC0F0   
    addiu   s0, s2, 0xFFFF             # s0 = 00000003
    slt     $at, s0, s1                
    bne     $at, $zero, lbl_808DC0E8   
    addiu   s2, s1, 0xFFFF             # s2 = FFFFFFFF
    lw      s1, 0x00D0($sp)            
lbl_808DC0B0:
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    or      a3, s3, $zero              # a3 = FFFFFFA8
    swc1    $f20, 0x0010($sp)          
    swc1    $f22, 0x0014($sp)          
    sw      s4, 0x0018($sp)            
    jal     func_808DBD6C              
    sw      s1, 0x001C($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 00000002
    bne     s0, s2, lbl_808DC0B0       
    or      s1, v0, $zero              # s1 = 00000000
    sw      v0, 0x00D0($sp)            
lbl_808DC0E8:
    beq     $zero, $zero, lbl_808DC13C 
    lw      v0, 0x00D0($sp)            
lbl_808DC0F0:
    slt     $at, s1, s2                
    beq     $at, $zero, lbl_808DC138   
    or      s0, s1, $zero              # s0 = 00000000
    lw      s1, 0x00D0($sp)            
lbl_808DC100:
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    or      a3, s3, $zero              # a3 = FFFFFFA8
    swc1    $f20, 0x0010($sp)          
    swc1    $f22, 0x0014($sp)          
    sw      s4, 0x0018($sp)            
    jal     func_808DBD6C              
    sw      s1, 0x001C($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s2, lbl_808DC100       
    or      s1, v0, $zero              # s1 = 00000000
    sw      v0, 0x00D0($sp)            
lbl_808DC138:
    lw      v0, 0x00D0($sp)            
lbl_808DC13C:
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_808DC16C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    subu    v0, a0, a1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808DC1A0           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808DC1A0 
    or      v1, v0, $zero              # v1 = 00000000
lbl_808DC1A0:
    slti    $at, v1, 0x2001            
    beq     $at, $zero, lbl_808DC1C8   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      $zero, 0x0000(a2)          # 00000000
    sw      t6, 0x0004(a2)             # 00000004
    sw      t7, 0x0008(a2)             # 00000008
    jr      $ra                        
    sw      t8, 0x000C(a2)             # 0000000C
lbl_808DC1C8:
    bltz    v0, lbl_808DC1D8           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808DC1D8 
    or      v1, v0, $zero              # v1 = 00000000
lbl_808DC1D8:
    slti    $at, v1, 0x6000            
    bne     $at, $zero, lbl_808DC200   
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t9, 0x0000(a2)             # 00000000
    sw      t0, 0x0004(a2)             # 00000004
    sw      t1, 0x0008(a2)             # 00000008
    jr      $ra                        
    sw      $zero, 0x000C(a2)          # 0000000C
lbl_808DC200:
    slti    $at, v0, 0x2001            
    bne     $at, $zero, lbl_808DC22C   
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      t2, 0x0000(a2)             # 00000000
    sw      $zero, 0x0004(a2)          # 00000004
    sw      t3, 0x0008(a2)             # 00000008
    jr      $ra                        
    sw      t4, 0x000C(a2)             # 0000000C
lbl_808DC22C:
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t5, 0x0000(a2)             # 00000000
    sw      t6, 0x0004(a2)             # 00000004
    sw      $zero, 0x0008(a2)          # 00000008
    sw      t7, 0x000C(a2)             # 0000000C
    jr      $ra                        
    nop


func_808DC24C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s4, 0x0030($sp)            
    sw      s1, 0x0024($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    lw      a0, 0x0000(s4)             # 00000000
    jal     func_8007E298              
    or      s2, a0, $zero              # s2 = 00000000
    lw      v0, 0x02C0(s2)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s4)             # 00000000
    jal     func_800AB900              
    or      s0, v0, $zero              # s0 = 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lh      t8, 0x001C(s1)             # 0000001C
    lui     t0, 0xDE00                 # t0 = DE000000
    lui     t3, 0xDE00                 # t3 = DE000000
    bne     t8, $zero, lbl_808DC2DC    
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lw      v0, 0x02C0(s2)             # 000002C0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0xB0F8             # t1 = 0600B0F8
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s2)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_808DC2F8 
    nop
lbl_808DC2DC:
    lw      v0, 0x02C0(s2)             # 000002C0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0xABC8             # t4 = 0600ABC8
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s2)             # 000002C0
    sw      t4, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
lbl_808DC2F8:
    jal     func_8007DFBC              
    lw      a0, 0x02D0(s2)             # 000002D0
    sw      v0, 0x02D0(s2)             # 000002D0
    lh      t5, 0x001C(s1)             # 0000001C
    bnel    t5, $zero, lbl_808DC3F0    
    lh      t5, 0x07A0(s4)             # 000007A0
    lh      t6, 0x0158(s1)             # 00000158
    blezl   t6, lbl_808DC470           
    lw      $ra, 0x0034($sp)           
    lh      t7, 0x07A0(s4)             # 000007A0
    sll     t8, t7,  2                 
    addu    t9, s4, t8                 
    jal     func_8004977C              
    lw      a0, 0x0790(t9)             # 00000790
    lh      v1, 0x00B6(s1)             # 000000B6
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    subu    t0, v0, v1                 
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    bltz    t2, lbl_808DC3A4           
    addiu   a2, v1, 0xE000             # a2 = FFFFE000
    lw      t3, 0x02D0(s2)             # 000002D0
    addiu   a2, v1, 0x2000             # a2 = 00002000
    sll     a2, a2, 16                 
    lh      a3, 0x0158(s1)             # 00000158
    sra     a2, a2, 16                 
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808DBFB4              
    sw      t3, 0x0010($sp)            
    sw      v0, 0x02D0(s2)             # 000002D0
    lh      a2, 0x00B6(s1)             # 000000B6
    lh      a3, 0x0158(s1)             # 00000158
    sw      v0, 0x0010($sp)            
    addiu   a2, a2, 0xE000             # a2 = FFFFE000
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_808DBFB4              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808DC46C 
    sw      v0, 0x02D0(s2)             # 000002D0
lbl_808DC3A4:
    lw      t4, 0x02D0(s2)             # 000002D0
    sll     a2, a2, 16                 
    lh      a3, 0x0158(s1)             # 00000158
    sra     a2, a2, 16                 
    jal     func_808DBFB4              
    sw      t4, 0x0010($sp)            
    sw      v0, 0x02D0(s2)             # 000002D0
    lh      a2, 0x00B6(s1)             # 000000B6
    lh      a3, 0x0158(s1)             # 00000158
    sw      v0, 0x0010($sp)            
    addiu   a2, a2, 0x2000             # a2 = 00002000
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_808DBFB4              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808DC46C 
    sw      v0, 0x02D0(s2)             # 000002D0
    lh      t5, 0x07A0(s4)             # 000007A0
lbl_808DC3F0:
    sll     t6, t5,  2                 
    addu    t7, s4, t6                 
    jal     func_8004977C              
    lw      a0, 0x0790(t7)             # 00000790
    sll     a0, v0, 16                 
    sra     a0, a0, 16                 
    lh      a1, 0x00B6(s1)             # 000000B6
    jal     func_808DC16C              
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFE4
    addiu   s0, $sp, 0x005C            # s0 = FFFFFFE4
    addiu   s3, $sp, 0x006C            # s3 = FFFFFFF4
    lw      v0, 0x0000(s0)             # FFFFFFE4
lbl_808DC420:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sll     t8, v0,  1                 
    addu    t9, s1, t8                 
    lh      a3, 0x0158(t9)             # 00000158
    blezl   a3, lbl_808DC464           
    addiu   s0, s0, 0x0004             # s0 = FFFFFFE8
    lh      t0, 0x00B6(s1)             # 000000B6
    sll     t1, v0, 14                 
    lw      t2, 0x02D0(s2)             # 000002D0
    addu    a2, t0, t1                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_808DBFB4              
    sw      t2, 0x0010($sp)            
    sw      v0, 0x02D0(s2)             # 000002D0
    addiu   s0, s0, 0x0004             # s0 = FFFFFFEC
lbl_808DC464:
    bnel    s0, s3, lbl_808DC420       
    lw      v0, 0x0000(s0)             # FFFFFFEC
lbl_808DC46C:
    lw      $ra, 0x0034($sp)           
lbl_808DC470:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    nop

.section .data

var_808DC490: .word 0x00450100, 0x00000000, 0x002C0000, 0x00000304
.word func_808DB5EC
.word func_808DB760
.word func_808DBC30
.word func_808DC24C
var_808DC4B0: .word \
0x00000000, 0x20000000, 0x01040000, 0x00000000, \
0x00000000, 0x19000100, 0x01000000, 0x001E0028, \
0x00170064, 0x00000000, 0x20000000, 0x01040000, \
0x00000000, 0x00000000, 0x19000100, 0x01000000, \
0x00200057, 0x001E0064, 0x00000000, 0x20000000, \
0x01040000, 0x00000000, 0x00000000, 0x19000100, \
0x01000000, 0x00230096, 0x00280064, 0x00000000, \
0x20000000, 0x01040000, 0x00000000, 0x00000000, \
0x19000100, 0x01000000, 0x001E0028, 0x00170064, \
0x00000000, 0x20000000, 0x01040000, 0x00000000, \
0x00000000, 0x19000100, 0x01000000, 0x00200057, \
0x001E0064, 0x00000000, 0x20000000, 0x01040000, \
0x00000000, 0x00000000, 0x19000100, 0x01000000, \
0x00230096, 0x00280064
var_808DC588: .word 0x0A110009, 0x20000000, 0x00000006
.word var_808DC4B0
var_808DC598: .word 0x01000028, 0x00F0FF00
var_808DC5A0: .word 0xC8500064, 0xB0F80190, 0x30F405DC
var_808DC5AC: .word \
0x06015D20, 0x06016120, 0x06016520, 0x06016920, \
0x06016D20, 0x06017120, 0x06017520, 0x06017920, \
0x00000000

.section .rodata

var_808DC5D0: .word 0x3E124925
var_808DC5D4: .word 0x3F333333
var_808DC5D8: .word 0x3F333333, 0x00000000

