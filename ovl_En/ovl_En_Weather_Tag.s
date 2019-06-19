.section .text
func_80AD7270:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80AD727C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AD728C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0004(s0)             # 00000004
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at                
    andi    t9, t8, 0x000F             # t9 = 00000000
    sltiu   $at, t9, 0x0008            
    beq     $at, $zero, lbl_80AD744C   
    sw      t7, 0x0004(s0)             # 00000004
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80AD7FB0)     # $at = 80AD0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80AD7FB0)($at) 
    jr      t9                         
    nop
var_80AD72D8:
    lui     a1, %hi(func_80AD77F8)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD77F8) # a1 = 80AD77F8
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD72F0:
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    beq     v0, $zero, lbl_80AD7308    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD7308:
    lui     a1, %hi(func_80AD78A8)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD78A8) # a1 = 80AD78A8
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD7320:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t0, 0x0EDC(v1)             # 8011B4AC
    andi    t1, t0, 0x0400             # t1 = 00000000
    beq     t1, $zero, lbl_80AD7340    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD7340:
    lui     a1, %hi(func_80AD7A08)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7A08) # a1 = 80AD7A08
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD7358:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t2, 0x0EDC(v1)             # 8011B4AC
    andi    t3, t2, 0x0400             # t3 = 00000000
    beq     t3, $zero, lbl_80AD7378    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD7378:
    lui     a1, %hi(func_80AD7AEC)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7AEC) # a1 = 80AD7AEC
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD7390:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t4, 0x0EDC(v1)             # 8011B4AC
    andi    t5, t4, 0x0200             # t5 = 00000000
    beq     t5, $zero, lbl_80AD73B0    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD73B0:
    lui     a1, %hi(func_80AD7958)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7958) # a1 = 80AD7958
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD73C8:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    andi    t6, v0, 0x0100             # t6 = 00000000
    beq     t6, $zero, lbl_80AD7404    
    andi    t7, v0, 0x0200             # t7 = 00000000
    beq     t7, $zero, lbl_80AD7404    
    andi    t8, v0, 0x0400             # t8 = 00000000
    beq     t8, $zero, lbl_80AD7404    
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x7400(t9)            # 800F8C00
    lw      t0, 0x00A4(v1)             # 8011A674
    and     t1, t9, t0                 
    beq     t1, $zero, lbl_80AD740C    
    nop
lbl_80AD7404:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD740C:
    lui     a1, %hi(func_80AD7BE8)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7BE8) # a1 = 80AD7BE8
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD7424:
    lui     a1, %hi(func_80AD7D0C)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7D0C) # a1 = 80AD7D0C
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD7450 
    lw      $ra, 0x001C($sp)           
var_80AD743C:
    lui     a1, %hi(func_80AD7E08)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7E08) # a1 = 80AD7E08
    jal     func_80AD7270              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD744C:
    lw      $ra, 0x001C($sp)           
lbl_80AD7450:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7460:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lw      a0, 0x1C44(s0)             # 00001C44
    sb      $zero, 0x0023($sp)         
    jal     func_800214FC              
    lw      a1, 0x0028($sp)            
    lw      t6, 0x0028($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t7, 0x001C(t6)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lbu     v1, 0x0023($sp)            
    sra     t8, t7,  8                 
    mtc1    t8, $f4                    # $f4 = 0.00
    addu    v0, s0, $at                
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AD7624               
    or      v0, v1, $zero              # v0 = 00000000
    lbu     t9, 0x0A42(v0)             # 00000A42
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     t9, $zero, lbl_80AD7508    
    lui     a2, 0x800F                 # a2 = 800F0000
    lbu     t0, 0x164C(t0)             # 800F164C
    beq     t0, $zero, lbl_80AD7508    
    nop
    lbu     t1, 0x1E14(v0)             # 00001E14
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t4, 0x800F                 # t4 = 800F0000
    beq     t1, $at, lbl_80AD7600      
    nop
    lbu     t2, 0x0A44(v0)             # 00000A44
    lbu     t3, 0x0A43(v0)             # 00000A43
    bne     t2, t3, lbl_80AD7600       
lbl_80AD7508:
    addiu   a2, a2, 0x1648             # a2 = 800F1648
    sb      a1, 0x0000(a2)             # 800F1648
    lbu     t4, 0x0B01(v0)             # 00000B01
    bnel    t4, $zero, lbl_80AD7624    
    or      v0, v1, $zero              # v0 = 00000000
    lbu     t5, 0x0A42(v0)             # 00000A42
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x1640             # a0 = 800F1640
    bnel    t5, $zero, lbl_80AD7550    
    lbu     v1, 0x0047($sp)            
    lbu     t6, 0x0A43(v0)             # 00000A43
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t6, $at, lbl_80AD7624      
    or      v0, v1, $zero              # v0 = 00000000
    lbu     t7, 0x0A45(v0)             # 00000A45
    bnel    t7, $zero, lbl_80AD7624    
    or      v0, v1, $zero              # v0 = 00000000
    lbu     v1, 0x0047($sp)            
lbl_80AD7550:
    lbu     t8, 0x0000(a0)             # 800F1640
    beq     v1, t8, lbl_80AD75F8       
    nop
    sb      $zero, 0x0000(a2)          # 800F1648
    sb      v1, 0x0000(a0)             # 800F1640
    lbu     t9, 0x0B01(v0)             # 00000B01
    lbu     a0, 0x003F($sp)            
    lhu     v1, 0x0042($sp)            
    bne     t9, $zero, lbl_80AD75F8    
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a1, 0x0A3D($at)            # 00010A3D
    lbu     t0, 0x0033($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t0, 0x0A3B($at)            # 00010A3B
    lbu     t1, 0x0037($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t1, 0x0A3C($at)            # 00010A3C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      v1, 0x0A3E($at)            # 00010A3E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a1, 0x0A45($at)            # 00010A45
    lbu     t2, 0x003B($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t2, 0x0A43($at)            # 00010A43
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a0, 0x0A44($at)            # 00010A44
    lui     $at, 0x800F                # $at = 800F0000
    sb      a0, 0x1644($at)            # 800F1644
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      v1, 0x0A48($at)            # 00010A48
    lhu     t3, 0x0A48(v0)             # 00000A48
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      t3, 0x0A46($at)            # 00010A46
lbl_80AD75F8:
    beq     $zero, $zero, lbl_80AD7620 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AD7600:
    lhu     t4, 0x1650(t4)             # 800F1650
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beql    t4, $zero, lbl_80AD7624    
    or      v0, v1, $zero              # v0 = 00000001
    lhu     t5, 0x000C(v0)             # 0000000D
    addiu   t6, t5, 0x0014             # t6 = 00000014
    sh      t6, 0x000C(v0)             # 0000000D
lbl_80AD7620:
    or      v0, v1, $zero              # v0 = 00000001
lbl_80AD7624:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7638:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lw      a0, 0x1C44(s0)             # 00001C44
    sb      $zero, 0x0023($sp)         
    jal     func_800214FC              
    lw      a1, 0x0028($sp)            
    lw      t6, 0x0028($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    lh      t7, 0x001C(t6)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lbu     t0, 0x0023($sp)            
    sra     t8, t7,  8                 
    mtc1    t8, $f4                    # $f4 = 0.00
    addu    v0, s0, $at                
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f2              
    add.s   $f10, $f8, $f2             
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AD77E4               
    or      v0, t0, $zero              # v0 = 00000000
    lbu     t9, 0x0A42(v0)             # 00000A42
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     t9, $zero, lbl_80AD76E0    
    lui     a2, 0x800F                 # a2 = 800F0000
    lbu     t1, 0x164C(t1)             # 800F164C
    beq     t1, $zero, lbl_80AD76E0    
    nop
    lbu     t2, 0x1E14(v0)             # 00001E14
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t2, $at, lbl_80AD77BC      
    nop
    lbu     t3, 0x0A44(v0)             # 00000A44
    lbu     t4, 0x0A43(v0)             # 00000A43
    bne     t3, t4, lbl_80AD77BC       
lbl_80AD76E0:
    addiu   a2, a2, 0x1648             # a2 = 800F1648
    sb      a1, 0x0000(a2)             # 800F1648
    lbu     t5, 0x0B01(v0)             # 00000B01
    bnel    t5, $zero, lbl_80AD77E4    
    or      v0, t0, $zero              # v0 = 00000000
    lbu     t6, 0x0A42(v0)             # 00000A42
    lhu     v1, 0x0042($sp)            
    lbu     a0, 0x003F($sp)            
    bnel    t6, $zero, lbl_80AD7728    
    sb      $zero, 0x0000(a2)          # 800F1648
    lbu     t7, 0x0A43(v0)             # 00000A43
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t7, $at, lbl_80AD77E4      
    or      v0, t0, $zero              # v0 = 00000000
    lbu     t8, 0x0A45(v0)             # 00000A45
    bnel    t8, $zero, lbl_80AD77E4    
    or      v0, t0, $zero              # v0 = 00000000
    sb      $zero, 0x0000(a2)          # 800F1648
lbl_80AD7728:
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1640($at)         # 800F1640
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a1, 0x0A3D($at)            # 00010A3D
    lbu     t9, 0x0033($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t9, 0x0A3B($at)            # 00010A3B
    lbu     t1, 0x0037($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t1, 0x0A3C($at)            # 00010A3C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      v1, 0x0A3E($at)            # 00010A3E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a1, 0x0A45($at)            # 00010A45
    lbu     t2, 0x003B($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t2, 0x0A43($at)            # 00010A43
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      a0, 0x0A44($at)            # 00010A44
    lui     $at, 0x800F                # $at = 800F0000
    sb      a0, 0x1644($at)            # 800F1644
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sh      v1, 0x0A48($at)            # 00010A48
    lhu     t3, 0x0A48(v0)             # 00000A48
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    andi    t0, a1, 0x00FF             # t0 = 00000001
    beq     $zero, $zero, lbl_80AD77E0 
    sh      t3, 0x0A46($at)            # 00010A46
lbl_80AD77BC:
    lui     t4, 0x800F                 # t4 = 800F0000
    lhu     t4, 0x1650(t4)             # 800F1650
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beql    t4, $zero, lbl_80AD77E4    
    or      v0, t0, $zero              # v0 = 00000001
    lhu     t5, 0x000C(v0)             # 0000000D
    addiu   t6, t5, 0x0014             # t6 = 00000014
    sh      t6, 0x000C(v0)             # 0000000D
lbl_80AD77E0:
    or      v0, t0, $zero              # v0 = 00000001
lbl_80AD77E4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD77F8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beq     v0, $zero, lbl_80AD7844    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD7854)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD7854) # a1 = 80AD7854
lbl_80AD7844:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7854:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beq     v0, $zero, lbl_80AD7898    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD77F8)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD77F8) # a1 = 80AD77F8
lbl_80AD7898:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD78A8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beq     v0, $zero, lbl_80AD78F4    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD7904)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD7904) # a1 = 80AD7904
lbl_80AD78F4:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7904:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beq     v0, $zero, lbl_80AD7948    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD78A8)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD78A8) # a1 = 80AD78A8
lbl_80AD7948:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7958:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beq     v0, $zero, lbl_80AD79A4    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD79B4)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD79B4) # a1 = 80AD79B4
lbl_80AD79A4:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD79B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beq     v0, $zero, lbl_80AD79F8    
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80AD78A8)     # a1 = 80AD0000
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD78A8) # a1 = 80AD78A8
lbl_80AD79F8:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7A08:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beq     v0, $zero, lbl_80AD7A70    
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    lw      t0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(func_80AD7A80)     # a1 = 80AD0000
    addu    $at, $at, t0               
    sb      t9, 0x0B15($at)            # 00010B15
    lw      a0, 0x0028($sp)            
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD7A80) # a1 = 80AD7A80
lbl_80AD7A70:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7A80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beq     v0, $zero, lbl_80AD7ADC    
    lw      t8, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t8               
    sb      $zero, 0x0B15($at)         # 00010B15
    lui     a1, %hi(func_80AD7A08)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7A08) # a1 = 80AD7A08
    jal     func_80AD7270              
    lw      a0, 0x0028($sp)            
lbl_80AD7ADC:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7AEC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AD7B64    
    lw      $ra, 0x0024($sp)           
    jal     func_80063474              
    lw      a0, 0x002C($sp)            
    lw      t0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    addu    $at, $at, t0               
    sb      t9, 0x0B12($at)            # 00010B12
    lui     a1, %hi(func_80AD7B70)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7B70) # a1 = 80AD7B70
    jal     func_80AD7270              
    lw      a0, 0x0028($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80AD7B64:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7B70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beql    v0, $zero, lbl_80AD7BDC    
    lw      $ra, 0x0024($sp)           
    jal     func_800634D4              
    lw      a0, 0x002C($sp)            
    lw      t8, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(func_80AD7AEC)     # a1 = 80AD0000
    addu    $at, $at, t8               
    sb      $zero, 0x0B12($at)         # 00010B12
    lw      a0, 0x0028($sp)            
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD7AEC) # a1 = 80AD7AEC
    lw      $ra, 0x0024($sp)           
lbl_80AD7BDC:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7BE8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80AD7460              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AD7C74    
    lw      $ra, 0x0024($sp)           
    jal     func_80063474              
    lw      a0, 0x002C($sp)            
    lw      t0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addu    $at, $at, t0               
    sb      t9, 0x0B03($at)            # 00010B03
    lw      t2, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addu    $at, $at, t2               
    sb      t1, 0x0B12($at)            # 00010B12
    lui     a1, %hi(func_80AD7C80)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7C80) # a1 = 80AD7C80
    jal     func_80AD7270              
    lw      a0, 0x0028($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80AD7C74:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7C80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AD7638              
    sw      $zero, 0x0014($sp)         
    beql    v0, $zero, lbl_80AD7D00    
    lw      $ra, 0x0024($sp)           
    jal     func_800634D4              
    lw      a0, 0x002C($sp)            
    lw      t9, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addu    $at, $at, t9               
    sb      t8, 0x0B03($at)            # 00010B03
    lw      t0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(func_80AD7BE8)     # a1 = 80AD0000
    addu    $at, $at, t0               
    sb      $zero, 0x0B12($at)         # 00010B12
    lw      a0, 0x0028($sp)            
    jal     func_80AD7270              
    addiu   a1, a1, %lo(func_80AD7BE8) # a1 = 80AD7BE8
    lw      $ra, 0x0024($sp)           
lbl_80AD7D00:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7D0C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lw      a0, 0x1C44(s0)             # 00001C44
    jal     func_800214FC              
    lw      a1, 0x0028($sp)            
    lw      t6, 0x0028($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t7, 0x001C(t6)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AC2           # $at = 00010AC2
    sra     t8, t7,  8                 
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addu    a0, s0, $at                
    cvt.s.w $f6, $f4                   
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80AD7DC8               
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AC2           # $at = 00010AC2
    addu    a0, s0, $at                
    addiu   a1, $zero, 0xFFB0          # a1 = FFFFFFB0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80064508              
    sw      t9, 0x0010($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AC4           # $at = 00010AC4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)            
    addu    a0, s0, $at                
    addiu   a1, $zero, 0xF830          # a1 = FFFFF830
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    beq     $zero, $zero, lbl_80AD7DF8 
    lw      $ra, 0x0024($sp)           
lbl_80AD7DC8:
    jal     func_80064508              
    sw      t1, 0x0010($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AC4           # $at = 00010AC4
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0010($sp)            
    addu    a0, s0, $at                
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0019          # a3 = 00000019
    lw      $ra, 0x0024($sp)           
lbl_80AD7DF8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7E08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    jal     func_800214FC              
    lw      a0, 0x1C44(t6)             # 00001C44
    lw      t7, 0x0018($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t8, 0x001C(t7)             # 0000001C
    sra     t9, t8,  8                 
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AD7EA0               
    lw      $ra, 0x0014($sp)           
    jal     func_80063474              
    lw      a0, 0x001C($sp)            
    lw      t1, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addu    $at, $at, t1               
    sb      t0, 0x0B03($at)            # 00010B03
    lw      t3, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addu    $at, $at, t3               
    sb      t2, 0x0B12($at)            # 00010B12
    lui     a1, %hi(func_80AD7EAC)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7EAC) # a1 = 80AD7EAC
    jal     func_80AD7270              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80AD7EA0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7EAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    jal     func_800214FC              
    lw      a0, 0x1C44(t6)             # 00001C44
    lw      t7, 0x0018($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t8, 0x001C(t7)             # 0000001C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    sra     t9, t8,  8                 
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80AD7F54               
    lw      $ra, 0x0014($sp)           
    jal     func_800634D4              
    lw      a0, 0x001C($sp)            
    lw      t1, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addu    $at, $at, t1               
    sb      t0, 0x0B03($at)            # 00010B03
    lw      v0, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addu    v0, v0, $at                
    sb      $zero, 0x0B12(v0)          # 00000B12
    sb      t2, 0x0B13(v0)             # 00000B13
    lui     a1, %hi(func_80AD7E08)     # a1 = 80AD0000
    addiu   a1, a1, %lo(func_80AD7E08) # a1 = 80AD7E08
    jal     func_80AD7270              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80AD7F54:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD7F60:
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
    nop
    nop

.section .data

var_80AD7F90: .word 0x01650600, 0x00000010, 0x00010000, 0x00000144
.word func_80AD728C
.word func_80AD727C
.word func_80AD7F60
.word 0x00000000

.section .rodata

var_80AD7FB0: .word var_80AD72D8
.word var_80AD72F0
.word var_80AD7320
.word var_80AD7358
.word var_80AD7390
.word var_80AD73C8
.word var_80AD7424
.word var_80AD743C

