.section .text
func_8095BA90:
    sw      a1, 0x0160(a0)             # 00000160
    jr      $ra                        
    nop


func_8095BA9C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, %hi(var_8095D640)      # a2 = 80960000
    lw      t7, 0x1C44(a0)             # 00001C44
    lui     a3, %hi(var_8095D600)      # a3 = 80960000
    addiu   a3, a3, %lo(var_8095D600)  # a3 = 8095D600
    sw      a1, 0x0028($sp)            
    addiu   a2, a2, %lo(var_8095D640)  # a2 = 8095D640
    jal     func_80059C00              
    sw      t7, 0x0030($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(var_8095D600)      # a1 = 80960000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   a1, a1, %lo(var_8095D600)  # a1 = 8095D600
    beq     v0, $zero, lbl_8095BB08    
    sb      t8, 0x0003(s0)             # 00000003
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_8095BB54      
    lui     $at, 0x4270                # $at = 42700000
    beq     $zero, $zero, lbl_8095BB98 
    lw      $ra, 0x0024($sp)           
lbl_8095BB08:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mfc1    a3, $f0                    
    mfc1    a2, $f2                    
    swc1    $f2, 0x0010($sp)           
    jal     func_80059CE0              
    swc1    $f4, 0x0014($sp)           
    addiu   t9, $zero, 0x001D          # t9 = 0000001D
    lui     a1, %hi(func_8095BCFC)     # a1 = 80960000
    sh      t9, 0x015C(s0)             # 0000015C
    addiu   a1, a1, %lo(func_8095BCFC) # a1 = 8095BCFC
    jal     func_8095BA90              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8095BB98 
    lw      $ra, 0x0024($sp)           
    lui     $at, 0x4270                # $at = 42700000
lbl_8095BB54:
    mtc1    $at, $f0                   # $f0 = 60.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    mfc1    a2, $f0                    
    mfc1    a3, $f2                    
    swc1    $f0, 0x0010($sp)           
    jal     func_80059CE0              
    swc1    $f6, 0x0014($sp)           
    lui     a1, %hi(func_8095BE78)     # a1 = 80960000
    addiu   a1, a1, %lo(func_8095BE78) # a1 = 8095BE78
    jal     func_8095BA90              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0030($sp)            
    jal     func_80022F84              
    addiu   a1, $zero, 0x087B          # a1 = 0000087B
    lw      $ra, 0x0024($sp)           
lbl_8095BB98:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BBA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)            
    jal     func_80059CB0              
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    jal     func_80072548              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BBDC:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a1, %hi(var_8095C130)      # a1 = 80960000
    mul.s   $f6, $f12, $f4             
    addiu   a1, a1, %lo(var_8095C130)  # a1 = 8095C130
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t7, %hi(var_8095D648)      # t7 = 80960000
    lui     t0, %hi(var_8095D649)      # t0 = 80960000
    lui     v1, %hi(var_8095D64A)      # v1 = 80960000
    cfc1    t6, $f31                   
    ctc1    a0, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    a0, $f31                   
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    beql    a0, $zero, lbl_8095BC70    
    mfc1    a0, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    a0, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    a0, $f31                   
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    bne     a0, $zero, lbl_8095BC64    
    nop
    mfc1    a0, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095BC7C 
    or      a0, a0, $at                # a0 = 80000000
lbl_8095BC64:
    beq     $zero, $zero, lbl_8095BC7C 
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    mfc1    a0, $f8                    
lbl_8095BC70:
    nop
    bltz    a0, lbl_8095BC64           
    nop
lbl_8095BC7C:
    lbu     t7, %lo(var_8095D648)(t7)  
    ctc1    t6, $f31                   
    lui     v0, %hi(var_8095D65A)      # v0 = 80960000
    sll     t8, t7,  4                 
    addu    t9, a1, t8                 
    sb      a0, 0x000F(t9)             # 0000000F
    lbu     t0, %lo(var_8095D649)(t0)  
    addiu   v0, v0, %lo(var_8095D65A)  # v0 = 8095D65A
    addiu   v1, v1, %lo(var_8095D64A)  # v1 = 8095D64A
    sll     t1, t0,  4                 
    addu    t2, a1, t1                 
    sb      a0, 0x000F(t2)             # 0000000F
lbl_8095BCAC:
    lbu     t3, 0x0000(v1)             # 8095D64A
    addiu   v1, v1, 0x0004             # v1 = 8095D64E
    sll     t4, t3,  4                 
    addu    t5, a1, t4                 
    sb      a0, 0x000F(t5)             # 0000000F
    lbu     t6, -0x0003(v1)            # 8095D64B
    sll     t7, t6,  4                 
    addu    t8, a1, t7                 
    sb      a0, 0x000F(t8)             # 0000000F
    lbu     t9, -0x0002(v1)            # 8095D64C
    sll     t0, t9,  4                 
    addu    t1, a1, t0                 
    sb      a0, 0x000F(t1)             # 0000000F
    lbu     t2, -0x0001(v1)            # 8095D64D
    sll     t3, t2,  4                 
    addu    t4, a1, t3                 
    bne     v1, v0, lbl_8095BCAC       
    sb      a0, 0x000F(t4)             # 0000000F
    jr      $ra                        
    nop


func_8095BCFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x015C(a3)             # 0000015C
    lw      t6, 0x001C($sp)            
    addiu   a1, $zero, 0x087A          # a1 = 0000087A
    blez    v0, lbl_8095BD2C           
    lw      a2, 0x1C44(t6)             # 00001C44
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_8095BD68 
    sh      t7, 0x015C(a3)             # 0000015C
lbl_8095BD2C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022F84              
    sw      a3, 0x0018($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_8095BBDC              
    nop
    lui     a1, %hi(func_8095BD78)     # a1 = 80960000
    addiu   a1, a1, %lo(func_8095BD78) # a1 = 8095BD78
    jal     func_8095BA90              
    lw      a0, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80059D18              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
lbl_8095BD68:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BD78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80059D18              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    beq     v0, $zero, lbl_8095BDB8    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8095BDC8)     # a1 = 80960000
    jal     func_8095BA90              
    addiu   a1, a1, %lo(func_8095BDC8) # a1 = 8095BDC8
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sh      t6, 0x015C(t7)             # 0000015C
lbl_8095BDB8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BDC8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x015C(a0)             # 0000015C
    lui     a1, %hi(func_8095BE14)     # a1 = 80960000
    addiu   a1, a1, %lo(func_8095BE14) # a1 = 8095BE14
    blez    v0, lbl_8095BDF0           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_8095BE04 
    sh      t6, 0x015C(a0)             # 0000015C
lbl_8095BDF0:
    jal     func_8095BA90              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sh      t7, 0x015C(a0)             # 0000015C
lbl_8095BE04:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BE14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x015C(a0)             # 0000015C
    blez    v0, lbl_8095BE60           
    nop
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_8095D680)     # $at = 80960000
    lwc1    $f8, %lo(var_8095D680)($at) 
    cvt.s.w $f6, $f4                   
    sw      a0, 0x0018($sp)            
    mul.s   $f12, $f6, $f8             
    jal     func_8095BBDC              
    nop
    lw      a0, 0x0018($sp)            
    lh      t6, 0x015C(a0)             # 0000015C
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_8095BE68 
    sh      t7, 0x015C(a0)             # 0000015C
lbl_8095BE60:
    jal     func_80020EB4              
    nop
lbl_8095BE68:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BE78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80059D18              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    beql    v0, $zero, lbl_8095BEAC    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_8095BEAC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BEB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1                 
    lbu     v0, 0x03DC(v0)             # 000103DC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8095BEE0      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v0, $at, lbl_8095BEF4      
    lw      t9, 0x0160(a0)             # 00000160
lbl_8095BEE0:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_8095BF00 
    lw      $ra, 0x0014($sp)           
    lw      t9, 0x0160(a0)             # 00000160
lbl_8095BEF4:
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
lbl_8095BF00:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8095BF0C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x005C($sp)            
    sw      a3, 0x0064($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a2, $at, lbl_8095BFC8      
    lw      t1, 0x0000(s0)             # 00000000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t1)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s0)             # 0000009C
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sll     t5, v0,  4                 
    subu    t5, t5, v0                 
    sll     t5, t5,  1                 
    sll     t0, v0,  4                 
    andi    t6, t5, 0x00FF             # t6 = 00000000
    subu    t0, t0, v0                 
    sll     a2, v0,  3                 
    andi    t0, t0, 0x00FF             # t0 = 00000000
    subu    t7, t3, t6                 
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addu    a2, a2, v0                 
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t4, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t9, 0x0028($sp)            
    sw      t7, 0x0020($sp)            
    subu    a3, t3, t0                 
    sw      t0, 0x001C($sp)            
    sw      t8, 0x0010($sp)            
    sw      t8, 0x0024($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0048($sp)            
    lw      t2, 0x0048($sp)            
    sw      v0, 0x0004(t2)             # 00000004
    beq     $zero, $zero, lbl_8095C07C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8095BFC8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a2, $at, lbl_8095C078      
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t1)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s0)             # 0000009C
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sll     t6, v0,  2                 
    addu    t6, t6, v0                 
    andi    t7, t6, 0x00FF             # t7 = 00000000
    subu    a3, t3, t7                 
    sll     t7, v0,  2                 
    sll     t5, v0,  2                 
    subu    t5, t5, v0                 
    addu    t7, t7, v0                 
    sll     t7, t7,  1                 
    sll     t5, t5,  1                 
    sw      t8, 0x0010($sp)            
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0014($sp)            
    sw      t4, 0x0018($sp)            
    andi    t8, t7, 0x00FF             # t8 = 00000000
    andi    t6, t5, 0x00FF             # t6 = 00000024
    sll     a2, v0,  2                 
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    subu    t9, t3, t8                 
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    subu    a2, a2, v0                 
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t4, 0x0024($sp)            
    sw      t9, 0x0020($sp)            
    sw      t5, 0x0028($sp)            
    sw      t6, 0x001C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0044($sp)            
    lw      t0, 0x0044($sp)            
    sw      v0, 0x0004(t0)             # 00000004
lbl_8095C078:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8095C07C:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_8095C090:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t8, 0x0030($sp)            
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    lw      v1, 0x0000(t6)             # 00000000
    lw      t9, 0x0160(t8)             # 00000160
    lui     t7, %hi(func_8095BCFC)     # t7 = 80960000
    addiu   t7, t7, %lo(func_8095BCFC) # t7 = 8095BCFC
    beql    t7, t9, lbl_8095C104       
    lw      $ra, 0x0024($sp)           
    lw      a0, 0x02D0(v1)             # 000002D0
    jal     func_8007DFBC              
    sw      v1, 0x002C($sp)            
    lw      v1, 0x002C($sp)            
    lw      a0, 0x0030($sp)            
    lui     a3, %hi(func_8095BF0C)     # a3 = 80960000
    sw      v0, 0x02D0(v1)             # 000002D0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0014($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0010($sp)         
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(func_8095BF0C) # a3 = 8095BF0C
    jal     func_8005A36C              
    addiu   a2, a0, 0x013C             # a2 = 0000013C
    lw      $ra, 0x0024($sp)           
lbl_8095C104:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_8095C110: .word 0x009E0700, 0x02000010, 0x00010000, 0x00000164
.word func_8095BA9C
.word func_8095BBA8
.word func_8095BEB8
.word func_8095C090
var_8095C130: .word \
0x00000000, 0xE8900000, 0x04000800, 0xFFFFFFFF, \
0xEF6D3200, 0xEF6D0000, 0x05000000, 0xFFFFFF00, \
0x00003200, 0xE8900000, 0x04000000, 0xFFFFFF00, \
0xEF6D0000, 0xEF6D0000, 0x05000800, 0xFFFFFFFF, \
0x00000000, 0x17700000, 0x00000800, 0xFFFFFFFF, \
0x10933200, 0x10930000, 0x01000000, 0xFFFFFF00, \
0x00003200, 0x17700000, 0x00000000, 0xFFFFFF00, \
0x10930000, 0x10930000, 0x01000800, 0xFFFFFFFF, \
0xE8903200, 0x00000000, 0x06000000, 0xFFFFFF00, \
0xE8900000, 0x00000000, 0x06000800, 0xFFFFFFFF, \
0x10930000, 0xEF6D0000, 0x03000800, 0xFFFFFFFF, \
0x10933200, 0xEF6D0000, 0x03000000, 0xFFFFFF00, \
0xEF6D3200, 0x10930000, 0x07000000, 0xFFFFFF00, \
0xEF6D0000, 0x10930000, 0x07000800, 0xFFFFFFFF, \
0x17703200, 0x00000000, 0x02000000, 0xFFFFFF00, \
0x17700000, 0x00000000, 0x02000800, 0xFFFFFFFF, \
0x00003200, 0x17700000, 0x08000000, 0xFFFFFF00, \
0x00000000, 0x17700000, 0x08000800, 0xFFFFFFFF
var_8095C250: .word \
0x00000000, 0xE8900000, 0x04000800, 0xFFFFFFFF, \
0xEF6D3200, 0xEF6D0000, 0x05000000, 0xFFFFFF00, \
0x00003200, 0xE8900000, 0x04000000, 0xFFFFFF00, \
0xEF6D0000, 0xEF6D0000, 0x05000800, 0xFFFFFFFF, \
0x00000000, 0x17700000, 0x00000800, 0xFFFFFFFF, \
0x10933200, 0x10930000, 0x01000000, 0xFFFFFF00, \
0x00003200, 0x17700000, 0x00000000, 0xFFFFFF00, \
0x10930000, 0x10930000, 0x01000800, 0xFFFFFFFF, \
0xE8903200, 0x00000000, 0x06000000, 0xFFFFFF00, \
0xE8900000, 0x00000000, 0x06000800, 0xFFFFFFFF, \
0x10930000, 0xEF6D0000, 0x03000800, 0xFFFFFFFF, \
0x10933200, 0xEF6D0000, 0x03000000, 0xFFFFFF00, \
0xEF6D3200, 0x10930000, 0x07000000, 0xFFFFFF00, \
0xEF6D0000, 0x10930000, 0x07000800, 0xFFFFFFFF, \
0x17703200, 0x00000000, 0x02000000, 0xFFFFFF00, \
0x17700000, 0x00000000, 0x02000800, 0xFFFFFFFF, \
0x00003200, 0x17700000, 0x08000000, 0xFFFFFF00, \
0x00000000, 0x17700000, 0x08000800, 0xFFFFFFFF
var_8095C370: .word \
0x06192843, 0x6682A0AE, 0xA3937656, 0x32120000, \
0x03152539, 0x5781ADBC, 0xA47B5D45, 0x33202438, \
0x331F264F, 0x718CB2C9, 0xC7AE8757, 0x33241100, \
0x00051C3B, 0x5E7D9093, 0x85767881, 0x703E1401, \
0x1627334F, 0x6C84969A, 0x9B8C704F, 0x27090000, \
0x05152943, 0x6896B9B7, 0x996E4C34, 0x2A202631, \
0x2B202F4D, 0x668FB5C0, 0xB4976B46, 0x311E0700, \
0x000C274C, 0x6B8C9E9A, 0x8B7A7A7C, 0x66421E0B, \
0x27303E61, 0x7C8F97A0, 0xA2876F51, 0x2A0C0000, \
0x091D3559, 0x83ACC0B5, 0x8E5E3E2E, 0x28252427, \
0x2628394D, 0x6CA0B8B3, 0xA07A5840, 0x2E130000, \
0x061B3B5D, 0x84A9B2AD, 0x998B8F87, 0x6743251C, \
0x2D3A4F73, 0x8D9DA8AB, 0x9F85725B, 0x36160300, \
0x11294872, 0xA0C6C7AC, 0x80523628, 0x27231B1E, \
0x242E3A50, 0x7BA6B3A6, 0x8F684D39, 0x24080000, \
0x112D4F73, 0xA2C1C8BD, 0xAFB2B495, 0x65402B25, \
0x30485E7D, 0x96A9B4AC, 0x9B8A7960, 0x3A1B0B0A, \
0x1A355C8B, 0xBCD6C9A0, 0x734D2F1E, 0x201D1119, \
0x28313853, 0x83A2A99D, 0x815B4230, 0x1D020006, \
0x1D3C618D, 0xBAD8DBC7, 0xC7CEC18C, 0x5C443527, \
0x3A586C84, 0x9BAFB4AE, 0xA3917852, 0x2E171114, \
0x264872A4, 0xD4DFC799, 0x7253321C, 0x1F1B192A, \
0x393C4663, 0x8AA0A396, 0x73513D30, 0x1C020010, \
0x2A4D79A6, 0xD5EFE6D5, 0xD0C8AB77, 0x574F3F2E, \
0x44637787, 0x9FADB3B7, 0xAF906439, 0x1C11141F, \
0x385C8ABF, 0xE8E7C69E, 0x7F644831, 0x2B313F4C, \
0x4E536680, 0x96A4A38E, 0x664F473B, 0x1F06061C, \
0x3A6393C2, 0xEFFCEDDD, 0xC2A48564, 0x5A5A4338, \
0x48667A8A, 0xA0AAB2BC, 0xAB784521, 0x100D192F, \
0x4D72A3D7, 0xF7EDCCAE, 0x947F6953, 0x5263655E, \
0x5C698097, 0xA4AAA180, 0x605B5E4C, 0x270D122B, \
0x4E7BABDE, 0xFFFDECD2, 0xA57A6962, 0x66614540, \
0x4D62798D, 0xA3ABB3B0, 0x89522812, 0x0A102543, \
0x638CBEEA, 0xFFF7DEC4, 0xB09F8B7C, 0x8B896F62, \
0x66778CA3, 0xB2AF9973, 0x67737258, 0x331C233D, \
0x6591C4F2, 0xFFF5DDBA, 0x8A666E79, 0x79664A47, \
0x57657D95, 0xAAB5B394, 0x5C2E160B, 0x0B1B3959, \
0x7DA6D5F9, 0xFFFFF5E0, 0xCCB8ACAB, 0xA98D6F66, \
0x71869DAE, 0xBCAE8E76, 0x808A7C60, 0x44333852, \
0x7BAADDFE, 0xFFE7C9A4, 0x7F76909B, 0x866B5250, \
0x63768BA1, 0xB9C0AA75, 0x3A191212, 0x192E5075, \
0x9BC1E7FF, 0xFFFFFFF5, 0xDFCCC7B6, 0x9A7D6769, \
0x85A0B0C0, 0xC1A88C87, 0x99967B65, 0x5B52526B, \
0x90C2ECFF, 0xFBDDBDA1, 0x909BB2A9, 0x8268615E, \
0x6B819EB4, 0xCAC49D5C, 0x28151C27, 0x30476E96, \
0xB8D7F2FB, 0xF9FAFFF9, 0xE7D6BF9E, 0x7F675D75, \
0xA1B0BECC, 0xC0A3949B, 0xA8967870, 0x78737180, \
0xA6D6F1F6, 0xF2DDC4B7, 0xB4BDB9A0, 0x796D6F6B, \
0x6D87ACCA, 0xD5C08E4F, 0x2823313F, 0x4C6993B5, \
0xCEE3EDEA, 0xE5E6ECF1, 0xE5CDAA8A, 0x6F5E678D, \
0xB2B7C8D1, 0xBFA499A1, 0xA48E7D86, 0x958F8794, \
0xBDDFE6E7, 0xE9E1DDD6, 0xD0C8AC98, 0x7B767569, \
0x6E8EB7DD, 0xDBB98454, 0x39394553, 0x688DB6CB, \
0xD6DFDED7, 0xD3D4DEE2, 0xD7BD9F80, 0x696C87A3, \
0xBAC4D4D6, 0xC2A99693, 0x90878D9E, 0xAAA096A6, \
0xC9D8D1D2, 0xDCE5E9E1, 0xD4BDA094, 0x8277675E, \
0x7195C7EB, 0xDCB08769, 0x544E5163, 0x84AED0D1, \
0xD0D3CEC9, 0xC7C7CED0, 0xC7AF9679, 0x6F829FB5, \
0xC7D7E3DD, 0xC8A98776, 0x77899FB0, 0xB4A5A0B2, \
0xC7C8B8BC, 0xCAD8DBD8, 0xC8AC9786, 0x76625159, \
0x73A1DFF7, 0xD3A89586, 0x735C5971, 0x9FC8D3CA, \
0xC9CAC2BA, 0xB8B7BABF, 0xB7A39076, 0x7B94AAC3, \
0xD3E1F0E2, 0xC6A27358, 0x658CABB7, 0xB3A5A9B4, \
0xBCAFA0A4, 0xB3C1D0D1, 0xB7998570, 0x5340475A, \
0x7BB8F6F6, 0xC8A3A09F, 0x85656385, 0xB6CECBC9, \
0xCCC4B0A2, 0xA1A4AAB2, 0xAD9D8E79, 0x89A5BCCB, \
0xCEDEF2DE, 0xBD966146, 0x608DAEB3, 0xAEABB4B5, \
0xAA90868D, 0xA0BAD2CA, 0xA482705B, 0x3630465C, \
0x8DD2FCEC, 0xC4A8A5A4, 0x8B71759E, 0xC1CCCACD, \
0xCDB69180, 0x8593A0AB, 0xAA9A9085, 0x97B7C6BD, \
0xB9D6EBD8, 0xB4865A45, 0x628DA6AB, 0xB2B9BFB3, \
0x8E726E7D, 0xA2CAD0B5, 0x8E706550, 0x3834435D, \
0xA0E0F4E6, 0xCAAEA39A, 0x8D8390B2, 0xC9CCCCCD, \
0xBF986B5D, 0x6F85A1B2, 0xAC9B958F, 0x9FAEA597, \
0xA5CEE5D4, 0xAC836356, 0x6B8C9EAC, 0xBFCAC39F, \
0x705A6286, 0xBFD7BD9A, 0x806D6554, 0x4C3F4063, \
0xADDDEAE2, 0xCEAC9A93, 0x909AAFC1, 0xCCC8C8BF, \
0x9E704847, 0x6384B0B9, 0xAD9A918E, 0x8D7D6F76, \
0x99C4DED4, 0xAF8D7370, 0x7C91A2B7, 0xCBD0B07F, \
0x5A526DAA, 0xDCCAA18D, 0x7D716F68, 0x5C404271, \
0xB6D8E2DB, 0xC49F9594, 0x98B3C9C9, 0xC3BEB8A1, \
0x764D333D, 0x6696C0B6, 0xA5978277, 0x60424665, \
0x91BDD5D9, 0xBD9E8D8B, 0x97A6B4C6, 0xCDBA9066, \
0x525D8CCB, 0xD7AD938A, 0x80767B7B, 0x5B3C4A80, \
0xC2DFD9C6, 0xA08E9A9E, 0xA4C7D4C2, 0xB7B0A280, \
0x52342E47, 0x7FABBFAC, 0x947C5E4E, 0x301D3560, \
0x8DB6CEDD, 0xCDB6A8A4, 0xB4C4CCCD, 0xBC9A765A, \
0x5773A8CA, 0xBF9E8F89, 0x7D7B8171, 0x4A3B588D, \
0xD0E1C999, 0x7287A9B0, 0xB3D1D2B7, 0xACA28C65, \
0x3B293C6C, 0x9BB4B09B, 0x724C382A, 0x1511335D, \
0x8AB3C7DB, 0xE2D0BEB6, 0xCEDED8C3, 0xA2816556, \
0x5E85A5AD, 0xAE9B8D86, 0x827D7051, 0x363B6399, \
0xD0D1A164, 0x5889B7BD, 0xBAD0C9B0, 0xA2957952, \
0x2F2F5E91, 0xA5A99A79, 0x4C2D251C, 0x0F123059, \
0x87ABBFDC, 0xF5E3C9C0, 0xE1E7D3B3, 0x8F71594F, \
0x5E808D95, 0xA3978683, 0x856F5039, 0x263B6FA2, \
0xB9A06746, 0x548CB6B9, 0xC1D0BFA9, 0x99846342, \
0x30447999, 0x9A938058, 0x3827231A, 0x12162552, \
0x7B9BB8DB, 0xFEEBD0CA, 0xDFD6C4A4, 0x82644A42, \
0x546C7786, 0x96897977, 0x755B3928, 0x20477FA3, \
0x8D5A3D45, 0x5C85A3B2, 0xCED1B3A0, 0x8F714E3A, \
0x3E567A83, 0x7C78664E, 0x3D2D201A, 0x1C202345, \
0x678AAFD3, 0xF6E7D7CD, 0xC8BCAE99, 0x72563A31, \
0x45586C7B, 0x82756662, 0x584C3524, 0x2D5E8B9D, \
0x60292D4F, 0x5D708DB5, 0xDCC4A89A, 0x835D4042, \
0x4C596560, 0x5D605450, 0x47321C1A, 0x2D3E3433, \
0x5179A4C3, 0xE3E1D6C3, 0xAB9D978B, 0x6244271F, \
0x3449616C, 0x6C645C50, 0x4443433A, 0x4A75908E, \
0x48172851, 0x505A8CBC, 0xD3B3A098, 0x7750464F, \
0x4E4F4C47, 0x4C4F4D4D, 0x46321B26, 0x50664A2A, \
0x42739DB2, 0xD4D9CBB2, 0x8C7F847A, 0x52321B10, \
0x233B4C53, 0x595D5B48, 0x404C5D66, 0x6B818D80, \
0x42162444, 0x3B5894B3, 0xC1AAA294, 0x6F545456, \
0x473D3D3C, 0x4345474A, 0x45362D52, 0x7C795329, \
0x3F7399AB, 0xC7CDBD98, 0x706C736B, 0x47271408, \
0x11283239, 0x4D5D5A4F, 0x51688D8E, 0x80818571, \
0x38131C2F, 0x33628FA6, 0xBDB0A88C, 0x77645E56, \
0x3F2F2E31, 0x3F43454D, 0x4E506B99, 0x9B7D5A2D, \
0x3F719BAB, 0xBCC0A380, 0x5D5E635C, 0x442A1C0B, \
0x0B19212D, 0x44606367, 0x7197B49D, 0x8479735B, \
0x21101724, 0x346286A3, 0xC2BDA88D, 0x86756B58, \
0x3C211524, 0x424C4E57, 0x658AC3CB, 0xAB846031, \
0x3E6E98AD, 0xB3B28C71, 0x50545A58, 0x4D3E2F1E, \
0x15151E2F, 0x45627A87, 0xA0BDAA8D, 0x7B69523C, \
0x11151E1E, 0x325B82A4, 0xC8BEA597, 0x9183795D, \
0x3C1A0F25, 0x4C606165, 0x8CCAF7DE, 0xB98D6436, \
0x3B6690AA, 0xA89F8162, 0x46505A64, 0x61524235, \
0x25192038, 0x4F688DAC, 0xC3AB776B, 0x674E301D, \
0x14232517, 0x32587CA3, 0xC0B3A19A, 0x978D8260, \
0x3C1E1E39, 0x5C7A7682, 0xBAE5FFEB, 0xC294683D, \
0x325C829E, 0x9B8C6948, 0x44566E81, 0x7663574A, \
0x2F1F2A44, 0x5B78A0C6, 0xAF724242, 0x442E110A, \
0x212A2113, 0x3253799A, 0xB0A59697, 0x9D91835C, \
0x4333394F, 0x739090AC, 0xD3E6FFF4, 0xC4986B40, \
0x284F6F8E, 0x8B6C3930, 0x4E6C939B, 0x87796F56, \
0x31263851, 0x6887B2B3, 0x7B471F19, 0x1E0F000F, \
0x2A27160B, 0x3051778C, 0xA0988E96, 0xA2997F5E, \
0x54505161, 0x8A9EAEC8, 0xD9F0FFF9, 0xC7936744, \
0x1C3C607F, 0x6E361435, 0x6787A8A2, 0x9D967A4D, \
0x2D2E4561, 0x7696AA87, 0x5D391200, 0x03000D21, \
0x27190806, 0x2E527180, 0x95918F9A, 0xAAA0806B, \
0x6F6B6570, 0x97ABC3D4, 0xE9FEFFFB, 0xC2896644, \
0x0D2B5064, 0x380F1D58, 0x84949FA0, 0xB3A26938, \
0x2939586F, 0x819D9577, 0x5D3F1700, 0x00112D35, \
0x17050106, 0x2F526B7A, 0x8F9499A4, 0xAFA38B80, \
0x857D757F, 0xA5BAD1E5, 0xFCFFFFF6, 0xBA8C6C39, \
0x061C3B33, 0x0C154279, 0x918C95A9, 0xB88F4F2F, \
0x344F6E7B, 0x899A9181, 0x684A2306, 0x1A3B4D3D, \
0x0700050B, 0x2E506B7B, 0x8F9AA5AB, 0xADA8A296, \
0x8C898190, 0xB4C3DEF4, 0xFFFFFFEF, 0xC09E6B29, \
0x0211190A, 0x11345B7F, 0x8C879EB3, 0xA070463A, \
0x51708385, 0x8BA1A18F, 0x6E503129, 0x516C6033, \
0x08071012, 0x29507381, 0x93A4A9A9, 0xACB9B898, \
0x8C8C8DA2, 0xB9C8E3F6, 0xFFFFF3F4, 0xD1A25C17, \
0x0106020D, 0x30455E70, 0x818EA8A9, 0x7F634F59, \
0x7D97978D, 0x90B2B491, 0x6C585466, 0x8F895E27, \
0x23242116, 0x29597D85, 0x97A8A0A4, 0xB8CCBD93, \
0x8C8C95A6, 0xBACEE3FA, 0xFFFAF5FF, 0xD594480C, \
0x0000092A, 0x44445B66, 0x819BA493, 0x72676682, \
0xABB5A598, 0xA0BEB58B, 0x6C6C8FAD, 0xB68E5A2E, \
0x4F49311E, 0x34648287, 0x94A099AD, 0xC8D1B999, \
0x8D8D91A2, 0xB9D4EBFD, 0xFAF5FFFF, 0xC67D3E11, \
0x050D213A, 0x44445C69, 0x8BA29A8B, 0x787885AA, \
0xC7C0AFA8, 0xADB7AA85, 0x7794CEE1, 0xC08F654F, \
0x7B623E2F, 0x486D7D81, 0x8F969FBC, 0xCCCEBFA8, \
0x9387899E, 0xBADCF2F4, 0xECF5FFFA, 0xB0734830, \
0x313C3D39, 0x40475E72, 0x96A09893, 0x8990A4C0, \
0xC8C2B8B4, 0xADAAA28A, 0x97CCFCF6, 0xC49D8782, \
0x94684E49, 0x5D72707C, 0x909AB2C3, 0xCDD6CDB4, \
0x978387A3, 0xC6E3EFE9, 0xDFEFFFE7, 0xA87F6768, \
0x706B5339, 0x3F495E7F, 0x9BA0A29F, 0x9AA9B3BD, \
0xBFBDBCB7, 0xA5A2A4A4, 0xCBFBFFFB, 0xD4BEB7AF, \
0x976C6267, 0x72766D80, 0x95ABC1CA, 0xD9E7D7B9, \
0x9A8791B2, 0xD2E5E7DB, 0xD1E7FEE0, 0xB49D97A0, \
0x997B5D3B, 0x3F4A638E, 0x9FAAAEA6, 0xA8B2ADB3, \
0xB4B6BEB6, 0xA2A2B8D0, 0xFBFFFFFE, 0xECE5DFC8, \
0x96787D87, 0x7D7C7B8B, 0x9FB3C9DB, 0xEFF1DBBA, \
0x9F91A2C3, 0xD9DCD3BF, 0xC0DEFBEC, 0xD5C9C6BD, \
0xA2795B38, 0x3C54769E, 0xA5B7B8AC, 0xACADA8AC, \
0xADB6BEB4, 0xA5AFD7F0, 0xFFFFFFFB, 0xFCFFF3CA, \
0x9E909D96, 0x81868A9D, 0xAAB7D4F2, 0xFFF5D9BA, \
0xA4A1B7D5, 0xD6BDA69F, 0xAFD0EFFB, 0xFAEDDFC1, \
0x9B705132, 0x446E94A6, 0xA9BFC1B3, 0xACA8A5A9, \
0xAFBCBEB7, 0xB5C8E0F2, 0xFFFFF3EA, 0xF7FFF3C7, \
0xB0B0AB8A, 0x818991A2, 0xACC6E5FF, 0xFFF7D9BD, \
0xADB3CCD8, 0xB9867681, 0x9DBCDBF9, 0xFFF7E0BA, \
0x8E654534, 0x6194A49F, 0xA6C4CCC0, 0xAFA9AAB2, \
0xBEC0BFC2, 0xCBCDCCDE, 0xF3EAD2D5, 0xE5F1EAC7, \
0xC8C09D79, 0x787F8A93, 0xA5D2F5FF, 0xFFF7D9C3, \
0xBCC4CDBA, 0x83525268, 0x85A4C9EB, 0xFBEDD7AE, \
0x80594048, 0x87A9938F, 0xA5CEDED0, 0xBAB3BAC7, \
0xCBC2C3CD, 0xCEB8B0C2, 0xCBBDB7C1, 0xD2E0E1CC, \
0xCAAB846C, 0x66697280, 0xA1D5FFFF, 0xFFF6DDCE, \
0xCAC2AC86, 0x502E364F, 0x6E94BDE1, 0xF3E1CC9F, \
0x7054506E, 0x98977C89, 0xADE0F0DC, 0xCBC8D4D9, \
0xD0C7C8C8, 0xB89A9398, 0x979AA1B3, 0xC7D5DCD0, \
0xAA816B5A, 0x51515B76, 0xA2D5FCFF, 0xFFF6E5D9, \
0xC7A58058, 0x30161C36, 0x5C8AB8DC, 0xECD9C08D, \
0x67606E86, 0x857A7B90, 0xBFF4FDEA, 0xE1E3E8DF, \
0xD2CBC3B4, 0x9A7F706B, 0x718394AD, 0xC2D0D2C4, \
0x7B5B4A3E, 0x383A4D73, 0xA4D1EFFF, 0xFFF9EAD7, \
0xAF855E3C, 0x1F090825, 0x5184B5D7, 0xE7D1AF80, \
0x676E857F, 0x6B7089A6, 0xD9FFFFFB, 0xFAFBEFDD, \
0xD4CBB498, 0x7F655050, 0x5D7391AD, 0xC1CAC0A3, \
0x583F2F21, 0x1B274676, 0xA4C6E3FF, 0xFFFBE8C4, \
0x97704D2E, 0x1502001B, 0x4E83B3D4, 0xDCC2A27A, \
0x6C7B8770, 0x66789BC4, 0xF1FFFFFF, 0xFFFFEBD6, \
0xD0C1A17C, 0x62483D47, 0x577396AE, 0xC0BFA67B, \
0x3F2D1F13, 0x0B1A4376, 0x9FC1E3FF, 0xFFF7DBAE, \
0x84614226, 0x0F000017, 0x4D84B6D0, 0xCCB39879, \
0x75838273, 0x728BB8E1, 0xFFFFFFFF, 0xFFFBE0C8, \
0xC1AF895B, 0x3F313544, 0x5A7DA0B3, 0xBAAD865C, \
0x3123190D, 0x08134071, 0x9FC9F3FF, 0xFFEFC89A, \
0x73533921, 0x0C02061C, 0x518BB7C7, 0xBCA28E7F, \
0x7C858584, 0x86A5D6F4, 0xFFFFFFFF, 0xFFEFCBB2, \
0xAC966635, 0x20253147, 0x6791B3B6, 0xAF946948, \
0x2A1F1309, 0x08193E73, 0xADE3FFFF, 0xFDDEB287, \
0x6448321F, 0x0C081427, 0x5B8FB3BC, 0xAA8F8782, \
0x81869198, 0xA0C3EBFF, 0xFFFFFFFF, 0xFEDDAD96, \
0x8E713E17, 0x0F1D3252, 0x7CAAC3B5, 0xA07C563C, \
0x281C0B05, 0x0C214583, 0xCBFFFFFF, 0xF2CA9B73, \
0x543D2D1C, 0x1016283A, 0x6494AFAF, 0x9B828281, \
0x82899DAA, 0xBCDFFAFF, 0xFFFFFFFF, 0xF1C18F76, \
0x69481D05, 0x061A3B65, 0x95BEC7AB, 0x8E694633, \
0x28150001, 0x132F57A1, 0xEDFFFFFF, 0xDFB28360, \
0x4635271D, 0x1C293C49, 0x6E97A9A5, 0x8E797A7B, \
0x7C89A5BD, 0xD4EFFCFF, 0xFFFFFFFF, 0xDBA47758, \
0x44250800, 0x021E4A7C, 0xA9C7BC9D, 0x7C5A3B2F, \
0x270C0002, 0x1A3F73C3, 0xFEFFFFF4, 0xC9976B4E, \
0x3B2D2325, 0x2D3C4857, 0x7C9AA69B, 0x81716D70, \
0x7385B2CE, 0xDCE5F3FF, 0xFFFFFFEF, 0xBD8B623E, \
0x260F0000, 0x072B5E91, 0xB4C0AC8D, 0x6D4E3832, \
0x26030006, 0x215294D6, 0xFFFFFFE1, 0xAE7B563F, \
0x2E232430, 0x3D475067, 0x8CA3A68F, 0x73645E65, \
0x6D87BACD, 0xC7CEEBFF, 0xFFFFFED3, 0xA1774E2B, \
0x13020000, 0x103A729F, 0xB3B49D7B, 0x604A433E, \
0x2000000A, 0x2A66A4D9, 0xFFFFF4CB, 0x93654532, \
0x211B283A, 0x464D5A78, 0x9EAFA281, 0x6454525D, \
0x6F8DB3B0, 0xA8BFE3FF, 0xFFFFE9B8, 0x8D673F1D, \
0x07000002, 0x1D4882A0, 0xADAB8D6F, 0x59575A48, \
0x1100000D, 0x3572AADE, 0xFFFFE0AC, 0x79513424, \
0x16162A3D, 0x4750668B, 0xAFB49D71, 0x52484553, \
0x6E838F87, 0x8FB3D9FB, 0xFFF6CCA0, 0x7D5D3210, \
0x0000000D, 0x2A5A869E, 0xA69D7D65, 0x62706E45, \
0x00000315, 0x3D77AFDD, 0xF0E6BA86, 0x5E392314, \
0x0C142A3C, 0x4654729E, 0xB6AF8C63, 0x493A3547, \
0x5B616168, 0x7FA6D0E9, 0xEDD7AC89, 0x714A2107, \
0x0000051A, 0x3A62879A, 0x97876D66, 0x767D6026, \
0x00010B25, 0x4A7FB0D3, 0xDBC1956B, 0x492A1406, \
0x07142A39, 0x465E83AD, 0xB79F755D, 0x492D293B, \
0x463E3C54, 0x76A0C1D5, 0xD7BF9B7C, 0x5C311705, \
0x00000C26, 0x45698B91, 0x8B786976, 0x856D3002, \
0x00091A35, 0x5D85A9C6, 0xBFA1805E, 0x3D1F0700, \
0x05162735, 0x4C6D99B9, 0xB28A6858, 0x42252439, \
0x3C28294E, 0x7798B5CC, 0xD0B79870, 0x40261505, \
0x00021430, 0x51788C8F, 0x86737282, 0x834E1200
var_8095D370: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_8095C370
.word \
0xF5900000, 0x07018060, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00018060, 0xF2000000, 0x000FC0FC, \
0xFD900000
.word var_8095C370
.word \
0xF5900100, 0x0701B86E, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881100, 0x0101B86E, 0xF2000000, 0x010FC0FC, \
0xFC272C60, 0x3510937F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xFA000080, 0xFFFFAAFF, \
0xFB000000, 0x96FF0000, 0xDE000000, 0x08000000, \
0x01012024
.word var_8095C130
.word \
0x06000204, 0x00000602, 0x06080A0C, 0x00080E0A, \
0x06061002, 0x00061210, 0x06140416, 0x00140004, \
0x06121810, 0x00121A18, 0x060E1C0A, 0x000E1E1C, \
0x061E161C, 0x001E1416, 0x061A2018, 0x001A2220, \
0xDF000000, 0x00000000
var_8095D478: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_8095C370
.word \
0xF5900000, 0x07018060, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00018060, 0xF2000000, 0x000FC0FC, \
0xFD900000
.word var_8095C370
.word \
0xF5900100, 0x0701BC6F, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881100, 0x0101BC6F, 0xF2000000, 0x010FC0FC, \
0xFC272C60, 0x3510937F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xFA000080, 0xFFFFAAFF, \
0xFB000000, 0x00960000, 0xDE000000, 0x09000000, \
0x01012024
.word var_8095C250
.word \
0x06000204, 0x00000602, 0x06080A0C, 0x00080E0A, \
0x06061002, 0x00061210, 0x06140416, 0x00140004, \
0x06121810, 0x00121A18, 0x060E1C0A, 0x000E1E1C, \
0x061E161C, 0x001E1416, 0x061A2018, 0x001A2220, \
0xDF000000, 0x00000000
var_8095D580: .word \
0x00000000, 0x00000000, 0x00000200, 0x00000000, \
0x00000002, 0x00000000, 0x00000000
var_8095D59C: .word \
0x04000400, 0x04000000, 0x00000000, 0x00000000, \
0x00000200, 0x02000000, 0x00000000, 0x00000000, \
0x000002CD, 0x02CD0000, 0x00000000, 0x00000000, \
0x00000000
var_8095D5D0: .word \
0x000C0001, 0x00010001, 0x00000000, 0x0014003C, \
0x00000000, 0x3FC00000, 0x000C0001, 0x00010001, \
0x00000000, 0x0014003C, 0x00000000, 0x3F800000
var_8095D600: .word var_8095D580
.word var_8095D5D0
.word var_8095D59C
.word 0x0001003C
var_8095D610: .word 0x01FF0000, 0x00000000, 0x00000000
var_8095D61C: .word 0xFF020000, 0x00000000
.word var_8095D370
var_8095D628: .word 0xFFFF0000, 0x00000000
.word var_8095D478
var_8095D634: .word var_8095D610
.word var_8095D61C
.word var_8095D628
var_8095D640: .word var_8095D634
.word 0x03000000
var_8095D648: .byte 0x00
var_8095D649: .byte 0x03
var_8095D64A: .word 0x0407090A, 0x0D0F1112, 0x1516191B, 0x1C1F2123
var_8095D65A: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

.section .rodata

.word \
0xC9BDBCA8, 0xB3ABBBCF, 0x00000000, 0xBEC3CCC7, \
0x00000000, 0xC9BDBCA8, 0xB3ABBBCF, 0x00000000
var_8095D680: .word 0x3D088889, 0x00000000, 0x00000000, 0x00000000

