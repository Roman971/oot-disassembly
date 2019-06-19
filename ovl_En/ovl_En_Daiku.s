.section .text
func_80A8C8C0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    lw      t6, 0x0040($sp)            
    lui     t8, %hi(var_80A8DDF8)      # t8 = 80A90000
    addiu   t8, t8, %lo(var_80A8DDF8)  # t8 = 80A8DDF8
    lw      v0, 0x0000(t6)             # 00000000
    sll     t7, a1,  4                 
    bltzl   v0, lbl_80A8C8F8           
    mtc1    $zero, $f0                 # $f0 = 0.00
    bne     a1, v0, lbl_80A8C900       
    sll     t9, a1,  4                 
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80A8C8F8:
    beq     $zero, $zero, lbl_80A8C910 
    addu    v1, t7, t8                 
lbl_80A8C900:
    lui     t0, %hi(var_80A8DDF8)      # t0 = 80A90000
    addiu   t0, t0, %lo(var_80A8DDF8)  # t0 = 80A8DDF8
    addu    v1, t9, t0                 
    lwc1    $f0, 0x000C(v1)            # 0000000C
lbl_80A8C910:
    lw      a0, 0x0000(v1)             # 00000000
    sw      v1, 0x002C($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_8008A194              
    swc1    $f0, 0x0034($sp)           
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x002C($sp)            
    lwc1    $f0, 0x0034($sp)           
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0038($sp)            
    lbu     t1, 0x0008(v1)             # 00000008
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)           
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    sw      t1, 0x0014($sp)            
    lw      t2, 0x003C($sp)            
    lw      t3, 0x0040($sp)            
    sw      t2, 0x0000(t3)             # 00000000
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A8C974:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
    andi    v0, v0, 0x0003             # v0 = 00000000
    bne     v0, $zero, lbl_80A8C9C0    
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t6, 0x0EE6(a0)             # 8011B4B6
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A8C9C0    
    nop
    beq     $zero, $zero, lbl_80A8CA2C 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80A8C9C0:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A8C9E8      
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t8, 0x0EE6(a0)             # 8011B4B6
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80A8C9EC    
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     $zero, $zero, lbl_80A8CA2C 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80A8C9E8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A8C9EC:
    bnel    v0, $at, lbl_80A8CA10      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lhu     t1, 0x0EE6(a0)             # 8011B4B6
    andi    t2, t1, 0x0004             # t2 = 00000000
    beql    t2, $zero, lbl_80A8CA10    
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     $zero, $zero, lbl_80A8CA2C 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A8CA10:
    bnel    v0, $at, lbl_80A8CA30      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     t3, 0x0EE6(a0)             # 8011B4B6
    andi    t4, t3, 0x0008             # t4 = 00000000
    beql    t4, $zero, lbl_80A8CA30    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80A8CA2C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A8CA30:
    bne     v1, $at, lbl_80A8CA54      
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lw      t5, 0x0054($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lh      t6, 0x00A4(t5)             # 000000A4
    bne     t6, $at, lbl_80A8CA54      
    nop
    beq     $zero, $zero, lbl_80A8CA70 
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80A8CA54:
    bne     v1, $zero, lbl_80A8CA70    
    lw      t7, 0x0054($sp)            
    lh      t8, 0x00A4(t7)             # 000000A4
    addiu   $at, $zero, 0x0039         # $at = 00000039
    bnel    t8, $at, lbl_80A8CA74      
    lh      t9, 0x00B8(s0)             # 000000B8
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80A8CA70:
    lh      t9, 0x00B8(s0)             # 000000B8
lbl_80A8CA74:
    sh      $zero, 0x00B8(s0)          # 000000B8
    lui     a2, 0x8002                 # a2 = 80020000
    andi    t1, t9, 0x003F             # t1 = 00000000
    sw      t1, 0x0230(s0)             # 00000230
    sw      t0, 0x0044($sp)            
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20              
    lui     a3, 0x4220                 # a3 = 42200000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t2, s0, 0x025C             # t2 = 0000025C
    addiu   t3, s0, 0x02C2             # t3 = 000002C2
    addiu   t4, $zero, 0x0011          # t4 = 00000011
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a2, a2, 0x7958             # a2 = 06007958
    sw      a1, 0x0038($sp)            
    lw      a0, 0x0054($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t0, 0x0044($sp)            
    lw      a0, 0x0054($sp)            
    addiu   a1, s0, 0x0184             # a1 = 00000184
    bne     t0, $zero, lbl_80A8CAEC    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8CCAC 
    lw      $ra, 0x002C($sp)           
lbl_80A8CAEC:
    jal     func_8004AB7C              
    sw      a1, 0x0034($sp)            
    lui     a3, %hi(var_80A8DDA0)      # a3 = 80A90000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80A8DDA0)  # a3 = 80A8DDA0
    lw      a0, 0x0054($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80A8DDD8)      # a1 = 80A90000
    lui     a2, %hi(var_80A8DDCC)      # a2 = 80A90000
    addiu   a2, a2, %lo(var_80A8DDCC)  # a2 = 80A8DDCC
    addiu   a1, a1, %lo(var_80A8DDD8)  # a1 = 80A8DDD8
    jal     func_80050370              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     v1, %hi(var_80A8DDF8)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8DDF8)  # v1 = 80A8DDF8
    jal     func_8008A194              
    lw      a0, 0x0000(v1)             # 80A8DDF8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, %hi(var_80A8DDF8)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8DDF8)  # v1 = 80A8DDF8
    cvt.s.w $f6, $f4                   
    lbu     t5, 0x0008(v1)             # 80A8DE00
    lwc1    $f8, 0x000C(v1)            # 80A8DE04
    lw      a1, 0x0000(v1)             # 80A8DDF8
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t5, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lwl     t1, 0x0030(s0)             # 00000030
    lwr     t1, 0x0033(s0)             # 00000033
    lw      t3, 0x0024(s0)             # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    swl     t1, 0x0328(s0)             # 00000328
    swr     t1, 0x032B(s0)             # 0000032B
    sw      t3, 0x0330(s0)             # 00000330
    mtc1    $at, $f10                  # $f10 = 5.00
    lhu     t1, 0x0034(s0)             # 00000034
    lw      t3, 0x002C(s0)             # 0000002C
    lw      t2, 0x0028(s0)             # 00000028
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sb      t7, 0x001F(s0)             # 0000001F
    sw      t8, 0x01E4(s0)             # 000001E4
    swc1    $f10, 0x01E0(s0)           # 000001E0
    sh      t1, 0x032C(s0)             # 0000032C
    sw      t3, 0x0338(s0)             # 00000338
    sw      t2, 0x0334(s0)             # 00000334
    lw      t4, 0x0054($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x00A4(t4)             # 000000A4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bnel    t5, $at, lbl_80A8CC20      
    lh      v0, 0x001C(s0)             # 0000001C
    jal     func_80A8C8C0              
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
    lw      t6, 0x022C(s0)             # 0000022C
    lui     t8, %hi(func_80A8D10C)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8D10C) # t8 = 80A8D10C
    ori     t7, t6, 0x0006             # t7 = 00000006
    sw      t7, 0x022C(s0)             # 0000022C
    beq     $zero, $zero, lbl_80A8CCA8 
    sw      t8, 0x0180(s0)             # 00000180
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A8CC20:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $at, lbl_80A8CC40      
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80A8CC58      
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
lbl_80A8CC40:
    jal     func_80A8C8C0              
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
    lw      t9, 0x022C(s0)             # 0000022C
    ori     t1, t9, 0x0002             # t1 = 00000002
    beq     $zero, $zero, lbl_80A8CC70 
    sw      t1, 0x022C(s0)             # 0000022C
lbl_80A8CC58:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8C8C0              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t2, 0x022C(s0)             # 0000022C
    ori     t3, t2, 0x0006             # t3 = 00000006
    sw      t3, 0x022C(s0)             # 0000022C
lbl_80A8CC70:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f16, 0x014C(s0)           # 0000014C
    lui     t6, %hi(func_80A8D0D4)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8D0D4) # t6 = 80A8D0D4
    mul.s   $f18, $f0, $f16            
    sw      t6, 0x0180(s0)             # 00000180
    trunc.w.s $f4, $f18                  
    mfc1    t5, $f4                    
    nop
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x0154(s0)            # 00000154
lbl_80A8CCA8:
    lw      $ra, 0x002C($sp)           
lbl_80A8CCAC:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8CCBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8CCE8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sw      v1, 0x001C($sp)            
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      v1, 0x001C($sp)            
    bne     v0, $at, lbl_80A8CDF0      
    lw      a2, 0x0024($sp)            
    lh      v0, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    or      a0, a2, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80A8CD84      
    addiu   $at, $zero, 0x0039         # $at = 00000039
    sw      v1, 0x001C($sp)            
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80A8CDF0    
    lw      a3, 0x0020($sp)            
    lhu     t6, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x6007         # $at = 00006007
    lui     t7, %hi(func_80A8D240)     # t7 = 80A90000
    bne     t6, $at, lbl_80A8CD74      
    addiu   t7, t7, %lo(func_80A8D240) # t7 = 80A8D240
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800204D0              
    lw      a1, 0x0230(a3)             # 00000230
    beq     $zero, $zero, lbl_80A8CDF0 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80A8CD74:
    sw      t7, 0x0180(a3)             # 00000180
    beq     $zero, $zero, lbl_80A8CDF0 
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    addiu   $at, $zero, 0x0039         # $at = 00000039
lbl_80A8CD84:
    bne     v0, $at, lbl_80A8CDF0      
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110              
    sw      v1, 0x001C($sp)            
    lw      v1, 0x001C($sp)            
    beq     v0, $zero, lbl_80A8CDF0    
    lw      a3, 0x0020($sp)            
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x6061         # $at = 00006061
    or      v1, $zero, $zero           # v1 = 00000000
    beq     v0, $at, lbl_80A8CDC4      
    addiu   $at, $zero, 0x6064         # $at = 00006064
    beq     v0, $at, lbl_80A8CDDC      
    nop
    beq     $zero, $zero, lbl_80A8CDF0 
    nop
lbl_80A8CDC4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F26(v0)             # 8011B4F6
    ori     t9, t8, 0x0040             # t9 = 00000040
    beq     $zero, $zero, lbl_80A8CDF0 
    sh      t9, 0x0F26(v0)             # 8011B4F6
lbl_80A8CDDC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0F26(v0)             # 8011B4F6
    ori     t1, t0, 0x0100             # t1 = 00000100
    sh      t1, 0x0F26(v0)             # 8011B4F6
lbl_80A8CDF0:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8CE04:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x01D4(s0)             # 000001D4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80A8CE38      
    nop
    jal     func_80A8CCE8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8D0C0 
    sw      v0, 0x01D4(s0)             # 000001D4
lbl_80A8CE38:
    jal     func_80022930              
    sw      a1, 0x003C($sp)            
    beq     v0, $zero, lbl_80A8CE54    
    lw      a0, 0x003C($sp)            
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_80A8D0C0 
    sw      t7, 0x01D4(s0)             # 000001D4
lbl_80A8CE54:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x002E            # a2 = FFFFFFF6
    jal     func_80022B14              
    addiu   a3, $sp, 0x002C            # a3 = FFFFFFF4
    lh      v0, 0x002E($sp)            
    bltz    v0, lbl_80A8D0C0           
    slti    $at, v0, 0x0141            
    beq     $at, $zero, lbl_80A8D0C0   
    lh      v0, 0x002C($sp)            
    bltz    v0, lbl_80A8D0C0           
    slti    $at, v0, 0x00F1            
    beql    $at, $zero, lbl_80A8D0C4   
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x01D4(s0)             # 000001D4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    bnel    t8, $zero, lbl_80A8D0C4    
    lw      $ra, 0x001C($sp)           
    jal     func_80022A68              
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     v0, a1, lbl_80A8D0C0       
    lw      t9, 0x003C($sp)            
    lh      v0, 0x00A4(t9)             # 000000A4
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    v0, $at, lbl_80A8CF7C      
    addiu   $at, $zero, 0x0039         # $at = 00000039
    lw      v0, 0x022C(s0)             # 0000022C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    andi    t0, v0, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_80A8CF68    
    andi    t9, v0, 0x0018             # t9 = 00000000
    lhu     v0, 0x0EE6(a0)             # 8011B4B6
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t5, $zero, 0x605B          # t5 = 0000605B
    andi    t1, v0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A8CEF4    
    andi    t2, v0, 0x0002             # t2 = 00000000
    or      v1, a1, $zero              # v1 = 00000001
lbl_80A8CEF4:
    beq     t2, $zero, lbl_80A8CF00    
    andi    t3, v0, 0x0004             # t3 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_80A8CF00:
    beq     t3, $zero, lbl_80A8CF0C    
    andi    t4, v0, 0x0008             # t4 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000003
lbl_80A8CF0C:
    beq     t4, $zero, lbl_80A8CF18    
    nop
    addiu   v1, v1, 0x0001             # v1 = 00000004
lbl_80A8CF18:
    beq     v1, $zero, lbl_80A8CF48    
    nop
    beq     v1, a1, lbl_80A8CF50       
    addiu   t6, $zero, 0x605C          # t6 = 0000605C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80A8CF58      
    addiu   t7, $zero, 0x605D          # t7 = 0000605D
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80A8CF60      
    addiu   t8, $zero, 0x605E          # t8 = 0000605E
    beq     $zero, $zero, lbl_80A8D0C4 
    lw      $ra, 0x001C($sp)           
lbl_80A8CF48:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t5, 0x010E(s0)             # 0000010E
lbl_80A8CF50:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t6, 0x010E(s0)             # 0000010E
lbl_80A8CF58:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t7, 0x010E(s0)             # 0000010E
lbl_80A8CF60:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80A8CF68:
    bne     t9, $zero, lbl_80A8D0C0    
    addiu   t0, $zero, 0x6007          # t0 = 00006007
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t0, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x0039         # $at = 00000039
lbl_80A8CF7C:
    bnel    v0, $at, lbl_80A8D0C4      
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $zero, lbl_80A8CFC4    
    lui     t1, 0x8010                 # t1 = 80100000
    beq     v0, a1, lbl_80A8CFF0       
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A8D040      
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A8D090      
    lui     a0, 0x8012                 # a0 = 80120000
    beq     $zero, $zero, lbl_80A8D0C4 
    lw      $ra, 0x001C($sp)           
lbl_80A8CFC4:
    lw      t1, -0x7404(t1)            # 800F8BFC
    lw      t2, 0x00A4(a0)             # 801200A4
    addiu   t4, $zero, 0x6060          # t4 = 00006060
    addiu   t5, $zero, 0x605F          # t5 = 0000605F
    and     t3, t1, t2                 
    beq     t3, $zero, lbl_80A8CFE8    
    nop
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t4, 0x010E(s0)             # 0000010E
lbl_80A8CFE8:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t5, 0x010E(s0)             # 0000010E
lbl_80A8CFF0:
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x7404(t6)            # 800F8BFC
    lw      t7, 0x00A4(a0)             # 8011A674
    addiu   t9, $zero, 0x6063          # t9 = 00006063
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_80A8D01C    
    lhu     t0, 0x0F26(a0)             # 8011B4F6
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t9, 0x010E(s0)             # 0000010E
    lhu     t0, 0x0F26(a0)             # 8011B4F6
lbl_80A8D01C:
    addiu   t2, $zero, 0x6061          # t2 = 00006061
    addiu   t3, $zero, 0x6062          # t3 = 00006062
    andi    t1, t0, 0x0040             # t1 = 00000000
    bne     t1, $zero, lbl_80A8D038    
    nop
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80A8D038:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80A8D040:
    addiu   a0, a0, 0xA5D0             # a0 = 80114BA0
    lui     t4, 0x8010                 # t4 = 80100000
    lw      t4, -0x7404(t4)            # 800F8BFC
    lw      t5, 0x00A4(a0)             # 80114C44
    addiu   t7, $zero, 0x6066          # t7 = 00006066
    and     t6, t4, t5                 
    beql    t6, $zero, lbl_80A8D06C    
    lhu     t8, 0x0F26(a0)             # 80115AC6
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t7, 0x010E(s0)             # 0000010E
    lhu     t8, 0x0F26(a0)             # 80115AC6
lbl_80A8D06C:
    addiu   t0, $zero, 0x6064          # t0 = 00006064
    addiu   t1, $zero, 0x6065          # t1 = 00006065
    andi    t9, t8, 0x0100             # t9 = 00000000
    bne     t9, $zero, lbl_80A8D088    
    nop
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t0, 0x010E(s0)             # 0000010E
lbl_80A8D088:
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t1, 0x010E(s0)             # 0000010E
lbl_80A8D090:
    addiu   a0, a0, 0xA5D0             # a0 = 8010F170
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x7404(t2)            # 800F8BFC
    lw      t3, 0x00A4(a0)             # 8010F214
    addiu   t5, $zero, 0x6068          # t5 = 00006068
    addiu   t6, $zero, 0x6067          # t6 = 00006067
    and     t4, t2, t3                 
    beql    t4, $zero, lbl_80A8D0C0    
    sh      t6, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80A8D0C0 
    sh      t5, 0x010E(s0)             # 0000010E
    sh      t6, 0x010E(s0)             # 0000010E
lbl_80A8D0C0:
    lw      $ra, 0x001C($sp)           
lbl_80A8D0C4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D0D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)            
    jal     func_80A8CE04              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D10C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x022C(s0)             # 0000022C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0008             # t7 = 00000000
    bne     t7, $zero, lbl_80A8D13C    
    nop
    jal     func_80A8CE04              
    lw      a1, 0x0024($sp)            
lbl_80A8D13C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0197          # a1 = 00000197
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80025B0C              
    addiu   a0, a0, 0x1C24             # a0 = 00001C24
    bne     v0, $zero, lbl_80A8D194    
    addiu   $at, $zero, 0xFFF7         # $at = FFFFFFF7
    lw      t8, 0x022C(s0)             # 0000022C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    ori     t9, t8, 0x0010             # t9 = 00000010
    sw      t9, 0x022C(s0)             # 0000022C
    and     t1, t9, $at                
    sw      t1, 0x022C(s0)             # 0000022C
    jal     func_80A8C8C0              
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
    lui     t2, %hi(func_80A8D1DC)     # t2 = 80A90000
    addiu   t2, t2, %lo(func_80A8D1DC) # t2 = 80A8D1DC
    beq     $zero, $zero, lbl_80A8D1C8 
    sw      t2, 0x0180(s0)             # 00000180
lbl_80A8D194:
    lw      v1, 0x022C(s0)             # 0000022C
    andi    t3, v1, 0x0008             # t3 = 00000000
    bnel    t3, $zero, lbl_80A8D1CC    
    lw      $ra, 0x001C($sp)           
    lh      t4, 0x0308(v0)             # 00000308
    ori     t5, v1, 0x0008             # t5 = 00000008
    bnel    t4, $zero, lbl_80A8D1CC    
    lw      $ra, 0x001C($sp)           
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    sw      t5, 0x022C(s0)             # 0000022C
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             # 00000004
lbl_80A8D1C8:
    lw      $ra, 0x001C($sp)           
lbl_80A8D1CC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D1DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(a2)             # 0000001C
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A8D230    
    lw      a2, 0x0018($sp)            
    lw      t6, 0x0004(a2)             # 00000004
    or      a0, a2, $zero              # a0 = 00000000
    ori     t7, t6, 0x0009             # t7 = 00000009
    sw      t7, 0x0004(a2)             # 00000004
    jal     func_80A8CE04              
    lw      a1, 0x001C($sp)            
lbl_80A8D230:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D240:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s1, 0x003C($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    jal     func_800C69A0              
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80A8C8C0              
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
    lw      t6, 0x022C(s0)             # 0000022C
    addiu   $at, $zero, 0xFFF9         # $at = FFFFFFF9
    lh      t9, 0x001C(s0)             # 0000001C
    lui     v0, 0x8012                 # v0 = 80120000
    and     t7, t6, $at                
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      t7, 0x022C(s0)             # 0000022C
    lhu     t8, 0x0EE6(v0)             # 8011B4B6
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    andi    t0, t9, 0x0003             # t0 = 00000000
    sllv    t2, t1, t0                 
    or      t3, t8, t2                 # t3 = 00000000
    sh      t3, 0x0EE6(v0)             # 8011B4B6
    lh      t4, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    andi    t5, t4, 0x0003             # t5 = 00000000
    sll     t6, t5,  4                 
    lui     t7, %hi(var_80A8DE54)      # t7 = 80A90000
    addu    t7, t7, t6                 
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t7, %lo(var_80A8DE54)(t7)  
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80A8D4B4              
    sw      t7, 0x01F0(s0)             # 000001F0
    lh      t1, 0x001C(s0)             # 0000001C
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s2                 
    lw      t9, 0x1E08(t9)             # 00011E08
    lui     $at, 0x4120                # $at = 41200000
    sra     t0, t1,  4                 
    andi    t8, t0, 0x000F             # t8 = 00000000
    mtc1    $at, $f26                  # $f26 = 10.00
    sll     t2, t8,  3                 
    lui     $at, %hi(var_80A8DEB0)     # $at = 80A90000
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s3, 0x00FF                 # s3 = 00FF0000
    or      s1, $zero, $zero           # s1 = 00000000
    ori     s3, s3, 0xFFFF             # s3 = 00FFFFFF
    addiu   s2, s2, 0x0C38             # s2 = 80120C38
    lwc1    $f24, %lo(var_80A8DEB0)($at) 
    addiu   s5, $zero, 0x0006          # s5 = 00000006
    lui     s4, 0x8000                 # s4 = 80000000
    addu    s6, t9, t2                 
    lw      t9, 0x01DC(s0)             # 000001DC
lbl_80A8D34C:
    lw      v1, 0x0004(s6)             # 00000004
    lwc1    $f10, 0x0024(s0)           # 00000024
    multu   t9, s5                     
    sll     t3, v1,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, s2, t5                 
    lw      t7, 0x0000(t6)             # 00000000
    and     t1, v1, s3                 
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addu    t0, t7, t1                 
    addu    t8, t0, s4                 
    mflo    t2                         
    addu    v0, t8, t2                 
    lh      t3, 0x0000(v0)             # 00000000
    lh      t4, 0x0004(v0)             # 00000004
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t4, $f16                   # $f16 = 0.00
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f16                 
    sub.s   $f20, $f8, $f10            
    sub.s   $f22, $f18, $f4            
    mov.s   $f12, $f20                 
    jal     func_800CD76C              
    mov.s   $f14, $f22                 
    mul.s   $f6, $f0, $f24             
    nop
    mul.s   $f10, $f20, $f20           
    nop
    mul.s   $f16, $f22, $f22           
    trunc.w.s $f8, $f6                   
    add.s   $f0, $f10, $f16            
    mfc1    t6, $f8                    
    sqrt.s  $f0, $f0                   
    sh      t6, 0x01F8(s0)             # 000001F8
    c.lt.s  $f26, $f0                  
    nop
    bc1f    lbl_80A8D3F0               
    nop
    beq     $zero, $zero, lbl_80A8D3FC 
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_80A8D3F0:
    lw      t7, 0x01DC(s0)             # 000001DC
    addiu   t1, t7, 0x0001             # t1 = 00000001
    sw      t1, 0x01DC(s0)             # 000001DC
lbl_80A8D3FC:
    beql    s1, $zero, lbl_80A8D34C    
    lw      t9, 0x01DC(s0)             # 000001DC
    lui     t0, %hi(func_80A8D448)     # t0 = 80A90000
    addiu   t0, t0, %lo(func_80A8D448) # t0 = 80A8D448
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A8D448:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lh      a1, 0x01F8(s0)             # 000001F8
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    sh      v0, 0x002E($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x002E($sp)            
    lui     v0, %hi(func_80A8D834)     # v0 = 80A90000
    addiu   v0, v0, %lo(func_80A8D834) # v0 = 80A8D834
    bne     t6, $zero, lbl_80A8D4A0    
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0180(s0)             # 00000180
    jalr    $ra, v0                    
    lw      a1, 0x0034($sp)            
lbl_80A8D4A0:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D4B4:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lui     v1, %hi(var_80A8DE48)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8DE48)  # v1 = 80A8DE48
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x01EC(s0)             # 000001EC
    andi    t8, t7, 0x0003             # t8 = 00000000
    sll     t9, t8,  4                 
    addu    v0, v1, t9                 
    lw      t0, 0x000C(v0)             # 0000000C
    lui     $at, %hi(var_80A8DEB4)     # $at = 80A90000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t0, 0x01F0(s0)             # 000001F0
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f18, %lo(var_80A8DEB4)($at) 
    swc1    $f4, 0x0038($sp)           
    lh      t1, 0x001C(s0)             # 0000001C
    andi    t2, t1, 0x0003             # t2 = 00000000
    sll     t3, t2,  4                 
    addu    t4, v1, t3                 
    lwc1    $f6, 0x0004(t4)            # 00000004
    swc1    $f6, 0x003C($sp)           
    lh      t5, 0x001C(s0)             # 0000001C
    andi    t6, t5, 0x0003             # t6 = 00000000
    sll     t7, t6,  4                 
    addu    t8, v1, t7                 
    lwc1    $f8, 0x0008(t8)            # 00000008
    swc1    $f8, 0x0040($sp)           
    lh      t9, 0x0032(s0)             # 00000032
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAB94              
    nop
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFF0
    jal     func_800AB958              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFE4
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x002C($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f0, $f4, $f6              
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0214(s0)            # 00000214
    swc1    $f0, 0x01FC(s0)            # 000001FC
    lwc1    $f10, 0x0030($sp)          
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f0, $f8, $f10             
    swc1    $f0, 0x0218(s0)            # 00000218
    swc1    $f0, 0x0200(s0)            # 00000200
    lwc1    $f18, 0x0034($sp)          
    add.s   $f0, $f16, $f18            
    swc1    $f0, 0x021C(s0)            # 0000021C
    swc1    $f0, 0x0204(s0)            # 00000204
    lwc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f0, 0x0220(s0)            # 00000220
    swc1    $f0, 0x0208(s0)            # 00000208
    add.s   $f0, $f4, $f6              
    swc1    $f0, 0x0224(s0)            # 00000224
    swc1    $f0, 0x020C(s0)            # 0000020C
    lwc1    $f0, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x0228(s0)            # 00000228
    jal     func_8009D0F0              
    swc1    $f0, 0x0210(s0)            # 00000210
    sw      v0, 0x01F4(s0)             # 000001F4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x01F6(s0)             # 000001F6
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x01F6(s0)             # 000001F6
    addiu   a2, s0, 0x0220             # a2 = 00000220
    jal     func_8009D328              
    addiu   a3, s0, 0x0214             # a3 = 00000214
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x01F6(s0)             # 000001F6
    jal     func_8009D55C              
    lw      a2, 0x02DC(s1)             # 000002DC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A8D640:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x002C(s0)           # 0000002C
    add.s   $f8, $f4, $f6              
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   a0, s0, 0x0220             # a0 = 00000220
    swc1    $f0, 0x0208(s0)            # 00000208
    swc1    $f8, 0x020C(s0)            # 0000020C
    mfc1    a1, $f0                    
    swc1    $f10, 0x0210(s0)           # 00000210
    sw      a0, 0x0028($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a1, 0x020C(s0)             # 0000020C
    addiu   a0, s0, 0x0224             # a0 = 00000224
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x0210(s0)             # 00000210
    addiu   a0, s0, 0x0228             # a0 = 00000228
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x0034($sp)            
    lh      a1, 0x01F6(s0)             # 000001F6
    lw      a2, 0x0028($sp)            
    jal     func_8009D328              
    addiu   a3, s0, 0x0214             # a3 = 00000214
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8D6F8:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D21C              
    lh      a1, 0x01F6(s0)             # 000001F6
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sw      $zero, 0x01EC(s0)          # 000001EC
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B4A(t6)            # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    andi    t7, t6, 0x000F             # t7 = 00000000
    bnel    t7, $at, lbl_80A8D814      
    or      a0, s1, $zero              # a0 = 00000000
    lh      t8, 0x032A(s0)             # 0000032A
    lui     $at, %hi(var_80A8DEB8)     # $at = 80A90000
    lwc1    $f8, %lo(var_80A8DEB8)($at) 
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lui     a0, %hi(var_80A8DE88)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A8DE88)  # a0 = 80A8DE88
    jal     func_800AB958              
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF0
    lwc1    $f12, 0x0040($sp)          
    lwc1    $f14, 0x0048($sp)          
    neg.s   $f12, $f12                 
    jal     func_800CD76C              
    neg.s   $f14, $f14                 
    lwc1    $f4, 0x0334(s0)            # 00000334
    lwc1    $f6, 0x0044($sp)           
    lui     $at, %hi(var_80A8DEBC)     # $at = 80A90000
    lwc1    $f10, 0x0330(s0)           # 00000330
    add.s   $f8, $f4, $f6              
    lwc1    $f4, %lo(var_80A8DEBC)($at) 
    lwc1    $f16, 0x0040($sp)          
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mul.s   $f6, $f0, $f4              
    add.s   $f18, $f10, $f16           
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x0338(s0)           # 00000338
    lwc1    $f16, 0x0048($sp)          
    mfc1    a3, $f18                   
    sw      t1, 0x0024($sp)            
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0018($sp)         
    add.s   $f18, $f10, $f16           
    mfc1    t0, $f8                    
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f18, 0x0014($sp)          
    addiu   a2, $zero, 0x01D0          # a2 = 000001D0
    jal     func_80025110              # ActorSpawn
    sw      t0, 0x001C($sp)            
    bnel    v0, $zero, lbl_80A8D824    
    lw      $ra, 0x0034($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8D824 
    lw      $ra, 0x0034($sp)           
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A8D814:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      $ra, 0x0034($sp)           
lbl_80A8D824:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80A8D834:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lw      t6, 0x004C($sp)            
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1E08(t7)             # 00011E08
    sra     t9, t8,  4                 
    andi    t0, t9, 0x000F             # t0 = 00000000
    sll     t1, t0,  3                 
    addu    a2, t7, t1                 
    lw      v1, 0x0004(a2)             # 00000004
    lw      t9, 0x01DC(s0)             # 000001DC
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t2, v1,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t0, t9,  2                 
    and     t6, v1, $at                
    subu    t0, t0, t9                 
    sll     t0, t0,  1                 
    addu    t8, t5, t6                 
    addu    v0, t8, t0                 
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, v0, $at                
    lh      t7, 0x0000(v0)             # 00000000
    lh      t1, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t1, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4                   
    sw      a2, 0x0040($sp)            
    cvt.s.w $f16, $f10                 
    sub.s   $f12, $f6, $f8             
    sub.s   $f14, $f16, $f18           
    swc1    $f12, 0x0038($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0034($sp)          
    lui     $at, %hi(var_80A8DEC0)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8DEC0)($at) 
    lwc1    $f12, 0x0038($sp)          
    lwc1    $f14, 0x0034($sp)          
    mul.s   $f6, $f0, $f4              
    lui     $at, %hi(var_80A8DEC4)     # $at = 80A90000
    lwc1    $f18, %lo(var_80A8DEC4)($at) 
    mul.s   $f10, $f12, $f12           
    lw      a2, 0x0040($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    mul.s   $f16, $f14, $f14           
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    trunc.w.s $f8, $f6                   
    add.s   $f0, $f10, $f16            
    mfc1    a1, $f8                    
    sqrt.s  $f2, $f0                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    c.le.s  $f2, $f18                  
    nop
    bc1fl   lbl_80A8D98C               
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t3, 0x01DC(s0)             # 000001DC
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x01DC(s0)             # 000001DC
    lbu     t6, 0x0000(a2)             # 00000001
    slt     $at, t4, t6                
    bnel    $at, $zero, lbl_80A8D98C   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t9, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    beq     t9, $zero, lbl_80A8D978    
    nop
    jal     func_80A8D6F8              
    lw      a1, 0x004C($sp)            
lbl_80A8D978:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8DA30 
    lw      $ra, 0x0024($sp)           
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80A8D98C:
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    swc1    $f2, 0x002C($sp)           
    lwc1    $f2, 0x002C($sp)           
    lh      t8, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x01E0(s0)             # 000001E0
    lui     a2, 0x3F19                 # a2 = 3F190000
    mfc1    a3, $f2                    
    sh      t8, 0x0032(s0)             # 00000032
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t7, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_80A8DA24    
    nop
    jal     func_80A8D640              
    lw      a1, 0x004C($sp)            
    lw      v0, 0x01F0(s0)             # 000001F0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    bgtz    v0, lbl_80A8DA24           
    sw      t1, 0x01F0(s0)             # 000001F0
    jal     func_80A8D6F8              
    lw      a1, 0x004C($sp)            
lbl_80A8DA24:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0024($sp)           
lbl_80A8DA30:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8DA40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0024($sp)            
    lw      t8, 0x01E4(s0)             # 000001E4
    bnel    t8, $at, lbl_80A8DAA4      
    addiu   a2, s0, 0x0184             # a2 = 00000184
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    beq     v0, $at, lbl_80A8DA98      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_80A8DAA4      
    addiu   a2, s0, 0x0184             # a2 = 00000184
lbl_80A8DA98:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
    addiu   a2, s0, 0x0184             # a2 = 00000184
lbl_80A8DAA4:
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x0020($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jalr    $ra, t9                    
    nop
    lw      v0, 0x022C(s0)             # 0000022C
    lw      v1, 0x0024($sp)            
    andi    t0, v0, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80A8DB48    
    lw      $ra, 0x001C($sp)           
    lwc1    $f8, 0x0038(v1)            # 00000038
    andi    t1, v0, 0x0004             # t1 = 00000000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    swc1    $f8, 0x024C(s0)            # 0000024C
    lwc1    $f10, 0x003C(v1)           # 0000003C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0234             # a1 = 00000234
    swc1    $f10, 0x0250(s0)           # 00000250
    lwc1    $f16, 0x0040(v1)           # 00000040
    or      a2, $zero, $zero           # a2 = 00000000
    beq     t1, $zero, lbl_80A8DB3C    
    swc1    $f16, 0x0254(s0)           # 00000254
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0234             # a1 = 00000234
    jal     func_80027854              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80A8DB48 
    lw      $ra, 0x001C($sp)           
lbl_80A8DB3C:
    jal     func_80027854              
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      $ra, 0x001C($sp)           
lbl_80A8DB48:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8DB58:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0030($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lw      v1, 0x0030($sp)            
    lui     t8, 0xFB00                 # t8 = FB000000
    andi    v0, v0, 0x0003             # v0 = 00000000
    bne     v0, $zero, lbl_80A8DBB8    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xAA0A                 # t9 = AA0A0000
    ori     t9, t9, 0x46FF             # t9 = AA0A46FF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A8DC40 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80A8DBB8:
    bne     v0, $at, lbl_80A8DBE4      
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t2, 0xAAC8                 # t2 = AAC80000
    ori     t2, t2, 0xFFFF             # t2 = AAC8FFFF
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A8DC40 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80A8DBE4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A8DC14      
    lui     t4, 0xFB00                 # t4 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t5, 0x00E6                 # t5 = 00E60000
    ori     t5, t5, 0x46FF             # t5 = 00E646FF
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A8DC40 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80A8DC14:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80A8DC3C      
    lui     t7, 0xFB00                 # t7 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xC800                 # t8 = C8000000
    ori     t8, t8, 0x96FF             # t8 = C80096FF
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
lbl_80A8DC3C:
    lw      a1, 0x0140(s0)             # 00000140
lbl_80A8DC40:
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_80A8DC80)     # t9 = 80A90000
    lui     t0, %hi(func_80A8DD04)     # t0 = 80A90000
    addiu   t0, t0, %lo(func_80A8DD04) # t0 = 80A8DD04
    addiu   t9, t9, %lo(func_80A8DC80) # t9 = 80A8DC80
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8DC80:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a1, $at, lbl_80A8DCAC      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a1, $at, lbl_80A8DCD4      
    lw      v0, 0x0014($sp)            
    beq     $zero, $zero, lbl_80A8DCFC 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8DCAC:
    lw      v1, 0x0010($sp)            
    lh      t7, 0x0244(v0)             # 00000244
    lh      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x0002(v1)             # 00000002
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             # 00000000
    lh      t0, 0x0242(v0)             # 00000242
    subu    t1, t9, t0                 
    beq     $zero, $zero, lbl_80A8DCF8 
    sh      t1, 0x0002(v1)             # 00000002
lbl_80A8DCD4:
    lw      v1, 0x0010($sp)            
    lh      t3, 0x023E(v0)             # 0000023E
    lh      t2, 0x0000(v1)             # 00000000
    lh      t5, 0x0004(v1)             # 00000004
    addu    t4, t2, t3                 
    sh      t4, 0x0000(v1)             # 00000000
    lh      t6, 0x023C(v0)             # 0000023C
    addu    t7, t5, t6                 
    sh      t7, 0x0004(v1)             # 00000004
lbl_80A8DCF8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8DCFC:
    jr      $ra                        
    nop


func_80A8DD04:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0028($sp)            
    sw      a3, 0x002C($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80A8DD70      
    lw      a2, 0x0000(a0)             # 00000000
    lw      a1, 0x0030($sp)            
    lui     a0, %hi(var_80A8DEA4)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A8DEA4)  # a0 = 80A8DEA4
    sw      a2, 0x0018($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a2, 0x0018($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t2, %hi(var_80A8DE94)      # t2 = 80A90000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)            
    lh      t9, 0x001C(t8)             # 0000001C
    andi    t0, t9, 0x0003             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80A8DE94)(t2)  
    sw      t2, 0x0004(v1)             # 00000004
lbl_80A8DD70:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80A8DD80: .word 0x01330400, 0x00000019, 0x01220000, 0x0000033C
.word func_80A8C974
.word func_80A8CCBC
.word func_80A8DA40
.word func_80A8DB58
var_80A8DDA0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00120042, 0x00000000, 0x00000000
var_80A8DDCC: .word 0x00000000, 0x00000000, 0xFF000000
var_80A8DDD8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A8DDF8: .word \
0x06001AB0, 0x3F800000, 0x00000000, 0x00000000, \
0x06007DE0, 0x3F800000, 0x00000000, 0x00000000, \
0x0600885C, 0x3F800000, 0x00000000, 0x00000000, \
0x06000C44, 0x3F800000, 0x00000000, 0x00000000, \
0x06008164, 0x3F800000, 0x00000000, 0x00000000
var_80A8DE48: .word 0x00000000, 0x43020000, 0x435C0000
var_80A8DE54: .word \
0x00000064, 0xC1A00000, 0x41B00000, 0x438C0000, \
0x0000006E, 0x42480000, 0x43340000, 0x43AF0000, \
0x00000064, 0xC2200000, 0x42700000, 0x42700000, \
0x00000078
var_80A8DE88: .word 0x00000000, 0x00000000, 0x42F00000
var_80A8DE94: .word 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880
var_80A8DEA4: .word 0x442F0000, 0x44898000, 0x00000000

.section .rodata

var_80A8DEB0: .word 0x4622F983
var_80A8DEB4: .word 0x38C90FDB
var_80A8DEB8: .word 0x38C90FDB
var_80A8DEBC: .word 0x4622F983
var_80A8DEC0: .word 0x4622F983
var_80A8DEC4: .word 0x41A70A3D, 0x00000000, 0x00000000

