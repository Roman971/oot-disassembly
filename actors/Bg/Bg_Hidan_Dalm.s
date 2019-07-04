.section .text
func_808D7760:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, %hi(var_808D7EF0)      # a1 = 808D0000
    sw      $zero, 0x002C($sp)         
    addiu   a1, a1, %lo(var_808D7EF0)  # a1 = 808D7EF0
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xDA10             # a0 = 0600DA10
    jal     func_80033EF4              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x002C($sp)            
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    sw      a1, 0x0028($sp)            
    jal     func_8004B064              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808D7EE0)      # a3 = 808D0000
    addiu   t6, s0, 0x017C             # t6 = 0000017C
    lw      a1, 0x0028($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_808D7EE0)  # a3 = 808D7EE0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B3EC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    lh      t0, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     t9, t7,  8                 
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sb      t9, 0x0158(s0)             # 00000158
    sh      t1, 0x001C(s0)             # 0000001C
    jal     func_8002049C              
    andi    a1, t9, 0x00FF             # a1 = 00000000
    beq     v0, $zero, lbl_808D782C    
    lui     t2, %hi(func_808D7890)     # t2 = 808D0000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808D7838 
    lw      $ra, 0x0024($sp)           
lbl_808D782C:
    addiu   t2, t2, %lo(func_808D7890) # t2 = 00007890
    sw      t2, 0x0154(s0)             # 00000154
    lw      $ra, 0x0024($sp)           
lbl_808D7838:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_808D7848:
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
    jal     func_8004B148              
    addiu   a1, a1, 0x015C             # a1 = 0000015C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808D7890:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x016D(s0)             # 0000016D
    lw      v1, 0x1C44(s1)             # 00001C44
    or      a0, s1, $zero              # a0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_808D79EC    
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8007943C              
    sw      v1, 0x0024($sp)            
    bne     v0, $zero, lbl_808D79E8    
    lw      v1, 0x0024($sp)            
    lb      v0, 0x0832(v1)             # 00000832
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beq     v0, $at, lbl_808D78E8      
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bnel    v0, $at, lbl_808D79EC      
    lui     $at, 0x0001                # $at = 00010000
lbl_808D78E8:
    lbu     t8, 0x016D(s0)             # 0000016D
    lw      v0, 0x0178(s0)             # 00000178
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x016D(s0)             # 0000016D
    lbu     t0, 0x0016(v0)             # 00000016
    andi    t1, t0, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_808D791C    
    lh      t4, 0x0032(s0)             # 00000032
    lbu     t2, 0x0072(v0)             # 00000072
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_808D792C    
    lh      t6, 0x0032(s0)             # 00000032
    lh      t4, 0x0032(s0)             # 00000032
lbl_808D791C:
    addiu   t5, t4, 0xC000             # t5 = FFFFC000
    beq     $zero, $zero, lbl_808D7934 
    sh      t5, 0x0032(s0)             # 00000032
    lh      t6, 0x0032(s0)             # 00000032
lbl_808D792C:
    addiu   t7, t6, 0x4000             # t7 = 00004000
    sh      t7, 0x0032(s0)             # 00000032
lbl_808D7934:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x4202                # $at = 42020000
    mtc1    $at, $f6                   # $f6 = 32.50
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f6, $f0              
    add.s   $f10, $f4, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x4202                # $at = 42020000
    mtc1    $at, $f18                  # $f18 = 32.50
    lwc1    $f16, 0x002C(s0)           # 0000002C
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f6, $f18, $f0             
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    add.s   $f4, $f16, $f6             
    jal     func_800218EC              
    swc1    $f4, 0x002C(s0)            # 0000002C
    lhu     t1, 0x0088(s0)             # 00000088
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x4120                # $at = 41200000
    andi    t3, t1, 0xFFFD             # t3 = 00000000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     t0, %hi(func_808D7A14)     # t0 = 808D0000
    addiu   t0, t0, %lo(func_808D7A14) # t0 = 808D7A14
    sh      t3, 0x0088(s0)             # 00000088
    andi    t4, t3, 0xFFF7             # t4 = 00000000
    ori     t9, t8, 0x0010             # t9 = 00000010
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x0154(s0)             # 00000154
    sh      t4, 0x0088(s0)             # 00000088
    or      a0, s1, $zero              # a0 = 00000000
    lbu     a1, 0x0158(s0)             # 00000158
    jal     func_800204D0              
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      a0, 0x1C44(s1)             # 00001C44
    jal     func_80022F84              
    addiu   a1, $zero, 0x180A          # a1 = 0000180A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28B7          # a1 = 000028B7
    beq     $zero, $zero, lbl_808D7A04 
    lw      $ra, 0x001C($sp)           
lbl_808D79E8:
    lui     $at, 0x0001                # $at = 00010000
lbl_808D79EC:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    lw      $ra, 0x001C($sp)           
lbl_808D7A04:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_808D7A14:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s7, 0x0050($sp)            
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x004C($sp)            
    sw      s5, 0x0048($sp)            
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    sw      s0, 0x0034($sp)            
    sdc1    $f26, 0x0028($sp)          
    sdc1    $f24, 0x0020($sp)          
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    lui     a2, 0x3B83                 # a2 = 3B830000
    ori     a2, a2, 0x126F             # a2 = 3B83126F
    addiu   a0, s1, 0x0050             # a0 = 00000050
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_808D7A84    
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
lbl_808D7A84:
    lwc1    $f20, 0x0050(s1)           # 00000050
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x4320                # $at = 43200000
    swc1    $f20, 0x0058(s1)           # 00000058
    swc1    $f20, 0x0054(s1)           # 00000054
    swc1    $f4, 0x005C($sp)           
    lwc1    $f6, 0x0050(s1)            # 00000050
    mtc1    $at, $f8                   # $f8 = 160.00
    lwc1    $f16, 0x0028(s1)           # 00000028
    lui     $at, 0x3FC0                # $at = 3FC00000
    mul.s   $f10, $f6, $f8             
    mtc1    $at, $f26                  # $f26 = 1.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x40A0                # $at = 40A00000
    lui     s5, %hi(var_808D7EF8)      # s5 = 808D0000
    mtc1    $at, $f22                  # $f22 = 5.00
    add.s   $f18, $f16, $f10           
    addiu   s5, s5, %lo(var_808D7EF8)  # s5 = 808D7EF8
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $zero, 0x0004          # s6 = 00000004
    swc1    $f18, 0x0060($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    addiu   s4, $sp, 0x0068            # s4 = FFFFFFF0
    addiu   s3, $sp, 0x005C            # s3 = FFFFFFE4
    ori     s2, $zero, 0x8000          # s2 = 00008000
    swc1    $f4, 0x0064($sp)           
    lh      t6, 0x0032(s1)             # 00000032
lbl_808D7AF4:
    addu    a0, t6, s2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0                  
    sub.s   $f6, $f0, $f24             
    mul.s   $f8, $f6, $f22             
    nop
    mul.s   $f16, $f22, $f20           
    add.s   $f10, $f8, $f16            
    swc1    $f10, 0x0068($sp)          
    lh      t7, 0x0032(s1)             # 00000032
    addu    a0, t7, s2                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0                  
    sub.s   $f18, $f0, $f24            
    mul.s   $f4, $f18, $f22            
    nop
    mul.s   $f6, $f22, $f20            
    add.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0070($sp)           
    sub.s   $f16, $f0, $f24            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFE4
    or      a2, s4, $zero              # a2 = FFFFFFF0
    mul.s   $f10, $f16, $f26           
    or      a3, s5, $zero              # a3 = 808D7EF8
    jal     func_8001C610              
    swc1    $f10, 0x006C($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s6, lbl_808D7AF4       
    lh      t6, 0x0032(s1)             # 00000032
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    ldc1    $f24, 0x0020($sp)          
    ldc1    $f26, 0x0028($sp)          
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    lw      s6, 0x004C($sp)            
    lw      s7, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_808D7BC4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    sw      a0, 0x0020($sp)            
    lw      t9, 0x0154(a0)             # 00000154
    lw      a1, 0x0024($sp)            
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    lw      a0, 0x0020($sp)            
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lw      a1, 0x0020($sp)            
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808D7C24:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s3, 0x0028($sp)            
    addiu   s3, $sp, 0x0034            # s3 = FFFFFFDC
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0024($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sw      a0, 0x0058($sp)            
    lui     a0, %hi(var_808D7E08)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E08)  # a0 = 808D7E08
    jal     func_800AB958              
    or      a1, s3, $zero              # a1 = FFFFFFDC
    addiu   s1, $sp, 0x0040            # s1 = FFFFFFE8
    lui     a0, %hi(var_808D7E14)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E14)  # a0 = 808D7E14
    jal     func_800AB958              
    or      a1, s1, $zero              # a1 = FFFFFFE8
    addiu   s2, $sp, 0x004C            # s2 = FFFFFFF4
    lui     a0, %hi(var_808D7E20)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E20)  # a0 = 808D7E20
    jal     func_800AB958              
    or      a1, s2, $zero              # a1 = FFFFFFF4
    lw      s0, 0x0058($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s3, $zero              # a2 = FFFFFFDC
    addiu   s0, s0, 0x015C             # s0 = 0000015C
    or      a0, s0, $zero              # a0 = 0000015C
    or      a3, s1, $zero              # a3 = FFFFFFE8
    jal     func_80050BD4              
    sw      s2, 0x0010($sp)            
    lui     a0, %hi(var_808D7E5C)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E5C)  # a0 = 808D7E5C
    jal     func_800AB958              
    or      a1, s1, $zero              # a1 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 0000015C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, s3, $zero              # a2 = FFFFFFDC
    or      a3, s2, $zero              # a3 = FFFFFFF4
    jal     func_80050BD4              
    sw      s1, 0x0010($sp)            
    lui     a0, %hi(var_808D7E80)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E80)  # a0 = 808D7E80
    jal     func_800AB958              
    or      a1, s3, $zero              # a1 = FFFFFFDC
    lui     a0, %hi(var_808D7E8C)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E8C)  # a0 = 808D7E8C
    jal     func_800AB958              
    or      a1, s1, $zero              # a1 = FFFFFFE8
    lui     a0, %hi(var_808D7E98)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7E98)  # a0 = 808D7E98
    jal     func_800AB958              
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a0, s0, $zero              # a0 = 0000015C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, s3, $zero              # a2 = FFFFFFDC
    or      a3, s1, $zero              # a3 = FFFFFFE8
    jal     func_80050BD4              
    sw      s2, 0x0010($sp)            
    lui     a0, %hi(var_808D7EC8)      # a0 = 808D0000
    addiu   a0, a0, %lo(var_808D7EC8)  # a0 = 808D7EC8
    jal     func_800AB958              
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a0, s0, $zero              # a0 = 0000015C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a2, s3, $zero              # a2 = FFFFFFDC
    or      a3, s2, $zero              # a3 = FFFFFFF4
    jal     func_80050BD4              
    sw      s1, 0x0010($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_808D7D50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBDF0             # a1 = 0600BDF0
    bne     t6, $zero, lbl_808D7D90    
    or      a0, a3, $zero              # a0 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBBF0             # a1 = 0600BBF0
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    beq     $zero, $zero, lbl_808D7D9C 
    lw      a2, 0x0018($sp)            
lbl_808D7D90:
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
lbl_808D7D9C:
    lw      t8, 0x0154(a2)             # 00000154
    lui     t7, %hi(func_808D7890)     # t7 = 808D0000
    addiu   t7, t7, %lo(func_808D7890) # t7 = 808D7890
    bnel    t7, t8, lbl_808D7DBC       
    lw      $ra, 0x0014($sp)           
    jal     func_808D7C24              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_808D7DBC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_808D7DD0: .word 0x00400100, 0x00000000, 0x002C0000, 0x000002EC
.word func_808D7760
.word func_808D7848
.word func_808D7BC4
.word func_808D7D50
var_808D7DF0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000040, \
0x00000000, 0x00790000
var_808D7E08: .word 0x43988000, 0x00000000, 0xC3960000
var_808D7E14: .word 0x43988000, 0x44160000, 0xC3960000
var_808D7E20: .word \
0x43988000, 0x44160000, 0x43960000, 0x00000000, \
0x00000000, 0x00000000, 0x00000040, 0x00000000, \
0x00790000, 0x43988000, 0x00000000, 0xC3960000, \
0x43988000, 0x44160000, 0x43960000
var_808D7E5C: .word \
0x43988000, 0x00000000, 0x43960000, 0x00000000, \
0x00000000, 0x00000000, 0x00000040, 0x00000000, \
0x00790000
var_808D7E80: .word 0xC3988000, 0x00000000, 0xC3960000
var_808D7E8C: .word 0xC3988000, 0x44160000, 0x43960000
var_808D7E98: .word \
0xC3988000, 0x44160000, 0xC3960000, 0x00000000, \
0x00000000, 0x00000000, 0x00000040, 0x00000000, \
0x00790000, 0xC3988000, 0x00000000, 0xC3960000
var_808D7EC8: .word \
0xC3988000, 0x00000000, 0x43960000, 0xC3988000, \
0x44160000, 0x43960000
var_808D7EE0: .word 0x0A000900, 0x20020000, 0x00000004
.word var_808D7DF0
var_808D7EF0: .word 0xC8500064, 0x386CFF38
var_808D7EF8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata


