.section .text
func_80B55150:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s5, 0x0030($sp)            
    sw      s4, 0x002C($sp)            
    sw      s2, 0x0024($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x0040            # s5 = FFFFFFF0
    sw      $ra, 0x0034($sp)           
    sw      s3, 0x0028($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sdc1    $f20, 0x0010($sp)          
    or      a0, s5, $zero              # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s2, 0x0024             # a1 = 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $zero, 0x0005          # s3 = 00000005
lbl_80B5519C:
    lhu     t6, 0x015C(s2)             # 0000015C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF0
    srav    t7, t6, s0                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_80B551D4    
    addiu   a2, $zero, 0x4001          # a2 = 00004001
    sll     t9, s0,  2                 
    jal     func_800138B0              
    addu    s1, s2, t9                 
    beq     v0, $zero, lbl_80B551D4    
    sw      v0, 0x0140(s1)             # 00000140
    lb      t0, 0x0003(s2)             # 00000003
    sb      t0, 0x0003(v0)             # 00000003
lbl_80B551D4:
    lwc1    $f4, 0x0044($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    add.s   $f6, $f4, $f20             
    bne     s0, s3, lbl_80B5519C       
    swc1    $f6, 0x0044($sp)           
    lw      $ra, 0x0034($sp)           
    ldc1    $f20, 0x0010($sp)          
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    lw      s4, 0x002C($sp)            
    lw      s5, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B55210:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s5, 0x0048($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    sdc1    $f26, 0x0028($sp)          
    sdc1    $f24, 0x0020($sp)          
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    mov.s   $f24, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0xC220                # $at = C2200000
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f20                  # $f20 = -40.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    mov.s   $f26, $f0                  
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x0005          # s4 = 00000005
    addiu   s3, $sp, 0x0060            # s3 = FFFFFFF0
    swc1    $f4, 0x0064($sp)           
lbl_80B55284:
    lhu     t6, 0x015C(s0)             # 0000015C
    srav    t7, t6, s1                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_80B552E4    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mul.s   $f8, $f24, $f20            
    lwc1    $f6, 0x0024(s0)            # 00000024
    sll     t9, s1,  2                 
    mul.s   $f18, $f26, $f20           
    addu    s2, s0, t9                 
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    addiu   a2, $zero, 0x4000          # a2 = 00004000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0060($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f4, $f16, $f18            
    jal     func_800138B0              
    swc1    $f4, 0x0068($sp)           
    beq     v0, $zero, lbl_80B552E0    
    sw      v0, 0x0140(s2)             # 00000140
    lb      t0, 0x0003(s0)             # 00000003
    sb      t0, 0x0003(v0)             # 00000003
lbl_80B552E0:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80B552E4:
    bne     s1, s4, lbl_80B55284       
    add.s   $f20, $f20, $f22           
    lw      $ra, 0x004C($sp)           
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
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80B55320:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s5, 0x0034($sp)            
    sw      s2, 0x0028($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s6, 0x0038($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lwc1    $f4, 0x0028(s2)            # 00000028
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f20                  # $f20 = 40.00
    swc1    $f4, 0x004C($sp)           
    lh      s3, 0x0032(s2)             # 00000032
    lhu     v0, 0x015C(s2)             # 0000015C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $sp, 0x0048            # s6 = FFFFFFF0
    addiu   s4, $zero, 0x0006          # s4 = 00000006
lbl_80B55374:
    srav    t6, v0, s0                 
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_80B553E0    
    sll     a0, s3, 16                 
    sll     t8, s0,  2                 
    addu    s1, s2, t8                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f6, $f0, $f20             
    lwc1    $f8, 0x0024(s2)            # 00000024
    sll     a0, s3, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0048($sp)          
    mul.s   $f16, $f0, $f20            
    lwc1    $f18, 0x002C(s2)           # 0000002C
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF0
    addiu   a2, $zero, 0x4000          # a2 = 00004000
    add.s   $f4, $f16, $f18            
    jal     func_800138B0              
    swc1    $f4, 0x0050($sp)           
    beq     v0, $zero, lbl_80B553E0    
    sw      v0, 0x0140(s1)             # 00000140
    lb      t9, 0x0003(s2)             # 00000003
    sb      t9, 0x0003(v0)             # 00000003
lbl_80B553E0:
    addiu   s3, s3, 0x2AAA             # s3 = 00002AAA
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s3, s3, 16                 
    lhu     v0, 0x015C(s2)             # 0000015C
    bne     s0, s4, lbl_80B55374       
    sra     s3, s3, 16                 
    sra     t1, v0,  6                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_80B5543C    
    lw      $ra, 0x003C($sp)           
    lwc1    $f6, 0x0024(s2)            # 00000024
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF0
    swc1    $f6, 0x0048($sp)           
    lwc1    $f8, 0x002C(s2)            # 0000002C
    addiu   a2, $zero, 0x4002          # a2 = 00004002
    jal     func_800138B0              
    swc1    $f8, 0x0050($sp)           
    beq     v0, $zero, lbl_80B55438    
    sw      v0, 0x0158(s2)             # 00000158
    lb      t3, 0x0003(s2)             # 00000003
    sb      t3, 0x0003(v0)             # 00000003
lbl_80B55438:
    lw      $ra, 0x003C($sp)           
lbl_80B5543C:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80B55464:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s5, 0x0028($sp)            
    sw      s2, 0x001C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s4, 0x0024($sp)            
    sw      s3, 0x0020($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lh      t6, 0x001C(s2)             # 0000001C
    lui     s4, %hi(var_80B55860)      # s4 = 80B50000
    or      s0, $zero, $zero           # s0 = 00000000
    sra     t7, t6, 13                 
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  1                 
    addu    s4, s4, t9                 
    lh      s4, %lo(var_80B55860)(s4)  
    addiu   s1, s2, 0x0140             # s1 = 00000140
    blezl   s4, lbl_80B55530           
    lw      $ra, 0x002C($sp)           
lbl_80B554B8:
    lhu     t0, 0x015C(s2)             # 0000015C
    or      s3, s1, $zero              # s3 = 00000140
    srav    t1, t0, s0                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_80B55520    
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      a0, 0x0000(s1)             # 00000140
    beql    a0, $zero, lbl_80B55520    
    addiu   s0, s0, 0x0001             # s0 = 00000002
    jal     func_80022BB0              
    or      a1, s5, $zero              # a1 = 00000000
    bnel    v0, $zero, lbl_80B55500    
    lhu     t4, 0x015C(s2)             # 0000015C
    lw      a0, 0x0000(s1)             # 00000140
    lw      t3, 0x0130(a0)             # 00000130
    bne     t3, $zero, lbl_80B55514    
    nop
    lhu     t4, 0x015C(s2)             # 0000015C
lbl_80B55500:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sllv    t6, t5, s0                 
    or      t7, t4, t6                 # t7 = 00000000
    beq     $zero, $zero, lbl_80B5551C 
    sh      t7, 0x015C(s2)             # 0000015C
lbl_80B55514:
    jal     func_80020EB4              
    nop
lbl_80B5551C:
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_80B55520:
    addiu   s1, s1, 0x0004             # s1 = 00000144
    bne     s0, s4, lbl_80B554B8       
    sw      $zero, 0x0000(s3)          # 00000140
    lw      $ra, 0x002C($sp)           
lbl_80B55530:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B55550:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s4, 0x0024($sp)            
    sw      s3, 0x0020($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s5, 0x0028($sp)            
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lh      t6, 0x001C(s3)             # 0000001C
    lui     s5, %hi(var_80B55860)      # s5 = 80B50000
    or      s1, $zero, $zero           # s1 = 00000000
    sra     t7, t6, 13                 
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  1                 
    addu    s5, s5, t9                 
    lh      s5, %lo(var_80B55860)(s5)  
    or      s2, s3, $zero              # s2 = 00000000
    blezl   s5, lbl_80B55624           
    lw      $ra, 0x002C($sp)           
lbl_80B555A4:
    lw      t0, 0x0140(s2)             # 00000140
    beql    t0, $zero, lbl_80B55618    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lhu     t1, 0x015C(s3)             # 0000015C
    addiu   s0, s2, 0x0140             # s0 = 00000140
    or      a1, s4, $zero              # a1 = 00000000
    srav    t2, t1, s1                 
    andi    t3, t2, 0x0001             # t3 = 00000000
    bnel    t3, $zero, lbl_80B55618    
    addiu   s1, s1, 0x0001             # s1 = 00000002
    jal     func_80022BB0              
    lw      a0, 0x0000(s0)             # 00000140
    beql    v0, $zero, lbl_80B555F0    
    lw      t4, 0x0000(s0)             # 00000140
    lh      a1, 0x001C(s3)             # 0000001C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t4, 0x0000(s0)             # 00000140
lbl_80B555F0:
    lw      t5, 0x0130(t4)             # 00000130
    bnel    t5, $zero, lbl_80B55618    
    addiu   s1, s1, 0x0001             # s1 = 00000003
    lhu     t6, 0x015C(s3)             # 0000015C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, s1                 
    or      t9, t6, t8                 # t9 = 00000000
    sh      t9, 0x015C(s3)             # 0000015C
    sw      $zero, 0x0140(s2)          # 00000140
    addiu   s1, s1, 0x0001             # s1 = 00000004
lbl_80B55618:
    bne     s1, s5, lbl_80B555A4       
    addiu   s2, s2, 0x0004             # s2 = 00000004
    lw      $ra, 0x002C($sp)           
lbl_80B55624:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B55644:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B55680    
    lw      a0, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B55698 
    lw      $ra, 0x0014($sp)           
lbl_80B55680:
    lui     a1, %hi(var_80B55868)      # a1 = 80B50000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80B55868)  # a1 = 80B55868
    jal     func_80B556B4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80B55698:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B556A4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B556B4:
    lui     t6, %hi(func_80B556C8)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B556C8) # t6 = 80B556C8
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80B556C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80B556EC              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B556EC:
    lui     t6, %hi(func_80B55700)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B55700) # t6 = 80B55700
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80B55700:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f12, 0x00E4(a0)           # 000000E4
    lwc1    $f14, 0x00EC(a0)           # 000000EC
    jal     func_800A5434              
    sw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80B55880)     # $at = 80B50000
    lwc1    $f4, %lo(var_80B55880)($at) 
    lw      a0, 0x0018($sp)            
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B5577C               
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x0004(a0)             # 00000004
    ori     t7, t6, 0x0010             # t7 = 00000010
    sw      t7, 0x0004(a0)             # 00000004
    sw      a0, 0x0018($sp)            
    lh      t8, 0x001C(a0)             # 0000001C
    lw      a1, 0x001C($sp)            
    sra     t9, t8, 13                 
    andi    t0, t9, 0x0007             # t0 = 00000000
    sll     t1, t0,  2                 
    lui     t9, %hi(var_80B55874)      # t9 = 80B50000
    addu    t9, t9, t1                 
    lw      t9, %lo(var_80B55874)(t9)  
    jalr    $ra, t9                    
    nop
    jal     func_80B55788              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80B5577C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B55788:
    lui     t6, %hi(func_80B5579C)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B5579C) # t6 = 80B5579C
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80B5579C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B55550              
    lw      a1, 0x0024($sp)            
    lwc1    $f12, 0x00E4(s0)           # 000000E4
    jal     func_800A5434              
    lwc1    $f14, 0x00EC(s0)           # 000000EC
    lui     $at, %hi(var_80B55884)     # $at = 80B50000
    lwc1    $f4, %lo(var_80B55884)($at) 
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B55808               
    lw      $ra, 0x001C($sp)           
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80B55464              
    lw      a1, 0x0024($sp)            
    jal     func_80B556EC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B55808:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B55818:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B55840: .word 0x01AB0100, 0x00000000, 0x00010000, 0x00000160
.word func_80B55644
.word func_80B556A4
.word func_80B55818
.word 0x00000000
var_80B55860: .word 0x00050005, 0x00070000
var_80B55868: .word 0xB0F40064, 0xB0F80708, 0x30FC0064
var_80B55874: .word func_80B55150
.word func_80B55210
.word func_80B55320

.section .rodata

var_80B55880: .word 0x49A17020
var_80B55884: .word 0x4A005390, 0x00000000, 0x00000000

