.section .text
func_80B6F3E0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_80B6FAC8)      # a1 = 80B70000
    sw      $zero, 0x0030($sp)         
    addiu   a1, a1, %lo(var_80B6FAC8)  # a1 = 80B6FAC8
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_80B6FAA0)      # t0 = 80B70000
    or      a0, s0, $zero              # a0 = 00000000
    sra     t7, t6, 12                 
    andi    t8, t7, 0x000F             # t8 = 00000000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80B6FAA0)(t0)  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80035260              
    sw      t0, 0x0160(s0)             # 00000160
    lhu     t1, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_80B6FAA8)      # a0 = 80B70000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    sra     t2, t1, 12                 
    andi    t3, t2, 0x000F             # t3 = 00000000
    sll     t4, t3,  2                 
    addu    a0, a0, t4                 
    jal     func_80033EF4              
    lw      a0, %lo(var_80B6FAA8)(a0)  
    lw      a0, 0x0044($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0030($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lhu     v1, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v1, v1, 12                 
    andi    v1, v1, 0x000F             # v1 = 00000000
    beq     v1, $zero, lbl_80B6F490    
    addiu   v0, s0, 0x0024             # v0 = 00000024
    bnel    v1, $at, lbl_80B6F630      
    lw      $ra, 0x001C($sp)           
lbl_80B6F490:
    lw      t6, 0x0000(v0)             # 00000024
    addiu   v1, s0, 0x0168             # v1 = 00000168
    lui     $at, %hi(var_80B6FAE0)     # $at = 80B70000
    sw      t6, 0x0000(v1)             # 00000168
    lw      t5, 0x0004(v0)             # 00000028
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t5, 0x0004(v1)             # 0000016C
    lw      t6, 0x0008(v0)             # 0000002C
    sw      t6, 0x0008(v1)             # 00000170
    lhu     t7, 0x001C(s0)             # 0000001C
    lh      t1, 0x0032(s0)             # 00000032
    sw      $zero, 0x0158(s0)          # 00000158
    sra     t8, t7,  6                 
    mtc1    t1, $f4                    # $f4 = 0.00
    andi    t9, t8, 0x003F             # t9 = 00000000
    sll     t0, t9,  2                 
    cvt.s.w $f6, $f4                   
    addu    t0, t0, t9                 
    sll     t0, t0,  2                 
    sw      t0, 0x015C(s0)             # 0000015C
    lwc1    $f8, %lo(var_80B6FAE0)($at) 
    sw      v1, 0x0020($sp)            
    sw      v0, 0x0028($sp)            
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lh      t2, 0x0030(s0)             # 00000030
    lui     $at, %hi(var_80B6FAE4)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6FAE4)($at) 
    mtc1    t2, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AA9E0              
    nop
    lh      t3, 0x0034(s0)             # 00000034
    lui     $at, %hi(var_80B6FAE8)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6FAE8)($at) 
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lhu     t4, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_80B6FAB0)      # t8 = 80B70000
    addiu   t8, t8, %lo(var_80B6FAB0)  # t8 = 80B6FAB0
    sra     t5, t4, 12                 
    andi    t6, t5, 0x000F             # t6 = 00000000
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addiu   a1, s0, 0x0174             # a1 = 00000174
    sw      a1, 0x0024($sp)            
    jal     func_800AB958              
    addu    a0, t7, t8                 
    lwc1    $f10, 0x0174(s0)           # 00000174
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0178(s0)            # 00000178
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f18, $f10, $f16           
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f10, 0x017C(s0)           # 0000017C
    add.s   $f8, $f4, $f6              
    swc1    $f18, 0x0174(s0)           # 00000174
    lw      t9, 0x015C(s0)             # 0000015C
    add.s   $f18, $f10, $f16           
    addiu   $at, $zero, 0x04EC         # $at = 000004EC
    swc1    $f8, 0x0178(s0)            # 00000178
    beq     t9, $at, lbl_80B6F5DC      
    swc1    $f18, 0x017C(s0)           # 0000017C
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)            
    jal     func_80020510              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t1, 0x0020($sp)            
    lw      t0, 0x0028($sp)            
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0000(t0)             # 00000000
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0004(t0)             # 00000004
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0008(t0)             # 00000008
lbl_80B6F5DC:
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B6F624    
    lui     t9, %hi(func_80B6F674)     # t9 = 80B70000
    lw      t5, 0x0024($sp)            
    lw      t4, 0x0028($sp)            
    lui     t8, %hi(func_80B6F940)     # t8 = 80B70000
    lw      t7, 0x0000(t5)             # 00000000
    addiu   t8, t8, %lo(func_80B6F940) # t8 = 80B6F940
    sw      t7, 0x0000(t4)             # 00000000
    lw      t6, 0x0004(t5)             # 00000004
    sw      t6, 0x0004(t4)             # 00000004
    lw      t7, 0x0008(t5)             # 00000008
    sw      t7, 0x0008(t4)             # 00000008
    beq     $zero, $zero, lbl_80B6F62C 
    sw      t8, 0x0154(s0)             # 00000154
lbl_80B6F624:
    addiu   t9, t9, %lo(func_80B6F674) # t9 = 80B6F674
    sw      t9, 0x0154(s0)             # 00000154
lbl_80B6F62C:
    lw      $ra, 0x001C($sp)           
lbl_80B6F630:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F640:
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


func_80B6F674:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B6F6F4    
    lw      a0, 0x002C($sp)            
    lh      v0, 0x0030(s0)             # 00000030
    addiu   a1, $zero, 0x119E          # a1 = 0000119E
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    bltz    v0, lbl_80B6F6BC           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B6F6BC 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B6F6BC:
    slti    $at, v1, 0x2C61            
    bne     $at, $zero, lbl_80B6F6D8   
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_80B6F6E0 
    nop
lbl_80B6F6D8:
    jal     func_8006BA10              
    or      a1, s0, $zero              # a1 = 00000000
lbl_80B6F6E0:
    lui     t6, %hi(func_80B6F708)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6F708) # t6 = 80B6F708
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sw      t6, 0x0154(s0)             # 00000154
    sw      t7, 0x0158(s0)             # 00000158
lbl_80B6F6F4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F708:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      v0, 0x0158(a0)             # 00000158
    addiu   a1, $zero, 0x2859          # a1 = 00002859
    sltiu   v1, v0, 0x0001             
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     v1, $zero, lbl_80B6F744    
    sw      t6, 0x0158(a0)             # 00000158
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t7, %hi(func_80B6F754)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6F754) # t7 = 80B6F754
    sw      t7, 0x0154(a0)             # 00000154
lbl_80B6F744:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F754:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lhu     a1, 0x001C(s0)             # 0000001C
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B6F840    
    addiu   a0, s0, 0x0164             # a0 = 00000164
    lui     $at, %hi(var_80B6FAEC)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6FAEC)($at) 
    lw      a1, 0x0174(s0)             # 00000174
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4080                 # a3 = 40800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_80B6FAF0)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B6FAF0)($at) 
    lw      a1, 0x0178(s0)             # 00000178
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4080                 # a3 = 40800000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, %hi(var_80B6FAF4)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6FAF4)($at) 
    lw      a1, 0x017C(s0)             # 0000017C
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4080                 # a3 = 40800000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x0174(s0)           # 00000174
    lwc1    $f16, 0x0024(s0)           # 00000024
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    lwc1    $f18, 0x0178(s0)           # 00000178
    lwc1    $f4, 0x0028(s0)            # 00000028
    c.eq.s  $f18, $f4                  
    nop
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x017C(s0)            # 0000017C
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     t7, %hi(func_80B6F940)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6F940) # t7 = 80B6F940
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x015C(s0)             # 0000015C
    sw      t7, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80B6F92C 
    sw      t6, 0x0158(s0)             # 00000158
lbl_80B6F840:
    lui     $at, %hi(var_80B6FAF8)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B6FAF8)($at) 
    lui     a1, 0x41A0                 # a1 = 41A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, %hi(var_80B6FAFC)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6FAFC)($at) 
    lw      a1, 0x0168(s0)             # 00000168
    lw      a3, 0x0164(s0)             # 00000164
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, %hi(var_80B6FB00)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6FB00)($at) 
    lw      a1, 0x016C(s0)             # 0000016C
    lw      a3, 0x0164(s0)             # 00000164
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     $at, %hi(var_80B6FB04)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6FB04)($at) 
    lw      a1, 0x0170(s0)             # 00000170
    lw      a3, 0x0164(s0)             # 00000164
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0168(s0)            # 00000168
    lwc1    $f8, 0x0024(s0)            # 00000024
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x016C(s0)           # 0000016C
    lwc1    $f16, 0x0028(s0)           # 00000028
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    lwc1    $f18, 0x0170(s0)           # 00000170
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    c.eq.s  $f18, $f4                  
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    bc1fl   lbl_80B6F930               
    lw      $ra, 0x0024($sp)           
    jal     func_800915CC              
    lwc1    $f12, 0x008C(s0)           # 0000008C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lui     t8, %hi(func_80B6F674)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B6F674) # t8 = 80B6F674
    sw      t8, 0x0154(s0)             # 00000154
lbl_80B6F92C:
    lw      $ra, 0x0024($sp)           
lbl_80B6F930:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F940:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x015C(s0)             # 0000015C
    addiu   $at, $zero, 0x04EC         # $at = 000004EC
    beql    t6, $at, lbl_80B6F9B0      
    lw      $ra, 0x001C($sp)           
    lw      t7, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, t7, 0xFFFF             # a1 = FFFFFFFF
    jal     func_80023164              
    sw      a1, 0x0158(s0)             # 00000158
    lw      t9, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t9, $zero, lbl_80B6F9B0    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x285A          # a1 = 0000285A
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_80020510              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     t0, %hi(func_80B6F754)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B6F754) # t0 = 80B6F754
    sw      t0, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)           
lbl_80B6F9B0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F9C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6F9E4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0034($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v0, 0x001C($sp)            
    lw      v1, 0x001C($sp)            
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0024($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    lw      t0, 0x0160(a0)             # 00000160
    beql    t0, $zero, lbl_80B6FA6C    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x0160(a0)             # 00000160
    sw      t3, 0x0004(v0)             # 00000004
    lw      $ra, 0x0014($sp)           
lbl_80B6FA6C:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B6FA80: .word 0x01BB0600, 0x00000010, 0x00590000, 0x00000180
.word func_80B6F3E0
.word func_80B6F640
.word func_80B6F9C0
.word func_80B6F9E4
var_80B6FAA0: .word 0x06007130, 0x060072D0
var_80B6FAA8: .word 0x06007250, 0x060073F0
var_80B6FAB0: .word \
0x00000000, 0x42C80000, 0x00000000, 0x00000000, \
0x430C0000, 0x00000000
var_80B6FAC8: .word \
0xB0F805DC, 0xB0FC044C, 0xB0F403E8, 0x48500064, \
0x00000000, 0x00000000

.section .rodata

var_80B6FAE0: .word 0x38C90FDB
var_80B6FAE4: .word 0x38C90FDB
var_80B6FAE8: .word 0x38C90FDB
var_80B6FAEC: .word 0x3DCCCCCD
var_80B6FAF0: .word 0x3DCCCCCD
var_80B6FAF4: .word 0x3DCCCCCD
var_80B6FAF8: .word 0x3DCCCCCD
var_80B6FAFC: .word 0x3DCCCCCD
var_80B6FB00: .word 0x3DCCCCCD
var_80B6FB04: .word 0x3DCCCCCD, 0x00000000, 0x00000000

