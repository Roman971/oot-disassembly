.section .text
func_809EB050:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t0, $sp, 0x0048            # t0 = FFFFFFF0
    lui     t6, %hi(var_809EBA1C)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809EBA1C)  # t6 = 809EBA1C
    lw      t8, 0x0000(t6)             # 809EBA1C
    lui     t3, %hi(var_809EBA28)      # t3 = 809F0000
    addiu   t3, t3, %lo(var_809EBA28)  # t3 = 809EBA28
    sw      t8, 0x0000(t0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809EBA20
    addiu   t9, $sp, 0x003C            # t9 = FFFFFFE4
    lui     a1, %hi(var_809EBA34)      # a1 = 809F0000
    sw      t7, 0x0004(t0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809EBA24
    addiu   a1, a1, %lo(var_809EBA34)  # a1 = 809EBA34
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0008(t0)             # FFFFFFF8
    lw      t5, 0x0000(t3)             # 809EBA28
    lw      t4, 0x0004(t3)             # 809EBA2C
    sw      t5, 0x0000(t9)             # FFFFFFE4
    lw      t5, 0x0008(t3)             # 809EBA30
    sw      t4, 0x0004(t9)             # FFFFFFE8
    jal     func_80063F7C              
    sw      t5, 0x0008(t9)             # FFFFFFEC
    lui     $at, %hi(var_809EBA80)     # $at = 809F0000
    lwc1    $f0, %lo(var_809EBA80)($at) 
    lui     $at, %hi(var_809EBA84)     # $at = 809F0000
    lwc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f4, %lo(var_809EBA84)($at) 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f0                   # $f0 = 140.00
    sub.s   $f10, $f6, $f8             
    addiu   t0, $sp, 0x0048            # t0 = FFFFFFF0
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a3, s0, 0x0024             # a3 = 00000024
    swc1    $f10, 0x0028(s0)           # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0144             # a1 = 00000144
    addiu   a2, s0, 0x0174             # a2 = 00000174
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    swc1    $f4, 0x0054(s0)            # 00000054
lbl_809EB118:
    lw      t7, 0x0000(t0)             # FFFFFFF0
    addiu   v0, v1, 0x0001             # v0 = 00000001
    mtc1    v0, $f18                   # $f18 = 0.00
    sw      t7, 0x0000(a2)             # 00000174
    lw      t6, 0x0004(t0)             # FFFFFFF4
    cvt.s.w $f4, $f18                  
    sw      t6, 0x0004(a2)             # 00000178
    lw      t7, 0x0008(t0)             # FFFFFFF8
    bne     v1, $zero, lbl_809EB158    
    sw      t7, 0x0008(a2)             # 0000017C
    multu   v1, t1                     
    lh      t8, 0x00B4(s0)             # 000000B4
    addiu   t9, t8, 0xC000             # t9 = FFFFC000
    mflo    t3                         
    addu    t4, s0, t3                 
    sh      t9, 0x01A4(t4)             # 000001A4
lbl_809EB158:
    lw      t6, 0x0000(a3)             # 00000024
    mul.s   $f6, $f4, $f0              
    or      v1, v0, $zero              # v1 = 00000001
    sw      t6, 0x0000(a1)             # 00000144
    lw      t5, 0x0004(a3)             # 00000028
    addiu   a0, a0, 0x000C             # a0 = 0000000C
    addiu   a1, a1, 0x000C             # a1 = 00000150
    sw      t5, -0x0008(a1)            # 00000148
    lw      t6, 0x0008(a3)             # 0000002C
    addiu   a2, a2, 0x000C             # a2 = 00000180
    sw      t6, -0x0004(a1)            # 0000014C
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f8, $f16, $f6             
    bne     v0, t2, lbl_809EB118       
    swc1    $f8, 0x013C(a0)            # 00000148
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4240                 # a3 = 42400000
    addiu   a1, s0, 0x01BC             # a1 = 000001BC
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809EB9A0)      # a3 = 809F0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809EB9A0)  # a3 = 809EB9A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0208             # a1 = 00000208
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809EB9CC)      # a3 = 809F0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809EB9CC)  # a3 = 809EB9CC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f10                  # $f10 = 2000.00
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sra     a1, a1,  8                 
    sb      t7, 0x00AE(s0)             # 000000AE
    sh      $zero, 0x013C(s0)          # 0000013C
    andi    a1, a1, 0x00FF             # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    swc1    $f10, 0x00FC(s0)           # 000000FC
    beql    v0, $zero, lbl_809EB23C    
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
lbl_809EB23C:
    andi    t3, t8, 0x00FF             # t3 = 00000000
    sh      t3, 0x001C(s0)             # 0000001C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809EB258:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x01BC             # a1 = 000001BC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EB284:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x006C($sp)            
    lui     t7, %hi(var_809EBA38)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809EBA38)  # t7 = 809EBA38
    lw      t9, 0x0000(t7)             # 809EBA38
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 809EBA3C
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 809EBA40
    lui     t1, %hi(var_809EBA44)      # t1 = 809F0000
    addiu   t1, t1, %lo(var_809EBA44)  # t1 = 809EBA44
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 809EBA44
    addiu   t0, $sp, 0x0050            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 809EBA48
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 809EBA4C
    lui     a0, %hi(var_809EBA50)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EBA50)  # a0 = 809EBA50
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFDC
    sw      t2, 0x0004(t0)             # FFFFFFEC
    jal     func_800AB958              
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lui     a0, %hi(var_809EBA5C)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EBA5C)  # a0 = 809EBA5C
    jal     func_800AB958              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFD0
    addiu   a1, s0, 0x0254             # a1 = 00000254
    sw      a1, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFF4
    addiu   a3, s0, 0x0248             # a3 = 00000248
    or      a1, a3, $zero              # a1 = 00000248
    sw      a3, 0x0030($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    lw      t4, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    addiu   a0, s0, 0x0208             # a0 = 00000208
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFDC
    jal     func_80050B64              
    sw      t4, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra                        
    nop


func_809EB354:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    lui     $at, 0x428C                # $at = 428C0000
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    mtc1    $at, $f2                   # $f2 = 70.00
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f20, 0x0028($sp)          
    lwc1    $f0, 0x0090(s3)            # 00000090
    lw      s0, 0x1C44(s4)             # 00001C44
    c.le.s  $f0, $f2                   
    nop
    bc1tl   lbl_809EB3D0               
    c.le.s  $f0, $f2                   
    lbu     t6, 0x01CC(s3)             # 000001CC
    andi    t7, t6, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_809EB3D0    
    c.le.s  $f0, $f2                   
    lbu     t8, 0x01CD(s3)             # 000001CD
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_809EB3D0    
    c.le.s  $f0, $f2                   
    lbu     t0, 0x0218(s3)             # 00000218
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_809EB4D8    
    lh      v0, 0x013C(s3)             # 0000013C
    c.le.s  $f0, $f2                   
lbl_809EB3D0:
    nop
    bc1tl   lbl_809EB404               
    lh      t5, 0x001C(s3)             # 0000001C
    lw      t2, 0x01C0(s3)             # 000001C0
    beql    s0, t2, lbl_809EB404       
    lh      t5, 0x001C(s3)             # 0000001C
    lw      t3, 0x01C4(s3)             # 000001C4
    beql    s0, t3, lbl_809EB404       
    lh      t5, 0x001C(s3)             # 0000001C
    lw      t4, 0x020C(s3)             # 0000020C
    bnel    s0, t4, lbl_809EB4A0       
    lbu     t0, 0x01CC(s3)             # 000001CC
    lh      t5, 0x001C(s3)             # 0000001C
lbl_809EB404:
    lb      v0, 0x0A68(s0)             # 00000A68
    lh      s1, 0x0032(s3)             # 00000032
    andi    t6, t5, 0x0080             # t6 = 00000000
    lw      v1, 0x01C0(s3)             # 000001C0
    bne     t6, $zero, lbl_809EB420    
    andi    s2, v0, 0x00FF             # s2 = 00000000
    lh      s1, 0x008A(s3)             # 0000008A
lbl_809EB420:
    beql    s0, v1, lbl_809EB478       
    lui     $at, 0x40C0                # $at = 40C00000
    lw      t7, 0x01C4(s3)             # 000001C4
    beql    s0, t7, lbl_809EB478       
    lui     $at, 0x40C0                # $at = 40C00000
    lw      t8, 0x020C(s3)             # 0000020C
    beql    s0, t8, lbl_809EB478       
    lui     $at, 0x40C0                # $at = 40C00000
    bgtz    v0, lbl_809EB474           
    slti    $at, v0, 0xFFD9            
    beq     $at, $zero, lbl_809EB458   
    lui     t9, 0x0001                 # t9 = 00010000
    beq     $zero, $zero, lbl_809EB474 
    sb      $zero, 0x0A68(s0)          # 00000A68
lbl_809EB458:
    sb      $zero, 0x0A68(s0)          # 00000A68
    addu    t9, t9, s4                 
    lw      t9, 0x1D58(t9)             # 00011D58
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $zero, 0xFFFC          # a1 = FFFFFFFC
    jalr    $ra, t9                    
    nop
lbl_809EB474:
    lui     $at, 0x40C0                # $at = 40C00000
lbl_809EB478:
    mtc1    $at, $f0                   # $f0 = 6.00
    sll     a3, s1, 16                 
    sra     a3, a3, 16                 
    mfc1    a2, $f0                    
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    sb      s2, 0x0A68(s0)             # 00000A68
    lbu     t0, 0x01CC(s3)             # 000001CC
lbl_809EB4A0:
    lbu     t2, 0x01CD(s3)             # 000001CD
    lbu     t4, 0x0218(s3)             # 00000218
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    andi    t5, t4, 0xFFFD             # t5 = 00000000
    sb      t1, 0x01CC(s3)             # 000001CC
    sb      t3, 0x01CD(s3)             # 000001CD
    sb      t5, 0x0218(s3)             # 00000218
    sw      $zero, 0x020C(s3)          # 0000020C
    sw      $zero, 0x01C4(s3)          # 000001C4
    sw      $zero, 0x01C0(s3)          # 000001C0
    sh      t6, 0x013C(s3)             # 0000013C
    lh      v0, 0x013C(s3)             # 0000013C
lbl_809EB4D8:
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    beq     v0, $zero, lbl_809EB5E0    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    mtc1    $at, $f20                  # $f20 = 5.00
    sh      t7, 0x013C(s3)             # 0000013C
    lh      t8, 0x013C(s3)             # 0000013C
lbl_809EB4F4:
    sll     t9, s0,  1                 
    lui     $at, 0x4640                # $at = 46400000
    addu    t0, t8, t9                 
    bgez    t0, lbl_809EB514           
    andi    t1, t0, 0x0003             # t1 = 00000000
    beq     t1, $zero, lbl_809EB514    
    nop
    addiu   t1, t1, 0xFFFC             # t1 = FFFFFFFC
lbl_809EB514:
    bnel    t1, $zero, lbl_809EB5C8    
    addiu   s0, s0, 0x0001             # s0 = 00000001
    mtc1    $at, $f12                  # $f12 = 12288.00
    jal     func_80026D90              
    sll     s2, s0, 14                 
    trunc.w.s $f4, $f0                   
    mov.s   $f12, $f20                 
    mfc1    t5, $f4                    
    nop
    addu    s1, t5, s2                 
    addiu   s1, s1, 0x2000             # s1 = 00002000
    sll     s1, s1, 16                 
    jal     func_80026D90              
    sra     s1, s1, 16                 
    lwc1    $f6, 0x0024(s3)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x0058($sp)           
    lwc1    $f10, 0x0028(s3)           # 00000028
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f18                  # $f18 = 170.00
    add.s   $f16, $f0, $f10            
    mov.s   $f12, $f20                 
    add.s   $f4, $f16, $f18            
    jal     func_80026D90              
    swc1    $f4, 0x005C($sp)           
    lwc1    $f6, 0x002C(s3)            # 0000002C
    lui     a2, %hi(var_809EBA68)      # a2 = 809F0000
    lui     a3, %hi(var_809EBA6C)      # a3 = 809F0000
    add.s   $f8, $f0, $f6              
    addiu   t6, $zero, 0x00E6          # t6 = 000000E6
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sw      t7, 0x0018($sp)            
    swc1    $f8, 0x0060($sp)           
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809EBA6C)  # a3 = 809EBA6C
    addiu   a2, a2, %lo(var_809EBA68)  # a2 = 809EBA68
    sw      $zero, 0x001C($sp)         
    sw      s1, 0x0014($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8001D098              
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE0
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_809EB5C8:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    s0, $at, lbl_809EB4F4      
    lh      t8, 0x013C(s3)             # 0000013C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x309A          # a1 = 0000309A
lbl_809EB5E0:
    lw      t9, 0x0024(s3)             # 00000024
    lw      t8, 0x0028(s3)             # 00000028
    addiu   s1, s3, 0x01BC             # s1 = 000001BC
    sw      t9, 0x0038(s3)             # 00000038
    lw      t9, 0x002C(s3)             # 0000002C
    or      a1, s1, $zero              # a1 = 000001BC
    or      a0, s3, $zero              # a0 = 00000000
    sw      t8, 0x003C(s3)             # 0000003C
    jal     func_80050B00              
    sw      t9, 0x0040(s3)             # 00000040
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s0, s4, $at                
    or      a1, s0, $zero              # a1 = 00000002
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 000001BC
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000002
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s1, $zero              # a2 = 000001BC
    lh      t0, 0x001C(s3)             # 0000001C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000002
    andi    t1, t0, 0x0080             # t1 = 00000000
    beql    t1, $zero, lbl_809EB658    
    lw      $ra, 0x0044($sp)           
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s3, 0x0208             # a2 = 00000208
    lw      $ra, 0x0044($sp)           
lbl_809EB658:
    ldc1    $f20, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_809EB678:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    lw      a0, 0x0000(s1)             # 00000000
    lw      s3, 0x02C4(a0)             # 000002C4
    addiu   s3, s3, 0xFF00             # s3 = FFFFFF00
    or      s5, s3, $zero              # s5 = FFFFFF00
    sw      s3, 0x02C4(a0)             # 000002C4
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298              
    or      s6, a0, $zero              # s6 = 00000000
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0030             # t7 = DB060030
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s6)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s6)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lh      t1, 0x001C(s2)             # 0000001C
    lui     t0, %hi(var_809EBA70)      # t0 = 809F0000
    lui     t8, 0x8012                 # t8 = 80120000
    andi    t2, t1, 0x007F             # t2 = 00000000
    sll     t3, t2,  2                 
    addu    t0, t0, t3                 
    lw      t0, %lo(var_809EBA70)(t0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, t0,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t4, t0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t4, t8                 
    addu    t1, t9, $at                
    sw      t1, 0x0004(s0)             # 00000004
    lw      s4, 0x02C0(s6)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    addiu   t2, s4, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s6)             # 000002C0
    sw      t3, 0x0000(s4)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t4, t4, s1                 
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    lw      t4, 0x1DE4(t4)             # 00011DE4
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    subu    $at, $zero, t4             
    sll     t8, $at,  2                
    addu    t8, t8, $at                
    sll     t8, t8,  1                 
    andi    t9, t8, 0x007F             # t9 = 00000000
    sw      t9, 0x0020($sp)            
    sw      t1, 0x0024($sp)            
    sw      t2, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s3, 0x02C0(s6)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t3, s3, 0x0008             # t3 = FFFFFF08
    sw      t3, 0x02C0(s6)             # 000002C0
    sw      t5, 0x0000(s3)             # FFFFFF00
    jal     func_800AB900              
    lw      a0, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s3)             # FFFFFF04
    lh      t6, 0x001C(s2)             # 0000001C
    or      a0, s2, $zero              # a0 = 00000000
    andi    t7, t6, 0x0080             # t7 = 00000000
    beql    t7, $zero, lbl_809EB810    
    lh      t4, 0x013E(s2)             # 0000013E
    jal     func_809EB284              
    or      a1, s1, $zero              # a1 = 00000000
    lh      t4, 0x013E(s2)             # 0000013E
lbl_809EB810:
    addiu   t8, t4, 0xF448             # t8 = FFFFF448
    sh      t8, 0x013E(s2)             # 0000013E
    jal     func_80063684              # coss?
    lh      a0, 0x013E(s2)             # 0000013E
    lui     $at, %hi(var_809EBA88)     # $at = 809F0000
    lwc1    $f20, %lo(var_809EBA88)($at) 
    lui     $at, %hi(var_809EBA8C)     # $at = 809F0000
    lwc1    $f22, %lo(var_809EBA8C)($at) 
    mul.s   $f4, $f0, $f20             
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    addiu   s4, $zero, 0x0006          # s4 = 00000006
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    add.s   $f2, $f4, $f22             
    swc1    $f2, 0x0050(s2)            # 00000050
    swc1    $f2, 0x0058(s2)            # 00000058
lbl_809EB84C:
    lh      t9, 0x013E(s2)             # 0000013E
    sll     t3, s1, 13                 
    addu    a0, t9, t3                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    multu   s1, s3                     
    mul.s   $f6, $f0, $f20             
    add.s   $f2, $f6, $f22             
    mflo    t5                         
    addu    s0, s2, t5                 
    swc1    $f2, 0x0174(s0)            # 00000174
    multu   s1, s4                     
    swc1    $f2, 0x017C(s0)            # 0000017C
    lh      t7, 0x00B4(s2)             # 000000B4
    addiu   s1, s1, 0xFFFF             # s1 = 00000002
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    mflo    t6                         
    addu    v0, s2, t6                 
    sh      t7, 0x01A4(v0)             # 000001A4
    lh      t4, 0x00B6(s2)             # 000000B6
    sh      t4, 0x01A6(v0)             # 000001A6
    lh      t8, 0x00B8(s2)             # 000000B8
    bgez    s1, lbl_809EB84C           
    sh      t8, 0x01A8(v0)             # 000001A8
    or      s1, $zero, $zero           # s1 = 00000000
lbl_809EB8B8:
    multu   s1, s3                     
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t1                         
    addu    s0, s2, t1                 
    lwc1    $f12, 0x0144(s0)           # 00000144
    lwc1    $f14, 0x0148(s0)           # 00000148
    jal     func_800AA7F4              
    lw      a2, 0x014C(s0)             # 0000014C
    multu   s1, s4                     
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mflo    t2                         
    addu    v0, s2, t2                 
    lh      a0, 0x01A4(v0)             # 000001A4
    lh      a1, 0x01A6(v0)             # 000001A6
    jal     func_800AAF00              
    lh      a2, 0x01A8(v0)             # 000001A8
    lwc1    $f12, 0x0174(s0)           # 00000174
    lwc1    $f14, 0x0178(s0)           # 00000178
    lw      a2, 0x017C(s0)             # 0000017C
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8              
    or      a0, s5, $zero              # a0 = FFFFFF00
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0004            
    bne     $at, $zero, lbl_809EB8B8   
    addiu   s5, s5, 0x0040             # s5 = FFFFFF40
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x22F0             # t5 = 060022F0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s6)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    nop

.section .data

var_809EB980: .word 0x00DF0500, 0x00000010, 0x00D50000, 0x00000288
.word func_809EB050
.word func_809EB258
.word func_809EB354
.word func_809EB678
var_809EB9A0: .word \
0x06110900, 0x00010000, 0x01000000, 0xFFCFFFFF, \
0x03040000, 0xFFCFFFFF, 0x01000000, 0x01010000, \
0x003C0064, 0x00640000, 0x00000000
var_809EB9CC: .word \
0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x03040000, 0x00000000, 0x00000000, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_809EBA1C: .word 0x3C75C28F, 0x3C75C28F, 0x3C75C28F
var_809EBA28: .word 0x00000000, 0x00000000, 0x00000000
var_809EBA34: .word 0x304C14B4
var_809EBA38: .word 0x45FA0000, 0x466A6000, 0x451C4000
var_809EBA44: .word 0x45FA0000, 0x461C4000, 0x451C4000
var_809EBA50: .word 0xC5FA0000, 0x466A6000, 0x451C4000
var_809EBA5C: .word 0xC5FA0000, 0x461C4000, 0x451C4000
var_809EBA68: .word 0xFFFFFFFF
var_809EBA6C: .word 0xC8FFFFFF
var_809EBA70: .word 0x060024F0, 0x060027F0, 0x060029F0, 0x00000000

.section .rodata

var_809EBA80: .word 0x3C23D70A
var_809EBA84: .word 0x3CF5C28F
var_809EBA88: .word 0x3BF5C28F
var_809EBA8C: .word 0x3C75C28F

