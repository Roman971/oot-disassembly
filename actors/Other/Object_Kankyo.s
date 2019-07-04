.section .text
func_80950290:
    sw      a1, 0x164C(a0)             # 0000164C
    jr      $ra                        
    nop


func_8095029C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x0054          # v1 = 00000054
lbl_809502B4:
    multu   v0, v1                     
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0040            
    mflo    t6                         
    addu    t7, a2, t6                 
    bne     $at, $zero, lbl_809502B4   
    sb      $zero, 0x013C(t7)          # 0000013C
    lhu     t9, 0x001C(a2)             # 0000001C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sb      t8, 0x0003(a2)             # 00000003
    sltiu   $at, t9, 0x0006            
    beq     $at, $zero, lbl_8095058C   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_809530C0)     # $at = 80950000
    addu    $at, $at, t9               
    lw      t9, %lo(var_809530C0)($at) 
    jr      t9                         
    nop
var_80950304:
    lui     t0, %hi(var_80952FC0)      # t0 = 80950000
    lbu     t0, %lo(var_80952FC0)(t0)  
    or      a0, a2, $zero              # a0 = 00000000
    lui     a1, %hi(func_809505D0)     # a1 = 80950000
    bne     t0, $zero, lbl_80950334    
    nop
    jal     func_80950290              
    addiu   a1, a1, %lo(func_809505D0) # a1 = 809505D0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, %hi(var_80952FC0)     # $at = 80950000
    beq     $zero, $zero, lbl_8095058C 
    sb      t1, %lo(var_80952FC0)($at) 
lbl_80950334:
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80950590 
    lw      $ra, 0x0014($sp)           
var_80950344:
    lui     t2, %hi(var_80952FC0)      # t2 = 80950000
    lbu     t2, %lo(var_80952FC0)(t2)  
    or      a0, a2, $zero              # a0 = 00000000
    lui     a1, %hi(func_809505C0)     # a1 = 80950000
    bne     t2, $zero, lbl_80950374    
    nop
    jal     func_80950290              
    addiu   a1, a1, %lo(func_809505C0) # a1 = 809505C0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, %hi(var_80952FC0)     # $at = 80950000
    beq     $zero, $zero, lbl_8095058C 
    sb      t3, %lo(var_80952FC0)($at) 
lbl_80950374:
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80950590 
    lw      $ra, 0x0014($sp)           
var_80950384:
    lui     a1, %hi(func_809520A8)     # a1 = 80950000
    addiu   a1, a1, %lo(func_809520A8) # a1 = 809520A8
    jal     func_80950290              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80950590 
    lw      $ra, 0x0014($sp)           
var_8095039C:
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x017C(a2)          # 0000017C
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    swc1    $f4, 0x0188(a2)            # 00000188
    lw      a0, 0x001C($sp)            
    sw      a2, 0x0018($sp)            
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8095234C)     # a1 = 80950000
    addiu   a1, a1, %lo(func_8095234C) # a1 = 8095234C
    jal     func_80950290              
    sb      $zero, 0x1649(a0)          # 00001649
    beq     $zero, $zero, lbl_80950590 
    lw      $ra, 0x0014($sp)           
var_809503D8:
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      $zero, 0x017C(a2)          # 0000017C
    lui     $at, %hi(var_809530D8)     # $at = 80950000
    swc1    $f6, 0x0188(a2)            # 00000188
    lwc1    $f0, %lo(var_809530D8)($at) 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809503F0:
    multu   v0, v1                     
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0006            
    mflo    t5                         
    addu    t6, a2, t5                 
    bne     $at, $zero, lbl_809503F0   
    swc1    $f0, 0x0180(t6)            # 00000180
    addiu   a0, $zero, 0x00BB          # a0 = 000000BB
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80950434    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0180(a2)            # 00000180
lbl_80950434:
    addiu   a0, $zero, 0x00BC          # a0 = 000000BC
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80950454    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x01D4(a2)           # 000001D4
lbl_80950454:
    addiu   a0, $zero, 0x00BD          # a0 = 000000BD
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80950474    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0228(a2)           # 00000228
lbl_80950474:
    addiu   a0, $zero, 0x00BE          # a0 = 000000BE
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80950494    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x027C(a2)           # 0000027C
lbl_80950494:
    addiu   a0, $zero, 0x00BF          # a0 = 000000BF
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_809504B4    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x02D0(a2)            # 000002D0
lbl_809504B4:
    addiu   a0, $zero, 0x00AD          # a0 = 000000AD
    jal     func_800288B4              
    sw      a2, 0x0018($sp)            
    lui     $at, %hi(var_809530F0)     # $at = 80950000
    lwc1    $f0, %lo(var_809530F0)($at) 
    beq     v0, $zero, lbl_809504DC    
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x0324(a2)            # 00000324
lbl_809504DC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lbu     t7, 0x1414(v1)             # 8011B9E4
    lui     a1, %hi(func_809529E4)     # a1 = 80950000
    addiu   a1, a1, %lo(func_809529E4) # a1 = 809529E4
    beq     t7, $zero, lbl_80950584    
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x0538         # $at = 00000538
    bnel    v0, $at, lbl_80950518      
    addiu   $at, $zero, 0x053C         # $at = 0000053C
    swc1    $f0, 0x0180(a2)            # 00000180
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x053C         # $at = 0000053C
lbl_80950518:
    bnel    v0, $at, lbl_80950530      
    addiu   $at, $zero, 0x0540         # $at = 00000540
    swc1    $f0, 0x01D4(a2)            # 000001D4
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x0540         # $at = 00000540
lbl_80950530:
    bnel    v0, $at, lbl_80950548      
    addiu   $at, $zero, 0x0544         # $at = 00000544
    swc1    $f0, 0x0228(a2)            # 00000228
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x0544         # $at = 00000544
lbl_80950548:
    bnel    v0, $at, lbl_80950560      
    addiu   $at, $zero, 0x0548         # $at = 00000548
    swc1    $f0, 0x027C(a2)            # 0000027C
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x0548         # $at = 00000548
lbl_80950560:
    bnel    v0, $at, lbl_80950578      
    addiu   $at, $zero, 0x054C         # $at = 0000054C
    swc1    $f0, 0x02D0(a2)            # 000002D0
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x054C         # $at = 0000054C
lbl_80950578:
    bne     v0, $at, lbl_80950584      
    nop
    swc1    $f0, 0x0324(a2)            # 00000324
lbl_80950584:
    jal     func_80950290              
    sb      $zero, 0x1649(a2)          # 00001649
lbl_8095058C:
    lw      $ra, 0x0014($sp)           
lbl_80950590:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095059C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809505C0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809505D0:
    addiu   $sp, $sp, 0xFF08           # $sp = FFFFFF08
    sw      s1, 0x0054($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
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
    sw      a0, 0x00F8($sp)            
    lui     t7, %hi(var_80952FC8)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80952FC8)  # t7 = 80952FC8
    lw      t9, 0x0000(t7)             # 80952FC8
    addiu   t6, $sp, 0x00B8            # t6 = FFFFFFC0
    lw      t8, 0x0004(t7)             # 80952FCC
    sw      t9, 0x0000(t6)             # FFFFFFC0
    lw      t9, 0x0008(t7)             # 80952FD0
    lui     t1, %hi(var_80952FD4)      # t1 = 80950000
    addiu   t1, t1, %lo(var_80952FD4)  # t1 = 80952FD4
    sw      t8, 0x0004(t6)             # FFFFFFC4
    sw      t9, 0x0008(t6)             # FFFFFFC8
    lw      t3, 0x0000(t1)             # 80952FD4
    addiu   t0, $sp, 0x00AC            # t0 = FFFFFFB4
    lw      t2, 0x0004(t1)             # 80952FD8
    sw      t3, 0x0000(t0)             # FFFFFFB4
    lw      t3, 0x0008(t1)             # 80952FDC
    sw      t2, 0x0004(t0)             # FFFFFFB8
    addiu   $at, $zero, 0x0055         # $at = 00000055
    sw      t3, 0x0008(t0)             # FFFFFFBC
    lh      t4, 0x00A4(s1)             # 000000A4
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s4, 0x1C44(s1)             # 00001C44
    bne     t4, $at, lbl_80950788      
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    lw      t5, 0x1360(s0)             # 8011B930
    lw      a0, 0x00F8($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t5, $at, lbl_80950788      
    addiu   a0, a0, 0x163C             # a0 = 0000163C
    jal     func_800A5560              
    addiu   a1, s1, 0x00E0             # a1 = 000000E0
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f4, 0x00E0(s1)            # 000000E0
    lw      t6, 0x00F8($sp)            
    div.s   $f12, $f0, $f10            
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f4, 0x163C(t6)            # 0000163C
    lw      t7, 0x00F8($sp)            
    lwc1    $f6, 0x00E4(s1)            # 000000E4
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f6, 0x1640(t7)            # 00001640
    lw      t8, 0x00F8($sp)            
    lwc1    $f8, 0x00E8(s1)            # 000000E8
    swc1    $f8, 0x1644(t8)            # 00001644
    c.lt.s  $f4, $f12                  
    nop
    bc1f    lbl_809506E4               
    nop
    mtc1    $at, $f12                  # $f12 = 1.00
    nop
lbl_809506E4:
    lui     $at, %hi(var_809530F4)     # $at = 80950000
    lwc1    $f6, %lo(var_809530F4)($at) 
    lui     $at, %hi(var_809530F8)     # $at = 80950000
    lwc1    $f10, %lo(var_809530F8)($at) 
    mul.s   $f8, $f6, $f12             
    lui     a0, %hi(var_80952FE0)      # a0 = 80950000
    addiu   a0, a0, %lo(var_80952FE0)  # a0 = 80952FE0
    addiu   a1, $zero, 0x2071          # a1 = 00002071
    add.s   $f4, $f8, $f10             
    mfc1    a2, $f4                    
    jal     func_800C50AC              
    nop
    lhu     v0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x01D9         # $at = 000001D9
    beq     v0, $at, lbl_80950748      
    addiu   $at, $zero, 0x0247         # $at = 00000247
    beq     v0, $at, lbl_80950758      
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   $at, $zero, 0x02FB         # $at = 000002FB
    beq     v0, $at, lbl_80950770      
    addiu   $at, $zero, 0x0303         # $at = 00000303
    beq     v0, $at, lbl_80950780      
    nop
    beq     $zero, $zero, lbl_8095078C 
    lui     $at, 0x0001                # $at = 00010000
lbl_80950748:
    jal     func_80064738              
    addiu   a0, $zero, 0x6844          # a0 = 00006844
    beq     $zero, $zero, lbl_8095078C 
    lui     $at, 0x0001                # $at = 00010000
lbl_80950758:
    addiu   a0, a0, 0x4394             # a0 = 00004394
    addiu   a1, $zero, 0x685F          # a1 = 0000685F
    jal     func_800C5264              
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    beq     $zero, $zero, lbl_8095078C 
    lui     $at, 0x0001                # $at = 00010000
lbl_80950770:
    jal     func_800646F0              
    addiu   a0, $zero, 0x2072          # a0 = 00002072
    beq     $zero, $zero, lbl_8095078C 
    lui     $at, 0x0001                # $at = 00010000
lbl_80950780:
    jal     func_800646F0              
    addiu   a0, $zero, 0x6865          # a0 = 00006865
lbl_80950788:
    lui     $at, 0x0001                # $at = 00010000
lbl_8095078C:
    addu    t9, s1, $at                
    sw      t9, 0x0088($sp)            
    lbu     v0, 0x0B15(t9)             # 00000B15
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    slti    $at, v0, 0x0040            
    beq     $at, $zero, lbl_809507E4   
    or      v1, v0, $zero              # v1 = 00000000
    lw      t1, 0x0000(s0)             # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    lw      t4, 0x0088($sp)            
    bnel    t1, $at, lbl_809507D8      
    addiu   t3, v1, 0x0010             # t3 = 00000010
    lw      t2, 0x1360(s0)             # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t2, $at, lbl_809507D8      
    addiu   t3, v1, 0x0010             # t3 = 00000010
    beq     v0, $zero, lbl_809507E4    
    addiu   t3, v1, 0x0010             # t3 = 00000010
lbl_809507D8:
    sb      t3, 0x0B15(t4)             # 00000B15
    lw      t5, 0x0088($sp)            
    lbu     v1, 0x0B15(t5)             # 00000B15
lbl_809507E4:
    blez    v1, lbl_809513A8           
    or      s2, $zero, $zero           # s2 = 00000000
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f24                  # $f24 = 130.00
    lui     $at, %hi(var_809530FC)     # $at = 80950000
    lwc1    $f22, %lo(var_809530FC)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s3, %hi(var_80952FC4)      # s3 = 80950000
    mtc1    $at, $f20                  # $f20 = 0.50
    mtc1    $zero, $f26                # $f26 = 0.00
    addiu   s3, s3, %lo(var_80952FC4)  # s3 = 80952FC4
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    lwc1    $f16, 0x00E0(s1)           # 000000E0
lbl_8095081C:
    lwc1    $f6, 0x00EC(s1)            # 000000EC
    lwc1    $f8, 0x00F0(s1)            # 000000F0
    lwc1    $f10, 0x00E4(s1)           # 000000E4
    sub.s   $f2, $f6, $f16             
    lwc1    $f6, 0x00E8(s1)            # 000000E8
    lwc1    $f4, 0x00F4(s1)            # 000000F4
    sub.s   $f12, $f8, $f10            
    mul.s   $f8, $f2, $f2              
    sll     t7, s2,  2                 
    sub.s   $f14, $f4, $f6             
    mul.s   $f10, $f12, $f12           
    addu    t7, t7, s2                 
    lw      t6, 0x00F8($sp)            
    mul.s   $f6, $f14, $f14            
    sll     t7, t7,  2                 
    addu    t7, t7, s2                 
    sll     t7, t7,  2                 
    addu    s0, t6, t7                 
    add.s   $f4, $f8, $f10             
    lui     $at, 0x42A0                # $at = 42A00000
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    div.s   $f8, $f12, $f0             
    div.s   $f4, $f14, $f0             
    swc1    $f8, 0x007C($sp)           
    lwc1    $f10, 0x007C($sp)          
    swc1    $f10, 0x00D8($sp)          
    div.s   $f18, $f2, $f0             
    swc1    $f4, 0x0078($sp)           
    lwc1    $f6, 0x0078($sp)           
    swc1    $f6, 0x00D4($sp)           
    swc1    $f18, 0x00DC($sp)          
    lbu     v0, 0x013C(s0)             # 8011A70C
    lwc1    $f8, 0x00DC($sp)           
    beql    v0, $zero, lbl_809508D4    
    mtc1    $at, $f28                  # $f28 = 80.00
    beq     v0, s5, lbl_80950A6C       
    lui     $at, 0x42A0                # $at = 42A00000
    beql    v0, s6, lbl_80950A70       
    mtc1    $at, $f0                   # $f0 = 80.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80951388      
    sb      $zero, 0x013C(s0)          # 8011A70C
    beq     $zero, $zero, lbl_80951394 
    addiu   s2, s2, 0x0001             # s2 = 00000001
    mtc1    $at, $f28                  # $f28 = 0.00
lbl_809508D4:
    nop
    mul.s   $f10, $f8, $f28            
    add.s   $f4, $f16, $f10            
    swc1    $f4, 0x0158(s0)            # 8011A728
    lwc1    $f8, 0x00D8($sp)           
    lwc1    $f6, 0x00E4(s1)            # 000000E4
    mul.s   $f10, $f8, $f28            
    add.s   $f4, $f6, $f10             
    swc1    $f4, 0x015C(s0)            # 8011A72C
    lwc1    $f6, 0x00D4($sp)           
    lwc1    $f8, 0x00E8(s1)            # 000000E8
    mul.s   $f10, $f6, $f28            
    add.s   $f4, $f8, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0160(s0)            # 8011A730
    sub.s   $f6, $f0, $f20             
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    mul.s   $f10, $f6, $f8             
    swc1    $f4, 0x0144(s0)            # 8011A714
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0140(s0)           # 8011A710
    sub.s   $f6, $f0, $f20             
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f8                   # $f8 = 160.00
    nop
    mul.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0148(s0)           # 8011A718
    lui     $at, %hi(var_80953100)     # $at = 80950000
    lwc1    $f4, %lo(var_80953100)($at) 
    sb      $zero, 0x017C(s0)          # 8011A74C
    mul.s   $f6, $f0, $f4              
    add.s   $f8, $f6, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0174(s0)            # 8011A744
    lui     $at, %hi(var_80953104)     # $at = 80950000
    lwc1    $f10, %lo(var_80953104)($at) 
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f0, $f10             
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f6, $f4                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_809509EC    
    mfc1    t9, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_809509E0    
    nop
    mfc1    t9, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809509F8 
    or      t9, t9, $at                # t9 = 80000000
lbl_809509E0:
    beq     $zero, $zero, lbl_809509F8 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f6                    
lbl_809509EC:
    nop
    bltz    t9, lbl_809509E0           
    nop
lbl_809509F8:
    sh      t9, 0x0178(s0)             # 8011A748
    lui     $at, %hi(var_80953108)     # $at = 80950000
    lwc1    $f8, %lo(var_80953108)($at) 
    ctc1    t8, $f31                   
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0180(s0)            # 8011A750
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f10                  # $f10 = 360.00
    nop
    mul.s   $f4, $f0, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0164(s0)            # 8011A734
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f6                   # $f6 = 360.00
    nop
    mul.s   $f8, $f0, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0168(s0)            # 8011A738
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f10                  # $f10 = 360.00
    lbu     t0, 0x013C(s0)             # 8011A70C
    sh      $zero, 0x018C(s0)          # 8011A75C
    mul.s   $f4, $f0, $f10             
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x013C(s0)             # 8011A70C
    swc1    $f4, 0x016C(s0)            # 8011A73C
    lw      t2, 0x0088($sp)            
    beq     $zero, $zero, lbl_80951390 
    lbu     v1, 0x0B15(t2)             # 00000B15
lbl_80950A6C:
    mtc1    $at, $f0                   # $f0 = 360.00
lbl_80950A70:
    lhu     t3, 0x0178(s0)             # 8011A748
    lui     $at, 0xC080                # $at = C0800000
    mul.s   $f8, $f18, $f0             
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0178(s0)             # 8011A748
    lwc1    $f6, 0x00E0(s1)            # 000000E0
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    add.s   $f10, $f6, $f8             
    lwc1    $f6, 0x007C($sp)           
    mul.s   $f8, $f6, $f0              
    swc1    $f10, 0x00CC($sp)          
    lwc1    $f4, 0x00E4(s1)            # 000000E4
    lwc1    $f6, 0x0078($sp)           
    lwc1    $f10, 0x00E8(s1)           # 000000E8
    add.s   $f28, $f4, $f8             
    mul.s   $f4, $f6, $f0              
    lwc1    $f8, 0x0140(s0)            # 8011A710
    lwc1    $f6, 0x0144(s0)            # 8011A714
    swc1    $f8, 0x014C(s0)            # 8011A71C
    swc1    $f6, 0x0150(s0)            # 8011A720
    add.s   $f30, $f10, $f4            
    lwc1    $f10, 0x0148(s0)           # 8011A718
    mtc1    $at, $f4                   # $f4 = -4.00
    slti    $at, s2, 0x0020            
    swc1    $f10, 0x0154(s0)           # 8011A724
    lwc1    $f6, 0x0060(s4)            # 00000060
    lwc1    $f8, 0x005C(s4)            # 0000005C
    add.s   $f10, $f8, $f6             
    lwc1    $f8, 0x0064(s4)            # 00000064
    add.s   $f6, $f10, $f8             
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_80950B10               
    sh      $zero, 0x018C(s0)          # 8011A75C
    lhu     t5, 0x018C(s0)             # 8011A75C
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80950B10 
    sh      t6, 0x018C(s0)             # 8011A75C
    sh      $zero, 0x018C(s0)          # 8011A75C
lbl_80950B10:
    lbu     v0, 0x013C(s0)             # 8011A70C
    bne     s5, v0, lbl_80950EB0       
    nop
    beq     $at, $zero, lbl_80950C7C   
    nop
    bne     v1, $zero, lbl_80950C7C    
    nop
    lhu     t7, 0x018C(s0)             # 8011A75C
    slti    $at, t7, 0x0101            
    bne     $at, $zero, lbl_80950C7C   
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sh      $zero, 0x018C(s0)          # 8011A75C
    c.lt.s  $f0, $f20                  
    nop
    bc1f    lbl_80950B84               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    nop
    mul.s   $f8, $f0, $f10             
    trunc.w.s $f4, $f8                   
    mfc1    t1, $f4                    
    nop
    addiu   t2, t1, 0x00C8             # t2 = 000000C8
    beq     $zero, $zero, lbl_80950BB0 
    sh      t2, 0x0184(s0)             # 8011A754
lbl_80950B84:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    addiu   t7, $zero, 0xFF38          # t7 = FFFFFF38
    mul.s   $f10, $f0, $f6             
    trunc.w.s $f8, $f10                  
    mfc1    t6, $f8                    
    nop
    subu    t8, t7, t6                 
    sh      t8, 0x0184(s0)             # 8011A754
lbl_80950BB0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f10, $f6                  
    mfc1    t2, $f10                   
    nop
    addiu   t3, t2, 0x000F             # t3 = 0000000F
    jal     func_800CDCCC              # Rand.Next() float
    sh      t3, 0x0186(s0)             # 8011A756
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, %hi(var_8095310C)     # $at = 80950000
    lwc1    $f6, %lo(var_8095310C)($at) 
    mul.s   $f8, $f0, $f2              
    add.s   $f4, $f8, $f2              
    mul.s   $f10, $f4, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0188(s0)           # 8011A758
    c.lt.s  $f0, $f22                  
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    bc1fl   lbl_80950C20               
    c.lt.s  $f0, $f22                  
    beq     $zero, $zero, lbl_80950C60 
    sh      s5, 0x0000(s3)             # 80952FC4
    c.lt.s  $f0, $f22                  
lbl_80950C20:
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    lui     $at, %hi(var_80953110)     # $at = 80950000
    bc1f    lbl_80950C38               
    nop
    beq     $zero, $zero, lbl_80950C60 
    sh      t4, 0x0000(s3)             # 80952FC4
lbl_80950C38:
    lwc1    $f8, %lo(var_80953110)($at) 
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80950C60               
    sh      t7, 0x0000(s3)             # 80952FC4
    beq     $zero, $zero, lbl_80950C60 
    sh      t5, 0x0000(s3)             # 80952FC4
    sh      t7, 0x0000(s3)             # 80952FC4
lbl_80950C60:
    lh      t6, 0x0000(s3)             # 80952FC4
    and     t8, s2, t6                 
    bnel    t8, $zero, lbl_80950C78    
    sb      t9, 0x013C(s0)             # 8011A70C
    swc1    $f26, 0x0144(s0)           # 8011A714
    sb      t9, 0x013C(s0)             # 8011A70C
lbl_80950C78:
    swc1    $f26, 0x0174(s0)           # 8011A744
lbl_80950C7C:
    lui     $at, %hi(var_80953114)     # $at = 80950000
    lwc1    $f4, %lo(var_80953114)($at) 
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    addu    a2, a1, $zero              
    addiu   a0, s0, 0x0180             # a0 = 8011A750
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_80953118)     # $at = 80950000
    lwc1    $f6, %lo(var_80953118)($at) 
    lw      a1, 0x0174(s0)             # 8011A744
    mfc1    a2, $f20                   
    mfc1    a3, $f22                   
    addiu   a0, s0, 0x0170             # a0 = 8011A740
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    jal     func_800CF470              
    lwc1    $f12, 0x0164(s0)           # 8011A734
    lwc1    $f8, 0x0170(s0)            # 8011A740
    lwc1    $f10, 0x0140(s0)           # 8011A710
    lwc1    $f12, 0x0168(s0)           # 8011A738
    mul.s   $f4, $f0, $f8              
    add.s   $f6, $f10, $f4             
    jal     func_800CF470              
    swc1    $f6, 0x0140(s0)            # 8011A710
    lwc1    $f10, 0x0170(s0)           # 8011A740
    lwc1    $f8, 0x0144(s0)            # 8011A714
    lwc1    $f12, 0x016C(s0)           # 8011A73C
    mul.s   $f4, $f0, $f10             
    add.s   $f6, $f8, $f4              
    jal     func_800CF470              
    swc1    $f6, 0x0144(s0)            # 8011A714
    lwc1    $f8, 0x0170(s0)            # 8011A740
    lwc1    $f10, 0x0148(s0)           # 8011A718
    sra     v0, s2,  1                 
    mul.s   $f4, $f0, $f8              
    andi    v0, v0, 0x0003             # v0 = 00000000
    lui     $at, %hi(var_8095311C)     # $at = 80950000
    add.s   $f6, $f10, $f4             
    beq     v0, $zero, lbl_80950D48    
    swc1    $f6, 0x0148(s0)            # 8011A718
    beq     v0, s5, lbl_80950D8C       
    nop
    beq     v0, s6, lbl_80950DE8       
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80950E44      
    nop
    beq     $zero, $zero, lbl_80950EA8 
    nop
lbl_80950D48:
    lwc1    $f8, 0x0164(s0)            # 8011A734
    lwc1    $f10, %lo(var_8095311C)($at) 
    add.s   $f4, $f8, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0164(s0)            # 8011A734
    lui     $at, %hi(var_80953120)     # $at = 80950000
    lwc1    $f8, %lo(var_80953120)($at) 
    lwc1    $f6, 0x0168(s0)            # 8011A738
    lui     $at, %hi(var_80953124)     # $at = 80950000
    mul.s   $f10, $f8, $f0             
    lwc1    $f8, 0x016C(s0)            # 8011A73C
    add.s   $f4, $f6, $f10             
    swc1    $f4, 0x0168(s0)            # 8011A738
    lwc1    $f6, %lo(var_80953124)($at) 
    add.s   $f10, $f8, $f6             
    beq     $zero, $zero, lbl_80950EA8 
    swc1    $f10, 0x016C(s0)           # 8011A73C
lbl_80950D8C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80953128)     # $at = 80950000
    lwc1    $f8, %lo(var_80953128)($at) 
    lwc1    $f4, 0x0164(s0)            # 8011A734
    mul.s   $f6, $f8, $f0              
    add.s   $f10, $f4, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0164(s0)           # 8011A734
    lui     $at, %hi(var_8095312C)     # $at = 80950000
    lwc1    $f4, %lo(var_8095312C)($at) 
    lwc1    $f8, 0x0168(s0)            # 8011A738
    mul.s   $f6, $f4, $f0              
    add.s   $f10, $f8, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0168(s0)           # 8011A738
    lui     $at, %hi(var_80953130)     # $at = 80950000
    lwc1    $f8, %lo(var_80953130)($at) 
    lwc1    $f4, 0x016C(s0)            # 8011A73C
    mul.s   $f6, $f8, $f0              
    add.s   $f10, $f4, $f6             
    beq     $zero, $zero, lbl_80950EA8 
    swc1    $f10, 0x016C(s0)           # 8011A73C
lbl_80950DE8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80953134)     # $at = 80950000
    lwc1    $f4, %lo(var_80953134)($at) 
    lwc1    $f8, 0x0164(s0)            # 8011A734
    mul.s   $f6, $f4, $f0              
    add.s   $f10, $f8, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0164(s0)           # 8011A734
    lui     $at, %hi(var_80953138)     # $at = 80950000
    lwc1    $f8, %lo(var_80953138)($at) 
    lwc1    $f4, 0x0168(s0)            # 8011A738
    mul.s   $f6, $f8, $f0              
    add.s   $f10, $f4, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0168(s0)           # 8011A738
    lui     $at, %hi(var_8095313C)     # $at = 80950000
    lwc1    $f4, %lo(var_8095313C)($at) 
    lwc1    $f8, 0x016C(s0)            # 8011A73C
    mul.s   $f6, $f4, $f0              
    add.s   $f10, $f8, $f6             
    beq     $zero, $zero, lbl_80950EA8 
    swc1    $f10, 0x016C(s0)           # 8011A73C
lbl_80950E44:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80953140)     # $at = 80950000
    ldc1    $f4, %lo(var_80953140)($at) 
    cvt.d.s $f8, $f0                   
    lwc1    $f10, 0x0164(s0)           # 8011A734
    mul.d   $f6, $f4, $f8              
    cvt.d.s $f4, $f10                  
    add.d   $f8, $f4, $f6              
    cvt.s.d $f10, $f8                  
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0164(s0)           # 8011A734
    lui     $at, %hi(var_80953148)     # $at = 80950000
    lwc1    $f6, %lo(var_80953148)($at) 
    lwc1    $f4, 0x0168(s0)            # 8011A738
    mul.s   $f8, $f6, $f0              
    add.s   $f10, $f4, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0168(s0)           # 8011A738
    lui     $at, %hi(var_8095314C)     # $at = 80950000
    lwc1    $f4, %lo(var_8095314C)($at) 
    lwc1    $f6, 0x016C(s0)            # 8011A73C
    mul.s   $f8, $f4, $f0              
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x016C(s0)           # 8011A73C
lbl_80950EA8:
    beq     $zero, $zero, lbl_809511BC 
    lbu     v0, 0x013C(s0)             # 8011A70C
lbl_80950EB0:
    bne     s6, v0, lbl_809511BC       
    nop
    bne     v1, $zero, lbl_80950ECC    
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lhu     t0, 0x018C(s0)             # 8011A75C
    slti    $at, t0, 0x0501            
    bne     $at, $zero, lbl_80950EF8   
lbl_80950ECC:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    sh      $zero, 0x018C(s0)          # 8011A75C
    sb      t1, 0x013C(s0)             # 8011A70C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0170(s0)            # 8011A740
    lui     $at, %hi(var_80953150)     # $at = 80950000
    lwc1    $f6, %lo(var_80953150)($at) 
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f8, $f20            
    swc1    $f10, 0x0174(s0)           # 8011A744
lbl_80950EF8:
    lh      t2, 0x0000(s3)             # 80952FC4
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    and     t3, s2, t2                 
    bne     t3, $zero, lbl_80951130    
    addiu   a0, s0, 0x0180             # a0 = 8011A750
    lui     $at, %hi(var_80953154)     # $at = 80950000
    lwc1    $f4, %lo(var_80953154)($at) 
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0180             # a0 = 8011A750
    lui     a1, 0x3E80                 # a1 = 3E800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lw      a1, 0x0024(s4)             # 00000024
    mfc1    a2, $f20                   
    swc1    $f22, 0x0010($sp)          
    addiu   a0, s0, 0x0158             # a0 = 8011A728
    jal     func_80064178              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0028(s4)            # 00000028
    mfc1    a2, $f20                   
    swc1    $f22, 0x0010($sp)          
    add.s   $f10, $f6, $f8             
    addiu   a0, s0, 0x015C             # a0 = 8011A72C
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f10                   
    jal     func_80064178              
    nop
    lw      a1, 0x002C(s4)             # 0000002C
    mfc1    a2, $f20                   
    swc1    $f22, 0x0010($sp)          
    addiu   a0, s0, 0x0160             # a0 = 8011A730
    jal     func_80064178              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lhu     a0, 0x017A(s0)             # 8011A74A
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lhu     t4, 0x0186(s0)             # 8011A756
    addiu   a0, s0, 0x0140             # a0 = 8011A710
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80950FD0           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80950FD0:
    mul.s   $f10, $f6, $f0             
    mfc1    a2, $f20                   
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f22, 0x0010($sp)          
    mfc1    a1, $f10                   
    jal     func_80064178              
    nop
    lhu     a0, 0x017A(s0)             # 8011A74A
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lhu     t5, 0x0186(s0)             # 8011A756
    addiu   a0, s0, 0x0148             # a0 = 8011A718
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_80951028           
    cvt.s.w $f8, $f4                   
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f8, $f8, $f6              
lbl_80951028:
    mul.s   $f10, $f8, $f0             
    mfc1    a2, $f20                   
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f22, 0x0010($sp)          
    mfc1    a1, $f10                   
    jal     func_80064178              
    nop
    lhu     t7, 0x017A(s0)             # 8011A74A
    lhu     t6, 0x0184(s0)             # 8011A754
    lwc1    $f12, 0x0168(s0)           # 8011A738
    addu    t8, t7, t6                 
    jal     func_800CF470              
    sh      t8, 0x017A(s0)             # 8011A74A
    lwc1    $f4, 0x0144(s0)            # 8011A714
    add.s   $f6, $f4, $f0              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0144(s0)            # 8011A714
    mul.s   $f10, $f22, $f0            
    lwc1    $f8, 0x0164(s0)            # 8011A734
    lwc1    $f6, 0x0168(s0)            # 8011A738
    add.s   $f4, $f8, $f10             
    lwc1    $f8, 0x0188(s0)            # 8011A758
    add.s   $f10, $f6, $f8             
    swc1    $f4, 0x0164(s0)            # 8011A734
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0168(s0)           # 8011A738
    lui     $at, %hi(var_80953158)     # $at = 80950000
    lwc1    $f6, %lo(var_80953158)($at) 
    lwc1    $f4, 0x016C(s0)            # 8011A73C
    lhu     a0, 0x017A(s0)             # 8011A74A
    mul.s   $f8, $f6, $f0              
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f4, $f8             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x016C(s0)           # 8011A73C
    lhu     t9, 0x0186(s0)             # 8011A756
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f6                    # $f6 = 0.00
    bgez    t9, lbl_809510E0           
    cvt.s.w $f4, $f6                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8              
lbl_809510E0:
    mul.s   $f10, $f4, $f0             
    lhu     a0, 0x017A(s0)             # 8011A74A
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f10, 0x0140(s0)           # 8011A710
    lhu     t0, 0x0186(s0)             # 8011A756
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f6                    # $f6 = 0.00
    bgez    t0, lbl_80951120           
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f8, $f8, $f4              
lbl_80951120:
    mul.s   $f10, $f8, $f0             
    lbu     v0, 0x013C(s0)             # 8011A70C
    beq     $zero, $zero, lbl_809511BC 
    swc1    $f10, 0x0148(s0)           # 8011A718
lbl_80951130:
    lui     $at, %hi(var_8095315C)     # $at = 80950000
    lwc1    $f6, %lo(var_8095315C)($at) 
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    addu    a2, a1, $zero              
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, %hi(var_80953160)     # $at = 80950000
    lwc1    $f4, %lo(var_80953160)($at) 
    mfc1    a2, $f20                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0170             # a0 = 8011A740
    lui     a1, 0x3FC0                 # a1 = 3FC00000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lwc1    $f8, 0x0104(s0)            # 8011A6D4
    lwc1    $f10, 0x0158(s0)           # 8011A728
    lwc1    $f4, 0x00F8(s0)            # 8011A6C8
    lbu     v0, 0x013C(s0)             # 8011A70C
    sub.s   $f6, $f8, $f10             
    lwc1    $f10, 0x0108(s0)           # 8011A6D8
    add.s   $f8, $f6, $f4              
    lwc1    $f6, 0x015C(s0)            # 8011A72C
    sub.s   $f4, $f10, $f6             
    swc1    $f8, 0x0140(s0)            # 8011A710
    lwc1    $f8, 0x00FC(s0)            # 8011A6CC
    lwc1    $f6, 0x010C(s0)            # 8011A6DC
    add.s   $f10, $f4, $f8             
    lwc1    $f4, 0x0160(s0)            # 8011A730
    sub.s   $f8, $f6, $f4              
    swc1    $f10, 0x0144(s0)           # 8011A714
    lwc1    $f10, 0x0100(s0)           # 8011A6D0
    add.s   $f6, $f8, $f10             
    swc1    $f6, 0x0148(s0)            # 8011A718
lbl_809511BC:
    beql    s6, v0, lbl_8095137C       
    lw      t1, 0x0088($sp)            
    lwc1    $f4, 0x0140(s0)            # 8011A710
    lwc1    $f8, 0x0158(s0)            # 8011A728
    lwc1    $f6, 0x00CC($sp)           
    neg.s   $f12, $f24                 
    add.s   $f10, $f4, $f8             
    sub.s   $f2, $f10, $f6             
    c.lt.s  $f24, $f2                  
    nop
    bc1tl   lbl_80951260               
    c.lt.s  $f24, $f2                  
    c.lt.s  $f2, $f12                  
    nop
    bc1tl   lbl_80951260               
    c.lt.s  $f24, $f2                  
    lwc1    $f4, 0x0144(s0)            # 8011A714
    lwc1    $f8, 0x015C(s0)            # 8011A72C
    add.s   $f10, $f4, $f8             
    sub.s   $f0, $f10, $f28            
    c.lt.s  $f24, $f0                  
    nop
    bc1tl   lbl_80951260               
    c.lt.s  $f24, $f2                  
    c.lt.s  $f0, $f12                  
    nop
    bc1tl   lbl_80951260               
    c.lt.s  $f24, $f2                  
    lwc1    $f6, 0x0148(s0)            # 8011A718
    lwc1    $f4, 0x0160(s0)            # 8011A730
    add.s   $f8, $f6, $f4              
    sub.s   $f0, $f8, $f30             
    c.lt.s  $f24, $f0                  
    nop
    bc1tl   lbl_80951260               
    c.lt.s  $f24, $f2                  
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_8095137C               
    lw      t1, 0x0088($sp)            
    c.lt.s  $f24, $f2                  
lbl_80951260:
    lwc1    $f10, 0x00CC($sp)          
    bc1fl   lbl_80951290               
    c.lt.s  $f2, $f12                  
    sub.s   $f6, $f10, $f24            
    swc1    $f26, 0x0140(s0)           # 8011A710
    lwc1    $f4, 0x0140(s0)            # 8011A710
    swc1    $f6, 0x0158(s0)            # 8011A728
    lwc1    $f8, 0x0158(s0)            # 8011A728
    lwc1    $f6, 0x00CC($sp)           
    add.s   $f10, $f4, $f8             
    sub.s   $f2, $f10, $f6             
    c.lt.s  $f2, $f12                  
lbl_80951290:
    lwc1    $f4, 0x00CC($sp)           
    bc1fl   lbl_809512AC               
    lwc1    $f10, 0x0144(s0)           # 8011A714
    add.s   $f8, $f4, $f24             
    swc1    $f26, 0x0140(s0)           # 8011A710
    swc1    $f8, 0x0158(s0)            # 8011A728
    lwc1    $f10, 0x0144(s0)           # 8011A714
lbl_809512AC:
    lwc1    $f6, 0x015C(s0)            # 8011A72C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    add.s   $f4, $f10, $f6             
    lui     $at, 0x4248                # $at = 42480000
    sub.s   $f0, $f4, $f28             
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_809512F8               
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f10                  # $f10 = -50.00
    swc1    $f26, 0x0144(s0)           # 8011A714
    lwc1    $f4, 0x0144(s0)            # 8011A714
    sub.s   $f6, $f28, $f10            
    swc1    $f6, 0x015C(s0)            # 8011A72C
    lwc1    $f8, 0x015C(s0)            # 8011A72C
    add.s   $f10, $f4, $f8             
    sub.s   $f0, $f10, $f28            
    lui     $at, 0xC248                # $at = C2480000
lbl_809512F8:
    mtc1    $at, $f6                   # $f6 = -50.00
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80951324               
    lwc1    $f10, 0x0148(s0)           # 8011A718
    mtc1    $at, $f4                   # $f4 = 50.00
    swc1    $f26, 0x0144(s0)           # 8011A714
    add.s   $f8, $f28, $f4             
    swc1    $f8, 0x015C(s0)            # 8011A72C
    lwc1    $f10, 0x0148(s0)           # 8011A718
lbl_80951324:
    lwc1    $f6, 0x0160(s0)            # 8011A730
    add.s   $f4, $f10, $f6             
    sub.s   $f0, $f4, $f30             
    c.lt.s  $f24, $f0                  
    nop
    bc1fl   lbl_80951360               
    c.lt.s  $f0, $f12                  
    sub.s   $f8, $f30, $f24            
    swc1    $f26, 0x0148(s0)           # 8011A718
    lwc1    $f10, 0x0148(s0)           # 8011A718
    swc1    $f8, 0x0160(s0)            # 8011A730
    lwc1    $f6, 0x0160(s0)            # 8011A730
    add.s   $f4, $f10, $f6             
    sub.s   $f0, $f4, $f30             
    c.lt.s  $f0, $f12                  
lbl_80951360:
    nop
    bc1fl   lbl_8095137C               
    lw      t1, 0x0088($sp)            
    add.s   $f8, $f30, $f24            
    swc1    $f26, 0x0148(s0)           # 8011A718
    swc1    $f8, 0x0160(s0)            # 8011A730
    lw      t1, 0x0088($sp)            
lbl_8095137C:
    beq     $zero, $zero, lbl_80951390 
    lbu     v1, 0x0B15(t1)             # 00000B15
    sb      $zero, 0x013C(s0)          # 8011A70C
lbl_80951388:
    lw      t2, 0x0088($sp)            
    lbu     v1, 0x0B15(t2)             # 00000B15
lbl_80951390:
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80951394:
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slt     $at, s2, v1                
    bnel    $at, $zero, lbl_8095081C   
    lwc1    $f16, 0x00E0(s1)           # 000000E0
lbl_809513A8:
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
    addiu   $sp, $sp, 0x00F8           # $sp = 00000000


func_809513E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x164C(a0)             # 0000164C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095140C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     t6, 0x001C(a0)             # 0000001C
    sltiu   $at, t6, 0x0006            
    beq     $at, $zero, lbl_80951480   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80953164)     # $at = 80950000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80953164)($at) 
    jr      t6                         
    nop
var_80951438:
    jal     func_80951490              
    nop
    beq     $zero, $zero, lbl_80951484 
    lw      $ra, 0x0014($sp)           
var_80951448:
    jal     func_80952150              
    nop
    beq     $zero, $zero, lbl_80951484 
    lw      $ra, 0x0014($sp)           
var_80951458:
    jal     func_80951910              
    nop
    beq     $zero, $zero, lbl_80951484 
    lw      $ra, 0x0014($sp)           
var_80951468:
    jal     func_809524B4              
    nop
    beq     $zero, $zero, lbl_80951484 
    lw      $ra, 0x0014($sp)           
var_80951478:
    jal     func_80952B70              
    nop
lbl_80951480:
    lw      $ra, 0x0014($sp)           
lbl_80951484:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80951490:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s5, 0x0034($sp)            
    sw      s2, 0x0028($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lui     t7, %hi(var_80952FEC)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80952FEC)  # t7 = 80952FEC
    lw      t9, 0x0000(t7)             # 80952FEC
    addiu   t6, $sp, 0x00A0            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 80952FF0
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 80952FF4
    lui     t1, %hi(var_80952FF8)      # t1 = 80950000
    addiu   t1, t1, %lo(var_80952FF8)  # t1 = 80952FF8
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 80952FF8
    addiu   t0, $sp, 0x0094            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 80952FFC
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 80953000
    sw      t2, 0x0004(t0)             # FFFFFFE0
    or      s1, s5, $zero              # s1 = 00000000
    sw      t3, 0x0008(t0)             # FFFFFFE4
    lw      t4, 0x0790(s5)             # 00000790
    lh      t5, 0x014C(t4)             # 0000014C
    andi    t6, t5, 0x0100             # t6 = 00000000
    bnel    t6, $zero, lbl_809518E0    
    lw      $ra, 0x0044($sp)           
    lw      s3, 0x0000(s5)             # 00000000
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    jal     func_8007DFBC              
    lw      a0, 0x02D0(s3)             # 000002D0
    lui     v1, 0x0405                 # v1 = 04050000
    addiu   v1, v1, 0x1690             # v1 = 04051690
    sll     t9, v1,  4                 
    srl     t0, t9, 28                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      t7, 0x02D0(s3)             # 000002D0
    sll     t1, t0,  2                 
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t1                 
    sw      t8, 0x0000(v0)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t2, t3                 
    addu    t5, t4, $at                
    sw      t5, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0x0405                 # t8 = 04050000
    addiu   t8, t8, 0x2690             # t8 = 04052690
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s5                 
    lbu     t9, 0x0B15(t9)             # 00010B15
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s1, $at                
    blez    t9, lbl_809518DC           
    or      s4, $zero, $zero           # s4 = 00000000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t2, s5, $at                
    lui     $at, 0x3F80                # $at = 3F800000
    lui     t1, 0x0405                 # t1 = 04050000
    addiu   t1, t1, 0x26D8             # t1 = 040526D8
    mtc1    $at, $f20                  # $f20 = 1.00
    sw      t1, 0x0054($sp)            
    sw      t2, 0x004C($sp)            
    sw      t0, 0x005C($sp)            
    lui     s8, 0xFB00                 # s8 = FB000000
    lui     s7, 0xFA00                 # s7 = FA000000
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    sll     t3, s4,  2                 
lbl_809515F8:
    addu    t3, t3, s4                 
    sll     t3, t3,  2                 
    addu    t3, t3, s4                 
    sll     t3, t3,  2                 
    addu    s1, s2, t3                 
    lwc1    $f4, 0x0140(s1)            # 00000140
    lwc1    $f6, 0x0158(s1)            # 00000158
    lwc1    $f16, 0x0148(s1)           # 00000148
    lwc1    $f18, 0x0160(s1)           # 00000160
    add.s   $f12, $f4, $f6             
    lwc1    $f8, 0x0144(s1)            # 00000144
    lwc1    $f10, 0x015C(s1)           # 0000015C
    add.s   $f4, $f16, $f18            
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f8, $f10            
    mfc1    a2, $f4                    
    jal     func_800AA7F4              
    nop
    lbu     t4, 0x017C(s1)             # 0000017C
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_80951660           
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80951660:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    nop
    div.s   $f0, $f8, $f16             
    c.lt.s  $f20, $f0                  
    nop
    bc1fl   lbl_80951688               
    lwc1    $f18, 0x0180(s1)           # 00000180
    mov.s   $f0, $f20                  
    lwc1    $f18, 0x0180(s1)           # 00000180
lbl_80951688:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f18, $f0            
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    slti    $at, s4, 0x0020            
    beq     $at, $zero, lbl_809516E0   
    andi    v1, s4, 0x0001             # v1 = 00000000
    lbu     t5, 0x013C(s1)             # 0000013C
    beql    s6, t5, lbl_809516CC       
    lbu     v0, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
    blez    v0, lbl_80951770           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80951770 
    sb      t6, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
lbl_809516CC:
    slti    $at, v0, 0x0064            
    beq     $at, $zero, lbl_80951770   
    addiu   t7, v0, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_80951770 
    sb      t7, 0x017C(s1)             # 0000017C
lbl_809516E0:
    lbu     t8, 0x013C(s1)             # 0000013C
    beql    s6, t8, lbl_80951734       
    lhu     t3, 0x0178(s1)             # 00000178
    lhu     t9, 0x0178(s1)             # 00000178
    andi    t0, t9, 0x001F             # t0 = 00000000
    slti    $at, t0, 0x0010            
    beql    $at, $zero, lbl_8095171C   
    lbu     v0, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
    slti    $at, v0, 0x00EB            
    beq     $at, $zero, lbl_80951770   
    addiu   t1, v0, 0x0014             # t1 = 00000014
    beq     $zero, $zero, lbl_80951770 
    sb      t1, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
lbl_8095171C:
    slti    $at, v0, 0x0015            
    bne     $at, $zero, lbl_80951770   
    addiu   t2, v0, 0xFFEC             # t2 = FFFFFFEC
    beq     $zero, $zero, lbl_80951770 
    sb      t2, 0x017C(s1)             # 0000017C
    lhu     t3, 0x0178(s1)             # 00000178
lbl_80951734:
    andi    t4, t3, 0x000F             # t4 = 00000000
    slti    $at, t4, 0x0008            
    beql    $at, $zero, lbl_80951760   
    lbu     v0, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
    slti    $at, v0, 0x00FF            
    beq     $at, $zero, lbl_80951770   
    addiu   t5, v0, 0x0064             # t5 = 00000064
    beq     $zero, $zero, lbl_80951770 
    sb      t5, 0x017C(s1)             # 0000017C
    lbu     v0, 0x017C(s1)             # 0000017C
lbl_80951760:
    slti    $at, v0, 0x000B            
    bne     $at, $zero, lbl_80951770   
    addiu   t6, v0, 0xFFF6             # t6 = FFFFFFF6
    sb      t6, 0x017C(s1)             # 0000017C
lbl_80951770:
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    beq     v1, $zero, lbl_809517A4    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $at, lbl_809517F0      
    lw      s0, 0x02D0(s3)             # 000002D0
    beq     $zero, $zero, lbl_80951830 
    nop
lbl_809517A4:
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   $at, $zero, 0x9B00         # $at = FFFF9B00
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s0)             # 00000000
    lbu     t1, 0x017C(s1)             # 0000017C
    or      t2, t1, $at                # t2 = FFFF9B14
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     $at, 0xFAB4                # $at = FAB40000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lbu     t5, 0x017C(s1)             # 0000017C
    or      t6, t5, $at                # t6 = FAB40064
    sw      t6, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80951830 
    nop
    lw      s0, 0x02D0(s3)             # 000002D0
lbl_809517F0:
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s0)             # 00000000
    lbu     t9, 0x017C(s1)             # 0000017C
    or      t0, t9, $at                # t0 = FFFFFF08
    sw      t0, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     $at, 0x0064                # $at = 00640000
    ori     $at, $at, 0xFF00           # $at = 0064FF00
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lbu     t3, 0x017C(s1)             # 0000017C
    or      t4, t3, $at                # t4 = 0064FF08
    sw      t4, 0x0004(s0)             # 00000004
lbl_80951830:
    jal     func_800AA79C              
    lw      a0, 0x004C($sp)            
    lw      t5, 0x009C(s5)             # 0000009C
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_80951858           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10             
lbl_80951858:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, %hi(var_8095317C)     # $at = 80950000
    lwc1    $f18, %lo(var_8095317C)($at) 
    mul.s   $f16, $f6, $f8             
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18           
    jal     func_800AAD4C              
    nop
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0054($sp)            
    sw      t0, 0x0004(s0)             # 00000004
    lw      t1, 0x005C($sp)            
    lbu     t2, 0x0B15(t1)             # 00000B15
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slt     $at, s4, t2                
    bnel    $at, $zero, lbl_809515F8   
    sll     t3, s4,  2                 
lbl_809518DC:
    lw      $ra, 0x0044($sp)           
lbl_809518E0:
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
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_80951910:
    addiu   $sp, $sp, 0xFEE8           # $sp = FFFFFEE8
    sw      s4, 0x0054($sp)            
    sw      s1, 0x0048($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s7, 0x0060($sp)            
    sw      s6, 0x005C($sp)            
    sw      s5, 0x0058($sp)            
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f30, 0x0038($sp)          
    sdc1    $f28, 0x0030($sp)          
    sdc1    $f26, 0x0028($sp)          
    sdc1    $f24, 0x0020($sp)          
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    lui     t7, %hi(var_80953004)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80953004)  # t7 = 80953004
    lw      t9, 0x0000(t7)             # 80953004
    addiu   t6, $sp, 0x00E0            # t6 = FFFFFFC8
    lw      t8, 0x0004(t7)             # 80953008
    sw      t9, 0x0000(t6)             # FFFFFFC8
    lw      t9, 0x0008(t7)             # 8095300C
    lui     t1, %hi(var_80953010)      # t1 = 80950000
    addiu   t1, t1, %lo(var_80953010)  # t1 = 80953010
    sw      t8, 0x0004(t6)             # FFFFFFCC
    sw      t9, 0x0008(t6)             # FFFFFFD0
    lw      t3, 0x0000(t1)             # 80953010
    addiu   t0, $sp, 0x00D4            # t0 = FFFFFFBC
    lw      t2, 0x0004(t1)             # 80953014
    sw      t3, 0x0000(t0)             # FFFFFFBC
    lw      t3, 0x0008(t1)             # 80953018
    sw      t2, 0x0004(t0)             # FFFFFFC0
    lui     $at, 0x0001                # $at = 00010000
    sw      t3, 0x0008(t0)             # FFFFFFC4
    lw      t4, 0x0790(s4)             # 00000790
    or      a2, s4, $zero              # a2 = 00000000
    addu    v1, s4, $at                
    lh      t5, 0x014C(t4)             # 0000014C
    andi    t6, t5, 0x0100             # t6 = 00000000
    bnel    t6, $zero, lbl_80952068    
    lw      $ra, 0x0064($sp)           
    lbu     v0, 0x0B14(v1)             # 00000B14
    lbu     a0, 0x0B15(v1)             # 00000B15
    lui     s7, 0xC8C8                 # s7 = C8C80000
    lw      s3, 0x0000(s4)             # 00000000
    slt     $at, v0, a0                
    beq     $at, $zero, lbl_809519FC   
    ori     s7, s7, 0xC8B4             # s7 = C8C8C8B4
    lw      t7, 0x009C(s4)             # 0000009C
    addiu   t9, v0, 0x0002             # t9 = 00000002
    andi    t8, t7, 0x000F             # t8 = 00000004
    bne     t8, $zero, lbl_80951A24    
    nop
    sb      t9, 0x0B14(v1)             # 00000B14
    beq     $zero, $zero, lbl_80951A24 
    andi    v0, t9, 0x00FF             # v0 = 00000002
lbl_809519FC:
    slt     $at, a0, v0                
    beq     $at, $zero, lbl_80951A24   
    nop
    lw      t0, 0x009C(s4)             # 0000009C
    addiu   t2, v0, 0xFFFE             # t2 = 00000000
    andi    t1, t0, 0x000F             # t1 = 0000000C
    bne     t1, $zero, lbl_80951A24    
    nop
    sb      t2, 0x0B14(v1)             # 00000B14
    andi    v0, t2, 0x00FF             # v0 = 00000000
lbl_80951A24:
    blez    v0, lbl_80952064           
    or      s5, $zero, $zero           # s5 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    t3, a2, $at                
    lui     v0, 0x0406                 # v0 = 04060000
    addiu   v0, v0, 0x82E0             # v0 = 040582E0
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, v0, $at                
    sll     t4, v0,  4                 
    srl     t5, t4, 28                 
    lui     $at, 0x42A0                # $at = 42A00000
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0x0C38             # t7 = 80120C38
    sll     t6, t5,  2                 
    lui     t0, 0x0100                 # t0 = 01000000
    lui     t1, 0x0401                 # t1 = 04010000
    addiu   t1, t1, 0x04F0             # t1 = 040104F0
    addiu   t0, t0, 0x0000             # t0 = 01000000
    addu    t8, t6, t7                 
    mtc1    $at, $f30                  # $f30 = 80.00
    mtc1    $at, $f28                  # $f28 = 80.00
    sw      t8, 0x0088($sp)            
    sw      t0, 0x0080($sp)            
    sw      t1, 0x007C($sp)            
    sw      t9, 0x0084($sp)            
    sw      t3, 0x0090($sp)            
    lui     s6, 0xE700                 # s6 = E7000000
    sll     t2, s5,  2                 
lbl_80951A98:
    addu    t2, t2, s5                 
    sll     t2, t2,  2                 
    addu    t2, t2, s5                 
    sll     t2, t2,  2                 
    addu    s0, s1, t2                 
    lbu     v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_80951AF8    
    lwc1    $f18, 0x00E0(s4)           # 000000E0
    beq     v0, $at, lbl_80951C44      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80951EF4      
    lwc1    $f4, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0144(s0)            # 00000144
    lwc1    $f6, 0x015C(s0)            # 0000015C
    lwc1    $f8, 0x0148(s0)            # 00000148
    lwc1    $f10, 0x0160(s0)           # 00000160
    add.s   $f14, $f4, $f6             
    lwc1    $f6, 0x0158(s0)            # 00000158
    lwc1    $f4, 0x0140(s0)            # 00000140
    add.s   $f2, $f8, $f10             
    beq     $zero, $zero, lbl_80951F18 
    add.s   $f12, $f4, $f6             
    lwc1    $f18, 0x00E0(s4)           # 000000E0
lbl_80951AF8:
    lwc1    $f8, 0x00EC(s4)            # 000000EC
    lwc1    $f10, 0x00F0(s4)           # 000000F0
    lwc1    $f4, 0x00E4(s4)            # 000000E4
    sub.s   $f2, $f8, $f18             
    lwc1    $f8, 0x00E8(s4)            # 000000E8
    lwc1    $f6, 0x00F4(s4)            # 000000F4
    sub.s   $f12, $f10, $f4            
    mul.s   $f10, $f2, $f2             
    sub.s   $f14, $f6, $f8             
    mul.s   $f4, $f12, $f12            
    add.s   $f6, $f10, $f4             
    mul.s   $f8, $f14, $f14            
    add.s   $f0, $f6, $f8              
    sqrt.s  $f0, $f0                   
    div.s   $f10, $f2, $f0             
    div.s   $f16, $f14, $f0            
    mul.s   $f4, $f10, $f30            
    div.s   $f10, $f12, $f0            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0158(s0)            # 00000158
    lwc1    $f8, 0x00E4(s4)            # 000000E4
    mul.s   $f4, $f10, $f30            
    add.s   $f6, $f8, $f4              
    mul.s   $f8, $f16, $f30            
    swc1    $f6, 0x015C(s0)            # 0000015C
    lwc1    $f10, 0x00E8(s4)           # 000000E8
    add.s   $f4, $f10, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0160(s0)            # 00000160
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f24                  # $f24 = 160.00
    sub.s   $f6, $f0, $f20             
    swc1    $f30, 0x0144(s0)           # 00000144
    mul.s   $f10, $f6, $f24            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0140(s0)           # 00000140
    sub.s   $f8, $f0, $f20             
    lwc1    $f6, 0x0144(s0)            # 00000144
    lwc1    $f10, 0x015C(s0)           # 0000015C
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f4, $f8, $f24             
    add.s   $f8, $f6, $f10             
    mtc1    $at, $f22                  # $f22 = 50.00
    nop
    c.lt.s  $f8, $f22                  
    swc1    $f4, 0x0148(s0)            # 00000148
    bc1f    lbl_80951BC4               
    nop
    swc1    $f22, 0x015C(s0)           # 0000015C
lbl_80951BC4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    nop
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0170(s0)           # 00000170
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f8                   # $f8 = 360.00
    nop
    mul.s   $f4, $f0, $f8              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0164(s0)            # 00000164
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f6                   # $f6 = 360.00
    lwc1    $f8, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x015C(s0)            # 0000015C
    mul.s   $f10, $f0, $f6             
    lbu     t3, 0x013C(s0)             # 0000013C
    add.s   $f14, $f8, $f4             
    lwc1    $f4, 0x0158(s0)            # 00000158
    lwc1    $f8, 0x0140(s0)            # 00000140
    lwc1    $f6, 0x0148(s0)            # 00000148
    addiu   t4, t3, 0x0001             # t4 = 00000001
    swc1    $f10, 0x016C(s0)           # 0000016C
    lwc1    $f10, 0x0160(s0)           # 00000160
    sb      t4, 0x013C(s0)             # 0000013C
    add.s   $f12, $f8, $f4             
    beq     $zero, $zero, lbl_80951F18 
    add.s   $f2, $f6, $f10             
lbl_80951C44:
    lwc1    $f18, 0x00E0(s4)           # 000000E0
    lwc1    $f6, 0x00EC(s4)            # 000000EC
    lwc1    $f20, 0x00E4(s4)           # 000000E4
    lwc1    $f10, 0x00F0(s4)           # 000000F0
    sub.s   $f2, $f6, $f18             
    lwc1    $f16, 0x00E8(s4)           # 000000E8
    lwc1    $f8, 0x00F4(s4)            # 000000F4
    sub.s   $f12, $f10, $f20           
    mul.s   $f4, $f2, $f2              
    sub.s   $f14, $f8, $f16            
    mul.s   $f6, $f12, $f12            
    neg.s   $f24, $f28                 
    mul.s   $f8, $f14, $f14            
    add.s   $f10, $f4, $f6             
    add.s   $f0, $f10, $f8             
    sqrt.s  $f0, $f0                   
    div.s   $f4, $f2, $f0              
    div.s   $f10, $f12, $f0            
    mul.s   $f6, $f4, $f30             
    add.s   $f26, $f18, $f6            
    mul.s   $f8, $f10, $f30            
    div.s   $f6, $f14, $f0             
    add.s   $f4, $f20, $f8             
    swc1    $f4, 0x00F0($sp)           
    mul.s   $f10, $f6, $f30            
    jal     func_800CDCCC              # Rand.Next() float
    add.s   $f22, $f16, $f10           
    lui     $at, %hi(var_80953184)     # $at = 80950000
    lwc1    $f20, %lo(var_80953184)($at) 
    lwc1    $f8, 0x0164(s0)            # 00000164
    mul.s   $f4, $f20, $f0             
    add.s   $f6, $f8, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0164(s0)            # 00000164
    mul.s   $f8, $f20, $f0             
    lwc1    $f10, 0x016C(s0)           # 0000016C
    lui     $at, %hi(var_80953188)     # $at = 80950000
    lwc1    $f6, 0x0164(s0)            # 00000164
    add.s   $f4, $f10, $f8             
    swc1    $f4, 0x016C(s0)            # 0000016C
    lwc1    $f10, %lo(var_80953188)($at) 
    mul.s   $f12, $f6, $f10            
    jal     func_800CF470              
    nop
    lwc1    $f8, 0x0140(s0)            # 00000140
    lui     $at, %hi(var_8095318C)     # $at = 80950000
    lwc1    $f6, 0x016C(s0)            # 0000016C
    add.s   $f4, $f8, $f0              
    swc1    $f4, 0x0140(s0)            # 00000140
    lwc1    $f10, %lo(var_8095318C)($at) 
    mul.s   $f12, $f6, $f10            
    jal     func_800D2CD0              
    nop
    lwc1    $f8, 0x0148(s0)            # 00000148
    lwc1    $f6, 0x0144(s0)            # 00000144
    lwc1    $f10, 0x0170(s0)           # 00000170
    add.s   $f4, $f8, $f0              
    lui     $at, 0x4316                # $at = 43160000
    sub.s   $f8, $f6, $f10             
    swc1    $f4, 0x0148(s0)            # 00000148
    lwc1    $f6, 0x015C(s0)            # 0000015C
    swc1    $f8, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0144(s0)            # 00000144
    lwc1    $f10, 0x0028(s1)           # 00000028
    add.s   $f14, $f4, $f6             
    c.lt.s  $f14, $f10                 
    nop
    bc1tl   lbl_80951D7C               
    lbu     t5, 0x013C(s0)             # 0000013C
    lwc1    $f8, 0x00E4(s4)            # 000000E4
    mtc1    $at, $f4                   # $f4 = 150.00
    nop
    sub.s   $f6, $f8, $f4              
    c.lt.s  $f14, $f6                  
    nop
    bc1fl   lbl_80951D88               
    lwc1    $f10, 0x0140(s0)           # 00000140
    lbu     t5, 0x013C(s0)             # 0000013C
lbl_80951D7C:
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x013C(s0)             # 0000013C
    lwc1    $f10, 0x0140(s0)           # 00000140
lbl_80951D88:
    lwc1    $f8, 0x0158(s0)            # 00000158
    add.s   $f4, $f10, $f8             
    sub.s   $f12, $f4, $f26            
    c.lt.s  $f28, $f12                 
    nop
    bc1tl   lbl_80951E1C               
    c.lt.s  $f28, $f12                 
    c.lt.s  $f12, $f24                 
    nop
    bc1tl   lbl_80951E1C               
    c.lt.s  $f28, $f12                 
    lwc1    $f6, 0x0144(s0)            # 00000144
    lwc1    $f10, 0x015C(s0)           # 0000015C
    lwc1    $f4, 0x00F0($sp)           
    add.s   $f8, $f6, $f10             
    sub.s   $f0, $f8, $f4              
    c.lt.s  $f28, $f0                  
    nop
    bc1tl   lbl_80951E1C               
    c.lt.s  $f28, $f12                 
    c.lt.s  $f0, $f24                  
    nop
    bc1tl   lbl_80951E1C               
    c.lt.s  $f28, $f12                 
    lwc1    $f6, 0x0148(s0)            # 00000148
    lwc1    $f10, 0x0160(s0)           # 00000160
    add.s   $f2, $f6, $f10             
    sub.s   $f0, $f2, $f22             
    c.lt.s  $f28, $f0                  
    nop
    bc1tl   lbl_80951E1C               
    c.lt.s  $f28, $f12                 
    c.lt.s  $f0, $f24                  
    nop
    bc1fl   lbl_80951ED8               
    lwc1    $f4, 0x0144(s0)            # 00000144
    c.lt.s  $f28, $f12                 
lbl_80951E1C:
    nop
    bc1fl   lbl_80951E4C               
    c.lt.s  $f12, $f24                 
    sub.s   $f8, $f26, $f28            
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f8, 0x0158(s0)            # 00000158
    swc1    $f4, 0x0140(s0)            # 00000140
    lwc1    $f6, 0x0140(s0)            # 00000140
    lwc1    $f10, 0x0158(s0)           # 00000158
    add.s   $f8, $f6, $f10             
    sub.s   $f12, $f8, $f26            
    c.lt.s  $f12, $f24                 
lbl_80951E4C:
    nop
    bc1fl   lbl_80951E6C               
    lwc1    $f10, 0x0148(s0)           # 00000148
    add.s   $f4, $f26, $f28            
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x0158(s0)            # 00000158
    swc1    $f6, 0x0140(s0)            # 00000140
    lwc1    $f10, 0x0148(s0)           # 00000148
lbl_80951E6C:
    lwc1    $f8, 0x0160(s0)            # 00000160
    add.s   $f2, $f10, $f8             
    sub.s   $f0, $f2, $f22             
    c.lt.s  $f28, $f0                  
    nop
    bc1fl   lbl_80951EAC               
    c.lt.s  $f0, $f24                  
    sub.s   $f4, $f22, $f28            
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x0160(s0)            # 00000160
    swc1    $f6, 0x0148(s0)            # 00000148
    lwc1    $f10, 0x0148(s0)           # 00000148
    lwc1    $f8, 0x0160(s0)            # 00000160
    add.s   $f2, $f10, $f8             
    sub.s   $f0, $f2, $f22             
    c.lt.s  $f0, $f24                  
lbl_80951EAC:
    nop
    bc1fl   lbl_80951ED8               
    lwc1    $f4, 0x0144(s0)            # 00000144
    add.s   $f4, $f22, $f28            
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x0160(s0)            # 00000160
    swc1    $f6, 0x0148(s0)            # 00000148
    lwc1    $f10, 0x0148(s0)           # 00000148
    lwc1    $f8, 0x0160(s0)            # 00000160
    add.s   $f2, $f10, $f8             
    lwc1    $f4, 0x0144(s0)            # 00000144
lbl_80951ED8:
    lwc1    $f6, 0x015C(s0)            # 0000015C
    lwc1    $f10, 0x0140(s0)           # 00000140
    lwc1    $f8, 0x0158(s0)            # 00000158
    add.s   $f14, $f4, $f6             
    beq     $zero, $zero, lbl_80951F18 
    add.s   $f12, $f10, $f8            
    lwc1    $f4, 0x0144(s0)            # 00000144
lbl_80951EF4:
    lwc1    $f6, 0x015C(s0)            # 0000015C
    lwc1    $f10, 0x0148(s0)           # 00000148
    lwc1    $f8, 0x0160(s0)            # 00000160
    add.s   $f14, $f4, $f6             
    lwc1    $f6, 0x0158(s0)            # 00000158
    lwc1    $f4, 0x0140(s0)            # 00000140
    sb      $zero, 0x013C(s0)          # 0000013C
    add.s   $f2, $f10, $f8             
    add.s   $f12, $f4, $f6             
lbl_80951F18:
    mfc1    a2, $f2                    
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80953190)     # $at = 80950000
    lwc1    $f14, %lo(var_80953190)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f14                   
    jal     func_800AA8FC              
    mov.s   $f12, $f14                 
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s2, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t6, 0x0088($sp)            
    lw      t8, 0x0084($sp)            
    lui     $at, 0x8000                # $at = 80000000
    lw      t7, 0x0000(t6)             # 00000000
    addu    t9, t7, t8                 
    addu    t0, t9, $at                
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_8007E978              
    lw      a0, 0x0000(s4)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0001             # t2 = DA380001
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, 0x0080($sp)            
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x007C($sp)            
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      t9, 0x0090($sp)            
    lbu     t0, 0x0B14(t9)             # 00000B14
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slt     $at, s5, t0                
    bnel    $at, $zero, lbl_80951A98   
    sll     t2, s5,  2                 
lbl_80952064:
    lw      $ra, 0x0064($sp)           
lbl_80952068:
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    ldc1    $f24, 0x0020($sp)          
    ldc1    $f26, 0x0028($sp)          
    ldc1    $f28, 0x0030($sp)          
    ldc1    $f30, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    lw      s4, 0x0054($sp)            
    lw      s5, 0x0058($sp)            
    lw      s6, 0x005C($sp)            
    lw      s7, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0118           # $sp = 00000000


func_809520A8:
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beq     t6, $zero, lbl_80952148    
    nop
    lw      v0, 0x1D8C(a1)             # 00001D8C
    beq     v0, $zero, lbl_80952148    
    nop
    lbu     v1, 0x013C(a0)             # 0000013C
    beql    v1, $zero, lbl_809520EC    
    sh      $zero, 0x018C(a0)          # 0000018C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v1, a1, lbl_80952110       
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_8095213C      
    lhu     t6, 0x0000(v0)             # 00000000
    jr      $ra                        
    nop
lbl_809520E8:
    sh      $zero, 0x018C(a0)          # 0000018C
lbl_809520EC:
    lw      t7, 0x1D8C(a1)             # 00001D8D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lhu     t8, 0x0000(t7)             # 00000000
    bne     t8, $at, lbl_80952148      
    nop
    lbu     t9, 0x013C(a0)             # 0000013C
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jr      $ra                        
    sb      t0, 0x013C(a0)             # 0000013C
lbl_80952110:
    lhu     t1, 0x018C(a0)             # 0000018C
    addiu   t2, t1, 0x0001             # t2 = 00000001
    andi    t3, t2, 0xFFFF             # t3 = 00000001
    slti    $at, t3, 0x0007            
    bne     $at, $zero, lbl_80952148   
    sh      t2, 0x018C(a0)             # 0000018C
    lbu     t4, 0x013C(a0)             # 0000013C
    addiu   t5, t4, 0x0001             # t5 = 00000001
    jr      $ra                        
    sb      t5, 0x013C(a0)             # 0000013C
lbl_80952138:
    lhu     t6, 0x0000(v0)             # 00000000
lbl_8095213C:
    bne     a1, t6, lbl_80952148       
    nop
    sb      $zero, 0x013C(a0)          # 0000013C
lbl_80952148:
    jr      $ra                        
    nop


func_80952150:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0040($sp)            
    lw      t6, 0x0040($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      s0, 0x0000(a1)             # 00000000
    lbu     t7, 0x013C(t6)             # 0000013C
    bnel    t7, $at, lbl_8095233C      
    lw      $ra, 0x001C($sp)           
    lw      v0, 0x1D8C(a1)             # 00001D8C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t0, 0x0014(v0)             # 00000014
    lw      t8, 0x000C(v0)             # 0000000C
    lw      t9, 0x0010(v0)             # 00000010
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f6                    # $f6 = 0.00
    cvt.s.w $f8, $f8                   
    sw      a1, 0x0044($sp)            
    cvt.s.w $f12, $f4                  
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    cvt.s.w $f14, $f6                  
    lui     $at, %hi(var_80953194)     # $at = 80950000
    lwc1    $f12, %lo(var_80953194)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80953198)     # $at = 80950000
    lwc1    $f12, %lo(var_80953198)($at) 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f14                  # $f14 = 5.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t3, $zero, 0xFF80          # t3 = FFFFFF80
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x00FF                 # t6 = 00FF0000
    ori     t6, t6, 0xFF80             # t6 = 00FFFF80
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0044($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0040($sp)            
    lui     a2, %hi(var_80952F60)      # a2 = 80950000
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t3, 0x018C(t2)             # 0000018C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t3,  2                 
    addu    a2, a2, t4                 
    lw      a2, %lo(var_80952F60)(a2)  
    sll     t6, a2,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a2, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t5, t9                 
    addu    t1, t0, $at                
    sw      t1, 0x0004(v1)             # 00000004
    lw      t2, 0x0044($sp)            
    jal     func_8007E978              
    lw      a0, 0x0000(t2)             # 00000000
    lui     a3, 0xE700                 # a3 = E7000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    lui     t6, 0x0100                 # t6 = 01000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    addiu   t6, t6, 0x0000             # t6 = 01000000
    ori     t4, t4, 0x0001             # t4 = DA380001
    sw      t4, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0403                 # t9 = 04030000
    addiu   t9, t9, 0xD3D0             # t9 = 0402D3D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)           
lbl_8095233C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8095234C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x00A1          # a1 = 000000A1
    bltz    v0, lbl_8095237C           
    lw      a0, 0x0018($sp)            
    sb      v0, 0x1648(a0)             # 00001648
lbl_8095237C:
    lui     a1, %hi(func_80952398)     # a1 = 80950000
    jal     func_80950290              
    addiu   a1, a1, %lo(func_80952398) # a1 = 80952398
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80952398:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x1648(a2)             # 00001648
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_809523F8    
    lw      a2, 0x0018($sp)            
    lui     $at, 0x40E0                # $at = 40E00000
    lbu     t7, 0x1648(a2)             # 00001648
    mtc1    $at, $f4                   # $f4 = 7.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a1, %hi(func_80952408)     # a1 = 80950000
    sb      t6, 0x1649(a2)             # 00001649
    sb      $zero, 0x017C(a2)          # 0000017C
    addiu   a1, a1, %lo(func_80952408) # a1 = 80952408
    or      a0, a2, $zero              # a0 = 00000000
    sb      t7, 0x001E(a2)             # 0000001E
    jal     func_80950290              
    swc1    $f4, 0x0180(a2)            # 00000180
lbl_809523F8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80952408:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809524A4    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D90(a1)             # 00001D90
    beql    v0, $zero, lbl_809524A4    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $at, lbl_809524A4      
    lw      $ra, 0x0024($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x309A          # a1 = 0000309A
    lbu     v0, 0x017C(s0)             # 0000017C
    lui     a1, 0x3FE6                 # a1 = 3FE60000
    ori     a1, a1, 0x6666             # a1 = 3FE66666
    sll     t8, v0, 16                 
    sra     t9, t8, 16                 
    addiu   t0, t9, 0x0014             # t0 = 00000014
    slti    $at, t0, 0x0100            
    bne     $at, $zero, lbl_8095247C   
    addiu   a0, s0, 0x0180             # a0 = 00000180
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    beq     $zero, $zero, lbl_80952484 
    sb      t1, 0x017C(s0)             # 0000017C
lbl_8095247C:
    addiu   t2, v0, 0x0014             # t2 = 00000014
    sb      t2, 0x017C(s0)             # 0000017C
lbl_80952484:
    lui     $at, %hi(var_8095319C)     # $at = 80950000
    lwc1    $f4, %lo(var_8095319C)($at) 
    lui     a3, 0x3E8F                 # a3 = 3E8F0000
    ori     a3, a3, 0x5C29             # a3 = 3E8F5C29
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x0024($sp)           
lbl_809524A4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809524B4:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0020($sp)            
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x001C($sp)            
    lbu     t6, 0x1D6C(s2)             # 00001D6C
    lw      s1, 0x0000(s2)             # 00000000
    beql    t6, $zero, lbl_809529D0    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D90(s2)             # 00001D90
    beql    v0, $zero, lbl_809529D0    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_809529D0      
    lw      $ra, 0x0024($sp)           
    lbu     t8, 0x1649(s0)             # 00001649
    beql    t8, $zero, lbl_809529D0    
    lw      $ra, 0x0024($sp)           
    lbu     t9, 0x013C(s0)             # 0000013C
    bne     t9, $zero, lbl_80952554    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, %hi(var_809531A0)     # $at = 80950000
    lwc1    $f6, %lo(var_809531A0)($at) 
    lwc1    $f4, 0x0188(s0)            # 00000188
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0188(s0)            # 00000188
    lwc1    $f10, 0x0188(s0)           # 00000188
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_80952594               
    lhu     t5, 0x018C(s0)             # 0000018C
    lbu     t3, 0x013C(s0)             # 0000013C
    swc1    $f0, 0x0188(s0)            # 00000188
    addiu   t4, t3, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_80952590 
    sb      t4, 0x013C(s0)             # 0000013C
lbl_80952554:
    lui     $at, %hi(var_809531A4)     # $at = 80950000
    lwc1    $f6, %lo(var_809531A4)($at) 
    lwc1    $f4, 0x0188(s0)            # 00000188
    lui     $at, %hi(var_809531A8)     # $at = 80950000
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0188(s0)            # 00000188
    lwc1    $f4, 0x0188(s0)            # 00000188
    lwc1    $f10, %lo(var_809531A8)($at) 
    c.le.s  $f4, $f10                  
    nop
    bc1fl   lbl_80952594               
    lhu     t5, 0x018C(s0)             # 0000018C
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      $zero, 0x013C(s0)          # 0000013C
    swc1    $f6, 0x0188(s0)            # 00000188
lbl_80952590:
    lhu     t5, 0x018C(s0)             # 0000018C
lbl_80952594:
    addiu   t6, t5, 0x0001             # t6 = 00000001
    andi    t7, t6, 0xFFFF             # t7 = 00000001
    slti    $at, t7, 0x0008            
    bne     $at, $zero, lbl_809525AC   
    sh      t6, 0x018C(s0)             # 0000018C
    sh      $zero, 0x018C(s0)          # 0000018C
lbl_809525AC:
    lw      v0, 0x1D90(s2)             # 00001D90
    lw      t8, 0x000C(v0)             # 0000000C
    lw      t4, 0x0018(v0)             # 00000018
    lw      t9, 0x0010(v0)             # 00000010
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    lw      t3, 0x0014(v0)             # 00000014
    cvt.s.w $f2, $f8                   
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6                   
    cvt.s.w $f16, $f10                 
    swc1    $f8, 0x0048($sp)           
    lw      t5, 0x001C(v0)             # 0000001C
    mtc1    t5, $f10                   # $f10 = 0.00
    cvt.s.w $f18, $f4                  
    cvt.s.w $f4, $f10                  
    swc1    $f4, 0x004C($sp)           
    lw      t6, 0x0020(v0)             # 00000020
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x0050($sp)           
    lhu     a2, 0x1D74(s2)             # 00001D74
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a0, 0x0004(v0)             # 00000004
    swc1    $f18, 0x005C($sp)          
    swc1    $f16, 0x0058($sp)          
    jal     func_8005C690              
    swc1    $f2, 0x0054($sp)           
    lwc1    $f2, 0x0054($sp)           
    lwc1    $f10, 0x0048($sp)          
    lwc1    $f16, 0x0058($sp)          
    lwc1    $f8, 0x004C($sp)           
    sub.s   $f4, $f10, $f2             
    lwc1    $f18, 0x005C($sp)          
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f10, $f8, $f16            
    mul.s   $f6, $f4, $f0              
    add.s   $f12, $f6, $f2             
    lwc1    $f6, 0x0050($sp)           
    mul.s   $f4, $f10, $f0             
    sub.s   $f8, $f6, $f18             
    mul.s   $f10, $f8, $f0             
    add.s   $f14, $f4, $f16            
    add.s   $f4, $f10, $f18            
    mfc1    a2, $f4                    
    jal     func_800AA7F4              
    nop
    lwc1    $f12, 0x0180(s0)           # 00000180
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t3, 0xFA00                 # t3 = FA000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x02D0(s1)             # 000002D0
    lui     $at, 0x42D2                # $at = 42D20000
    mtc1    $at, $f6                   # $f6 = 105.00
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(a0)             # 00000000
    lwc1    $f8, 0x0188(s0)            # 00000188
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f10, $f6, $f8             
    cfc1    t4, $f31                   
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f4, $f10                  
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beq     a2, $zero, lbl_80952734    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f4, $f10, $f4             
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_8095272C    
    nop
    mfc1    a2, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80952744 
    or      a2, a2, $at                # a2 = 80000000
lbl_8095272C:
    beq     $zero, $zero, lbl_80952744 
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
lbl_80952734:
    mfc1    a2, $f4                    
    nop
    bltz    a2, lbl_8095272C           
    nop
lbl_80952744:
    lbu     t6, 0x017C(s0)             # 0000017C
    addiu   a2, a2, 0x0096             # a2 = 00000095
    andi    a2, a2, 0x00FF             # a2 = 00000095
    sll     t7, a2, 24                 
    lui     $at, 0x00FF                # $at = 00FF0000
    or      t8, t6, t7                 # t8 = 00000008
    or      t9, t8, $at                # t9 = 00FF0008
    sll     t3, a2,  8                 
    ctc1    t4, $f31                   
    or      t4, t9, t3                 # t4 = FAFF0008
    sw      t4, 0x0004(a0)             # 00000004
    lw      a1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     $at, 0x437F                # $at = 437F0000
    addiu   t5, a1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(a1)             # 00000000
    lwc1    $f0, 0x0188(s0)            # 00000188
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f8, $f6, $f0              
    cfc1    t7, $f31                   
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beq     a3, $zero, lbl_80952800    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_809527F8    
    nop
    mfc1    a3, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80952810 
    or      a3, a3, $at                # a3 = 80000000
lbl_809527F8:
    beq     $zero, $zero, lbl_80952810 
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_80952800:
    mfc1    a3, $f10                   
    nop
    bltz    a3, lbl_809527F8           
    nop
lbl_80952810:
    lui     $at, 0x431B                # $at = 431B0000
    ctc1    t7, $f31                   
    mtc1    $at, $f4                   # $f4 = 155.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f4, $f0              
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    lbu     t9, 0x017C(s0)             # 0000017C
    cfc1    t3, $f31                   
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_8095289C    
    mfc1    t4, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80952890    
    nop
    mfc1    t4, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809528A8 
    or      t4, t4, $at                # t4 = 80000000
lbl_80952890:
    beq     $zero, $zero, lbl_809528A8 
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f8                    
lbl_8095289C:
    nop
    bltz    t4, lbl_80952890           
    nop
lbl_809528A8:
    or      t5, t4, $zero              # t5 = FFFFFFFF
    addiu   t7, t5, 0x0064             # t7 = 00000063
    sll     t8, t7, 24                 
    ctc1    t3, $f31                   
    or      t3, t9, t8                 # t3 = 00FF0008
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    andi    t4, a3, 0x00FF             # t4 = 000000FF
    sll     t5, t4, 16                 
    subu    t9, t7, a3                 
    andi    t8, t9, 0x00FF             # t8 = 00000008
    sll     t4, t8,  8                 
    or      t6, t3, t5                 # t6 = FFFFFFFF
    or      t3, t6, t4                 # t3 = FFFFFFFF
    sw      t3, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    a0, s2, $at                
    jal     func_800AA79C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x002C($sp)            
    lw      t0, 0x002C($sp)            
    lui     t2, 0xE700                 # t2 = E7000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lhu     t6, 0x018C(s0)             # 0000018C
    lui     a3, %hi(var_80952F80)      # a3 = 80950000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t4, t6,  2                 
    addu    a3, a3, t4                 
    lw      a3, %lo(var_80952F80)(a3)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, a3,  4                 
    srl     t7, t5, 28                 
    sll     t9, t7,  2                 
    addu    t8, t8, t9                 
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t3, a3, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t3, t8                 
    addu    t4, t6, $at                
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0x9620             # t3 = 06009620
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)           
lbl_809529D0:
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809529E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0179          # a1 = 00000179
    bltz    v0, lbl_80952A14           
    lw      a0, 0x0018($sp)            
    sb      v0, 0x1648(a0)             # 00001648
lbl_80952A14:
    lui     a1, %hi(func_80952A30)     # a1 = 80950000
    jal     func_80950290              
    addiu   a1, a1, %lo(func_80952A30) # a1 = 80952A30
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80952A30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x1648(a2)             # 00001648
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_80952A80    
    lw      a2, 0x0018($sp)            
    lbu     t7, 0x1648(a2)             # 00001648
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a1, %hi(func_80952A90)     # a1 = 80950000
    sb      t6, 0x1649(a2)             # 00001649
    addiu   a1, a1, %lo(func_80952A90) # a1 = 80952A90
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80950290              
    sb      t7, 0x001E(a2)             # 0000001E
lbl_80952A80:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80952A90:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s5, 0x0030($sp)            
    sw      s4, 0x002C($sp)            
    or      s4, a1, $zero              # s4 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s3, 0x0028($sp)            
    sw      s2, 0x0024($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sdc1    $f20, 0x0010($sp)          
    lbu     t6, 0x1D6C(s4)             # 00001D6C
    or      s1, $zero, $zero           # s1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t6, $zero, lbl_80952B48    
    lui     $at, %hi(var_809531AC)     # $at = 80950000
    lwc1    $f20, %lo(var_809531AC)($at) 
    addiu   s3, $zero, 0x0054          # s3 = 00000054
    addiu   s2, $zero, 0x0002          # s2 = 00000002
lbl_80952ADC:
    sll     t7, v0,  2                 
    addu    t8, s4, t7                 
    lw      v1, 0x1D90(t8)             # 00001D90
    beql    v1, $zero, lbl_80952B38    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lhu     t9, 0x0000(v1)             # 00000000
    bnel    s2, t9, lbl_80952B38       
    addiu   s1, s1, 0x0001             # s1 = 00000002
    multu   s1, s3                     
    mflo    t0                         
    addu    s0, s5, t0                 
    lwc1    $f4, 0x0180(s0)            # 00000180
    c.eq.s  $f20, $f4                  
    nop
    bc1fl   lbl_80952B28               
    mfc1    a1, $f20                   
    jal     func_800C4C84              
    addiu   a0, $zero, 0x000B          # a0 = 0000000B
    mfc1    a1, $f20                   
lbl_80952B28:
    mfc1    a2, $f20                   
    jal     func_800642F0              
    addiu   a0, s0, 0x0180             # a0 = 00000180
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_80952B38:
    andi    s1, s1, 0x00FF             # s1 = 00000003
    slti    $at, s1, 0x0006            
    bne     $at, $zero, lbl_80952ADC   
    or      v0, s1, $zero              # v0 = 00000003
lbl_80952B48:
    lw      $ra, 0x0034($sp)           
    ldc1    $f20, 0x0010($sp)          
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    lw      s4, 0x002C($sp)            
    lw      s5, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80952B70:
    addiu   $sp, $sp, 0xFED8           # $sp = FFFFFED8
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s5, 0x0064($sp)            
    or      s5, a1, $zero              # s5 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    addiu   s8, $sp, 0x0104            # s8 = FFFFFFDC
    sw      $ra, 0x0074($sp)           
    sw      s6, 0x0068($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f24, 0x0048($sp)          
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    lui     t6, %hi(var_8095301C)      # t6 = 80950000
    addiu   t6, t6, %lo(var_8095301C)  # t6 = 8095301C
    lw      t8, 0x0000(t6)             # 8095301C
    lui     t0, %hi(var_80953034)      # t0 = 80950000
    addiu   t0, t0, %lo(var_80953034)  # t0 = 80953034
    sw      t8, 0x0000(s8)             # FFFFFFDC
    lw      t7, 0x0004(t6)             # 80953020
    addiu   t9, $sp, 0x00EC            # t9 = FFFFFFC4
    lui     t4, %hi(var_8095304C)      # t4 = 80950000
    sw      t7, 0x0004(s8)             # FFFFFFE0
    lw      t8, 0x0008(t6)             # 80953024
    addiu   t4, t4, %lo(var_8095304C)  # t4 = 8095304C
    addiu   t3, $sp, 0x00D4            # t3 = FFFFFFAC
    sw      t8, 0x0008(s8)             # FFFFFFE4
    lw      t7, 0x000C(t6)             # 80953028
    or      s2, $zero, $zero           # s2 = 00000000
    lui     $at, %hi(var_809531B0)     # $at = 80950000
    sw      t7, 0x000C(s8)             # FFFFFFE8
    lw      t8, 0x0010(t6)             # 8095302C
    sw      t8, 0x0010(s8)             # FFFFFFEC
    lw      t7, 0x0014(t6)             # 80953030
    lui     t8, %hi(var_80953064)      # t8 = 80950000
    addiu   t8, t8, %lo(var_80953064)  # t8 = 80953064
    sw      t7, 0x0014(s8)             # FFFFFFF0
    lw      t1, 0x0004(t0)             # 80953038
    lw      t2, 0x0000(t0)             # 80953034
    addiu   t7, $sp, 0x00BC            # t7 = FFFFFF94
    sw      t1, 0x0004(t9)             # FFFFFFC8
    sw      t2, 0x0000(t9)             # FFFFFFC4
    lw      t2, 0x0008(t0)             # 8095303C
    lw      t1, 0x000C(t0)             # 80953040
    sw      t2, 0x0008(t9)             # FFFFFFCC
    sw      t1, 0x000C(t9)             # FFFFFFD0
    lw      t1, 0x0014(t0)             # 80953048
    lw      t2, 0x0010(t0)             # 80953044
    sw      t1, 0x0014(t9)             # FFFFFFD8
    sw      t2, 0x0010(t9)             # FFFFFFD4
    lw      t5, 0x0004(t4)             # 80953050
    lw      t6, 0x0000(t4)             # 8095304C
    lui     t2, %hi(var_8095307C)      # t2 = 80950000
    sw      t5, 0x0004(t3)             # FFFFFFB0
    sw      t6, 0x0000(t3)             # FFFFFFAC
    lw      t6, 0x0008(t4)             # 80953054
    lw      t5, 0x000C(t4)             # 80953058
    addiu   t2, t2, %lo(var_8095307C)  # t2 = 8095307C
    sw      t6, 0x0008(t3)             # FFFFFFB4
    sw      t5, 0x000C(t3)             # FFFFFFB8
    lw      t5, 0x0014(t4)             # 80953060
    lw      t6, 0x0010(t4)             # 8095305C
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFF7C
    sw      t5, 0x0014(t3)             # FFFFFFC0
    sw      t6, 0x0010(t3)             # FFFFFFBC
    lw      t9, 0x0004(t8)             # 80953068
    lw      t0, 0x0000(t8)             # 80953064
    sw      t9, 0x0004(t7)             # FFFFFF98
    sw      t0, 0x0000(t7)             # FFFFFF94
    lw      t0, 0x0008(t8)             # 8095306C
    lw      t9, 0x000C(t8)             # 80953070
    sw      t0, 0x0008(t7)             # FFFFFF9C
    sw      t9, 0x000C(t7)             # FFFFFFA0
    lw      t9, 0x0014(t8)             # 80953078
    lw      t0, 0x0010(t8)             # 80953074
    sw      t9, 0x0014(t7)             # FFFFFFA8
    sw      t0, 0x0010(t7)             # FFFFFFA4
    lw      t3, 0x0004(t2)             # 80953080
    lw      t4, 0x0000(t2)             # 8095307C
    sw      t3, 0x0004(t1)             # FFFFFF80
    sw      t4, 0x0000(t1)             # FFFFFF7C
    lw      t4, 0x0008(t2)             # 80953084
    lw      t3, 0x000C(t2)             # 80953088
    sw      t4, 0x0008(t1)             # FFFFFF84
    sw      t3, 0x000C(t1)             # FFFFFF88
    lw      t3, 0x0014(t2)             # 80953090
    lw      t4, 0x0010(t2)             # 8095308C
    sw      t3, 0x0014(t1)             # FFFFFF90
    sw      t4, 0x0010(t1)             # FFFFFF8C
    lbu     t5, 0x1649(s7)             # 00001649
    lw      s1, 0x0000(s5)             # 00000000
    beql    t5, $zero, lbl_80952F24    
    lw      $ra, 0x0074($sp)           
    lwc1    $f24, %lo(var_809531B0)($at) 
    lui     $at, %hi(var_809531B4)     # $at = 80950000
    lwc1    $f22, %lo(var_809531B4)($at) 
    lui     $at, %hi(var_809531B8)     # $at = 80950000
    lwc1    $f20, %lo(var_809531B8)($at) 
    sll     t6, s2,  2                 
lbl_80952D0C:
    addu    t6, t6, s2                 
    sll     t6, t6,  2                 
    addu    t6, t6, s2                 
    sll     t6, t6,  2                 
    addu    s3, s7, t6                 
    lwc1    $f4, 0x0180(s3)            # 00000180
    sll     s0, s2,  2                 
    addu    t7, s8, s0                 
    c.lt.s  $f22, $f4                  
    addu    t8, $sp, s0                
    addu    t9, $sp, s0                
    or      a3, $zero, $zero           # a3 = 00000000
    bc1f    lbl_80952F08               
    lui     s6, 0x0600                 # s6 = 06000000
    lwc1    $f12, 0x0000(t7)           # FFFFFF94
    lwc1    $f14, 0x00EC(t8)           # 80953150
    lw      a2, 0x00D4(t9)             # 00000098
    jal     func_800AA7F4              
    addiu   s6, s6, 0x5FF0             # s6 = 06005FF0
    addu    t0, $sp, s0                
    lwc1    $f6, 0x00BC(t0)            # 000000BC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f20            
    jal     func_800AAB94              
    nop
    addu    t1, $sp, s0                
    lwc1    $f8, 0x00A4(t1)            # 000000A4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f20            
    jal     func_800AA9E0              
    nop
    lwc1    $f12, 0x0180(s3)           # 00000180
    mov.s   $f14, $f24                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    jal     func_8007E2C0              
    lw      a0, 0x0000(s5)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     a2, s2,  2                 
    lui     t6, %hi(var_80953094)      # t6 = 80950000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    addiu   t6, t6, %lo(var_80953094)  # t6 = 80953094
    subu    a2, a2, s2                 
    ori     t5, t5, 0x0080             # t5 = FA000080
    addu    v0, a2, t6                 
    sw      t5, 0x0000(s0)             # 00000000
    lbu     t1, 0x0000(v0)             # 00000000
    lbu     t8, 0x0002(v0)             # 00000002
    lbu     t5, 0x0001(v0)             # 00000001
    sll     t2, t1, 24                 
    sll     t9, t8,  8                 
    or      t3, t9, t2                 # t3 = 00000008
    sll     t6, t5, 16                 
    or      t7, t3, t6                 # t7 = 8095309C
    ori     t8, t7, 0x0080             # t8 = 8095309C
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, %hi(var_809530A8)      # t9 = 80950000
    addiu   t9, t9, %lo(var_809530A8)  # t9 = 809530A8
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addu    v1, a2, t9                 
    sw      t1, 0x0000(s0)             # 00000000
    lbu     t6, 0x0000(v1)             # 00000000
    lbu     t4, 0x0002(v1)             # 00000002
    lbu     t1, 0x0001(v1)             # 00000001
    sll     t7, t6, 24                 
    sll     t5, t4,  8                 
    or      t8, t5, t7                 # t8 = FA95309C
    sll     t9, t1, 16                 
    or      t2, t8, t9                 # t2 = FA9530BC
    ori     t4, t2, 0x0080             # t4 = FA9530BC
    sw      t4, 0x0004(s0)             # 00000004
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t3, s3, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s3)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s4, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t5, s4, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s4)             # 00000000
    lw      v1, 0x009C(s5)             # 0000009C
    lw      a0, 0x0000(s5)             # 00000000
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    sll     a3, v1,  2                 
    addu    a3, a3, v1                 
    sll     a2, v1,  2                 
    sll     a3, a3,  1                 
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addu    a2, a2, v1                 
    sw      a2, 0x001C($sp)            
    sw      t2, 0x0028($sp)            
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0020($sp)            
    sw      t0, 0x0010($sp)            
    jal     func_8007EB84              
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
lbl_80952F08:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x0006            
    bnel    $at, $zero, lbl_80952D0C   
    sll     t6, s2,  2                 
    lw      $ra, 0x0074($sp)           
lbl_80952F24:
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    ldc1    $f24, 0x0048($sp)          
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
    addiu   $sp, $sp, 0x0128           # $sp = 00000000
    nop

.section .data

var_80952F60: .word \
0x0402A3D0, 0x0402A9D0, 0x0402AFD0, 0x0402B5D0, \
0x0402BBD0, 0x0402C1D0, 0x0402C7D0, 0x0402CDD0
var_80952F80: .word \
0x060015E0, 0x060025E0, 0x060035E0, 0x060045E0, \
0x060055E0, 0x060065E0, 0x060075E0, 0x060085E0
var_80952FA0: .word 0x00970700, 0x02000030, 0x00010000, 0x00001650
.word func_8095029C
.word func_8095059C
.word func_809513E8
.word func_8095140C
var_80952FC0: .word 0x00000000
var_80952FC4: .word 0x00000000
var_80952FC8: .word 0x00000000, 0x00000000, 0x00000000
var_80952FD4: .word 0x00000000, 0x00000000, 0x00000000
var_80952FE0: .word 0x00000000, 0x00000000, 0x00000000
var_80952FEC: .word 0x00000000, 0x00000000, 0x00000000
var_80952FF8: .word 0x00000000, 0x00000000, 0x00000000
var_80953004: .word 0x00000000, 0x00000000, 0x00000000
var_80953010: .word 0x00000000, 0x00000000, 0x00000000
var_8095301C: .word \
0x43D70000, 0x44570000, 0x43D70000, 0xC3D50000, \
0xC4578000, 0xC3DC0000
var_80953034: .word \
0x4409C000, 0x4409C000, 0x4409C000, 0x440A8000, \
0x4409C000, 0x4408C000
var_8095304C: .word \
0xC2C00000, 0xC4520000, 0xC4C62000, 0xC4C54000, \
0xC4520000, 0xC29C0000
var_80953064: .word \
0x41EF3333, 0x42B40000, 0x43160000, 0x41F00000, \
0x42B40000, 0xC1F0CCCD
var_8095307C: .word \
0x42CECCCD, 0x42CF999A, 0x42CF3333, 0xC2CECCCD, \
0xC2CF0000, 0x42CF0000
var_80953094: .word \
0xFFFFAAAA, 0xFFFFFFAA, 0xFFFFFFAA, 0xFFFFAAFF, \
0xFFAA0000
var_809530A8: .word \
0x00C80000, 0x32FF6400, 0xC8C80000, 0xC8FF00FF, \
0x78000000, 0x00000000

.section .rodata

var_809530C0: .word var_80950304
.word lbl_8095058C
.word var_80950384
.word var_80950344
.word var_8095039C
.word var_809503D8
var_809530D8: .word \
0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, \
0x3DCCCCCD, 0x3DCCCCCD
var_809530F0: .word 0x3DCCCCCD
var_809530F4: .word 0x3ECCCCCD
var_809530F8: .word 0x3F19999A
var_809530FC: .word 0x3E4CCCCD
var_80953100: .word 0x3FCCCCCD
var_80953104: .word 0x477FFF00
var_80953108: .word 0x3DCCCCCD
var_8095310C: .word 0x3C23D70A
var_80953110: .word 0x3ECCCCCD
var_80953114: .word 0x3727C5AC
var_80953118: .word 0x3CA3D70A
var_8095311C: .word 0x3C03126F
var_80953120: .word 0x3D4CCCCD
var_80953124: .word 0x3C75C28F
var_80953128: .word 0x3C23D70A
var_8095312C: .word 0x3D4CCCCD
var_80953130: .word 0x3BA3D70A
var_80953134: .word 0x3C23D70A
var_80953138: .word 0x3ECCCCCD
var_8095313C: .word 0x3B83126F
var_80953140: .word 0x3F847AE1, 0x47AE147B
var_80953148: .word 0x3DA3D70A
var_8095314C: .word 0x3D4CCCCD
var_80953150: .word 0x3FCCCCCD
var_80953154: .word 0x3727C5AC
var_80953158: .word 0x3DCCCCCD
var_8095315C: .word 0x3727C5AC
var_80953160: .word 0x3951B717
var_80953164: .word var_80951438
.word lbl_80951480
.word var_80951448
.word var_80951458
.word var_80951468
.word var_80951478
var_8095317C: .word 0x3C8EFA35, 0x3D4CCCCD
var_80953184: .word 0x3D4CCCCC
var_80953188: .word 0x3C23D70A
var_8095318C: .word 0x3C23D70A
var_80953190: .word 0x3D4CCCCD
var_80953194: .word 0x3EB2B8C2
var_80953198: .word 0x3EB2B8C2
var_8095319C: .word 0x3C23D70A
var_809531A0: .word 0x3E124925
var_809531A4: .word 0x3E124925
var_809531A8: .word 0x3DCCCCCD
var_809531AC: .word 0x3DCCCCCD
var_809531B0: .word 0x3DCCCCCD
var_809531B4: .word 0x3A83126F
var_809531B8: .word 0x3C8EFA35, 0x00000000

