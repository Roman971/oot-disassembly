.section .text
func_8086E420:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a1, %hi(var_80870650)      # a1 = 80870000
    addiu   a1, a1, %lo(var_80870650)  # a1 = 80870650
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    sra     t7, t6,  8                 
    andi    t8, t7, 0x00FF             # t8 = 00000000
    bne     t1, $zero, lbl_8086E588    
    sh      t8, 0x0186(s0)             # 00000186
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t2, s0, 0x0188             # t2 = 00000188
    addiu   t3, s0, 0x026C             # t3 = 0000026C
    addiu   t4, $zero, 0x0026          # t4 = 00000026
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, 0x3C64             # a3 = 06003C64
    addiu   a2, a2, 0x3660             # a2 = 06003660
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0360             # a1 = 00000360
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808705FC)      # a3 = 80870000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_808705FC)  # a3 = 808705FC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80870630)      # a1 = 80870000
    lui     a2, %hi(var_80870628)      # a2 = 80870000
    addiu   a2, a2, %lo(var_80870628)  # a2 = 80870628
    addiu   a1, a1, %lo(var_80870630)  # a1 = 80870630
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lh      v0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    beq     v0, $at, lbl_8086E4FC      
    addiu   a1, s0, 0x0078             # a1 = 00000078
    bne     v0, $zero, lbl_8086E504    
lbl_8086E4FC:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x0186(s0)             # 00000186
lbl_8086E504:
    addiu   t6, s0, 0x0024             # t6 = 00000024
    sw      t6, 0x0010($sp)            
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFEC
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    sw      a0, 0x0030($sp)            
    swc1    $f0, 0x0080(s0)            # 00000080
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t7, $sp, 0x0038            # t7 = FFFFFFF0
    addiu   t8, $sp, 0x003C            # t8 = FFFFFFF4
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a1, 0x0030($sp)            
    jal     func_80034908              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8086E564    
    lwc1    $f6, 0x0038($sp)           
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f8, 0x0038($sp)           
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8086E578               
    swc1    $f8, 0x000C(s0)            # 0000000C
lbl_8086E564:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086E578 
    nop
    swc1    $f8, 0x000C(s0)            # 0000000C
lbl_8086E578:
    jal     func_8086E854              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086E61C 
    lw      $ra, 0x002C($sp)           
lbl_8086E588:
    lui     a1, 0x4489                 # a1 = 44890000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    ori     a1, a1, 0x8000             # a1 = 44898000
    jal     func_8001EC20              
    lui     a3, 0x4190                 # a3 = 41900000
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a1, s0, 0x0360             # a1 = 00000360
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             # 00000004
    ori     t2, t0, 0x0010             # t2 = 00000010
    sw      t2, 0x0004(s0)             # 00000004
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808705D0)      # a3 = 80870000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_808705D0)  # a3 = 808705D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     t4, %hi(func_8086F710)     # t4 = 80870000
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    addiu   t4, t4, %lo(func_8086F710) # t4 = 8086F710
    sh      t3, 0x0184(s0)             # 00000184
    sh      $zero, 0x00B6(s0)          # 000000B6
    sw      t4, 0x0180(s0)             # 00000180
    swc1    $f10, 0x0068(s0)           # 00000068
    lw      $ra, 0x002C($sp)           
lbl_8086E61C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8086E62C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0360             # a1 = 00000360
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E658:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s2, 0x0044($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s3, 0x0048($sp)            
    sw      s1, 0x0040($sp)            
    sw      s0, 0x003C($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f26                  # $f26 = 0.25
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f24                  # $f24 = 30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f20                  # $f20 = -10.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, a0, 0x0024             # s1 = 00000024
    addiu   s3, $zero, 0x000A          # s3 = 0000000A
    mfc1    a2, $f20                   
lbl_8086E6B4:
    mfc1    a3, $f22                   
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    swc1    $f24, 0x0010($sp)          
    jal     func_8001CEDC              
    swc1    $f26, 0x0014($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_8086E6B4       
    mfc1    a2, $f20                   
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    lw      s2, 0x0044($sp)            
    lw      s3, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_8086E704:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    lw      a2, 0x002C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a3, 0x0034($sp)            
    lh      t9, 0x0032($sp)            
    lui     t6, %hi(var_80870664)      # t6 = 80870000
    lui     t7, %hi(var_80870668)      # t7 = 80870000
    addiu   t7, t7, %lo(var_80870668)  # t7 = 80870668
    addiu   t6, t6, %lo(var_80870664)  # t6 = 80870664
    lui     a3, %hi(var_80870658)      # a3 = 80870000
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    sw      t8, 0x0018($sp)            
    addiu   a3, a3, %lo(var_80870658)  # a3 = 80870658
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_8001BD94              
    sw      t9, 0x001C($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E76C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0020($sp)            
    addiu   t6, $zero, 0x0514          # t6 = 00000514
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8001CF94              
    addiu   a1, a1, 0x0008             # a1 = 00000008
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E7B0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lwc1    $f4, 0x0024(a0)            # 00000024
    lw      t6, 0x0034($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    swc1    $f4, 0x0024($sp)           
    lwc1    $f6, 0x000C(a0)            # 0000000C
    addu    t7, t7, t6                 
    addiu   $at, $zero, 0x0007         # $at = 00000007
    swc1    $f6, 0x0028($sp)           
    lwc1    $f8, 0x002C(a0)            # 0000002C
    swc1    $f8, 0x002C($sp)           
    lw      t7, 0x1DE4(t7)             # 00011DE4
    divu    $zero, t7, $at             
    mfhi    t8                         
    bnel    t8, $zero, lbl_8086E848    
    lw      $ra, 0x001C($sp)           
    lw      t0, 0x0180(a0)             # 00000180
    lui     t9, %hi(func_8086F0AC)     # t9 = 80870000
    addiu   t9, t9, %lo(func_8086F0AC) # t9 = 8086F0AC
    bne     t9, t0, lbl_8086E830       
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lwc1    $f10, 0x0028(a0)           # 00000028
    lwc1    $f16, 0x000C(a0)           # 0000000C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    sub.s   $f18, $f10, $f16           
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_8086E848               
    lw      $ra, 0x001C($sp)           
lbl_8086E830:
    lw      a0, 0x0034($sp)            
    addiu   a2, $zero, 0x00FA          # a2 = 000000FA
    addiu   a3, $zero, 0x028A          # a3 = 0000028A
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
lbl_8086E848:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E854:
    lw      t6, 0x0004(a0)             # 00000004
    lwc1    $f4, 0x000C(a0)            # 0000000C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t8, %hi(func_8086ECDC)     # t8 = 80870000
    addiu   t8, t8, %lo(func_8086ECDC) # t8 = 8086ECDC
    and     t7, t6, $at                
    sw      $zero, 0x0134(a0)          # 00000134
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_8086E884:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t8, 0x0004(a2)             # 00000004
    lh      t7, 0x008A(a2)             # 0000008A
    lui     t6, %hi(func_808704B8)     # t6 = 80870000
    addiu   t6, t6, %lo(func_808704B8) # t6 = 808704B8
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t6, 0x0134(a2)             # 00000134
    sw      t9, 0x0004(a2)             # 00000004
    lui     a1, 0x0600                 # a1 = 06000000
    sh      t7, 0x00B6(a2)             # 000000B6
    sw      a2, 0x0018($sp)            
    addiu   a1, a1, 0x3C64             # a1 = 06003C64
    jal     func_8008D1C4              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)            
    jal     func_8086E658              
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    lui     t0, %hi(func_8086ED38)     # t0 = 80870000
    addiu   t0, t0, %lo(func_8086ED38) # t0 = 8086ED38
    sw      t0, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E8F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0AC0             # a1 = 06000AC0
    jal     func_8008D1C4              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_8086EE7C)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086EE7C) # t6 = 8086EE7C
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E934:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0DDC             # a1 = 06000DDC
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_8086F0AC)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086F0AC) # t6 = 8086F0AC
    lw      t7, 0x0180(a2)             # 00000180
    lui     t9, %hi(func_8086EF7C)     # t9 = 80870000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    bne     t6, t7, lbl_8086E97C       
    addiu   t9, t9, %lo(func_8086EF7C) # t9 = 8086EF7C
    beq     $zero, $zero, lbl_8086E980 
    sh      t8, 0x0184(a2)             # 00000184
lbl_8086E97C:
    sh      $zero, 0x0184(a2)          # 00000184
lbl_8086E980:
    sw      t9, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086E994:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0344             # a1 = 06000344
    jal     func_8008D1C4              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x0180(s0)             # 00000180
    lui     v0, %hi(func_8086F0AC)     # v0 = 80870000
    addiu   v0, v0, %lo(func_8086F0AC) # v0 = 8086F0AC
    beq     v0, t6, lbl_8086E9D4       
    lui     $at, 0x4120                # $at = 41200000
    lh      t7, 0x0186(s0)             # 00000186
    sh      t7, 0x0184(s0)             # 00000184
lbl_8086E9D4:
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0094(s0)            # 00000094
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    add.s   $f0, $f4, $f6              
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f2                   
    swc1    $f0, 0x0350(s0)            # 00000350
    bc1fl   lbl_8086EA10               
    lwc1    $f8, 0x0350(s0)            # 00000350
    beq     $zero, $zero, lbl_8086EA14 
    swc1    $f2, 0x0350(s0)            # 00000350
    lwc1    $f8, 0x0350(s0)            # 00000350
lbl_8086EA10:
    swc1    $f8, 0x0350(s0)            # 00000350
lbl_8086EA14:
    lwc1    $f0, 0x0350(s0)            # 00000350
    lw      a1, 0x002C($sp)            
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_8086EA40               
    lui     $at, 0x4248                # $at = 42480000
    jal     func_8086E76C              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    lwc1    $f0, 0x0350(s0)            # 00000350
    lui     $at, 0x4248                # $at = 42480000
lbl_8086EA40:
    mtc1    $at, $f16                  # $f16 = 50.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38C2          # a1 = 000038C2
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_8086EA6C               
    sw      v0, 0x0180(s0)             # 00000180
    jal     func_80022FD0              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    sw      v0, 0x0180(s0)             # 00000180
lbl_8086EA6C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EA80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3910             # a1 = 06003910
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    sw      t6, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t7, 0x0371(s0)             # 00000371
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0371(s0)             # 00000371
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C6          # a1 = 000038C6
    lui     t9, %hi(func_8086F22C)     # t9 = 80870000
    addiu   t9, t9, %lo(func_8086F22C) # t9 = 8086F22C
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EB08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x08FC             # a1 = 060008FC
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_8086F280)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086F280) # t6 = 8086F280
    sh      $zero, 0x0184(a3)          # 00000184
    sw      t6, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EB50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x0184(a0)             # 00000184
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)            
    sw      a0, 0x0020($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)            
    lui     t8, %hi(func_8086F594)     # t8 = 80870000
    addiu   t8, t8, %lo(func_8086F594) # t8 = 8086F594
    sw      t8, 0x0180(a0)             # 00000180
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EB9C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x005C($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x003C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f12                  # $f12 = 25.00
    lwc1    $f6, 0x003C($sp)           
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x40C0                # $at = 40C00000
    mul.s   $f8, $f12, $f6             
    mtc1    $at, $f18                  # $f18 = 6.00
    lw      a1, 0x005C($sp)            
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f10, $f4, $f8             
    mul.s   $f8, $f12, $f0             
    swc1    $f10, 0x004C($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    lw      a3, 0x004C($sp)            
    sub.s   $f6, $f16, $f18            
    swc1    $f6, 0x0050($sp)           
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f16, 0x0050($sp)          
    add.s   $f10, $f4, $f8             
    swc1    $f16, 0x0010($sp)          
    swc1    $f10, 0x0054($sp)          
    lwc1    $f18, 0x0054($sp)          
    swc1    $f18, 0x0014($sp)          
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x0018($sp)            
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t7, 0x001C($sp)            
    lh      t8, 0x00B8(s0)             # 000000B8
    swc1    $f0, 0x0038($sp)           
    sw      t9, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x0020($sp)            
    lwc1    $f2, 0x0038($sp)           
    beq     v0, $zero, lbl_8086ECBC    
    lwc1    $f14, 0x003C($sp)          
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x3FC0                # $at = 3FC00000
    mul.s   $f4, $f0, $f14             
    mtc1    $at, $f12                  # $f12 = 1.50
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFF4
    mul.s   $f16, $f0, $f2             
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lw      a3, 0x005C($sp)            
    add.s   $f8, $f6, $f4              
    mul.s   $f4, $f12, $f14            
    swc1    $f8, 0x004C($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f8                 # $f8 = 0.00
    add.s   $f18, $f10, $f16           
    mul.s   $f10, $f12, $f2            
    swc1    $f18, 0x0054($sp)          
    lwc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f4, 0x0040($sp)           
    swc1    $f8, 0x0044($sp)           
    swc1    $f10, 0x0048($sp)          
    jal     func_8086E704              
    swc1    $f6, 0x0050($sp)           
lbl_8086ECBC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387E          # a1 = 0000387E
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_8086ECDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x43F0                # $at = 43F00000
    mtc1    $at, $f6                   # $f6 = 480.00
    lwc1    $f0, 0x0090(a0)            # 00000090
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f0, $f6                   
    swc1    $f4, 0x0028(a0)            # 00000028
    bc1fl   lbl_8086ED2C               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f8                   # $f8 = 200.00
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_8086ED2C               
    lw      $ra, 0x0014($sp)           
    jal     func_8086E884              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8086ED2C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086ED38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_8086ED9C    
    lui     $at, 0x4080                # $at = 40800000
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_8086ED8C               
    nop
    jal     func_8086E8F4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086EE08 
    lw      a0, 0x0020($sp)            
lbl_8086ED8C:
    jal     func_8086E934              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086EE08 
    lw      a0, 0x0020($sp)            
lbl_8086ED9C:
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f8                   # $f8 = 0.00
    lui     $at, 0x3E80                # $at = 3E800000
    lw      a0, 0x0020($sp)            
    c.le.s  $f0, $f8                   
    nop
    bc1f    lbl_8086EDE8               
    nop
    mtc1    $at, $f10                  # $f10 = 0.25
    lui     $at, %hi(var_80870680)     # $at = 80870000
    lwc1    $f18, %lo(var_80870680)($at) 
    mul.s   $f16, $f0, $f10            
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_8086EE08 
    lw      a0, 0x0020($sp)            
lbl_8086EDE8:
    jal     func_8008D6A8              
    lui     a1, 0x40A0                 # a1 = 40A00000
    beq     v0, $zero, lbl_8086EE04    
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
lbl_8086EE04:
    lw      a0, 0x0020($sp)            
lbl_8086EE08:
    jal     func_8008D6A8              
    lui     a1, 0x4000                 # a1 = 40000000
    beq     v0, $zero, lbl_8086EE20    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C2          # a1 = 000038C2
lbl_8086EE20:
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4140                 # a1 = 41400000
    beq     v0, $zero, lbl_8086EE3C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C3          # a1 = 000038C3
lbl_8086EE3C:
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4040                 # a1 = 40400000
    bne     v0, $zero, lbl_8086EE5C    
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_8086EE68    
lbl_8086EE5C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8086E76C              
    lw      a1, 0x002C($sp)            
lbl_8086EE68:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EE7C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_8086EEE0    
    lui     $at, 0x4080                # $at = 40800000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C5          # a1 = 000038C5
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8086E658              
    lw      a1, 0x002C($sp)            
    jal     func_8086E854              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086EF34 
    lw      a0, 0x0020($sp)            
lbl_8086EEE0:
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x40C0                # $at = 40C00000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_8086EF34               
    lw      a0, 0x0020($sp)            
    mtc1    $at, $f6                   # $f6 = 6.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    sub.s   $f8, $f6, $f0              
    lui     $at, %hi(var_80870684)     # $at = 80870000
    lwc1    $f18, %lo(var_80870684)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    lw      a0, 0x0020($sp)            
lbl_8086EF34:
    jal     func_8008D6A8              
    lui     a1, 0x4000                 # a1 = 40000000
    beq     v0, $zero, lbl_8086EF4C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C4          # a1 = 000038C4
lbl_8086EF4C:
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4080                 # a1 = 40800000
    beq     v0, $zero, lbl_8086EF68    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8086E76C              
    lw      a1, 0x002C($sp)            
lbl_8086EF68:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086EF7C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0028(s0)            # 00000028
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8086EFC8    
    lui     a1, 0x3F00                 # a1 = 3F000000
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_8086EFC8    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_8086EFC8:
    jal     func_8008D6A8              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_8086EFE0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C1          # a1 = 000038C1
lbl_8086EFE0:
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x440C                # $at = 440C0000
    c.lt.s  $f0, $f6                   
    nop
    bc1t    lbl_8086F020               
    nop
    mtc1    $at, $f8                   # $f8 = 560.00
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    c.lt.s  $f8, $f0                   
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    addiu   t7, $zero, 0x038E          # t7 = 0000038E
    bc1fl   lbl_8086F034               
    lh      a1, 0x008A(s0)             # 0000008A
lbl_8086F020:
    jal     func_8086E8F4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086F09C 
    lw      $ra, 0x0024($sp)           
    lh      a1, 0x008A(s0)             # 0000008A
lbl_8086F034:
    jal     func_80064508              
    sw      t7, 0x0010($sp)            
    bltz    v0, lbl_8086F050           
    sll     v1, v0, 16                 
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8086F058 
    sra     v1, v1, 16                 
lbl_8086F050:
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_8086F058:
    slti    $at, v1, 0x038E            
    beql    $at, $zero, lbl_8086F09C   
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x0184(s0)             # 00000184
    lui     $at, 0x4348                # $at = 43480000
    bnel    t8, $zero, lbl_8086F09C    
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x0094(s0)           # 00000094
    mtc1    $at, $f16                  # $f16 = 200.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_8086F09C               
    lw      $ra, 0x0024($sp)           
    jal     func_8086E994              
    lw      a1, 0x003C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_8086F09C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8086F0AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624              
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_8086F128    
    lui     $at, 0x4150                # $at = 41500000
    lh      v0, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8086F100    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
    lh      v0, 0x0184(s0)             # 00000184
lbl_8086F100:
    bne     v0, $zero, lbl_8086F118    
    nop
    jal     func_8086E934              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086F1F8 
    lui     $at, 0x4320                # $at = 43200000
lbl_8086F118:
    jal     func_8086E994              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8086F1F8 
    lui     $at, 0x4320                # $at = 43200000
lbl_8086F128:
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 160.00
    lui     $at, %hi(var_80870688)     # $at = 80870000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_8086F16C               
    lw      a0, 0x0020($sp)            
    lwc1    $f6, %lo(var_80870688)($at) 
    mul.s   $f12, $f6, $f0             
    jal     func_800CF470              
    nop
    lwc1    $f8, 0x0350(s0)            # 00000350
    lwc1    $f16, 0x000C(s0)           # 0000000C
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      a0, 0x0020($sp)            
lbl_8086F16C:
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     v0, $zero, lbl_8086F184    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8086EB9C              
    lw      a1, 0x002C($sp)            
lbl_8086F184:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f6, 0x0350(s0)            # 00000350
    lw      a0, 0x0020($sp)            
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8086F1C0               
    lui     $at, 0x4248                # $at = 42480000
    jal     func_8008D6A8              
    lui     a1, 0x4150                 # a1 = 41500000
    beq     v0, $zero, lbl_8086F1BC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8086E76C              
    lw      a1, 0x002C($sp)            
lbl_8086F1BC:
    lui     $at, 0x4248                # $at = 42480000
lbl_8086F1C0:
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f10, 0x0350(s0)           # 00000350
    lw      a0, 0x0020($sp)            
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_8086F1F8               
    lui     $at, 0x4320                # $at = 43200000
    jal     func_8008D6A8              
    lui     a1, 0x4150                 # a1 = 41500000
    beq     v0, $zero, lbl_8086F1F4    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C3          # a1 = 000038C3
lbl_8086F1F4:
    lui     $at, 0x4320                # $at = 43200000
lbl_8086F1F8:
    mtc1    $at, $f18                  # $f18 = 160.00
    lwc1    $f16, 0x0090(s0)           # 00000090
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_8086F21C               
    lw      $ra, 0x001C($sp)           
    jal     func_8086E8F4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8086F21C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8086F22C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8086F25C    
    lw      t6, 0x0018($sp)            
    jal     func_8086EB08              
    lw      a0, 0x0018($sp)            
    lw      t6, 0x0018($sp)            
lbl_8086F25C:
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x40A0                 # a3 = 40A00000
    addiu   a0, t6, 0x0028             # a0 = 00000028
    jal     func_80064280              
    lw      a1, 0x000C(t6)             # 0000000C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086F280:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s6, 0x0058($sp)            
    sw      s5, 0x0054($sp)            
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s4, 0x0050($sp)            
    sw      s3, 0x004C($sp)            
    sw      s2, 0x0048($sp)            
    sw      s1, 0x0044($sp)            
    sw      s0, 0x0040($sp)            
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    addiu   s0, s5, 0x013C             # s0 = 0000013C
    jal     func_8008C9C0              
    or      a0, s0, $zero              # a0 = 0000013C
    beq     v0, $zero, lbl_8086F2D4    
    lui     $at, 0x3F00                # $at = 3F000000
    lh      t6, 0x0184(s5)             # 00000184
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0184(s5)             # 00000184
lbl_8086F2D4:
    mtc1    $at, $f22                  # $f22 = 0.50
    addiu   a0, s5, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s5)             # 0000000C
    mfc1    a2, $f22                   
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lh      t8, 0x0184(s5)             # 00000184
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE8
    bne     t8, $at, lbl_8086F354      
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFF4
    lwc1    $f4, 0x0024(s5)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    swc1    $f4, 0x0070($sp)           
    lwc1    $f6, 0x0028(s5)            # 00000028
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, 0xBF00                # $at = BF000000
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f18                  # $f18 = -0.50
    addiu   a2, $zero, 0xFFEC          # a2 = FFFFFFEC
    or      a3, s6, $zero              # a3 = 00000000
    swc1    $f10, 0x0074($sp)          
    lwc1    $f16, 0x002C(s5)           # 0000002C
    swc1    $f20, 0x007C($sp)          
    swc1    $f20, 0x0084($sp)          
    swc1    $f18, 0x0080($sp)          
    jal     func_8086E704              
    swc1    $f16, 0x0078($sp)          
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C7          # a1 = 000038C7
lbl_8086F354:
    mtc1    $zero, $f20                # $f20 = 0.00
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_8086F380    
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_8086E76C              
    or      a1, s6, $zero              # a1 = 00000000
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C3          # a1 = 000038C3
lbl_8086F380:
    lh      v0, 0x0184(s5)             # 00000184
    slti    $at, v0, 0x0003            
    beql    $at, $zero, lbl_8086F3D8   
    slti    $at, v0, 0x0006            
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    cvt.s.w $f6, $f4                   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_8087068C)     # $at = 80870000
    lwc1    $f4, %lo(var_8087068C)($at) 
    or      a0, s5, $zero              # a0 = 00000000
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    mul.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_8086F568 
    lw      $ra, 0x005C($sp)           
    slti    $at, v0, 0x0006            
lbl_8086F3D8:
    beq     $at, $zero, lbl_8086F424   
    addiu   t9, v0, 0xFFFE             # t9 = FFFFFFFE
    mtc1    t9, $f8                    # $f8 = NaN
    lui     $at, %hi(var_80870690)     # $at = 80870000
    lwc1    $f16, %lo(var_80870690)($at) 
    cvt.s.w $f10, $f8                  
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lui     $at, %hi(var_80870694)     # $at = 80870000
    lwc1    $f8, %lo(var_80870694)($at) 
    or      a0, s5, $zero              # a0 = 00000000
    mul.s   $f18, $f10, $f16           
    sub.s   $f6, $f4, $f18             
    mul.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_8086F568 
    lw      $ra, 0x005C($sp)           
lbl_8086F424:
    slti    $at, v0, 0x000B            
    beq     $at, $zero, lbl_8086F478   
    addiu   a0, s5, 0x0050             # a0 = 00000050
    addiu   t0, v0, 0xFFFB             # t0 = FFFFFFFB
    mtc1    t0, $f16                   # $f16 = NaN
    lui     $at, %hi(var_80870698)     # $at = 80870000
    lwc1    $f18, %lo(var_80870698)($at) 
    cvt.s.w $f4, $f16                  
    lui     $at, %hi(var_8087069C)     # $at = 80870000
    lwc1    $f8, %lo(var_8087069C)($at) 
    lui     $at, %hi(var_808706A0)     # $at = 80870000
    lwc1    $f16, %lo(var_808706A0)($at) 
    or      a0, s5, $zero              # a0 = 00000000
    mul.s   $f6, $f4, $f18             
    add.s   $f10, $f6, $f8             
    mul.s   $f4, $f10, $f16            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_8086F568 
    lw      $ra, 0x005C($sp)           
lbl_8086F478:
    mfc1    a1, $f20                   
    lui     a2, 0x3A03                 # a2 = 3A030000
    jal     func_8006385C              
    ori     a2, a2, 0x126F             # a2 = 3A03126F
    beq     v0, $zero, lbl_8086F558    
    or      a0, s6, $zero              # a0 = 00000000
    addiu   s1, s5, 0x0024             # s1 = 00000024
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38C5          # a3 = 000038C5
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x0070          # a3 = 00000070
    lui     $at, 0x40E0                # $at = 40E00000
    lui     s3, %hi(var_8087067C)      # s3 = 80870000
    lui     s2, %hi(var_80870678)      # s2 = 80870000
    mtc1    $at, $f20                  # $f20 = 7.00
    addiu   s2, s2, %lo(var_80870678)  # s2 = 80870678
    addiu   s3, s3, %lo(var_8087067C)  # s3 = 8087067C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x0014          # s4 = 00000014
lbl_8086F4D8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f18, $f0, $f22            
    mul.s   $f6, $f18, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x007C($sp)           
    mul.s   $f8, $f0, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0080($sp)           
    sub.s   $f10, $f0, $f22            
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    mul.s   $f16, $f10, $f20           
    jal     func_80063BF0              
    swc1    $f16, 0x0084($sp)          
    lui     a3, %hi(var_8087066C)      # a3 = 80870000
    addiu   t1, $zero, 0x0019          # t1 = 00000019
    sw      t1, 0x001C($sp)            
    addiu   a3, a3, %lo(var_8087066C)  # a3 = 8087066C
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFF4
    sw      s2, 0x0010($sp)            
    sw      s3, 0x0014($sp)            
    sw      v0, 0x0018($sp)            
    jal     func_8001D18C              
    sw      $zero, 0x0020($sp)         
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s4, lbl_8086F4D8       
    nop
    jal     func_80020EB4              
    or      a0, s5, $zero              # a0 = 00000000
lbl_8086F558:
    lwc1    $f0, 0x0050(s5)            # 00000050
    swc1    $f0, 0x0058(s5)            # 00000058
    swc1    $f0, 0x0054(s5)            # 00000054
    lw      $ra, 0x005C($sp)           
lbl_8086F568:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    lw      s5, 0x0054($sp)            
    lw      s6, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_8086F594:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x005C($sp)            
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_8086F5BC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
    lh      v0, 0x0184(s0)             # 00000184
lbl_8086F5BC:
    bnel    v0, $zero, lbl_8086F5D4    
    slti    $at, v0, 0x0040            
    jal     func_8086EB08              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x0184(s0)             # 00000184
    slti    $at, v0, 0x0040            
lbl_8086F5D4:
    bne     $at, $zero, lbl_8086F6E8   
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8086F6E8    
    addiu   v1, v0, 0xFFC0             # v1 = FFFFFFC0
    sra     v1, v1,  1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    subu    t9, t8, v1                 
    mtc1    t9, $f16                   # $f16 = 0.00
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f6                   # $f6 = 32.00
    cvt.s.w $f18, $f16                 
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    andi    t0, v1, 0x0002             # t0 = 00000000
    sub.s   $f8, $f4, $f6              
    mul.s   $f4, $f10, $f18            
    lui     $at, 0xC120                # $at = C1200000
    add.s   $f6, $f8, $f4              
    beq     t0, $zero, lbl_8086F640    
    swc1    $f6, 0x0050($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    beq     $zero, $zero, lbl_8086F64C 
    lwc1    $f16, 0x0024(s0)           # 00000024
lbl_8086F640:
    mtc1    $at, $f0                   # $f0 = 10.00
    nop
    lwc1    $f16, 0x0024(s0)           # 00000024
lbl_8086F64C:
    andi    t1, v1, 0x0001             # t1 = 00000000
    lui     $at, 0xC120                # $at = C1200000
    add.s   $f10, $f0, $f16            
    beq     t1, $zero, lbl_8086F670    
    swc1    $f10, 0x004C($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    beq     $zero, $zero, lbl_8086F67C 
    lwc1    $f18, 0x002C(s0)           # 0000002C
lbl_8086F670:
    mtc1    $at, $f0                   # $f0 = 10.00
    nop
    lwc1    $f18, 0x002C(s0)           # 0000002C
lbl_8086F67C:
    add.s   $f8, $f0, $f18             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0054($sp)           
    lui     $at, %hi(var_808706A4)     # $at = 80870000
    lwc1    $f4, %lo(var_808706A4)($at) 
    lui     $at, %hi(var_808706A8)     # $at = 80870000
    lwc1    $f16, %lo(var_808706A8)($at) 
    mul.s   $f6, $f0, $f4              
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    addiu   t5, $zero, 0x00EB          # t5 = 000000EB
    addiu   t6, $zero, 0x00F5          # t6 = 000000F5
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    add.s   $f10, $f6, $f16            
    sw      t7, 0x0024($sp)            
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    swc1    $f10, 0x0028($sp)          
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x005C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFF4
    jal     func_8001DC4C              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
lbl_8086F6E8:
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_8086F710:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    lh      t7, 0x0184(s0)             # 00000184
    lui     $at, 0xBF80                # $at = BF800000
    lw      v1, 0x1C44(t6)             # 00001C44
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0184(s0)             # 00000184
    lh      t9, 0x0184(s0)             # 00000184
    bnel    t9, $zero, lbl_8086F758    
    lh      t0, 0x0018(s0)             # 00000018
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    swc1    $f4, 0x006C(s0)            # 0000006C
    lh      t0, 0x0018(s0)             # 00000018
lbl_8086F758:
    lhu     v0, 0x0088(s0)             # 00000088
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t1, t0, 0x1554             # t1 = 00001554
    andi    t2, v0, 0x0020             # t2 = 00000000
    beq     t2, $zero, lbl_8086F7BC    
    sh      t1, 0x0018(s0)             # 00000018
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, %hi(var_808706AC)     # $at = 80870000
    lwc1    $f8, 0x0068(s0)            # 00000068
    swc1    $f6, 0x006C(s0)            # 0000006C
    lwc1    $f10, %lo(var_808706AC)($at) 
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8086F7B8               
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8086F7BC 
    lhu     v0, 0x0088(s0)             # 00000088
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_8086F7B8:
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8086F7BC:
    andi    t3, v0, 0x0008             # t3 = 00000000
    bne     t3, $zero, lbl_8086F81C    
    andi    t4, v0, 0x0001             # t4 = 00000000
    bnel    t4, $zero, lbl_8086F820    
    lb      v0, 0x013E(v1)             # 0000013E
    lbu     t5, 0x0370(s0)             # 00000370
    andi    t6, t5, 0x0002             # t6 = 00000000
    bnel    t6, $zero, lbl_8086F820    
    lb      v0, 0x013E(v1)             # 0000013E
    lbu     t7, 0x0371(s0)             # 00000371
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_8086F820    
    lb      v0, 0x013E(v1)             # 0000013E
    lbu     t9, 0x0372(s0)             # 00000372
    lui     $at, 0xC6FA                # $at = C6FA0000
    andi    t0, t9, 0x0002             # t0 = 00000000
    bnel    t0, $zero, lbl_8086F820    
    lb      v0, 0x013E(v1)             # 0000013E
    mtc1    $at, $f18                  # $f18 = -32000.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    c.eq.s  $f18, $f4                  
    nop
    bc1fl   lbl_8086F934               
    lh      t8, 0x0184(s0)             # 00000184
lbl_8086F81C:
    lb      v0, 0x013E(v1)             # 0000013E
lbl_8086F820:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8086F840      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8086F8A0      
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    bnel    t1, $zero, lbl_8086F8A4    
    lwc1    $f6, 0x0024(s0)            # 00000024
lbl_8086F840:
    lbu     v0, 0x0370(s0)             # 00000370
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_8086F8A0    
    andi    t3, v0, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_8086F8A0    
    andi    t4, v0, 0x0004             # t4 = 00000000
    beq     t4, $zero, lbl_8086F8A0    
    andi    t6, v0, 0xFFE9             # t6 = 00000000
    sb      t6, 0x0370(s0)             # 00000370
    ori     t7, t6, 0x0008             # t7 = 00000008
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sb      t7, 0x0370(s0)             # 00000370
    sw      t8, 0x0378(s0)             # 00000378
    addiu   a0, v1, 0x0A10             # a0 = 00000A10
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE8
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t9, 0x0042($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addu    t0, t9, $at                
    sh      t0, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_8086F948 
    sh      t1, 0x0184(s0)             # 00000184
lbl_8086F8A0:
    lwc1    $f6, 0x0024(s0)            # 00000024
lbl_8086F8A4:
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f10                  # $f10 = 11.00
    swc1    $f6, 0x004C($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x3380             # t7 = 06003380
    add.s   $f16, $f8, $f10            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    swc1    $f16, 0x0050($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    sw      t7, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x005C($sp)            
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    lui     a2, 0x40C0                 # a2 = 40C00000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C              
    swc1    $f18, 0x0054($sp)          
    lw      a0, 0x005C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38C0          # a3 = 000038C0
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086F94C 
    lw      $ra, 0x0034($sp)           
    lh      t8, 0x0184(s0)             # 00000184
lbl_8086F934:
    addiu   $at, $zero, 0xFED4         # $at = FFFFFED4
    bnel    t8, $at, lbl_8086F94C      
    lw      $ra, 0x0034($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8086F948:
    lw      $ra, 0x0034($sp)           
lbl_8086F94C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_8086F95C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_8086ED38)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086ED38) # t6 = 8086ED38
    bne     t6, v0, lbl_8086FAAC       
    lwc1    $f14, 0x0154(a0)           # 00000154
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f14, $f4                  
    nop
    bc1fl   lbl_8086F9B4               
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    swc1    $f16, 0x035C(a0)           # 0000035C
    swc1    $f16, 0x0358(a0)           # 00000358
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f16, 0x0354(a0)           # 00000354
    mtc1    $at, $f6                   # $f6 = 1.00
lbl_8086F9B4:
    lui     $at, 0x4160                # $at = 41600000
    c.lt.s  $f14, $f6                  
    nop
    bc1fl   lbl_8086FA00               
    mtc1    $at, $f8                   # $f8 = 14.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    lui     $at, %hi(var_808706B0)     # $at = 80870000
    swc1    $f16, 0x035C(a0)           # 0000035C
    sub.s   $f10, $f14, $f8            
    swc1    $f16, 0x0354(a0)           # 00000354
    lwc1    $f18, %lo(var_808706B0)($at) 
    mul.s   $f4, $f10, $f18            
    add.s   $f6, $f4, $f16             
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f6, 0x0358(a0)            # 00000358
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_8086FA00:
    lui     $at, %hi(var_808706BC)     # $at = 80870000
    c.lt.s  $f14, $f8                  
    nop
    bc1f    lbl_8086FA64               
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f10                  # $f10 = 9.00
    lui     $at, %hi(var_808706B4)     # $at = 80870000
    lwc1    $f18, %lo(var_808706B4)($at) 
    sub.s   $f0, $f14, $f10            
    lui     $at, %hi(var_808706B8)     # $at = 80870000
    mul.s   $f4, $f0, $f18             
    add.s   $f2, $f4, $f16             
    swc1    $f2, 0x035C(a0)            # 0000035C
    swc1    $f2, 0x0354(a0)            # 00000354
    lwc1    $f6, %lo(var_808706B8)($at) 
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    nop
    mul.s   $f10, $f0, $f8             
    sub.s   $f18, $f6, $f10            
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f18, 0x0358(a0)           # 00000358
lbl_8086FA64:
    lwc1    $f12, %lo(var_808706BC)($at) 
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f4                   # $f4 = 13.00
    lui     $at, %hi(var_808706C0)     # $at = 80870000
    lwc1    $f8, %lo(var_808706C0)($at) 
    sub.s   $f0, $f14, $f4             
    lui     $at, %hi(var_808706C4)     # $at = 80870000
    lwc1    $f6, %lo(var_808706C4)($at) 
    lui     $at, %hi(var_808706C8)     # $at = 80870000
    mul.s   $f10, $f0, $f6             
    sub.s   $f2, $f8, $f10             
    swc1    $f2, 0x035C(a0)            # 0000035C
    swc1    $f2, 0x0354(a0)            # 00000354
    lwc1    $f18, %lo(var_808706C8)($at) 
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f4, $f12             
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f6, 0x0358(a0)            # 00000358
lbl_8086FAAC:
    lui     t7, %hi(func_8086EE7C)     # t7 = 80870000
    addiu   t7, t7, %lo(func_8086EE7C) # t7 = 8086EE7C
    bne     t7, v0, lbl_8086FB54       
    lui     t8, %hi(func_8086F0AC)     # t8 = 80870000
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f0                   # $f0 = 3.00
    lui     $at, 0x4080                # $at = 40800000
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_8086FAEC               
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    beq     $zero, $zero, lbl_8086FB48 
    swc1    $f16, 0x0358(a0)           # 00000358
    mtc1    $at, $f8                   # $f8 = 1.00
lbl_8086FAEC:
    lui     $at, %hi(var_808706CC)     # $at = 80870000
    c.lt.s  $f14, $f8                  
    nop
    bc1fl   lbl_8086FB28               
    sub.s   $f6, $f14, $f0             
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    nop
    sub.s   $f18, $f14, $f10           
    add.s   $f4, $f18, $f16            
    beq     $zero, $zero, lbl_8086FB48 
    swc1    $f4, 0x0358(a0)            # 00000358
    sub.s   $f6, $f14, $f0             
lbl_8086FB28:
    lwc1    $f8, %lo(var_808706CC)($at) 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    mul.s   $f10, $f6, $f8             
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    sub.s   $f4, $f18, $f10            
    swc1    $f4, 0x0358(a0)            # 00000358
lbl_8086FB48:
    swc1    $f16, 0x035C(a0)           # 0000035C
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f16, 0x0354(a0)           # 00000354
lbl_8086FB54:
    addiu   t8, t8, %lo(func_8086F0AC) # t8 = 8086F0AC
    bne     t8, v0, lbl_8086FC88       
    lui     t9, %hi(func_8086EF7C)     # t9 = 80870000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0x40E0                # $at = 40E00000
    c.lt.s  $f14, $f6                  
    nop
    bc1fl   lbl_8086FBAC               
    mtc1    $at, $f10                  # $f10 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f8                   # $f8 = 0.13
    nop
    mul.s   $f18, $f14, $f8            
    add.s   $f0, $f18, $f16            
    swc1    $f0, 0x035C(a0)            # 0000035C
    swc1    $f0, 0x0358(a0)            # 00000358
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f0, 0x0354(a0)            # 00000354
    mtc1    $at, $f10                  # $f10 = 0.13
lbl_8086FBAC:
    lui     $at, 0x4188                # $at = 41880000
    c.lt.s  $f14, $f10                 
    nop
    bc1fl   lbl_8086FBF8               
    mtc1    $at, $f4                   # $f4 = 17.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     $at, %hi(var_808706D0)     # $at = 80870000
    lwc1    $f8, %lo(var_808706D0)($at) 
    sub.s   $f6, $f14, $f4             
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    mul.s   $f18, $f6, $f8             
    sub.s   $f0, $f10, $f18            
    swc1    $f0, 0x035C(a0)            # 0000035C
    swc1    $f0, 0x0358(a0)            # 00000358
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f0, 0x0354(a0)            # 00000354
    mtc1    $at, $f4                   # $f4 = 1.50
lbl_8086FBF8:
    lui     $at, %hi(var_808706DC)     # $at = 80870000
    c.lt.s  $f14, $f4                  
    nop
    bc1f    lbl_8086FC40               
    nop
    lui     $at, %hi(var_808706D4)     # $at = 80870000
    lwc1    $f12, %lo(var_808706D4)($at) 
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    lui     $at, %hi(var_808706D8)     # $at = 80870000
    lwc1    $f10, %lo(var_808706D8)($at) 
    sub.s   $f8, $f14, $f6             
    swc1    $f12, 0x0358(a0)           # 00000358
    mul.s   $f18, $f8, $f10            
    add.s   $f0, $f18, $f12            
    swc1    $f0, 0x035C(a0)            # 0000035C
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f0, 0x0354(a0)            # 00000354
lbl_8086FC40:
    lwc1    $f12, %lo(var_808706DC)($at) 
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f4                   # $f4 = 16.00
    lui     $at, %hi(var_808706E0)     # $at = 80870000
    lwc1    $f6, %lo(var_808706E0)($at) 
    sub.s   $f0, $f14, $f4             
    lui     $at, %hi(var_808706E4)     # $at = 80870000
    lwc1    $f8, %lo(var_808706E4)($at) 
    lui     $at, %hi(var_808706E8)     # $at = 80870000
    mul.s   $f10, $f0, $f8             
    sub.s   $f2, $f6, $f10             
    swc1    $f2, 0x035C(a0)            # 0000035C
    swc1    $f2, 0x0354(a0)            # 00000354
    lwc1    $f18, %lo(var_808706E8)($at) 
    mul.s   $f4, $f0, $f18             
    add.s   $f8, $f4, $f12             
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f8, 0x0358(a0)            # 00000358
lbl_8086FC88:
    addiu   t9, t9, %lo(func_8086EF7C) # t9 = 8086EF7C
    bne     t9, v0, lbl_8086FCE0       
    lui     $at, 0x3F80                # $at = 3F800000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_808706EC)     # $at = 80870000
    swc1    $f16, 0x035C(a0)           # 0000035C
    swc1    $f16, 0x0354(a0)           # 00000354
    lwc1    $f6, %lo(var_808706EC)($at) 
    sw      a0, 0x0018($sp)            
    mul.s   $f12, $f6, $f14            
    jal     func_800CF470              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_808706F0)     # $at = 80870000
    lwc1    $f10, %lo(var_808706F0)($at) 
    lw      a0, 0x0018($sp)            
    mul.s   $f18, $f0, $f10            
    add.s   $f4, $f18, $f16            
    beq     $zero, $zero, lbl_8086FCF4 
    swc1    $f4, 0x0358(a0)            # 00000358
lbl_8086FCE0:
    mtc1    $at, $f16                  # $f16 = 0.00
    nop
    swc1    $f16, 0x035C(a0)           # 0000035C
    swc1    $f16, 0x0358(a0)           # 00000358
    swc1    $f16, 0x0354(a0)           # 00000354
lbl_8086FCF4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086FD04:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0371(a3)             # 00000371
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0378             # a1 = 00000378
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8086FDA4    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0371(a3)             # 00000371
    sw      a3, 0x0018($sp)            
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lbu     t8, 0x00B1(a3)             # 000000B1
    or      a1, a3, $zero              # a1 = 00000000
    bne     t8, $zero, lbl_8086FD60    
    nop
    lbu     t9, 0x00B0(a3)             # 000000B0
    beql    t9, $zero, lbl_8086FDA8    
    lw      $ra, 0x0014($sp)           
lbl_8086FD60:
    jal     func_80025B4C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t0, 0x0004(a3)             # 00000004
    lbu     t2, 0x00B1(a3)             # 000000B1
    sb      $zero, 0x00AF(a3)          # 000000AF
    and     t1, t0, $at                
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t2, $at, lbl_8086FD9C      
    sw      t1, 0x0004(a3)             # 00000004
    jal     func_8086EB50              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086FDA8 
    lw      $ra, 0x0014($sp)           
lbl_8086FD9C:
    jal     func_8086EA80              
    or      a0, a3, $zero              # a0 = 00000000
lbl_8086FDA4:
    lw      $ra, 0x0014($sp)           
lbl_8086FDA8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086FDB4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
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
    bnel    t7, $zero, lbl_80870124    
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_8086FE68    
    lw      t9, 0x0180(s0)             # 00000180
    jal     func_8086FD04              
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t9, $sp, 0x0044            # t9 = FFFFFFEC
    addiu   t0, $sp, 0x0048            # t0 = FFFFFFF0
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80034908              
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    beq     v0, $zero, lbl_8086FE44    
    lwc1    $f4, 0x0044($sp)           
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f8, 0x0044($sp)           
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8086FE64               
    swc1    $f8, 0x000C(s0)            # 0000000C
lbl_8086FE44:
    lbu     t1, 0x00AF(s0)             # 000000AF
    beql    t1, $zero, lbl_8086FE68    
    lw      t9, 0x0180(s0)             # 00000180
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80870124 
    lw      $ra, 0x0024($sp)           
    swc1    $f8, 0x000C(s0)            # 0000000C
lbl_8086FE64:
    lw      t9, 0x0180(s0)             # 00000180
lbl_8086FE68:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t2, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_8086FEE0    
    nop
    jal     func_8086F95C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t3, %hi(var_8087061E)      # t3 = 80870000
    lh      t3, %lo(var_8087061E)(t3)  
    lh      t4, 0x03A4(s0)             # 000003A4
    lwc1    $f18, 0x0358(s0)           # 00000358
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    cvt.s.w $f16, $f10                 
    cvt.s.w $f8, $f6                   
    mul.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0054(s0)           # 00000054
    mtc1    $at, $f6                   # $f6 = 100.00
    sub.s   $f10, $f4, $f8             
    mul.s   $f18, $f10, $f16           
    nop
    mul.s   $f4, $f18, $f6             
    trunc.w.s $f8, $f4                   
    mfc1    t6, $f8                    
    beq     $zero, $zero, lbl_8086FFB8 
    sh      t6, 0x03A2(s0)             # 000003A2
lbl_8086FEE0:
    jal     func_8002121C              
    sw      $zero, 0x0034($sp)         
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0030($sp)            
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t7, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C              
    swc1    $f10, 0x0010($sp)          
    lhu     t8, 0x0088(s0)             # 00000088
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    andi    t0, t8, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_8086FF5C    
    lhu     t3, 0x0088(s0)             # 00000088
    lw      a1, 0x0074(s0)             # 00000074
    jal     func_80034700              
    lbu     a2, 0x007C(s0)             # 0000007C
    beq     v0, $zero, lbl_8086FF58    
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0034($sp)            
    lhu     t9, 0x0088(s0)             # 00000088
    andi    t2, t9, 0xFFF7             # t2 = 00000000
    sh      t2, 0x0088(s0)             # 00000088
lbl_8086FF58:
    lhu     t3, 0x0088(s0)             # 00000088
lbl_8086FF5C:
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_8086FF94    
    lw      t8, 0x0034($sp)            
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_80034700              
    lbu     a2, 0x007D(s0)             # 0000007D
    beq     v0, $zero, lbl_8086FF90    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0034($sp)            
    lhu     t6, 0x0088(s0)             # 00000088
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sh      t7, 0x0088(s0)             # 00000088
lbl_8086FF90:
    lw      t8, 0x0034($sp)            
lbl_8086FF94:
    beql    t8, $zero, lbl_8086FFBC    
    addiu   a1, s0, 0x0360             # a1 = 00000360
    lhu     t0, 0x0088(s0)             # 00000088
    lw      a0, 0x0030($sp)            
    andi    t1, t0, 0x0009             # t1 = 00000000
    bnel    t1, $zero, lbl_8086FFBC    
    addiu   a1, s0, 0x0360             # a1 = 00000360
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE0
lbl_8086FFB8:
    addiu   a1, s0, 0x0360             # a1 = 00000360
lbl_8086FFBC:
    sw      a1, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_8086ED38)     # t9 = 80870000
    addiu   t9, t9, %lo(func_8086ED38) # t9 = 8086ED38
    beq     t9, v0, lbl_8086FFE8       
    lui     t2, %hi(func_8086EE7C)     # t2 = 80870000
    addiu   t2, t2, %lo(func_8086EE7C) # t2 = 8086EE7C
    bnel    t2, v0, lbl_8087005C       
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8086FFE8:
    lw      t3, 0x015C(s0)             # 0000015C
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f8, 0x0028(s0)            # 00000028
    lh      t4, 0x0002(t3)             # 00000002
    lui     t7, %hi(var_8087061C)      # t7 = 80870000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f4, $f18, $f6             
    add.s   $f10, $f8, $f4             
    lwc1    $f8, 0x0050(s0)            # 00000050
    trunc.w.s $f16, $f10                 
    mtc1    $at, $f10                  # $f10 = 100.00
    mfc1    t6, $f16                   
    nop
    sh      t6, 0x03A8(s0)             # 000003A8
    lh      t7, %lo(var_8087061C)(t7)  
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    mul.s   $f4, $f6, $f8              
    nop
    mul.s   $f16, $f4, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x03A0(s0)             # 000003A0
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8087005C:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    t1, $at, lbl_80870094      
    lw      v0, 0x0180(s0)             # 00000180
    lw      t9, 0x0004(s0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    or      a0, s1, $zero              # a0 = 00000000
    or      t2, t9, $at                # t2 = 8186ED38
    lui     $at, 0x0001                # $at = 00010000
    sw      t2, 0x0004(s0)             # 00000004
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x002C($sp)            
    lw      v0, 0x0180(s0)             # 00000180
lbl_80870094:
    lui     t3, %hi(func_8086ECDC)     # t3 = 80870000
    addiu   t3, t3, %lo(func_8086ECDC) # t3 = 8086ECDC
    beq     t3, v0, lbl_808700F0       
    lui     $at, 0x0001                # $at = 00010000
    lui     t4, %hi(func_8086F280)     # t4 = 80870000
    addiu   t4, t4, %lo(func_8086F280) # t4 = 8086F280
    ori     $at, $at, 0x1E60           # $at = 00011E60
    beq     t4, v0, lbl_808700E4       
    addu    a1, s1, $at                
    lui     t5, %hi(func_8086F22C)     # t5 = 80870000
    addiu   t5, t5, %lo(func_8086F22C) # t5 = 8086F22C
    beq     t5, v0, lbl_808700E4       
    lui     t6, %hi(func_8086F594)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086F594) # t6 = 8086F594
    beq     t6, v0, lbl_808700E4       
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
lbl_808700E4:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)            
lbl_808700F0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4170                 # a1 = 41700000
    lh      t7, 0x001C(s0)             # 0000001C
    bnel    t7, $zero, lbl_80870124    
    lw      $ra, 0x0024($sp)           
    lw      t8, 0x0134(s0)             # 00000134
    or      a0, s0, $zero              # a0 = 00000000
    beql    t8, $zero, lbl_80870124    
    lw      $ra, 0x0024($sp)           
    jal     func_8086E7B0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80870124:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80870134:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_8086EF7C)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086EF7C) # t6 = 8086EF7C
    bne     t6, v0, lbl_808701A0       
    lui     t7, %hi(func_8086F0AC)     # t7 = 80870000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_808706F4)     # $at = 80870000
    swc1    $f16, 0x0008(a2)           # 00000008
    swc1    $f16, 0x0000(a2)           # 00000000
    lwc1    $f4, %lo(var_808706F4)($at) 
    sw      a2, 0x0020($sp)            
    mul.s   $f12, $f4, $f14            
    jal     func_800CF470              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_808706F8)     # $at = 80870000
    lwc1    $f6, %lo(var_808706F8)($at) 
    lw      a2, 0x0020($sp)            
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f8, $f16            
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f10, 0x0004(a2)           # 00000004
lbl_808701A0:
    addiu   t7, t7, %lo(func_8086F0AC) # t7 = FFFFF0AC
    bne     t7, v0, lbl_80870280       
    lui     t8, %hi(func_8086F280)     # t8 = 80870000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lui     $at, 0x40E0                # $at = 40E00000
    c.lt.s  $f14, $f18                 
    nop
    bc1fl   lbl_808701F4               
    mtc1    $at, $f8                   # $f8 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    swc1    $f16, 0x0000(a2)           # 00000000
    mul.s   $f6, $f14, $f4             
    add.s   $f0, $f6, $f16             
    swc1    $f0, 0x0008(a2)            # 00000008
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f0, 0x0004(a2)            # 00000004
    mtc1    $at, $f8                   # $f8 = 0.25
lbl_808701F4:
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f14, $f8                  
    nop
    bc1fl   lbl_8087024C               
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    sub.s   $f18, $f14, $f10           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    mul.s   $f0, $f18, $f4             
    sub.s   $f2, $f8, $f0              
    add.s   $f6, $f0, $f16             
    swc1    $f2, 0x0008(a2)            # 00000008
    swc1    $f2, 0x0004(a2)            # 00000004
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f6, 0x0000(a2)            # 00000000
    mtc1    $at, $f16                  # $f16 = 2.00
lbl_8087024C:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lui     $at, %hi(var_808706FC)     # $at = 80870000
    lwc1    $f4, %lo(var_808706FC)($at) 
    sub.s   $f18, $f14, $f10           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    swc1    $f16, 0x0004(a2)           # 00000004
    mul.s   $f6, $f18, $f4             
    swc1    $f16, 0x0008(a2)           # 00000008
    sub.s   $f10, $f8, $f6             
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f10, 0x0000(a2)           # 00000000
lbl_80870280:
    addiu   t8, t8, %lo(func_8086F280) # t8 = 8086F280
    bne     t8, v0, lbl_808703A0       
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f18                  # $f18 = 35.00
    lui     $at, 0x41C8                # $at = 41C80000
    c.le.s  $f18, $f14                 
    nop
    bc1t    lbl_808702BC               
    nop
    mtc1    $at, $f4                   # $f4 = 25.00
    lui     $at, 0x41D8                # $at = 41D80000
    c.lt.s  $f14, $f4                  
    nop
    bc1fl   lbl_808702C8               
    mtc1    $at, $f8                   # $f8 = 27.00
lbl_808702BC:
    beq     $zero, $zero, lbl_808703AC 
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 27.00
lbl_808702C8:
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f14, $f8                  
    nop
    bc1fl   lbl_80870314               
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f6                   # $f6 = 24.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    sub.s   $f10, $f14, $f6            
    swc1    $f16, 0x0000(a2)           # 00000000
    mul.s   $f4, $f10, $f18            
    add.s   $f0, $f4, $f16             
    swc1    $f0, 0x0008(a2)            # 00000008
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f0, 0x0004(a2)            # 00000004
    mtc1    $at, $f8                   # $f8 = 0.50
lbl_80870314:
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f14, $f8                  
    nop
    bc1fl   lbl_8087036C               
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f6                   # $f6 = 26.00
    lui     $at, %hi(var_80870700)     # $at = 80870000
    lwc1    $f18, %lo(var_80870700)($at) 
    sub.s   $f10, $f14, $f6            
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    mul.s   $f0, $f10, $f18            
    sub.s   $f2, $f8, $f0              
    add.s   $f4, $f0, $f16             
    swc1    $f2, 0x0008(a2)            # 00000008
    swc1    $f2, 0x0004(a2)            # 00000004
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f4, 0x0000(a2)            # 00000000
    mtc1    $at, $f16                  # $f16 = 2.00
lbl_8087036C:
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f6                   # $f6 = 29.00
    lui     $at, %hi(var_80870704)     # $at = 80870000
    lwc1    $f18, %lo(var_80870704)($at) 
    sub.s   $f10, $f14, $f6            
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    swc1    $f16, 0x0004(a2)           # 00000004
    mul.s   $f4, $f10, $f18            
    swc1    $f16, 0x0008(a2)           # 00000008
    sub.s   $f6, $f8, $f4              
    beq     $zero, $zero, lbl_808703A8 
    swc1    $f6, 0x0000(a2)            # 00000000
lbl_808703A0:
    beq     $zero, $zero, lbl_808703AC 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808703A8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808703AC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808703BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a0, 0x0030($sp)            
    lw      a0, 0x0044($sp)            
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    lw      t7, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_8086F280)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086F280) # t6 = 8086F280
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t6, t7, lbl_80870400       
    lwc1    $f0, 0x0154(a0)            # 00000154
    lh      t8, 0x0184(a0)             # 00000184
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f0, $f0, $f6              
lbl_80870400:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80870470      
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lwc1    $f8, 0x0354(a0)            # 00000354
    c.eq.s  $f0, $f8                   
    nop
    bc1fl   lbl_80870450               
    lw      t1, 0x0354(a0)             # 00000354
    lwc1    $f10, 0x0358(a0)           # 00000358
    c.eq.s  $f0, $f10                  
    nop
    bc1fl   lbl_80870450               
    lw      t1, 0x0354(a0)             # 00000354
    lwc1    $f16, 0x035C(a0)           # 0000035C
    c.eq.s  $f0, $f16                  
    nop
    bc1t    lbl_8087048C               
    nop
    lw      t1, 0x0354(a0)             # 00000354
lbl_80870450:
    addiu   t9, $sp, 0x001C            # t9 = FFFFFFEC
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      t1, 0x0000(t9)             # FFFFFFEC
    lw      t0, 0x0358(a0)             # 00000358
    sw      t0, 0x0004(t9)             # FFFFFFF0
    lw      t1, 0x035C(a0)             # 0000035C
    beq     $zero, $zero, lbl_8087048C 
    sw      t1, 0x0008(t9)             # FFFFFFF4
lbl_80870470:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_8087048C      
    nop
    mfc1    a1, $f0                    
    jal     func_80870134              
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFEC
    or      v1, v0, $zero              # v1 = 00000000
lbl_8087048C:
    beq     v1, $zero, lbl_808704A4    
    lwc1    $f12, 0x001C($sp)          
    lwc1    $f14, 0x0020($sp)          
    lw      a2, 0x0024($sp)            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_808704A4:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808704B8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0024($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(s2)             # 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     t6, $zero, lbl_80870518    
    addu    a0, s2, $at                
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lui     a3, %hi(func_808703BC)     # a3 = 80870000
    addiu   a3, a3, %lo(func_808703BC) # a3 = 808703BC
    sw      s0, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8008993C              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80870590 
    lw      $ra, 0x002C($sp)           
lbl_80870518:
    lw      s1, 0x0000(s2)             # 00000000
    jal     func_800AA79C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t7, 0x0018(s0)             # 00000018
    lui     $at, %hi(var_80870708)     # $at = 80870000
    lwc1    $f8, %lo(var_80870708)($at) 
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x3380             # t2 = 06003380
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s1)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x002C($sp)           
lbl_80870590:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_808705B0: .word 0x000E0500, 0x00000005, 0x00070000, 0x000003AC
.word func_8086E420
.word func_8086E62C
.word func_8086FDB4
.word func_808704B8
var_808705D0: .word \
0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x09010100, \
0x000D0014, 0x00000000, 0x00000000
var_808705FC: .word \
0x00000939, 0x10010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100
var_8087061C: .byte 0x00, 0x14
var_8087061E: .byte 0x00, 0x28, 0xFF, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80870628: .word 0x0100000F, 0x003C6400
var_80870630: .word \
0x00020102, 0x01020202, 0x01020402, 0x34020202, \
0x02000000, 0x00000104, 0x02020804, 0x00000400
var_80870650: .word 0x89170042, 0x304C1964
var_80870658: .word 0x00000000, 0x00000000, 0x00000000
var_80870664: .word 0xFFFFFFFF
var_80870668: .word 0x969696FF
var_8087066C: .word 0x00000000, 0xBF000000, 0x00000000
var_80870678: .word 0xFFFFFFFF
var_8087067C: .word 0x96969600

.section .rodata

var_80870680: .word 0x3C23D70A
var_80870684: .word 0x3C23D70A
var_80870688: .word 0x3E860932
var_8087068C: .word 0x3C23D70A
var_80870690: .word 0x3E6EE632
var_80870694: .word 0x3C23D70A
var_80870698: .word 0x3D23D70A
var_8087069C: .word 0x3F4CCCCD
var_808706A0: .word 0x3C23D70A
var_808706A4: .word 0x3E4CCCCD
var_808706A8: .word 0x3FF33333
var_808706AC: .word 0x3DCCCCCD
var_808706B0: .word 0x3ECCCCCD
var_808706B4: .word 0x3D99999A
var_808706B8: .word 0x3FE66666
var_808706BC: .word 0x3F4CCCCD
var_808706C0: .word 0x3FA66666
var_808706C4: .word 0x3D4CCCCD
var_808706C8: .word 0x3D086595
var_808706CC: .word 0x3EAA7EFA
var_808706D0: .word 0x3EB33333
var_808706D4: .word 0x3F4CCCCD
var_808706D8: .word 0x3D4CCCCD
var_808706DC: .word 0x3F4CCCCD
var_808706E0: .word 0x3FA66666
var_808706E4: .word 0x3DCCCCCD
var_808706E8: .word 0x3D886595
var_808706EC: .word 0x3E490FDB
var_808706F0: .word 0x3E4CCCCD
var_808706F4: .word 0x3E490FDB
var_808706F8: .word 0x3ECCCCCD
var_808706FC: .word 0x3D9D7DBF
var_80870700: .word 0x3EAA7EFA
var_80870704: .word 0x3E4CCCCD
var_80870708: .word 0x38C90FDB, 0x00000000

