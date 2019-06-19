.section .text
func_8099DEB0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_8099E850)      # a1 = 809A0000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_8099E850)  # a1 = 8099E850
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0870             # a0 = 06000870
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    sra     t7, t6,  8                 
    andi    t8, t7, 0x00FF             # t8 = 00000000
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t8, 0x015A(s0)             # 0000015A
    sh      t0, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_8002049C              
    lw      a0, 0x0034($sp)            
    beq     v0, $zero, lbl_8099DF54    
    lui     t3, %hi(func_8099E1EC)     # t3 = 809A0000
    lui     t2, %hi(func_8099E61C)     # t2 = 809A0000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, t2, %lo(func_8099E61C) # t2 = 8099E61C
    sh      t1, 0x0158(s0)             # 00000158
    beq     $zero, $zero, lbl_8099DF5C 
    sw      t2, 0x0154(s0)             # 00000154
lbl_8099DF54:
    addiu   t3, t3, %lo(func_8099E1EC) # t3 = 8099E1EC
    sw      t3, 0x0154(s0)             # 00000154
lbl_8099DF5C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8099DF70:
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


func_8099DFA4:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s1, 0x0054($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00AC($sp)            
    lh      t6, 0x0032(s1)             # 00000032
    lui     $at, 0xBF80                # $at = BF800000
    bnel    t6, $zero, lbl_8099E010    
    mtc1    $at, $f20                  # $f20 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    beq     $zero, $zero, lbl_8099E018 
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f20                  # $f20 = -0.50
lbl_8099E010:
    nop
    lui     $at, 0xBF00                # $at = BF000000
lbl_8099E018:
    mtc1    $at, $f4                   # $f4 = -0.50
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f6, $f4, $f20             
    swc1    $f2, 0x008C($sp)           
    swc1    $f2, 0x0090($sp)           
    mtc1    $at, $f28                  # $f28 = 50.00
    lui     s7, %hi(var_8099E864)      # s7 = 809A0000
    lui     s6, %hi(var_8099E860)      # s6 = 809A0000
    lui     s5, %hi(var_8099E854)      # s5 = 809A0000
    swc1    $f6, 0x0088($sp)           
    lwc1    $f8, 0x0028(s1)            # 00000028
    addiu   s5, s5, %lo(var_8099E854)  # s5 = 8099E854
    addiu   s6, s6, %lo(var_8099E860)  # s6 = 8099E860
    swc1    $f8, 0x0098($sp)           
    lwc1    $f10, 0x002C(s1)           # 0000002C
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f10, 0x009C($sp)          
    lwc1    $f18, 0x0008(s1)           # 00000008
    lwc1    $f16, 0x0024(s1)           # 00000024
    mtc1    $at, $f26                  # $f26 = 10.00
    lui     $at, 0x42F0                # $at = 42F00000
    sub.s   $f4, $f16, $f18            
    mtc1    $at, $f24                  # $f24 = 120.00
    addiu   s7, s7, %lo(var_8099E864)  # s7 = 8099E864
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f6, $f4, $f20             
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s4, $sp, 0x0088            # s4 = FFFFFFE0
    addiu   s3, $sp, 0x0094            # s3 = FFFFFFEC
    addiu   s2, $zero, 0x0002          # s2 = 00000002
    sub.s   $f0, $f8, $f6              
    mul.s   $f22, $f0, $f20            
    nop
lbl_8099E0A4:
    bne     s0, s2, lbl_8099E0BC       
    nop
    mul.s   $f16, $f24, $f20           
    lwc1    $f10, 0x009C($sp)          
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x009C($sp)          
lbl_8099E0BC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f22             
    lwc1    $f4, 0x0008(s1)            # 00000008
    sub.s   $f6, $f4, $f8              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0094($sp)           
    mul.s   $f10, $f0, $f26            
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x001C($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s3, $zero              # a1 = FFFFFFEC
    or      a2, s4, $zero              # a2 = FFFFFFE0
    or      a3, s5, $zero              # a3 = 8099E854
    add.s   $f16, $f10, $f28           
    sw      s6, 0x0010($sp)            
    sw      s7, 0x0014($sp)            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    jal     func_8001BD94              
    sw      t8, 0x0018($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s8, lbl_8099E0A4       
    nop
    lw      $ra, 0x0074($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
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
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_8099E160:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      a2, 0x0038($sp)            
    andi    a3, a2, 0xFFFF             # a3 = 00000000
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    bnel    t6, $zero, lbl_8099E1A8    
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_8099E1B8 
    swc1    $f8, 0x002C($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
lbl_8099E1A8:
    mtc1    $at, $f16                  # $f16 = 120.00
    nop
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x002C($sp)          
lbl_8099E1B8:
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    swc1    $f4, 0x0024($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_80058FF8              
    swc1    $f6, 0x0028($sp)           
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8099E1EC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beql    v0, $zero, lbl_8099E4A4    
    lw      $ra, 0x0034($sp)           
    jal     func_8007943C              
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8099E4A0    
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    lui     t7, %hi(func_8099E4B4)     # t7 = 809A0000
    addiu   t7, t7, %lo(func_8099E4B4) # t7 = 8099E4B4
    sh      t6, 0x0158(s0)             # 00000158
    sw      t7, 0x0154(s0)             # 00000154
    sw      $zero, 0x0010($sp)         
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1771          # a1 = 00001771
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    jal     func_8006B6FC              
    or      a3, s0, $zero              # a3 = 00000000
    lh      v1, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v1, $at, lbl_8099E3E0      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0040($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0044($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0048($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f2                   # $f2 = -25.00
    lwc1    $f6, 0x0040($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    mul.s   $f8, $f2, $f6              
    lwc1    $f16, 0x0044($sp)          
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f18, $f16, $f12           
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    add.s   $f10, $f4, $f8             
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    ori     $at, $zero, 0x8000         # $at = 00008000
    add.s   $f6, $f18, $f10            
    lwc1    $f10, 0x0048($sp)          
    sub.s   $f16, $f4, $f8             
    mfc1    a3, $f6                    
    mul.s   $f6, $f2, $f10             
    swc1    $f16, 0x0010($sp)          
    mul.s   $f8, $f0, $f12             
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0018($sp)         
    sub.s   $f4, $f18, $f6             
    add.s   $f16, $f8, $f4             
    swc1    $f16, 0x0014($sp)          
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      a0, 0x003C($sp)            
    sw      t0, 0x0024($sp)            
    addu    t9, t8, $at                
    sw      t9, 0x001C($sp)            
    jal     func_80025110              # ActorSpawn
    sw      $zero, 0x0020($sp)         
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0040($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0044($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0048($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f2                   # $f2 = 80.00
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f12                  # $f12 = -25.00
    lwc1    $f18, 0x0040($sp)          
    lwc1    $f4, 0x0044($sp)           
    lwc1    $f10, 0x0024(s0)           # 00000024
    mul.s   $f6, $f12, $f18            
    lui     $at, 0x4120                # $at = 41200000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    mul.s   $f16, $f4, $f2             
    lw      a0, 0x003C($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    add.s   $f8, $f10, $f6             
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f18, $f16, $f8            
    lwc1    $f8, 0x0048($sp)           
    sub.s   $f4, $f10, $f6             
    mfc1    a3, $f18                   
    mul.s   $f18, $f12, $f8            
    swc1    $f4, 0x0010($sp)           
    mul.s   $f6, $f0, $f2              
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0018($sp)         
    sub.s   $f10, $f16, $f18           
    add.s   $f4, $f6, $f10             
    swc1    $f4, 0x0014($sp)           
    lh      t1, 0x00B6(s0)             # 000000B6
    sw      t2, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              # ActorSpawn
    sw      t1, 0x001C($sp)            
    beq     $zero, $zero, lbl_8099E4A4 
    lw      $ra, 0x0034($sp)           
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8099E3E0:
    bnel    v1, $at, lbl_8099E4A4      
    lw      $ra, 0x0034($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0040($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0044($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0048($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f8                   # $f8 = -25.00
    lwc1    $f16, 0x0040($sp)          
    lwc1    $f4, 0x0044($sp)           
    lwc1    $f6, 0x0008(s0)            # 00000008
    mul.s   $f18, $f8, $f16            
    addiu   t4, $zero, 0x00FD          # t4 = 000000FD
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    mul.s   $f8, $f4, $f2              
    mtc1    $at, $f4                   # $f4 = -25.00
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0090          # a2 = 00000090
    add.s   $f10, $f6, $f18            
    lwc1    $f6, 0x000C(s0)            # 0000000C
    add.s   $f16, $f8, $f10            
    lwc1    $f8, 0x0048($sp)           
    sub.s   $f18, $f6, $f12            
    mul.s   $f10, $f4, $f8             
    mfc1    a3, $f16                   
    swc1    $f18, 0x0010($sp)          
    mul.s   $f18, $f0, $f2             
    lwc1    $f16, 0x0010(s0)           # 00000010
    sw      $zero, 0x0018($sp)         
    sub.s   $f6, $f16, $f10            
    add.s   $f4, $f18, $f6             
    swc1    $f4, 0x0014($sp)           
    lh      t3, 0x00B6(s0)             # 000000B6
    sw      t4, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              # ActorSpawn
    sw      t3, 0x001C($sp)            
lbl_8099E4A0:
    lw      $ra, 0x0034($sp)           
lbl_8099E4A4:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_8099E4B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0158(a3)             # 00000158
    lui     $at, 0xC080                # $at = C0800000
    beq     v0, $zero, lbl_8099E4D8    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a3)             # 00000158
lbl_8099E4D8:
    lh      t7, 0x0032(a3)             # 00000032
    bnel    t7, $zero, lbl_8099E4F8    
    mtc1    $at, $f0                   # $f0 = -4.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    beq     $zero, $zero, lbl_8099E500 
    lwc1    $f4, 0x0008(a3)            # 00000008
    mtc1    $at, $f0                   # $f0 = 4.00
lbl_8099E4F8:
    nop
    lwc1    $f4, 0x0008(a3)            # 00000008
lbl_8099E500:
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0024             # a0 = 00000024
    add.s   $f6, $f4, $f0              
    lui     a2, 0x4000                 # a2 = 40000000
    mfc1    a1, $f6                    
    jal     func_8006385C              
    nop
    lw      a3, 0x0018($sp)            
    addiu   t9, $zero, 0x0025          # t9 = 00000025
    addiu   a2, $zero, 0x2855          # a2 = 00002855
    lh      t8, 0x0158(a3)             # 00000158
    or      a0, a3, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_8099E55C    
    lw      $ra, 0x0014($sp)           
    sh      t9, 0x0158(a3)             # 00000158
    sw      a3, 0x0018($sp)            
    jal     func_8099E160              
    lw      a1, 0x001C($sp)            
    lw      a3, 0x0018($sp)            
    lui     t0, %hi(func_8099E568)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_8099E568) # t0 = 8099E568
    sw      t0, 0x0154(a3)             # 00000154
    lw      $ra, 0x0014($sp)           
lbl_8099E55C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8099E568:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x0158(s0)             # 00000158
    lui     $at, 0xC1C0                # $at = C1C00000
    beq     v0, $zero, lbl_8099E590    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
lbl_8099E590:
    lh      t7, 0x0032(s0)             # 00000032
    bnel    t7, $zero, lbl_8099E5B0    
    mtc1    $at, $f0                   # $f0 = -24.00
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f0                   # $f0 = 24.00
    beq     $zero, $zero, lbl_8099E5B8 
    lwc1    $f4, 0x0008(s0)            # 00000008
    mtc1    $at, $f0                   # $f0 = 24.00
lbl_8099E5B0:
    nop
    lwc1    $f4, 0x0008(s0)            # 00000008
lbl_8099E5B8:
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    add.s   $f6, $f4, $f0              
    mfc1    a1, $f6                    
    jal     func_8006385C              
    nop
    bne     v0, $zero, lbl_8099E5E0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8099DFA4              
    lw      a1, 0x0024($sp)            
lbl_8099E5E0:
    lh      t8, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    bnel    t8, $zero, lbl_8099E60C    
    lw      $ra, 0x001C($sp)           
    jal     func_8099E160              
    addiu   a2, $zero, 0x2856          # a2 = 00002856
    lui     t9, %hi(func_8099E61C)     # t9 = 809A0000
    addiu   t9, t9, %lo(func_8099E61C) # t9 = 8099E61C
    sw      t9, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)           
lbl_8099E60C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8099E61C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    addiu   v0, $zero, 0x0006          # v0 = 00000006
    lh      t6, 0x0158(s0)             # 00000158
    lui     t8, %hi(func_8099E7C0)     # t8 = 809A0000
    addiu   t8, t8, %lo(func_8099E7C0) # t8 = 8099E7C0
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0158(s0)             # 00000158
    lh      v1, 0x0158(s0)             # 00000158
    bne     v0, v1, lbl_8099E6B4       
    nop
    sw      t8, 0x0154(s0)             # 00000154
    lh      t9, 0x07A0(a2)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t0, t9,  2                 
    addu    t1, a2, t0                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t1)             # 00000790
    sll     a0, v0, 16                 
    sw      v0, 0x0030($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0x7530          # a1 = 00007530
    lh      a0, 0x0032($sp)            
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8007D738              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_8099E6CC 
    lh      v1, 0x0158(s0)             # 00000158
lbl_8099E6B4:
    bne     v1, $zero, lbl_8099E6CC    
    lui     t2, %hi(func_8099E7C0)     # t2 = 809A0000
    sh      v0, 0x0158(s0)             # 00000158
    addiu   t2, t2, %lo(func_8099E7C0) # t2 = 8099E7C0
    sw      t2, 0x0154(s0)             # 00000154
    lh      v1, 0x0158(s0)             # 00000158
lbl_8099E6CC:
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    cvt.s.w $f6, $f4                   
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f8                   # $f8 = 24.00
    lui     $at, %hi(var_8099E868)     # $at = 809A0000
    add.s   $f10, $f6, $f8             
    c.lt.s  $f0, $f10                  
    swc1    $f10, %lo(var_8099E868)($at) 
    lui     $at, %hi(var_8099E868)     # $at = 809A0000
    bc1fl   lbl_8099E708               
    lh      t3, 0x0032(s0)             # 00000032
    swc1    $f0, %lo(var_8099E868)($at) 
    lh      t3, 0x0032(s0)             # 00000032
lbl_8099E708:
    lui     $at, %hi(var_8099E880)     # $at = 809A0000
    lwc1    $f4, %lo(var_8099E880)($at) 
    mtc1    t3, $f16                   # $f16 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f18, $f16                 
    mul.s   $f12, $f18, $f4            
    jal     func_800AAB94              
    nop
    lh      t4, 0x0158(s0)             # 00000158
    lui     $at, %hi(var_8099E884)     # $at = 809A0000
    lwc1    $f10, %lo(var_8099E884)($at) 
    mtc1    t4, $f6                    # $f6 = 0.00
    lui     a1, %hi(var_8099E874)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099E874)  # a1 = 8099E874
    cvt.s.w $f8, $f6                   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f12, $f8, $f10            
    jal     func_800AC280              
    nop
    lui     a0, %hi(var_8099E868)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099E868)  # a0 = 8099E868
    jal     func_800AB958              
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFB4
    lwc1    $f16, 0x0008(s0)           # 00000008
    lwc1    $f18, 0x0034($sp)          
    lwc1    $f6, 0x000C(s0)            # 0000000C
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC0
    add.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0010(s0)           # 00000010
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0038($sp)           
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x003C($sp)          
    add.s   $f4, $f16, $f18            
    jal     func_800AA740              
    swc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC0
    addiu   a1, s0, 0x00B4             # a1 = 000000B4
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_8099E7C0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8099E7D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8099E7F4:
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

var_8099E830: .word 0x00BD0100, 0x00000010, 0x008D0000, 0x0000015C
.word func_8099DEB0
.word func_8099DF70
.word func_8099E7D0
.word func_8099E7F4
var_8099E850: .word 0x48500064
var_8099E854: .word 0x00000000, 0x00000000, 0x00000000
var_8099E860: .word 0x1E1432FF
var_8099E864: .word 0x000000FF
var_8099E868: .word 0x41F00000, 0x00000000, 0x00000000
var_8099E874: .word 0x3D05729B, 0x3EA6CF42, 0xBF71E4F7

.section .rodata

var_8099E880: .word 0x38C90FDB
var_8099E884: .word 0x3E23DA21, 0x00000000, 0x00000000

