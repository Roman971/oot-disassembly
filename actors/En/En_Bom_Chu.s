.section .text
func_809CE9F0:
    addiu   $sp, $sp, 0xFE28           # $sp = FFFFFE28
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x01DC($sp)            
    lui     a1, %hi(var_809CFEF4)      # a1 = 809D0000
    addiu   a1, a1, %lo(var_809CFEF4)  # a1 = 809CFEF4
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0174             # a1 = 00000174
    sw      a1, 0x002C($sp)            
    jal     func_8004A484              
    lw      a0, 0x01DC($sp)            
    lui     a3, %hi(var_809CFEE4)      # a3 = 809D0000
    addiu   t6, s0, 0x0194             # t6 = 00000194
    lw      a1, 0x002C($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809CFEE4)  # a3 = 809CFEE4
    lw      a0, 0x01DC($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lw      v0, 0x0190(s0)             # 00000190
    lui     t2, %hi(var_809CFEFD)      # t2 = 809D0000
    lui     t3, %hi(var_809CFF01)      # t3 = 809D0000
    lh      t7, 0x002E(v0)             # 0000002E
    lui     t8, %hi(var_809CFEFC)      # t8 = 809D0000
    lui     t9, %hi(var_809CFF00)      # t9 = 809D0000
    sh      t7, 0x0036(v0)             # 00000036
    lui     t0, %hi(var_809CFF04)      # t0 = 809D0000
    lui     t1, %hi(var_809CFF08)      # t1 = 809D0000
    lbu     t3, %lo(var_809CFF01)(t3)  
    lbu     t2, %lo(var_809CFEFD)(t2)  
    lbu     t8, %lo(var_809CFEFC)(t8)  
    lbu     t9, %lo(var_809CFF00)(t9)  
    lbu     t0, %lo(var_809CFF04)(t0)  
    lbu     t1, %lo(var_809CFF08)(t1)  
    lui     t4, %hi(var_809CFF05)      # t4 = 809D0000
    lui     t5, %hi(var_809CFF09)      # t5 = 809D0000
    lbu     t5, %lo(var_809CFF09)(t5)  
    lbu     t4, %lo(var_809CFF05)(t4)  
    sb      t3, 0x01BD($sp)            
    sb      t2, 0x01B9($sp)            
    sb      t8, 0x01B8($sp)            
    sb      t9, 0x01BC($sp)            
    sb      t0, 0x01C0($sp)            
    sb      t1, 0x01C4($sp)            
    lui     t1, %hi(var_809CFF03)      # t1 = 809D0000
    lui     t0, %hi(var_809CFEFF)      # t0 = 809D0000
    lui     t9, %hi(var_809CFF0A)      # t9 = 809D0000
    lui     t8, %hi(var_809CFF06)      # t8 = 809D0000
    lui     t2, %hi(var_809CFF07)      # t2 = 809D0000
    lui     t3, %hi(var_809CFF0B)      # t3 = 809D0000
    lui     t7, %hi(var_809CFF02)      # t7 = 809D0000
    lui     t6, %hi(var_809CFEFE)      # t6 = 809D0000
    lbu     t6, %lo(var_809CFEFE)(t6)  
    lbu     t7, %lo(var_809CFF02)(t7)  
    lbu     t3, %lo(var_809CFF0B)(t3)  
    lbu     t2, %lo(var_809CFF07)(t2)  
    lbu     t8, %lo(var_809CFF06)(t8)  
    lbu     t9, %lo(var_809CFF0A)(t9)  
    lbu     t0, %lo(var_809CFEFF)(t0)  
    lbu     t1, %lo(var_809CFF03)(t1)  
    sb      t5, 0x01C5($sp)            
    sb      t4, 0x01C1($sp)            
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t5, $sp, 0x0034            # t5 = FFFFFE5C
    sw      t4, 0x01C8($sp)            
    sw      $zero, 0x01CC($sp)         
    sw      $zero, 0x01D0($sp)         
    sw      t5, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x01DC($sp)            
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    sb      t6, 0x01BA($sp)            
    sb      t7, 0x01BE($sp)            
    sb      t3, 0x01C7($sp)            
    sb      t2, 0x01C3($sp)            
    sb      t8, 0x01C2($sp)            
    sb      t9, 0x01C6($sp)            
    sb      t0, 0x01BB($sp)            
    jal     func_8001AA5C              
    sb      t1, 0x01BF($sp)            
    addiu   t6, $sp, 0x0034            # t6 = FFFFFE5C
    sw      t6, 0x0014($sp)            
    lw      a0, 0x01DC($sp)            
    addiu   a1, s0, 0x0170             # a1 = 00000170
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001AA5C              
    sw      $zero, 0x0010($sp)         
    lui     t9, %hi(func_809CEFA8)     # t9 = 809D0000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    addiu   t9, t9, %lo(func_809CEFA8) # t9 = 809CEFA8
    sb      t7, 0x0003(s0)             # 00000003
    sh      t8, 0x0140(s0)             # 00000140
    sw      t9, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x01D8           # $sp = 00000000
    jr      $ra                        
    nop


func_809CEB90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8001AE04              
    lw      a1, 0x016C(t6)             # 0000016C
    lw      t7, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8001AE04              
    lw      a1, 0x0170(t7)             # 00000170
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0174             # a1 = 00000174
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CEBE0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lwc1    $f4, 0x0028(s4)            # 00000028
    lw      a3, 0x0024(s4)             # 00000024
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(s4)            # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    beq     v0, $zero, lbl_809CEC54    
    or      s0, $zero, $zero           # s0 = 00000000
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_809CEC54:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0084(s4)            # 00000084
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0140(s4)             # 00000140
    c.lt.s  $f0, $f8                   
    addiu   s1, s4, 0x0024             # s1 = 00000024
    lui     $at, 0x3E80                # $at = 3E800000
    swc1    $f0, 0x0068(s4)            # 00000068
    bc1f    lbl_809CECC4               
    nop
    mtc1    $at, $f26                  # $f26 = 0.25
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f24                  # $f24 = 30.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f22                  # $f22 = 5.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s2, $zero, 0x0028          # s2 = 00000028
    mfc1    a2, $f20                   
lbl_809CECA0:
    mfc1    a3, $f22                   
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    swc1    $f24, 0x0010($sp)          
    jal     func_8001CEDC              
    swc1    $f26, 0x0014($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s2, lbl_809CECA0       
    mfc1    a2, $f20                   
lbl_809CECC4:
    lui     t7, %hi(func_809CF630)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CF630) # t7 = 809CF630
    sw      t7, 0x013C(s4)             # 0000013C
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809CED00:
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f18, $f10, $f16           
    sub.s   $f4, $f8, $f18             
    swc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f16, $f6, $f10            
    nop
    mul.s   $f4, $f8, $f18             
    sub.s   $f6, $f16, $f4             
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f18, $f10, $f8            
    nop
    mul.s   $f6, $f16, $f4             
    sub.s   $f10, $f18, $f6            
    swc1    $f10, 0x0008(a2)           # 00000008
    jr      $ra                        
    nop


func_809CED74:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s0, 0x0018($sp)            
    lui     $at, %hi(var_809CFF30)     # $at = 809D0000
    lwc1    $f2, %lo(var_809CFF30)($at) 
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a2, 0x0098($sp)            
    sw      a1, 0x0078(s0)             # 00000078
    lh      t6, 0x0008(a1)             # 00000008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f8, $f6, $f2              
    swc1    $f8, 0x0084($sp)           
    lh      t7, 0x000A(a1)             # 0000000A
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f18, $f16, $f2            
    swc1    $f18, 0x0088($sp)          
    lh      t8, 0x000C(a1)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f2             
    swc1    $f10, 0x008C($sp)          
    lwc1    $f16, 0x0150(s0)           # 00000150
    lwc1    $f6, 0x0154(s0)            # 00000154
    mul.s   $f4, $f16, $f8             
    nop
    mul.s   $f16, $f18, $f6            
    lwc1    $f18, 0x0158(s0)           # 00000158
    mul.s   $f6, $f10, $f18            
    add.s   $f8, $f4, $f16             
    mtc1    $at, $f4                   # $f4 = 1.00
    add.s   $f12, $f8, $f6             
    abs.s   $f0, $f12                  
    c.le.s  $f4, $f0                   
    nop
    bc1t    lbl_809CEF94               
    nop
    jal     func_800CD890              
    nop
    lui     $at, %hi(var_809CFF34)     # $at = 809D0000
    lwc1    $f16, %lo(var_809CFF34)($at) 
    mov.s   $f12, $f0                  
    addiu   a0, s0, 0x0150             # a0 = 00000150
    c.lt.s  $f0, $f16                  
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFE8
    bc1tl   lbl_809CEF98               
    lw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    jal     func_809CED00              
    swc1    $f12, 0x0074($sp)          
    lwc1    $f12, 0x0074($sp)          
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFE8
    jal     func_800AC280              
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    sw      a0, 0x0024($sp)            
    jal     func_800AB958              
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFE8
    addiu   t9, $sp, 0x0078            # t9 = FFFFFFE8
    lw      a0, 0x0024($sp)            
    lw      t1, 0x0000(t9)             # FFFFFFE8
    addiu   a2, s0, 0x0144             # a2 = 00000144
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFF4
    sw      t1, 0x0000(a0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFEC
    sw      t0, 0x0004(a0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFF0
    sw      t1, 0x0008(a0)             # 00000008
    jal     func_809CED00              
    sw      a2, 0x0020($sp)            
    jal     func_800A5510              
    lw      a0, 0x0020($sp)            
    lui     $at, %hi(var_809CFF38)     # $at = 809D0000
    lwc1    $f10, %lo(var_809CFF38)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_809CEEE0               
    mtc1    $at, $f18                  # $f18 = 1.00
    jal     func_809CEBE0              
    lw      a1, 0x0098($sp)            
    beq     $zero, $zero, lbl_809CEF98 
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f18                  # $f18 = 0.00
lbl_809CEEE0:
    lwc1    $f8, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0148(s0)            # 00000148
    div.s   $f2, $f18, $f0             
    lwc1    $f10, 0x014C(s0)           # 0000014C
    addiu   t3, $sp, 0x0084            # t3 = FFFFFFF4
    addiu   a0, $sp, 0x002C            # a0 = FFFFFF9C
    addiu   a1, s0, 0x0030             # a1 = 00000030
    or      a2, $zero, $zero           # a2 = 00000000
    mul.s   $f6, $f8, $f2              
    nop
    mul.s   $f16, $f4, $f2             
    nop
    mul.s   $f18, $f10, $f2            
    swc1    $f6, 0x0144(s0)            # 00000144
    swc1    $f16, 0x0148(s0)           # 00000148
    swc1    $f18, 0x014C(s0)           # 0000014C
    lw      t5, 0x0000(t3)             # FFFFFFF4
    lw      t2, 0x0028($sp)            
    sw      t5, 0x0000(t2)             # 00000000
    lw      t4, 0x0004(t3)             # FFFFFFF8
    sw      t4, 0x0004(t2)             # 00000004
    lw      t5, 0x0008(t3)             # FFFFFFFC
    sw      t5, 0x0008(t2)             # 00000008
    lwc1    $f8, 0x015C(s0)            # 0000015C
    lwc1    $f16, 0x0084($sp)          
    lwc1    $f10, 0x0088($sp)          
    swc1    $f8, 0x002C($sp)           
    lwc1    $f6, 0x0160(s0)            # 00000160
    lwc1    $f18, 0x008C($sp)          
    swc1    $f6, 0x0030($sp)           
    lwc1    $f4, 0x0164(s0)            # 00000164
    swc1    $f16, 0x003C($sp)          
    swc1    $f10, 0x0040($sp)          
    swc1    $f18, 0x0044($sp)          
    swc1    $f4, 0x0034($sp)           
    lwc1    $f8, 0x0144(s0)            # 00000144
    swc1    $f8, 0x004C($sp)           
    lwc1    $f6, 0x0148(s0)            # 00000148
    swc1    $f6, 0x0050($sp)           
    lwc1    $f4, 0x014C(s0)            # 0000014C
    jal     func_800ABF50              
    swc1    $f4, 0x0054($sp)           
    lh      t6, 0x0030(s0)             # 00000030
    subu    t7, $zero, t6              
    sh      t7, 0x0030(s0)             # 00000030
lbl_809CEF94:
    lw      $ra, 0x001C($sp)           
lbl_809CEF98:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0090           # $sp = 00000000
    jr      $ra                        
    nop


func_809CEFA8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sdc1    $f20, 0x0018($sp)          
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0034($sp)            
    lh      v0, 0x0140(s0)             # 00000140
    beq     v0, $zero, lbl_809CEFE8    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0140(s0)             # 00000140
    lh      v0, 0x0140(s0)             # 00000140
lbl_809CEFE8:
    bne     v0, $zero, lbl_809CF000    
    nop
    jal     func_809CEBE0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809CF104 
    lw      $ra, 0x002C($sp)           
lbl_809CF000:
    jal     func_80022D40              
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_809CF100    
    lw      t8, 0x0034($sp)            
    lw      t0, 0x0024(t8)             # 00000024
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sw      t0, 0x0024(s0)             # 00000024
    lw      t9, 0x0028(t8)             # 00000028
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    sw      t9, 0x0028(s0)             # 00000028
    lw      t0, 0x002C(t8)             # 0000002C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t0, 0x002C(s0)             # 0000002C
    sw      t1, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f20, 0x0010($sp)          
    lw      t2, 0x0034($sp)            
    lh      t3, 0x00B6(t2)             # 000000B6
    sh      t3, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0144(s0)            # 00000144
    swc1    $f20, 0x0148(s0)           # 00000148
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    swc1    $f0, 0x014C(s0)            # 0000014C
    swc1    $f20, 0x0150(s0)           # 00000150
    swc1    $f20, 0x0158(s0)           # 00000158
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f4, 0x0154(s0)            # 00000154
    lh      a0, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x015C(s0)            # 0000015C
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f6, 0x0160(s0)            # 00000160
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    swc1    $f0, 0x0164(s0)            # 00000164
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0078(s0)             # 00000078
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_809CED74              
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      t4, 0x0004(s0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    ori     t5, t4, 0x0001             # t5 = 00000001
    jal     func_80022FFC              
    sw      t5, 0x0004(s0)             # 00000004
    lui     t6, %hi(func_809CF118)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809CF118) # t6 = 809CF118
    sw      t6, 0x013C(s0)             # 0000013C
lbl_809CF100:
    lw      $ra, 0x002C($sp)           
lbl_809CF104:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809CF118:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    lui     $at, 0x4100                # $at = 41000000
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    mtc1    $at, $f0                   # $f0 = 8.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s2, 0x0040($sp)            
    sdc1    $f20, 0x0030($sp)          
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lh      v0, 0x0140(s1)             # 00000140
    swc1    $f0, 0x0068(s1)            # 00000068
    mul.s   $f16, $f0, $f4             
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_809CF16C    
    mov.s   $f20, $f16                 
    sh      t6, 0x0140(s1)             # 00000140
    lh      v0, 0x0140(s1)             # 00000140
lbl_809CF16C:
    beq     v0, $zero, lbl_809CF1A8    
    nop
    lbu     t7, 0x0185(s1)             # 00000185
    andi    t8, t7, 0x0002             # t8 = 00000000
    bne     t8, $zero, lbl_809CF1A8    
    nop
    lbu     t9, 0x0186(s1)             # 00000186
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_809CF1BC    
    lwc1    $f0, 0x0150(s1)            # 00000150
    lw      t1, 0x0180(s1)             # 00000180
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     t2, 0x0002(t1)             # 00000002
    beql    t2, $at, lbl_809CF1BC      
    lwc1    $f0, 0x0150(s1)            # 00000150
lbl_809CF1A8:
    jal     func_809CEBE0              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809CF618 
    lw      $ra, 0x0044($sp)           
    lwc1    $f0, 0x0150(s1)            # 00000150
lbl_809CF1BC:
    lwc1    $f6, 0x0024(s1)            # 00000024
    lui     $at, 0x4080                # $at = 40800000
    add.s   $f8, $f0, $f0              
    mtc1    $at, $f14                  # $f14 = 4.00
    addiu   s2, s0, 0x07C0             # s2 = 000007C0
    addiu   t3, $sp, 0x0098            # t3 = FFFFFFF8
    add.s   $f10, $f6, $f8             
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    swc1    $f10, 0x007C($sp)          
    lwc1    $f2, 0x0154(s1)            # 00000154
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    add.s   $f4, $f2, $f2              
    addiu   t8, $sp, 0x0090            # t8 = FFFFFFF0
    or      a0, s2, $zero              # a0 = 000007C0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
    add.s   $f6, $f18, $f4             
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD0
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFB8
    swc1    $f6, 0x0080($sp)           
    lwc1    $f12, 0x0158(s1)           # 00000158
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f10, $f12, $f12           
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x0084($sp)          
    lwc1    $f6, 0x0150(s1)            # 00000150
    lwc1    $f4, 0x0024(s1)            # 00000024
    mul.s   $f8, $f6, $f14             
    sub.s   $f10, $f4, $f8             
    swc1    $f10, 0x0070($sp)          
    lwc1    $f6, 0x0154(s1)            # 00000154
    lwc1    $f18, 0x0028(s1)           # 00000028
    mul.s   $f4, $f6, $f14             
    sub.s   $f8, $f18, $f4             
    swc1    $f8, 0x0074($sp)           
    lwc1    $f6, 0x0158(s1)            # 00000158
    lwc1    $f10, 0x002C(s1)           # 0000002C
    swc1    $f16, 0x0054($sp)          
    mul.s   $f18, $f6, $f14            
    sw      s0, 0x00A4($sp)            
    sw      t8, 0x0024($sp)            
    sw      t7, 0x0020($sp)            
    sw      t6, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sub.s   $f4, $f10, $f18            
    sw      t3, 0x0010($sp)            
    jal     func_800308B4              
    swc1    $f4, 0x0078($sp)           
    beq     v0, $zero, lbl_809CF3F4    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x0098($sp)            
    jal     func_8003444C              
    lw      a2, 0x0090($sp)            
    andi    t9, v0, 0x0030             # t9 = 00000000
    bne     t9, $zero, lbl_809CF3F4    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x0098($sp)            
    jal     func_80034700              
    lw      a2, 0x0090($sp)            
    bnel    v0, $zero, lbl_809CF3F8    
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f8, 0x0144(s1)            # 00000144
    lwc1    $f10, 0x007C($sp)          
    addiu   t0, $sp, 0x009C            # t0 = FFFFFFFC
    mul.s   $f6, $f8, $f20             
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $sp, 0x0094            # t5 = FFFFFFF4
    or      a0, s2, $zero              # a0 = 000007C0
    add.s   $f18, $f6, $f10            
    lwc1    $f6, 0x0080($sp)           
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD0
    swc1    $f18, 0x0070($sp)          
    lwc1    $f4, 0x0148(s1)            # 00000148
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFC4
    mul.s   $f8, $f4, $f20             
    add.s   $f10, $f8, $f6             
    lwc1    $f8, 0x0084($sp)           
    swc1    $f10, 0x0074($sp)          
    lwc1    $f18, 0x014C(s1)           # 0000014C
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    mul.s   $f4, $f18, $f20            
    sw      t3, 0x001C($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    add.s   $f6, $f4, $f8              
    jal     func_800308B4              
    swc1    $f6, 0x0078($sp)           
    beq     v0, $zero, lbl_809CF3AC    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x009C($sp)            
    jal     func_8003444C              
    lw      a2, 0x0094($sp)            
    andi    t6, v0, 0x0030             # t6 = 00000000
    bne     t6, $zero, lbl_809CF3AC    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x009C($sp)            
    jal     func_80034700              
    lw      a2, 0x0094($sp)            
    bne     v0, $zero, lbl_809CF3AC    
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x009C($sp)            
    jal     func_809CED74              
    lw      a2, 0x00A4($sp)            
    addiu   t7, $sp, 0x0064            # t7 = FFFFFFC4
    lw      t9, 0x0000(t7)             # FFFFFFC4
    mtc1    $zero, $f10                # $f10 = 0.00
    sw      t9, 0x0024(s1)             # 00000024
    lw      t8, 0x0004(t7)             # FFFFFFC8
    sw      t8, 0x0028(s1)             # 00000028
    lw      t9, 0x0008(t7)             # FFFFFFCC
    sw      t9, 0x002C(s1)             # 0000002C
    lw      t0, 0x0094($sp)            
    swc1    $f10, 0x0068(s1)           # 00000068
    beq     $zero, $zero, lbl_809CF5CC 
    sb      t0, 0x007D(s1)             # 0000007D
lbl_809CF3AC:
    lw      t1, 0x0098($sp)            
    lw      t2, 0x0078(s1)             # 00000078
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, t1, $zero              # a1 = 00000000
    beql    t1, t2, lbl_809CF3D0       
    addiu   t3, $sp, 0x0058            # t3 = FFFFFFB8
    jal     func_809CED74              
    lw      a2, 0x00A4($sp)            
    addiu   t3, $sp, 0x0058            # t3 = FFFFFFB8
lbl_809CF3D0:
    lw      t5, 0x0000(t3)             # FFFFFFB8
    sw      t5, 0x0024(s1)             # 00000024
    lw      t4, 0x0004(t3)             # FFFFFFBC
    sw      t4, 0x0028(s1)             # 00000028
    lw      t5, 0x0008(t3)             # FFFFFFC0
    sw      t5, 0x002C(s1)             # 0000002C
    lw      t6, 0x0090($sp)            
    beq     $zero, $zero, lbl_809CF5CC 
    sb      t6, 0x007D(s1)             # 0000007D
lbl_809CF3F4:
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_809CF3F8:
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
    swc1    $f18, 0x0068(s1)           # 00000068
    lw      t8, 0x0000(a2)             # FFFFFFD0
    lwc1    $f4, 0x0054($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    sw      t8, 0x0000(a1)             # FFFFFFDC
    lw      t8, 0x0008(a2)             # FFFFFFD8
    lw      t7, 0x0004(a2)             # FFFFFFD4
    mul.s   $f20, $f4, $f8             
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t8, 0x0008(a1)             # FFFFFFE4
    sw      t7, 0x0004(a1)             # FFFFFFE0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
lbl_809CF434:
    bne     s0, $zero, lbl_809CF47C    
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD0
    lwc1    $f10, 0x0144(s1)           # 00000144
    lwc1    $f6, 0x007C($sp)           
    lwc1    $f8, 0x0080($sp)           
    mul.s   $f18, $f10, $f20           
    sub.s   $f4, $f6, $f18             
    swc1    $f4, 0x0070($sp)           
    lwc1    $f10, 0x0148(s1)           # 00000148
    lwc1    $f4, 0x0084($sp)           
    mul.s   $f6, $f10, $f20            
    sub.s   $f18, $f8, $f6             
    swc1    $f18, 0x0074($sp)          
    lwc1    $f10, 0x014C(s1)           # 0000014C
    mul.s   $f8, $f10, $f20            
    sub.s   $f6, $f4, $f8              
    beq     $zero, $zero, lbl_809CF504 
    swc1    $f6, 0x0078($sp)           
lbl_809CF47C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    s0, $at, lbl_809CF4CC      
    lwc1    $f8, 0x015C(s1)            # 0000015C
    lwc1    $f18, 0x015C(s1)           # 0000015C
    lwc1    $f4, 0x007C($sp)           
    mul.s   $f10, $f18, $f20           
    add.s   $f8, $f10, $f4             
    lwc1    $f10, 0x0080($sp)          
    swc1    $f8, 0x0070($sp)           
    lwc1    $f6, 0x0160(s1)            # 00000160
    mul.s   $f18, $f6, $f20            
    add.s   $f4, $f18, $f10            
    lwc1    $f18, 0x0084($sp)          
    swc1    $f4, 0x0074($sp)           
    lwc1    $f8, 0x0164(s1)            # 00000164
    mul.s   $f6, $f8, $f20             
    add.s   $f10, $f6, $f18            
    beq     $zero, $zero, lbl_809CF504 
    swc1    $f10, 0x0078($sp)          
    lwc1    $f8, 0x015C(s1)            # 0000015C
lbl_809CF4CC:
    lwc1    $f4, 0x007C($sp)           
    lwc1    $f10, 0x0080($sp)          
    mul.s   $f6, $f8, $f20             
    sub.s   $f18, $f4, $f6             
    swc1    $f18, 0x0070($sp)          
    lwc1    $f8, 0x0160(s1)            # 00000160
    lwc1    $f18, 0x0084($sp)          
    mul.s   $f4, $f8, $f20             
    sub.s   $f6, $f10, $f4             
    swc1    $f6, 0x0074($sp)           
    lwc1    $f8, 0x0164(s1)            # 00000164
    mul.s   $f10, $f8, $f20            
    sub.s   $f4, $f18, $f10            
    swc1    $f4, 0x0078($sp)           
lbl_809CF504:
    addiu   t9, $sp, 0x009C            # t9 = FFFFFFFC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $sp, 0x0094            # t4 = FFFFFFF4
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0020($sp)            
    sw      t1, 0x001C($sp)            
    sw      t2, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 000007C0
    jal     func_800308B4              
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFC4
    beq     v0, $zero, lbl_809CF5A8    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x009C($sp)            
    jal     func_8003444C              
    lw      a2, 0x0094($sp)            
    andi    t5, v0, 0x0030             # t5 = 00000000
    bne     t5, $zero, lbl_809CF5A8    
    or      a0, s2, $zero              # a0 = 000007C0
    lw      a1, 0x009C($sp)            
    jal     func_80034700              
    lw      a2, 0x0094($sp)            
    bne     v0, $zero, lbl_809CF5A8    
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x009C($sp)            
    jal     func_809CED74              
    lw      a2, 0x00A4($sp)            
    addiu   t6, $sp, 0x0064            # t6 = FFFFFFC4
    lw      t8, 0x0000(t6)             # FFFFFFC4
    sw      t8, 0x0024(s1)             # 00000024
    lw      t7, 0x0004(t6)             # FFFFFFC8
    sw      t7, 0x0028(s1)             # 00000028
    lw      t8, 0x0008(t6)             # FFFFFFCC
    sw      t8, 0x002C(s1)             # 0000002C
    lw      t9, 0x0094($sp)            
    beq     $zero, $zero, lbl_809CF5B8 
    sb      t9, 0x007D(s1)             # 0000007D
lbl_809CF5A8:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    s0, $at, lbl_809CF434      
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
lbl_809CF5B8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s0, $at, lbl_809CF5CC      
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809CEBE0              
    lw      a1, 0x00A4($sp)            
lbl_809CF5CC:
    lh      a1, 0x0030(s1)             # 00000030
    addiu   a0, s1, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    jal     func_80063704              
    sra     a1, a1, 16                 
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0032(s1)             # 00000032
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s1, 0x00B8             # a0 = 000000B8
    lh      a1, 0x0034(s1)             # 00000034
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800230A0              
    addiu   a1, $zero, 0x1031          # a1 = 00001031
    lw      $ra, 0x0044($sp)           
lbl_809CF618:
    ldc1    $f20, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_809CF630:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x0140(a0)             # 00000140
    beq     v0, $zero, lbl_809CF650    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0140(a0)             # 00000140
    lh      v0, 0x0140(a0)             # 00000140
lbl_809CF650:
    bnel    v0, $zero, lbl_809CF664    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_809CF664:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CF670:
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0168(a0)            # 00000168
    lwc1    $f10, 0x015C(a0)           # 0000015C
    lwc1    $f8, 0x0024(a0)            # 00000024
    add.s   $f0, $f4, $f6              
    lwc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f4, 0x0150(a0)            # 00000150
    mul.s   $f16, $f10, $f0            
    add.s   $f18, $f8, $f16            
    mul.s   $f10, $f4, $f6             
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f16, 0x0144(a0)           # 00000144
    mul.s   $f6, $f16, $f4             
    add.s   $f8, $f18, $f10            
    add.s   $f18, $f8, $f6             
    swc1    $f18, 0x0000(a2)           # 00000000
    lwc1    $f16, 0x0160(a0)           # 00000160
    lwc1    $f18, 0x0004(a1)           # 00000004
    lwc1    $f6, 0x0154(a0)            # 00000154
    mul.s   $f4, $f16, $f0             
    lwc1    $f10, 0x0028(a0)           # 00000028
    mul.s   $f16, $f6, $f18            
    lwc1    $f6, 0x0008(a1)            # 00000008
    add.s   $f8, $f10, $f4             
    lwc1    $f4, 0x0148(a0)            # 00000148
    mul.s   $f18, $f4, $f6             
    add.s   $f10, $f8, $f16            
    add.s   $f8, $f10, $f18            
    swc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f4, 0x0164(a0)            # 00000164
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f18, 0x0158(a0)           # 00000158
    mul.s   $f6, $f4, $f0              
    lwc1    $f16, 0x002C(a0)           # 0000002C
    mul.s   $f4, $f18, $f8             
    lwc1    $f18, 0x0008(a1)           # 00000008
    add.s   $f10, $f16, $f6            
    lwc1    $f6, 0x014C(a0)            # 0000014C
    mul.s   $f8, $f6, $f18             
    add.s   $f16, $f10, $f4            
    add.s   $f10, $f16, $f8            
    swc1    $f10, 0x0008(a2)           # 00000008
    jr      $ra                        
    nop


func_809CF720:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0030($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lwc1    $f4, 0x0024(t6)            # 00000024
    swc1    $f12, 0x0028($sp)          
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    swc1    $f4, 0x0024($sp)           
    lwc1    $f6, 0x002C(t6)            # 0000002C
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_8001CF3C              
    swc1    $f6, 0x002C($sp)           
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sw      t7, 0x0010($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sw      t8, 0x0010($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809CF7AC:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     t6, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    beq     t6, $at, lbl_809CF8AC      
    sw      t6, 0x0030($sp)            
    lh      a3, 0x00B6(s0)             # 000000B6
    or      a1, t6, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80035180              
    sh      a3, 0x006E($sp)            
    lh      a3, 0x006E($sp)            
    lh      v1, 0x00B6(s0)             # 000000B6
    beq     a3, v1, lbl_809CF8AC       
    subu    a3, v1, a3                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sll     a0, a3, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sh      a3, 0x006E($sp)            
    lh      a3, 0x006E($sp)            
    swc1    $f0, 0x0068($sp)           
    sll     a0, a3, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f12, 0x0068($sp)          
    lwc1    $f14, 0x014C(s0)           # 0000014C
    lwc1    $f2, 0x0144(s0)            # 00000144
    lwc1    $f16, 0x0158(s0)           # 00000158
    mul.s   $f4, $f14, $f12            
    nop
    mul.s   $f6, $f0, $f2              
    nop
    mul.s   $f10, $f14, $f0            
    lwc1    $f14, 0x0164(s0)           # 00000164
    mul.s   $f18, $f12, $f2            
    lwc1    $f2, 0x0150(s0)            # 00000150
    add.s   $f8, $f4, $f6              
    mul.s   $f6, $f16, $f12            
    swc1    $f8, 0x0144(s0)            # 00000144
    mul.s   $f8, $f0, $f2              
    sub.s   $f4, $f10, $f18            
    mul.s   $f18, $f16, $f0            
    swc1    $f4, 0x014C(s0)            # 0000014C
    mul.s   $f4, $f12, $f2             
    lwc1    $f2, 0x015C(s0)            # 0000015C
    add.s   $f10, $f6, $f8             
    mul.s   $f8, $f14, $f12            
    swc1    $f10, 0x0150(s0)           # 00000150
    mul.s   $f10, $f0, $f2             
    sub.s   $f6, $f18, $f4             
    mul.s   $f4, $f14, $f0             
    swc1    $f6, 0x0158(s0)            # 00000158
    mul.s   $f6, $f12, $f2             
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x015C(s0)           # 0000015C
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0164(s0)            # 00000164
lbl_809CF8AC:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_800212B8              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x0024(s0)           # 00000024
    lw      t1, 0x0190(s0)             # 00000190
    lui     $at, 0x0001                # $at = 00010000
    trunc.w.s $f18, $f10                 
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0174             # a2 = 00000174
    mfc1    t0, $f18                   
    or      a0, s1, $zero              # a0 = 00000000
    sh      t0, 0x0030(t1)             # 00000030
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      t4, 0x0190(s0)             # 00000190
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x0032(t4)             # 00000032
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lw      t7, 0x0190(s0)             # 00000190
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    nop
    sh      t6, 0x0034(t7)             # 00000034
    sw      a2, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0030($sp)            
    lw      t8, 0x013C(s0)             # 0000013C
    lui     t9, %hi(func_809CEFA8)     # t9 = 809D0000
    addiu   t9, t9, %lo(func_809CEFA8) # t9 = 809CEFA8
    lw      a1, 0x0030($sp)            
    beq     t9, t8, lbl_809CF94C       
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_809CF94C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t1, 0x013C(s0)             # 0000013C
    lui     t0, %hi(func_809CF118)     # t0 = 809D0000
    addiu   t0, t0, %lo(func_809CF118) # t0 = 809CF118
    bne     t0, t1, lbl_809CFB5C       
    addiu   t2, s1, 0x07C0             # t2 = 000007C0
    jal     func_800CDCCC              # Rand.Next() float
    sw      t2, 0x0030($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0038($sp)           
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f18                  # $f18 = 512.00
    lh      t3, 0x0140(s0)             # 00000140
    lui     $at, 0x4640                # $at = 46400000
    mul.s   $f4, $f0, $f18             
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    $at, $f6                   # $f6 = 12288.00
    cvt.s.w $f18, $f10                 
    add.s   $f8, $f4, $f6              
    mul.s   $f4, $f8, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lwc1    $f10, 0x0038($sp)          
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    mul.s   $f18, $f10, $f8            
    lui     a1, %hi(var_809CFF0C)      # a1 = 809D0000
    addiu   a1, a1, %lo(var_809CFF0C)  # a1 = 809CFF0C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFDC
    add.s   $f6, $f4, $f18             
    mul.s   $f10, $f0, $f6             
    jal     func_809CF670              
    swc1    $f10, 0x0168(s0)           # 00000168
    lui     a1, %hi(var_809CFF18)      # a1 = 809D0000
    addiu   a1, a1, %lo(var_809CFF18)  # a1 = 809CFF18
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809CF670              
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD0
    jal     func_8001A890              
    lw      a0, 0x016C(s0)             # 0000016C
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    jal     func_80013F30              
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD0
    lui     a1, %hi(var_809CFF24)      # a1 = 809D0000
    addiu   a1, a1, %lo(var_809CFF24)  # a1 = 809CFF24
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809CF670              
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD0
    jal     func_8001A890              
    lw      a0, 0x0170(s0)             # 00000170
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    jal     func_80013F30              
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD0
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   t5, $sp, 0x0040            # t5 = FFFFFFC8
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFCC
    swc1    $f8, 0x0040($sp)           
    lw      a3, 0x002C(s0)             # 0000002C
    lw      a2, 0x0024(s0)             # 00000024
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800347FC              
    lw      a1, 0x0030($sp)            
    beq     v0, $zero, lbl_809CFB44    
    lwc1    $f4, 0x0040($sp)           
    lwc1    $f18, 0x0028(s0)           # 00000028
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f6, $f4, $f18             
    swc1    $f6, 0x0084(s0)            # 00000084
    lwc1    $f10, 0x0084(s0)           # 00000084
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_809CFAD8               
    lhu     t8, 0x0088(s0)             # 00000088
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t7, v0, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_809CFACC    
    andi    t9, v0, 0xFFDF             # t9 = 00000000
    jal     func_809CF720              
    lw      a2, 0x0040($sp)            
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t9, v0, 0xFFDF             # t9 = 00000000
lbl_809CFACC:
    beq     $zero, $zero, lbl_809CFB5C 
    sh      t9, 0x0088(s0)             # 00000088
    lhu     t8, 0x0088(s0)             # 00000088
lbl_809CFAD8:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    andi    t0, t8, 0x0020             # t0 = 00000000
    bne     t0, $zero, lbl_809CFB14    
    lui     a3, 0x4040                 # a3 = 40400000
    lh      t1, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0078         # $at = 00000078
    lw      a2, 0x0040($sp)            
    beql    t1, $at, lbl_809CFB18      
    lui     $at, 0x4170                # $at = 41700000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809CF720              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809CFB38 
    lhu     t2, 0x0088(s0)             # 00000088
lbl_809CFB14:
    lui     $at, 0x4170                # $at = 41700000
lbl_809CFB18:
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    mfc1    a2, $f0                    
    swc1    $f8, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f4, 0x0014($sp)           
    lhu     t2, 0x0088(s0)             # 00000088
lbl_809CFB38:
    ori     t3, t2, 0x0020             # t3 = 00000020
    beq     $zero, $zero, lbl_809CFB5C 
    sh      t3, 0x0088(s0)             # 00000088
lbl_809CFB44:
    lhu     t4, 0x0088(s0)             # 00000088
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    andi    t5, t4, 0xFFDF             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
    swc1    $f18, 0x0084(s0)           # 00000084
lbl_809CFB5C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_809CFB70:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x0140(s0)             # 00000140
    mtc1    $zero, $f14                # $f14 = 0.00
    slti    $at, v0, 0x0028            
    bne     $at, $zero, lbl_809CFBD0   
    addiu   $at, $zero, 0x0014         # $at = 00000014
    div     $zero, v0, $at             
    mfhi    a0                         
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_809CFBFC 
    mtc1    a1, $f8                    # $f8 = 0.00
lbl_809CFBD0:
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_809CFBF4   
    andi    a0, v0, 0x0001             # a0 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at             
    mfhi    a0                         
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     $zero, $zero, lbl_809CFBFC 
    mtc1    a1, $f8                    # $f8 = 0.00
lbl_809CFBF4:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    a1, $f8                    # $f8 = 0.00
lbl_809CFBFC:
    slt     $at, a1, a0                
    beq     $at, $zero, lbl_809CFC10   
    cvt.s.w $f10, $f8                  
    sll     t7, a1,  1                 
    subu    a0, t7, a0                 
lbl_809CFC10:
    mtc1    a0, $f4                    # $f4 = 0.00
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f2                   # $f2 = 9.00
    cvt.s.w $f6, $f4                   
    div.s   $f0, $f6, $f10             
    lui     $at, 0x4351                # $at = 43510000
    mtc1    $at, $f16                  # $f16 = 209.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    mul.s   $f18, $f0, $f16            
    add.s   $f4, $f18, $f2             
    cfc1    t0, $f31                   
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f8, $f4                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_809CFCBC    
    mfc1    t1, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f8, $f4, $f8              
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_809CFCB0    
    nop
    mfc1    t1, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809CFCC8 
    or      t1, t1, $at                # t1 = 80000000
lbl_809CFCB0:
    beq     $zero, $zero, lbl_809CFCC8 
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f8                    
lbl_809CFCBC:
    nop
    bltz    t1, lbl_809CFCB0           
    nop
lbl_809CFCC8:
    lui     $at, 0x4208                # $at = 42080000
    ctc1    t0, $f31                   
    mtc1    $at, $f6                   # $f6 = 34.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f0, $f6             
    sll     t3, t1, 24                 
    add.s   $f16, $f2, $f10            
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f18, $f16                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_809CFD54    
    mfc1    t5, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_809CFD48    
    nop
    mfc1    t5, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809CFD60 
    or      t5, t5, $at                # t5 = 80000000
lbl_809CFD48:
    beq     $zero, $zero, lbl_809CFD60 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f18                   
lbl_809CFD54:
    nop
    bltz    t5, lbl_809CFD48           
    nop
lbl_809CFD60:
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f4                   # $f4 = 35.00
    lui     $at, 0xC20C                # $at = C20C0000
    ctc1    t4, $f31                   
    mtc1    $at, $f8                   # $f8 = -35.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    andi    t6, t5, 0x00FF             # t6 = 000000FF
    mul.s   $f6, $f0, $f8              
    sll     t7, t6, 16                 
    or      t8, t3, t7                 # t8 = 00000000
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f10, $f4, $f6             
    cfc1    t9, $f31                   
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_809CFDFC    
    mfc1    t0, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_809CFDF0    
    nop
    mfc1    t0, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809CFE08 
    or      t0, t0, $at                # t0 = 80000000
lbl_809CFDF0:
    beq     $zero, $zero, lbl_809CFE08 
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f16                   
lbl_809CFDFC:
    nop
    bltz    t0, lbl_809CFDF0           
    nop
lbl_809CFE08:
    andi    t1, t0, 0x00FF             # t1 = 000000FF
    sll     t2, t1,  8                 
    or      t4, t8, t2                 # t4 = 00000000
    ctc1    t9, $f31                   
    ori     t5, t4, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v0)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f18, 0x0168(s0)           # 00000168
    mfc1    a2, $f14                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f18, $f8            
    jal     func_800AA7F4              
    nop
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    lw      t7, 0x0024($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t7)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t1, 0x0400                 # t1 = 04000000
    addiu   t1, t1, 0x7E10             # t1 = 04007E10
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop

.section .data

var_809CFEA0: .word 0x00DA0300, 0x00000010, 0x00010000, 0x000001D4
.word func_809CE9F0
.word func_809CEB90
.word func_809CF7AC
.word func_809CFB70
var_809CFEC0: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010100, 0x01000000, 0x00000000, \
0x000C0064
var_809CFEE4: .word 0x0A000931, 0x20000000, 0x00000001
.word var_809CFEC0
var_809CFEF4: .word 0x801F0002, 0x4850000A
var_809CFEFC: .byte 0xFA
var_809CFEFD: .byte 0x00
var_809CFEFE: .byte 0x00
var_809CFEFF: .byte 0xFA
var_809CFF00: .byte 0xC8
var_809CFF01: .byte 0x00
var_809CFF02: .byte 0x00
var_809CFF03: .byte 0x82
var_809CFF04: .byte 0x96
var_809CFF05: .byte 0x00
var_809CFF06: .byte 0x00
var_809CFF07: .byte 0x64
var_809CFF08: .byte 0x64
var_809CFF09: .byte 0x00
var_809CFF0A: .byte 0x00
var_809CFF0B: .byte 0x32
var_809CFF0C: .word 0x00000000, 0x40E00000, 0xC0C00000
var_809CFF18: .word 0x41400000, 0x00000000, 0xC0A00000
var_809CFF24: .word 0xC1400000, 0x00000000, 0xC0A00000

.section .rodata

var_809CFF30: .word 0x38000100
var_809CFF34: .word 0x3A83126F
var_809CFF38: .word 0x3A83126F, 0x00000000

