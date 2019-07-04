.section .text
func_8091E9A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    lw      a0, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lw      a1, 0x0028($sp)            
    addiu   a2, s0, 0x00E4             # a2 = 000000E4
    addiu   a3, s0, 0x00F0             # a3 = 000000F0
    jal     func_8008EC20              
    addu    a0, a0, $at                
    lwc1    $f2, 0x00F0(s0)            # 000000F0
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lw      $ra, 0x001C($sp)           
    c.eq.s  $f4, $f2                   
    or      v0, $zero, $zero           # v0 = 00000000
    bc1fl   lbl_8091EA14               
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    beq     $zero, $zero, lbl_8091EA24 
    lwc1    $f2, 0x00F8(s0)            # 000000F8
    mtc1    $at, $f14                  # $f14 = 1.00
lbl_8091EA14:
    nop
    div.s   $f0, $f14, $f2             
    abs.s   $f12, $f0                  
    lwc1    $f2, 0x00F8(s0)            # 000000F8
lbl_8091EA24:
    lwc1    $f0, 0x00EC(s0)            # 000000EC
    neg.s   $f6, $f2                   
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_8091EABC               
    nop
    lwc1    $f8, 0x00F4(s0)            # 000000F4
    add.s   $f10, $f8, $f2             
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8091EABC               
    nop
    lwc1    $f0, 0x00E4(s0)            # 000000E4
    abs.s   $f0, $f0                   
    sub.s   $f16, $f0, $f2             
    mul.s   $f18, $f16, $f12           
    c.lt.s  $f18, $f14                 
    nop
    bc1f    lbl_8091EABC               
    nop
    lwc1    $f0, 0x00E8(s0)            # 000000E8
    lwc1    $f6, 0x00FC(s0)            # 000000FC
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    add.s   $f8, $f0, $f6              
    mul.s   $f10, $f8, $f12            
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_8091EABC               
    nop
    sub.s   $f16, $f0, $f2             
    mul.s   $f18, $f16, $f12           
    c.lt.s  $f18, $f14                 
    nop
    bc1f    lbl_8091EABC               
    nop
    beq     $zero, $zero, lbl_8091EABC 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8091EABC:
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8091EAC8:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s6, 0x0050($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    lui     s8, %hi(var_8091FB74)      # s8 = 80920000
    lui     s7, %hi(var_8091FB70)      # s7 = 80920000
    addiu   s7, s7, %lo(var_8091FB70)  # s7 = 8091FB70
    addiu   s8, s8, %lo(var_8091FB74)  # s8 = 8091FB74
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    addiu   s2, s0, 0x0004             # s2 = 00000004
lbl_8091EB14:
    lbu     t6, 0x013E(s2)             # 00000142
    or      s1, $zero, $zero           # s1 = 00000000
    sll     t8, s3,  1                 
    andi    t7, t6, 0x007F             # t7 = 00000000
    bne     t7, $zero, lbl_8091ECA4    
    lui     t9, %hi(var_8091F954)      # t9 = 80920000
    lh      t2, 0x001C(s0)             # 0000001C
    lui     t1, %hi(var_8091F93C)      # t1 = 80920000
    addiu   t1, t1, %lo(var_8091F93C)  # t1 = 8091F93C
    addiu   t9, t9, %lo(var_8091F954)  # t9 = 8091F954
    sll     t0, s3,  2                 
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    addu    s5, t0, t1                 
    bne     t2, $at, lbl_8091EB54      
    addu    s4, t8, t9                 
    addiu   s1, $zero, 0x4000          # s1 = 00004000
lbl_8091EB54:
    lh      t3, 0x0000(s4)             # 00000000
    lh      t4, 0x0032(s0)             # 00000032
    addu    t5, t3, t4                 
    addu    a0, t5, s1                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    swc1    $f0, 0x0000(s7)            # 8091FB70
    lh      t7, 0x0032(s0)             # 00000032
    lh      t6, 0x0000(s4)             # 00000000
    addu    t8, t6, t7                 
    addu    a0, t8, s1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    swc1    $f0, 0x0000(s8)            # 8091FB74
    lwc1    $f4, 0x0000(s8)            # 8091FB74
    lwc1    $f2, 0x0000(s5)            # 00000000
    lwc1    $f8, 0x0008(s0)            # 00000008
    lwc1    $f18, 0x0000(s7)           # 8091FB70
    mul.s   $f6, $f2, $f4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    mul.s   $f4, $f2, $f18             
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFEC
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x007C($sp)          
    lwc1    $f16, 0x000C(s0)           # 0000000C
    swc1    $f16, 0x0080($sp)          
    lwc1    $f6, 0x0010(s0)            # 00000010
    add.s   $f8, $f4, $f6              
    jal     func_8091E9A0              
    swc1    $f8, 0x0084($sp)           
    beq     v0, $zero, lbl_8091ECA4    
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t9, 0x013E(s2)             # 00000142
    addiu   a0, s6, 0x1C24             # a0 = 00001C24
    or      a2, s6, $zero              # a2 = 00000000
    andi    t0, t9, 0x0080             # t0 = 00000000
    beq     t0, $zero, lbl_8091EC10    
    addiu   a3, $zero, 0x0077          # a3 = 00000077
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   v0, v0, 0x0001             # v0 = 00000001
    ori     v0, v0, 0xFF00             # v0 = 0000FF01
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_8091EC30 
    sra     v0, v0, 16                 
lbl_8091EC10:
    lbu     t1, 0x0144(s0)             # 00000144
    lh      t4, 0x001C(s0)             # 0000001C
    andi    t2, t1, 0x00F0             # t2 = 00000000
    sll     t3, t2,  4                 
    addiu   t5, t4, 0x0001             # t5 = 00000001
    or      v0, t3, t5                 # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_8091EC30:
    lwc1    $f10, 0x007C($sp)          
    lwc1    $f16, 0x0080($sp)          
    lwc1    $f18, 0x0084($sp)          
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    swc1    $f18, 0x0018($sp)          
    lh      t6, 0x0030(s0)             # 00000030
    lh      t7, 0x0000(s4)             # 00000000
    sw      v0, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      t6, 0x001C($sp)            
    jal     func_800253F0              
    sw      t7, 0x0020($sp)            
    beql    v0, $zero, lbl_8091EC9C    
    lbu     t2, 0x013E(s2)             # 00000142
    sb      s3, 0x013E(v0)             # 0000013E
    lbu     t8, 0x013E(s2)             # 00000142
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x013E(s2)             # 00000142
    lw      t1, 0x00E4(s0)             # 000000E4
    sw      t1, 0x00E4(v0)             # 000000E4
    lw      t0, 0x00E8(s0)             # 000000E8
    sw      t0, 0x00E8(v0)             # 000000E8
    lw      t1, 0x00EC(s0)             # 000000EC
    beq     $zero, $zero, lbl_8091ECA4 
    sw      t1, 0x00EC(v0)             # 000000EC
    lbu     t2, 0x013E(s2)             # 00000142
lbl_8091EC9C:
    andi    t4, t2, 0x0080             # t4 = 00000000
    sb      t4, 0x013E(s2)             # 00000142
lbl_8091ECA4:
    addiu   s3, s3, 0xFFFF             # s3 = 00000003
    bgez    s3, lbl_8091EB14           
    addiu   s2, s2, 0xFFFF             # s2 = 00000003
    lw      $ra, 0x005C($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    lw      s7, 0x0054($sp)            
    lw      s8, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_8091ECE0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    or      t0, $zero, $zero           # t0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0048($sp)           
    lh      v0, 0x001C(s0)             # 0000001C
    lh      v1, 0x0018(s0)             # 00000018
    lui     a1, %hi(var_8091F960)      # a1 = 80920000
    sra     t6, v0,  8                 
    andi    t7, t6, 0x00FF             # t7 = 00000000
    beq     v1, $zero, lbl_8091ED50    
    sh      t7, 0x013C(s0)             # 0000013C
    lh      t9, 0x013C(s0)             # 0000013C
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t3, 0x00B8(s0)             # 000000B8
    sll     t8, v1,  8                 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    or      t1, t8, t9                 # t1 = 00000000
    sh      t1, 0x0018(s0)             # 00000018
    sh      t2, 0x013C(s0)             # 0000013C
    lh      v0, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_8091ED6C 
    sh      t3, 0x0034(s0)             # 00000034
lbl_8091ED50:
    lh      t4, 0x013C(s0)             # 0000013C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    andi    t5, t4, 0x0080             # t5 = 00000000
    beql    t5, $zero, lbl_8091ED70    
    andi    t7, v0, 0x00FF             # t7 = 00000000
    sh      t6, 0x013C(s0)             # 0000013C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8091ED6C:
    andi    t7, v0, 0x00FF             # t7 = 00000000
lbl_8091ED70:
    sh      t7, 0x001C(s0)             # 0000001C
    sh      t0, 0x004E($sp)            
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_8091F960)  # a1 = 8091F960
    lh      v0, 0x001C(s0)             # 0000001C
    lh      t0, 0x004E($sp)            
    slti    $at, v0, 0x000B            
    beql    $at, $zero, lbl_8091EDCC   
    sltiu   $at, v0, 0x0019            
    addiu   a1, s0, 0x0148             # a1 = 00000148
    sw      a1, 0x002C($sp)            
    lw      a0, 0x0054($sp)            
    jal     func_8004AB7C              
    sh      t0, 0x004E($sp)            
    lui     a3, %hi(var_8091F910)      # a3 = 80920000
    lw      a1, 0x002C($sp)            
    addiu   a3, a3, %lo(var_8091F910)  # a3 = 8091F910
    lw      a0, 0x0054($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t0, 0x004E($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    sltiu   $at, v0, 0x0019            
lbl_8091EDCC:
    beq     $at, $zero, lbl_8091EF04   
    sll     t8, v0,  2                 
    lui     $at, %hi(var_8091F9B0)     # $at = 80920000
    addu    $at, $at, t8               
    lw      t8, %lo(var_8091F9B0)($at) 
    jr      t8                         
    nop
var_8091EDE8:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
var_8091EDEC:
    addiu   t0, t0, 0x0001             # t0 = 00000002
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
var_8091EDF8:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f8                   # $f8 = 4000.00
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f10                  # $f10 = 2000.00
    lui     $at, 0x4516                # $at = 45160000
    swc1    $f6, 0x0048($sp)           
    mtc1    $at, $f16                  # $f16 = 2400.00
    lh      v0, 0x001C(s0)             # 0000001C
    swc1    $f8, 0x00F4(s0)            # 000000F4
    swc1    $f10, 0x00F8(s0)           # 000000F8
    beq     $zero, $zero, lbl_8091EF04 
    swc1    $f16, 0x00FC(s0)           # 000000FC
var_8091EE30:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
var_8091EE34:
    addiu   t0, t0, 0x0001             # t0 = 00000002
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
var_8091EE40:
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f18                  # $f18 = 4000.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f6                   # $f6 = 1800.00
    lh      v0, 0x001C(s0)             # 0000001C
    swc1    $f18, 0x00F4(s0)           # 000000F4
    swc1    $f4, 0x00F8(s0)            # 000000F8
    beq     $zero, $zero, lbl_8091EF04 
    swc1    $f6, 0x00FC(s0)            # 000000FC
var_8091EE6C:
    lui     $at, %hi(var_8091FA14)     # $at = 80920000
    lwc1    $f8, %lo(var_8091FA14)($at) 
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f10                  # $f10 = 4000.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    lui     $at, 0x447A                # $at = 447A0000
    swc1    $f8, 0x0048($sp)           
    mtc1    $at, $f18                  # $f18 = 1000.00
    lh      v0, 0x001C(s0)             # 0000001C
    swc1    $f10, 0x00F4(s0)           # 000000F4
    swc1    $f16, 0x00F8(s0)           # 000000F8
    beq     $zero, $zero, lbl_8091EF04 
    swc1    $f18, 0x00FC(s0)           # 000000FC
var_8091EEA4:
    addiu   t9, $zero, 0x004B          # t9 = 0000004B
    sb      t9, 0x013E(s0)             # 0000013E
    lui     $at, %hi(var_8091FA18)     # $at = 80920000
    lwc1    $f4, %lo(var_8091FA18)($at) 
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    sh      t0, 0x004E($sp)            
    jal     func_80026D90              
    swc1    $f4, 0x0048($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    jal     func_80026D90              
    swc1    $f0, 0x005C(s0)            # 0000005C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0064(s0)            # 00000064
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f6                   # $f6 = 1.25
    lui     $at, %hi(var_8091FA1C)     # $at = 80920000
    lwc1    $f10, %lo(var_8091FA1C)($at) 
    mul.s   $f8, $f0, $f6              
    lh      t0, 0x004E($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0060(s0)           # 00000060
lbl_8091EF04:
    slti    $at, v0, 0x0005            
    beq     $at, $zero, lbl_8091EF18   
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091EF70 
    sb      $zero, 0x0144(s0)          # 00000144
lbl_8091EF18:
    slti    $at, v0, 0x000A            
    beq     $at, $zero, lbl_8091EF2C   
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_8091EF70 
    sb      t1, 0x0144(s0)             # 00000144
lbl_8091EF2C:
    slti    $at, v0, 0x000B            
    beq     $at, $zero, lbl_8091EF40   
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    beq     $zero, $zero, lbl_8091EF70 
    sb      t2, 0x0144(s0)             # 00000144
lbl_8091EF40:
    slti    $at, v0, 0x0011            
    beq     $at, $zero, lbl_8091EF54   
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    beq     $zero, $zero, lbl_8091EF70 
    sb      t3, 0x0144(s0)             # 00000144
lbl_8091EF54:
    slti    $at, v0, 0x0018            
    beq     $at, $zero, lbl_8091EF6C   
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    beq     $zero, $zero, lbl_8091EF70 
    sb      t4, 0x0144(s0)             # 00000144
lbl_8091EF6C:
    sb      t5, 0x0144(s0)             # 00000144
lbl_8091EF70:
    lw      a1, 0x0048($sp)            
    jal     func_80020F88              
    sh      t0, 0x004E($sp)            
    lh      t0, 0x004E($sp)            
    beq     t0, $zero, lbl_8091F0E0    
    sb      t0, 0x0143(s0)             # 00000143
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    t6, $at, lbl_8091EFA4      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   v0, $zero, 0x4000          # v0 = 00004000
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8091EFA4:
    bnel    t0, $at, lbl_8091F070      
    lw      t7, 0x0004(s0)             # 00000004
    lh      t8, 0x013C(s0)             # 0000013C
    lbu     t7, 0x0144(s0)             # 00000144
    or      a0, s0, $zero              # a0 = 00000000
    sll     t9, t8,  4                 
    or      t1, t7, t9                 # t1 = 00000000
    sb      t1, 0x0144(s0)             # 00000144
    sh      v0, 0x0032($sp)            
    jal     func_8091EAC8              
    lw      a1, 0x0054($sp)            
    lui     t2, %hi(var_8091F95E)      # t2 = 80920000
    lh      t2, %lo(var_8091F95E)(t2)  
    lh      t3, 0x0032(s0)             # 00000032
    lh      v0, 0x0032($sp)            
    addu    t4, t2, t3                 
    addu    a0, t4, v0                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8091FB70)     # $at = 80920000
    swc1    $f0, %lo(var_8091FB70)($at) 
    lui     t5, %hi(var_8091F95E)      # t5 = 80920000
    lh      t5, %lo(var_8091F95E)(t5)  
    lh      t6, 0x0032(s0)             # 00000032
    lh      v0, 0x0032($sp)            
    addu    t8, t5, t6                 
    addu    a0, t8, v0                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     v0, %hi(var_8091FB74)      # v0 = 80920000
    addiu   v0, v0, %lo(var_8091FB74)  # v0 = 8091FB74
    lui     v1, %hi(var_8091F93C)      # v1 = 80920000
    addiu   v1, v1, %lo(var_8091F93C)  # v1 = 8091F93C
    swc1    $f0, 0x0000(v0)            # 8091FB74
    lwc1    $f18, 0x0000(v0)           # 8091FB74
    lwc1    $f4, 0x0014(v1)            # 8091F950
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_8091FB70)     # $at = 80920000
    mul.s   $f6, $f18, $f4             
    add.s   $f10, $f8, $f6             
    lwc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0014(v1)           # 8091F950
    lwc1    $f16, %lo(var_8091FB70)($at) 
    mul.s   $f4, $f16, $f18            
    add.s   $f6, $f8, $f4              
    beq     $zero, $zero, lbl_8091F078 
    swc1    $f6, 0x002C(s0)            # 0000002C
    lw      t7, 0x0004(s0)             # 00000004
lbl_8091F070:
    ori     t9, t7, 0x0010             # t9 = 00000010
    sw      t9, 0x0004(s0)             # 00000004
lbl_8091F078:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    addiu   t1, s0, 0x0024             # t1 = 00000024
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFEC
    add.s   $f18, $f10, $f16           
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFE8
    or      a3, s0, $zero              # a3 = 00000000
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      a0, 0x0054($sp)            
    sw      t1, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_8091F0D0               
    nop
    beq     $zero, $zero, lbl_8091F0E0 
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8091F0D0:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091F10C 
    lw      $ra, 0x0024($sp)           
lbl_8091F0E0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sh      $zero, 0x0016(s0)          # 00000016
    sb      t2, 0x00AE(s0)             # 000000AE
    lw      $ra, 0x0024($sp)           
lbl_8091F10C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_8091F11C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    slti    $at, t6, 0x000B            
    beql    $at, $zero, lbl_8091F14C   
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0148             # a1 = 00000148
    lw      $ra, 0x0014($sp)           
lbl_8091F14C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091F158:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0030($sp)            
    lbu     v0, 0x0143(s1)             # 00000143
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_8091F1D0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v1, 0x0118(s1)             # 00000118
    beql    v1, $zero, lbl_8091F1D0    
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t6, 0x0004(s1)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    andi    t7, t6, 0x0040             # t7 = 00000000
    bnel    t7, $zero, lbl_8091F1E4    
    lh      v0, 0x001C(s1)             # 0000001C
    lh      t8, 0x013C(s1)             # 0000013C
    lbu     a1, 0x013E(s1)             # 0000013E
    or      v0, $zero, $zero           # v0 = 00000000
    bgez    t8, lbl_8091F1BC           
    addu    t9, v1, a1                 
    addiu   v0, $zero, 0x0080          # v0 = 00000080
lbl_8091F1BC:
    jal     func_80020EB4              
    sb      v0, 0x013E(t9)             # 0000013E
    beq     $zero, $zero, lbl_8091F63C 
    lw      $ra, 0x003C($sp)           
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8091F1D0:
    bne     v0, $at, lbl_8091F1E0      
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8091EAC8              
    or      a1, s2, $zero              # a1 = 00000000
lbl_8091F1E0:
    lh      v0, 0x001C(s1)             # 0000001C
lbl_8091F1E4:
    slti    $at, v0, 0x000B            
    beql    $at, $zero, lbl_8091F3F8   
    slti    $at, v0, 0x0017            
    lbu     v0, 0x0159(s1)             # 00000159
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1837          # a1 = 00001837
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_8091F210    
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    jal     func_80022FD0              
    sb      t1, 0x0159(s1)             # 00000159
lbl_8091F210:
    lh      t2, 0x0016(s1)             # 00000016
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFE0
    beql    t2, $zero, lbl_8091F398    
    lui     $at, 0x4416                # $at = 44160000
    lw      t4, 0x0024(s1)             # 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    sw      t4, 0x0000(a2)             # FFFFFFE0
    lw      t3, 0x0028(s1)             # 00000028
    sw      t3, 0x0004(a2)             # FFFFFFE4
    lw      t4, 0x002C(s1)             # 0000002C
    sw      t4, 0x0008(a2)             # FFFFFFE8
    lwc1    $f4, 0x005C($sp)           
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x005C($sp)           
    lh      s0, 0x013C(s1)             # 0000013C
    bltz    s0, lbl_8091F27C           
    slti    $at, s0, 0x0064            
    beq     $at, $zero, lbl_8091F27C   
    or      a0, s2, $zero              # a0 = 00000000
    or      a3, s0, $zero              # a3 = 00000000
    sll     a3, a3, 20                 
    sra     a3, a3, 16                 
    jal     func_80013A84              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8091F2DC 
    lh      s0, 0x013C(s1)             # 0000013C
lbl_8091F27C:
    lh      v0, 0x0018(s1)             # 00000018
    beq     v0, $zero, lbl_8091F2DC    
    andi    t5, v0, 0x1FFF             # t5 = 00000000
    sh      t5, 0x0018(s1)             # 00000018
    lh      t6, 0x0018(s1)             # 00000018
    addiu   a0, s2, 0x1C24             # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    ori     t7, t6, 0xE000             # t7 = 0000E000
    sh      t7, 0x0018(s1)             # 00000018
    lwc1    $f16, 0x0060($sp)          
    lwc1    $f10, 0x005C($sp)          
    sw      $zero, 0x0018($sp)         
    swc1    $f16, 0x0014($sp)          
    swc1    $f10, 0x0010($sp)          
    lh      t8, 0x0032(s1)             # 00000032
    sw      $zero, 0x0020($sp)         
    lw      a3, 0x0058($sp)            
    sw      t8, 0x001C($sp)            
    lh      t9, 0x0018(s1)             # 00000018
    addiu   a2, $zero, 0x0095          # a2 = 00000095
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0024($sp)            
    sh      $zero, 0x0018(s1)          # 00000018
    lh      s0, 0x013C(s1)             # 0000013C
lbl_8091F2DC:
    slti    $at, s0, 0xFFFF            
    bne     $at, $zero, lbl_8091F388   
    addiu   v1, $zero, 0x0017          # v1 = 00000017
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   t0, s2, 0x1C24             # t0 = 00001C24
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8091F308      
    sw      t0, 0x0040($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_8091F310      
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091F308:
    addiu   v1, $zero, 0x0018          # v1 = 00000018
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091F310:
    addiu   a1, $zero, 0x2877          # a1 = 00002877
    jal     func_80022FD0              
    sw      v1, 0x0050($sp)            
    lw      v1, 0x0050($sp)            
    addiu   s0, $zero, 0x0003          # s0 = 00000003
    sll     t1, v1, 16                 
    sra     t2, t1, 16                 
    sw      t2, 0x0044($sp)            
lbl_8091F330:
    lui     $at, %hi(var_8091FA20)     # $at = 80920000
    jal     func_80026D90              
    lwc1    $f12, %lo(var_8091FA20)($at) 
    trunc.w.s $f6, $f0                   
    lwc1    $f18, 0x005C($sp)          
    lwc1    $f4, 0x0060($sp)           
    lw      t5, 0x0044($sp)            
    mfc1    t4, $f6                    
    lw      a0, 0x0040($sp)            
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0077          # a2 = 00000077
    lw      a3, 0x0058($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f18, 0x0010($sp)          
    swc1    $f4, 0x0014($sp)           
    sw      t5, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t4, 0x001C($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 00000002
    bgez    s0, lbl_8091F330           
    nop
lbl_8091F388:
    addiu   t6, $zero, 0xFFEB          # t6 = FFFFFFEB
    sh      t6, 0x013C(s1)             # 0000013C
    sh      $zero, 0x0016(s1)          # 00000016
    lui     $at, 0x4416                # $at = 44160000
lbl_8091F398:
    mtc1    $at, $f10                  # $f10 = 600.00
    lwc1    $f8, 0x0090(s1)            # 00000090
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x0148             # s0 = 00000148
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_8091F598               
    lh      s0, 0x013C(s1)             # 0000013C
    jal     func_80050B00              
    or      a1, s0, $zero              # a1 = 00000148
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s2, $at                
    sw      a1, 0x0044($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 00000148
    lw      a1, 0x0044($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 00000148
    beq     $zero, $zero, lbl_8091F598 
    lh      s0, 0x013C(s1)             # 0000013C
    slti    $at, v0, 0x0017            
lbl_8091F3F8:
    beq     $at, $zero, lbl_8091F4F0   
    addiu   a0, s1, 0x005C             # a0 = 0000005C
    lh      s0, 0x013C(s1)             # 0000013C
    lw      v0, 0x1C44(s2)             # 00001C44
    slti    $at, s0, 0xFFFF            
    bnel    $at, $zero, lbl_8091F598   
    lh      s0, 0x013C(s1)             # 0000013C
    lw      v1, 0x0430(v0)             # 00000430
    bne     v1, $zero, lbl_8091F460    
    nop
    lwc1    $f16, 0x008C(s1)           # 0000008C
    lui     $at, 0x4034                # $at = 40340000
    mtc1    $at, $f19                  # $f19 = 2.81
    cvt.d.s $f0, $f16                  
    mtc1    $zero, $f18                # $f18 = 0.00
    sqrt.d  $f0, $f0                   
    c.lt.d  $f0, $f18                  
    nop
    bc1f    lbl_8091F460               
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0828(v0)            # 00000828
    c.eq.s  $f4, $f6                   
    nop
    bc1f    lbl_8091F4A8               
    nop
lbl_8091F460:
    beql    v1, $zero, lbl_8091F598    
    lh      s0, 0x013C(s1)             # 0000013C
    lwc1    $f8, 0x008C(s1)            # 0000008C
    lui     $at, 0x404E                # $at = 404E0000
    mtc1    $at, $f11                  # $f11 = 3.22
    cvt.d.s $f0, $f8                   
    mtc1    $zero, $f10                # $f10 = 0.00
    sqrt.d  $f0, $f0                   
    c.lt.d  $f0, $f10                  
    nop
    bc1fl   lbl_8091F598               
    lh      s0, 0x013C(s1)             # 0000013C
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0068(v1)           # 00000068
    c.eq.s  $f16, $f18                 
    nop
    bc1tl   lbl_8091F598               
    lh      s0, 0x013C(s1)             # 0000013C
lbl_8091F4A8:
    bltz    s0, lbl_8091F4D4           
    slti    $at, s0, 0x0064            
    beq     $at, $zero, lbl_8091F4D4   
    or      a0, s2, $zero              # a0 = 00000000
    sll     a3, s0,  4                 
    ori     a3, a3, 0x8000             # a3 = 00008000
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80013A84              
    addiu   a2, s1, 0x0024             # a2 = 00000024
lbl_8091F4D4:
    addiu   t7, $zero, 0xFFEB          # t7 = FFFFFFEB
    sh      t7, 0x013C(s1)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2877          # a1 = 00002877
    beq     $zero, $zero, lbl_8091F598 
    lh      s0, 0x013C(s1)             # 0000013C
lbl_8091F4F0:
    lh      t8, 0x013C(s1)             # 0000013C
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCC             # a3 = 3D4CCCCC
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x013C(s1)             # 0000013C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCC             # a3 = 3D4CCCCC
    addiu   a0, s1, 0x0064             # a0 = 00000064
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80021124              
    or      a0, s1, $zero              # a0 = 00000000
    lh      a0, 0x013C(s1)             # 0000013C
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    lbu     t2, 0x013E(s1)             # 0000013E
    mul.s   $f6, $f0, $f4              
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sb      t3, 0x013E(s1)             # 0000013E
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f8                    
    bne     t4, $zero, lbl_8091F594    
    sh      t1, 0x00B8(s1)             # 000000B8
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091F594:
    lh      s0, 0x013C(s1)             # 0000013C
lbl_8091F598:
    slti    $at, s0, 0xFFFF            
    beq     $at, $zero, lbl_8091F638   
    addiu   t5, s0, 0x0001             # t5 = 00000149
    sh      t5, 0x013C(s1)             # 0000013C
    lh      a0, 0x013C(s1)             # 0000013C
    addiu   $at, $zero, 0x3332         # $at = 00003332
    xori    a0, a0, 0xFFFF             # a0 = FFFFFFFF
    multu   a0, $at                    
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    nop
    mul.s   $f16, $f0, $f10            
    swc1    $f16, 0x006C($sp)          
    lh      t7, 0x00B6(s1)             # 000000B6
    lh      t6, 0x008A(s1)             # 0000008A
    subu    a0, t6, t7                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f18, 0x006C($sp)          
    lh      t0, 0x008A(s1)             # 0000008A
    lh      t1, 0x00B6(s1)             # 000000B6
    mul.s   $f4, $f0, $f18             
    subu    a0, t0, t1                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    jal     func_800636C4              # sins?
    sh      t9, 0x00B4(s1)             # 000000B4
    lwc1    $f8, 0x006C($sp)           
    mul.s   $f10, $f0, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    sh      t3, 0x00B8(s1)             # 000000B8
lbl_8091F638:
    lw      $ra, 0x003C($sp)           
lbl_8091F63C:
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8091F650:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0050($sp)            
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    lw      t7, 0x0050($sp)            
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    lw      s0, 0x0000(t6)             # 00000000
    lh      v0, 0x001C(t7)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   a3, $zero, 0x00AA          # a3 = 000000AA
    beq     v0, $at, lbl_8091F6A4      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8091F6A4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_8091F6A4      
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bnel    v0, $at, lbl_8091F6B0      
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8091F6A4:
    beq     $zero, $zero, lbl_8091F6E0 
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8091F6B0:
    beq     v0, $at, lbl_8091F6CC      
    addiu   a2, $zero, 0x00B4          # a2 = 000000B4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_8091F6CC      
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     v0, $at, lbl_8091F6D8      
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_8091F6CC:
    addiu   a3, $zero, 0x009B          # a3 = 0000009B
    beq     $zero, $zero, lbl_8091F6E0 
    or      t0, $zero, $zero           # t0 = 00000000
lbl_8091F6D8:
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
lbl_8091F6E0:
    sb      a2, 0x0043($sp)            
    sb      a3, 0x0042($sp)            
    jal     func_8007E2C0              
    sb      t0, 0x0041($sp)            
    lw      v1, 0x0050($sp)            
    addiu   $at, $zero, 0x0017         # $at = 00000017
    lbu     a2, 0x0043($sp)            
    lh      v0, 0x001C(v1)             # 0000001C
    lbu     a3, 0x0042($sp)            
    lbu     t0, 0x0041($sp)            
    beq     v0, $at, lbl_8091F71C      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bnel    v0, $at, lbl_8091F78C      
    lbu     v0, 0x0144(v1)             # 00000144
lbl_8091F71C:
    sb      a2, 0x0043($sp)            
    sb      a3, 0x0042($sp)            
    jal     func_8007E298              
    sb      t0, 0x0041($sp)            
    lbu     a2, 0x0043($sp)            
    lbu     a3, 0x0042($sp)            
    lbu     t0, 0x0041($sp)            
    lw      v1, 0x02C0(s0)             # 000002C0
    andi    t3, a3, 0x00FF             # t3 = 00000000
    sll     t4, t3, 16                 
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sll     t2, a2, 24                 
    andi    t6, t0, 0x00FF             # t6 = 00000000
    sll     t7, t6,  8                 
    or      t5, t2, t4                 # t5 = 00000000
    lui     t9, 0xFA00                 # t9 = FA000000
    or      t8, t5, t7                 # t8 = 00000000
    sw      t9, 0x0000(v1)             # 00000000
    ori     t9, t8, 0x007F             # t9 = 0000007F
    sw      t9, 0x0004(v1)             # 00000004
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0700             # a1 = 06000700
    jal     func_80028048              
    lw      a0, 0x0054($sp)            
    beq     $zero, $zero, lbl_8091F8DC 
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0144(v1)             # 00000144
lbl_8091F78C:
    lui     t1, %hi(var_8091F980)      # t1 = 80920000
    lui     a1, %hi(var_8091F964)      # a1 = 80920000
    andi    v0, v0, 0x000F             # v0 = 00000000
    sll     v0, v0,  2                 
    addu    t1, t1, v0                 
    lw      t1, %lo(var_8091F980)(t1)  
    addu    a1, a1, v0                 
    lw      a0, 0x0054($sp)            
    beq     t1, $zero, lbl_8091F870    
    nop
    lw      a1, %lo(var_8091F964)(a1)  
    sb      a2, 0x0043($sp)            
    sb      a3, 0x0042($sp)            
    jal     func_80028048              
    sb      t0, 0x0041($sp)            
    lbu     a2, 0x0043($sp)            
    lbu     a3, 0x0042($sp)            
    lbu     t0, 0x0041($sp)            
    lw      v1, 0x02D0(s0)             # 000002D0
    andi    t5, a3, 0x00FF             # t5 = 00000000
    sll     t7, t5, 16                 
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sll     t6, a2, 24                 
    andi    t9, t0, 0x00FF             # t9 = 00000000
    sll     t1, t9,  8                 
    or      t8, t6, t7                 # t8 = 00000000
    or      t3, t8, t1                 # t3 = 00000000
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     t3, %hi(var_8091F980)      # t3 = 80920000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0050($sp)            
    lbu     t9, 0x0144(t7)             # 00000144
    andi    t8, t9, 0x000F             # t8 = 00000000
    sll     t1, t8,  2                 
    addu    t3, t3, t1                 
    lw      t3, %lo(var_8091F980)(t3)  
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8091F8DC 
    lw      $ra, 0x001C($sp)           
lbl_8091F870:
    jal     func_8007E2C0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     t3, %hi(var_8091F964)      # t3 = 80920000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0050($sp)            
    lbu     t9, 0x0144(t7)             # 00000144
    andi    t8, t9, 0x000F             # t8 = 00000000
    sll     t1, t8,  2                 
    addu    t3, t3, t1                 
    lw      t3, %lo(var_8091F964)(t3)  
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)           
lbl_8091F8DC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_8091F8F0: .word 0x00770600, 0x00000000, 0x007C0000, 0x00000194
.word func_8091ECE0
.word func_8091F11C
.word func_8091F158
.word func_8091F650
var_8091F910: .word \
0x0D000D39, 0x10010000, 0x05000000, 0x00000000, \
0x00000000, 0x0FC0074A, 0x00000000, 0x00010100, \
0x0012003C, 0x00000000, 0x00000000
var_8091F93C: .word \
0x4430C000, 0x44034000, 0x43FF0000, 0x43FA0000, \
0x440D8000, 0x430D0000
var_8091F954: .byte 0x1F, 0xFF, 0x4C, 0x9E, 0x77, 0xF5, 0xA5, 0xC9, 0xD6, 0xC3
var_8091F95E: .byte 0xA0, 0x00
var_8091F960: .word 0x304C15E0
var_8091F964: .word \
0x060078D0, 0x06007CA0, 0x060080D0, 0x06000090, \
0x06000340, 0x06000340, 0x06000700
var_8091F980: .word \
0x06007968, 0x06007D38, 0x060081A8, 0x00000000, \
0x00000000, 0x00000000, 0x06007AD0, 0x06007E20, \
0x06008350, 0x06000160, 0x06000440, 0x06000700

.section .rodata

var_8091F9B0: .word var_8091EDF8
.word var_8091EE40
.word var_8091EE6C
.word var_8091EE30
.word var_8091EE34
.word var_8091EE40
.word var_8091EE30
.word var_8091EE34
.word var_8091EE30
.word var_8091EE34
.word var_8091EE40
.word var_8091EE40
.word var_8091EDF8
.word var_8091EE30
.word var_8091EE34
.word var_8091EDE8
.word var_8091EDEC
.word var_8091EE40
.word var_8091EDF8
.word var_8091EE30
.word var_8091EE34
.word var_8091EDE8
.word var_8091EDEC
.word var_8091EEA4
.word var_8091EEA4
var_8091FA14: .word 0x3F19999A
var_8091FA18: .word 0x3CA3D70A
var_8091FA1C: .word 0xC0466666
var_8091FA20: .word 0x477FFF00, 0x00000000, 0x00000000, 0x00000000

.bss

var_8091FB70: .space 0x04
var_8091FB74: .space 0x0C
