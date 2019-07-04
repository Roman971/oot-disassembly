.section .text
func_809CAE60:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    sw      $zero, 0x0034($sp)         
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    sra     t7, v0,  8                 
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sh      t8, 0x001C(s0)             # 0000001C
    lh      v1, 0x001C(s0)             # 0000001C
    andi    t6, v0, 0x00FF             # t6 = 00000000
    sh      t6, 0x0158(s0)             # 00000158
    beq     v1, $zero, lbl_809CAECC    
    lui     a1, %hi(var_809CC044)      # a1 = 809D0000
    beq     v1, $at, lbl_809CAF60      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_809CB0C8      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_809CB1B0      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809CB21C 
    lw      $ra, 0x0024($sp)           
lbl_809CAECC:
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_809CC044)  # a1 = 809CC044
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0EE8             # a0 = 06000EE8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lw      a0, 0x0044($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0034($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      v0, 0x013C(s0)             # 0000013C
    lw      t0, 0x0004(v1)             # 8011A5D4
    lw      a0, 0x0044($sp)            
    bne     t0, $zero, lbl_809CAF50    
    nop
    jal     func_8002049C              
    lh      a1, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_809CAF50    
    lui     $at, 0x42F0                # $at = 42F00000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     t1, %hi(func_809CB4E0)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809CB4E0) # t1 = 809CB4E0
    add.s   $f8, $f4, $f6              
    sw      t1, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_809CB218 
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_809CAF50:
    lui     t2, %hi(func_809CB38C)     # t2 = 809D0000
    addiu   t2, t2, %lo(func_809CB38C) # t2 = 809CB38C
    beq     $zero, $zero, lbl_809CB218 
    sw      t2, 0x0154(s0)             # 00000154
lbl_809CAF60:
    lui     a1, %hi(var_809CC044)      # a1 = 809D0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_809CC044)  # a1 = 809CC044
    addiu   a1, s0, 0x0160             # a1 = 00000160
    sw      a1, 0x002C($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_809CC034)      # a3 = 809D0000
    addiu   t3, s0, 0x0180             # t3 = 00000180
    lw      a1, 0x002C($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809CC034)  # a3 = 809CC034
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t4, 0x0004(v1)             # 8011A5D4
    lw      a0, 0x0044($sp)            
    bnel    t4, $zero, lbl_809CB060    
    lw      v0, 0x017C(s0)             # 0000017C
    jal     func_8002049C              
    lh      a1, 0x0158(s0)             # 00000158
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_809CB05C    
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t5, 0x0EE0(v1)             # 8011B4B0
    lui     $at, %hi(var_809CC054)     # $at = 809D0000
    andi    t6, t5, 0x0200             # t6 = 00000000
    bne     t6, $zero, lbl_809CAFF0    
    nop
    lui     $at, %hi(var_809CC050)     # $at = 809D0000
    lwc1    $f0, %lo(var_809CC050)($at) 
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_809CAFFC 
    swc1    $f0, 0x000C(s0)            # 0000000C
lbl_809CAFF0:
    lwc1    $f2, %lo(var_809CC054)($at) 
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f2, 0x000C(s0)            # 0000000C
lbl_809CAFFC:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f0                   # $f0 = 16.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      v0, 0x017C(s0)             # 0000017C
    lui     t7, %hi(func_809CBB3C)     # t7 = 809D0000
    sub.s   $f18, $f10, $f16           
    addiu   t7, t7, %lo(func_809CBB3C) # t7 = 809CBB3C
    sw      t7, 0x0154(s0)             # 00000154
    swc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f6, $f4, $f0              
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t8, 0x002E(v0)             # 0000002E
    sll     t9, t8,  1                 
    sh      t9, 0x0036(v0)             # 00000036
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lw      t2, 0x017C(s0)             # 0000017C
    add.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    beq     $zero, $zero, lbl_809CB08C 
    sh      t1, 0x0034(t2)             # 00000034
lbl_809CB05C:
    lw      v0, 0x017C(s0)             # 0000017C
lbl_809CB060:
    lui     t3, %hi(func_809CB5E8)     # t3 = 809D0000
    addiu   t3, t3, %lo(func_809CB5E8) # t3 = 809CB5E8
    sw      t3, 0x0154(s0)             # 00000154
    lh      t4, 0x002E(v0)             # 0000002E
    sh      t4, 0x0036(v0)             # 00000036
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lw      t7, 0x017C(s0)             # 0000017C
    trunc.w.s $f4, $f18                  
    mfc1    t6, $f4                    
    nop
    sh      t6, 0x0034(t7)             # 809CBB70
lbl_809CB08C:
    lwc1    $f6, 0x0024(s0)            # 00000024
    lw      t0, 0x017C(s0)             # 0000017C
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    trunc.w.s $f8, $f6                   
    mfc1    t9, $f8                    
    nop
    sh      t9, 0x0030(t0)             # 00000030
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      t3, 0x017C(s0)             # 0000017C
    trunc.w.s $f16, $f10                 
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x0032(t3)             # 809CB61A
    beq     $zero, $zero, lbl_809CB218 
    sb      t4, 0x00AE(s0)             # 000000AE
lbl_809CB0C8:
    lui     a1, %hi(var_809CC048)      # a1 = 809D0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_809CC048)  # a1 = 809CC048
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t5, $zero, 0x0030          # t5 = 00000030
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      t5, 0x0004(s0)             # 00000004
    lw      t6, 0x0004(v1)             # 8011A5D4
    lui     t2, %hi(func_809CB4E0)     # t2 = 809D0000
    addiu   t2, t2, %lo(func_809CB4E0) # t2 = 809CB4E0
    bnel    t6, $zero, lbl_809CB1A4    
    mtc1    $zero, $f4                 # $f4 = 0.00
    lhu     t7, 0x0EE0(v1)             # 8011B4B0
    andi    t8, t7, 0x0200             # t8 = 00000000
    bnel    t8, $zero, lbl_809CB1A4    
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t9, 0x1360(v1)             # 8011B930
    slti    $at, t9, 0x0004            
    beq     $at, $zero, lbl_809CB174   
    lui     $at, %hi(var_809CC058)     # $at = 809D0000
    lwc1    $f0, %lo(var_809CC058)($at) 
    lw      v1, 0x0044($sp)            
    addiu   t0, $zero, 0xFB57          # t0 = FFFFFB57
    swc1    $f0, 0x015C(s0)            # 0000015C
    lw      t1, 0x07C0(v1)             # 8011AD90
    addiu   a0, $zero, 0xF837          # a0 = FFFFF837
    lw      t2, 0x0028(t1)             # 00000028
    lui     t1, %hi(func_809CB4E0)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809CB4E0) # t1 = 809CB4E0
    sh      t0, 0x0012(t2)             # 809CB4F2
    lw      t3, 0x07C0(v1)             # 8011AD90
    lw      v0, 0x0028(t3)             # 00000028
    lh      t4, 0x0014(v0)             # 00000014
    addiu   t5, t4, 0xFFCE             # t5 = FFFFFFCE
    sh      t5, 0x0014(v0)             # 00000014
    lw      t6, 0x07C0(v1)             # 8011AD90
    lw      t7, 0x0028(t6)             # 00000028
    sh      a0, 0x0022(t7)             # 00000022
    lw      t8, 0x07C0(v1)             # 8011AD90
    lw      t9, 0x0028(t8)             # 00000028
    sh      a0, 0x0032(t9)             # 00000032
    beq     $zero, $zero, lbl_809CB218 
    sw      t1, 0x0154(s0)             # 00000154
lbl_809CB174:
    lui     $at, %hi(var_809CC05C)     # $at = 809D0000
    lwc1    $f0, %lo(var_809CC05C)($at) 
    lui     $at, %hi(var_809CC060)     # $at = 809D0000
    lwc1    $f2, %lo(var_809CC060)($at) 
    lui     t0, %hi(func_809CBECC)     # t0 = 809D0000
    addiu   t0, t0, %lo(func_809CBECC) # t0 = 809CBECC
    add.s   $f18, $f0, $f2             
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f0, 0x015C(s0)            # 0000015C
    beq     $zero, $zero, lbl_809CB218 
    swc1    $f18, 0x0028(s0)           # 00000028
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_809CB1A4:
    sw      t2, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_809CB218 
    swc1    $f4, 0x015C(s0)            # 0000015C
lbl_809CB1B0:
    lui     a1, %hi(var_809CC044)      # a1 = 809D0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_809CC044)  # a1 = 809CC044
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1238             # a0 = 06001238
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lw      a0, 0x0044($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0034($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     t3, %hi(func_809CB4E0)     # t3 = 809D0000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t3, t3, %lo(func_809CB4E0) # t3 = 809CB4E0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t3, 0x0154(s0)             # 00000154
    lw      t4, 0x0004(v1)             # 8011A5D4
    beql    t4, $zero, lbl_809CB21C    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809CB218:
    lw      $ra, 0x0024($sp)           
lbl_809CB21C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB22C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_809CB268    
    addiu   a1, a0, 0x0810             # a1 = 00000810
    beq     v0, $at, lbl_809CB278      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809CB284      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_809CB288      
    lw      $ra, 0x0014($sp)           
lbl_809CB268:
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
    beq     $zero, $zero, lbl_809CB288 
    lw      $ra, 0x0014($sp)           
lbl_809CB278:
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a3, 0x0160             # a1 = 00000160
lbl_809CB284:
    lw      $ra, 0x0014($sp)           
lbl_809CB288:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB294:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    divu    $zero, t7, $at             
    mfhi    t8                         
    lui     $at, 0x4320                # $at = 43200000
    bnel    t8, $zero, lbl_809CB37C    
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f12                  # $f12 = 160.00
    jal     func_80026D90              
    nop
    swc1    $f0, 0x0030($sp)           
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x0030($sp)           
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0034($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f16, 0x0038($sp)          
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f18, 0x0030($sp)          
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f4, $f0, $f18             
    add.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x003C($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, %hi(var_809CC064)     # $at = 809D0000
    lwc1    $f16, %lo(var_809CC064)($at) 
    lui     $at, %hi(var_809CC068)     # $at = 809D0000
    lwc1    $f4, %lo(var_809CC068)($at) 
    mul.s   $f18, $f0, $f16            
    lw      a0, 0x0044($sp)            
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lui     a2, 0x4248                 # a2 = 42480000
    lui     a3, 0x428C                 # a3 = 428C0000
    swc1    $f10, 0x0010($sp)          
    add.s   $f6, $f18, $f4             
    jal     func_8001CEDC              
    swc1    $f6, 0x0014($sp)           
    lw      $ra, 0x0024($sp)           
lbl_809CB37C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB38C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s3, 0x0020($sp)            
    sw      s0, 0x0014($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x0158(s1)             # 00000158
    beq     v0, $zero, lbl_809CB404    
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f4, 0x0028(s1)            # 00000028
    lui     t7, %hi(func_809CB420)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CB420) # t7 = 809CB420
    add.s   $f8, $f4, $f6              
    sh      t6, 0x015A(s1)             # 0000015A
    sw      t7, 0x0154(s1)             # 00000154
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f8, 0x0028(s1)            # 00000028
    addiu   s3, $zero, 0x000F          # s3 = 0000000F
    or      a0, s1, $zero              # a0 = 00000000
lbl_809CB3F0:
    jal     func_809CB294              
    or      a1, s2, $zero              # a1 = 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_809CB3F0       
    or      a0, s1, $zero              # a0 = 00000000
lbl_809CB404:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809CB420:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    lui     t7, %hi(func_809CB454)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CB454) # t7 = 809CB454
    beq     v0, $zero, lbl_809CB440    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_809CB440:
    bne     v0, $zero, lbl_809CB44C    
    nop
    sw      t7, 0x0154(a0)             # 00000154
lbl_809CB44C:
    jr      $ra                        
    nop


func_809CB454:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_809CB294              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    add.s   $f8, $f4, $f6              
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_809CB4C4    
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_809CB4E0)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809CB4E0) # t6 = 809CB4E0
    sw      t6, 0x0154(a3)             # 00000154
    sh      $zero, 0x015A(a3)          # 0000015A
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2837          # a1 = 00002837
    beq     $zero, $zero, lbl_809CB4D4 
    lw      $ra, 0x0014($sp)           
lbl_809CB4C4:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2036          # a1 = 00002036
    lw      $ra, 0x0014($sp)           
lbl_809CB4D4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB4E0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809CB4F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    bne     a2, $zero, lbl_809CB528    
    lw      t6, 0x0024($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    divu    $zero, t7, $at             
    mfhi    t8                         
    bnel    t8, $zero, lbl_809CB548    
    lw      $ra, 0x001C($sp)           
lbl_809CB528:
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    addiu   a3, $zero, 0x02BC          # a3 = 000002BC
    sw      $zero, 0x0010($sp)         
    jal     func_8001CF3C              
    addiu   a1, a1, 0x0008             # a1 = 00000008
    lw      $ra, 0x001C($sp)           
lbl_809CB548:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB554:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    divu    $zero, t7, $at             
    mfhi    t8                         
    beq     t8, $zero, lbl_809CB590    
    nop
    beql    a2, $zero, lbl_809CB5DC    
    lw      $ra, 0x001C($sp)           
lbl_809CB590:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, %hi(var_809CC06C)     # $at = 809D0000
    lwc1    $f6, %lo(var_809CC06C)($at) 
    lui     $at, %hi(var_809CC070)     # $at = 809D0000
    lwc1    $f10, %lo(var_809CC070)($at) 
    mul.s   $f8, $f0, $f6              
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x4220                 # a3 = 42200000
    swc1    $f4, 0x0010($sp)           
    addiu   a1, a1, 0x0024             # a1 = 00000024
    add.s   $f16, $f8, $f10            
    jal     func_8001CEDC              
    swc1    $f16, 0x0014($sp)          
    lw      $ra, 0x001C($sp)           
lbl_809CB5DC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB5E8:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s2, 0x0048($sp)            
    sw      s1, 0x0044($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s4, 0x0050($sp)            
    sw      s3, 0x004C($sp)            
    sw      s0, 0x0040($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lbu     t6, 0x0171(s1)             # 00000171
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809CB7D0    
    or      a0, s2, $zero              # a0 = 00000000
    lw      t9, 0x0004(s1)             # 00000004
    addiu   t8, $zero, 0x0082          # t8 = 00000082
    sh      t8, 0x015A(s1)             # 0000015A
    ori     t0, t9, 0x0010             # t0 = 00000010
    sw      t0, 0x0004(s1)             # 00000004
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s1)             # 00000032
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x002C(s1)           # 0000002C
    mul.s   $f6, $f2, $f20             
    mov.s   $f22, $f0                  
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f16, $f2, $f0             
    add.s   $f8, $f4, $f6              
    add.s   $f18, $f10, $f16           
    swc1    $f8, 0x0024(s1)            # 00000024
    swc1    $f18, 0x002C(s1)           # 0000002C
    or      a0, s1, $zero              # a0 = 00000000
lbl_809CB690:
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_809CB554              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slti    $at, s0, 0x0014            
    bnel    $at, $zero, lbl_809CB690   
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, %hi(var_809CC074)     # $at = 809D0000
    mul.s   $f6, $f0, $f20             
    lwc1    $f26, %lo(var_809CC074)($at) 
    lui     $at, %hi(var_809CC078)     # $at = 809D0000
    mul.s   $f18, $f0, $f22            
    lwc1    $f24, %lo(var_809CC078)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    mtc1    $zero, $f22                # $f22 = 0.00
    add.s   $f8, $f4, $f6              
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    addiu   s3, $sp, 0x0068            # s3 = FFFFFFE8
    swc1    $f8, 0x0068($sp)           
    lwc1    $f10, 0x0028(s1)           # 00000028
    swc1    $f10, 0x006C($sp)          
    lwc1    $f16, 0x002C(s1)           # 0000002C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0070($sp)           
lbl_809CB704:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f24             
    mfc1    a2, $f22                   
    mfc1    a3, $f20                   
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFE8
    swc1    $f20, 0x0010($sp)          
    add.s   $f8, $f6, $f26             
    jal     func_8001CEDC              
    swc1    $f8, 0x0014($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s4, lbl_809CB704       
    nop
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x02BC          # t2 = 000002BC
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t4, 0x017C(s1)             # 0000017C
    addiu   t3, $zero, 0x002D          # t3 = 0000002D
    lui     t5, %hi(func_809CB80C)     # t5 = 809D0000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t5, t5, %lo(func_809CB80C) # t5 = 809CB80C
    lui     t6, 0x8010                 # t6 = 80100000
    sh      t3, 0x0036(t4)             # 00000036
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t5, 0x0154(s1)             # 00000154
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800204D0              
    lh      a1, 0x0158(s1)             # 00000158
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1018          # a1 = 00001018
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_809CB7E0 
    lw      $ra, 0x0054($sp)           
lbl_809CB7D0:
    addu    a1, s2, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s1, 0x0160             # a2 = 00000160
    lw      $ra, 0x0054($sp)           
lbl_809CB7E0:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_809CB80C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_809CB830    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
lbl_809CB830:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_809CC07C)     # $at = 809D0000
    lwc1    $f6, %lo(var_809CC07C)($at) 
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f6, $f0              
    add.s   $f10, $f4, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, %hi(var_809CC080)     # $at = 809D0000
    lwc1    $f18, %lo(var_809CC080)($at) 
    lwc1    $f16, 0x002C(s0)           # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f18, $f0             
    or      a2, $zero, $zero           # a2 = 00000000
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x002C(s0)            # 0000002C
    jal     func_809CB554              
    lw      a1, 0x0024($sp)            
    lh      t7, 0x015A(s0)             # 0000015A
    lui     t0, %hi(func_809CB8C4)     # t0 = 809D0000
    lui     $at, 0x3F00                # $at = 3F000000
    bne     t7, $zero, lbl_809CB8B0    
    addiu   t0, t0, %lo(func_809CB8C4) # t0 = 809CB8C4
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    sw      t0, 0x0154(s0)             # 00000154
    and     t9, t8, $at                
    sw      t9, 0x0004(s0)             # 00000004
    swc1    $f8, 0x0060(s0)            # 00000060
lbl_809CB8B0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809CB8C4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lwc1    $f2, 0x0060(s0)            # 00000060
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_809CC090)     # $at = 809D0000
    c.le.s  $f2, $f0                   
    add.s   $f6, $f4, $f2              
    bc1f    lbl_809CBA08               
    swc1    $f6, 0x0028(s0)            # 00000028
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, %hi(var_809CC084)     # $at = 809D0000
    lwc1    $f8, %lo(var_809CC084)($at) 
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x002C($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f18, 0x002C($sp)          
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f4, $f18, $f0             
    add.s   $f6, $f16, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x002C($sp)          
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_809CC088)     # $at = 809D0000
    mul.s   $f18, $f10, $f0            
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    add.s   $f16, $f8, $f18            
    swc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f6, %lo(var_809CC088)($at) 
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_809CB4F0              
    lw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0260          # a2 = 00000260
    beql    v0, $zero, lbl_809CBB2C    
    lw      $ra, 0x0024($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f18                  # $f18 = 16.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f0, $f18            
    sub.s   $f4, $f8, $f16             
    jal     func_80063684              # coss?
    swc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f10                  # $f10 = 16.00
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_809CC08C)     # $at = 809D0000
    mul.s   $f18, $f0, $f10            
    lw      t7, 0x0004(s0)             # 00000004
    lw      v0, 0x017C(s0)             # 0000017C
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    lui     t1, %hi(func_809CBB3C)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809CBB3C) # t1 = 809CBB3C
    sub.s   $f8, $f6, $f18             
    swc1    $f8, 0x0010(s0)            # 00000010
    lwc1    $f16, %lo(var_809CC08C)($at) 
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t8, t7, $at                
    sh      t6, 0x015A(s0)             # 0000015A
    sw      t8, 0x0004(s0)             # 00000004
    swc1    $f16, 0x0028(s0)           # 00000028
    lh      t9, 0x002E(v0)             # 0000002E
    sll     t0, t9,  1                 
    sh      t0, 0x0036(v0)             # 00000036
    beq     $zero, $zero, lbl_809CBB28 
    sw      t1, 0x0154(s0)             # 00000154
lbl_809CBA08:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, %lo(var_809CC090)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.le.s  $f10, $f4                  
    nop
    bc1fl   lbl_809CBA64               
    lh      t4, 0x00B4(s0)             # 000000B4
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_809CB4F0              
    lw      a1, 0x0034($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x02BC          # t3 = 000002BC
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x0008             # a1 = 00000008
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_809CBB2C 
    lw      $ra, 0x0024($sp)           
    lh      t4, 0x00B4(s0)             # 000000B4
lbl_809CBA64:
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    or      a0, s0, $zero              # a0 = 00000000
    bne     t4, $at, lbl_809CBAEC      
    lw      a1, 0x0034($sp)            
    lui     $at, %hi(var_809CC094)     # $at = 809D0000
    lwc1    $f6, %lo(var_809CC094)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    add.s   $f18, $f2, $f6             
    jal     func_80026D90              
    swc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f8, 0x0008(s0)            # 00000008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    add.s   $f16, $f0, $f8             
    jal     func_80026D90              
    swc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f2, 0x0060(s0)            # 00000060
    lwc1    $f4, 0x0010(s0)            # 00000010
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f12, $f2                  
    or      a2, $zero, $zero           # a2 = 00000000
    add.s   $f10, $f0, $f4             
    bc1f    lbl_809CBAD8               
    swc1    $f10, 0x002C(s0)           # 0000002C
    beq     $zero, $zero, lbl_809CBADC 
    swc1    $f12, 0x0060(s0)           # 00000060
lbl_809CBAD8:
    swc1    $f2, 0x0060(s0)            # 00000060
lbl_809CBADC:
    jal     func_809CB554              
    lw      a1, 0x0034($sp)            
    beq     $zero, $zero, lbl_809CBB2C 
    lw      $ra, 0x0024($sp)           
lbl_809CBAEC:
    jal     func_809CB554              
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0030          # a2 = 00000030
    beql    v0, $zero, lbl_809CBB2C    
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_809CC098)     # $at = 809D0000
    lwc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f6, 0x0008(s0)            # 00000008
    lwc1    $f18, %lo(var_809CC098)($at) 
    swc1    $f8, 0x0010(s0)            # 00000010
    swc1    $f18, 0x000C(s0)           # 0000000C
lbl_809CBB28:
    lw      $ra, 0x0024($sp)           
lbl_809CBB2C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809CBB3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_809CB4F0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_809CBB68    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_809CBB68:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809CC09C)     # $at = 809D0000
    lwc1    $f8, %lo(var_809CC09C)($at) 
    cvt.s.w $f6, $f4                   
    sw      a0, 0x0018($sp)            
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lw      a0, 0x0018($sp)            
    add.s   $f10, $f0, $f0             
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lwc1    $f16, 0x000C(a0)           # 0000000C
    lh      t7, 0x015A(a0)             # 0000015A
    add.s   $f18, $f10, $f16           
    bne     t7, $zero, lbl_809CBBAC    
    swc1    $f18, 0x0028(a0)           # 00000028
    sh      t8, 0x015A(a0)             # 0000015A
lbl_809CBBAC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CBBBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0018($sp)            
    lw      t9, 0x0154(a3)             # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
    lw      a3, 0x0018($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x001C($sp)            
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   a2, a3, 0x0160             # a2 = 00000160
    bne     t6, $at, lbl_809CBC0C      
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
lbl_809CBC0C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CBC1C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s3, 0x0040($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0078($sp)            
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E2C0              
    or      s1, a0, $zero              # s1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0064($sp)            
    lw      v1, 0x0064($sp)            
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sw      v0, 0x0004(v1)             # 00000004
    lw      s2, 0x009C(s3)             # 0000009C
    lw      s0, 0x02D0(s1)             # 000002D0
    subu    a2, $zero, s2              
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      a2, 0x004C($sp)            
    sw      s2, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    sw      t2, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, s2, $zero              # a3 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x0060($sp)            
    lw      t0, 0x0060($sp)            
    lw      a2, 0x004C($sp)            
    lui     t8, 0xDB06                 # t8 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     a3, s2,  2                 
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    subu    a3, a3, s2                 
    sll     a3, a3,  1                 
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0028($sp)            
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    sw      a3, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x005C($sp)            
    lw      t1, 0x005C($sp)            
    lui     t2, 0x8012                 # t2 = 80120000
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t8, $zero, 0xFF80          # t8 = FFFFFF80
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      t9, 0x0078($sp)            
    lui     $at, 0xC42A                # $at = C42A0000
    mtc1    $at, $f6                   # $f6 = -680.00
    lwc1    $f4, 0x015C(t9)            # 0000015C
    lui     t7, 0xDE00                 # t7 = DE000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809CBDD4               
    lw      s0, 0x02D0(s1)             # 000002D0
    lw      t2, -0x46D0(t2)            # 8011B930
    lui     t4, 0xDE00                 # t4 = DE000000
    slti    $at, t2, 0x0004            
    beql    $at, $zero, lbl_809CBDD4   
    lw      s0, 0x02D0(s1)             # 000002D0
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x0120             # t5 = 06000120
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_809CBDF0 
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x02D0(s1)             # 000002D0
lbl_809CBDD4:
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0470             # t8 = 06000470
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      $ra, 0x0044($sp)           
lbl_809CBDF0:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_809CBE08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809CBE54    
    lui     a1, 0x0600                 # a1 = 06000000
    beq     v0, $at, lbl_809CBE64      
    or      a0, a3, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809CBEA0      
    or      a0, a2, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809CBEB0      
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809CBEC0 
    lw      $ra, 0x0014($sp)           
lbl_809CBE54:
    jal     func_80028048              
    addiu   a1, a1, 0x0E10             # a1 = 06000E10
    beq     $zero, $zero, lbl_809CBEC0 
    lw      $ra, 0x0014($sp)           
lbl_809CBE64:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2490             # a1 = 06002490
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_809CB8C4)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809CB8C4) # t6 = 809CB8C4
    lw      t7, 0x0154(a2)             # 00000154
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    bnel    t6, t7, lbl_809CBEC0       
    lw      $ra, 0x0014($sp)           
    jal     func_80050CE4              
    addiu   a1, a2, 0x0160             # a1 = 00000160
    beq     $zero, $zero, lbl_809CBEC0 
    lw      $ra, 0x0014($sp)           
lbl_809CBEA0:
    jal     func_809CBC1C              
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809CBEC0 
    lw      $ra, 0x0014($sp)           
lbl_809CBEB0:
    lui     a1, 0x0600                 # a1 = 06000000
    jal     func_80028048              
    addiu   a1, a1, 0x1160             # a1 = 06001160
    lw      $ra, 0x0014($sp)           
lbl_809CBEC0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CBECC:
    sw      a1, 0x0004($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B50(t6)            # 8011B4B0
    lui     t8, %hi(func_809CBEF8)     # t8 = 809D0000
    addiu   t8, t8, %lo(func_809CBEF8) # t8 = 809CBEF8
    andi    t7, t6, 0x0200             # t7 = 00000000
    beq     t7, $zero, lbl_809CBEF0    
    nop
    sw      t8, 0x0154(a0)             # 00000154
lbl_809CBEF0:
    jr      $ra                        
    nop


func_809CBEF8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     $at, %hi(var_809CC0A0)     # $at = 809D0000
    lwc1    $f2, %lo(var_809CC0A0)($at) 
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f0, 0x015C(s0)            # 0000015C
    lui     $at, %hi(var_809CC0A4)     # $at = 809D0000
    lui     t6, %hi(func_809CB4E0)     # t6 = 809D0000
    add.s   $f4, $f0, $f2              
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    addiu   t6, t6, %lo(func_809CB4E0) # t6 = 809CB4E0
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, %lo(var_809CC0A4)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_809CBF60               
    mtc1    $at, $f0                   # $f0 = 1.00
    swc1    $f2, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_809CBFC4 
    sw      t6, 0x0154(s0)             # 00000154
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_809CBF60:
    lui     $at, %hi(var_809CC0A8)     # $at = 809D0000
    lwc1    $f8, %lo(var_809CC0A8)($at) 
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lw      v0, 0x002C($sp)            
    addiu   t7, $zero, 0xFB57          # t7 = FFFFFB57
    lw      t8, 0x07C0(v0)             # 000007C0
    lw      t9, 0x0028(t8)             # 00000028
    sh      t7, 0x0012(t9)             # 00000012
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      t2, 0x07C0(v0)             # 000007C0
    trunc.w.s $f16, $f10                 
    lw      t3, 0x0028(t2)             # 00000028
    mfc1    t1, $f16                   
    nop
    sh      t1, 0x0022(t3)             # 00000022
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      t6, 0x07C0(v0)             # 000007C0
    trunc.w.s $f4, $f18                  
    lw      t8, 0x0028(t6)             # 00000028
    mfc1    t5, $f4                    
    nop
    sh      t5, 0x0032(t8)             # 00000032
lbl_809CBFC4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80023108              
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809CBFF0: .word 0x00D50600, 0x00000200, 0x006A0000, 0x000001C0
.word func_809CAE60
.word func_809CB22C
.word func_809CBBBC
.word func_809CBE08
var_809CC010: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000080, \
0x00000000, 0x00050100, 0x01000000, 0x0000FF60, \
0x00120064
var_809CC034: .word 0x0A000939, 0x20000000, 0x00000001
.word var_809CC010
var_809CC044: .word 0x48500064
var_809CC048: .word 0x485003E8, 0x00000000

.section .rodata

var_809CC050: .word 0xC4F92000
var_809CC054: .word 0xC4A42000
var_809CC058: .word 0xC42A4000
var_809CC05C: .word 0xC42A4000
var_809CC060: .word 0xC4A42000
var_809CC064: .word 0x3D4CCCCD
var_809CC068: .word 0x3E333333
var_809CC06C: .word 0x3D4CCCCD
var_809CC070: .word 0x3E333333
var_809CC074: .word 0x3F333333
var_809CC078: .word 0x3DCCCCCD
var_809CC07C: .word 0x3E99999A
var_809CC080: .word 0x3E99999A
var_809CC084: .word 0x4089999A
var_809CC088: .word 0x3FA66666
var_809CC08C: .word 0xC4F92000
var_809CC090: .word 0xC4F6A000
var_809CC094: .word 0x3CA3D70A
var_809CC098: .word 0xC4F92000
var_809CC09C: .word 0x3E490FDB
var_809CC0A0: .word 0xC4A42000
var_809CC0A4: .word 0x38D1B717
var_809CC0A8: .word 0x3A83126F, 0x00000000

