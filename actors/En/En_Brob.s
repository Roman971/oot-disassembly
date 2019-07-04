.section .text
func_80981540:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01A0             # t6 = 000001A0
    addiu   t7, s0, 0x01DC             # t7 = 000001DC
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      $zero, 0x0034($sp)         
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x1750             # a3 = 06001750
    addiu   a2, a2, 0x15D8             # a2 = 060015D8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x0154             # a1 = 00000154
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1A70             # a0 = 06001A70
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0034($sp)            
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x0218             # a1 = 00000218
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809824B0)      # a3 = 80980000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809824B0)  # a3 = 809824B0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0264             # a1 = 00000264
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809824B0)      # a3 = 80980000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809824B0)  # a3 = 809824B0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_809824DC)      # a2 = 80980000
    addiu   a2, a2, %lo(var_809824DC)  # a2 = 809824DC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    sra     t0, t9,  8                 
    andi    t1, t0, 0x00FF             # t1 = 00000000
    bne     t1, $zero, lbl_80981698    
    nop
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sh      t3, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    beq     v0, $at, lbl_809816E0      
    andi    t4, v0, 0x00FF             # t4 = 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809824F0)     # $at = 80980000
    lwc1    $f8, %lo(var_809824F0)($at) 
    cvt.s.w $f6, $f4                   
    lwc1    $f16, 0x0054(s0)           # 00000054
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f18, $f16, $f10           
    beq     $zero, $zero, lbl_809816E0 
    swc1    $f18, 0x0054(s0)           # 00000054
lbl_80981698:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 0000D70A
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sh      t6, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    beq     v0, $at, lbl_809816E0      
    andi    t7, v0, 0x00FF             # t7 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809824F4)     # $at = 80980000
    lwc1    $f8, %lo(var_809824F4)($at) 
    cvt.s.w $f6, $f4                   
    lwc1    $f10, 0x0054(s0)           # 00000054
    mul.s   $f16, $f6, $f8             
    nop
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x0054(s0)           # 00000054
lbl_809816E0:
    lh      t8, 0x0258(s0)             # 00000258
    lwc1    $f8, 0x0050(s0)            # 00000050
    lh      t3, 0x02A4(s0)             # 000002A4
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809824F8)     # $at = 80980000
    lwc1    $f18, 0x0054(s0)           # 00000054
    cvt.s.w $f6, $f4                   
    lh      t6, 0x02A6(s0)             # 000002A6
    lh      t9, 0x02A8(s0)             # 000002A8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mtc1    t3, $f10                   # $f10 = 0.00
    mfc1    t0, $f16                   
    cvt.s.w $f16, $f10                 
    sh      t0, 0x0258(s0)             # 00000258
    lwc1    $f4, %lo(var_809824F8)($at) 
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      $zero, 0x025C(s0)          # 0000025C
    mul.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0050(s0)           # 00000050
    sw      $zero, 0x0198(s0)          # 00000198
    mul.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0054(s0)           # 00000054
    trunc.w.s $f8, $f6                   
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f8                    
    mtc1    t6, $f8                    # $f8 = 0.00
    mfc1    t5, $f6                    
    cvt.s.w $f10, $f8                  
    mtc1    t9, $f6                    # $f6 = 0.00
    sh      t2, 0x025A(s0)             # 0000025A
    lw      t2, 0x0004(s0)             # 00000004
    sh      t5, 0x02A4(s0)             # 000002A4
    cvt.s.w $f8, $f6                   
    mul.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0054(s0)           # 00000054
    and     t3, t2, $at                
    sw      t3, 0x0004(s0)             # 00000004
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f4, $f18                  
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f4                    
    mfc1    t1, $f18                   
    sh      t8, 0x02A6(s0)             # 000002A6
    jal     func_8098180C              
    sh      t1, 0x02A8(s0)             # 000002A8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809817B4:
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
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0218             # a1 = 00000218
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0264             # a1 = 00000264
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098180C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    lw      a2, 0x013C(a3)             # 0000013C
    sw      a3, 0x0018($sp)            
    jal     func_80031530              
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a3, 0x0018($sp)            
    lui     t7, %hi(func_80981CEC)     # t7 = 80980000
    addiu   t7, t7, %lo(func_80981CEC) # t7 = 80981CEC
    lw      t8, 0x0198(a3)             # 00000198
    lui     t0, %hi(func_80981A88)     # t0 = 80980000
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    bne     t7, t8, lbl_80981858       
    addiu   t0, t0, %lo(func_80981A88) # t0 = 80981A88
    beq     $zero, $zero, lbl_8098185C 
    sh      t9, 0x019C(a3)             # 0000019C
lbl_80981858:
    sh      $zero, 0x019C(a3)          # 0000019C
lbl_8098185C:
    sh      $zero, 0x019E(a3)          # 0000019E
    sw      t0, 0x0198(a3)             # 00000198
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981874:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1750             # a1 = 06001750
    jal     func_8008D1C4              
    addiu   a0, a0, 0x0154             # a0 = 00000154
    lw      a0, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_800314D8              
    lw      a2, 0x013C(t6)             # 0000013C
    lw      v0, 0x0018($sp)            
    lui     t8, %hi(func_80981B48)     # t8 = 80980000
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    addiu   t8, t8, %lo(func_80981B48) # t8 = 80981B48
    sh      t7, 0x019E(v0)             # 0000019E
    sw      t8, 0x0198(v0)             # 00000198
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809818D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1958             # a1 = 06001958
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80981C4C)     # t8 = 80980000
    addiu   t6, $zero, 0x1F40          # t6 = 00001F40
    addiu   t7, $zero, 0x04B0          # t7 = 000004B0
    addiu   t8, t8, %lo(func_80981C4C) # t8 = 80981C4C
    sh      t6, 0x019E(a3)             # 0000019E
    sh      t7, 0x019C(a3)             # 0000019C
    sw      t8, 0x0198(a3)             # 00000198
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981928:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0290             # a1 = 06000290
    addiu   a0, s0, 0x0154             # a0 = 00000154
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lh      t6, 0x019E(s0)             # 0000019E
    lui     $at, 0x42FA                # $at = 42FA0000
    mtc1    $at, $f8                   # $f8 = 125.00
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4                   
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    nop
    sh      t8, 0x019E(s0)             # 0000019E
    jal     func_80027090              
    sw      t9, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     t0, %hi(func_80981CEC)     # t0 = 80980000
    addiu   t0, t0, %lo(func_80981CEC) # t0 = 80981CEC
    sw      t0, 0x0198(s0)             # 00000198
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809819BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1750             # a0 = 06001750
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f4, $f4                   
    lw      a0, 0x0028($sp)            
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    mfc1    a3, $f4                    
    addiu   a1, a1, 0x1750             # a1 = 06001750
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f8, 0x0018($sp)           
    addiu   a0, a0, 0x0154             # a0 = 00000154
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lw      v0, 0x0028($sp)            
    lui     t8, %hi(func_80981D88)     # t8 = 80980000
    addiu   t7, $zero, 0x203A          # t7 = 0000203A
    addiu   t8, t8, %lo(func_80981D88) # t8 = 80981D88
    sh      t7, 0x019E(v0)             # 0000019E
    sw      t8, 0x0198(v0)             # 00000198
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80981A3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1678             # a1 = 06001678
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t7, %hi(func_80981E8C)     # t7 = 80980000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, t7, %lo(func_80981E8C) # t7 = 80981E8C
    sh      t6, 0x019C(a3)             # 0000019C
    sw      t7, 0x0198(a3)             # 00000198
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981A88:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x019C(s0)             # 0000019C
    beq     v0, $zero, lbl_80981AB0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x019C(s0)             # 0000019C
    lh      v0, 0x019C(s0)             # 0000019C
lbl_80981AB0:
    bne     v0, $zero, lbl_80981B28    
    slti    $at, v0, 0x0051            
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80981AFC    
    lui     $at, 0x4396                # $at = 43960000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lh      a3, 0x008A(s0)             # 0000008A
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80981874              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80981B38 
    lw      $ra, 0x0024($sp)           
lbl_80981AFC:
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80981B38               
    lw      $ra, 0x0024($sp)           
    jal     func_80981874              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80981B38 
    lw      $ra, 0x0024($sp)           
lbl_80981B28:
    bne     $at, $zero, lbl_80981B34   
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sb      t7, 0x0114(s0)             # 00000114
lbl_80981B34:
    lw      $ra, 0x0024($sp)           
lbl_80981B38:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80981B48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x0154             # a0 = 00000154
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_80981B80    
    lw      a1, 0x0018($sp)            
    jal     func_809818D4              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80981C40 
    lw      $ra, 0x0014($sp)           
lbl_80981B80:
    lui     $at, 0x4100                # $at = 41000000
    lwc1    $f0, 0x016C(a1)            # 0000016C
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4140                # $at = 41400000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80981BD0               
    mtc1    $at, $f4                   # $f4 = 12.00
    lh      t6, 0x019E(a1)             # 0000019E
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    beq     $zero, $zero, lbl_80981C3C 
    sh      t8, 0x019E(a1)             # 0000019E
    mtc1    $at, $f4                   # $f4 = 1000.00
lbl_80981BD0:
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80981C14               
    lh      t2, 0x019E(a1)             # 0000019E
    lh      t9, 0x019E(a1)             # 0000019E
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    beq     $zero, $zero, lbl_80981C3C 
    sh      t1, 0x019E(a1)             # 0000019E
    lh      t2, 0x019E(a1)             # 0000019E
lbl_80981C14:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    sub.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x019E(a1)             # 0000019E
lbl_80981C3C:
    lw      $ra, 0x0014($sp)           
lbl_80981C40:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981C4C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x0154             # a0 = 00000154
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    bne     v0, $zero, lbl_80981C8C    
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_80981C98    
lbl_80981C8C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394A          # a1 = 0000394A
lbl_80981C98:
    lh      v0, 0x019C(s0)             # 0000019C
    lui     $at, 0x43FA                # $at = 43FA0000
    beq     v0, $zero, lbl_80981CB0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x019C(s0)             # 0000019C
    lh      v0, 0x019C(s0)             # 0000019C
lbl_80981CB0:
    bnel    v0, $zero, lbl_80981CDC    
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f4                   # $f4 = 500.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80981CDC               
    lw      $ra, 0x001C($sp)           
    jal     func_809819BC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80981CDC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80981CEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0154             # a0 = 00000154
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80981D28    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    jal     func_8098180C              
    sw      a2, 0x0018($sp)            
    beq     $zero, $zero, lbl_80981D70 
    lw      a2, 0x0018($sp)            
lbl_80981D28:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lwc1    $f4, 0x016C(a2)            # 0000016C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80981D74               
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    lh      t6, 0x019E(a2)             # 0000019E
    lui     $at, %hi(var_809824FC)     # $at = 80980000
    lwc1    $f16, %lo(var_809824FC)($at) 
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    sub.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    nop
    sh      t8, 0x019E(a2)             # 0000019E
lbl_80981D70:
    addiu   t9, $zero, 0x0050          # t9 = 00000050
lbl_80981D74:
    sb      t9, 0x0114(a2)             # 00000114
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981D88:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0154             # a0 = 00000154
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80981DC0    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8098180C              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80981E80 
    lw      $ra, 0x0014($sp)           
lbl_80981DC0:
    lui     $at, 0x4100                # $at = 41000000
    lwc1    $f0, 0x016C(a2)            # 0000016C
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4140                # $at = 41400000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80981E10               
    mtc1    $at, $f4                   # $f4 = 12.00
    lh      t6, 0x019E(a2)             # 0000019E
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    sub.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    beq     $zero, $zero, lbl_80981E7C 
    sh      t8, 0x019E(a2)             # 0000019E
    mtc1    $at, $f4                   # $f4 = 1000.00
lbl_80981E10:
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80981E54               
    lh      t2, 0x019E(a2)             # 0000019E
    lh      t9, 0x019E(a2)             # 0000019E
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    sub.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    beq     $zero, $zero, lbl_80981E7C 
    sh      t1, 0x019E(a2)             # 0000019E
    lh      t2, 0x019E(a2)             # 0000019E
lbl_80981E54:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x019E(a2)             # 0000019E
lbl_80981E7C:
    lw      $ra, 0x0014($sp)           
lbl_80981E80:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80981E8C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s6, 0x0070($sp)            
    sw      s1, 0x005C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    addiu   s0, s1, 0x0154             # s0 = 00000154
    jal     func_8008C9C0              
    or      a0, s0, $zero              # a0 = 00000154
    or      a0, s0, $zero              # a0 = 00000154
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80981F00    
    lui     t7, 0x0001                 # t7 = 00010000
    lh      v0, 0x019C(s1)             # 0000019C
    beq     v0, $zero, lbl_80981F00    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x019C(s1)             # 0000019C
lbl_80981F00:
    addu    t7, t7, s6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, $zero, 0x0004          # s5 = 00000004
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80981F38    
    lui     s4, %hi(var_809824E8)      # s4 = 80980000
    lui     $at, %hi(var_80982500)     # $at = 80980000
    lwc1    $f6, %lo(var_80982500)($at) 
    lwc1    $f4, 0x0050(s1)            # 00000050
    mtc1    $zero, $f22                # $f22 = 0.00
    mul.s   $f0, $f4, $f6              
    beq     $zero, $zero, lbl_80981F50 
    lui     $at, 0x4780                # $at = 47800000
lbl_80981F38:
    lui     $at, %hi(var_80982504)     # $at = 80980000
    lwc1    $f10, %lo(var_80982504)($at) 
    lwc1    $f8, 0x0050(s1)            # 00000050
    mul.s   $f0, $f8, $f10             
    mov.s   $f22, $f0                  
    lui     $at, 0x4780                # $at = 47800000
lbl_80981F50:
    mtc1    $at, $f30                  # $f30 = 65536.00
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f28                  # $f28 = 8000.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f26                  # $f26 = 1000.00
    lui     $at, %hi(var_80982508)     # $at = 80980000
    lui     s3, %hi(var_809824E4)      # s3 = 80980000
    mov.s   $f20, $f0                  
    addiu   s3, s3, %lo(var_809824E4)  # s3 = 809824E4
    lwc1    $f24, %lo(var_80982508)($at) 
    addiu   s4, s4, %lo(var_809824E8)  # s4 = 809824E8
    addiu   s2, $sp, 0x008C            # s2 = FFFFFFF4
lbl_80981F80:
    bgez    s0, lbl_80981F94           
    andi    t9, s0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80981F94    
    nop
    addiu   t9, t9, 0xFFFE             # t9 = FFFFFFFE
lbl_80981F94:
    beql    t9, $zero, lbl_80981FBC    
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f16, 0x0024(s1)           # 00000024
    add.s   $f18, $f16, $f22           
    swc1    $f18, 0x008C($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    add.s   $f6, $f4, $f20             
    beq     $zero, $zero, lbl_80981FD8 
    swc1    $f6, 0x0094($sp)           
    lwc1    $f8, 0x0024(s1)            # 00000024
lbl_80981FBC:
    add.s   $f10, $f8, $f20            
    neg.s   $f20, $f20                 
    swc1    $f10, 0x008C($sp)          
    lwc1    $f16, 0x002C(s1)           # 0000002C
    add.s   $f18, $f16, $f22           
    neg.s   $f22, $f22                 
    swc1    $f18, 0x0094($sp)          
lbl_80981FD8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f24             
    lwc1    $f8, 0x0054(s1)            # 00000054
    lwc1    $f16, 0x0028(s1)           # 00000028
    add.s   $f6, $f4, $f26             
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0090($sp)          
    lwc1    $f4, 0x0054(s1)            # 00000054
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x001C($sp)            
    mul.s   $f6, $f4, $f28             
    sw      s5, 0x0018($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    mul.s   $f10, $f0, $f30            
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = 809824E4
    or      a3, s4, $zero              # a3 = 809824E8
    trunc.w.s $f8, $f6                   
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f8                    
    mfc1    t3, $f16                   
    sw      t1, 0x0010($sp)            
    jal     func_8001D098              
    sw      t3, 0x0014($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_80981F80       
    nop
    lh      t5, 0x019C(s1)             # 0000019C
    bnel    t5, $zero, lbl_80982068    
    lw      $ra, 0x0074($sp)           
    jal     func_809818D4              
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0074($sp)           
lbl_80982068:
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
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809820A4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     t6, 0x0229(s0)             # 00000229
    andi    t7, t6, 0x0002             # t7 = 00000000
    sltu    t8, $zero, t7              
    sw      t8, 0x003C($sp)            
    lbu     t9, 0x0275(s0)             # 00000275
    andi    t0, t9, 0x0002             # t0 = 00000000
    sltu    t1, $zero, t0              
    beq     t8, $zero, lbl_809820F4    
    sw      t1, 0x0040($sp)            
    lw      t2, 0x0254(s0)             # 00000254
    lw      t3, 0x0000(t2)             # 00000000
    andi    t4, t3, 0x0010             # t4 = 00000000
    bnel    t4, $zero, lbl_80982114    
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809820F4:
    lw      t5, 0x0040($sp)            
    beql    t5, $zero, lbl_8098215C    
    lbu     a0, 0x0228(s0)             # 00000228
    lw      t6, 0x02A0(s0)             # 000002A0
    lw      t7, 0x0000(t6)             # 00000000
    andi    t9, t7, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_80982158    
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80982114:
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a1, $zero, 0xFFFD          # a1 = FFFFFFFD
    addiu   a0, $zero, 0xFFF9          # a0 = FFFFFFF9
lbl_80982124:
    lbu     t0, 0x0228(v0)             # 00000228
    lbu     t8, 0x0229(v0)             # 00000229
    addiu   v1, v1, 0x0001             # v1 = 00000001
    and     t1, t0, a0                 
    and     t2, t8, a1                 
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    sb      t1, 0x01DC(v0)             # 00000228
    bne     v1, a2, lbl_80982124       
    sb      t2, 0x01DD(v0)             # 00000229
    jal     func_80981928              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80982250 
    lw      t9, 0x0198(s0)             # 00000198
lbl_80982158:
    lbu     a0, 0x0228(s0)             # 00000228
lbl_8098215C:
    andi    t3, a0, 0x0002             # t3 = 00000000
    bnel    t3, $zero, lbl_809821B8    
    lw      v0, 0x0198(s0)             # 00000198
    lbu     t4, 0x0274(s0)             # 00000274
    lw      t6, 0x003C($sp)            
    andi    t5, t4, 0x0002             # t5 = 00000000
    bnel    t5, $zero, lbl_809821B8    
    lw      v0, 0x0198(s0)             # 00000198
    beq     t6, $zero, lbl_80982198    
    lw      t1, 0x0040($sp)            
    lw      t7, 0x0254(s0)             # 00000254
    lw      t9, 0x0000(t7)             # 00000000
    andi    t0, t9, 0x0100             # t0 = 00000000
    bnel    t0, $zero, lbl_809821B8    
    lw      v0, 0x0198(s0)             # 00000198
lbl_80982198:
    beql    t1, $zero, lbl_80982250    
    lw      t9, 0x0198(s0)             # 00000198
    lw      t8, 0x02A0(s0)             # 000002A0
    lw      t2, 0x0000(t8)             # 00000000
    andi    t3, t2, 0x0100             # t3 = 00000000
    beql    t3, $zero, lbl_80982250    
    lw      t9, 0x0198(s0)             # 00000198
    lw      v0, 0x0198(s0)             # 00000198
lbl_809821B8:
    lui     v1, %hi(func_80981B48)     # v1 = 80980000
    addiu   v1, v1, %lo(func_80981B48) # v1 = 80981B48
    bne     v1, v0, lbl_80982204       
    andi    t4, a0, 0x0004             # t4 = 00000000
    bne     t4, $zero, lbl_80982204    
    nop
    lbu     t5, 0x0274(s0)             # 00000274
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, t5, 0x0004             # t6 = 00000000
    bne     t6, $zero, lbl_80982204    
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lh      a3, 0x008A(s0)             # 0000008A
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_80982218 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80982204:
    beql    v1, v0, lbl_80982218       
    or      v1, $zero, $zero           # v1 = 00000000
    jal     func_80981A3C              
    or      a0, s0, $zero              # a0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80982218:
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a1, $zero, 0xFFFD          # a1 = FFFFFFFD
    addiu   a0, $zero, 0xFFF9          # a0 = FFFFFFF9
lbl_80982228:
    lbu     t7, 0x0228(v0)             # 00000228
    lbu     t0, 0x0229(v0)             # 00000229
    addiu   v1, v1, 0x0001             # v1 = 00000001
    and     t9, t7, a0                 
    and     t1, t0, a1                 
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    sb      t9, 0x01DC(v0)             # 00000228
    bne     v1, a2, lbl_80982228       
    sb      t1, 0x01DD(v0)             # 00000229
    lw      t9, 0x0198(s0)             # 00000198
lbl_80982250:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      v0, 0x0198(s0)             # 00000198
    lui     t8, %hi(func_80981A88)     # t8 = 80980000
    addiu   t8, t8, %lo(func_80981A88) # t8 = 80981A88
    beq     t8, v0, lbl_8098232C       
    lui     t2, %hi(func_80981D88)     # t2 = 80980000
    addiu   t2, t2, %lo(func_80981D88) # t2 = 80981D88
    beq     t2, v0, lbl_8098232C       
    lui     t3, %hi(func_80981CEC)     # t3 = 80980000
    addiu   t3, t3, %lo(func_80981CEC) # t3 = 80981CEC
    beq     t3, v0, lbl_809822F8       
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lui     v1, %hi(func_80981B48)     # v1 = 80980000
    addiu   v1, v1, %lo(func_80981B48) # v1 = 80981B48
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0218             # a2 = 00000218
    sw      a2, 0x002C($sp)            
    sw      a1, 0x0034($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      v1, 0x0038($sp)            
    addiu   a2, s0, 0x0264             # a2 = 00000264
    sw      a2, 0x0030($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a1, 0x0034($sp)            
    lw      v1, 0x0038($sp)            
    lw      t4, 0x0198(s0)             # 00000198
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    beql    v1, t4, lbl_809822FC       
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0030($sp)            
lbl_809822F8:
    lui     $at, 0x0001                # $at = 00010000
lbl_809822FC:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    addiu   t5, s0, 0x0264             # t5 = 00000264
    sw      t5, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0218             # a2 = 00000218
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0030($sp)            
lbl_8098232C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80982340:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0060($sp)            
    sw      a1, 0x0064($sp)            
    sw      a2, 0x0068($sp)            
    sw      a3, 0x006C($sp)            
    jal     func_800AA740              
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFBC
    lw      v0, 0x0064($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lwc1    $f4, 0x004C($sp)           
    bnel    v0, $at, lbl_809823B4      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    trunc.w.s $f6, $f4                   
    lw      v0, 0x0070($sp)            
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x025E(v0)             # 0000025E
    lwc1    $f8, 0x0050($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    sh      t9, 0x0260(v0)             # 00000260
    lwc1    $f16, 0x0054($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    beq     $zero, $zero, lbl_80982404 
    sh      t1, 0x0262(v0)             # 00000262
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_809823B4:
    bne     v0, $at, lbl_80982404      
    lwc1    $f4, 0x004C($sp)           
    trunc.w.s $f6, $f4                   
    lw      v0, 0x0070($sp)            
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f10                  # $f10 = 7.00
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x02AA(v0)             # 000002AA
    lwc1    $f8, 0x0050($sp)           
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x02AC(v0)             # 000002AC
    lwc1    $f4, 0x0054($sp)           
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x02AE(v0)             # 000002AE
lbl_80982404:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_80982414:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lh      t7, 0x019E(s0)             # 0000019E
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    t7, $f4                    # $f4 = 0.00
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    cvt.s.w $f14, $f4                  
    lw      a1, 0x0158(s0)             # 00000158
    lw      a2, 0x0174(s0)             # 00000174
    lbu     a3, 0x0156(s0)             # 00000156
    lui     t8, %hi(func_80982340)     # t8 = 80980000
    addiu   t8, t8, %lo(func_80982340) # t8 = 80982340
    sw      t8, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0034($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80982490: .word 0x00B60500, 0x00000005, 0x00AC0000, 0x000002B0
.word func_80981540
.word func_809817B4
.word func_809820A4
.word func_80982414
var_809824B0: .word \
0x00110939, 0x10010000, 0x01000000, 0xFFCFFFFF, \
0x03080000, 0xFFCFFFFF, 0x01000000, 0x19010100, \
0x1F402AF8, 0xEC780000, 0x00000000
var_809824DC: .word 0x0000003C, 0x0078FF00
var_809824E4: .word 0xFFFFFFFF
var_809824E8: .word 0xC8FFFFFF, 0x00000000

.section .rodata

var_809824F0: .word 0x3D088889
var_809824F4: .word 0x3D888889
var_809824F8: .word 0x463B8000
var_809824FC: .word 0x449C4000
var_80982500: .word 0x45ABE000
var_80982504: .word 0x45ABE000
var_80982508: .word 0x466A6000, 0x00000000

