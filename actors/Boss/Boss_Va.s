.section .text
func_80984CD0:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80984CDC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    lw      s1, 0x0118(s0)             # 00000118
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0024(s1)           # 00000024
    lwc1    $f14, 0x0028(s1)           # 00000028
    jal     func_800AA7F4              
    lw      a2, 0x002C(s1)             # 0000002C
    lh      a0, 0x00B4(s1)             # 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a2, 0x00B8(s1)             # 000000B8
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_80991864)      # t8 = 80990000
    addiu   t8, t8, %lo(var_80991864)  # t8 = 80991864
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    a0, t7, t8                 
    jal     func_800AB958              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      v1, 0x001C(s0)             # 0000001C
    sltiu   $at, v1, 0x0006            
    beq     $at, $zero, lbl_80984EE8   
    sll     t9, v1,  2                 
    lui     $at, %hi(var_80991BD0)     # $at = 80990000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80991BD0)($at) 
    jr      t9                         
    nop
var_80984D64:
    lbu     t0, 0x0184(s0)             # 00000184
    sll     t1, v1,  2                 
    subu    t1, t1, v1                 
    bne     t0, $zero, lbl_80984EE8    
    sll     t1, t1,  1                 
    lui     t2, %hi(var_8099199C)      # t2 = 80990000
    addiu   t2, t2, %lo(var_8099199C)  # t2 = 8099199C
    addu    v0, t1, t2                 
    lh      t3, 0x0000(v0)             # 00000000
    lh      t4, 0x00B4(s1)             # 000000B4
    addu    t5, t3, t4                 
    sh      t5, 0x00B4(s0)             # 000000B4
    lh      t6, 0x0002(v0)             # 00000002
    sh      t6, 0x00B6(s0)             # 000000B6
    lh      t8, 0x00B8(s1)             # 000000B8
    lh      t7, 0x0004(v0)             # 00000004
    addu    t9, t7, t8                 
    beq     $zero, $zero, lbl_80984EE8 
    sh      t9, 0x00B8(s0)             # 000000B8
var_80984DB0:
    sll     t0, v1,  2                 
    subu    t0, t0, v1                 
    lui     t1, %hi(var_8099199C)      # t1 = 80990000
    addiu   t1, t1, %lo(var_8099199C)  # t1 = 8099199C
    sll     t0, t0,  1                 
    addu    v0, t0, t1                 
    lh      t2, 0x0002(v0)             # 00000002
    sh      t2, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    lh      a0, 0x0002(v0)             # 00000002
    swc1    $f0, 0x0020($sp)           
    lh      t3, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_8099199E)      # a0 = 80990000
    sll     t4, t3,  2                 
    subu    t4, t4, t3                 
    sll     t4, t4,  1                 
    addu    a0, a0, t4                 
    jal     func_800636C4              # sins?
    lh      a0, %lo(var_8099199E)(a0)  
    lh      t5, 0x001C(s0)             # 0000001C
    lh      t8, 0x00B4(s1)             # 000000B4
    lwc1    $f4, 0x0020($sp)           
    sll     t6, t5,  2                 
    subu    t6, t6, t5                 
    lh      t5, 0x00B8(s1)             # 000000B8
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     t7, %hi(var_8099199C)      # t7 = 80990000
    mtc1    t5, $f18                   # $f18 = 0.00
    cvt.s.w $f8, $f6                   
    addiu   t7, t7, %lo(var_8099199C)  # t7 = 8099199C
    sll     t6, t6,  1                 
    addu    v0, t6, t7                 
    lh      t3, 0x0000(v0)             # 00000000
    cvt.s.w $f6, $f18                  
    mul.s   $f10, $f4, $f8             
    nop
    mul.s   $f4, $f0, $f6              
    trunc.w.s $f16, $f10                 
    trunc.w.s $f8, $f4                   
    mfc1    t2, $f16                   
    mfc1    t9, $f8                    
    addu    t4, t3, t2                 
    subu    t0, t4, t9                 
    sh      t0, 0x00B4(s0)             # 000000B4
    jal     func_80063684              # coss?
    lh      a0, 0x0002(v0)             # 00000002
    swc1    $f0, 0x0020($sp)           
    lh      t1, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_8099199E)      # a0 = 80990000
    sll     t3, t1,  2                 
    subu    t3, t3, t1                 
    sll     t3, t3,  1                 
    addu    a0, a0, t3                 
    jal     func_800636C4              # sins?
    lh      a0, %lo(var_8099199E)(a0)  
    lh      t2, 0x00B4(s1)             # 000000B4
    lh      t3, 0x00B8(s1)             # 000000B8
    lwc1    $f4, 0x0020($sp)           
    mtc1    t2, $f10                   # $f10 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t4, 0x001C(s0)             # 0000001C
    cvt.s.w $f16, $f10                 
    lui     t0, %hi(var_809919A0)      # t0 = 80990000
    sll     t9, t4,  2                 
    subu    t9, t9, t4                 
    sll     t9, t9,  1                 
    cvt.s.w $f10, $f8                  
    mul.s   $f18, $f0, $f16            
    addu    t0, t0, t9                 
    lh      t0, %lo(var_809919A0)(t0)  
    mul.s   $f16, $f4, $f10            
    trunc.w.s $f6, $f18                  
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f6                    
    mfc1    t7, $f18                   
    addu    t1, t8, t0                 
    addu    t4, t1, t7                 
    sh      t4, 0x00B8(s0)             # 000000B8
lbl_80984EE8:
    lwl     t8, 0x00B4(s0)             # 000000B4
    lwr     t8, 0x00B7(s0)             # 000000B7
    lw      t0, 0x0118(s0)             # 00000118
    swl     t8, 0x0030(s0)             # 00000030
    swr     t8, 0x0033(s0)             # 00000033
    lhu     t8, 0x00B8(s0)             # 000000B8
    sh      t8, 0x0034(s0)             # 00000034
    lwc1    $f6, 0x00BC(t0)            # 809900BC
    swc1    $f6, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80984F20:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sll     s5, a2, 16                 
    sll     s6, a3, 16                 
    sw      s4, 0x0040($sp)            
    sw      s1, 0x0034($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sra     s6, s6, 16                 
    sra     s5, s5, 16                 
    sw      $ra, 0x004C($sp)           
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a2, 0x0068($sp)            
    sw      a3, 0x006C($sp)            
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f22                  # $f22 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    lui     s2, %hi(var_809934C0)      # s2 = 80990000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s2, s2, %lo(var_809934C0)  # s2 = 809934C0
    addiu   s0, $zero, 0x0002          # s0 = 00000002
    addiu   s3, $sp, 0x0050            # s3 = FFFFFFF0
lbl_80984F8C:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0000(s1)            # 00000000
    add.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0050($sp)           
    mul.s   $f10, $f0, $f22            
    lwc1    $f8, 0x0004(s1)            # 00000004
    mov.s   $f12, $f20                 
    sub.s   $f16, $f8, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0054($sp)          
    lwc1    $f18, 0x0008(s1)           # 00000008
    sw      s6, 0x0014($sp)            
    sw      s5, 0x0010($sp)            
    add.s   $f4, $f0, $f18             
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 809934C0
    or      a2, s3, $zero              # a2 = FFFFFFF0
    swc1    $f4, 0x0058($sp)           
    jal     func_80990D0C              
    addiu   a3, $zero, 0x0041          # a3 = 00000041
    addiu   s0, s0, 0xFFFF             # s0 = 00000001
    bne     s0, $zero, lbl_80984F8C    
    nop
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80985020:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sll     s3, a2, 16                 
    sll     s4, a3, 16                 
    sw      s5, 0x004C($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    lw      s5, 0x0080($sp)            
    sra     s4, s4, 16                 
    sra     s3, s3, 16                 
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x0050($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a2, 0x0078($sp)            
    sw      a3, 0x007C($sp)            
    blez    s5, lbl_80985118           
    or      s0, s5, $zero              # s0 = 00000000
    lui     $at, %hi(var_80991BE8)     # $at = 80990000
    lwc1    $f24, %lo(var_80991BE8)($at) 
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f22                  # $f22 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    lui     s5, %hi(var_809934C0)      # s5 = 80990000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s5, s5, %lo(var_809934C0)  # s5 = 809934C0
    addiu   s6, $sp, 0x0060            # s6 = FFFFFFF0
lbl_809850A0:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0000(s1)            # 00000000
    add.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0060($sp)           
    mul.s   $f10, $f0, $f22            
    lwc1    $f8, 0x0004(s1)            # 00000004
    mov.s   $f12, $f20                 
    sub.s   $f16, $f8, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0064($sp)          
    lwc1    $f18, 0x0008(s1)           # 00000008
    mov.s   $f12, $f24                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0068($sp)           
    trunc.w.s $f6, $f0                   
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 809934C0
    or      a2, s6, $zero              # a2 = FFFFFFF0
    mfc1    t9, $f6                    
    sw      s4, 0x0010($sp)            
    addu    a3, t9, s3                 
    sll     a3, a3, 16                 
    jal     func_80990ED8              
    sra     a3, a3, 16                 
    addiu   s0, s0, 0xFFFF             # s0 = FFFFFFFF
    bne     s0, $zero, lbl_809850A0    
    nop
lbl_80985118:
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_8098514C:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sll     s5, a2, 16                 
    sll     s6, a3, 16                 
    sw      s4, 0x0040($sp)            
    sw      s1, 0x0034($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sra     s6, s6, 16                 
    sra     s5, s5, 16                 
    sw      $ra, 0x004C($sp)           
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a2, 0x0070($sp)            
    sw      a3, 0x0074($sp)            
    lui     t6, %hi(var_8099BE42)      # t6 = 809A0000
    lb      t6, %lo(var_8099BE42)(t6)  
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   s3, $sp, 0x0058            # s3 = FFFFFFF0
    slti    $at, t6, 0x0014            
    beq     $at, $zero, lbl_809851BC   
    lui     s2, %hi(var_809934C0)      # s2 = 80990000
    beq     $zero, $zero, lbl_809851BC 
    addiu   s0, $zero, 0x0002          # s0 = 00000002
lbl_809851BC:
    blez    s0, lbl_8098524C           
    lui     $at, %hi(var_80991BEC)     # $at = 80990000
    lwc1    $f22, %lo(var_80991BEC)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s2, s2, %lo(var_809934C0)  # s2 = 809934C0
lbl_809851D4:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0000(s1)            # 00000000
    mov.s   $f12, $f20                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0058($sp)           
    lwc1    $f8, 0x0004(s1)            # 00000004
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x005C($sp)          
    lwc1    $f16, 0x0008(s1)           # 00000008
    mov.s   $f12, $f22                 
    add.s   $f18, $f0, $f16            
    jal     func_80026D90              
    swc1    $f18, 0x0060($sp)          
    trunc.w.s $f4, $f0                   
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 809934C0
    or      a2, s3, $zero              # a2 = FFFFFFF0
    mfc1    t0, $f4                    
    sw      s6, 0x0010($sp)            
    addu    a3, t0, s5                 
    sll     a3, a3, 16                 
    jal     func_80991218              
    sra     a3, a3, 16                 
    addiu   s0, s0, 0xFFFF             # s0 = 00000001
    bgtz    s0, lbl_809851D4           
    nop
lbl_8098524C:
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_8098527C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s2, 0x0040($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a0, 0x0080($sp)            
    sw      a3, 0x008C($sp)            
    blez    a2, lbl_809853C4           
    or      s3, a2, $zero              # s3 = 00000000
    lui     $at, %hi(var_80991BF0)     # $at = 80990000
    lwc1    $f6, %lo(var_80991BF0)($at) 
    lwc1    $f4, 0x009C($sp)           
    lui     s7, %hi(var_809934C0)      # s7 = 80990000
    addiu   s7, s7, %lo(var_809934C0)  # s7 = 809934C0
    lwc1    $f24, 0x0094($sp)          
    lwc1    $f20, 0x0090($sp)          
    addiu   s8, $sp, 0x006C            # s8 = FFFFFFEC
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    lbu     s5, 0x009B($sp)            
    lbu     s4, 0x00A3($sp)            
    sub.s   $f22, $f4, $f6             
lbl_809852F8:
    bnel    s4, $zero, lbl_80985328    
    trunc.w.s $f16, $f22                 
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f22             
    trunc.w.s $f10, $f8                  
    mfc1    s1, $f10                   
    nop
    sll     s1, s1, 16                 
    beq     $zero, $zero, lbl_80985338 
    sra     s1, s1, 16                 
    trunc.w.s $f16, $f22                 
lbl_80985328:
    mfc1    s1, $f16                   
    nop
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
lbl_80985338:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    multu   s1, s6                     
    lwc1    $f6, 0x0024(s2)            # 00000024
    mov.s   $f12, $f24                 
    mflo    t8                         
    addu    s0, s2, t8                 
    lwc1    $f18, 0x01EC(s0)           # 000001EC
    add.s   $f4, $f18, $f0             
    sub.s   $f8, $f4, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x006C($sp)           
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    lwc1    $f18, 0x0028(s2)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f16, $f10, $f0            
    sub.s   $f4, $f16, $f18            
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lwc1    $f6, 0x01F4(s0)            # 000001F4
    lwc1    $f10, 0x002C(s2)           # 0000002C
    lh      t9, 0x008E($sp)            
    add.s   $f8, $f6, $f0              
    sw      s5, 0x0014($sp)            
    lw      a0, 0x0080($sp)            
    or      a1, s7, $zero              # a1 = 809934C0
    sub.s   $f16, $f8, $f10            
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, s8, $zero              # a3 = FFFFFFEC
    sw      t9, 0x0010($sp)            
    jal     func_80990890              
    swc1    $f16, 0x0074($sp)          
    addiu   s3, s3, 0xFFFF             # s3 = FFFFFFFF
    bne     s3, $zero, lbl_809852F8    
    nop
lbl_809853C4:
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
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
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80985400:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s2, 0x0040($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a0, 0x0080($sp)            
    sw      a3, 0x008C($sp)            
    blez    a2, lbl_80985548           
    or      s3, a2, $zero              # s3 = 00000000
    lui     $at, %hi(var_80991BF4)     # $at = 80990000
    lwc1    $f6, %lo(var_80991BF4)($at) 
    lwc1    $f4, 0x009C($sp)           
    lui     s7, %hi(var_809934C0)      # s7 = 80990000
    addiu   s7, s7, %lo(var_809934C0)  # s7 = 809934C0
    lwc1    $f24, 0x0094($sp)          
    lwc1    $f20, 0x0090($sp)          
    addiu   s8, $sp, 0x006C            # s8 = FFFFFFEC
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    lbu     s5, 0x009B($sp)            
    lbu     s4, 0x00A3($sp)            
    sub.s   $f22, $f4, $f6             
lbl_8098547C:
    bnel    s4, $zero, lbl_809854AC    
    trunc.w.s $f16, $f22                 
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f22             
    trunc.w.s $f10, $f8                  
    mfc1    s1, $f10                   
    nop
    sll     s1, s1, 16                 
    beq     $zero, $zero, lbl_809854BC 
    sra     s1, s1, 16                 
    trunc.w.s $f16, $f22                 
lbl_809854AC:
    mfc1    s1, $f16                   
    nop
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
lbl_809854BC:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    multu   s1, s6                     
    lwc1    $f6, 0x0024(s2)            # 00000024
    mov.s   $f12, $f24                 
    mflo    t8                         
    addu    s0, s2, t8                 
    lwc1    $f18, 0x01EC(s0)           # 000001EC
    add.s   $f4, $f18, $f0             
    sub.s   $f8, $f4, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x006C($sp)           
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    lwc1    $f18, 0x0028(s2)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f16, $f10, $f0            
    sub.s   $f4, $f16, $f18            
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lwc1    $f6, 0x01F4(s0)            # 000001F4
    lwc1    $f10, 0x002C(s2)           # 0000002C
    lh      t9, 0x008E($sp)            
    add.s   $f8, $f6, $f0              
    sw      s5, 0x0014($sp)            
    lw      a0, 0x0080($sp)            
    or      a1, s7, $zero              # a1 = 809934C0
    sub.s   $f16, $f8, $f10            
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, s8, $zero              # a3 = FFFFFFEC
    sw      t9, 0x0010($sp)            
    jal     func_80991074              
    swc1    $f16, 0x0074($sp)          
    addiu   s3, s3, 0xFFFF             # s3 = FFFFFFFF
    bne     s3, $zero, lbl_8098547C    
    nop
lbl_80985548:
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
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
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80985584:
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at                
    addiu   t6, $zero, 0x0073          # t6 = 00000073
    addiu   t7, $zero, 0x0041          # t7 = 00000041
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    sh      v1, 0x0AB0(v0)             # 00000AB0
    sh      v1, 0x0AB2(v0)             # 00000AB2
    sh      v1, 0x0AB4(v0)             # 00000AB4
    sh      t6, 0x0AB6(v0)             # 00000AB6
    sh      t7, 0x0AB8(v0)             # 00000AB8
    sh      t8, 0x0ABA(v0)             # 00000ABA
    sh      a1, 0x0ABC(v0)             # 00000ABC
    sh      a1, 0x0ABE(v0)             # 00000ABE
    sh      t9, 0x0AC0(v0)             # 00000AC0
    jr      $ra                        
    nop


func_809855D0:
    addiu   v1, $zero, 0x00DC          # v1 = 000000DC
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x00DC          # a2 = 000000DC
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at                
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    sh      v1, 0x0ABC(v0)             # 00000ABC
    sh      v1, 0x0ABE(v0)             # 00000ABE
    sh      t6, 0x0AC0(v0)             # 00000AC0
    addu    $at, $at, a0               
    addiu   t7, $zero, 0xFC18          # t7 = FFFFFC18
    sh      t7, 0x0AC2($at)            # 00010AC2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0               
    addiu   t8, $zero, 0xFC7C          # t8 = FFFFFC7C
    sh      t8, 0x0AC4($at)            # 00010AC4
    addiu   t9, $zero, 0x00D7          # t9 = 000000D7
    addiu   t0, $zero, 0x00A5          # t0 = 000000A5
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sh      a1, 0x0AB0(v0)             # 00000AB0
    sh      a1, 0x0AB2(v0)             # 00000AB2
    sh      a1, 0x0AB4(v0)             # 00000AB4
    sh      t9, 0x0AB6(v0)             # 00000AB6
    sh      t0, 0x0AB8(v0)             # 00000AB8
    sh      a1, 0x0ABA(v0)             # 00000ABA
    sb      a2, 0x0B06(v0)             # 00000B06
    sb      a2, 0x0B07(v0)             # 00000B07
    sb      t1, 0x0B08(v0)             # 00000B08
    sb      t2, 0x0B09(v0)             # 00000B09
    jr      $ra                        
    nop


func_80985650:
    lw      v1, 0x1C74(a0)             # 00001C74
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    beql    v1, $zero, lbl_80985688    
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x0000(v1)             # 00000000
lbl_80985664:
    beq     v0, t6, lbl_80985674       
    nop
    beq     $zero, $zero, lbl_8098567C 
    lw      v1, 0x0124(v1)             # 00000124
lbl_80985674:
    jr      $ra                        
    or      v0, v1, $zero              # v0 = 00000000
lbl_8098567C:
    bnel    v1, $zero, lbl_80985664    
    lh      t6, 0x0000(v1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80985688:
    jr      $ra                        
    nop


func_80985690:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s1, 0x004C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFE0
    addiu   s5, $sp, 0x006C            # s5 = FFFFFFD4
    sw      $ra, 0x0064($sp)           
    sw      s6, 0x0060($sp)            
    sw      s2, 0x0050($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lui     t6, %hi(var_80991A60)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991A60)  # t6 = 80991A60
    lw      t8, 0x0000(t6)             # 80991A60
    lui     t9, %hi(var_80991A6C)      # t9 = 80990000
    addiu   t9, t9, %lo(var_80991A6C)  # t9 = 80991A6C
    sw      t8, 0x0000(s4)             # FFFFFFE0
    lw      t7, 0x0004(t6)             # 80991A64
    lui     $at, %hi(var_80991BF8)     # $at = 80990000
    addiu   s2, $zero, 0x0007          # s2 = 00000007
    sw      t7, 0x0004(s4)             # FFFFFFE4
    lw      t8, 0x0008(t6)             # 80991A68
    addiu   s6, $sp, 0x0084            # s6 = FFFFFFEC
    sw      t8, 0x0008(s4)             # FFFFFFE8
    lw      t1, 0x0000(t9)             # 80991A6C
    sw      t1, 0x0000(s5)             # FFFFFFD4
    lw      t0, 0x0004(t9)             # 80991A70
    sw      t0, 0x0004(s5)             # FFFFFFD8
    lw      t1, 0x0008(t9)             # 80991A74
    sw      t1, 0x0008(s5)             # FFFFFFDC
    lwc1    $f26, %lo(var_80991BF8)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    nop
lbl_80985740:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0024(s1)            # 00000024
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0084($sp)           
    lwc1    $f8, 0x00BC(s1)            # 000000BC
    lwc1    $f10, 0x0054(s1)           # 00000054
    lwc1    $f18, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20                 
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f18, $f16            
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0088($sp)           
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f10, $f0, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x008C($sp)          
    add.s   $f18, $f0, $f24            
    addiu   a0, $zero, 0x0050          # a0 = 00000050
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    jal     func_80063BF0              
    swc1    $f18, 0x007C($sp)          
    sll     s0, v0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16                 
    c.lt.s  $f0, $f26                  
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFEC
    or      a2, s4, $zero              # a2 = FFFFFFE0
    bc1f    lbl_80985800               
    or      a3, s5, $zero              # a3 = FFFFFFD4
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFEC
    or      a2, s4, $zero              # a2 = FFFFFFE0
    or      a3, s5, $zero              # a3 = FFFFFFD4
    jal     func_8001D110              
    sw      s0, 0x0010($sp)            
    beq     $zero, $zero, lbl_80985820 
    addiu   s2, s2, 0xFFFF             # s2 = 00000006
lbl_80985800:
    addiu   t5, $zero, 0x0019          # t5 = 00000019
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x001C($sp)            
    sw      t5, 0x0014($sp)            
    sw      s0, 0x0010($sp)            
    jal     func_8001D110              
    sw      $zero, 0x0018($sp)         
    addiu   s2, s2, 0xFFFF             # s2 = 00000005
lbl_80985820:
    bgez    s2, lbl_80985740           
    nop
    lui     v0, %hi(var_8099BE41)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE41)  # v0 = 8099BE41
    lbu     t7, 0x0000(v0)             # 8099BE41
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    jal     func_8098D670              
    sb      t8, 0x0000(v0)             # 8099BE41
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_8098587C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s3, $zero              # a0 = 00000000
    lh      t8, 0x001C(s3)             # 0000001C
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sltiu   $at, t9, 0x0015            
    sb      t6, 0x001F(s3)             # 0000001F
    beq     $at, $zero, lbl_809859B4   
    sb      t7, 0x00AE(s3)             # 000000AE
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80991BFC)     # $at = 80990000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80991BFC)($at) 
    jr      t9                         
    nop
var_809858E8:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x3D84             # a3 = 06003D84
    addiu   a2, a2, 0x4718             # a2 = 06014718
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s3, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C684              
    sw      $zero, 0x0018($sp)         
    lw      t1, 0x0004(s3)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    or      t2, t1, $at                # t2 = 01000000
    beq     $zero, $zero, lbl_809859FC 
    sw      t2, 0x0004(s3)             # 00000004
var_80985924:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x52A8             # a3 = 060152A8
    addiu   a2, a2, 0x6098             # a2 = 06016098
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s3, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    beq     $zero, $zero, lbl_80985A00 
    lw      t6, 0x0024(s3)             # 00000024
var_80985954:
    lui     a2, 0x0602                 # a2 = 06020000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x7918             # a3 = 06017918
    addiu   a2, a2, 0x85A0             # a2 = 060185A0
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s3, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    beq     $zero, $zero, lbl_80985A00 
    lw      t6, 0x0024(s3)             # 00000024
var_80985984:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x6D50             # a3 = 06016D50
    addiu   a2, a2, 0x7470             # a2 = 06017470
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s3, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    beq     $zero, $zero, lbl_80985A00 
    lw      t6, 0x0024(s3)             # 00000024
lbl_809859B4:
    lw      t3, 0x0004(s3)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    lui     a2, 0x0600                 # a2 = 06000000
    or      t4, t3, $at                # t4 = 01000000
    sw      t4, 0x0004(s3)             # 00000004
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0024             # a3 = 06000024
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    addiu   a2, a2, 0x3A70             # a2 = 06003A70
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s3, 0x013C             # a1 = 0000013C
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    nop
    swc1    $f4, 0x00BC(s3)            # 000000BC
lbl_809859FC:
    lw      t6, 0x0024(s3)             # 00000024
lbl_80985A00:
    lh      t8, 0x001C(s3)             # 0000001C
    lw      t5, 0x0028(s3)             # 00000028
    sw      t6, 0x0038(s3)             # 00000038
    lw      t6, 0x002C(s3)             # 0000002C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sltiu   $at, t9, 0x0015            
    sb      $zero, 0x0184(s3)          # 00000184
    sb      t7, 0x0117(s3)             # 00000117
    sw      t5, 0x003C(s3)             # 0000003C
    beq     $at, $zero, lbl_80985FE8   
    sw      t6, 0x0040(s3)             # 00000040
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80991C50)     # $at = 80990000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80991C50)($at) 
    jr      t9                         
    nop
var_80985A48:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f10                  # $f10 = 400.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    addiu   t1, $zero, 0x0013          # t1 = 00000013
    sw      t1, 0x0028($sp)            
    sw      a0, 0x0050($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f8, 0x0014($sp)           
    swc1    $f10, 0x0018($sp)          
    jal     func_800253F0              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0x0001                # $at = 00010000
    addu    s0, s4, $at                
    lb      a1, 0x1CBC(s0)             # 00001CBC
    jal     func_80020640              
    or      a0, s4, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80985B5C    
    lui     t5, %hi(var_80991A20)      # t5 = 80990000
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B56(t2)            # 8011B4AA
    addiu   a2, $zero, 0x00A1          # a2 = 000000A1
    lw      a0, 0x0050($sp)            
    andi    t3, t2, 0x0080             # t3 = 00000000
    beql    t3, $zero, lbl_80985AD4    
    lwc1    $f16, 0x0028(s3)           # 00000028
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lwc1    $f16, 0x0028(s3)           # 00000028
lbl_80985AD4:
    lw      a3, 0x0024(s3)             # 00000024
    or      a1, s4, $zero              # a1 = 00000000
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x002C(s3)           # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0014($sp)          
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    lwc1    $f4, 0x0024(s3)            # 00000024
    lwc1    $f10, 0x0028(s3)           # 00000028
    lw      a0, 0x0050($sp)            
    add.s   $f8, $f4, $f6              
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x002C(s3)           # 0000002C
    sw      $zero, 0x0024($sp)         
    mfc1    a3, $f8                    
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)          
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    lui     $at, %hi(var_8099BEA4)     # $at = 809A0000
    sh      t4, %lo(var_8099BEA4)($at) 
    jal     func_80020EB4              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_80985B5C:
    addiu   t5, t5, %lo(var_80991A20)  # t5 = 00001A20
    sw      t5, 0x0098(s3)             # 00000098
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B4E(t7)            # 8011B4B2
    ori     t6, $zero, 0xFFFF          # t6 = 0000FFFF
    lui     $at, %hi(var_8099BEAE)     # $at = 809A0000
    andi    t8, t7, 0x0040             # t8 = 00000000
    beq     t8, $zero, lbl_80985DB8    
    sh      t6, %lo(var_8099BEAE)($at) 
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    sb      t9, %lo(var_8099BE42)($at) 
    lui     $at, %hi(var_8099BEA4)     # $at = 809A0000
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sh      t1, %lo(var_8099BEA4)($at) 
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   v1, $zero, 0x00DC          # v1 = 000000DC
    addiu   t2, $zero, 0x00BE          # t2 = 000000BE
    addiu   t3, $zero, 0x00D2          # t3 = 000000D2
    sb      v1, 0x0B06(s0)             # 00000B06
    sb      v1, 0x0B07(s0)             # 00000B07
    sb      t2, 0x0B08(s0)             # 00000B08
    sb      t3, 0x0B09(s0)             # 00000B09
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s4, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0              
    or      a0, s4, $zero              # a0 = 00000000
    lui     s0, %hi(var_80991A5C)      # s0 = 80990000
    addiu   s0, s0, %lo(var_80991A5C)  # s0 = 80991A5C
    sh      v0, 0x0000(s0)             # 80991A5C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s4, $zero              # a0 = 00000000
    lh      a1, 0x0000(s0)             # 80991A5C
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f18                  # $f18 = 140.00
    lui     $at, 0x434D                # $at = 434D0000
    mtc1    $at, $f6                   # $f6 = 205.00
    lui     a3, %hi(var_8099BE48)      # a3 = 809A0000
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f10                  # $f10 = -20.00
    addiu   a3, a3, %lo(var_8099BE48)  # a3 = 8099BE48
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f18, 0x0000(a3)           # 8099BE48
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     a2, %hi(var_8099BE58)      # a2 = 809A0000
    lui     $at, 0x4248                # $at = 42480000
    swc1    $f6, 0x0004(a3)            # 8099BE4C
    mtc1    $at, $f6                   # $f6 = 50.00
    addiu   a2, a2, %lo(var_8099BE58)  # a2 = 8099BE58
    swc1    $f10, 0x0008(a3)           # 8099BE50
    lui     v1, %hi(var_8099BE68)      # v1 = 809A0000
    lui     $at, 0xC35C                # $at = C35C0000
    lwc1    $f4, 0x0000(a3)            # 8099BE48
    lwc1    $f8, 0x0004(a3)            # 8099BE4C
    lwc1    $f16, 0x0008(a3)           # 8099BE50
    mtc1    $at, $f10                  # $f10 = -220.00
    addiu   v1, v1, %lo(var_8099BE68)  # v1 = 8099BE68
    lui     t0, %hi(var_8099BE78)      # t0 = 809A0000
    swc1    $f18, 0x0000(a2)           # 8099BE58
    swc1    $f6, 0x0004(a2)            # 8099BE5C
    swc1    $f4, 0x0000(v1)            # 8099BE68
    swc1    $f8, 0x0004(v1)            # 8099BE6C
    swc1    $f16, 0x0008(v1)           # 8099BE70
    swc1    $f10, 0x0008(a2)           # 8099BE60
    lwc1    $f4, 0x0000(a2)            # 8099BE58
    lwc1    $f8, 0x0004(a2)            # 8099BE5C
    lwc1    $f16, 0x0008(a2)           # 8099BE60
    addiu   t0, t0, %lo(var_8099BE78)  # t0 = 8099BE78
    or      a0, s4, $zero              # a0 = 00000000
    lh      a1, 0x0000(s0)             # 80991A5C
    swc1    $f4, 0x0000(t0)            # 8099BE78
    swc1    $f8, 0x0004(t0)            # 8099BE7C
    jal     func_8009D328              
    swc1    $f16, 0x0008(t0)           # 8099BE80
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    lui     s0, %hi(var_80991918)      # s0 = 80990000
    lui     s1, %hi(var_809919F6)      # s1 = 80990000
    sw      t4, 0x0188(s3)             # 00000188
    addiu   s1, s1, %lo(var_809919F6)  # s1 = 809919F6
    addiu   s0, s0, %lo(var_80991918)  # s0 = 80991918
    addiu   s2, $zero, 0x000F          # s2 = 0000000F
lbl_80985CC4:
    lwc1    $f18, 0x0000(s0)           # 80991918
    lwc1    $f4, 0x0024(s3)            # 00000024
    lwc1    $f8, 0x0004(s0)            # 8099191C
    lh      t5, 0x0000(s1)             # 809919F6
    add.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0008(s0)           # 80991920
    lh      t8, 0x0002(s1)             # 809919F8
    lh      t2, 0x0004(s1)             # 809919FA
    swc1    $f6, 0x0010($sp)           
    lwc1    $f10, 0x0028(s3)           # 00000028
    lw      a0, 0x0050($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    add.s   $f16, $f8, $f10            
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    swc1    $f16, 0x0014($sp)          
    lwc1    $f4, 0x002C(s3)            # 0000002C
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0018($sp)           
    lh      t6, 0x0030(s3)             # 00000030
    addu    t7, t5, t6                 
    sw      t7, 0x001C($sp)            
    lh      t9, 0x0032(s3)             # 00000032
    addu    t1, t8, t9                 
    sw      t1, 0x0020($sp)            
    lh      t3, 0x0034(s3)             # 00000034
    sw      s2, 0x0028($sp)            
    addu    t4, t2, t3                 
    jal     func_800253F0              
    sw      t4, 0x0024($sp)            
    addiu   s2, s2, 0xFFFF             # s2 = 0000000E
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   s0, s0, 0xFFF4             # s0 = 8099190C
    bne     s2, $at, lbl_80985CC4      
    addiu   s1, s1, 0xFFFA             # s1 = 809919F0
    lui     t5, %hi(var_80991A40)      # t5 = 80990000
    addiu   t5, t5, %lo(var_80991A40)  # t5 = 80991A40
    lw      t7, 0x0000(t5)             # 80991A40
    addiu   v0, $sp, 0x005C            # v0 = FFFFFFE4
    lui     t8, %hi(var_8099BE88)      # t8 = 809A0000
    sw      t7, 0x0000(v0)             # FFFFFFE4
    lw      t6, 0x0004(t5)             # 80991A44
    lw      t1, 0x0000(v0)             # FFFFFFE4
    addiu   t8, t8, %lo(var_8099BE88)  # t8 = 8099BE88
    sw      t6, 0x0004(v0)             # FFFFFFE8
    lw      t7, 0x0008(t5)             # 80991A48
    lui     t2, %hi(var_8099BE98)      # t2 = 809A0000
    addiu   t2, t2, %lo(var_8099BE98)  # t2 = 8099BE98
    sw      t7, 0x0008(v0)             # FFFFFFEC
    sw      t1, 0x0000(t8)             # 8099BE88
    lw      t9, 0x0004(v0)             # FFFFFFE8
    sw      t9, 0x0004(t8)             # 8099BE8C
    lw      t1, 0x0008(v0)             # FFFFFFEC
    sw      t1, 0x0008(t8)             # 8099BE90
    lw      t4, 0x0000(v0)             # FFFFFFE4
    sw      t4, 0x0000(t2)             # 8099BE98
    lw      t3, 0x0004(v0)             # FFFFFFE8
    sw      t3, 0x0004(t2)             # 8099BE9C
    lw      t4, 0x0008(v0)             # FFFFFFEC
    beq     $zero, $zero, lbl_80985DD0 
    sw      t4, 0x0008(t2)             # 8099BEA0
lbl_80985DB8:
    addiu   t5, $zero, 0xFFFC          # t5 = FFFFFFFC
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    sb      t5, %lo(var_8099BE42)($at) 
    lui     $at, %hi(var_8099BEA4)     # $at = 809A0000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t6, %lo(var_8099BEA4)($at) 
lbl_80985DD0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   s0, s3, 0x027C             # s0 = 0000027C
    or      a1, s0, $zero              # a1 = 0000027C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004AB7C              
    swc1    $f0, 0x01BC(s3)            # 000001BC
    lui     a3, %hi(var_80991780)      # a3 = 80990000
    addiu   a3, a3, %lo(var_80991780)  # a3 = 80991780
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 0000027C
    jal     func_8004ACEC              
    or      a2, s3, $zero              # a2 = 00000000
    lui     s0, %hi(var_809918A0)      # s0 = 80990000
    lui     s1, %hi(var_809919BA)      # s1 = 80990000
    addiu   s1, s1, %lo(var_809919BA)  # s1 = 809919BA
    addiu   s0, s0, %lo(var_809918A0)  # s0 = 809918A0
    addiu   s2, $zero, 0x0005          # s2 = 00000005
lbl_80985E18:
    lwc1    $f8, 0x0000(s0)            # 809918A0
    lwc1    $f10, 0x0024(s3)           # 00000024
    lwc1    $f18, 0x0004(s0)           # 809918A4
    lh      t7, 0x0000(s1)             # 809919BA
    add.s   $f16, $f8, $f10            
    lwc1    $f8, 0x0008(s0)            # 809918A8
    lh      t1, 0x0002(s1)             # 809919BC
    lh      t4, 0x0004(s1)             # 809919BE
    swc1    $f16, 0x0010($sp)          
    lwc1    $f4, 0x0028(s3)            # 00000028
    lw      a0, 0x0050($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    add.s   $f6, $f18, $f4             
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    swc1    $f6, 0x0014($sp)           
    lwc1    $f10, 0x002C(s3)           # 0000002C
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0018($sp)          
    lh      t8, 0x0030(s3)             # 00000030
    addu    t9, t7, t8                 
    sw      t9, 0x001C($sp)            
    lh      t2, 0x0032(s3)             # 00000032
    addu    t3, t1, t2                 
    sw      t3, 0x0020($sp)            
    lh      t5, 0x0034(s3)             # 00000034
    sw      s2, 0x0028($sp)            
    addu    t6, t4, t5                 
    jal     func_800253F0              
    sw      t6, 0x0024($sp)            
    addiu   s2, s2, 0xFFFF             # s2 = 00000004
    addiu   s0, s0, 0xFFF4             # s0 = 80991894
    bgez    s2, lbl_80985E18           
    addiu   s1, s1, 0xFFFA             # s1 = 809919B4
    lui     a0, %hi(var_809934C0)      # a0 = 80990000
    addiu   a0, a0, %lo(var_809934C0)  # a0 = 809934C0
    ori     a1, $zero, 0x8980          # a1 = 00008980
    jal     func_80063630              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    lb      t7, %lo(var_8099BE42)(t7)  
    slti    $at, t7, 0x000D            
    beq     $at, $zero, lbl_80985ED8   
    nop
    jal     func_8098611C              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_80985ED8:
    jal     func_809871CC              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
var_80985EE8:
    addiu   s0, s3, 0x02C8             # s0 = 000002C8
    or      a1, s0, $zero              # a1 = 000002C8
    jal     func_8004A484              
    or      a0, s4, $zero              # a0 = 00000000
    lui     a3, %hi(var_809917D0)      # a3 = 80990000
    addiu   t8, s3, 0x02E8             # t8 = 000002E8
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809917D0)  # a3 = 809917D0
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000002C8
    jal     func_8004A874              
    or      a2, s3, $zero              # a2 = 00000000
    lui     t9, %hi(var_8099BE42)      # t9 = 809A0000
    lb      t9, %lo(var_8099BE42)(t9)  
    or      a1, s4, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    slti    $at, t9, 0x000D            
    beq     $at, $zero, lbl_80985F44   
    nop
    jal     func_80989988              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80985F50 
    lbu     t1, 0x0184(s3)             # 00000184
lbl_80985F44:
    jal     func_80989B24              
    or      a1, s4, $zero              # a1 = 00000000
    lbu     t1, 0x0184(s3)             # 00000184
lbl_80985F50:
    addiu   t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_809860AC 
    sb      t2, 0x0184(s3)             # 00000184
var_80985F5C:
    addiu   s0, s3, 0x0328             # s0 = 00000328
    or      a1, s0, $zero              # a1 = 00000328
    jal     func_8004B858              
    or      a0, s4, $zero              # a0 = 00000000
    lui     a3, %hi(var_80991814)      # a3 = 80990000
    addiu   a3, a3, %lo(var_80991814)  # a3 = 80991814
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000328
    jal     func_8004B960              
    or      a2, s3, $zero              # a2 = 00000000
    lui     t3, %hi(var_8099BE42)      # t3 = 809A0000
    lb      t3, %lo(var_8099BE42)(t3)  
    or      a1, s4, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    slti    $at, t3, 0x000D            
    beq     $at, $zero, lbl_80985FB0   
    nop
    jal     func_8098A488              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_80985FB0:
    jal     func_8098A5DC              
    or      a1, s4, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
var_80985FC0:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8098A36C              
    or      a1, s4, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
var_80985FD4:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8098D6FC              
    or      a1, s4, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_80985FE8:
    addiu   s0, s3, 0x02C8             # s0 = 000002C8
    or      a1, s0, $zero              # a1 = 000002C8
    jal     func_8004A484              
    or      a0, s4, $zero              # a0 = 00000000
    lui     a3, %hi(var_80991804)      # a3 = 80990000
    addiu   t4, s3, 0x02E8             # t4 = 000002E8
    sw      t4, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80991804)  # a3 = 80991804
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000002C8
    jal     func_8004A874              
    or      a2, s3, $zero              # a2 = 00000000
    addiu   s0, s3, 0x0328             # s0 = 00000328
    or      a1, s0, $zero              # a1 = 00000328
    jal     func_8004B858              
    or      a0, s4, $zero              # a0 = 00000000
    lui     a3, %hi(var_80991814)      # a3 = 80990000
    addiu   a3, a3, %lo(var_80991814)  # a3 = 80991814
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000328
    jal     func_8004B960              
    or      a2, s3, $zero              # a2 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     t5, %hi(var_8099BE42)      # t5 = 809A0000
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f0, 0x01C8(s3)            # 000001C8
    swc1    $f0, 0x01CC(s3)            # 000001CC
    lb      t5, %lo(var_8099BE42)(t5)  
    lui     t6, %hi(var_8099BE41)      # t6 = 809A0000
    slti    $at, t5, 0x000D            
    beq     $at, $zero, lbl_8098607C   
    nop
    jal     func_8098C228              
    or      a1, s4, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_8098607C:
    lbu     t6, %lo(var_8099BE41)(t6)  
    or      a1, s4, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    slti    $at, t6, 0x0009            
    bne     $at, $zero, lbl_809860A4   
    nop
    jal     func_8098C890              
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809860B0 
    lw      $ra, 0x004C($sp)           
lbl_809860A4:
    jal     func_8098CD38              
    or      a1, s4, $zero              # a1 = 00000000
lbl_809860AC:
    lw      $ra, 0x004C($sp)           
lbl_809860B0:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_809860CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x02C8             # a1 = 000002C8
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x027C             # a1 = 0000027C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098611C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3D84             # a0 = 06003D84
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f0, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x3D84             # a1 = 06003D84
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f0                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0xC3E1                # $at = C3E10000
    mtc1    $at, $f8                   # $f8 = -450.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_809861AC)     # a1 = 80980000
    and     t8, t7, $at                
    sw      t8, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_809861AC) # a1 = 809861AC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80984CD0              
    swc1    $f8, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809861AC:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s3, 0x0040($sp)            
    sw      s0, 0x0034($sp)            
    lw      t6, 0x1C44(s2)             # 00001C44
    sw      t6, 0x0068($sp)            
    lh      t7, 0x019C(s1)             # 0000019C
    addiu   t8, t7, 0x0C31             # t8 = 00000C31
    sh      t8, 0x019C(s1)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s1)             # 0000019C
    lui     $at, %hi(var_80991CA4)     # $at = 80990000
    lwc1    $f4, %lo(var_80991CA4)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f6, $f0, $f4              
    lw      s0, 0x0068($sp)            
    lh      a0, 0x019C(s1)             # 0000019C
    add.s   $f10, $f6, $f8             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0190(s1)           # 00000190
    lui     $at, %hi(var_80991CA8)     # $at = 80990000
    lwc1    $f2, %lo(var_80991CA8)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mul.s   $f16, $f0, $f2             
    lui     s3, %hi(var_8099BE42)      # s3 = 809A0000
    addiu   s3, s3, %lo(var_8099BE42)  # s3 = 8099BE42
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0194(s1)            # 00000194
    lb      v1, 0x0000(s3)             # 8099BE42
    addiu   t9, v1, 0x0005             # t9 = 00000005
    sltiu   $at, t9, 0x0013            
    beq     $at, $zero, lbl_80986FA4   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80991CAC)     # $at = 80990000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80991CAC)($at) 
    jr      t9                         
    nop
var_8098625C:
    lw      t3, 0x0188(s1)             # 00000188
    addiu   t6, $zero, 0xFFFE          # t6 = FFFFFFFE
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    bne     t4, $zero, lbl_8098627C    
    sw      t4, 0x0188(s1)             # 00000188
    sb      t6, 0x0000(s3)             # 8099BE42
    sw      t7, 0x0188(s1)             # 00000188
lbl_8098627C:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986284:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s2, $at                
    addiu   v1, $zero, 0x00DC          # v1 = 000000DC
    addiu   t8, $zero, 0x00BE          # t8 = 000000BE
    addiu   t9, $zero, 0x00D2          # t9 = 000000D2
    sb      v1, 0x0B06(v0)             # 00000B06
    sb      v1, 0x0B07(v0)             # 00000B07
    sb      t8, 0x0B08(v0)             # 00000B08
    sb      t9, 0x0B09(v0)             # 00000B09
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t3, $zero, 0x7FFF          # t3 = 00007FFF
    sh      t3, 0x00B6(s0)             # 000000B6
    lh      t4, 0x00B6(s0)             # 000000B6
    sh      t4, 0x0032(s0)             # 00000032
    lb      t5, 0x0000(s3)             # 8099BE42
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(s3)             # 8099BE42
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_809862DC:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s2, 0x1D64             # a1 = 00001D64
    lui     t7, %hi(var_80991A5C)      # t7 = 80990000
    lh      t7, %lo(var_80991A5C)(t7)  
    bnel    t7, $zero, lbl_8098630C    
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D0F0              
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, %hi(var_80991A5C)     # $at = 80990000
    sh      v0, %lo(var_80991A5C)($at) 
    or      a0, s2, $zero              # a0 = 00000000
lbl_8098630C:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    lh      a1, %lo(var_80991A5C)(a1)  
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f6                   # $f6 = 13.00
    lui     $at, %hi(var_8099BE48)     # $at = 809A0000
    lui     t8, %hi(var_80991A40)      # t8 = 80990000
    swc1    $f6, %lo(var_8099BE48)($at) 
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    swc1    $f6, %lo(var_8099BE68)($at) 
    lui     $at, 0x42F8                # $at = 42F80000
    mtc1    $at, $f8                   # $f8 = 124.00
    lui     $at, %hi(var_8099BE4C)     # $at = 809A0000
    addiu   t8, t8, %lo(var_80991A40)  # t8 = 80991A40
    swc1    $f8, %lo(var_8099BE4C)($at) 
    lui     $at, %hi(var_8099BE6C)     # $at = 809A0000
    swc1    $f8, %lo(var_8099BE6C)($at) 
    lui     $at, 0x4327                # $at = 43270000
    mtc1    $at, $f10                  # $f10 = 167.00
    lui     $at, %hi(var_8099BE50)     # $at = 809A0000
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFEC
    swc1    $f10, %lo(var_8099BE50)($at) 
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    swc1    $f10, %lo(var_8099BE70)($at) 
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, %hi(var_8099BE58)     # $at = 809A0000
    lui     t4, %hi(var_8099BE88)      # t4 = 809A0000
    swc1    $f16, %lo(var_8099BE58)($at) 
    lwc1    $f18, %lo(var_8099BE58)($at) 
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    addiu   t4, t4, %lo(var_8099BE88)  # t4 = 8099BE88
    swc1    $f18, %lo(var_8099BE78)($at) 
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_8099BE5C)     # $at = 809A0000
    lui     t7, %hi(var_8099BE98)      # t7 = 809A0000
    swc1    $f4, %lo(var_8099BE5C)($at) 
    lwc1    $f6, %lo(var_8099BE5C)($at) 
    lui     $at, %hi(var_8099BE7C)     # $at = 809A0000
    addiu   t7, t7, %lo(var_8099BE98)  # t7 = 8099BE98
    swc1    $f6, %lo(var_8099BE7C)($at) 
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_8099BE60)     # $at = 809A0000
    swc1    $f8, %lo(var_8099BE60)($at) 
    lwc1    $f10, %lo(var_8099BE60)($at) 
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    swc1    $f10, %lo(var_8099BE80)($at) 
    lw      t3, 0x0000(t8)             # 80991A40
    sw      t3, 0x0000(a1)             # FFFFFFEC
    lw      t9, 0x0004(t8)             # 80991A44
    lw      t6, 0x0000(a1)             # FFFFFFEC
    sw      t9, 0x0004(a1)             # FFFFFFF0
    lw      t3, 0x0008(t8)             # 80991A48
    sw      t3, 0x0008(a1)             # FFFFFFF4
    sw      t6, 0x0000(t4)             # 8099BE88
    lw      t5, 0x0004(a1)             # FFFFFFF0
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t5, 0x0004(t4)             # 8099BE8C
    lw      t6, 0x0008(a1)             # FFFFFFF4
    sw      t6, 0x0008(t4)             # 8099BE90
    lw      t9, 0x0000(a1)             # FFFFFFEC
    sw      t9, 0x0000(t7)             # 8099BE98
    lw      t8, 0x0004(a1)             # FFFFFFF0
    sw      t8, 0x0004(t7)             # 8099BE9C
    lw      t9, 0x0008(a1)             # FFFFFFF4
    sw      t9, 0x0008(t7)             # 8099BEA0
    sw      t3, 0x0188(s1)             # 00000188
    lb      t4, 0x0000(s3)             # 8099BE42
    addiu   t5, t4, 0x0001             # t5 = 8099BE89
    sb      t5, 0x0000(s3)             # 8099BE42
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_8098643C:
    lw      t6, 0x0188(s1)             # 00000188
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t7, $zero, lbl_80986470    
    sw      t7, 0x0188(s1)             # 00000188
    jal     func_800218EC              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lb      t9, 0x0000(s3)             # 8099BE42
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    addiu   t3, t9, 0x0001             # t3 = 00000001
    sb      t3, 0x0000(s3)             # 8099BE42
    sw      t4, 0x0188(s1)             # 00000188
lbl_80986470:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986478:
    lw      t5, 0x0188(s1)             # 00000188
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    bne     t6, $zero, lbl_80986494    
    sw      t6, 0x0188(s1)             # 00000188
    lb      t8, 0x0000(s3)             # 8099BE42
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(s3)             # 8099BE42
lbl_80986494:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991CF8)     # $at = 80990000
    lwc1    $f16, %lo(var_80991CF8)($at) 
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_809864C0               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
lbl_809864C0:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_809864C8:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lb      t3, 0x0000(s3)             # 8099BE42
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0000(s3)             # 8099BE42
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_809864EC:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s2, 0x1D64             # a1 = 00001D64
    lui     t5, %hi(var_80991A5C)      # t5 = 80990000
    lh      t5, %lo(var_80991A5C)(t5)  
    bnel    t5, $zero, lbl_8098651C    
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D0F0              
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, %hi(var_80991A5C)     # $at = 80990000
    sh      v0, %lo(var_80991A5C)($at) 
    or      a0, s2, $zero              # a0 = 00000000
lbl_8098651C:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    lh      a1, %lo(var_80991A5C)(a1)  
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f18                  # $f18 = 13.00
    lui     t1, %hi(var_8099BE48)      # t1 = 809A0000
    addiu   t1, t1, %lo(var_8099BE48)  # t1 = 8099BE48
    swc1    $f18, 0x0000(t1)           # 8099BE48
    lwc1    $f4, 0x0000(t1)            # 8099BE48
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    lw      a2, 0x0068($sp)            
    swc1    $f4, %lo(var_8099BE68)($at) 
    lui     $at, 0x42F8                # $at = 42F80000
    mtc1    $at, $f6                   # $f6 = 124.00
    lui     $at, %hi(var_8099BE6C)     # $at = 809A0000
    lui     t2, %hi(var_8099BE58)      # t2 = 809A0000
    swc1    $f6, 0x0004(t1)            # 8099BE4C
    lwc1    $f8, 0x0004(t1)            # 8099BE4C
    addiu   t2, t2, %lo(var_8099BE58)  # t2 = 8099BE58
    lui     t6, %hi(var_80991A40)      # t6 = 80990000
    swc1    $f8, %lo(var_8099BE6C)($at) 
    lui     $at, 0x4327                # $at = 43270000
    mtc1    $at, $f10                  # $f10 = 167.00
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    addiu   t6, t6, %lo(var_80991A40)  # t6 = 80991A40
    swc1    $f10, 0x0008(t1)           # 8099BE50
    lwc1    $f16, 0x0008(t1)           # 8099BE50
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFEC
    lui     t9, %hi(var_8099BE88)      # t9 = 809A0000
    swc1    $f16, %lo(var_8099BE70)($at) 
    lwc1    $f18, 0x0024(a2)           # 00000024
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    addiu   t9, t9, %lo(var_8099BE88)  # t9 = 8099BE88
    swc1    $f18, 0x0000(t2)           # 8099BE58
    lwc1    $f4, 0x0000(t2)            # 8099BE58
    lui     t5, %hi(var_8099BE98)      # t5 = 809A0000
    addiu   t5, t5, %lo(var_8099BE98)  # t5 = 8099BE98
    swc1    $f4, %lo(var_8099BE78)($at) 
    lwc1    $f6, 0x0028(a2)            # 00000028
    addiu   a0, s2, 0x1C24             # a0 = 00001C24
    lui     v1, %hi(var_80991918)      # v1 = 80990000
    swc1    $f6, 0x0004(t2)            # 8099BE5C
    lwc1    $f8, 0x0004(t2)            # 8099BE5C
    lui     t0, %hi(var_809919F6)      # t0 = 80990000
    addiu   t0, t0, %lo(var_809919F6)  # t0 = 809919F6
    swc1    $f8, %lo(var_8099BE7C)($at) 
    lwc1    $f10, 0x002C(a2)           # 0000002C
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    addiu   v1, v1, %lo(var_80991918)  # v1 = 80991918
    swc1    $f10, 0x0008(t2)           # 8099BE60
    lwc1    $f16, 0x0008(t2)           # 8099BE60
    addiu   s0, $zero, 0x000F          # s0 = 0000000F
    swc1    $f16, %lo(var_8099BE80)($at) 
    lw      t8, 0x0000(t6)             # 80991A40
    sw      t8, 0x0000(a1)             # FFFFFFEC
    lw      t7, 0x0004(t6)             # 80991A44
    lw      t4, 0x0000(a1)             # FFFFFFEC
    sw      t7, 0x0004(a1)             # FFFFFFF0
    lw      t8, 0x0008(t6)             # 80991A48
    sw      t8, 0x0008(a1)             # FFFFFFF4
    sw      t4, 0x0000(t9)             # 8099BE88
    lw      t3, 0x0004(a1)             # FFFFFFF0
    sw      t3, 0x0004(t9)             # 8099BE8C
    lw      t4, 0x0008(a1)             # FFFFFFF4
    sw      t4, 0x0008(t9)             # 8099BE90
    lw      t7, 0x0000(a1)             # FFFFFFEC
    sw      t7, 0x0000(t5)             # 8099BE98
    lw      t6, 0x0004(a1)             # FFFFFFF0
    sw      t6, 0x0004(t5)             # 8099BE9C
    lw      t7, 0x0008(a1)             # FFFFFFF4
    sw      t7, 0x0008(t5)             # 8099BEA0
    sw      a0, 0x0054($sp)            
lbl_80986650:
    lwc1    $f18, 0x0000(v1)           # 80991918
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x0004(v1)            # 8099191C
    lh      t8, 0x0000(t0)             # 809919F6
    add.s   $f6, $f18, $f4             
    lwc1    $f18, 0x0008(v1)           # 80991920
    lh      t4, 0x0002(t0)             # 809919F8
    lh      t7, 0x0004(t0)             # 809919FA
    swc1    $f6, 0x0010($sp)           
    lwc1    $f10, 0x0028(s1)           # 00000028
    lw      a0, 0x0054($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f16, $f8, $f10            
    or      a2, s2, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    swc1    $f16, 0x0014($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0018($sp)           
    lh      t9, 0x0030(s1)             # 00000030
    addu    t3, t8, t9                 
    sw      t3, 0x001C($sp)            
    lh      t5, 0x0032(s1)             # 00000032
    addu    t6, t4, t5                 
    sw      t6, 0x0020($sp)            
    lh      t8, 0x0034(s1)             # 00000034
    sw      t0, 0x004C($sp)            
    sw      v1, 0x0050($sp)            
    addu    t9, t7, t8                 
    sw      t9, 0x0024($sp)            
    jal     func_800253F0              
    sw      s0, 0x0028($sp)            
    lw      v1, 0x0050($sp)            
    lw      t0, 0x004C($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 0000000E
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v1, v1, 0xFFF4             # v1 = FFFFFFF4
    bne     s0, $at, lbl_80986650      
    addiu   t0, t0, 0xFFFA             # t0 = FFFFFFFA
    addiu   t3, $zero, 0x005A          # t3 = 0000005A
    sw      t3, 0x0188(s1)             # 00000188
    lb      t4, 0x0000(s3)             # 8099BE42
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0000(s3)             # 8099BE42
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986708:
    lui     $at, 0xC2B8                # $at = C2B80000
    mtc1    $at, $f8                   # $f8 = -92.00
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f10                  # $f10 = 22.00
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f16                  # $f16 = 360.00
    lui     v0, %hi(var_8099BE68)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE68)  # v0 = 8099BE68
    lui     $at, 0x427C                # $at = 427C0000
    mtc1    $at, $f18                  # $f18 = 63.00
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    swc1    $f8, 0x0000(v0)            # 8099BE68
    swc1    $f10, 0x0004(v0)           # 8099BE6C
    swc1    $f16, 0x0008(v0)           # 8099BE70
    swc1    $f18, %lo(var_8099BE78)($at) 
    lui     $at, 0x42D0                # $at = 42D00000
    mtc1    $at, $f4                   # $f4 = 104.00
    lui     $at, %hi(var_8099BE7C)     # $at = 809A0000
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    swc1    $f4, %lo(var_8099BE7C)($at) 
    lui     $at, 0x4378                # $at = 43780000
    mtc1    $at, $f6                   # $f6 = 248.00
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3F33                 # a3 = 3F330000
    ori     a3, a3, 0x3333             # a3 = 3F333333
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x40E0                 # a1 = 40E00000
    swc1    $f2, 0x0010($sp)           
    jal     func_80064178              
    swc1    $f6, %lo(var_8099BE80)($at) 
    lui     $at, %hi(var_8099BE88)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099BE88)($at) 
    lui     $at, %hi(var_8099BE90)     # $at = 809A0000
    lui     t7, %hi(var_8099BE88)      # t7 = 809A0000
    swc1    $f8, %lo(var_8099BE90)($at) 
    lui     $at, %hi(var_8099BE8C)     # $at = 809A0000
    addiu   t7, t7, %lo(var_8099BE88)  # t7 = 8099BE88
    swc1    $f8, %lo(var_8099BE8C)($at) 
    lw      t9, 0x0000(t7)             # 8099BE88
    lui     t6, %hi(var_8099BE98)      # t6 = 809A0000
    addiu   t6, t6, %lo(var_8099BE98)  # t6 = 8099BE98
    sw      t9, 0x0000(t6)             # 8099BE98
    lw      t9, 0x0008(t7)             # 8099BE90
    lw      t8, 0x0004(t7)             # 8099BE8C
    sw      t9, 0x0008(t6)             # 8099BEA0
    sw      t8, 0x0004(t6)             # 8099BE9C
    lw      t3, 0x0188(s1)             # 00000188
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    bne     t4, $zero, lbl_809867EC    
    sw      t4, 0x0188(s1)             # 00000188
    lb      t6, 0x0000(s3)             # 8099BE42
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    addiu   t7, t6, 0x0001             # t7 = 8099BE99
    sb      t7, 0x0000(s3)             # 8099BE42
    sw      t8, 0x0188(s1)             # 00000188
lbl_809867EC:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_809867F4:
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f10                  # $f10 = 140.00
    lui     $at, 0x434D                # $at = 434D0000
    mtc1    $at, $f18                  # $f18 = 205.00
    lui     v0, %hi(var_8099BE48)      # v0 = 809A0000
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f6                   # $f6 = -20.00
    addiu   v0, v0, %lo(var_8099BE48)  # v0 = 8099BE48
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f10, 0x0000(v0)           # 8099BE48
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     a3, %hi(var_8099BE58)      # a3 = 809A0000
    lui     $at, 0x4377                # $at = 43770000
    swc1    $f18, 0x0004(v0)           # 8099BE4C
    mtc1    $at, $f18                  # $f18 = 247.00
    addiu   a3, a3, %lo(var_8099BE58)  # a3 = 8099BE58
    swc1    $f6, 0x0008(v0)            # 8099BE50
    lui     a0, %hi(var_8099BE68)      # a0 = 809A0000
    lui     $at, 0xC35C                # $at = C35C0000
    lwc1    $f16, 0x0000(v0)           # 8099BE48
    lwc1    $f4, 0x0004(v0)            # 8099BE4C
    lwc1    $f8, 0x0008(v0)            # 8099BE50
    mtc1    $at, $f6                   # $f6 = -220.00
    addiu   a0, a0, %lo(var_8099BE68)  # a0 = 8099BE68
    lui     a1, %hi(var_8099BE78)      # a1 = 809A0000
    swc1    $f10, 0x0000(a3)           # 8099BE58
    swc1    $f18, 0x0004(a3)           # 8099BE5C
    swc1    $f16, 0x0000(a0)           # 8099BE68
    swc1    $f4, 0x0004(a0)            # 8099BE6C
    swc1    $f8, 0x0008(a0)            # 8099BE70
    swc1    $f6, 0x0008(a3)            # 8099BE60
    lwc1    $f16, 0x0000(a3)           # 8099BE58
    lwc1    $f4, 0x0004(a3)            # 8099BE5C
    lwc1    $f8, 0x0008(a3)            # 8099BE60
    addiu   a1, a1, %lo(var_8099BE78)  # a1 = 8099BE78
    addiu   t9, v1, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(s3)             # 8099BE42
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    swc1    $f16, 0x0000(a1)           # 8099BE78
    swc1    $f4, 0x0004(a1)            # 8099BE7C
    swc1    $f8, 0x0008(a1)            # 8099BE80
    sw      t3, 0x0188(s1)             # 00000188
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_809868A4:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x4377                # $at = 43770000
    mtc1    $at, $f16                  # $f16 = 247.00
    lui     v0, %hi(var_8099BE78)      # v0 = 809A0000
    lui     $at, 0xC35C                # $at = C35C0000
    mtc1    $at, $f18                  # $f18 = -220.00
    addiu   v0, v0, %lo(var_8099BE78)  # v0 = 8099BE78
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3F33                 # a3 = 3F330000
    ori     a3, a3, 0x3333             # a3 = 3F333333
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x40E0                 # a1 = 40E00000
    swc1    $f2, 0x0010($sp)           
    swc1    $f10, 0x0000(v0)           # 8099BE78
    swc1    $f16, 0x0004(v0)           # 8099BE7C
    jal     func_80064178              
    swc1    $f18, 0x0008(v0)           # 8099BE80
    lui     v0, %hi(var_8099BE88)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE88)  # v0 = 8099BE88
    lwc1    $f4, 0x0000(v0)            # 8099BE88
    lw      t6, 0x0000(v0)             # 8099BE88
    lui     t4, %hi(var_8099BE98)      # t4 = 809A0000
    swc1    $f4, 0x0008(v0)            # 8099BE90
    lwc1    $f6, 0x0008(v0)            # 8099BE90
    addiu   t4, t4, %lo(var_8099BE98)  # t4 = 8099BE98
    swc1    $f6, 0x0004(v0)            # 8099BE8C
    sw      t6, 0x0000(t4)             # 8099BE98
    lw      t5, 0x0004(v0)             # 8099BE8C
    sw      t5, 0x0004(t4)             # 8099BE9C
    lw      t6, 0x0008(v0)             # 8099BE90
    sw      t6, 0x0008(t4)             # 8099BEA0
    lw      t7, 0x0188(s1)             # 00000188
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    bne     t8, $zero, lbl_80986950    
    sw      t8, 0x0188(s1)             # 00000188
    lb      t3, 0x0000(s3)             # 8099BE42
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0000(s3)             # 8099BE42
    sw      t5, 0x0188(s1)             # 00000188
lbl_80986950:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986958:
    lw      t6, 0x0188(s1)             # 00000188
    lui     $at, 0x4120                # $at = 41200000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t7, $zero, lbl_80986A1C    
    sw      t7, 0x0188(s1)             # 00000188
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    lui     t9, %hi(var_80991A40)      # t9 = 80990000
    swc1    $f8, %lo(var_8099BE78)($at) 
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lui     $at, %hi(var_8099BE7C)     # $at = 809A0000
    addiu   t9, t9, %lo(var_80991A40)  # t9 = 80991A40
    swc1    $f10, %lo(var_8099BE7C)($at) 
    lui     $at, 0xC35C                # $at = C35C0000
    mtc1    $at, $f16                  # $f16 = -220.00
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFEC
    swc1    $f16, %lo(var_8099BE80)($at) 
    lw      t4, 0x0000(t9)             # 80991A40
    lui     t5, %hi(var_8099BE88)      # t5 = 809A0000
    addiu   t5, t5, %lo(var_8099BE88)  # t5 = 8099BE88
    sw      t4, 0x0000(a1)             # FFFFFFEC
    lw      t3, 0x0004(t9)             # 80991A44
    lw      t7, 0x0000(a1)             # FFFFFFEC
    lui     t8, %hi(var_8099BE98)      # t8 = 809A0000
    sw      t3, 0x0004(a1)             # FFFFFFF0
    lw      t4, 0x0008(t9)             # 80991A48
    addiu   t8, t8, %lo(var_8099BE98)  # t8 = 8099BE98
    sw      t4, 0x0008(a1)             # FFFFFFF4
    sw      t7, 0x0000(t5)             # 8099BE88
    lw      t6, 0x0004(a1)             # FFFFFFF0
    sw      t6, 0x0004(t5)             # 8099BE8C
    lw      t7, 0x0008(a1)             # FFFFFFF4
    sw      t7, 0x0008(t5)             # 8099BE90
    lw      t3, 0x0000(a1)             # FFFFFFEC
    sw      t3, 0x0000(t8)             # 8099BE98
    lw      t9, 0x0004(a1)             # FFFFFFF0
    sw      t9, 0x0004(t8)             # 8099BE9C
    lw      t3, 0x0008(a1)             # FFFFFFF4
    sw      t3, 0x0008(t8)             # 8099BEA0
    lb      t4, 0x0000(s3)             # 8099BE42
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t5, t4, 0x0001             # t5 = 00000002
    sb      t5, 0x0000(s3)             # 8099BE42
    lb      t6, 0x0000(s3)             # 8099BE42
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(s3)             # 8099BE42
    sw      t8, 0x0188(s1)             # 00000188
lbl_80986A1C:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986A24:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x4160                 # a1 = 41600000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     t0, %hi(var_8099BE88)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE88)  # t0 = 8099BE88
    lui     $at, %hi(var_80991CFC)     # $at = 80990000
    lwc1    $f4, %lo(var_80991CFC)($at) 
    lwc1    $f2, 0x0000(t0)            # 8099BE88
    lw      t4, 0x0000(t0)             # 8099BE88
    lui     t9, %hi(var_8099BE98)      # t9 = 809A0000
    mul.s   $f6, $f2, $f4              
    addiu   t9, t9, %lo(var_8099BE98)  # t9 = 8099BE98
    swc1    $f2, 0x0008(t0)            # 8099BE90
    lui     $at, %hi(var_8099BEA0)     # $at = 809A0000
    swc1    $f6, 0x0004(t0)            # 8099BE8C
    sw      t4, 0x0000(t9)             # 8099BE98
    lw      t3, 0x0004(t0)             # 8099BE8C
    sw      t3, 0x0004(t9)             # 8099BE9C
    lw      t4, 0x0008(t0)             # 8099BE90
    sw      t4, 0x0008(t9)             # 8099BEA0
    lwc1    $f8, %lo(var_8099BEA0)($at) 
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f10                  # $f10 = 1.75
    lui     $at, %hi(var_8099BEA0)     # $at = 809A0000
    mul.s   $f16, $f8, $f10            
    swc1    $f16, %lo(var_8099BEA0)($at) 
    lw      t5, 0x0188(s1)             # 00000188
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    bne     t6, $zero, lbl_80986AD0    
    sw      t6, 0x0188(s1)             # 00000188
    lb      t8, 0x0000(s3)             # 8099BE42
    addiu   t3, $zero, 0x1D4C          # t3 = 00001D4C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(s3)             # 8099BE42
    sw      t3, 0x0188(s1)             # 00000188
    sh      $zero, 0x01E2(s1)          # 000001E2
lbl_80986AD0:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986AD8:
    lui     t0, %hi(var_80991A5A)      # t0 = 80990000
    addiu   t0, t0, %lo(var_80991A5A)  # t0 = 80991A5A
    addiu   s0, $zero, 0x000A          # s0 = 0000000A
lbl_80986AE4:
    lbu     v1, -0x0001(t0)            # 80991A59
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $zero, lbl_80986BAC    
    addiu   s0, s0, 0xFFFF             # s0 = 00000009
    bne     v1, $at, lbl_80986B38      
    or      v0, v1, $zero              # v0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3941          # a1 = 00003941
    jal     func_80022FD0              
    sw      t0, 0x0054($sp)            
    jal     func_80985584              
    or      a0, s2, $zero              # a0 = 00000000
    lbu     t4, 0x0184(s1)             # 00000184
    lw      t0, 0x0054($sp)            
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    bnel    t4, $zero, lbl_80986B30    
    lbu     v1, -0x0001(t0)            # FFFFFFFF
    sb      t5, 0x0184(s1)             # 00000184
    lbu     v1, -0x0001(t0)            # FFFFFFFF
lbl_80986B30:
    beq     $zero, $zero, lbl_80986B98 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80986B38:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80986B98      
    or      a0, s2, $zero              # a0 = 00000000
    mtc1    s0, $f6                    # $f6 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    cvt.s.w $f8, $f6                   
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    swc1    $f8, 0x001C($sp)           
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x008C          # a3 = 0000008C
    sw      t0, 0x0054($sp)            
    swc1    $f18, 0x0010($sp)          
    jal     func_8098527C              
    swc1    $f4, 0x0014($sp)           
    lw      t0, 0x0054($sp)            
    lbu     v1, -0x0001(t0)            # FFFFFFFF
    or      v0, v1, $zero              # v0 = 00000000
lbl_80986B98:
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_80986BA8   
    addiu   t8, v1, 0x0001             # t8 = 00000001
    sb      t8, -0x0001(t0)            # FFFFFFFF
lbl_80986BA8:
    addiu   s0, s0, 0xFFFF             # s0 = 00000008
lbl_80986BAC:
    bne     s0, $zero, lbl_80986AE4    
    addiu   t0, t0, 0xFFFF             # t0 = FFFFFFFF
    addiu   a0, s1, 0x01E2             # a0 = 000001E2
    addiu   a1, $zero, 0x0280          # a1 = 00000280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x4160                 # a1 = 41600000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     t0, %hi(var_8099BE88)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE88)  # t0 = 8099BE88
    lwc1    $f16, 0x0000(t0)           # 8099BE88
    lw      t4, 0x0000(t0)             # 8099BE88
    lui     t9, %hi(var_8099BE98)      # t9 = 809A0000
    addiu   t9, t9, %lo(var_8099BE98)  # t9 = 8099BE98
    swc1    $f16, 0x0008(t0)           # 8099BE90
    sw      t4, 0x0000(t9)             # 8099BE98
    lw      t3, 0x0004(t0)             # 8099BE8C
    ori     $at, $zero, 0xAFC8         # $at = 0000AFC8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t3, 0x0004(t9)             # 8099BE9C
    lw      t4, 0x0008(t0)             # 8099BE90
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t4, 0x0008(t9)             # 8099BEA0
    lw      v1, 0x0188(s1)             # 00000188
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    slt     $at, v1, $at               
    bne     $at, $zero, lbl_80986C64   
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    jal     func_800218EC              
    sb      t5, 0x0AE3($at)            # 00010AE3
    lui     t0, %hi(var_8099BE88)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE88)  # t0 = 8099BE88
    beq     $zero, $zero, lbl_80986C88 
    lw      v1, 0x0188(s1)             # 00000188
lbl_80986C64:
    ori     $at, $zero, 0x88B8         # $at = 000088B8
    slt     $at, v1, $at               
    bnel    $at, $zero, lbl_80986C8C   
    lh      t6, 0x01E2(s1)             # 000001E2
    jal     func_800CAA70              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lui     t0, %hi(var_8099BE88)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE88)  # t0 = 8099BE88
    lw      v1, 0x0188(s1)             # 00000188
lbl_80986C88:
    lh      t6, 0x01E2(s1)             # 000001E2
lbl_80986C8C:
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, 0x8012                 # a1 = 80120000
    addu    t7, v1, t6                 
    slt     $at, t7, $at               
    bne     $at, $zero, lbl_80986DB4   
    sw      t7, 0x0188(s1)             # 00000188
    lui     $at, %hi(var_80991D00)     # $at = 80990000
    lwc1    $f18, %lo(var_80991D00)($at) 
    lui     $at, %hi(var_8099BE9C)     # $at = 809A0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f18, %lo(var_8099BE9C)($at) 
    lb      t9, 0x0000(s3)             # 8099BE42
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t3, t9, 0x0001             # t3 = 00000001
    sb      t3, 0x0000(s3)             # 8099BE42
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    swc1    $f18, 0x0004(t0)           # 8099BE8C
    swc1    $f4, %lo(var_8099BE68)($at) 
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    swc1    $f6, %lo(var_8099BE70)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f10                  # $f10 = 140.00
    lhu     t4, 0x0EE2(a1)             # 8011B4B2
    lui     v1, %hi(var_8099BE78)      # v1 = 809A0000
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f16                  # $f16 = -200.00
    addiu   v1, v1, %lo(var_8099BE78)  # v1 = 8099BE78
    andi    t5, t4, 0x0040             # t5 = 00000000
    swc1    $f8, 0x0000(v1)            # 8099BE78
    swc1    $f10, 0x0004(v1)           # 8099BE7C
    bne     t5, $zero, lbl_80986D7C    
    swc1    $f16, 0x0008(v1)           # 8099BE80
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x1230             # v0 = 06001230
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t4, $zero, 0x00B4          # t4 = 000000B4
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addu    a2, t9, t3                 
    addu    a2, a2, $at                
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    sw      t6, 0x0018($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s2, 0x1D4C             # a1 = 00001D4C
    jal     func_80020780              
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
lbl_80986D7C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991D04)     # $at = 80990000
    lwc1    $f18, %lo(var_80991D04)($at) 
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80986DAC               
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    addiu   t7, $zero, 0x0028          # t7 = 00000028
lbl_80986DAC:
    beq     $zero, $zero, lbl_80986E14 
    sw      t7, 0x0188(s1)             # 00000188
lbl_80986DB4:
    lui     $at, %hi(var_80991D08)     # $at = 80990000
    lwc1    $f4, %lo(var_80991D08)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, %hi(var_8099BE6C)     # $at = 809A0000
    swc1    $f4, 0x0004(t0)            # 00000004
    swc1    $f6, %lo(var_8099BE6C)($at) 
    jal     func_800636C4              # sins?
    lh      a0, 0x018A(s1)             # 0000018A
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    mul.s   $f10, $f0, $f8             
    swc1    $f10, %lo(var_8099BE68)($at) 
    jal     func_80063684              # coss?
    lh      a0, 0x018A(s1)             # 0000018A
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f4                   # $f4 = -200.00
    mul.s   $f18, $f0, $f16            
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    add.s   $f6, $f18, $f4             
    swc1    $f6, %lo(var_8099BE70)($at) 
lbl_80986E14:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986E1C:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0018($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x008C          # a3 = 0000008C
    sw      $zero, 0x0020($sp)         
    swc1    $f8, 0x0010($sp)           
    swc1    $f10, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
    lw      t9, 0x0188(s1)             # 00000188
    addiu   t3, t9, 0xFFFF             # t3 = FFFFFFFF
    bne     t3, $zero, lbl_80986E84    
    sw      t3, 0x0188(s1)             # 00000188
    lb      t5, 0x0000(s3)             # 8099BE42
    addiu   t7, $zero, 0x002D          # t7 = 0000002D
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(s3)             # 8099BE42
    sw      t7, 0x0188(s1)             # 00000188
lbl_80986E84:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986E8C:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0018($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x008C          # a3 = 0000008C
    sw      $zero, 0x0020($sp)         
    swc1    $f18, 0x0010($sp)          
    swc1    $f4, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f6, 0x001C($sp)           
    lw      t9, 0x0188(s1)             # 00000188
    addiu   t3, t9, 0xFFFF             # t3 = FFFFFFFF
    bne     t3, $zero, lbl_80986EF4    
    sw      t3, 0x0188(s1)             # 00000188
    lb      t5, 0x0000(s3)             # 8099BE42
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(s3)             # 8099BE42
    sw      t7, 0x0188(s1)             # 00000188
lbl_80986EF4:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986EFC:
    lw      t8, 0x0188(s1)             # 00000188
    or      a0, s2, $zero              # a0 = 00000000
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    bne     t9, $zero, lbl_80986F90    
    sw      t9, 0x0188(s1)             # 00000188
    jal     func_8009D21C              
    lh      a1, %lo(var_80991A5C)(a1)  
    lui     $at, %hi(var_80991A5C)     # $at = 80990000
    sh      $zero, %lo(var_80991A5C)($at) 
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80052340              
    addiu   a1, s2, 0x1D64             # a1 = 00001D64
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lb      t4, 0x0000(s3)             # 8099BE42
    lhu     t6, 0x0EE2(a1)             # 8011B4B2
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    ori     t7, t6, 0x0040             # t7 = 00000040
    sb      t5, 0x0000(s3)             # 8099BE42
    sh      t7, 0x0EE2(a1)             # 8011B4B2
    lh      v1, 0x008A(s1)             # 0000008A
    lw      a0, 0x0068($sp)            
    addu    v1, v1, $at                
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x0032(a0)             # 00000032
    sh      v1, 0x00B6(a0)             # 000000B6
lbl_80986F90:
    beq     $zero, $zero, lbl_80986FA4 
    lb      v1, 0x0000(s3)             # 8099BE42
var_80986F98:
    jal     func_809871CC              
    or      a0, s1, $zero              # a0 = 00000000
    lb      v1, 0x0000(s3)             # 8099BE42
lbl_80986FA4:
    slti    $at, v1, 0x0005            
    bne     $at, $zero, lbl_80987020   
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    jal     func_800C50AC              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lb      t8, 0x0000(s3)             # 8099BE42
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s2                 
    slti    $at, t8, 0x0008            
    bnel    $at, $zero, lbl_80987024   
    lh      t5, 0x01A0(s1)             # 000001A0
    lw      t9, 0x1DE4(t9)             # 00011DE4
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t3, t9, 0x0003             # t3 = 00000000
    bne     t3, $zero, lbl_80987020    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    sw      t4, 0x0018($sp)            
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0020($sp)         
    swc1    $f8, 0x0010($sp)           
    swc1    $f10, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
lbl_80987020:
    lh      t5, 0x01A0(s1)             # 000001A0
lbl_80987024:
    addiu   t6, t5, 0x0CE4             # t6 = 00000CE4
    sh      t6, 0x01A0(s1)             # 000001A0
    jal     func_800636C4              # sins?
    lh      a0, 0x01A0(s1)             # 000001A0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     t5, %hi(var_80991A5C)      # t5 = 80990000
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    addiu   t4, t3, 0x0096             # t4 = 00000096
    sh      t4, 0x019E(s1)             # 0000019E
    lh      t5, %lo(var_80991A5C)(t5)  
    beql    t5, $zero, lbl_809871B4    
    lw      $ra, 0x0044($sp)           
    lb      t6, 0x0000(s3)             # 8099BE42
    lui     a0, %hi(var_8099BE48)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099BE48)  # a0 = 8099BE48
    slti    $at, t6, 0x000B            
    beq     $at, $zero, lbl_809871B0   
    lui     a1, %hi(var_8099BE68)      # a1 = 809A0000
    lui     $at, %hi(var_80991D0C)     # $at = 80990000
    lwc1    $f8, %lo(var_80991D0C)($at) 
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE88)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE88)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE68)(a1)  
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lui     $at, %hi(var_80991D10)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D10)($at) 
    lui     a0, %hi(var_8099BE4C)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE6C)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE8C)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE8C)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE6C)(a1)  
    addiu   a0, a0, %lo(var_8099BE4C)  # a0 = 8099BE4C
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, %hi(var_80991D14)     # $at = 80990000
    lwc1    $f16, %lo(var_80991D14)($at) 
    lui     a0, %hi(var_8099BE50)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE70)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE90)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE90)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE70)(a1)  
    addiu   a0, a0, %lo(var_8099BE50)  # a0 = 8099BE50
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, %hi(var_80991D18)     # $at = 80990000
    lwc1    $f18, %lo(var_80991D18)($at) 
    lui     a0, %hi(var_8099BE58)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE78)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE98)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE98)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE78)(a1)  
    addiu   a0, a0, %lo(var_8099BE58)  # a0 = 8099BE58
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     $at, %hi(var_80991D1C)     # $at = 80990000
    lwc1    $f4, %lo(var_80991D1C)($at) 
    lui     a0, %hi(var_8099BE5C)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE7C)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE9C)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE9C)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE7C)(a1)  
    addiu   a0, a0, %lo(var_8099BE5C)  # a0 = 8099BE5C
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_80991D20)     # $at = 80990000
    lwc1    $f6, %lo(var_80991D20)($at) 
    lui     a0, %hi(var_8099BE60)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE80)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BEA0)      # a3 = 809A0000
    lw      a3, %lo(var_8099BEA0)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE80)(a1)  
    addiu   a0, a0, %lo(var_8099BE60)  # a0 = 8099BE60
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    lui     a2, %hi(var_8099BE58)      # a2 = 809A0000
    lui     a3, %hi(var_8099BE48)      # a3 = 809A0000
    addiu   a3, a3, %lo(var_8099BE48)  # a3 = 8099BE48
    addiu   a2, a2, %lo(var_8099BE58)  # a2 = 8099BE58
    lh      a1, %lo(var_80991A5C)(a1)  
    jal     func_8009D328              
    or      a0, s2, $zero              # a0 = 00000000
lbl_809871B0:
    lw      $ra, 0x0044($sp)           
lbl_809871B4:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809871CC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3D84             # a0 = 06003D84
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f0, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x3D84             # a1 = 06003D84
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f0                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0xC3E1                # $at = C3E10000
    mtc1    $at, $f8                   # $f8 = -450.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t8, t7, $at                
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    sw      t8, 0x0004(s0)             # 00000004
    sw      t9, 0x0188(s0)             # 00000188
    lui     $at, %hi(var_8099BE40)     # $at = 809A0000
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    lui     a1, %hi(func_80987270)     # a1 = 80980000
    swc1    $f8, 0x00BC(s0)            # 000000BC
    sb      t0, %lo(var_8099BE40)($at) 
    addiu   a1, a1, %lo(func_80987270) # a1 = 80987270
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80987270:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    lw      t6, 0x004C($sp)            
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0044($sp)            
    lh      t8, 0x01A0(s0)             # 000001A0
    addiu   t9, t8, 0x0CE4             # t9 = 00000CE4
    sh      t9, 0x01A0(s0)             # 000001A0
    jal     func_800636C4              # sins?
    lh      a0, 0x01A0(s0)             # 000001A0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lw      v0, 0x0188(s0)             # 00000188
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    addiu   t4, t3, 0x0096             # t4 = 00000096
    beq     v0, $zero, lbl_809872EC    
    sh      t4, 0x019E(s0)             # 0000019E
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    bne     t5, $zero, lbl_809872EC    
    sw      t5, 0x0188(s0)             # 00000188
    lui     t7, %hi(var_8099BE40)      # t7 = 809A0000
    lbu     t7, %lo(var_8099BE40)(t7)  
    lui     $at, %hi(var_8099BE40)     # $at = 809A0000
    andi    t8, t7, 0x007F             # t8 = 00000000
    sb      t8, %lo(var_8099BE40)($at) 
lbl_809872EC:
    lbu     v0, 0x028C(s0)             # 0000028C
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80987330    
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x028C(s0)             # 0000028C
    lw      t1, 0x0044($sp)            
    lw      t2, 0x0280(s0)             # 00000280
    lui     $at, 0x4100                # $at = 41000000
    lw      a0, 0x004C($sp)            
    bne     t1, t2, lbl_80987330       
    nop
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
lbl_80987330:
    lui     t3, %hi(var_8099BE40)      # t3 = 809A0000
    lbu     t3, %lo(var_8099BE40)(t3)  
    andi    t4, t3, 0x007F             # t4 = 00000000
    beq     t4, $zero, lbl_80987374    
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x0154(s0)           # 00000154
    sw      t5, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393D          # a1 = 0000393D
lbl_80987374:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809873A0    
    lui     t6, %hi(var_8099BE41)      # t6 = 809A0000
    lbu     t6, %lo(var_8099BE41)(t6)  
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t6, 0x0003            
    bnel    $at, $zero, lbl_809873A4   
    lh      a1, 0x0030(s0)             # 00000030
    jal     func_80987508              
    lw      a1, 0x004C($sp)            
lbl_809873A0:
    lh      a1, 0x0030(s0)             # 00000030
lbl_809873A4:
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    lh      a1, 0x0034(s0)             # 00000034
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    lh      t7, 0x019C(s0)             # 0000019C
    addiu   t8, t7, 0x0C31             # t8 = 00000C31
    sh      t8, 0x019C(s0)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s0)             # 0000019C
    lui     $at, %hi(var_80991D24)     # $at = 80990000
    lwc1    $f16, %lo(var_80991D24)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f18, $f0, $f16            
    lh      a0, 0x019C(s0)             # 0000019C
    add.s   $f6, $f18, $f4             
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0190(s0)            # 00000190
    lui     $at, %hi(var_80991D28)     # $at = 80990000
    lwc1    $f8, %lo(var_80991D28)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f10, $f0, $f8             
    lui     t0, 0x0001                 # t0 = 00010000
    lui     $at, 0x4120                # $at = 41200000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0194(s0)           # 00000194
    lw      t9, 0x004C($sp)            
    addu    t0, t0, t9                 
    lw      t0, 0x1DE4(t0)             # 00011DE4
    or      a0, t9, $zero              # a0 = 00000000
    andi    t1, t0, 0x0003             # t1 = 00000000
    bne     t1, $zero, lbl_8098747C    
    nop
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    sw      t2, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    swc1    $f0, 0x0014($sp)           
    swc1    $f0, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f4, 0x0010($sp)           
lbl_8098747C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991D2C)     # $at = 80990000
    lwc1    $f6, %lo(var_80991D2C)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_809874AC               
    addiu   a1, s0, 0x027C             # a1 = 0000027C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    addiu   a1, s0, 0x027C             # a1 = 0000027C
lbl_809874AC:
    sw      a1, 0x0040($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x004C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x003C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0040($sp)            
    lw      a1, 0x003C($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0040($sp)            
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    jal     func_800C50AC              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80987508:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s4, 0x0048($sp)            
    sw      s0, 0x0038($sp)            
    lui     v0, %hi(var_8099BE41)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE41)  # v0 = 8099BE41
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    lbu     t6, 0x0000(v0)             # 8099BE41
    lui     s1, %hi(var_809918DC)      # s1 = 80990000
    lui     s2, %hi(var_809919D8)      # s2 = 80990000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(v0)             # 8099BE41
    addiu   s2, s2, %lo(var_809919D8)  # s2 = 809919D8
    addiu   s1, s1, %lo(var_809918DC)  # s1 = 809918DC
    addiu   s3, $zero, 0x000A          # s3 = 0000000A
    addiu   s5, s4, 0x1C24             # s5 = 00001C24
    addiu   s6, $zero, 0x0005          # s6 = 00000005
lbl_80987564:
    lwc1    $f4, 0x0000(s1)            # 809918DC
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0004(s1)           # 809918E0
    lh      t8, 0x0000(s2)             # 809919D8
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(s1)            # 809918E4
    lh      t1, 0x0002(s2)             # 809919DA
    lh      t4, 0x0004(s2)             # 809919DC
    swc1    $f8, 0x0010($sp)           
    lwc1    $f16, 0x0028(s0)           # 00000028
    or      a0, s5, $zero              # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f18, $f10, $f16           
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    swc1    $f18, 0x0014($sp)          
    lwc1    $f6, 0x002C(s0)            # 0000002C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0018($sp)           
    lh      t9, 0x0030(s0)             # 00000030
    addu    t0, t8, t9                 
    sw      t0, 0x001C($sp)            
    lh      t2, 0x0032(s0)             # 00000032
    addu    t3, t1, t2                 
    sw      t3, 0x0020($sp)            
    lh      t5, 0x0034(s0)             # 00000034
    sw      s3, 0x0028($sp)            
    addu    t6, t4, t5                 
    jal     func_800253F0              
    sw      t6, 0x0024($sp)            
    addiu   s3, s3, 0xFFFF             # s3 = 00000009
    addiu   s1, s1, 0xFFF4             # s1 = 809918D0
    bne     s3, s6, lbl_80987564       
    addiu   s2, s2, 0xFFFA             # s2 = 809919D2
    lw      t7, 0x0004(s0)             # 00000004
    lui     a1, %hi(func_80987634)     # a1 = 80980000
    sb      $zero, 0x0186(s0)          # 00000186
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_80987634) # a1 = 80987634
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0054($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80987634:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0054($sp)            
    lbu     t8, 0x0114(s0)             # 00000114
    bne     t8, $zero, lbl_809876B8    
    lui     t0, %hi(var_8099BEAE)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BEAE)  # t0 = 8099BEAE
    lhu     t9, 0x0000(t0)             # 8099BEAE
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sh      t1, 0x0000(t0)             # 8099BEAE
    lb      t2, 0x0186(s0)             # 00000186
    beql    t2, $zero, lbl_809876B8    
    sw      t7, 0x029C(s0)             # 0000029C
    lhu     t3, 0x0112(s0)             # 00000112
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t4, t3, 0x4000             # t4 = 00000000
    beq     t4, $zero, lbl_809876B4    
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    sw      t5, 0x0010($sp)            
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lb      t6, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_809876B8 
    sb      t6, 0x0114(s0)             # 00000114
lbl_809876B4:
    sw      t7, 0x029C(s0)             # 0000029C
lbl_809876B8:
    lbu     v0, 0x028D(s0)             # 0000028D
    lui     t0, %hi(var_8099BEAE)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BEAE)  # t0 = 8099BEAE
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_8098779C    
    lbu     v0, 0x028C(s0)             # 0000028C
    lw      t1, 0x0284(s0)             # 00000284
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x028D(s0)             # 0000028D
    lh      t2, 0x0000(t1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    lui     v0, %hi(var_80991A4C)      # v0 = 80990000
    bne     t2, $at, lbl_80987728      
    addiu   v0, v0, %lo(var_80991A4C)  # v0 = 80991A4C
    lhu     t3, 0x0000(t0)             # 8099BEAE
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    sw      t5, 0x0010($sp)            
    andi    t4, t3, 0xFE00             # t4 = 00000000
    sh      t4, 0x0000(t0)             # 8099BEAE
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t6, 0x0FC0                 # t6 = 0FC00000
    ori     t6, t6, 0x0712             # t6 = 0FC00712
    beq     $zero, $zero, lbl_80987784 
    sw      t6, 0x029C(s0)             # 0000029C
lbl_80987728:
    lbu     t7, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0000(v0)             # 00000000
    lbu     v1, 0x0114(s0)             # 00000114
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    beq     v1, $zero, lbl_8098777C    
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    lhu     t9, 0x0112(s0)             # 00000112
    addiu   t2, v1, 0xFFFB             # t2 = FFFFFFFB
    andi    t1, t9, 0x4000             # t1 = 00000000
    bne     t1, $zero, lbl_8098777C    
    nop
    sb      t2, 0x0186(s0)             # 00000186
    lb      t3, 0x0186(s0)             # 00000186
    slti    $at, t3, 0x00A1            
    bne     $at, $zero, lbl_8098777C   
    nop
    sb      $zero, 0x0186(s0)          # 00000186
lbl_8098777C:
    jal     func_80027090              
    sw      t4, 0x0010($sp)            
lbl_80987784:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393E          # a1 = 0000393E
    lui     t0, %hi(var_8099BEAE)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BEAE)  # t0 = 8099BEAE
    lbu     v0, 0x028C(s0)             # 0000028C
lbl_8098779C:
    andi    t5, v0, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_80987800    
    andi    t6, v0, 0xFFFD             # t6 = 00000000
    sb      t6, 0x028C(s0)             # 0000028C
    lhu     t7, 0x0000(t0)             # 8099BEAE
    lw      t1, 0x0054($sp)            
    lui     $at, 0x4100                # $at = 41000000
    addiu   t8, t7, 0x0018             # t8 = 00000018
    andi    t9, t8, 0xFFF0             # t9 = 00000010
    sh      t9, 0x0000(t0)             # 8099BEAE
    lw      t2, 0x0280(s0)             # 00000280
    lw      a0, 0x005C($sp)            
    bnel    t1, t2, lbl_80987804       
    lhu     v0, 0x0000(t0)             # 8099BEAE
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0054($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lui     t0, %hi(var_8099BEAE)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BEAE)  # t0 = 8099BEAE
lbl_80987800:
    lhu     v0, 0x0000(t0)             # 8099BEAE
lbl_80987804:
    slti    $at, v0, 0x000B            
    bne     $at, $zero, lbl_809878B8   
    andi    t3, v0, 0x0007             # t3 = 00000000
    bne     t3, $zero, lbl_809878B8    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFF0
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_809878BC               
    addiu   t7, s0, 0x0024             # t7 = 00000024
    lw      t5, 0x0024(s0)             # 00000024
    lui     $at, 0x439B                # $at = 439B0000
    mtc1    $at, $f18                  # $f18 = 310.00
    sw      t5, 0x0000(a3)             # FFFFFFF0
    lw      t4, 0x0028(s0)             # 00000028
    lui     $at, 0xC120                # $at = C1200000
    lui     a1, %hi(var_809934C0)      # a1 = 80990000
    sw      t4, 0x0004(a3)             # FFFFFFF4
    lw      t5, 0x002C(s0)             # 0000002C
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   a1, a1, %lo(var_809934C0)  # a1 = 809934C0
    sw      t5, 0x0008(a3)             # FFFFFFF8
    lwc1    $f10, 0x0054(s0)           # 00000054
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    lwc1    $f6, 0x004C($sp)           
    sw      $zero, 0x0014($sp)         
    mul.s   $f16, $f8, $f10            
    lwc1    $f10, 0x0048($sp)          
    sw      t6, 0x0010($sp)            
    lw      a0, 0x005C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    add.s   $f4, $f18, $f16            
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     $at, 0x435C                # $at = 435C0000
    add.s   $f8, $f6, $f4              
    mtc1    $at, $f4                   # $f4 = 220.00
    lwc1    $f6, 0x0050($sp)           
    add.s   $f16, $f10, $f18           
    swc1    $f8, 0x004C($sp)           
    add.s   $f8, $f6, $f4              
    swc1    $f16, 0x0048($sp)          
    jal     func_80990B80              
    swc1    $f8, 0x0050($sp)           
lbl_809878B8:
    addiu   t7, s0, 0x0024             # t7 = 00000024
lbl_809878BC:
    jal     func_800CDCCC              # Rand.Next() float
    sw      t7, 0x0044($sp)            
    lui     $at, %hi(var_80991D30)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D30)($at) 
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_809878E4               
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
lbl_809878E4:
    lh      a1, 0x0030(s0)             # 00000030
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    lh      a1, 0x0034(s0)             # 00000034
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC47A                 # a1 = C47A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     t8, %hi(var_8099BEAE)      # t8 = 809A0000
    lhu     t8, %lo(var_8099BEAE)(t8)  
    andi    t9, t8, 0x0100             # t9 = 00000000
    bnel    t9, $zero, lbl_80987964    
    lw      t3, 0x0004(s0)             # 00000004
    lw      t1, 0x0004(s0)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    ori     t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80987978 
    swc1    $f16, 0x0068(s0)           # 00000068
    lw      t3, 0x0004(s0)             # 00000004
lbl_80987964:
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at                
    sw      t4, 0x0004(s0)             # 00000004
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80987978:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809879A0    
    lui     t5, %hi(var_8099BE41)      # t5 = 809A0000
    lbu     t5, %lo(var_8099BE41)(t5)  
    slti    $at, t5, 0x0009            
    bnel    $at, $zero, lbl_809879A4   
    lh      t6, 0x019C(s0)             # 0000019C
    jal     func_80987B38              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809879A0:
    lh      t6, 0x019C(s0)             # 0000019C
lbl_809879A4:
    addiu   t7, t6, 0x0C31             # t7 = 00000C31
    sh      t7, 0x019C(s0)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s0)             # 0000019C
    lui     $at, %hi(var_80991D34)     # $at = 80990000
    lwc1    $f4, %lo(var_80991D34)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f4              
    lh      a0, 0x019C(s0)             # 0000019C
    add.s   $f18, $f8, $f10            
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0190(s0)           # 00000190
    lui     $at, %hi(var_80991D38)     # $at = 80990000
    lwc1    $f16, %lo(var_80991D38)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f6, $f0, $f16             
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x4120                # $at = 41200000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x0194(s0)            # 00000194
    lw      t8, 0x005C($sp)            
    addu    t9, t9, t8                 
    lw      t9, 0x1DE4(t9)             # 00011DE4
    or      a0, t8, $zero              # a0 = 00000000
    andi    t1, t9, 0x0003             # t1 = 00000000
    bnel    t1, $zero, lbl_80987A50    
    lw      t3, 0x0044($sp)            
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    sw      t2, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    swc1    $f0, 0x0014($sp)           
    swc1    $f0, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f10, 0x0010($sp)          
    lw      t3, 0x0044($sp)            
lbl_80987A50:
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f16                  # $f16 = 45.00
    lw      t5, 0x0000(t3)             # 00000000
    addiu   a1, s0, 0x027C             # a1 = 0000027C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t5, 0x0038(s0)             # 00000038
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x003C(s0)             # 0000003C
    lwc1    $f18, 0x003C(s0)           # 0000003C
    lw      t5, 0x0008(t3)             # 00000008
    add.s   $f6, $f18, $f16            
    sw      t5, 0x0040(s0)             # 00000040
    swc1    $f6, 0x003C(s0)            # 0000003C
    jal     func_80050B00              
    sw      a1, 0x0040($sp)            
    lw      a0, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x003C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0040($sp)            
    lbu     v1, 0x0114(s0)             # 00000114
    lw      a0, 0x005C($sp)            
    lw      a1, 0x003C($sp)            
    bne     v1, $zero, lbl_80987AC8    
    nop
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0040($sp)            
    lbu     v1, 0x0114(s0)             # 00000114
lbl_80987AC8:
    beq     v1, $zero, lbl_80987AE0    
    lw      a0, 0x005C($sp)            
    lhu     t7, 0x0112(s0)             # 00000112
    andi    t9, t7, 0x4000             # t9 = 00000000
    bnel    t9, $zero, lbl_80987AF0    
    lh      t1, 0x01E8(s0)             # 000001E8
lbl_80987AE0:
    lw      a1, 0x003C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0040($sp)            
    lh      t1, 0x01E8(s0)             # 000001E8
lbl_80987AF0:
    lui     $at, %hi(var_80991D3C)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D3C)($at) 
    mtc1    t1, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    cvt.s.w $f8, $f4                   
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    mul.s   $f18, $f8, $f10            
    add.s   $f6, $f18, $f16            
    mfc1    a2, $f6                    
    jal     func_800C50AC              
    nop
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80987B38:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x029C(a0)             # 0000029C
    lui     $at, %hi(var_8099BEA6)     # $at = 809A0000
    lui     a1, %hi(func_80987B74)     # a1 = 80980000
    swc1    $f4, 0x0068(a0)            # 00000068
    sb      $zero, %lo(var_8099BEA6)($at) 
    jal     func_80984CD0              
    addiu   a1, a1, %lo(func_80987B74) # a1 = 80987B74
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80987B74:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    lw      s1, 0x1C44(s4)             # 00001C44
    addiu   a0, s3, 0x0024             # a0 = 00000024
    addiu   s2, s3, 0x0008             # s2 = 00000008
    or      a1, s2, $zero              # a1 = 00000008
    jal     func_80063F00              
    sw      a0, 0x0058($sp)            
    sh      v0, 0x0062($sp)            
    lh      t6, 0x01A0(s3)             # 000001A0
    addiu   t7, t6, 0x0CE4             # t7 = 00000CE4
    sh      t7, 0x01A0(s3)             # 000001A0
    jal     func_800636C4              # sins?
    lh      a0, 0x01A0(s3)             # 000001A0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lbu     v0, 0x028C(s3)             # 0000028C
    mul.s   $f6, $f0, $f4              
    andi    t3, v0, 0x0002             # t3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f8                    
    nop
    addiu   t2, t1, 0x0096             # t2 = 00000096
    beq     t3, $zero, lbl_80987C58    
    sh      t2, 0x019E(s3)             # 0000019E
    lw      t5, 0x0280(s3)             # 00000280
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    sb      t4, 0x028C(s3)             # 0000028C
    bne     s1, t5, lbl_80987C58       
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s3)             # 0000008A
    or      a0, s4, $zero              # a0 = 00000000
    mfc1    a2, $f0                    
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lui     $at, %hi(var_80991D40)     # $at = 80990000
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991D40)($at) 
    trunc.w.s $f10, $f0                  
    lh      t6, 0x0032(s3)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t0, $f10                   
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    addu    t1, t6, t0                 
    addu    t2, t1, $at                
    jal     func_80022FD0              
    sh      t2, 0x0032(s3)             # 00000032
lbl_80987C58:
    lbu     t3, 0x028D(s3)             # 0000028D
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80987CC8    
    nop
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f16, 0x0154(s3)           # 00000154
    sw      t5, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393E          # a1 = 0000393E
    lui     v1, %hi(var_8099BE40)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE40)  # v1 = 8099BE40
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v1)             # 8099BE40
    lw      t9, 0x0004(s3)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t8, $zero, 0x0083          # t8 = 00000083
    and     t6, t9, $at                
    sw      t8, 0x0188(s3)             # 00000188
    sw      t6, 0x0004(s3)             # 00000004
    beq     $zero, $zero, lbl_80987DBC 
    addiu   s0, s3, 0x00BC             # s0 = 000000BC
lbl_80987CC8:
    lui     v1, %hi(var_8099BE40)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE40)  # v1 = 8099BE40
    sb      $zero, 0x0000(v1)          # 8099BE40
    lw      v0, 0x0188(s3)             # 00000188
    addiu   a0, s3, 0x01E8             # a0 = 000001E8
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_80987D54    
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    addiu   a0, s3, 0x01E8             # a0 = 000001E8
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bne     v0, $zero, lbl_80987D40    
    addiu   a0, s3, 0x0068             # a0 = 00000068
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x0068(s3)            # 00000068
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x4040                 # a1 = 40400000
    c.eq.s  $f18, $f4                  
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E19                 # a3 = 3E190000
    bc1fl   lbl_80987D38               
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    lh      t0, 0x008A(s3)             # 0000008A
    sh      t0, 0x0032(s3)             # 00000032
    ori     a3, a3, 0x999A             # a3 = 3E19999A
lbl_80987D38:
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
lbl_80987D40:
    lw      t1, 0x0004(s3)             # 00000004
    addiu   s0, s3, 0x00BC             # s0 = 000000BC
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_80987DBC 
    sw      t2, 0x0004(s3)             # 00000004
lbl_80987D54:
    slti    $at, t3, 0x0023            
    beq     $at, $zero, lbl_80987D68   
    sw      t3, 0x0188(s3)             # 00000188
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    sb      t5, 0x0000(v1)             # 00000000
lbl_80987D68:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a0, s3, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   s0, s3, 0x00BC             # s0 = 000000BC
    lui     a1, 0xC4B1                 # a1 = C4B10000
    ori     a1, a1, 0x8000             # a1 = C4B18000
    or      a0, s0, $zero              # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
lbl_80987DBC:
    lw      a0, 0x0058($sp)            
    jal     func_80063EB8              
    or      a1, s2, $zero              # a1 = 00000008
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    nop
    c.le.s  $f16, $f0                  
    nop
    bc1f    lbl_80987E08               
    addiu   a0, s3, 0x0032             # a0 = 00000032
    lh      a1, 0x0062($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x0001                # $at = 00010000
    addu    t7, s4, $at                
    beq     $zero, $zero, lbl_80987E98 
    sw      t7, 0x0054($sp)            
lbl_80987E08:
    lb      t8, 0x0A68(s1)             # 00000A68
    lui     $at, 0x0001                # $at = 00010000
    addiu   a0, s3, 0x0032             # a0 = 00000032
    beq     t8, $zero, lbl_80987E50    
    addu    t6, s4, $at                
    lh      a1, 0x008A(s3)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    sw      $zero, 0x0010($sp)         
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    lui     $at, 0x0001                # $at = 00010000
    addu    t9, s4, $at                
    beq     $zero, $zero, lbl_80987E98 
    sw      t9, 0x0054($sp)            
lbl_80987E50:
    sw      t6, 0x0054($sp)            
    lw      t1, 0x1DE4(t6)             # 00001DE4
    addiu   a0, s3, 0x0032             # a0 = 00000032
    lh      a1, 0x0062($sp)            
    andi    t2, t1, 0x0080             # t2 = 00000000
    bne     t2, $zero, lbl_80987E8C    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x008A(s3)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s3, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    beq     $zero, $zero, lbl_80987E98 
    nop
lbl_80987E8C:
    addiu   a3, $zero, 0x0258          # a3 = 00000258
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80987E98:
    lui     t3, %hi(var_8099BEA6)      # t3 = 809A0000
    lbu     t3, %lo(var_8099BEA6)(t3)  
    beq     t3, $zero, lbl_80987EB4    
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x0068(s3)           # 00000068
lbl_80987EB4:
    jal     func_8002121C              
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s3, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80987EE8    
    lui     t4, %hi(var_8099BE41)      # t4 = 809A0000
    lbu     t4, %lo(var_8099BE41)(t4)  
    or      a0, s3, $zero              # a0 = 00000000
    slti    $at, t4, 0x000F            
    bnel    $at, $zero, lbl_80987EEC   
    lh      t5, 0x00B6(s3)             # 000000B6
    jal     func_809881DC              
    or      a1, s4, $zero              # a1 = 00000000
lbl_80987EE8:
    lh      t5, 0x00B6(s3)             # 000000B6
lbl_80987EEC:
    lh      t7, 0x01E8(s3)             # 000001E8
    lui     t9, %hi(var_8099BE41)      # t9 = 809A0000
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    addu    t8, t5, t7                 
    sh      t8, 0x00B6(s3)             # 000000B6
    lbu     t9, %lo(var_8099BE41)(t9)  
    bnel    s1, t9, lbl_80987F34       
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 000000BC
    lui     a1, 0xC3E1                 # a1 = C3E10000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_80987F54 
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_80987F34:
    lui     a1, 0xC44A                 # a1 = C44A0000
    ori     a1, a1, 0x8000             # a1 = C44A8000
    or      a0, s0, $zero              # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0xC3FA                # $at = C3FA0000
lbl_80987F54:
    mtc1    $at, $f10                  # $f10 = -500.00
    lwc1    $f8, 0x00BC(s3)            # 000000BC
    c.le.s  $f10, $f8                  
    nop
    bc1f    lbl_80988030               
    lui     t6, %hi(var_8099BE41)      # t6 = 809A0000
    lbu     t6, %lo(var_8099BE41)(t6)  
    addiu   s2, $zero, 0x000F          # s2 = 0000000F
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    bne     s1, t6, lbl_80988030       
    lui     s0, %hi(var_80991918)      # s0 = 80990000
    lui     s1, %hi(var_809919F6)      # s1 = 80990000
    addiu   s1, s1, %lo(var_809919F6)  # s1 = 809919F6
    addiu   s0, s0, %lo(var_80991918)  # s0 = 80991918
    sw      a0, 0x0050($sp)            
lbl_80987F90:
    lwc1    $f16, 0x0000(s0)           # 80991918
    lwc1    $f18, 0x0024(s3)           # 00000024
    lwc1    $f6, 0x0004(s0)            # 8099191C
    lh      t0, 0x0000(s1)             # 809919F6
    add.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0008(s0)           # 80991920
    lh      t3, 0x0002(s1)             # 809919F8
    lh      t7, 0x0004(s1)             # 809919FA
    swc1    $f4, 0x0010($sp)           
    lwc1    $f8, 0x0028(s3)            # 00000028
    lw      a0, 0x0050($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    add.s   $f10, $f6, $f8             
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00BA          # a3 = 000000BA
    swc1    $f10, 0x0014($sp)          
    lwc1    $f18, 0x002C(s3)           # 0000002C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0018($sp)           
    lh      t1, 0x0030(s3)             # 00000030
    addu    t2, t0, t1                 
    sw      t2, 0x001C($sp)            
    lh      t4, 0x0032(s3)             # 00000032
    addu    t5, t3, t4                 
    sw      t5, 0x0020($sp)            
    lh      t8, 0x0034(s3)             # 00000034
    sw      s2, 0x0028($sp)            
    addu    t9, t7, t8                 
    jal     func_800253F0              
    sw      t9, 0x0024($sp)            
    addiu   s2, s2, 0xFFFF             # s2 = 0000000E
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   s0, s0, 0xFFF4             # s0 = 8099190C
    bne     s2, $at, lbl_80987F90      
    addiu   s1, s1, 0xFFFA             # s1 = 809919F0
    lui     t6, %hi(var_8099BE41)      # t6 = 809A0000
    lbu     t6, %lo(var_8099BE41)(t6)  
    lui     $at, %hi(var_8099BE41)     # $at = 809A0000
    addiu   t0, t6, 0x0001             # t0 = 809A0001
    sb      t0, %lo(var_8099BE41)($at) 
lbl_80988030:
    lh      t1, 0x019C(s3)             # 0000019C
    addiu   t2, t1, 0x0C31             # t2 = 00000C31
    sh      t2, 0x019C(s3)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s3)             # 0000019C
    lui     $at, %hi(var_80991D44)     # $at = 80990000
    lwc1    $f6, %lo(var_80991D44)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6              
    lh      a0, 0x019C(s3)             # 0000019C
    add.s   $f16, $f8, $f10            
    jal     func_800636C4              # sins?
    swc1    $f16, 0x0190(s3)           # 00000190
    lui     $at, %hi(var_80991D48)     # $at = 80990000
    lwc1    $f18, %lo(var_80991D48)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f0, $f18             
    lui     $at, 0x4120                # $at = 41200000
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0194(s3)            # 00000194
    lw      t3, 0x0054($sp)            
    lw      t4, 0x1DE4(t3)             # 00001DE4
    andi    t5, t4, 0x0003             # t5 = 00000000
    bnel    t5, $zero, lbl_809880D8    
    lw      t8, 0x0058($sp)            
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    sw      t7, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    swc1    $f0, 0x0014($sp)           
    swc1    $f0, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f10, 0x0010($sp)          
    lw      t8, 0x0058($sp)            
lbl_809880D8:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lw      t6, 0x0000(t8)             # 00000000
    sw      t6, 0x0038(s3)             # 00000038
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x003C(s3)             # 0000003C
    lwc1    $f16, 0x003C(s3)           # 0000003C
    lw      t6, 0x0008(t8)             # 00000008
    add.s   $f4, $f16, $f18            
    sw      t6, 0x0040(s3)             # 00000040
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x003C(s3)            # 0000003C
    lui     $at, %hi(var_80991D4C)     # $at = 80990000
    lwc1    $f6, %lo(var_80991D4C)($at) 
    or      a0, s3, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80988130               
    addiu   s0, s3, 0x027C             # s0 = 0000027C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    addiu   s0, s3, 0x027C             # s0 = 0000027C
lbl_80988130:
    or      a1, s0, $zero              # a1 = 0000027C
    jal     func_80050B00              
    or      a0, s3, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s1, s4, $at                
    or      a1, s1, $zero              # a1 = 809919F0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 0000027C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 809919F0
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s0, $zero              # a2 = 0000027C
    lw      t0, 0x0188(s3)             # 00000188
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 809919F0
    bnel    t0, $zero, lbl_80988188    
    lh      t1, 0x01E8(s3)             # 000001E8
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 0000027C
    lh      t1, 0x01E8(s3)             # 000001E8
lbl_80988188:
    lui     $at, %hi(var_80991D50)     # $at = 80990000
    lwc1    $f16, %lo(var_80991D50)($at) 
    mtc1    t1, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    cvt.s.w $f10, $f8                  
    addiu   a0, s3, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f18, $f4             
    mfc1    a2, $f6                    
    jal     func_800C50AC              
    nop
    lw      $ra, 0x004C($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809881DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0004(a0)             # 00000004
    sh      $zero, 0x019C(a0)          # 0000019C
    lh      t8, 0x019C(a0)             # 0000019C
    lh      t9, 0x008A(a0)             # 0000008A
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(a0)             # 00000004
    sh      t8, 0x01E8(a0)             # 000001E8
    sh      t9, 0x0032(a0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)            
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_8099BE40)     # $at = 809A0000
    mul.s   $f6, $f0, $f4              
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a1, %hi(func_80988290)     # a1 = 80990000
    addiu   t7, $zero, 0xFFE2          # t7 = FFFFFFE2
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    trunc.w.s $f8, $f6                   
    addiu   a1, a1, %lo(func_80988290) # a1 = 80988290
    mfc1    t3, $f8                    
    nop
    addiu   t4, t3, 0x012C             # t4 = 0000012C
    sh      t4, 0x018C(a0)             # 0000018C
    sb      t5, %lo(var_8099BE40)($at) 
    lui     $at, %hi(var_8099BEB0)     # $at = 809A0000
    sb      t6, %lo(var_8099BEB0)($at) 
    lwc1    $f16, 0x00BC(a0)           # 000000BC
    c.eq.s  $f10, $f16                 
    nop
    bc1t    lbl_80988278               
    nop
    sw      t7, 0x0188(a0)             # 00000188
lbl_80988278:
    jal     func_80984CD0              
    sh      t8, 0x02BC(a0)             # 000002BC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80988290:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x005C($sp)            
    lui     t8, %hi(var_8099BE41)      # t8 = 809A0000
    lbu     t8, %lo(var_8099BE41)(t8)  
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    addiu   t9, t8, 0xFFF2             # t9 = 8099FFF2
    mtc1    t9, $f4                    # $f4 = 0.00
    lw      t6, 0x005C($sp)            
    cvt.s.w $f6, $f4                   
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0054($sp)            
    lh      t4, 0x01A0(s0)             # 000001A0
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    addu    t5, t4, t3                 
    addiu   t6, t5, 0x0CE4             # t6 = 00000CE4
    sh      t6, 0x01A0(s0)             # 000001A0
    jal     func_800636C4              # sins?
    lh      a0, 0x01A0(s0)             # 000001A0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lbu     v0, 0x028C(s0)             # 0000028C
    mul.s   $f4, $f0, $f18             
    andi    t2, v0, 0x0002             # t2 = 00000000
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    addiu   t1, t0, 0x0096             # t1 = 00000096
    beq     t2, $zero, lbl_80988390    
    sh      t1, 0x019E(s0)             # 0000019E
    sb      t4, 0x028C(s0)             # 0000028C
    lw      t3, 0x0054($sp)            
    lw      t5, 0x0280(s0)             # 00000280
    lui     $at, 0x4100                # $at = 41000000
    lw      a0, 0x005C($sp)            
    bne     t3, t5, lbl_80988390       
    nop
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lui     $at, %hi(var_80991D54)     # $at = 80990000
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991D54)($at) 
    trunc.w.s $f8, $f0                   
    lh      t6, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    mfc1    t0, $f8                    
    nop
    addu    t1, t6, t0                 
    addu    t2, t1, $at                
    sh      t2, 0x0032(s0)             # 00000032
    jal     func_80022FD0              
    lw      a0, 0x0054($sp)            
lbl_80988390:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991D58)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D58)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_809883C0               
    lbu     v0, 0x028D(s0)             # 0000028D
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    lbu     v0, 0x028D(s0)             # 0000028D
lbl_809883C0:
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80988584    
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    lw      t5, 0x0188(s0)             # 00000188
    mtc1    $zero, $f16                # $f16 = 0.00
    sb      t3, 0x028D(s0)             # 0000028D
    bltz    t5, lbl_80988548           
    swc1    $f16, 0x0154(s0)           # 00000154
    lb      t7, 0x0186(s0)             # 00000186
    bne     t7, $zero, lbl_809885EC    
    nop
    lbu     t9, 0x00B1(s0)             # 000000B1
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t9, $at, lbl_809884E4      
    sb      t8, 0x0186(s0)             # 00000186
    lh      t6, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x393D          # a1 = 0000393D
    jal     func_80022FD0              
    sh      t6, 0x0032(s0)             # 00000032
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    sw      t0, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     v0, %hi(var_8099BEB0)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BEB0)  # v0 = 8099BEB0
    lb      t1, 0x0000(v0)             # 8099BEB0
    lbu     t2, 0x00B0(s0)             # 000000B0
    lui     v1, %hi(var_8099BE41)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE41)  # v1 = 8099BE41
    subu    t4, t1, t2                 
    sb      t4, 0x0000(v0)             # 8099BEB0
    lb      t3, 0x0000(v0)             # 8099BEB0
    bgtz    t3, lbl_809885EC           
    nop
    sw      $zero, 0x0188(s0)          # 00000188
    lbu     t5, 0x0000(v1)             # 8099BE41
    lb      t8, 0x0000(v0)             # 8099BEB0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t5, 0x0001             # t7 = 00000001
    andi    t6, t7, 0x00FF             # t6 = 00000001
    slti    $at, t6, 0x0012            
    addiu   t9, t8, 0x0003             # t9 = 00000003
    sb      t7, 0x0000(v1)             # 8099BE41
    bne     $at, $zero, lbl_809884A4   
    sb      t9, 0x0000(v0)             # 8099BEB0
    jal     func_80988D98              
    lw      a1, 0x005C($sp)            
    lw      a0, 0x005C($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80988D88 
    lw      $ra, 0x0034($sp)           
lbl_809884A4:
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0068(s0)           # 00000068
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    addiu   t3, $zero, 0xFF56          # t3 = FFFFFF56
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f8                    
    nop
    sll     t2, t1, 16                 
    sra     t4, t2, 16                 
    subu    t5, t3, t4                 
    beq     $zero, $zero, lbl_809885EC 
    sw      t5, 0x0188(s0)             # 00000188
lbl_809884E4:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D90              
    nop
    trunc.w.s $f10, $f0                  
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      $zero, 0x01E8(s0)          # 000001E8
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    mfc1    t8, $f10                   
    swc1    $f16, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    sll     t9, t8, 16                 
    sra     t6, t9, 16                 
    addiu   t0, t6, 0x00A0             # t0 = 000000A0
    sw      t0, 0x0188(s0)             # 00000188
    sw      t1, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x007D          # a2 = 0000007D
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393E          # a1 = 0000393E
    beq     $zero, $zero, lbl_809885EC 
    nop
lbl_80988548:
    lw      v1, 0x0284(s0)             # 00000284
    addiu   $at, $zero, 0x0032         # $at = 00000032
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x0000(v1)             # 00000000
    bne     t2, $at, lbl_809885EC      
    nop
    sb      $zero, 0x01C4(v1)          # 000001C4
    lw      t3, 0x0054($sp)            
    lh      t4, 0x008A(v1)             # 0000008A
    addiu   a1, $zero, 0x1808          # a1 = 00001808
    sw      t3, 0x01BC(v1)             # 000001BC
    jal     func_80022FD0              
    sh      t4, 0x0032(v1)             # 00000032
    beq     $zero, $zero, lbl_809885EC 
    nop
lbl_80988584:
    lh      v0, 0x018C(s0)             # 0000018C
    bne     v0, $zero, lbl_809885E0    
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    c.eq.s  $f18, $f4                  
    nop
    bc1f    lbl_809885E0               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    addiu   t6, $zero, 0xFF24          # t6 = FFFFFF24
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    subu    t0, t6, t9                 
    beq     $zero, $zero, lbl_809885EC 
    sw      t0, 0x0188(s0)             # 00000188
lbl_809885E0:
    beq     v0, $zero, lbl_809885EC    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x018C(s0)             # 0000018C
lbl_809885EC:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t2, 0x0188(s0)             # 00000188
    bne     t2, $zero, lbl_80988758    
    lui     t3, %hi(var_8099BE41)      # t3 = 809A0000
    lbu     t3, %lo(var_8099BE41)(t3)  
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   t4, t3, 0xFFF2             # t4 = 8099FFF2
    mtc1    t4, $f16                   # $f16 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    cvt.s.w $f18, $f16                 
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0                    
    swc1    $f0, 0x0010($sp)           
    mul.s   $f6, $f18, $f4             
    add.s   $f10, $f6, $f8             
    mfc1    a3, $f10                   
    jal     func_80064178              
    nop
    lui     t5, %hi(var_8099BE41)      # t5 = 809A0000
    lbu     t5, %lo(var_8099BE41)(t5)  
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    addiu   t7, t5, 0xFFF2             # t7 = 8099FFF2
    mtc1    t7, $f16                   # $f16 = 0.00
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    cvt.s.w $f18, $f16                 
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    sw      $zero, 0x0010($sp)         
    mul.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a1, a1, 0x0FA0             # a1 = 00000FA0
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    bnel    v0, $zero, lbl_80988740    
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0068(s0)           # 00000068
    c.eq.s  $f10, $f16                 
    nop
    bc1f    lbl_809886F0               
    nop
    lh      t6, 0x008A(s0)             # 0000008A
    sb      $zero, 0x0114(s0)          # 00000114
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, 0x0032(s0)             # 00000032
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    nop
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f6                    
    nop
    addiu   t3, t2, 0x012C             # t3 = 0000012C
    sh      t3, 0x018C(s0)             # 0000018C
lbl_809886F0:
    lui     t4, %hi(var_8099BE41)      # t4 = 809A0000
    lbu     t4, %lo(var_8099BE41)(t4)  
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    addiu   t5, t4, 0xFFF2             # t5 = 8099FFF2
    mtc1    t5, $f8                    # $f8 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    cvt.s.w $f10, $f8                  
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E80                 # a3 = 3E800000
    swc1    $f8, 0x0010($sp)           
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    addiu   t7, $zero, 0x0010          # t7 = 00000010
lbl_80988740:
    sw      t7, 0x029C(s0)             # 0000029C
    lw      t8, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    t6, t8, $at                
    beq     $zero, $zero, lbl_809889A8 
    sw      t6, 0x0040($sp)            
lbl_80988758:
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    sw      a0, 0x003C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lw      v1, 0x0188(s0)             # 00000188
    lw      t9, 0x0054($sp)            
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    blez    v1, lbl_809887E8           
    lw      t6, 0x0054($sp)            
    lw      t0, 0x066C(t9)             # 0000066C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a1, 0xC3F0                 # a1 = C3F00000
    sll     t1, t0,  5                 
    bgez    t1, lbl_809887B0           
    lui     a2, 0x3F80                 # a2 = 3F800000
    slti    $at, v1, 0x0024            
    bne     $at, $zero, lbl_809887B0   
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    sw      t2, 0x0188(s0)             # 00000188
lbl_809887B0:
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lw      t4, 0x0188(s0)             # 00000188
    lui     t3, 0x0FC0                 # t3 = 0FC00000
    ori     t3, t3, 0x0712             # t3 = 0FC00712
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sw      t3, 0x029C(s0)             # 0000029C
    sw      t5, 0x0188(s0)             # 00000188
    lw      t7, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    t8, t7, $at                
    beq     $zero, $zero, lbl_809889A8 
    sw      t8, 0x0040($sp)            
lbl_809887E8:
    lw      t9, 0x066C(t6)             # 0000066C
    slti    $at, v1, 0xFFC4            
    or      a1, s0, $zero              # a1 = 00000000
    sll     t0, t9,  5                 
    bgez    t0, lbl_8098880C           
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     $at, $zero, lbl_8098880C   
    addiu   t1, $zero, 0xFFC5          # t1 = FFFFFFC5
    sw      t1, 0x0188(s0)             # 00000188
lbl_8098880C:
    lw      t2, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t3, t2, $at                
    sw      t3, 0x0040($sp)            
    addu    t4, t4, t2                 
    lw      t4, 0x1DE4(t4)             # 00011DE4
    lui     $at, 0x435C                # $at = 435C0000
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    andi    t5, t4, 0x0003             # t5 = 00000000
    bne     t5, $zero, lbl_80988870    
    or      a0, t2, $zero              # a0 = 00000000
    mtc1    $at, $f16                  # $f16 = 220.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0020($sp)            
    sw      t7, 0x0018($sp)            
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f4, 0x001C($sp)           
lbl_80988870:
    lw      t6, 0x0188(s0)             # 00000188
    slti    $at, t6, 0xFFE2            
    beql    $at, $zero, lbl_809888D8   
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    c.lt.s  $f6, $f8                   
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_809888B4               
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_809888B4:
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC4AF                 # a1 = C4AF0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4270                 # a3 = 42700000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    beq     $zero, $zero, lbl_809889A0 
    lw      t6, 0x0188(s0)             # 00000188
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_809888D8:
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.eq.s  $f18, $f4                  
    nop
    bc1fl   lbl_80988928               
    lw      a0, 0x003C($sp)            
    lh      t9, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t0, t9, $at                
    jal     func_800CDCCC              # Rand.Next() float
    sh      t0, 0x0032(s0)             # 00000032
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    nop
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t5, $f10                   
    nop
    addiu   t2, t5, 0x014A             # t2 = 0000014A
    sh      t2, 0x018C(s0)             # 0000018C
    lw      a0, 0x003C($sp)            
lbl_80988928:
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     t7, %hi(var_8099BE41)      # t7 = 809A0000
    lbu     t7, %lo(var_8099BE41)(t7)  
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    addiu   t8, t7, 0xFFF2             # t8 = 8099FFF2
    mtc1    t8, $f16                   # $f16 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    cvt.s.w $f0, $f16                  
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E80                 # a3 = 3E800000
    swc1    $f8, 0x0010($sp)           
    add.s   $f18, $f0, $f0             
    add.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lw      t6, 0x0188(s0)             # 00000188
lbl_809889A0:
    addiu   t9, t6, 0x0001             # t9 = 00000001
    sw      t9, 0x0188(s0)             # 00000188
lbl_809889A8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f16, 0x0068(s0)           # 00000068
    lh      t0, 0x00B6(s0)             # 000000B6
    lh      t1, 0x01E8(s0)             # 000001E8
    c.lt.s  $f16, $f0                  
    addu    t3, t0, t1                 
    sh      t3, 0x00B6(s0)             # 000000B6
    bc1fl   lbl_809889E8               
    lh      t4, 0x019C(s0)             # 0000019C
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lh      t4, 0x019C(s0)             # 0000019C
lbl_809889E8:
    addiu   t5, t4, 0x0C31             # t5 = 00000C31
    sh      t5, 0x019C(s0)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s0)             # 0000019C
    lui     $at, %hi(var_80991D5C)     # $at = 80990000
    lwc1    $f18, %lo(var_80991D5C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f0, $f18             
    lh      a0, 0x019C(s0)             # 0000019C
    add.s   $f8, $f4, $f6              
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0190(s0)            # 00000190
    lui     $at, %hi(var_80991D60)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D60)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mul.s   $f16, $f0, $f10            
    lhu     v0, 0x0088(s0)             # 00000088
    lui     $at, %hi(var_80991D64)     # $at = 80990000
    andi    t2, v0, 0x0008             # t2 = 00000000
    andi    t7, v0, 0xFFF7             # t7 = 00000000
    add.s   $f4, $f16, $f18            
    beq     t2, $zero, lbl_80988A70    
    swc1    $f4, 0x0194(s0)            # 00000194
    sh      t7, 0x0088(s0)             # 00000088
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991D64)($at) 
    trunc.w.s $f6, $f0                   
    lh      t1, 0x007E(s0)             # 0000007E
    mfc1    t0, $f6                    
    nop
    addu    t3, t0, t1                 
    sh      t3, 0x0032(s0)             # 00000032
lbl_80988A70:
    lui     t4, %hi(var_8099BE41)      # t4 = 809A0000
    lbu     t4, %lo(var_8099BE41)(t4)  
    addiu   a2, s0, 0x0024             # a2 = 00000024
    or      a0, a2, $zero              # a0 = 00000024
    slti    $at, t4, 0x0010            
    beq     $at, $zero, lbl_80988B84   
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x0038($sp)            
    jal     func_80063EB8              
    sw      a2, 0x003C($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    lw      a1, 0x0038($sp)            
    lw      a2, 0x003C($sp)            
    c.le.s  $f8, $f0                   
    lw      t5, 0x0054($sp)            
    bc1fl   lbl_80988AE8               
    lb      t2, 0x0A68(t5)             # 00000A68
    jal     func_80063F00              
    or      a0, a2, $zero              # a0 = 00000000
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_80988B88 
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lb      t2, 0x0A68(t5)             # 00000A68
lbl_80988AE8:
    addiu   a0, s0, 0x0032             # a0 = 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     t2, $zero, lbl_80988B20    
    lw      t7, 0x0040($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064508              
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    beq     $zero, $zero, lbl_80988B88 
    addiu   a2, s0, 0x0024             # a2 = 00000024
lbl_80988B20:
    lw      t8, 0x1DE4(t7)             # 00001DE4
    lui     t9, %hi(var_8099BE41)      # t9 = 809A0000
    andi    t6, t8, 0x0080             # t6 = 00000000
    bnel    t6, $zero, lbl_80988B88    
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lbu     t9, %lo(var_8099BE41)(t9)  
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    addiu   t0, t9, 0xFFF2             # t0 = 8099FFF2
    mtc1    t0, $f10                   # $f10 = 0.00
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    cvt.s.w $f16, $f10                 
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    a3, $f6                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x0064             # a3 = 00000064
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
lbl_80988B84:
    addiu   a2, s0, 0x0024             # a2 = 00000024
lbl_80988B88:
    sw      a2, 0x003C($sp)            
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x003C($sp)            
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lw      t4, 0x0000(a2)             # 00000000
    sw      t4, 0x0038(s0)             # 00000038
    lw      t3, 0x0004(a2)             # 00000004
    sw      t3, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    lw      t4, 0x0008(a2)             # 00000008
    add.s   $f16, $f8, $f10            
    sw      t4, 0x0040(s0)             # 00000040
    swc1    $f16, 0x003C(s0)           # 0000003C
    lw      t5, 0x0040($sp)            
    lw      t2, 0x1DE4(t5)             # 00001DE4
    andi    t7, t2, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80988C68    
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t8, 0x0188(s0)             # 00000188
    lui     $at, 0x4120                # $at = 41200000
    lw      a0, 0x005C($sp)            
    bne     t8, $zero, lbl_80988C64    
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0018($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x007D          # a3 = 0000007D
    sw      $zero, 0x0020($sp)         
    swc1    $f0, 0x0014($sp)           
    swc1    $f0, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f18, 0x0010($sp)          
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f8                   # $f8 = 11.00
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0020($sp)            
    sw      t9, 0x0018($sp)            
    lw      a0, 0x005C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f8, 0x001C($sp)           
lbl_80988C64:
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80988C68:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0014($sp)            
    lw      a0, 0x005C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41F0                 # a2 = 41F00000
    lui     a3, 0x428C                 # a3 = 428C0000
    jal     func_80021E6C              
    swc1    $f10, 0x0010($sp)          
    addiu   a1, s0, 0x027C             # a1 = 0000027C
    sw      a1, 0x003C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x0038($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x003C($sp)            
    lb      t3, 0x0186(s0)             # 00000186
    lw      a0, 0x005C($sp)            
    lw      a1, 0x0038($sp)            
    bnel    t3, $zero, lbl_80988CD4    
    lh      v1, 0x01E8(s0)             # 000001E8
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x003C($sp)            
    lh      v1, 0x01E8(s0)             # 000001E8
lbl_80988CD4:
    lw      a0, 0x005C($sp)            
    lw      a1, 0x0038($sp)            
    slti    $at, v1, 0x03E9            
    beq     $at, $zero, lbl_80988D00   
    lui     $at, 0xC496                # $at = C4960000
    mtc1    $at, $f18                  # $f18 = -1200.00
    lwc1    $f16, 0x00BC(s0)           # 000000BC
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80988D10               
    mtc1    v1, $f4                    # $f4 = 0.00
lbl_80988D00:
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x003C($sp)            
    lh      v1, 0x01E8(s0)             # 000001E8
    mtc1    v1, $f4                    # $f4 = 0.00
lbl_80988D10:
    lui     $at, %hi(var_80991D68)     # $at = 80990000
    lwc1    $f8, %lo(var_80991D68)($at) 
    cvt.s.w $f6, $f4                   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    mfc1    a2, $f18                   
    jal     func_800C50AC              
    nop
    lb      v0, 0x0186(s0)             # 00000186
    lui     v1, %hi(var_8099BE40)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE40)  # v1 = 8099BE40
    beq     v0, $zero, lbl_80988D74    
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    lui     v1, %hi(var_8099BE40)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE40)  # v1 = 8099BE40
    sb      t4, 0x0186(s0)             # 00000186
    lbu     t5, 0x0000(v1)             # 8099BE40
    andi    t2, t5, 0x0080             # t2 = 00000000
    ori     t7, t2, 0x0002             # t7 = 00000002
    beq     $zero, $zero, lbl_80988D84 
    sb      t7, 0x0000(v1)             # 8099BE40
lbl_80988D74:
    lbu     t8, 0x0000(v1)             # 8099BE40
    andi    t6, t8, 0x0080             # t6 = 00000000
    ori     t9, t6, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(v1)             # 8099BE40
lbl_80988D84:
    lw      $ra, 0x0034($sp)           
lbl_80988D88:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80988D98:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x313C          # a1 = 0000313C
    jal     func_800C50AC              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    lui     a0, 0x1001                 # a0 = 10010000
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lw      a0, 0x0024($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0C31          # t8 = 00000C31
    sh      t8, 0x01E6(s0)             # 000001E6
    addiu   t9, $zero, 0x000E          # t9 = 0000000E
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    sb      t9, %lo(var_8099BE42)($at) 
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a0                 
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0198(s0)            # 00000198
    jal     func_80020658              
    lb      a1, 0x1CBC(a1)             # 00011CBC
    lui     a1, %hi(func_80988E30)     # a1 = 80990000
    addiu   a1, a1, %lo(func_80988E30) # a1 = 80988E30
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80988E30:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f20, 0x0030($sp)          
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    lb      t7, %lo(var_8099BE42)(t7)  
    lw      t6, 0x1C44(s4)             # 00001C44
    or      s0, v0, $zero              # s0 = 00000000
    addiu   t8, t7, 0xFFF2             # t8 = 8099FFF2
    sltiu   $at, t8, 0x000B            
    beq     $at, $zero, lbl_80989714   
    sw      t6, 0x0078($sp)            
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80991D6C)     # $at = 80990000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80991D6C)($at) 
    jr      t8                         
    nop
var_80988E9C:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s4, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0              
    or      a0, s4, $zero              # a0 = 00000000
    lui     $at, %hi(var_80991A5C)     # $at = 80990000
    sh      v0, %lo(var_80991A5C)($at) 
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    lh      a1, %lo(var_80991A5C)(a1)  
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lwc1    $f4, 0x0024(s3)            # 00000024
    lui     a1, %hi(var_8099BE78)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099BE78)  # a1 = 8099BE78
    swc1    $f4, 0x0000(a1)            # 8099BE78
    lwc1    $f6, 0x0028(s3)            # 00000028
    lui     t9, %hi(var_8099BE58)      # t9 = 809A0000
    addiu   t9, t9, %lo(var_8099BE58)  # t9 = 8099BE58
    swc1    $f6, 0x0004(a1)            # 8099BE7C
    lwc1    $f8, 0x002C(s3)            # 0000002C
    addiu   v1, $sp, 0x0068            # v1 = FFFFFFE0
    lui     t4, %hi(var_8099BE48)      # t4 = 809A0000
    swc1    $f8, 0x0008(a1)            # 8099BE80
    lw      t1, 0x0050(s0)             # 00000050
    addiu   t4, t4, %lo(var_8099BE48)  # t4 = 8099BE48
    lui     a2, %hi(var_8099BE68)      # a2 = 809A0000
    sw      t1, 0x0000(t9)             # 8099BE58
    lw      t0, 0x0054(s0)             # 00000054
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    sw      t0, 0x0004(t9)             # 8099BE5C
    lw      t1, 0x0058(s0)             # 00000058
    addiu   a2, a2, %lo(var_8099BE68)  # a2 = 8099BE68
    lui     $at, 0x430C                # $at = 430C0000
    sw      t1, 0x0008(t9)             # 8099BE60
    lw      t3, 0x005C(s0)             # 0000005C
    mtc1    $at, $f16                  # $f16 = 140.00
    lui     t9, %hi(var_80991A40)      # t9 = 80990000
    sw      t3, 0x0000(v1)             # FFFFFFE0
    lw      t2, 0x0060(s0)             # 00000060
    lw      t6, 0x0000(v1)             # FFFFFFE0
    addiu   t9, t9, %lo(var_80991A40)  # t9 = 80991A40
    sw      t2, 0x0004(v1)             # FFFFFFE4
    lw      t3, 0x0064(s0)             # 00000064
    lui     t2, %hi(var_8099BE88)      # t2 = 809A0000
    addiu   t2, t2, %lo(var_8099BE88)  # t2 = 8099BE88
    sw      t3, 0x0008(v1)             # FFFFFFE8
    sw      t6, 0x0000(t4)             # 8099BE48
    lw      t5, 0x0004(v1)             # FFFFFFE4
    lui     a0, %hi(var_8099BE48)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099BE48)  # a0 = 8099BE48
    sw      t5, 0x0004(t4)             # 8099BE4C
    lw      t6, 0x0008(v1)             # FFFFFFE8
    lui     t5, %hi(var_8099BE98)      # t5 = 809A0000
    addiu   t5, t5, %lo(var_8099BE98)  # t5 = 8099BE98
    sw      t6, 0x0008(t4)             # 8099BE50
    lw      t8, 0x0000(v1)             # FFFFFFE0
    lw      t7, 0x0004(v1)             # FFFFFFE4
    swc1    $f16, 0x0004(a1)           # 8099BE7C
    sw      t8, 0x0000(a2)             # 8099BE68
    lw      t8, 0x0008(v1)             # FFFFFFE8
    sw      t7, 0x0004(a2)             # 8099BE6C
    swc1    $f10, 0x0004(a2)           # 8099BE6C
    sw      t8, 0x0008(a2)             # 8099BE70
    lw      t1, 0x0000(t9)             # 80991A40
    sw      t1, 0x0000(v1)             # FFFFFFE0
    lw      t0, 0x0004(t9)             # 80991A44
    lw      t4, 0x0000(v1)             # FFFFFFE0
    sw      t0, 0x0004(v1)             # FFFFFFE4
    lw      t1, 0x0008(t9)             # 80991A48
    sw      t1, 0x0008(v1)             # FFFFFFE8
    sw      t4, 0x0000(t2)             # 8099BE88
    lw      t3, 0x0004(v1)             # FFFFFFE4
    sw      t3, 0x0004(t2)             # 8099BE8C
    lw      t4, 0x0008(v1)             # FFFFFFE8
    sw      t4, 0x0008(t2)             # 8099BE90
    lw      t7, 0x0000(v1)             # FFFFFFE0
    sw      t7, 0x0000(t5)             # 8099BE98
    lw      t6, 0x0004(v1)             # FFFFFFE4
    sw      t6, 0x0004(t5)             # 8099BE9C
    lw      t7, 0x0008(v1)             # FFFFFFE8
    jal     func_80063F00              
    sw      t7, 0x0008(t5)             # 8099BEA0
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, v0, 0xFF00             # t8 = FFFFFF00
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addu    s0, s4, $at                
    sh      t8, 0x019C(s3)             # 0000019C
    sh      t9, 0x01A0(s3)             # 000001A0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lui     a0, %hi(var_8099BE42)      # a0 = 809A0000
    sb      v1, 0x0B08(s0)             # 00000B08
    sb      v1, 0x0B07(s0)             # 00000B07
    sb      v1, 0x0B06(s0)             # 00000B06
    sb      $zero, 0x0B09(s0)          # 00000B09
    addu    $at, $at, s4               
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a0, a0, %lo(var_8099BE42)  # a0 = 8099BE42
    sb      t1, 0x0B05($at)            # 00010B05
    lb      t2, 0x0000(a0)             # 8099BE42
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0000(a0)             # 8099BE42
var_80989058:
    lh      t4, 0x019C(s3)             # 0000019C
    lui     $at, 0x0001                # $at = 00010000
    addu    s0, s4, $at                
    addiu   t5, t4, 0x0100             # t5 = 00000100
    sh      t5, 0x019C(s3)             # 0000019C
    jal     func_800636C4              # sins?
    lh      a0, 0x019C(s3)             # 0000019C
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f20                  # $f20 = 160.00
    lwc1    $f18, 0x0198(s3)           # 00000198
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099BE78)($at) 
    add.s   $f4, $f20, $f18            
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    swc1    $f10, %lo(var_8099BE68)($at) 
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s3)             # 0000019C
    lwc1    $f16, 0x0198(s3)           # 00000198
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    lwc1    $f6, %lo(var_8099BE80)($at) 
    add.s   $f18, $f20, $f16           
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    mul.s   $f4, $f0, $f18             
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x4180                 # a1 = 41800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    add.s   $f8, $f4, $f6              
    swc1    $f8, %lo(var_8099BE70)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     v0, %hi(var_8099BE88)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE88)  # v0 = 8099BE88
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lwc1    $f2, 0x0000(v0)            # 8099BE88
    lw      t8, 0x0000(v0)             # 8099BE88
    lui     t6, %hi(var_8099BE98)      # t6 = 809A0000
    mul.s   $f16, $f2, $f12            
    addiu   t6, t6, %lo(var_8099BE98)  # t6 = 8099BE98
    swc1    $f2, 0x0008(v0)            # 8099BE90
    swc1    $f16, 0x0004(v0)           # 8099BE8C
    sw      t8, 0x0000(t6)             # 8099BE98
    lw      t7, 0x0004(v0)             # 8099BE8C
    sw      t7, 0x0004(t6)             # 8099BE9C
    lw      t8, 0x0008(v0)             # 8099BE90
    jal     func_80026D90              
    sw      t8, 0x0008(t6)             # 8099BEA0
    lui     $at, %hi(var_8099BE88)     # $at = 809A0000
    lwc1    $f18, %lo(var_8099BE88)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80991D98)     # $at = 80990000
    lwc1    $f8, %lo(var_80991D98)($at) 
    mul.s   $f6, $f18, $f4             
    lw      t0, 0x1DE4(s0)             # 00001DE4
    andi    t1, t0, 0x0003             # t1 = 00000000
    add.s   $f10, $f6, $f8             
    add.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    s2, $f18                   
    nop
    sll     s2, s2, 16                 
    bne     t1, $zero, lbl_8098921C    
    sra     s2, s2, 16                 
    lh      t2, 0x01A0(s3)             # 000001A0
    addiu   s0, $zero, 0x0006          # s0 = 00000006
    beql    t2, $zero, lbl_80989220    
    lh      t9, 0x01A0(s3)             # 000001A0
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    mtc1    s0, $f4                    # $f4 = 0.00
lbl_80989190:
    sll     a3, s2, 16                 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    cvt.s.w $f6, $f4                   
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0020($sp)            
    sw      t3, 0x0018($sp)            
    sra     a3, a3, 16                 
    or      a0, s4, $zero              # a0 = 00000000
    swc1    $f6, 0x001C($sp)           
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000001
    swc1    $f20, 0x0010($sp)          
    jal     func_80985400              
    swc1    $f20, 0x0014($sp)          
    addiu   s0, s0, 0xFFFF             # s0 = 00000005
    bnel    s0, s1, lbl_80989190       
    mtc1    s0, $f4                    # $f4 = 0.00
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f8                   # $f8 = 11.00
    sll     a3, s2, 16                 
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0020($sp)            
    sw      t5, 0x0018($sp)            
    sra     a3, a3, 16                 
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f20, 0x0010($sp)          
    swc1    $f20, 0x0014($sp)          
    jal     func_80985400              
    swc1    $f8, 0x001C($sp)           
    lh      t7, 0x01A0(s3)             # 000001A0
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01A0(s3)             # 000001A0
lbl_8098921C:
    lh      t9, 0x01A0(s3)             # 000001A0
lbl_80989220:
    lui     v1, %hi(var_8099BE42)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BE42)  # v1 = 8099BE42
    bne     t9, $zero, lbl_80989714    
    nop
    lb      t0, 0x0000(v1)             # 8099BE42
    lui     t2, %hi(var_80991A40)      # t2 = 80990000
    addiu   t2, t2, %lo(var_80991A40)  # t2 = 80991A40
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(v1)             # 8099BE42
    lw      t4, 0x0000(t2)             # 80991A40
    addiu   v0, $sp, 0x0068            # v0 = FFFFFFE0
    lui     t5, %hi(var_8099BE88)      # t5 = 809A0000
    sw      t4, 0x0000(v0)             # FFFFFFE0
    lw      t3, 0x0004(t2)             # 80991A44
    lw      t7, 0x0000(v0)             # FFFFFFE0
    addiu   t5, t5, %lo(var_8099BE88)  # t5 = 8099BE88
    sw      t3, 0x0004(v0)             # FFFFFFE4
    lw      t4, 0x0008(t2)             # 80991A48
    lui     t8, %hi(var_8099BE98)      # t8 = 809A0000
    addiu   t8, t8, %lo(var_8099BE98)  # t8 = 8099BE98
    sw      t4, 0x0008(v0)             # FFFFFFE8
    sw      t7, 0x0000(t5)             # 8099BE88
    lw      t6, 0x0004(v0)             # FFFFFFE4
    sw      t6, 0x0004(t5)             # 8099BE8C
    lw      t7, 0x0008(v0)             # FFFFFFE8
    sw      t7, 0x0008(t5)             # 8099BE90
    lw      t0, 0x0000(v0)             # FFFFFFE0
    sw      t0, 0x0000(t8)             # 8099BE98
    lw      t9, 0x0004(v0)             # FFFFFFE4
    sw      t9, 0x0004(t8)             # 8099BE9C
    lw      t0, 0x0008(v0)             # FFFFFFE8
    beq     $zero, $zero, lbl_80989714 
    sw      t0, 0x0008(t8)             # 8099BEA0
var_809892A4:
    lh      t1, 0x019C(s3)             # 0000019C
    addiu   t2, t1, 0x1862             # t2 = 00001863
    sh      t2, 0x019C(s3)             # 0000019C
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s3)             # 0000019C
    lui     $at, %hi(var_80991D9C)     # $at = 80990000
    lwc1    $f10, %lo(var_80991D9C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mul.s   $f16, $f0, $f10            
    lh      a0, 0x019C(s3)             # 0000019C
    add.s   $f4, $f16, $f18            
    jal     func_800636C4              # sins?
    swc1    $f4, 0x0190(s3)            # 00000190
    lui     $at, %hi(var_80991DA0)     # $at = 80990000
    lwc1    $f6, %lo(var_80991DA0)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6              
    lbu     v0, 0x0187(s3)             # 00000187
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s3, 0x00E4             # a1 = 000000E4
    add.s   $f16, $f8, $f10            
    addiu   a2, $zero, 0x3940          # a2 = 00003940
    addiu   t5, v0, 0x0001             # t5 = 00000001
    bne     v0, $zero, lbl_80989714    
    swc1    $f16, 0x0194(s3)           # 00000194
    lbu     t3, 0x0185(s3)             # 00000185
    sb      t5, 0x0187(s3)             # 00000187
    sw      t6, 0x0188(s3)             # 00000188
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0185(s3)             # 00000185
    lb      t7, %lo(var_8099BE42)(t7)  
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    addiu   t8, t7, 0x0001             # t8 = 809A0001
    sb      t8, %lo(var_8099BE42)($at) 
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    jal     func_8001E510              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0184(s3)             # 00000184
    jal     func_809855D0              
    or      a0, s4, $zero              # a0 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     $zero, $zero, lbl_80989714 
    nop
var_8098937C:
    lw      v0, 0x0188(s3)             # 00000188
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    v0, $at, lbl_8098939C      
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lw      v0, 0x0188(s3)             # 00000188
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
lbl_8098939C:
    bne     t2, $zero, lbl_80989714    
    sw      t2, 0x0188(s3)             # 00000188
    lwc1    $f18, 0x0024(s3)           # 00000024
    lui     $at, %hi(var_8099BE78)     # $at = 809A0000
    lw      t4, 0x0078($sp)            
    swc1    $f18, %lo(var_8099BE78)($at) 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0028(s3)            # 00000028
    lui     $at, %hi(var_8099BE7C)     # $at = 809A0000
    add.s   $f8, $f4, $f6              
    swc1    $f8, %lo(var_8099BE7C)($at) 
    lwc1    $f10, 0x002C(s3)           # 0000002C
    lui     $at, %hi(var_8099BE80)     # $at = 809A0000
    swc1    $f10, %lo(var_8099BE80)($at) 
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t4)             # 000000B6
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f20                  # $f20 = -130.00
    lw      s1, 0x0078($sp)            
    lui     $at, %hi(var_8099BE68)     # $at = 809A0000
    mul.s   $f16, $f0, $f20            
    lwc1    $f18, 0x0024(s1)           # 00000025
    add.s   $f4, $f16, $f18            
    swc1    $f4, %lo(var_8099BE68)($at) 
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s1)             # 000000B7
    mul.s   $f6, $f0, $f20             
    lwc1    $f8, 0x002C(s1)            # 0000002D
    lui     $at, %hi(var_8099BE70)     # $at = 809A0000
    lui     t6, %hi(var_80991A40)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991A40)  # t6 = 80991A40
    addiu   t5, $sp, 0x0068            # t5 = FFFFFFE0
    addiu   t0, $sp, 0x0068            # t0 = FFFFFFE0
    add.s   $f10, $f6, $f8             
    lui     t9, %hi(var_8099BE88)      # t9 = 809A0000
    addiu   t9, t9, %lo(var_8099BE88)  # t9 = 8099BE88
    addiu   t4, $sp, 0x0068            # t4 = FFFFFFE0
    swc1    $f10, %lo(var_8099BE70)($at) 
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f18                  # $f18 = 55.00
    lwc1    $f16, 0x0028(s1)           # 00000029
    lui     $at, %hi(var_8099BE6C)     # $at = 809A0000
    lui     t3, %hi(var_8099BE98)      # t3 = 809A0000
    add.s   $f4, $f16, $f18            
    addiu   t3, t3, %lo(var_8099BE98)  # t3 = 8099BE98
    swc1    $f4, %lo(var_8099BE6C)($at) 
    lw      t8, 0x0000(t6)             # 80991A40
    lw      t7, 0x0004(t6)             # 80991A44
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    sw      t8, 0x0000(t5)             # FFFFFFE0
    lw      t8, 0x0008(t6)             # 80991A48
    sw      t7, 0x0004(t5)             # FFFFFFE4
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    sw      t8, 0x0008(t5)             # FFFFFFE8
    lw      t2, 0x0000(t0)             # FFFFFFE0
    lw      t1, 0x0004(t0)             # FFFFFFE4
    sw      t2, 0x0000(t9)             # 8099BE88
    lw      t2, 0x0008(t0)             # FFFFFFE8
    sw      t1, 0x0004(t9)             # 8099BE8C
    sw      t2, 0x0008(t9)             # 8099BE90
    lw      t6, 0x0000(t4)             # FFFFFFE0
    lw      t5, 0x0004(t4)             # FFFFFFE4
    addiu   t9, $zero, 0x0085          # t9 = 00000085
    sw      t6, 0x0000(t3)             # 8099BE98
    lw      t6, 0x0008(t4)             # FFFFFFE8
    sw      t5, 0x0004(t3)             # 8099BE9C
    sw      t6, 0x0008(t3)             # 8099BEA0
    lb      t7, %lo(var_8099BE42)(t7)  
    addiu   t8, t7, 0x0001             # t8 = 809A0001
    sb      t8, %lo(var_8099BE42)($at) 
    beq     $zero, $zero, lbl_80989714 
    sw      t9, 0x0188(s3)             # 00000188
var_809894C0:
    lui     $at, %hi(var_80991DA4)     # $at = 80990000
    lwc1    $f6, %lo(var_80991DA4)($at) 
    lui     a0, %hi(var_8099BE88)      # a0 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a0, %lo(var_8099BE88)  # a0 = 8099BE88
    lui     a1, 0x3FC0                 # a1 = 3FC00000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, %hi(var_8099BE88)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099BE88)($at) 
    lui     $at, %hi(var_8099BE90)     # $at = 809A0000
    lui     t1, %hi(var_8099BE88)      # t1 = 809A0000
    swc1    $f8, %lo(var_8099BE90)($at) 
    lui     $at, %hi(var_8099BE8C)     # $at = 809A0000
    addiu   t1, t1, %lo(var_8099BE88)  # t1 = 8099BE88
    swc1    $f8, %lo(var_8099BE8C)($at) 
    lw      t3, 0x0000(t1)             # 8099BE88
    lui     t0, %hi(var_8099BE98)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE98)  # t0 = 8099BE98
    sw      t3, 0x0000(t0)             # 8099BE98
    lw      t3, 0x0008(t1)             # 8099BE90
    lw      t2, 0x0004(t1)             # 8099BE8C
    or      a0, s4, $zero              # a0 = 00000000
    sw      t3, 0x0008(t0)             # 8099BEA0
    sw      t2, 0x0004(t0)             # 8099BE9C
    lw      t4, 0x0188(s3)             # 00000188
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    bne     t5, $zero, lbl_809896F8    
    sw      t5, 0x0188(s3)             # 00000188
    jal     func_8009D21C              
    lh      a1, %lo(var_80991A5C)(a1)  
    lui     $at, %hi(var_80991A5C)     # $at = 80990000
    sh      $zero, %lo(var_80991A5C)($at) 
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80052340              
    addiu   a1, s4, 0x1D64             # a1 = 00001D64
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t7, %hi(var_8099BE48)      # t7 = 809A0000
    addiu   t7, t7, %lo(var_8099BE48)  # t7 = 8099BE48
    lw      t9, 0x0000(t7)             # 8099BE48
    addiu   v1, $sp, 0x0068            # v1 = FFFFFFE0
    lui     t4, %hi(var_8099BE58)      # t4 = 809A0000
    sw      t9, 0x0000(v1)             # FFFFFFE0
    lw      t8, 0x0004(t7)             # 8099BE4C
    lw      t1, 0x0000(v1)             # FFFFFFE0
    addiu   t4, t4, %lo(var_8099BE58)  # t4 = 8099BE58
    sw      t8, 0x0004(v1)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 8099BE50
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    sw      t9, 0x0008(v1)             # FFFFFFE8
    sw      t1, 0x005C(s0)             # 00000061
    lw      t0, 0x0004(v1)             # FFFFFFE4
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sw      t0, 0x0060(s0)             # 00000065
    lw      t1, 0x0008(v1)             # FFFFFFE8
    sw      t1, 0x0064(s0)             # 00000069
    lw      t3, 0x0000(v1)             # FFFFFFE0
    sw      t3, 0x0074(s0)             # 00000079
    lw      t2, 0x0004(v1)             # FFFFFFE4
    sw      t2, 0x0078(s0)             # 0000007D
    lw      t3, 0x0008(v1)             # FFFFFFE8
    sw      t3, 0x007C(s0)             # 00000081
    lw      t6, 0x0000(t4)             # 8099BE58
    sw      t6, 0x0050(s0)             # 00000055
    lw      t5, 0x0004(t4)             # 8099BE5C
    sw      t5, 0x0054(s0)             # 00000059
    lw      t6, 0x0008(t4)             # 8099BE60
    jal     func_800218EC              
    sw      t6, 0x0058(s0)             # 0000005D
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    lb      t7, %lo(var_8099BE42)(t7)  
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    addiu   t8, t7, 0x0001             # t8 = 809A0001
    sb      t8, %lo(var_8099BE42)($at) 
    lwc1    $f10, 0x0028(s3)           # 00000028
    lw      a3, 0x0024(s3)             # 00000024
    or      a1, s4, $zero              # a1 = 00000000
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x002C(s3)           # 0000002C
    sw      a0, 0x005C($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)          
    lw      a1, 0x0078($sp)            
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    lui     s1, %hi(var_80991A14)      # s1 = 80990000
    lui     s2, %hi(var_80991A08)      # s2 = 80990000
    addiu   a1, a1, 0x0024             # a1 = 00000024
    sw      a1, 0x0054($sp)            
    addiu   s2, s2, %lo(var_80991A08)  # s2 = 80991A08
    addiu   s1, s1, %lo(var_80991A14)  # s1 = 80991A14
    sw      t9, 0x007C($sp)            
    addiu   s0, $zero, 0x0002          # s0 = 00000002
lbl_80989668:
    lw      a1, 0x0054($sp)            
    jal     func_80063E18              
    or      a0, s1, $zero              # a0 = 80991A14
    mov.s   $f20, $f0                  
    or      a0, s2, $zero              # a0 = 80991A08
    jal     func_80063E18              
    lw      a1, 0x0054($sp)            
    c.lt.s  $f20, $f0                  
    addiu   s1, s1, 0xFFF4             # s1 = 80991A08
    addiu   t0, s0, 0xFFFF             # t0 = 00000001
    bc1fl   lbl_809896A0               
    addiu   s0, s0, 0xFFFF             # s0 = 00000001
    sw      t0, 0x007C($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 00000000
lbl_809896A0:
    bne     s0, $zero, lbl_80989668    
    addiu   s2, s2, 0xFFF4             # s2 = 809919FC
    lw      t1, 0x007C($sp)            
    lui     t3, %hi(var_809919FC)      # t3 = 80990000
    addiu   t3, t3, %lo(var_809919FC)  # t3 = 809919FC
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  2                 
    addu    v0, t2, t3                 
    lwc1    $f18, 0x0004(v0)           # 00000004
    lwc1    $f4, 0x0008(v0)            # 00000008
    lw      a3, 0x0000(v0)             # 00000000
    lw      a0, 0x005C($sp)            
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00A1          # a2 = 000000A1
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f18, 0x0010($sp)          
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)           
lbl_809896F8:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    jal     func_80026D90              
    nop
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s4               
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_80989714:
    lui     t4, %hi(var_80991A5C)      # t4 = 80990000
    lh      t4, %lo(var_80991A5C)(t4)  
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    beq     t4, $zero, lbl_8098986C    
    addu    s0, s4, $at                
    lui     $at, %hi(var_80991DA8)     # $at = 80990000
    lwc1    $f6, %lo(var_80991DA8)($at) 
    lui     a0, %hi(var_8099BE48)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE68)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE88)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE88)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE68)(a1)  
    addiu   a0, a0, %lo(var_8099BE48)  # a0 = 8099BE48
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, %hi(var_80991DAC)     # $at = 80990000
    lwc1    $f8, %lo(var_80991DAC)($at) 
    lui     a0, %hi(var_8099BE4C)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE6C)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE8C)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE8C)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE6C)(a1)  
    addiu   a0, a0, %lo(var_8099BE4C)  # a0 = 8099BE4C
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lui     $at, %hi(var_80991DB0)     # $at = 80990000
    lwc1    $f10, %lo(var_80991DB0)($at) 
    lui     a0, %hi(var_8099BE50)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE70)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE90)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE90)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE70)(a1)  
    addiu   a0, a0, %lo(var_8099BE50)  # a0 = 8099BE50
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, %hi(var_80991DB4)     # $at = 80990000
    lwc1    $f16, %lo(var_80991DB4)($at) 
    lui     a0, %hi(var_8099BE58)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE78)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE98)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE98)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE78)(a1)  
    addiu   a0, a0, %lo(var_8099BE58)  # a0 = 8099BE58
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, %hi(var_80991DB8)     # $at = 80990000
    lwc1    $f18, %lo(var_80991DB8)($at) 
    lui     a0, %hi(var_8099BE5C)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE7C)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BE9C)      # a3 = 809A0000
    lw      a3, %lo(var_8099BE9C)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE7C)(a1)  
    addiu   a0, a0, %lo(var_8099BE5C)  # a0 = 8099BE5C
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     $at, %hi(var_80991DBC)     # $at = 80990000
    lwc1    $f4, %lo(var_80991DBC)($at) 
    lui     a0, %hi(var_8099BE60)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE80)      # a1 = 809A0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, %hi(var_8099BEA0)      # a3 = 809A0000
    lw      a3, %lo(var_8099BEA0)(a3)  
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lw      a1, %lo(var_8099BE80)(a1)  
    addiu   a0, a0, %lo(var_8099BE60)  # a0 = 8099BE60
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    lui     a2, %hi(var_8099BE58)      # a2 = 809A0000
    lui     a3, %hi(var_8099BE48)      # a3 = 809A0000
    addiu   a3, a3, %lo(var_8099BE48)  # a3 = 8099BE48
    addiu   a2, a2, %lo(var_8099BE58)  # a2 = 8099BE58
    lh      a1, %lo(var_80991A5C)(a1)  
    jal     func_8009D328              
    or      a0, s4, $zero              # a0 = 00000000
lbl_8098986C:
    jal     func_8008C9C0              
    addiu   a0, s3, 0x013C             # a0 = 0000013C
    addiu   a0, s3, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC3F0                 # a1 = C3F00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    addiu   a0, s3, 0x01E8             # a0 = 000001E8
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s3, 0x01E6             # a0 = 000001E6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s3, 0x019E             # a0 = 0000019E
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lbu     v1, 0x0B09(s0)             # 00000B09
    mfc1    a1, $f20                   
    addiu   a0, s3, 0x0068             # a0 = 00000068
    beq     v1, $zero, lbl_809898F0    
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   t5, v1, 0xFFCE             # t5 = FFFFFFCE
    sb      t5, 0x0B09(s0)             # 00000B09
lbl_809898F0:
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    lh      t9, 0x019C(s3)             # 0000019C
    lh      t0, 0x01E6(s3)             # 000001E6
    lh      t6, 0x00B6(s3)             # 000000B6
    lh      t7, 0x01E8(s3)             # 000001E8
    addu    t1, t9, t0                 
    sh      t1, 0x019C(s3)             # 0000019C
    addu    t8, t6, t7                 
    sh      t8, 0x00B6(s3)             # 000000B6
    jal     func_80063684              # coss?
    lh      a0, 0x019C(s3)             # 0000019C
    lui     $at, %hi(var_80991DC0)     # $at = 80990000
    lwc1    $f6, %lo(var_80991DC0)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6              
    lh      a0, 0x019C(s3)             # 0000019C
    add.s   $f16, $f8, $f10            
    jal     func_800636C4              # sins?
    swc1    $f16, 0x0190(s3)           # 00000190
    lui     $at, %hi(var_80991DC4)     # $at = 80990000
    lwc1    $f18, %lo(var_80991DC4)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f0, $f18             
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0194(s3)            # 00000194
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80989988:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x52A8             # a0 = 060152A8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x52A8             # a1 = 060152A8
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80989A00)     # a1 = 80990000
    addiu   a1, a1, %lo(func_80989A00) # a1 = 80989A00
    jal     func_80984CD0              
    sw      $zero, 0x0188(a0)          # 00000188
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80989A00:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, %hi(var_8099BE42)      # v0 = 809A0000
    lb      v0, %lo(var_8099BE42)(v0)  
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80989A48      
    slti    $at, v0, 0x0003            
    jal     func_80989B24              
    lw      a1, 0x003C($sp)            
    beq     $zero, $zero, lbl_80989B14 
    lw      $ra, 0x0034($sp)           
    slti    $at, v0, 0x0003            
lbl_80989A48:
    bnel    $at, $zero, lbl_80989B14   
    lw      $ra, 0x0034($sp)           
    lw      t6, 0x0188(s0)             # 00000188
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   t7, t6, 0x0001             # t7 = 00000001
    andi    t8, t7, 0x0001             # t8 = 00000001
    bne     t8, $zero, lbl_80989AB4    
    sw      t7, 0x0188(s0)             # 00000188
    andi    t0, t7, 0x0020             # t0 = 00000000
    sra     t1, t0,  5                 
    addiu   t2, t1, 0x0001             # t2 = 00000001
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    cvt.s.w $f10, $f8                  
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0020($sp)            
    sw      t9, 0x0018($sp)            
    swc1    $f10, 0x001C($sp)          
    lw      a0, 0x003C($sp)            
    addiu   a3, $zero, 0x005A          # a3 = 0000005A
    swc1    $f4, 0x0010($sp)           
    jal     func_8098527C              
    swc1    $f6, 0x0014($sp)           
lbl_80989AB4:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991DC8)     # $at = 80990000
    lwc1    $f18, %lo(var_80991DC8)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80989B14               
    lw      $ra, 0x0034($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    lw      $ra, 0x0034($sp)           
lbl_80989B14:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80989B24:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x52A8             # a0 = 060152A8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x52A8             # a1 = 060152A8
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_80989BA8)     # a1 = 80990000
    addiu   a1, a1, %lo(func_80989BA8) # a1 = 80989BA8
    lh      t6, 0x001C(a0)             # 0000001C
    sll     t7, t6,  2                 
    addu    t7, t7, t6                 
    sll     t7, t7,  1                 
    jal     func_80984CD0              
    sw      t7, 0x0188(a0)             # 00000188
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80989BA8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0188(s0)             # 00000188
    lui     t8, %hi(var_8099BE40)      # t8 = 809A0000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0188(s0)             # 00000188
    lbu     t8, %lo(var_8099BE40)(t8)  
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    andi    t9, t8, 0x007F             # t9 = 00000000
    beq     t9, $zero, lbl_80989C9C    
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    jal     func_80027090              
    sw      t0, 0x0010($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     a0, 0x0601                 # a0 = 06010000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80989C60               
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x4EAC             # a0 = 06014EAC
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f8, $f6                   
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    addiu   a1, a1, 0x4EAC             # a1 = 06014EAC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_80989CA0 
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80989C60:
    jal     func_8008A194              
    addiu   a0, a0, 0x50B0             # a0 = 000051EC
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f16, $f10                 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    addiu   a1, a1, 0x50B0             # a1 = 060150B0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f16, 0x0010($sp)          
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
lbl_80989C9C:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80989CA0:
    jal     func_8008C9C0              
    sw      a0, 0x0038($sp)            
    beq     v0, $zero, lbl_80989CE8    
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x52A8             # a0 = 060152A8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x52A8             # a1 = 060152A8
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_80989CE8:
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991DCC)     # $at = 80990000
    lwc1    $f8, %lo(var_80991DCC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80989D20               
    lbu     t3, 0x02D9(s0)             # 000002D9
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    lbu     t3, 0x02D9(s0)             # 000002D9
lbl_80989D20:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_80989D44    
    lbu     t5, 0x0114(s0)             # 00000114
    jal     func_80989DD0              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_80989DC0 
    lw      $ra, 0x0034($sp)           
    lbu     t5, 0x0114(s0)             # 00000114
lbl_80989D44:
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0044($sp)            
    bne     t5, $zero, lbl_80989D60    
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x02C8             # a2 = 000002C8
lbl_80989D60:
    lw      v0, 0x0188(s0)             # 00000188
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, v0, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_80989DBC    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t8, v0, 0x0020             # t8 = 00000000
    sra     t9, t8,  5                 
    addiu   t0, t9, 0x0001             # t0 = 00000001
    mtc1    t0, $f18                   # $f18 = 0.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    cvt.s.w $f4, $f18                  
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0020($sp)            
    sw      t7, 0x0018($sp)            
    swc1    $f4, 0x001C($sp)           
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    swc1    $f10, 0x0010($sp)          
    jal     func_8098527C              
    swc1    $f16, 0x0014($sp)          
lbl_80989DBC:
    lw      $ra, 0x0034($sp)           
lbl_80989DC0:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80989DD0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    lui     v1, %hi(var_8099BE40)      # v1 = 809A0000
    lui     t0, %hi(var_8099BE41)      # t0 = 809A0000
    addiu   t0, t0, %lo(var_8099BE41)  # t0 = 8099BE41
    addiu   v1, v1, %lo(var_8099BE40)  # v1 = 8099BE40
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    lbu     t6, 0x0000(v1)             # 8099BE40
    lbu     t8, 0x0000(t0)             # 8099BE41
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t7, 0x0000(v1)             # 8099BE40
    sb      t9, 0x0000(t0)             # 8099BE41
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x01A8(s0)            # 000001A8
    lw      a3, 0x01A4(s0)             # 000001A4
    addiu   v0, v0, 0x0010             # v0 = 00000010
    add.s   $f8, $f4, $f6              
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x00BA          # a2 = 000000BA
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x01AC(s0)           # 000001AC
    sw      $zero, 0x0018($sp)         
    swc1    $f10, 0x0014($sp)          
    lh      t1, 0x00B6(s0)             # 000000B6
    sw      a1, 0x003C($sp)            
    sw      v0, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              # ActorSpawn
    sw      t1, 0x001C($sp)            
    lw      a0, 0x003C($sp)            
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    jal     func_800497A4              
    addiu   a0, a0, 0x01E0             # a0 = 000001E0
    lui     a1, %hi(func_80989E98)     # a1 = 80990000
    sb      $zero, 0x0185(s0)          # 00000185
    sh      $zero, 0x018C(s0)          # 0000018C
    addiu   a1, a1, %lo(func_80989E98) # a1 = 80989E98
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80989E98:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80984CDC              
    sw      t6, 0x004C($sp)            
    lbu     t7, 0x0184(s0)             # 00000184
    lui     a0, 0x0601                 # a0 = 06010000
    beql    t7, $zero, lbl_8098A018    
    lw      t2, 0x004C($sp)            
    jal     func_8008A194              
    addiu   a0, a0, 0x6294             # a0 = 06016294
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0048($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    sb      $zero, 0x0184(s0)          # 00000184
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mul.s   $f10, $f0, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t9, $f16                   
    nop
    addiu   t0, t9, 0x0005             # t0 = 00000005
    sw      t0, 0x0188(s0)             # 00000188
    sw      a0, 0x003C($sp)            
    jal     func_8008D6D0              
    lw      a1, 0x0054($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x6294             # a3 = 06016294
    addiu   a2, a2, 0x6BC8             # a2 = 06016BC8
    lw      a0, 0x0054($sp)            
    lw      a1, 0x003C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f18, 0x0048($sp)          
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    addiu   a1, a1, 0x6294             # a1 = 06016294
    lw      a0, 0x003C($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f18, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     $at, %hi(var_8099BE40)     # $at = 809A0000
    sb      $zero, %lo(var_8099BE40)($at) 
    lw      v0, 0x0118(s0)             # 00000118
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x00BC(v0)            # 000000BC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x00BC(v0)            # 000000BC
    lh      v1, 0x001C(s0)             # 0000001C
    beql    v1, $zero, lbl_80989FC0    
    lw      v0, 0x0118(s0)             # 00000118
    beq     v1, $at, lbl_80989FD0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_80989FF8      
    lw      v0, 0x0118(s0)             # 00000118
    beq     $zero, $zero, lbl_8098A018 
    lw      t2, 0x004C($sp)            
    lw      v0, 0x0118(s0)             # 00000118
lbl_80989FC0:
    lh      t2, 0x0030(v0)             # 00000030
    addiu   t3, t2, 0x04B0             # t3 = 000004B0
    beq     $zero, $zero, lbl_8098A014 
    sh      t3, 0x0030(v0)             # 00000030
lbl_80989FD0:
    lw      v0, 0x0118(s0)             # 00000118
    lh      t4, 0x0030(v0)             # 00000030
    addiu   t5, t4, 0xFDA8             # t5 = FFFFFDA8
    sh      t5, 0x0030(v0)             # 00000030
    lw      v0, 0x0118(s0)             # 00000118
    lh      t6, 0x0034(v0)             # 00000034
    addiu   t7, t6, 0xFB1E             # t7 = FFFFFB1E
    beq     $zero, $zero, lbl_8098A014 
    sh      t7, 0x0034(v0)             # 00000034
    lw      v0, 0x0118(s0)             # 00000118
lbl_80989FF8:
    lh      t8, 0x0030(v0)             # 00000030
    addiu   t9, t8, 0xFDA8             # t9 = FFFFFDA8
    sh      t9, 0x0030(v0)             # 00000030
    lw      v0, 0x0118(s0)             # 00000118
    lh      t0, 0x0034(v0)             # 00000034
    addiu   t1, t0, 0x04E2             # t1 = 000004E2
    sh      t1, 0x0034(v0)             # 00000034
lbl_8098A014:
    lw      t2, 0x004C($sp)            
lbl_8098A018:
    addiu   t3, s0, 0x013C             # t3 = 0000013C
    addiu   a0, s0, 0x01E6             # a0 = 000001E6
    lh      a1, 0x01E8(t2)             # 000001E8
    sw      t3, 0x003C($sp)            
    sw      $zero, 0x0010($sp)         
    subu    $at, $zero, a1             
    sll     a1, $at,  2                
    subu    a1, a1, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x04B0          # a3 = 000004B0
    jal     func_8008C9C0              
    lw      a0, 0x003C($sp)            
    beq     v0, $zero, lbl_8098A0A8    
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x63F4             # a0 = 060163F4
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f16, $f10                 
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    mfc1    a3, $f0                    
    sw      t4, 0x0014($sp)            
    addiu   a1, a1, 0x63F4             # a1 = 060163F4
    lw      a0, 0x003C($sp)            
    swc1    $f16, 0x0010($sp)          
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t5, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t6, t5, $at                
    sw      t6, 0x0004(s0)             # 00000004
lbl_8098A0A8:
    lw      t7, 0x0188(s0)             # 00000188
    lui     t8, %hi(var_8099BE42)      # t8 = 809A0000
    bne     t7, $zero, lbl_8098A104    
    nop
    lb      t8, %lo(var_8099BE42)(t8)  
    slti    $at, t8, 0x000E            
    beq     $at, $zero, lbl_8098A104   
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    lh      a2, 0x01E6(s0)             # 000001E6
    mul.s   $f4, $f0, $f18             
    lh      a3, 0x00B6(s0)             # 000000B6
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    addiu   t1, t0, 0x000A             # t1 = 0000000A
    sw      t1, 0x0188(s0)             # 00000188
    jal     func_80984F20              
    lw      a0, 0x0054($sp)            
lbl_8098A104:
    lui     v0, %hi(var_8099BE42)      # v0 = 809A0000
    lb      v0, %lo(var_8099BE42)(v0)  
    addiu   a0, s0, 0x0158             # a0 = 00000158
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    slti    $at, v0, 0x000E            
    bne     $at, $zero, lbl_8098A140   
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f8                   # $f8 = 0.13
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x3E80                 # a3 = 3E800000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lui     v0, %hi(var_8099BE42)      # v0 = 809A0000
    lb      v0, %lo(var_8099BE42)(v0)  
lbl_8098A140:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    beq     v0, $at, lbl_8098A170      
    lui     a0, %hi(var_8099BE48)      # a0 = 809A0000
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8098A228      
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v0, $at, lbl_8098A228      
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beql    v0, $at, lbl_8098A22C      
    lbu     t0, 0x0185(s0)             # 00000185
    beq     $zero, $zero, lbl_8098A350 
    lw      v0, 0x0188(s0)             # 00000188
lbl_8098A170:
    lui     t2, %hi(var_8099BE68)      # t2 = 809A0000
    addiu   t2, t2, %lo(var_8099BE68)  # t2 = 8099BE68
    lw      t4, 0x0000(t2)             # 8099BE68
    addiu   a0, a0, %lo(var_8099BE48)  # a0 = 8099BE48
    lui     v0, %hi(var_8099BE78)      # v0 = 809A0000
    sw      t4, 0x0000(a0)             # 8099BE48
    lw      t3, 0x0004(t2)             # 8099BE6C
    addiu   v0, v0, %lo(var_8099BE78)  # v0 = 8099BE78
    lw      t7, 0x0000(v0)             # 8099BE78
    sw      t3, 0x0004(a0)             # 8099BE4C
    lw      t4, 0x0008(t2)             # 8099BE70
    lui     t5, %hi(var_8099BE58)      # t5 = 809A0000
    addiu   t5, t5, %lo(var_8099BE58)  # t5 = 8099BE58
    sw      t4, 0x0008(a0)             # 8099BE50
    sw      t7, 0x0000(t5)             # 8099BE58
    lw      t6, 0x0004(v0)             # 8099BE7C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      t6, 0x0004(t5)             # 8099BE5C
    lw      t7, 0x0008(v0)             # 8099BE80
    lui     a3, 0x4120                 # a3 = 41200000
    sw      t7, 0x0008(t5)             # 8099BE60
    lw      a1, 0x0000(v0)             # 8099BE78
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a0, %hi(var_8099BE50)      # a0 = 809A0000
    lui     a1, %hi(var_8099BE80)      # a1 = 809A0000
    lw      a1, %lo(var_8099BE80)(a1)  
    addiu   a0, a0, %lo(var_8099BE50)  # a0 = 8099BE50
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     v0, %hi(var_8099BE48)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE48)  # v0 = 8099BE48
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f18, 0x0004(v0)           # 8099BE4C
    lui     t8, %hi(var_8099BE42)      # t8 = 809A0000
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0004(v0)            # 8099BE4C
    lb      t8, %lo(var_8099BE42)(t8)  
    addiu   t9, t8, 0x0001             # t9 = 809A0001
    sb      t9, %lo(var_8099BE42)($at) 
lbl_8098A228:
    lbu     t0, 0x0185(s0)             # 00000185
lbl_8098A22C:
    lw      t1, 0x0054($sp)            
    lui     t2, 0x0001                 # t2 = 00010000
    bne     t0, $zero, lbl_8098A32C    
    addu    t2, t2, t1                 
    lw      t2, 0x1DE4(t2)             # 00011DE4
    lui     $at, 0x40A0                # $at = 40A00000
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_8098A2CC    
    lh      t0, 0x018C(s0)             # 0000018C
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    nop
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f10                  # $f10 = 7.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0018($sp)            
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    lh      t6, 0x018C(s0)             # 0000018C
    trunc.w.s $f8, $f0                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sra     t7, t6,  3                 
    addiu   t8, t7, 0x0001             # t8 = 00000001
    mtc1    t8, $f18                   # $f18 = 0.00
    mfc1    a3, $f8                    
    sw      t9, 0x0020($sp)            
    cvt.s.w $f4, $f18                  
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x0006             # a3 = 00000006
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    swc1    $f4, 0x001C($sp)           
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80985400              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t0, 0x018C(s0)             # 0000018C
lbl_8098A2CC:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x018C(s0)             # 0000018C
    lh      t2, 0x018C(s0)             # 0000018C
    slti    $at, t2, 0x0020            
    bnel    $at, $zero, lbl_8098A350   
    lw      v0, 0x0188(s0)             # 00000188
    lbu     t3, 0x0185(s0)             # 00000185
    sb      t5, 0x0187(s0)             # 00000187
    addiu   a1, $zero, 0x3945          # a1 = 00003945
    addiu   t4, t3, 0x0001             # t4 = 00000001
    jal     func_80022FD0              
    sb      t4, 0x0185(s0)             # 00000185
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    bnel    t6, $at, lbl_8098A350      
    lw      v0, 0x0188(s0)             # 00000188
    lb      t7, %lo(var_8099BE42)(t7)  
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    addiu   t8, t7, 0x0001             # t8 = 809A0001
    beq     $zero, $zero, lbl_8098A34C 
    sb      t8, %lo(var_8099BE42)($at) 
lbl_8098A32C:
    lh      t9, 0x018C(s0)             # 0000018C
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x018C(s0)             # 0000018C
    lh      t1, 0x018C(s0)             # 0000018C
    bnel    t1, $zero, lbl_8098A350    
    lw      v0, 0x0188(s0)             # 00000188
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8098A34C:
    lw      v0, 0x0188(s0)             # 00000188
lbl_8098A350:
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sw      t2, 0x0188(s0)             # 00000188
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A36C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x6D50             # a0 = 06016D50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x6D50             # a1 = 06016D50
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_8098A3F0)     # a1 = 80990000
    lw      t7, 0x0004(a0)             # 00000004
    addiu   a1, a1, %lo(func_8098A3F0) # a1 = 8098A3F0
    and     t8, t7, $at                
    jal     func_80984CD0              
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A3F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_8098A458    
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991DD0)     # $at = 80990000
    lwc1    $f4, %lo(var_80991DD0)($at) 
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_8098A458               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lw      a0, 0x0018($sp)            
    mul.s   $f10, $f0, $f8             
    lwc1    $f6, 0x0154(a0)            # 00000154
    sub.s   $f16, $f6, $f10            
    swc1    $f16, 0x0154(a0)           # 00000154
lbl_8098A458:
    lui     t6, %hi(var_8099BE42)      # t6 = 809A0000
    lb      t6, %lo(var_8099BE42)(t6)  
    lw      a0, 0x0018($sp)            
    slti    $at, t6, 0x000E            
    bnel    $at, $zero, lbl_8098A47C   
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8098A47C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A488:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7918             # a0 = 06017918
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    cvt.s.w $f0, $f4                   
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f0, $f2              
    mfc1    a2, $f2                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7918             # a1 = 06017918
    mfc1    a3, $f6                    
    swc1    $f0, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_8098A51C)     # a1 = 80990000
    lw      t7, 0x0004(a0)             # 00000004
    addiu   a1, a1, %lo(func_8098A51C) # a1 = 8098A51C
    and     t8, t7, $at                
    jal     func_80984CD0              
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A51C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, %hi(var_8099BE42)      # v0 = 809A0000
    lb      v0, %lo(var_8099BE42)(v0)  
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8098A56C      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v0, $at, lbl_8098A56C      
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_8098A56C      
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8098A57C      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098A588 
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_8098A56C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_8098A588 
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_8098A57C:
    jal     func_8098A5DC              
    lw      a1, 0x002C($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_8098A588:
    lh      t7, 0x00B4(s0)             # 000000B4
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    subu    a1, t6, t7                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          # a3 = 000002EE
    lw      t8, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x002E(t8)             # 0000002E
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          # a3 = 000002EE
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A5DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7918             # a0 = 06017918
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    cvt.s.w $f0, $f4                   
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f0, $f2              
    mfc1    a2, $f2                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7918             # a1 = 06017918
    mfc1    a3, $f6                    
    swc1    $f0, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_8098A670)     # a1 = 80990000
    lw      t7, 0x0004(a0)             # 00000004
    addiu   a1, a1, %lo(func_8098A670) # a1 = 8098A670
    and     t8, t7, $at                
    jal     func_80984CD0              
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098A670:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   t7, $zero, 0x01F4          # t7 = 000001F4
    sh      t7, 0x0090($sp)            
    sw      a1, 0x00AC($sp)            
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80985650              
    sw      t6, 0x00A4($sp)            
    beq     v0, $zero, lbl_8098A6BC    
    lw      t1, 0x00A4($sp)            
    lw      v1, 0x01BC(v0)             # 000001BC
    lw      t8, 0x00A4($sp)            
    beql    v1, $zero, lbl_8098A6C0    
    lw      t3, 0x0024(t1)             # 00000024
    bne     t8, v1, lbl_8098A6F8       
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
lbl_8098A6BC:
    lw      t3, 0x0024(t1)             # 00000024
lbl_8098A6C0:
    addiu   t9, $sp, 0x007C            # t9 = FFFFFFD4
    lui     $at, 0x4120                # $at = 41200000
    sw      t3, 0x0000(t9)             # FFFFFFD4
    lw      t2, 0x0028(t1)             # 00000028
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   t4, $zero, 0x3E80          # t4 = 00003E80
    sw      t2, 0x0004(t9)             # FFFFFFD8
    lw      t3, 0x002C(t1)             # 0000002C
    sw      t3, 0x0008(t9)             # FFFFFFDC
    lwc1    $f4, 0x0080($sp)           
    sh      t4, 0x008E($sp)            
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_8098A938 
    swc1    $f8, 0x0080($sp)           
lbl_8098A6F8:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lh      t6, 0x0110(t5)             # 80120110
    addiu   t7, $zero, 0x4650          # t7 = 00004650
    sh      t7, 0x008E($sp)            
    mtc1    t6, $f10                   # $f10 = 0.00
    addiu   a1, v1, 0x0038             # a1 = 00000038
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0074($sp)           
    lw      t9, 0x0024(v0)             # 00000024
    sw      t9, 0x0000(a0)             # FFFFFFD4
    lw      t8, 0x0028(v0)             # 00000028
    sw      t8, 0x0004(a0)             # FFFFFFD8
    lw      t9, 0x002C(v0)             # 0000002C
    sw      t9, 0x0008(a0)             # FFFFFFDC
    lh      t1, 0x0032(v0)             # 00000032
    sh      t1, 0x006C($sp)            
    lh      t2, 0x0030(v0)             # 00000030
    sh      t2, 0x0056($sp)            
    lbu     a3, 0x01C4(v0)             # 000001C4
    slti    $at, a3, 0x0003            
    bnel    $at, $zero, lbl_8098A934   
    addiu   t7, $zero, 0x3E80          # t7 = 00003E80
    sw      a1, 0x003C($sp)            
    sw      a3, 0x0070($sp)            
lbl_8098A768:
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    jal     func_80063F00              
    lw      a1, 0x003C($sp)            
    lh      t3, 0x006C($sp)            
    sh      v0, 0x006E($sp)            
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    subu    v1, t3, v0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x005A($sp)            
    jal     func_80063F34              
    lw      a1, 0x003C($sp)            
    lh      t4, 0x0056($sp)            
    sh      v0, 0x0058($sp)            
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    subu    a3, t4, v0                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sh      a3, 0x0054($sp)            
    jal     func_80063E18              
    lw      a1, 0x003C($sp)            
    lui     $at, %hi(var_80991DD4)     # $at = 80990000
    lwc1    $f14, %lo(var_80991DD4)($at) 
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lui     $at, %hi(var_80991DD8)     # $at = 80990000
    lwc1    $f10, %lo(var_80991DD8)($at) 
    sub.s   $f8, $f6, $f0              
    lh      v1, 0x005A($sp)            
    lh      a3, 0x0054($sp)            
    mul.s   $f12, $f8, $f10            
    c.lt.s  $f12, $f14                 
    nop
    bc1f    lbl_8098A7F8               
    nop
    mov.s   $f12, $f14                 
lbl_8098A7F8:
    bgezl   v1, lbl_8098A810           
    mtc1    v1, $f16                   # $f16 = 0.00
    subu    v1, $zero, v1              
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    mtc1    v1, $f16                   # $f16 = 0.00
lbl_8098A810:
    bgez    a3, lbl_8098A824           
    cvt.s.w $f18, $f16                 
    subu    a3, $zero, a3              
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
lbl_8098A824:
    mul.s   $f4, $f18, $f12            
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFC4
    lh      a1, 0x006E($sp)            
    sh      a3, 0x0054($sp)            
    swc1    $f12, 0x0050($sp)          
    trunc.w.s $f6, $f4                   
    mfc1    a2, $f6                    
    nop
    sll     a2, a2, 16                 
    jal     func_80063704              
    sra     a2, a2, 16                 
    lh      a3, 0x0054($sp)            
    lwc1    $f12, 0x0050($sp)          
    addiu   a0, $sp, 0x0056            # a0 = FFFFFFAE
    mtc1    a3, $f8                    # $f8 = 0.00
    lh      a1, 0x0058($sp)            
    cvt.s.w $f10, $f8                  
    mul.s   $f16, $f10, $f12           
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f18                   
    nop
    sll     a2, a2, 16                 
    jal     func_80063704              
    sra     a2, a2, 16                 
    jal     func_800636C4              # sins?
    lh      a0, 0x0056($sp)            
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    neg.s   $f4, $f0                   
    lh      a0, 0x0056($sp)            
    mul.s   $f8, $f4, $f6              
    jal     func_80063684              # coss?
    swc1    $f8, 0x0068($sp)           
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f10                  # $f10 = 12.00
    lh      a0, 0x006C($sp)            
    mul.s   $f16, $f0, $f10            
    jal     func_800636C4              # sins?
    swc1    $f16, 0x005C($sp)          
    lwc1    $f18, 0x005C($sp)          
    lh      a0, 0x006C($sp)            
    mul.s   $f4, $f0, $f18             
    jal     func_80063684              # coss?
    swc1    $f4, 0x0064($sp)           
    lwc1    $f2, 0x0074($sp)           
    lwc1    $f8, 0x0064($sp)           
    lwc1    $f6, 0x007C($sp)           
    lwc1    $f4, 0x0068($sp)           
    mul.s   $f10, $f8, $f2             
    lwc1    $f18, 0x0080($sp)          
    lw      v0, 0x0070($sp)            
    mul.s   $f8, $f4, $f2              
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    slti    $at, v0, 0x0003            
    sw      v0, 0x0070($sp)            
    add.s   $f16, $f6, $f10            
    lwc1    $f10, 0x0084($sp)          
    add.s   $f6, $f18, $f8             
    swc1    $f16, 0x007C($sp)          
    lwc1    $f16, 0x005C($sp)          
    swc1    $f6, 0x0080($sp)           
    mul.s   $f4, $f0, $f16             
    nop
    mul.s   $f18, $f4, $f2             
    add.s   $f8, $f10, $f18            
    beq     $at, $zero, lbl_8098A768   
    swc1    $f8, 0x0084($sp)           
    addiu   t7, $zero, 0x3E80          # t7 = 00003E80
lbl_8098A934:
    sh      t7, 0x0090($sp)            
lbl_8098A938:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, %hi(var_8099BE41)      # v0 = 809A0000
    lbu     v0, %lo(var_8099BE41)(v0)  
    or      a0, s0, $zero              # a0 = 00000000
    lui     t8, %hi(var_8099BE40)      # t8 = 809A0000
    slti    $at, v0, 0x000F            
    bne     $at, $zero, lbl_8098A974   
    nop
    jal     func_8098B8BC              
    lw      a1, 0x00AC($sp)            
    beq     $zero, $zero, lbl_8098B094 
    lw      $ra, 0x0034($sp)           
lbl_8098A974:
    lbu     t8, %lo(var_8099BE40)(t8)  
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0x000F            
    andi    t9, t8, 0x007F             # t9 = 00000000
    beq     t9, $zero, lbl_8098A99C    
    nop
    jal     func_8098B0A4              
    lw      a1, 0x00AC($sp)            
    beq     $zero, $zero, lbl_8098B094 
    lw      $ra, 0x0034($sp)           
lbl_8098A99C:
    beq     $at, $zero, lbl_8098A9D4   
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    lw      t1, 0x0118(s0)             # 00000118
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      a1, 0x00AC($sp)            
    lwc1    $f16, 0x0068(t1)           # 00000068
    c.eq.s  $f6, $f16                  
    nop
    bc1t    lbl_8098A9D4               
    nop
    jal     func_8098C09C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098B094 
    lw      $ra, 0x0034($sp)           
lbl_8098A9D4:
    jal     func_80063F00              
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    lh      a2, 0x00B6(s0)             # 000000B6
    sll     t0, v0, 16                 
    sra     t0, t0, 16                 
    subu    a0, v0, a2                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    bltz    a0, lbl_8098AA04           
    lh      t2, 0x008E($sp)            
    beq     $zero, $zero, lbl_8098AA08 
    or      v1, a0, $zero              # v1 = 00000000
lbl_8098AA04:
    subu    v1, $zero, a0              
lbl_8098AA08:
    slt     $at, t2, v1                
    beq     $at, $zero, lbl_8098AA20   
    lui     t3, %hi(var_8099BE40)      # t3 = 809A0000
    lbu     v1, 0x0185(s0)             # 00000185
    beq     v1, $zero, lbl_8098AD24    
    nop
lbl_8098AA20:
    lbu     t3, %lo(var_8099BE40)(t3)  
    lbu     v1, 0x0185(s0)             # 00000185
    lw      t5, 0x00A4($sp)            
    andi    t4, t3, 0x0080             # t4 = 00000000
    bne     t4, $zero, lbl_8098AD24    
    nop
    lw      t6, 0x066C(t5)             # 0000066C
    sll     t7, t6,  5                 
    bltz    t7, lbl_8098AD24           
    nop
    bne     v1, $zero, lbl_8098AD1C    
    subu    a1, v0, a2                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    bltz    a1, lbl_8098AA68           
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    beq     $zero, $zero, lbl_8098AA6C 
    or      v1, a1, $zero              # v1 = 00000000
lbl_8098AA68:
    subu    v1, $zero, a1              
lbl_8098AA6C:
    slti    $at, v1, 0x1771            
    bne     $at, $zero, lbl_8098AA8C   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    blezl   a1, lbl_8098AA8C           
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
    beq     $zero, $zero, lbl_8098AA8C 
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
lbl_8098AA8C:
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    sw      $zero, 0x0010($sp)         
    sh      a1, 0x0094($sp)            
    jal     func_80064508              
    sh      t0, 0x0098($sp)            
    lh      a1, 0x0094($sp)            
    bltz    v0, lbl_8098AABC           
    lh      t0, 0x0098($sp)            
    sll     t1, v0, 16                 
    sra     t2, t1, 16                 
    beq     $zero, $zero, lbl_8098AACC 
    sw      t2, 0x0088($sp)            
lbl_8098AABC:
    sll     t3, v0, 16                 
    sra     t4, t3, 16                 
    subu    t5, $zero, t4              
    sw      t5, 0x0088($sp)            
lbl_8098AACC:
    subu    a1, t0, a1                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    bltz    a1, lbl_8098AAE8           
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    beq     $zero, $zero, lbl_8098AAEC 
    or      v1, a1, $zero              # v1 = 00000000
lbl_8098AAE8:
    subu    v1, $zero, a1              
lbl_8098AAEC:
    slti    $at, v1, 0x1771            
    bne     $at, $zero, lbl_8098AB0C   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    blezl   a1, lbl_8098AB0C           
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
    beq     $zero, $zero, lbl_8098AB0C 
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
lbl_8098AB0C:
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098AB2C           
    lw      t6, 0x0088($sp)            
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8098AB38 
    sra     v1, v1, 16                 
lbl_8098AB2C:
    sll     v1, v0, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_8098AB38:
    addu    t7, t6, v1                 
    addiu   a0, s0, 0x01BC             # a0 = 000001BC
    sw      t7, 0x0088($sp)            
    sw      a0, 0x003C($sp)            
    jal     func_80063F00              
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFD4
    addiu   a1, v0, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x09C4          # a3 = 000009C4
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098AB84           
    lw      t8, 0x0088($sp)            
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8098AB90 
    sra     v1, v1, 16                 
lbl_8098AB84:
    sll     v1, v0, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_8098AB90:
    addu    t9, t8, v1                 
    sw      t9, 0x0088($sp)            
    lw      v0, 0x015C(s0)             # 0000015C
    lh      t2, 0x00B4(s0)             # 000000B4
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    lh      t1, 0x0022(v0)             # 00000022
    lh      t4, 0x000A(v0)             # 0000000A
    lh      t6, 0x0010(v0)             # 00000010
    addu    t3, t1, t2                 
    lh      t8, 0x0016(v0)             # 00000016
    lh      t1, 0x001C(v0)             # 0000001C
    addu    t5, t3, t4                 
    addu    t7, t5, t6                 
    addu    t9, t7, t8                 
    addu    t2, t9, t1                 
    sh      t2, 0x0096($sp)            
    jal     func_80063F34              
    addiu   a1, s0, 0x01B0             # a1 = 000001B0
    lh      t3, 0x0096($sp)            
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    a1, v0, t3                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098AC10           
    lw      t4, 0x0088($sp)            
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8098AC1C 
    sra     v1, v1, 16                 
lbl_8098AC10:
    sll     v1, v0, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_8098AC1C:
    addu    t5, t4, v1                 
    sw      t5, 0x0088($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_80063F34              
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFD4
    subu    a1, $zero, v0              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098AC64           
    lui     $at, 0x3F80                # $at = 3F800000
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8098AC70 
    sra     v1, v1, 16                 
lbl_8098AC64:
    sll     v1, v0, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
lbl_8098AC70:
    lw      t6, 0x0088($sp)            
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f0                   # $f0 = 1.00
    addu    t7, t6, v1                 
    sw      t7, 0x0088($sp)            
    swc1    $f2, 0x0158(s0)            # 00000158
    mfc1    a1, $f2                    
    mfc1    a2, $f0                    
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t8, 0x0088($sp)            
    lh      t9, 0x0090($sp)            
    c.eq.s  $f0, $f4                   
    sltu    $at, t8, t9                
    bc1f    lbl_8098AD1C               
    nop
    beq     $at, $zero, lbl_8098ACF0   
    nop
    lbu     t1, 0x0185(s0)             # 00000185
    sh      $zero, 0x018C(s0)          # 0000018C
    addiu   t3, $sp, 0x007C            # t3 = FFFFFFD4
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0185(s0)             # 00000185
    lw      t5, 0x0000(t3)             # FFFFFFD4
    sw      t5, 0x01C8(s0)             # 000001C8
    lw      t4, 0x0004(t3)             # FFFFFFD8
    sw      t4, 0x01CC(s0)             # 000001CC
    lw      t5, 0x0008(t3)             # FFFFFFDC
    sw      t5, 0x01D0(s0)             # 000001D0
lbl_8098ACF0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991DDC)     # $at = 80990000
    lwc1    $f10, %lo(var_80991DDC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8098AD1C               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
lbl_8098AD1C:
    beq     $zero, $zero, lbl_8098AE94 
    lbu     v1, 0x0185(s0)             # 00000185
lbl_8098AD24:
    bnel    v1, $zero, lbl_8098AD3C    
    lbu     t7, 0x0338(s0)             # 00000338
    lh      t6, 0x018C(s0)             # 0000018C
    bgezl   t6, lbl_8098ADDC           
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    lbu     t7, 0x0338(s0)             # 00000338
lbl_8098AD3C:
    lh      v1, 0x018C(s0)             # 0000018C
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_8098AD80    
    nop
    blez    v1, lbl_8098AD90           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3946          # a1 = 00003946
    jal     func_80985584              
    lw      a0, 0x00AC($sp)            
    lw      t2, 0x0118(s0)             # 00000118
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      t9, 0x018C(s0)             # 0000018C
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t1, 0x0184(t2)             # 00000184
    beq     $zero, $zero, lbl_8098AD90 
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098AD80:
    blez    v1, lbl_8098AD90           
    nop
    sh      $zero, 0x018C(s0)          # 0000018C
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098AD90:
    bgez    v1, lbl_8098ADD8           
    lw      t3, 0x00A4($sp)            
    lw      t4, 0x066C(t3)             # 0000066C
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    sll     t5, t4,  5                 
    bgez    t5, lbl_8098ADD8           
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f0, 0x001C($sp)           
lbl_8098ADD8:
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
lbl_8098ADDC:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      t9, 0x00B4(s0)             # 000000B4
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    subu    a1, t8, t9                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    lw      t1, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x002E(t1)             # 0000002E
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x06D6          # a3 = 000006D6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    sb      $zero, 0x0185(s0)          # 00000185
    andi    v1, $zero, 0x00FF          # v1 = 00000000
lbl_8098AE94:
    beq     v1, $zero, lbl_8098B090    
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_8098B094      
    lw      $ra, 0x0034($sp)           
    lh      v1, 0x018C(s0)             # 0000018C
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, v1, 0x0020            
    bne     $at, $zero, lbl_8098AFC8   
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     v1, $at, lbl_8098AED0      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3942          # a1 = 00003942
lbl_8098AED0:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0020($sp)            
    sw      t2, 0x0018($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f8, 0x001C($sp)           
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0020($sp)            
    sw      t4, 0x0018($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f6, 0x001C($sp)           
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
    lw      a0, 0x00AC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0328             # a2 = 00000328
    addu    a1, a0, $at                
    sw      a1, 0x003C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a2, 0x0038($sp)            
    lw      a1, 0x003C($sp)            
    lw      a2, 0x0038($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a0, 0x00AC($sp)            
    beq     $zero, $zero, lbl_8098B074 
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098AFC8:
    sra     t9, v1,  3                 
    addiu   t1, t9, 0x0001             # t1 = 00000001
    mtc1    t1, $f10                   # $f10 = 0.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    cvt.s.w $f18, $f10                 
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)            
    sw      t8, 0x0018($sp)            
    swc1    $f18, 0x001C($sp)          
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    swc1    $f0, 0x0010($sp)           
    jal     func_8098527C              
    swc1    $f4, 0x0014($sp)           
    lh      v1, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    v1, $at, lbl_8098B028      
    addiu   $at, $zero, 0x0014         # $at = 00000014
    jal     func_80985584              
    lw      a0, 0x00AC($sp)            
    lh      v1, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0014         # $at = 00000014
lbl_8098B028:
    bne     v1, $at, lbl_8098B074      
    addiu   a3, $sp, 0x0044            # a3 = FFFFFF9C
    lw      t4, 0x01BC(s0)             # 000001BC
    lui     a1, %hi(var_809934C0)      # a1 = 80990000
    addiu   t5, s0, 0x01E6             # t5 = 000001E6
    sw      t4, 0x0000(a3)             # FFFFFF9C
    lw      t3, 0x01C0(s0)             # 000001C0
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   a1, a1, %lo(var_809934C0)  # a1 = 809934C0
    sw      t3, 0x0004(a3)             # FFFFFFA0
    lw      t4, 0x01C4(s0)             # 000001C4
    or      a2, s0, $zero              # a2 = 00000000
    sw      t4, 0x0008(a3)             # FFFFFFA4
    sw      $zero, 0x0018($sp)         
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    jal     func_80991438              
    lw      a0, 0x00AC($sp)            
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098B074:
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x018C(s0)             # 0000018C
    lh      t8, 0x018C(s0)             # 0000018C
    slti    $at, t8, 0x0028            
    bnel    $at, $zero, lbl_8098B094   
    lw      $ra, 0x0034($sp)           
    sb      $zero, 0x0185(s0)          # 00000185
lbl_8098B090:
    lw      $ra, 0x0034($sp)           
lbl_8098B094:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B0A4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     a0, 0x0601                 # a0 = 06010000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_8098B128               
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7668             # a0 = 06017668
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    cvt.s.w $f8, $f6                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7668             # a1 = 06017668
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    beq     $zero, $zero, lbl_8098B16C 
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
lbl_8098B128:
    jal     func_8008A194              
    addiu   a0, a0, 0x7790             # a0 = 00007790
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    cvt.s.w $f18, $f16                 
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x7790             # a1 = 06017790
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0010($sp)          
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
lbl_8098B16C:
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(func_8098B1AC)     # a1 = 80990000
    sb      $zero, 0x0185(s0)          # 00000185
    addiu   a1, a1, %lo(func_8098B1AC) # a1 = 8098B1AC
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B1AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t7, 0x00B4(s0)             # 000000B4
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    subu    a1, t6, t7                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          # a3 = 000002EE
    lw      t8, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x002E(t8)             # 0000002E
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          # a3 = 000002EE
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_8098B2AC    
    lui     t9, %hi(var_8099BE41)      # t9 = 809A0000
    lbu     t9, %lo(var_8099BE41)(t9)  
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0x000F            
    bne     $at, $zero, lbl_8098B2A4   
    nop
    jal     func_8098B8BC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098B2B0 
    lw      $ra, 0x0024($sp)           
lbl_8098B2A4:
    jal     func_8098A5DC              
    lw      a1, 0x002C($sp)            
lbl_8098B2AC:
    lw      $ra, 0x0024($sp)           
lbl_8098B2B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B2C0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7918             # a0 = 06017918
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x003C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0034($sp)           
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f8, 0x0034($sp)           
    lui     $at, 0xC0C0                # $at = C0C00000
    mul.s   $f4, $f0, $f18             
    add.s   $f16, $f8, $f10            
    mtc1    $at, $f8                   # $f8 = -6.00
    lwc1    $f6, 0x003C($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f16                   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mfc1    a3, $f4                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7918             # a1 = 06017918
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(func_8098B394)     # a1 = 80990000
    sb      $zero, 0x0185(s0)          # 00000185
    subu    $at, $zero, t7             
    sll     t8, $at,  2                
    subu    t8, t8, $at                
    sll     t8, t8,  1                 
    addiu   t9, t8, 0x0012             # t9 = 00000012
    sh      t9, 0x018C(s0)             # 0000018C
    sh      $zero, 0x01A0(s0)          # 000001A0
    addiu   a1, a1, %lo(func_8098B394) # a1 = 8098B394
    jal     func_80984CD0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B394:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0044($sp)            
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f4                   # $f4 = 55.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80984CDC              
    swc1    $f4, 0x003C($sp)           
    lw      t6, 0x0044($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t8, t7, 0x001F             # t8 = 00000000
    bne     t8, $zero, lbl_8098B448    
    lui     t9, %hi(var_8099BE42)      # t9 = 809A0000
    lb      t9, %lo(var_8099BE42)(t9)  
    slti    $at, t9, 0x0010            
    beq     $at, $zero, lbl_8098B448   
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    jal     func_80026D90              
    nop
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    mfc1    t1, $f6                    
    jal     func_80026D90              
    sh      t1, 0x01D8(s0)             # 000001D8
    trunc.w.s $f8, $f0                   
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    mfc1    t3, $f8                    
    jal     func_80026D90              
    sh      t3, 0x01DE(s0)             # 000001DE
    trunc.w.s $f10, $f0                  
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      t0, 0x00B4(s0)             # 000000B4
    mfc1    t7, $f10                   
    nop
    addu    t9, t7, t8                 
    subu    t1, t9, t0                 
    beq     $zero, $zero, lbl_8098B468 
    sh      t1, 0x01E4(s0)             # 000001E4
lbl_8098B448:
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
lbl_8098B468:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    jal     func_80026D90              
    nop
    trunc.w.s $f18, $f0                  
    lh      a1, 0x01D8(s0)             # 000001D8
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    mfc1    a3, $f18                   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x01F4             # a3 = 000001F4
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    jal     func_80026D90              
    nop
    trunc.w.s $f4, $f0                   
    lh      a1, 0x01DE(s0)             # 000001DE
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    mfc1    a3, $f4                    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x01F4             # a3 = 000001F4
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    jal     func_80026D90              
    nop
    trunc.w.s $f6, $f0                   
    lh      a1, 0x01E4(s0)             # 000001E4
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    mfc1    a3, $f6                    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x01F4             # a3 = 000001F4
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lui     a1, %hi(var_8099BE42)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099BE42)  # a1 = 8099BE42
    lb      v0, 0x0000(a1)             # 8099BE42
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_8098B5A0      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v0, $at, lbl_8098B590      
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beql    v0, $at, lbl_8098B5A4      
    lbu     a0, 0x0185(s0)             # 00000185
    beq     $zero, $zero, lbl_8098B8AC 
    lw      $ra, 0x0034($sp)           
lbl_8098B590:
    lui     $at, 0xC25C                # $at = C25C0000
    mtc1    $at, $f8                   # $f8 = -55.00
    nop
    swc1    $f8, 0x003C($sp)           
lbl_8098B5A0:
    lbu     a0, 0x0185(s0)             # 00000185
lbl_8098B5A4:
    bnel    a0, $zero, lbl_8098B870    
    lh      t9, 0x018C(s0)             # 0000018C
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_8098B5CC      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      v0, 0x018C(s0)             # 0000018C
    slti    $at, v0, 0x0010            
    bne     $at, $zero, lbl_8098B5F0   
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8098B5CC:
    bnel    v1, $at, lbl_8098B5E4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lh      v0, 0x018C(s0)             # 0000018C
    slti    $at, v0, 0x0018            
    bne     $at, $zero, lbl_8098B5F0   
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_8098B5E4:
    bne     v1, $at, lbl_8098B794      
    addiu   t5, a0, 0x0001             # t5 = 00000001
    lh      v0, 0x018C(s0)             # 0000018C
lbl_8098B5F0:
    andi    t5, v0, 0x0001             # t5 = 00000000
    bnel    t5, $zero, lbl_8098B74C    
    addiu   t0, v0, 0x0001             # t0 = 00000001
    bltz    v0, lbl_8098B748           
    slti    $at, v0, 0x0008            
    beq     $at, $zero, lbl_8098B674   
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    nop
    trunc.w.s $f10, $f0                  
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_80991DE0)     # $at = 80990000
    lwc1    $f16, %lo(var_80991DE0)($at) 
    mfc1    a3, $f10                   
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x000D             # a3 = 0000000D
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t8, 0x0020($sp)            
    sw      t7, 0x0018($sp)            
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f2, 0x0010($sp)           
    swc1    $f2, 0x0014($sp)           
    jal     func_80985400              
    swc1    $f16, 0x001C($sp)          
    beq     $zero, $zero, lbl_8098B6F0 
    lui     $at, 0x4170                # $at = 41700000
lbl_8098B674:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    nop
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f6                   # $f6 = 7.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0018($sp)            
    swc1    $f6, 0x0014($sp)           
    swc1    $f4, 0x0010($sp)           
    lh      t1, 0x018C(s0)             # 0000018C
    trunc.w.s $f18, $f0                  
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sra     t2, t1,  3                 
    addiu   t3, t2, 0x0001             # t3 = 00000001
    mtc1    t3, $f8                    # $f8 = 0.00
    mfc1    a3, $f18                   
    sw      t4, 0x0020($sp)            
    cvt.s.w $f10, $f8                  
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    addiu   a3, a3, 0x0006             # a3 = 00000006
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    swc1    $f10, 0x001C($sp)          
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80985400              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x4170                # $at = 41700000
lbl_8098B6F0:
    mtc1    $at, $f16                  # $f16 = 15.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sw      t5, 0x0018($sp)            
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    lh      t6, 0x018C(s0)             # 0000018C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0020($sp)            
    sra     t7, t6,  3                 
    addiu   t8, t7, 0x0001             # t8 = 00000001
    mtc1    t8, $f4                    # $f4 = 0.00
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4                   
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_8098527C              
    swc1    $f6, 0x001C($sp)           
    lui     a1, %hi(var_8099BE42)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099BE42)  # a1 = 8099BE42
    lh      v0, 0x018C(s0)             # 0000018C
lbl_8098B748:
    addiu   t0, v0, 0x0001             # t0 = 00000001
lbl_8098B74C:
    sh      t0, 0x018C(s0)             # 0000018C
    lh      t1, 0x018C(s0)             # 0000018C
    slti    $at, t1, 0x0020            
    bnel    $at, $zero, lbl_8098B7B8   
    lh      t1, 0x001C(s0)             # 0000001C
    lbu     t2, 0x0185(s0)             # 00000185
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x0187(s0)             # 00000187
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0185(s0)             # 00000185
    jal     func_809855D0              
    lw      a0, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3945          # a1 = 00003945
    lui     a1, %hi(var_8099BE42)      # a1 = 809A0000
    beq     $zero, $zero, lbl_8098B7B4 
    addiu   a1, a1, %lo(var_8099BE42)  # a1 = 8099BE42
lbl_8098B794:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sb      t5, 0x0185(s0)             # 00000185
    sb      t6, 0x0187(s0)             # 00000187
    sh      t7, 0x018C(s0)             # 0000018C
    lb      t8, 0x0000(a1)             # 8099BE42
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(a1)             # 8099BE42
lbl_8098B7B4:
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8098B7B8:
    lb      t0, 0x0000(a1)             # 8099BE42
    addiu   t2, t1, 0x000D             # t2 = 0000000D
    bnel    t0, t2, lbl_8098B8AC       
    lw      $ra, 0x0034($sp)           
    lwc1    $f8, 0x01B0(s0)            # 000001B0
    lui     v0, %hi(var_8099BE58)      # v0 = 809A0000
    addiu   v0, v0, %lo(var_8099BE58)  # v0 = 8099BE58
    swc1    $f8, 0x0000(v0)            # 8099BE58
    lwc1    $f10, 0x01B4(s0)           # 000001B4
    lui     $at, %hi(var_8099BE4C)     # $at = 809A0000
    swc1    $f10, 0x0004(v0)           # 8099BE5C
    lwc1    $f16, 0x0004(v0)           # 8099BE5C
    swc1    $f16, %lo(var_8099BE4C)($at) 
    lwc1    $f18, 0x01B8(s0)           # 000001B8
    swc1    $f18, 0x0008(v0)           # 8099BE60
    lh      t4, 0x01A0(s0)             # 000001A0
    lh      t3, 0x00B6(s0)             # 000000B6
    addu    a0, t3, t4                 
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x003C($sp)           
    lwc1    $f8, 0x01B0(s0)            # 000001B0
    lui     $at, %hi(var_8099BE48)     # $at = 809A0000
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    swc1    $f10, %lo(var_8099BE48)($at) 
    lh      t6, 0x01A0(s0)             # 000001A0
    lh      t5, 0x00B6(s0)             # 000000B6
    addu    a0, t5, t6                 
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f16, 0x003C($sp)          
    lwc1    $f4, 0x01B8(s0)            # 000001B8
    lui     $at, %hi(var_8099BE50)     # $at = 809A0000
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, %lo(var_8099BE50)($at) 
    lh      t7, 0x01A0(s0)             # 000001A0
    addiu   t8, t7, 0x015E             # t8 = 0000015E
    beq     $zero, $zero, lbl_8098B8A8 
    sh      t8, 0x01A0(s0)             # 000001A0
    lh      t9, 0x018C(s0)             # 0000018C
lbl_8098B870:
    addiu   t1, t9, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x018C(s0)             # 0000018C
    lh      t0, 0x018C(s0)             # 0000018C
    bnel    t0, $zero, lbl_8098B8AC    
    lw      $ra, 0x0034($sp)           
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t2, $at, lbl_8098B8A0      
    nop
    lb      t3, 0x0000(a1)             # 00000000
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0000(a1)             # 00000000
lbl_8098B8A0:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8098B8A8:
    lw      $ra, 0x0034($sp)           
lbl_8098B8AC:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B8BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7918             # a0 = 06017918
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    cvt.s.w $f0, $f4                   
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f0, $f2              
    mfc1    a2, $f2                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7918             # a1 = 06017918
    mfc1    a3, $f6                    
    swc1    $f0, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_8098B944)     # a1 = 80990000
    addiu   a1, a1, %lo(func_8098B944) # a1 = 8098B944
    jal     func_80984CD0              
    sb      $zero, 0x0185(a0)          # 00000185
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098B944:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x007C($sp)            
    lw      t6, 0x007C($sp)            
    addiu   t7, $sp, 0x0054            # t7 = FFFFFFDC
    lui     $at, 0x4120                # $at = 41200000
    lw      v0, 0x1C44(t6)             # 00001C44
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t9, 0x0024(v0)             # 00000024
    sw      t9, 0x0000(t7)             # FFFFFFDC
    lw      t8, 0x0028(v0)             # 00000028
    sw      t8, 0x0004(t7)             # FFFFFFE0
    lw      t9, 0x002C(v0)             # 0000002C
    sw      t9, 0x0008(t7)             # FFFFFFE4
    lwc1    $f4, 0x0058($sp)           
    sw      v0, 0x0074($sp)            
    add.s   $f8, $f4, $f6              
    jal     func_8008C9C0              
    swc1    $f8, 0x0058($sp)           
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t1, %hi(var_8099BE41)      # t1 = 809A0000
    lbu     t1, %lo(var_8099BE41)(t1)  
    or      a0, s0, $zero              # a0 = 00000000
    lui     t2, %hi(var_8099BE40)      # t2 = 809A0000
    slti    $at, t1, 0x0012            
    bne     $at, $zero, lbl_8098B9D0   
    nop
    jal     func_8098B2C0              
    lw      a1, 0x007C($sp)            
    beq     $zero, $zero, lbl_8098C08C 
    lw      $ra, 0x0034($sp)           
lbl_8098B9D0:
    lbu     t2, %lo(var_8099BE40)(t2)  
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x0058($sp)          
    andi    t3, t2, 0x007E             # t3 = 00000000
    beq     t3, $zero, lbl_8098B9F8    
    lui     $at, 0x4039                # $at = 40390000
    jal     func_8098B0A4              
    lw      a1, 0x007C($sp)            
    beq     $zero, $zero, lbl_8098C08C 
    lw      $ra, 0x0034($sp)           
lbl_8098B9F8:
    mtc1    $at, $f19                  # $f19 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    cvt.d.s $f16, $f10                 
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFDC
    add.d   $f4, $f16, $f18            
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    cvt.s.d $f6, $f4                   
    jal     func_80063F00              
    swc1    $f6, 0x0058($sp)           
    lh      t4, 0x00B6(s0)             # 000000B6
    sll     t0, v0, 16                 
    sra     t0, t0, 16                 
    subu    a2, v0, t4                 
    sll     a0, a2, 16                 
    sra     a0, a0, 16                 
    bltz    a0, lbl_8098BA44           
    subu    v1, $zero, a0              
    beq     $zero, $zero, lbl_8098BA44 
    or      v1, a0, $zero              # v1 = 00000000
lbl_8098BA44:
    slti    $at, v1, 0x4651            
    bne     $at, $zero, lbl_8098BA5C   
    lui     t5, %hi(var_8099BE40)      # t5 = 809A0000
    lbu     v1, 0x0185(s0)             # 00000185
    beq     v1, $zero, lbl_8098BD14    
    nop
lbl_8098BA5C:
    lbu     t5, %lo(var_8099BE40)(t5)  
    lbu     v1, 0x0185(s0)             # 00000185
    lw      t7, 0x0074($sp)            
    andi    t6, t5, 0x0080             # t6 = 00000000
    bne     t6, $zero, lbl_8098BD14    
    nop
    lw      t8, 0x066C(t7)             # 0000066C
    sll     t9, t8,  5                 
    bltz    t9, lbl_8098BD14           
    nop
    bne     v1, $zero, lbl_8098BD0C    
    sll     a1, a2, 16                 
    sra     a1, a1, 16                 
    bltz    a1, lbl_8098BAA0           
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    beq     $zero, $zero, lbl_8098BAA4 
    or      v1, a1, $zero              # v1 = 00000000
lbl_8098BAA0:
    subu    v1, $zero, a1              
lbl_8098BAA4:
    slti    $at, v1, 0x1771            
    bne     $at, $zero, lbl_8098BAC4   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    blezl   a1, lbl_8098BAC4           
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
    beq     $zero, $zero, lbl_8098BAC4 
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
lbl_8098BAC4:
    addiu   a3, $zero, 0x0DAC          # a3 = 00000DAC
    sw      $zero, 0x0010($sp)         
    sh      a1, 0x0068($sp)            
    jal     func_80064508              
    sh      t0, 0x006C($sp)            
    lh      a1, 0x0068($sp)            
    bltz    v0, lbl_8098BAEC           
    lh      t0, 0x006C($sp)            
    beq     $zero, $zero, lbl_8098BAF4 
    sw      v0, 0x0060($sp)            
lbl_8098BAEC:
    subu    t1, $zero, v0              
    sw      t1, 0x0060($sp)            
lbl_8098BAF4:
    subu    a1, t0, a1                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    bltz    a1, lbl_8098BB10           
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    beq     $zero, $zero, lbl_8098BB14 
    or      v1, a1, $zero              # v1 = 00000000
lbl_8098BB10:
    subu    v1, $zero, a1              
lbl_8098BB14:
    slti    $at, v1, 0x1771            
    bne     $at, $zero, lbl_8098BB34   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    blezl   a1, lbl_8098BB34           
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
    beq     $zero, $zero, lbl_8098BB34 
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
lbl_8098BB34:
    addiu   a3, $zero, 0x0DAC          # a3 = 00000DAC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098BB50           
    lw      t2, 0x0060($sp)            
    beq     $zero, $zero, lbl_8098BB54 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8098BB50:
    subu    v1, $zero, v0              
lbl_8098BB54:
    addu    t3, t2, v1                 
    addiu   a0, s0, 0x01BC             # a0 = 000001BC
    sw      t3, 0x0060($sp)            
    sw      a0, 0x0040($sp)            
    jal     func_80063F00              
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    addiu   a1, v0, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098BB9C           
    lw      t4, 0x0060($sp)            
    beq     $zero, $zero, lbl_8098BBA0 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8098BB9C:
    subu    v1, $zero, v0              
lbl_8098BBA0:
    addu    t5, t4, v1                 
    sw      t5, 0x0060($sp)            
    lw      v0, 0x015C(s0)             # 0000015C
    lh      t7, 0x00B4(s0)             # 000000B4
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFDC
    lh      t6, 0x001E(v0)             # 0000001E
    lh      t9, 0x0006(v0)             # 00000006
    lh      t2, 0x000C(v0)             # 0000000C
    addu    t8, t6, t7                 
    lh      t4, 0x0012(v0)             # 00000012
    lh      t6, 0x0018(v0)             # 00000018
    addu    t1, t8, t9                 
    addu    t3, t1, t2                 
    addu    t5, t3, t4                 
    addu    t7, t5, t6                 
    sh      t7, 0x006A($sp)            
    jal     func_80063F34              
    addiu   a1, s0, 0x01B0             # a1 = 000001B0
    lh      t8, 0x006A($sp)            
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    a1, v0, t8                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a3, $zero, 0x1B58          # a3 = 00001B58
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098BC1C           
    lw      t9, 0x0060($sp)            
    beq     $zero, $zero, lbl_8098BC20 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8098BC1C:
    subu    v1, $zero, v0              
lbl_8098BC20:
    addu    t1, t9, v1                 
    sw      t1, 0x0060($sp)            
    lw      a0, 0x0040($sp)            
    jal     func_80063F34              
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    subu    a1, $zero, v0              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1B58          # a3 = 00001B58
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098BC64           
    lui     $at, 0x3F80                # $at = 3F800000
    beq     $zero, $zero, lbl_8098BC68 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8098BC64:
    subu    v1, $zero, v0              
lbl_8098BC68:
    lw      t2, 0x0060($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    addu    t3, t2, v1                 
    sw      t3, 0x0060($sp)            
    swc1    $f0, 0x0158(s0)            # 00000158
    mfc1    a1, $f0                    
    mfc1    a2, $f2                    
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t4, 0x0060($sp)            
    c.eq.s  $f0, $f8                   
    sltiu   $at, t4, 0x0258            
    bc1f    lbl_8098BD0C               
    nop
    beq     $at, $zero, lbl_8098BD0C   
    nop
    lbu     t5, 0x0185(s0)             # 00000185
    sh      $zero, 0x018C(s0)          # 0000018C
    addiu   t7, $sp, 0x0054            # t7 = FFFFFFDC
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0185(s0)             # 00000185
    lw      t9, 0x0000(t7)             # FFFFFFDC
    sw      t9, 0x01C8(s0)             # 000001C8
    lw      t8, 0x0004(t7)             # FFFFFFE0
    sw      t8, 0x01CC(s0)             # 000001CC
    lw      t9, 0x0008(t7)             # FFFFFFE4
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x01D0(s0)             # 000001D0
    lui     $at, %hi(var_80991DE4)     # $at = 80990000
    lwc1    $f10, %lo(var_80991DE4)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8098BD0C               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
lbl_8098BD0C:
    beq     $zero, $zero, lbl_8098BE8C 
    lbu     v1, 0x0185(s0)             # 00000185
lbl_8098BD14:
    bnel    v1, $zero, lbl_8098BD2C    
    lbu     t2, 0x0338(s0)             # 00000338
    lh      t1, 0x018C(s0)             # 0000018C
    bgezl   t1, lbl_8098BDD4           
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    lbu     t2, 0x0338(s0)             # 00000338
lbl_8098BD2C:
    lh      v1, 0x018C(s0)             # 0000018C
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_8098BD70    
    nop
    blez    v1, lbl_8098BD80           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3946          # a1 = 00003946
    jal     func_80985584              
    lw      a0, 0x007C($sp)            
    lw      t6, 0x0118(s0)             # 00000118
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sh      t4, 0x018C(s0)             # 0000018C
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sb      t5, 0x0184(t6)             # 00000184
    beq     $zero, $zero, lbl_8098BD80 
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098BD70:
    blez    v1, lbl_8098BD80           
    nop
    sh      $zero, 0x018C(s0)          # 0000018C
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098BD80:
    bgez    v1, lbl_8098BDD0           
    lw      t7, 0x0074($sp)            
    lw      t8, 0x066C(t7)             # 0000066C
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    sll     t9, t8,  5                 
    bgez    t9, lbl_8098BDD0           
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)            
    sw      t1, 0x0018($sp)            
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f4, 0x001C($sp)           
lbl_8098BDD0:
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
lbl_8098BDD4:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      t4, 0x00B4(s0)             # 000000B4
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    subu    a1, t3, t4                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    lw      t5, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x002E(t5)             # 0000002E
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x0EA6          # a3 = 00000EA6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f2                    
    mfc1    a2, $f2                    
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    sb      $zero, 0x0185(s0)          # 00000185
    andi    v1, $zero, 0x00FF          # v1 = 00000000
lbl_8098BE8C:
    beq     v1, $zero, lbl_8098C088    
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_8098C08C      
    lw      $ra, 0x0034($sp)           
    lh      v1, 0x018C(s0)             # 0000018C
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, v1, 0x0010            
    bne     $at, $zero, lbl_8098BFC0   
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bne     v1, $at, lbl_8098BEC8      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3942          # a1 = 00003942
lbl_8098BEC8:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f8, 0x001C($sp)           
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0020($sp)            
    sw      t8, 0x0018($sp)            
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f10, 0x001C($sp)          
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)            
    sw      t1, 0x0018($sp)            
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x006E          # a3 = 0000006E
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
    lw      a0, 0x007C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0328             # a2 = 00000328
    addu    a1, a0, $at                
    sw      a1, 0x0040($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a2, 0x003C($sp)            
    lw      a1, 0x0040($sp)            
    lw      a2, 0x003C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a0, 0x007C($sp)            
    beq     $zero, $zero, lbl_8098C06C 
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098BFC0:
    sra     t4, v1,  1                 
    addiu   t5, t4, 0x0001             # t5 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    cvt.s.w $f6, $f4                   
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0020($sp)            
    sw      t3, 0x0018($sp)            
    swc1    $f6, 0x001C($sp)           
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    swc1    $f0, 0x0010($sp)           
    jal     func_8098527C              
    swc1    $f18, 0x0014($sp)          
    lh      v1, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    v1, $at, lbl_8098C020      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jal     func_80985584              
    lw      a0, 0x007C($sp)            
    lh      v1, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8098C020:
    bne     v1, $at, lbl_8098C06C      
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFD0
    lw      t8, 0x01BC(s0)             # 000001BC
    lui     a1, %hi(var_809934C0)      # a1 = 80990000
    addiu   t9, s0, 0x01E6             # t9 = 000001E6
    sw      t8, 0x0000(a3)             # FFFFFFD0
    lw      t7, 0x01C0(s0)             # 000001C0
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    addiu   a1, a1, %lo(var_809934C0)  # a1 = 809934C0
    sw      t7, 0x0004(a3)             # FFFFFFD4
    lw      t8, 0x01C4(s0)             # 000001C4
    or      a2, s0, $zero              # a2 = 00000000
    sw      t8, 0x0008(a3)             # FFFFFFD8
    sw      $zero, 0x0018($sp)         
    sw      t1, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    jal     func_80991438              
    lw      a0, 0x007C($sp)            
    lh      v1, 0x018C(s0)             # 0000018C
lbl_8098C06C:
    addiu   t2, v1, 0x0001             # t2 = 00000001
    sh      t2, 0x018C(s0)             # 0000018C
    lh      t3, 0x018C(s0)             # 0000018C
    slti    $at, t3, 0x0018            
    bnel    $at, $zero, lbl_8098C08C   
    lw      $ra, 0x0034($sp)           
    sb      $zero, 0x0185(s0)          # 00000185
lbl_8098C088:
    lw      $ra, 0x0034($sp)           
lbl_8098C08C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C09C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x7790             # a0 = 06017790
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC0C0                # $at = C0C00000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = -6.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x7790             # a1 = 06017790
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    lui     a1, %hi(func_8098C11C)     # a1 = 80990000
    addiu   a1, a1, %lo(func_8098C11C) # a1 = 8098C11C
    jal     func_80984CD0              
    sb      $zero, 0x0185(a0)          # 00000185
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C11C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80984CDC              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x01D6             # a0 = 000001D6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01DA             # a0 = 000001DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      a1, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01E2             # a0 = 000001E2
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lw      t6, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x002E(t6)             # 0000002E
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    addiu   a1, a1, 0xEC78             # a1 = FFFFEC78
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lw      t7, 0x0118(s0)             # 00000118
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, 0x0068(t7)            # 00000068
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_8098C218               
    lw      $ra, 0x0024($sp)           
    jal     func_8098A5DC              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_8098C218:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C228:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0024             # a0 = 06000024
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0024             # a1 = 06000024
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0190(s0)            # 00000190
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f10                  # $f10 = 360.00
    lh      t8, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f18                # $f18 = 0.00
    mul.s   $f16, $f0, $f10            
    sll     t9, t8,  2                 
    lui     t0, %hi(var_80991864)      # t0 = 80990000
    subu    t9, t9, t8                 
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    sll     t9, t9,  2                 
    addiu   t0, t0, %lo(var_80991864)  # t0 = 80991864
    swc1    $f16, 0x0194(s0)           # 00000194
    sh      t6, 0x018C(s0)             # 0000018C
    sh      t7, 0x01E0(s0)             # 000001E0
    addu    v0, t9, t0                 
    swc1    $f18, 0x0198(s0)           # 00000198
    lwc1    $f4, 0x0078(v0)            # 00000078
    lwc1    $f6, 0x0008(s0)            # 00000008
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lw      t2, 0x0004(s0)             # 00000004
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0010(s0)            # 00000010
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t1, $zero, 0x002D          # t1 = 0000002D
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x007C(v0)           # 0000007C
    lui     a1, %hi(func_8098C338)     # a1 = 80990000
    and     t3, t2, $at                
    add.s   $f18, $f10, $f16           
    addiu   a1, a1, %lo(func_8098C338) # a1 = 8098C338
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0080(v0)            # 00000080
    sw      t1, 0x0188(s0)             # 00000188
    sw      t3, 0x0004(s0)             # 00000004
    add.s   $f8, $f4, $f6              
    jal     func_80984CD0              
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C338:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0064($sp)            
    lw      t8, 0x0008(s0)             # 00000008
    addiu   t6, $sp, 0x0054            # t6 = FFFFFFF4
    lui     $at, 0x4220                # $at = 42200000
    sw      t8, 0x0000(t6)             # FFFFFFF4
    lw      t7, 0x000C(s0)             # 0000000C
    mtc1    $at, $f4                   # $f4 = 40.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      t7, 0x0004(t6)             # FFFFFFF8
    lw      t8, 0x0010(s0)             # 00000010
    lui     $at, 0x41C8                # $at = 41C80000
    sw      t8, 0x0008(t6)             # FFFFFFFC
    swc1    $f4, 0x0050($sp)           
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x0058($sp)          
    c.le.s  $f8, $f6                   
    nop
    bc1f    lbl_8098C3A4               
    nop
    mtc1    $at, $f16                  # $f16 = 25.00
    nop
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0058($sp)          
lbl_8098C3A4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f4, 0x0194(s0)            # 00000194
    lui     t9, %hi(var_8099BE42)      # t9 = 809A0000
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0194(s0)           # 00000194
    lb      t9, %lo(var_8099BE42)(t9)  
    addiu   t0, t9, 0xFFFE             # t0 = 8099FFFE
    sltiu   $at, t0, 0x000C            
    beq     $at, $zero, lbl_8098C7E0   
    sll     t0, t0,  2                 
    lui     $at, %hi(var_80991DE8)     # $at = 80990000
    addu    $at, $at, t0               
    lw      t0, %lo(var_80991DE8)($at) 
    jr      t0                         
    nop
var_8098C3F0:
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      a0, 0x0064($sp)            
    bne     t1, $at, lbl_8098C46C      
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, %hi(var_80991E18)     # $at = 80990000
    lwc1    $f16, %lo(var_80991E18)($at) 
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4270                 # a1 = 42700000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.eq.s  $f0, $f18                  
    nop
    bc1f    lbl_8098C46C               
    nop
    lw      t2, 0x0188(s0)             # 00000188
    lui     t5, %hi(var_8099BE42)      # t5 = 809A0000
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    bne     t3, $zero, lbl_8098C46C    
    sw      t3, 0x0188(s0)             # 00000188
    lb      t5, %lo(var_8099BE42)(t5)  
    lui     $at, %hi(var_8099BE42)     # $at = 809A0000
    addiu   t6, t5, 0x0001             # t6 = 809A0001
    sb      t6, %lo(var_8099BE42)($at) 
lbl_8098C46C:
    beq     $zero, $zero, lbl_8098C7E0 
    sh      $zero, 0x00B4(s0)          # 000000B4
var_8098C474:
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a0, s0, 0x0028             # a0 = 00000028
    beq     v1, $at, lbl_8098C500      
    lui     a1, 0x4270                 # a1 = 42700000
    sll     t7, v1,  2                 
    subu    t7, t7, v1                 
    sll     t7, t7,  2                 
    lui     $at, %hi(var_809918E0)     # $at = 80990000
    addu    $at, $at, t7               
    lwc1    $f6, %lo(var_809918E0)($at) 
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, %hi(var_80991E1C)     # $at = 80990000
    lwc1    $f10, %lo(var_80991E1C)($at) 
    add.s   $f8, $f6, $f4              
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mfc1    a1, $f8                    
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lwc1    $f16, 0x0194(s0)           # 00000194
    mul.s   $f12, $f16, $f18           
    jal     func_800A45FC              
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f8, $f0, $f4              
    add.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_8098C51C 
    swc1    $f10, 0x0024(s0)           # 00000024
lbl_8098C500:
    lui     $at, %hi(var_80991E20)     # $at = 80990000
    lwc1    $f16, %lo(var_80991E20)($at) 
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
lbl_8098C51C:
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    swc1    $f0, 0x0044($sp)           
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    lwc1    $f4, 0x0044($sp)           
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f6, $f18, $f4             
    mul.s   $f8, $f0, $f6              
    add.s   $f16, $f10, $f8            
    beq     $zero, $zero, lbl_8098C7E0 
    swc1    $f16, 0x0028(s0)           # 00000028
var_8098C554:
    lh      t8, 0x018C(s0)             # 0000018C
    slti    $at, t8, 0x0010            
    bnel    $at, $zero, lbl_8098C71C   
    lw      t3, 0x0188(s0)             # 00000188
    lw      t9, 0x0188(s0)             # 00000188
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0054($sp)            
    bgez    t9, lbl_8098C718           
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a3, 0x40D0                 # a3 = 40D00000
    sw      a0, 0x003C($sp)            
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0058($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D0                 # a3 = 40D00000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x005C($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D0                 # a3 = 40D00000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFF4
    jal     func_80063E18              
    lw      a1, 0x003C($sp)            
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    swc1    $f0, 0x0050($sp)           
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    c.le.s  $f0, $f10                  
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    bc1fl   lbl_8098C71C               
    lw      t3, 0x0188(s0)             # 00000188
    lh      a1, 0x0014(s0)             # 00000014
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    bltz    v0, lbl_8098C614           
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_8098C620 
    sra     v1, v1, 16                 
lbl_8098C614:
    subu    v1, $zero, v0              
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_8098C620:
    lh      a1, 0x0016(s0)             # 00000016
    sh      v1, 0x004E($sp)            
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    bltz    v0, lbl_8098C648           
    lh      v1, 0x004E($sp)            
    beq     $zero, $zero, lbl_8098C64C 
    or      a0, v0, $zero              # a0 = 00000000
lbl_8098C648:
    subu    a0, $zero, v0              
lbl_8098C64C:
    lwc1    $f8, 0x0050($sp)           
    mtc1    $zero, $f16                # $f16 = 0.00
    addu    v1, v1, a0                 
    sll     v1, v1, 16                 
    c.eq.s  $f8, $f16                  
    sra     v1, v1, 16                 
    bc1fl   lbl_8098C71C               
    lw      t3, 0x0188(s0)             # 00000188
    bnel    v1, $zero, lbl_8098C71C    
    lw      t3, 0x0188(s0)             # 00000188
    lbu     t0, 0x0187(s0)             # 00000187
    bnel    t0, $zero, lbl_8098C6FC    
    lw      t0, 0x0188(s0)             # 00000188
    lh      v1, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_80991A50)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A50)  # a0 = 80991A50
    slti    $at, v1, 0x000B            
    bne     $at, $zero, lbl_8098C6D4   
    addu    v0, a0, v1                 
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v1, $at, lbl_8098C6BC      
    lui     a0, %hi(var_80991A50)      # a0 = 80990000
    lui     a0, %hi(var_80991A50)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A50)  # a0 = 80991A50
    lbu     t1, 0x0000(a0)             # 80991A50
    addiu   t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_8098C6E0 
    sb      t2, 0x0000(a0)             # 80991A50
lbl_8098C6BC:
    addiu   a0, a0, %lo(var_80991A50)  # a0 = 809934A0
    addu    v0, a0, v1                 
    lbu     t3, -0x0006(v0)            # FFFFFFFA
    addiu   t4, t3, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_8098C6E0 
    sb      t4, -0x0006(v0)            # FFFFFFFA
lbl_8098C6D4:
    lbu     t5, -0x0005(v0)            # FFFFFFFB
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, -0x0005(v0)            # FFFFFFFB
lbl_8098C6E0:
    lbu     t8, 0x0187(s0)             # 00000187
    addiu   t7, $zero, 0xFFE2          # t7 = FFFFFFE2
    sw      t7, 0x0188(s0)             # 00000188
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_8098C87C 
    sb      t9, 0x0187(s0)             # 00000187
    lw      t0, 0x0188(s0)             # 00000188
lbl_8098C6FC:
    addiu   t1, t0, 0x0001             # t1 = 00000001
    bne     t1, $zero, lbl_8098C87C    
    sw      t1, 0x0188(s0)             # 00000188
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098C880 
    lw      $ra, 0x0034($sp)           
lbl_8098C718:
    lw      t3, 0x0188(s0)             # 00000188
lbl_8098C71C:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, s0, 0x0030             # a2 = 00000030
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    bne     t4, $zero, lbl_8098C738    
    sw      t4, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_8098C7E0 
    sh      $zero, 0x018C(s0)          # 0000018C
lbl_8098C738:
    lw      a0, 0x0118(s0)             # 00000118
    sw      a1, 0x003C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800285B0              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lw      a0, 0x0118(s0)             # 00000118
    lw      a1, 0x003C($sp)            
    jal     func_80063E18              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    swc1    $f0, 0x0190(s0)            # 00000190
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f4, 0x0050($sp)           
    lui     $at, 0x4170                # $at = 41700000
    lw      a0, 0x0064($sp)            
    c.lt.s  $f18, $f4                  
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    bc1f    lbl_8098C7E0               
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    swc1    $f6, 0x0010($sp)           
    swc1    $f8, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f10, 0x0014($sp)          
    beq     $zero, $zero, lbl_8098C7E4 
    lw      a0, 0x0064($sp)            
var_8098C7C0:
    lw      t8, 0x0188(s0)             # 00000188
    addiu   t9, t8, 0x0001             # t9 = 00000001
    bne     t9, $zero, lbl_8098C87C    
    sw      t9, 0x0188(s0)             # 00000188
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098C880 
    lw      $ra, 0x0034($sp)           
lbl_8098C7E0:
    lw      a0, 0x0064($sp)            
lbl_8098C7E4:
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t3, %hi(var_8099BE42)      # t3 = 809A0000
    addu    t1, t1, a0                 
    lw      t1, 0x1DE4(t1)             # 00011DE4
    andi    t2, t1, 0x0003             # t2 = 00000000
    bne     t2, $zero, lbl_8098C850    
    nop
    lb      t3, %lo(var_8099BE42)(t3)  
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    slti    $at, t3, 0x0009            
    beq     $at, $zero, lbl_8098C850   
    addiu   a3, $zero, 0x0046          # a3 = 00000046
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0020($sp)            
    sw      t4, 0x0018($sp)            
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f4, 0x001C($sp)           
lbl_8098C850:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991E24)     # $at = 80990000
    lwc1    $f6, %lo(var_80991E24)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8098C880               
    lw      $ra, 0x0034($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
lbl_8098C87C:
    lw      $ra, 0x0034($sp)           
lbl_8098C880:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C890:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0024             # a0 = 06000024
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0024             # a1 = 06000024
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    lui     a1, %hi(func_8098C938)     # a1 = 80990000
    and     t9, t8, $at                
    sh      t6, 0x018C(s0)             # 0000018C
    sh      t7, 0x01E0(s0)             # 000001E0
    sw      t9, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_8098C938) # a1 = 8098C938
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0190(s0)            # 00000190
    jal     func_80984CD0              
    swc1    $f10, 0x0198(s0)           # 00000198
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8098C938:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x006C($sp)            
    lw      t6, 0x006C($sp)            
    addiu   t8, $sp, 0x0054            # t8 = FFFFFFEC
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0064($sp)            
    lw      t9, 0x0118(s0)             # 00000118
    lw      t1, 0x01C8(t9)             # 000001C8
    sw      t1, 0x0000(t8)             # FFFFFFEC
    lw      t0, 0x01CC(t9)             # 000001CC
    sw      t0, 0x0004(t8)             # FFFFFFF0
    lw      t1, 0x01D0(t9)             # 000001D0
    jal     func_800CDCCC              # Rand.Next() float
    sw      t1, 0x0008(t8)             # FFFFFFF4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0194(s0)            # 00000194
    lh      t2, 0x018C(s0)             # 0000018C
    mul.s   $f8, $f0, $f6              
    lui     $at, 0x0001                # $at = 00010000
    lui     t6, 0x0001                 # t6 = 00010000
    andi    t3, t2, 0x01FF             # t3 = 00000000
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0194(s0)           # 00000194
    lw      t4, 0x006C($sp)            
    sh      t3, 0x0052($sp)            
    addu    t5, t4, $at                
    sw      t5, 0x0044($sp)            
    addu    t6, t6, t4                 
    lw      t6, 0x1DE4(t6)             # 00011DE4
    andi    t7, t6, 0x007F             # t7 = 00000000
    bnel    t7, $zero, lbl_8098C9F8    
    lh      a1, 0x01E6(s0)             # 000001E6
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    nop
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f6, $f18                  
    mfc1    t1, $f6                    
    nop
    addiu   t2, t1, 0x0064             # t2 = 00000064
    sh      t2, 0x01E6(s0)             # 000001E6
    lh      a1, 0x01E6(s0)             # 000001E6
lbl_8098C9F8:
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01EA             # a0 = 000001EA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    lh      t3, 0x01E8(s0)             # 000001E8
    lh      t5, 0x01EA(s0)             # 000001EA
    lbu     v1, 0x0338(s0)             # 00000338
    addu    t4, t3, t5                 
    andi    t6, v1, 0x0002             # t6 = 00000000
    bne     t6, $zero, lbl_8098CA38    
    sh      t4, 0x01E8(s0)             # 000001E8
    lbu     t7, 0x02D8(s0)             # 000002D8
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_8098CAA8    
    lbu     v0, 0x02D9(s0)             # 000002D9
lbl_8098CA38:
    lw      t9, 0x0064($sp)            
    lw      t0, 0x032C(s0)             # 0000032C
    lui     $at, 0x4100                # $at = 41000000
    lw      a0, 0x006C($sp)            
    beql    t9, t0, lbl_8098CA60       
    mtc1    $at, $f0                   # $f0 = 8.00
    lw      t1, 0x02CC(s0)             # 000002CC
    bnel    t9, t1, lbl_8098CA94       
    lbu     t5, 0x02D8(s0)             # 000002D8
    mtc1    $at, $f0                   # $f0 = 8.00
lbl_8098CA60:
    lw      t2, 0x0118(s0)             # 00000118
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    lh      a3, 0x008A(t2)             # 0000008A
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0064($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    sw      $zero, 0x02CC(s0)          # 000002CC
    sw      $zero, 0x032C(s0)          # 0000032C
    lbu     v1, 0x0338(s0)             # 00000338
    lbu     t5, 0x02D8(s0)             # 000002D8
lbl_8098CA94:
    andi    t3, v1, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0338(s0)             # 00000338
    andi    t4, t5, 0xFFFD             # t4 = 00000000
    sb      t4, 0x02D8(s0)             # 000002D8
    lbu     v0, 0x02D9(s0)             # 000002D9
lbl_8098CAA8:
    addiu   a0, $zero, 0xFFFD          # a0 = FFFFFFFD
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8098CAFC    
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    and     t7, v0, a0                 
    sb      t7, 0x02D9(s0)             # 000002D9
    lh      t8, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    lh      t0, 0x0052($sp)            
    bne     t8, $at, lbl_8098CAFC      
    slti    $at, t0, 0x0080            
    bne     $at, $zero, lbl_8098CAFC   
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x01C4(v1)          # 000001C4
    lw      t9, 0x0064($sp)            
    lh      t1, 0x008A(v1)             # 0000008A
    addiu   a1, $zero, 0x1808          # a1 = 00001808
    sw      t9, 0x01BC(v1)             # 000001BC
    jal     func_80022FD0              
    sh      t1, 0x0032(v1)             # 00000032
lbl_8098CAFC:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0190(s0)            # 00000190
    lwc1    $f10, 0x0054($sp)          
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f0, $f4              
    add.s   $f16, $f8, $f10            
    jal     func_80063684              # coss?
    swc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0190(s0)           # 00000190
    lwc1    $f4, 0x005C($sp)           
    mtc1    $zero, $f10                # $f10 = 0.00
    mul.s   $f6, $f0, $f18             
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    add.s   $f18, $f0, $f0             
    lwc1    $f16, 0x0028(s0)           # 00000028
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFEC
    addiu   a1, s0, 0x0024             # a1 = 00000024
    add.s   $f6, $f16, $f18            
    jal     func_80063F34              
    swc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      v0, 0x0030(s0)             # 00000030
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a1, 0x4320                 # a1 = 43200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t2, 0x018C(s0)             # 0000018C
    addiu   t5, $zero, 0x0BB8          # t5 = 00000BB8
    addiu   t4, $zero, 0xF448          # t4 = FFFFF448
    andi    t3, t2, 0x0200             # t3 = 00000000
    bne     t3, $zero, lbl_8098CBCC    
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_8098CBD0 
    sh      t5, 0x019C(s0)             # 0000019C
lbl_8098CBCC:
    sh      t4, 0x019C(s0)             # 0000019C
lbl_8098CBD0:
    lh      t6, 0x0052($sp)            
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, t6, 0x0080            
    bne     $at, $zero, lbl_8098CC60   
    addiu   a3, s0, 0x02C8             # a3 = 000002C8
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f10                  # $f10 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0020($sp)            
    sw      t7, 0x0018($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    swc1    $f8, 0x0010($sp)           
    swc1    $f10, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
    lw      a0, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a3, s0, 0x02C8             # a3 = 000002C8
    addu    a1, a0, $at                
    sw      a1, 0x0040($sp)            
    or      a2, a3, $zero              # a2 = 000002C8
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a3, 0x003C($sp)            
    lui     $at, %hi(var_8099BEA6)     # $at = 809A0000
    lw      a1, 0x0040($sp)            
    lw      a3, 0x003C($sp)            
    beq     $zero, $zero, lbl_8098CC78 
    sb      $zero, %lo(var_8099BEA6)($at) 
lbl_8098CC60:
    lui     $at, %hi(var_8099BEA6)     # $at = 809A0000
    lw      a1, 0x006C($sp)            
    sb      t0, %lo(var_8099BEA6)($at) 
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a1, $at                
lbl_8098CC78:
    lw      a0, 0x006C($sp)            
    addiu   a2, s0, 0x0328             # a2 = 00000328
    sw      a1, 0x0040($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a3, 0x003C($sp)            
    lw      a1, 0x0040($sp)            
    lw      a2, 0x003C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a0, 0x006C($sp)            
    lw      t9, 0x0044($sp)            
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    lw      t1, 0x1DE4(t9)             # 00001DE4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    andi    t2, t1, 0x0003             # t2 = 00000000
    bne     t2, $zero, lbl_8098CCC8    
    nop
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_8098CCC8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991E28)     # $at = 80990000
    lwc1    $f18, %lo(var_80991E28)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_8098CCF8               
    lh      t3, 0x0032(s0)             # 00000032
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    lh      t3, 0x0032(s0)             # 00000032
lbl_8098CCF8:
    lh      t5, 0x019C(s0)             # 0000019C
    lui     t6, %hi(var_8099BE40)      # t6 = 809A0000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t4, t3, t5                 
    sh      t4, 0x0032(s0)             # 00000032
    lbu     t6, %lo(var_8099BE40)(t6)  
    andi    t7, t6, 0x007F             # t7 = 00000000
    beql    t7, $zero, lbl_8098CD28    
    lw      $ra, 0x0034($sp)           
    jal     func_8098D3F8              
    lw      a1, 0x006C($sp)            
    lw      $ra, 0x0034($sp)           
lbl_8098CD28:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra                        
    nop


func_8098CD38:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0024             # a0 = 06000024
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0024             # a1 = 06000024
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    lui     a1, %hi(func_8098CDE0)     # a1 = 80990000
    and     t9, t8, $at                
    sh      t6, 0x018C(s0)             # 0000018C
    sh      t7, 0x01E0(s0)             # 000001E0
    sw      t9, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_8098CDE0) # a1 = 8098CDE0
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0190(s0)            # 00000190
    jal     func_80984CD0              
    swc1    $f10, 0x0198(s0)           # 00000198
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8098CDE0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x006C($sp)            
    lw      t6, 0x006C($sp)            
    addiu   t8, $sp, 0x0054            # t8 = FFFFFFEC
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0064($sp)            
    lw      t9, 0x0118(s0)             # 00000118
    lw      t1, 0x01C8(t9)             # 000001C8
    sw      t1, 0x0000(t8)             # FFFFFFEC
    lw      t0, 0x01CC(t9)             # 000001CC
    sw      t0, 0x0004(t8)             # FFFFFFF0
    lw      t1, 0x01D0(t9)             # 000001D0
    jal     func_800CDCCC              # Rand.Next() float
    sw      t1, 0x0008(t8)             # FFFFFFF4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0194(s0)            # 00000194
    lh      t2, 0x018C(s0)             # 0000018C
    mul.s   $f8, $f0, $f6              
    lui     $at, 0x0001                # $at = 00010000
    lui     t6, 0x0001                 # t6 = 00010000
    andi    t3, t2, 0x01FF             # t3 = 00000000
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0194(s0)           # 00000194
    lw      t4, 0x006C($sp)            
    sh      t3, 0x0052($sp)            
    addu    t5, t4, $at                
    sw      t5, 0x0040($sp)            
    addu    t6, t6, t4                 
    lw      t6, 0x1DE4(t6)             # 00011DE4
    andi    t7, t6, 0x007F             # t7 = 00000000
    bne     t7, $zero, lbl_8098CE9C    
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    nop
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f6, $f18                  
    mfc1    t1, $f6                    
    nop
    addiu   t2, t1, 0x0064             # t2 = 00000064
    sh      t2, 0x01E6(s0)             # 000001E6
lbl_8098CE9C:
    lui     t3, %hi(var_8099BE41)      # t3 = 809A0000
    lbu     t3, %lo(var_8099BE41)(t3)  
    addiu   a0, s0, 0x01EA             # a0 = 000001EA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     t5, t3,  3                 
    addu    t5, t5, t3                 
    sll     t5, t5,  2                 
    subu    t5, t5, t3                 
    sll     t5, t5,  1                 
    addiu   t4, t5, 0xFEE8             # t4 = FFFFFEE8
    sh      t4, 0x0050($sp)            
    lh      a1, 0x01E6(s0)             # 000001E6
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    lh      t6, 0x01E8(s0)             # 000001E8
    lh      t7, 0x01EA(s0)             # 000001EA
    lui     a2, %hi(var_80991A4C)      # a2 = 80990000
    addiu   a2, a2, %lo(var_80991A4C)  # a2 = 80991A4C
    addu    t8, t6, t7                 
    sh      t8, 0x01E8(s0)             # 000001E8
    lbu     v1, 0x0000(a2)             # 80991A4C
    beq     v1, $zero, lbl_8098CF14    
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x0000(a2)             # 80991A4C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80985690              
    lw      a1, 0x006C($sp)            
    beq     $zero, $zero, lbl_8098D3E8 
    lw      $ra, 0x0034($sp)           
lbl_8098CF14:
    lbu     v0, 0x0338(s0)             # 00000338
    andi    t0, v0, 0x0002             # t0 = 00000000
    bnel    t0, $zero, lbl_8098CF38    
    lw      t3, 0x0064($sp)            
    lbu     t1, 0x02D8(s0)             # 000002D8
    andi    t2, t1, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_8098CFA4    
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t3, 0x0064($sp)            
lbl_8098CF38:
    lw      t5, 0x032C(s0)             # 0000032C
    lui     $at, 0x4100                # $at = 41000000
    lw      a0, 0x006C($sp)            
    beql    t3, t5, lbl_8098CF5C       
    mtc1    $at, $f0                   # $f0 = 8.00
    lw      t4, 0x02CC(s0)             # 000002CC
    bnel    t3, t4, lbl_8098CF90       
    lbu     t8, 0x02D8(s0)             # 000002D8
    mtc1    $at, $f0                   # $f0 = 8.00
lbl_8098CF5C:
    lw      t6, 0x0118(s0)             # 00000118
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    lh      a3, 0x008A(t6)             # 0000008A
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0064($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    sw      $zero, 0x02CC(s0)          # 000002CC
    sw      $zero, 0x032C(s0)          # 0000032C
    lbu     v0, 0x0338(s0)             # 00000338
    lbu     t8, 0x02D8(s0)             # 000002D8
lbl_8098CF90:
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0338(s0)             # 00000338
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x02D8(s0)             # 000002D8
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_8098CFA4:
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFEC
    jal     func_80063F34              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sh      v0, 0x0030(s0)             # 00000030
    lw      t0, 0x0040($sp)            
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    lw      t1, 0x1DE4(t0)             # 00001DE4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    andi    t2, t1, 0x0007             # t2 = 00000000
    bne     t2, $zero, lbl_8098D040    
    nop
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lh      a3, 0x01E0(s0)             # 000001E0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0020($sp)            
    sw      t5, 0x0018($sp)            
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f8, 0x0010($sp)           
    swc1    $f10, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f16, 0x001C($sp)          
lbl_8098D040:
    lui     t4, %hi(var_8099BEAE)      # t4 = 809A0000
    lhu     t4, %lo(var_8099BEAE)(t4)  
    andi    t6, t4, 0x0100             # t6 = 00000000
    bnel    t6, $zero, lbl_8098D204    
    lw      t1, 0x0004(s0)             # 00000004
    lw      t7, 0x0118(s0)             # 00000118
    lui     $at, 0x4348                # $at = 43480000
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t8, 0x0114(t7)             # 00000114
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x007D          # a3 = 0000007D
    bne     t8, $zero, lbl_8098D200    
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mtc1    $at, $f18                  # $f18 = 200.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0020($sp)            
    lw      a0, 0x006C($sp)            
    sw      t9, 0x0018($sp)            
    swc1    $f18, 0x004C($sp)          
    swc1    $f6, 0x0010($sp)           
    swc1    $f4, 0x0014($sp)           
    jal     func_8098527C              
    swc1    $f8, 0x001C($sp)           
    lw      t1, 0x0004(s0)             # 00000004
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t2, t1, $at                
    andi    t3, t5, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_8098D0E0    
    sw      t2, 0x0004(s0)             # 00000004
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    nop
    swc1    $f10, 0x004C($sp)          
lbl_8098D0E0:
    lui     a0, %hi(var_8099BEAE)      # a0 = 809A0000
    lhu     a0, %lo(var_8099BEAE)(a0)  
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    addu    a0, a0, $at                
    sll     a0, a0,  4                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f16, 0x004C($sp)          
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f6                   # $f6 = 320.00
    mul.s   $f18, $f0, $f16            
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f8, 0x0010($sp)           
    add.s   $f4, $f18, $f6             
    mfc1    a1, $f4                    
    jal     func_80064178              
    nop
    lh      a1, 0x0050($sp)            
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a1, a1, 0x01F4             # a1 = 000001F4
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    add.s   $f16, $f0, $f0             
    lwc1    $f10, 0x0028(s0)           # 00000028
    lbu     v0, 0x02D9(s0)             # 000002D9
    add.s   $f18, $f10, $f16           
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_8098D1CC    
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      v1, 0x02D0(s0)             # 000002D0
    andi    t6, v0, 0xFFFD             # t6 = 00000000
    sb      t6, 0x02D9(s0)             # 000002D9
    lh      t7, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    lh      t8, 0x0052($sp)            
    bne     t7, $at, lbl_8098D1CC      
    slti    $at, t8, 0x0040            
    bne     $at, $zero, lbl_8098D1CC   
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x01C4(v1)          # 000001C4
    lw      t9, 0x0064($sp)            
    lh      t0, 0x008A(v1)             # 0000008A
    addiu   a1, $zero, 0x1808          # a1 = 00001808
    sw      t9, 0x01BC(v1)             # 000001BC
    jal     func_80022FD0              
    sh      t0, 0x0032(v1)             # 00000032
lbl_8098D1CC:
    lw      a0, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x003C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0328             # a2 = 00000328
    lw      a0, 0x006C($sp)            
    lw      a1, 0x003C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x02C8             # a2 = 000002C8
    beq     $zero, $zero, lbl_8098D2D0 
    lw      t0, 0x006C($sp)            
lbl_8098D200:
    lw      t1, 0x0004(s0)             # 00000004
lbl_8098D204:
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    ori     t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
    lh      a1, 0x0050($sp)            
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    addiu   a1, a1, 0x0096             # a1 = 00000096
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lw      t5, 0x0118(s0)             # 00000118
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a1, 0x4334                 # a1 = 43340000
    lbu     t3, 0x0114(t5)             # 00000114
    lui     a2, 0x3F80                 # a2 = 3F800000
    bnel    t3, $zero, lbl_8098D268    
    lbu     t4, 0x0114(s0)             # 00000114
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    beq     $zero, $zero, lbl_8098D294 
    nop
    lbu     t4, 0x0114(s0)             # 00000114
lbl_8098D268:
    sh      $zero, 0x019C(s0)          # 0000019C
    or      a0, s0, $zero              # a0 = 00000000
    bne     t4, $zero, lbl_8098D294    
    nop
    lw      t6, 0x0118(s0)             # 00000118
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    lbu     t7, 0x0114(t6)             # 00000114
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    jal     func_80027090              
    sw      t7, 0x0010($sp)            
lbl_8098D294:
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lbu     t8, 0x02D9(s0)             # 000002D9
    mul.s   $f10, $f0, $f8             
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    add.s   $f16, $f4, $f10            
    beq     t9, $zero, lbl_8098D2CC    
    swc1    $f16, 0x0028(s0)           # 00000028
    jal     func_80985690              
    lw      a1, 0x006C($sp)            
lbl_8098D2CC:
    lw      t0, 0x006C($sp)            
lbl_8098D2D0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   t2, s0, 0x02C8             # t2 = 000002C8
    addu    t1, t0, $at                
    sw      t1, 0x003C($sp)            
    sw      t2, 0x0038($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x006C($sp)            
    lw      a1, 0x003C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0038($sp)            
    lw      t5, 0x0040($sp)            
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    lw      t3, 0x1DE4(t5)             # 00001DE4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    andi    t4, t3, 0x0003             # t4 = 00000000
    bne     t4, $zero, lbl_8098D33C    
    nop
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_8098D33C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991E2C)     # $at = 80990000
    lwc1    $f18, %lo(var_80991E2C)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_8098D36C               
    lw      t6, 0x0118(s0)             # 00000118
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3143          # a1 = 00003143
    lw      t6, 0x0118(s0)             # 00000118
lbl_8098D36C:
    lbu     t7, 0x0114(t6)             # 00000114
    bnel    t7, $zero, lbl_8098D3E8    
    lw      $ra, 0x0034($sp)           
    lh      t8, 0x018C(s0)             # 0000018C
    andi    t9, t8, 0x0400             # t9 = 00000000
    bnel    t9, $zero, lbl_8098D3A0    
    lh      t5, 0x0032(s0)             # 00000032
    lh      t0, 0x0032(s0)             # 00000032
    lh      t1, 0x019C(s0)             # 0000019C
    addu    t2, t0, t1                 
    beq     $zero, $zero, lbl_8098D3AC 
    sh      t2, 0x0032(s0)             # 00000032
    lh      t5, 0x0032(s0)             # 00000032
lbl_8098D3A0:
    lh      t3, 0x019C(s0)             # 0000019C
    subu    t4, t5, t3                 
    sh      t4, 0x0032(s0)             # 00000032
lbl_8098D3AC:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x0190(s0)            # 00000190
    lwc1    $f4, 0x0054($sp)           
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f8, $f4             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0190(s0)           # 00000190
    lwc1    $f6, 0x005C($sp)           
    mul.s   $f18, $f0, $f16            
    add.s   $f8, $f18, $f6             
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      $ra, 0x0034($sp)           
lbl_8098D3E8:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D3F8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0004(a0)             # 00000004
    lw      t8, 0x0118(a0)             # 00000118
    or      a1, $zero, $zero           # a1 = 00000000
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(a0)             # 00000004
    lw      t9, 0x0188(t8)             # 00000188
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    sw      t9, 0x0188(a0)             # 00000188
    sw      a0, 0x0020($sp)            
    jal     func_80027090              
    sw      t9, 0x0010($sp)            
    lui     a1, %hi(func_8098D454)     # a1 = 80990000
    lw      a0, 0x0020($sp)            
    jal     func_80984CD0              
    addiu   a1, a1, %lo(func_8098D454) # a1 = 8098D454
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D454:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lw      t7, 0x0118(s0)             # 00000118
    addiu   t6, $sp, 0x0040            # t6 = FFFFFFF0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lw      t9, 0x01C8(t7)             # 000001C8
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t8, 0x01CC(t7)             # 000001CC
    sw      t8, 0x0004(t6)             # FFFFFFF4
    lw      t9, 0x01D0(t7)             # 000001D0
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      a0, 0x0118(s0)             # 00000118
    sw      a1, 0x0038($sp)            
    jal     func_80063F34              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lbu     t0, 0x02D9(s0)             # 000002D9
    sh      v0, 0x0030(s0)             # 00000030
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_8098D4C8    
    nop
    jal     func_80985690              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8098D660 
    lw      $ra, 0x0034($sp)           
lbl_8098D4C8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0194(s0)            # 00000194
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f8, $f0, $f6              
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0194(s0)           # 00000194
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    jal     func_800A45FC              
    lwc1    $f12, 0x0194(s0)           # 00000194
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f4, $f0, $f6              
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x02C8             # a2 = 000002C8
    add.s   $f8, $f18, $f4             
    jal     func_8004BF40              # CollisionCheck_setAC
    swc1    $f8, 0x0028(s0)            # 00000028
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, s1                 
    lw      t2, 0x1DE4(t2)             # 00011DE4
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    andi    t3, t2, 0x0003             # t3 = 00000000
    bne     t3, $zero, lbl_8098D5B0    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lh      a3, 0x01E0(s0)             # 000001E0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0020($sp)            
    sw      t4, 0x0018($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    jal     func_8098527C              
    swc1    $f6, 0x001C($sp)           
lbl_8098D5B0:
    lw      t6, 0x0188(s0)             # 00000188
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sw      t7, 0x0188(s0)             # 00000188
    jal     func_80063F34              
    lw      a1, 0x0038($sp)            
    lw      v1, 0x0188(s0)             # 00000188
    sh      v0, 0x0030(s0)             # 00000030
    bgtzl   v1, lbl_8098D660           
    lw      $ra, 0x0034($sp)           
    bne     v1, $zero, lbl_8098D5E8    
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098D65C 
    sh      $zero, 0x018C(s0)          # 0000018C
lbl_8098D5E8:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0020($sp)            
    sw      t8, 0x0018($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0055          # a3 = 00000055
    swc1    $f18, 0x0010($sp)          
    swc1    $f8, 0x001C($sp)           
    jal     func_8098527C              
    swc1    $f4, 0x0014($sp)           
    lh      t0, 0x018C(s0)             # 0000018C
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0010            
    bne     $at, $zero, lbl_8098D65C   
    lui     a1, %hi(func_8098C938)     # a1 = 80990000
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      t3, 0x018C(s0)             # 0000018C
    and     t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_80984CD0              
    addiu   a1, a1, %lo(func_8098C938) # a1 = 8098C938
lbl_8098D65C:
    lw      $ra, 0x0034($sp)           
lbl_8098D660:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_8098D670:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    and     t7, t6, $at                
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x0188(a0)             # 00000188
    sw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3944          # a1 = 00003944
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8098D6C8)     # a1 = 80990000
    addiu   a1, a1, %lo(func_8098D6C8) # a1 = 8098D6C8
    lbu     t9, 0x0187(a0)             # 00000187
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jal     func_80984CD0              
    sb      t0, 0x0187(a0)             # 00000187
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D6C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0188(a0)             # 00000188
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t7, $zero, lbl_8098D6EC    
    sw      t7, 0x0188(a0)             # 00000188
    jal     func_80020EB4              
    nop
lbl_8098D6EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D6FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     t6, %hi(var_8099BE42)      # t6 = 809A0000
    lb      t6, %lo(var_8099BE42)(t6)  
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    lui     $at, %hi(var_8099BEA4)     # $at = 809A0000
    blez    t6, lbl_8098D724           
    lui     a1, %hi(func_8098D74C)     # a1 = 80990000
    sh      t7, %lo(var_8099BEA4)($at) 
lbl_8098D724:
    lw      t8, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a1, a1, %lo(func_8098D74C) # a1 = 8098D74C
    and     t9, t8, $at                
    jal     func_80984CD0              
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D74C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, %hi(var_8099BEA4)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BEA4)  # v1 = 8099BEA4
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0000(v1)             # 8099BEA4
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     t6, $at, lbl_8098D780      
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2865          # a1 = 00002865
    lui     v1, %hi(var_8099BEA4)      # v1 = 809A0000
    addiu   v1, v1, %lo(var_8099BEA4)  # v1 = 8099BEA4
lbl_8098D780:
    lui     t7, %hi(var_8099BE42)      # t7 = 809A0000
    lb      t7, %lo(var_8099BE42)(t7)  
    bgezl   t7, lbl_8098D7B4           
    lw      $ra, 0x0014($sp)           
    lh      v0, 0x0000(v1)             # 8099BEA4
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    slti    $at, v0, 0x0064            
    beq     $at, $zero, lbl_8098D7AC   
    addiu   t8, v0, 0x0008             # t8 = 00000008
    beq     $zero, $zero, lbl_8098D7B0 
    sh      t8, 0x0000(v1)             # 8099BEA4
lbl_8098D7AC:
    sh      t9, 0x0000(v1)             # 8099BEA4
lbl_8098D7B0:
    lw      $ra, 0x0014($sp)           
lbl_8098D7B4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D7C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0018($sp)            
    lw      t9, 0x0180(a2)             # 00000180
    or      a0, a2, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lw      a2, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sltiu   $at, t7, 0x0015            
    beq     $at, $zero, lbl_8098D8E0   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80991E30)     # $at = 80990000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80991E30)($at) 
    jr      t7                         
    nop
var_8098D814:
    lbu     v0, 0x028D(a2)             # 0000028D
    or      a0, a1, $zero              # a0 = 00000000
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_8098D84C    
    sw      a1, 0x001C($sp)            
    lw      v1, 0x0284(a2)             # 00000284
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x028D(a2)             # 0000028D
    lh      t1, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t1, $at, lbl_8098D84C      
    sw      a1, 0x001C($sp)            
    sb      $zero, 0x01C4(v1)          # 000001C4
    sw      a1, 0x001C($sp)            
lbl_8098D84C:
    jal     func_8098F14C              
    sw      a2, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0004           # $at = 00010004
    lw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    addu    v0, a1, $at                
lbl_8098D86C:
    lh      v1, 0x0AB0(v0)             # 00000AB0
    addiu   a0, a0, 0xFFFE             # a0 = 00000002
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    blezl   v1, lbl_8098D88C           
    sh      $zero, 0x0AB0(v0)          # 00000AB0
    beq     $zero, $zero, lbl_8098D88C 
    sh      v1, 0x0AB0(v0)             # 00000AB0
    sh      $zero, 0x0AB0(v0)          # 00000AB0
lbl_8098D88C:
    lh      v1, 0x0AB6(v0)             # 00000AB6
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF5
    blezl   v1, lbl_8098D8A8           
    sh      $zero, 0x0AB6(v0)          # 00000AB6
    beq     $zero, $zero, lbl_8098D8A8 
    sh      v1, 0x0AB6(v0)             # 00000AB6
    sh      $zero, 0x0AB6(v0)          # 00000AB6
lbl_8098D8A8:
    lh      v1, 0x0ABC(v0)             # 00000ABC
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFEB
    blezl   v1, lbl_8098D8C4           
    sh      $zero, 0x0ABC(v0)          # 00000ABC
    beq     $zero, $zero, lbl_8098D8C4 
    sh      v1, 0x0ABC(v0)             # 00000ABC
    sh      $zero, 0x0ABC(v0)          # 00000ABC
lbl_8098D8C4:
    bgez    a0, lbl_8098D86C           
    addiu   v0, v0, 0xFFFE             # v0 = FFFFFFFE
    lbu     v0, 0x0184(a2)             # 00000184
    blez    v0, lbl_8098D9BC           
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFD
    beq     $zero, $zero, lbl_8098D9BC 
    sb      t2, 0x0184(a2)             # 00000184
lbl_8098D8E0:
    lh      t3, 0x018C(a2)             # 0000018C
    lw      t5, 0x0028(a2)             # 00000028
    lui     $at, 0x4234                # $at = 42340000
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x018C(a2)             # 0000018C
    lh      a0, 0x018C(a2)             # 0000018C
    mtc1    $at, $f6                   # $f6 = 45.00
    sw      t5, 0x003C(a2)             # 0000003C
    addu    $at, a0, $zero             
    lw      t9, 0x0024(a2)             # 00000024
    lwc1    $f4, 0x003C(a2)            # 0000003C
    sll     a0, a0,  5                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    add.s   $f8, $f4, $f6              
    addu    a0, a0, $at                
    sw      t9, 0x0038(a2)             # 00000038
    lw      t9, 0x002C(a2)             # 0000002C
    sll     a0, a0,  3                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    swc1    $f8, 0x003C(a2)            # 0000003C
    sll     a0, a0, 16                 
    sw      t9, 0x0040(a2)             # 00000040
    sw      a2, 0x0018($sp)            
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lw      a2, 0x0018($sp)            
    lui     $at, %hi(var_80991E84)     # $at = 80990000
    lwc1    $f10, %lo(var_80991E84)($at) 
    lh      a0, 0x018C(a2)             # 0000018C
    lui     $at, %hi(var_80991E88)     # $at = 80990000
    mul.s   $f16, $f0, $f10            
    lwc1    $f18, %lo(var_80991E88)($at) 
    addu    $at, a0, $zero             
    sll     a0, a0,  5                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  3                 
    add.s   $f4, $f16, $f18            
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f4, 0x01CC(a2)            # 000001CC
    lui     $at, %hi(var_80991E8C)     # $at = 80990000
    lwc1    $f6, %lo(var_80991E8C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6              
    lw      a2, 0x0018($sp)            
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x01C8(a2)           # 000001C8
lbl_8098D9BC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098D9CC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0050($sp)            
    sw      a3, 0x005C($sp)            
    lw      t6, 0x0050($sp)            
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     a1, $at, lbl_8098DACC      
    lw      t0, 0x0000(t6)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t2, 0xDB06                 # t2 = DB060000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0050($sp)            
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lw      a0, 0x0000(t3)             # 00000000
    lui     t7, 0x0001                 # t7 = 00010000
    sw      $zero, 0x001C($sp)         
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    addu    t7, t7, t3                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    subu    $at, $zero, t7             
    sll     t8, $at,  1                
    andi    t9, t8, 0x003F             # t9 = 00000000
    sw      t9, 0x0020($sp)            
    sw      t2, 0x0024($sp)            
    sw      t4, 0x0028($sp)            
    sw      t0, 0x0044($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0038($sp)            
    lw      t1, 0x0038($sp)            
    lw      t0, 0x0044($sp)            
    lui     $at, %hi(var_80991E90)     # $at = 80990000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t3, 0x0064($sp)            
    lh      t7, 0x019E(t3)             # 0000019E
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_800AA9E0              
    lwc1    $f12, %lo(var_80991E90)($at) 
    beq     $zero, $zero, lbl_8098DB60 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098DACC:
    slti    $at, a1, 0x000A            
    bne     $at, $zero, lbl_8098DAF4   
    slti    $at, a1, 0x0014            
    beq     $at, $zero, lbl_8098DAF4   
    lw      v0, 0x0060($sp)            
    lh      t9, 0x0000(v0)             # 00000000
    addiu   t2, t9, 0xC000             # t2 = FFFFC000
    sh      t2, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_8098DB5C 
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8098DAF4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a1, $at, lbl_8098DB1C      
    lw      t4, 0x0064($sp)            
    lwc1    $f12, 0x0194(t4)           # 00000194
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    beq     $zero, $zero, lbl_8098DB60 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098DB1C:
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    bne     a1, $at, lbl_8098DB44      
    lw      t5, 0x0064($sp)            
    lwc1    $f12, 0x0190(t5)           # 00000190
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    beq     $zero, $zero, lbl_8098DB60 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098DB44:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_8098DB5C      
    lw      v0, 0x0060($sp)            
    lh      t6, 0x0000(v0)             # 00000000
    addiu   t3, t6, 0xF334             # t3 = FFFFF334
    sh      t3, 0x0000(v0)             # 00000000
lbl_8098DB5C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098DB60:
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_8098DB70:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0080($sp)            
    sw      a1, 0x0084($sp)            
    sw      a3, 0x008C($sp)            
    lui     t7, %hi(var_80991A78)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991A78)  # t7 = 80991A78
    lw      t9, 0x0000(t7)             # 80991A78
    addiu   t6, $sp, 0x0070            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80991A7C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80991A80
    lui     t4, %hi(var_8099BE41)      # t4 = 809A0000
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0084($sp)            
    lw      t2, 0x0080($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t3, $at, lbl_8098DC04      
    lw      t0, 0x0000(t2)             # 00000000
    lbu     t4, %lo(var_8099BE41)(t4)  
    slti    $at, t4, 0x0009            
    beq     $at, $zero, lbl_8098DBDC   
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f4                   # $f4 = -1000.00
    beq     $zero, $zero, lbl_8098DBEC 
    swc1    $f4, 0x0070($sp)           
lbl_8098DBDC:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    nop
    swc1    $f6, 0x0070($sp)           
lbl_8098DBEC:
    lw      a1, 0x0090($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    jal     func_800AB958              
    addiu   a1, a1, 0x01C8             # a1 = 000001C8
    beq     $zero, $zero, lbl_8098DF8C 
    lw      t5, 0x0084($sp)            
lbl_8098DC04:
    lw      t5, 0x0084($sp)            
    lw      t2, 0x0084($sp)            
    slti    $at, t5, 0x000A            
    bne     $at, $zero, lbl_8098DD9C   
    slti    $at, t5, 0x0014            
    beq     $at, $zero, lbl_8098DD9C   
    lui     t6, %hi(var_80991A46)      # t6 = 80990000
    addu    t6, t6, t5                 
    lbu     t6, %lo(var_80991A46)(t6)  
    slti    $at, t5, 0x0010            
    beql    t6, $zero, lbl_8098DDA0    
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     $at, $zero, lbl_8098DC48   
    lui     t7, %hi(var_8099BE41)      # t7 = 809A0000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    t5, $at, lbl_8098DCBC      
    lw      t5, 0x0084($sp)            
lbl_8098DC48:
    lbu     t7, %lo(var_8099BE41)(t7)  
    slti    $at, t7, 0x000A            
    beql    $at, $zero, lbl_8098DCBC   
    lw      t5, 0x0084($sp)            
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0080($sp)            
    lw      a0, 0x0000(t2)             # 00000000
    sw      t0, 0x0068($sp)            
    jal     func_800AB900              
    sw      v1, 0x0060($sp)            
    lw      a1, 0x0060($sp)            
    lw      t0, 0x0068($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x77B8             # t6 = 060077B8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8098DD34 
    nop
    lw      t5, 0x0084($sp)            
lbl_8098DCBC:
    lui     t7, %hi(var_8099BE41)      # t7 = 809A0000
    slti    $at, t5, 0x000B            
    bne     $at, $zero, lbl_8098DD34   
    nop
    lbu     t7, %lo(var_8099BE41)(t7)  
    slti    $at, t7, 0x0004            
    beq     $at, $zero, lbl_8098DD34   
    nop
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0080($sp)            
    lw      a0, 0x0000(t2)             # 00000000
    sw      t0, 0x0068($sp)            
    jal     func_800AB900              
    sw      v1, 0x0058($sp)            
    lw      a1, 0x0058($sp)            
    lw      t0, 0x0068($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x77B8             # t6 = 060077B8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
lbl_8098DD34:
    lui     t5, %hi(var_8099BE42)      # t5 = 809A0000
    lb      t5, %lo(var_8099BE42)(t5)  
    slti    $at, t5, 0x000E            
    bne     $at, $zero, lbl_8098DD70   
    lui     $at, %hi(var_80991E94)     # $at = 80990000
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991E94)($at) 
    lui     $at, %hi(var_80991E98)     # $at = 80990000
    swc1    $f0, 0x0070($sp)           
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991E98)($at) 
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f8                   # $f8 = -60.00
    swc1    $f0, 0x0074($sp)           
    swc1    $f8, 0x0078($sp)           
lbl_8098DD70:
    lw      t8, 0x0084($sp)            
    lw      t7, 0x0090($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addu    a1, t7, t9                 
    jal     func_800AB958              
    addiu   a1, a1, 0x0174             # a1 = 00000174
    beq     $zero, $zero, lbl_8098DF8C 
    lw      t5, 0x0084($sp)            
lbl_8098DD9C:
    addiu   $at, $zero, 0x0019         # $at = 00000019
lbl_8098DDA0:
    bne     t2, $at, lbl_8098DE98      
    lui     t4, 0xDB06                 # t4 = DB060000
    lw      v1, 0x02D0(t0)             # 000002D0
    ori     t4, t4, 0x0024             # t4 = DB060024
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(t0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t6, 0x0080($sp)            
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    addu    v0, v0, t6                 
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sll     a3, v0,  2                 
    sll     t9, v0,  2                 
    addu    t9, t9, v0                 
    addu    a3, a3, v0                 
    sll     a3, a3,  1                 
    andi    t2, t9, 0x007F             # t2 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t2, 0x0020($sp)            
    andi    a3, a3, 0x007F             # a3 = 00000000
    sw      t5, 0x0010($sp)            
    sw      t0, 0x0068($sp)            
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0050($sp)            
    lw      t1, 0x0050($sp)            
    lw      t0, 0x0068($sp)            
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t8, 0x0080($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x004C($sp)            
    lw      a1, 0x004C($sp)            
    lw      t0, 0x0068($sp)            
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x7970             # t2 = 06007970
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8098DF8C 
    lw      t5, 0x0084($sp)            
lbl_8098DE98:
    lw      t3, 0x0000(a2)             # 00000000
    lw      t4, 0x0084($sp)            
    beq     t3, $zero, lbl_8098DF1C    
    slti    $at, t4, 0x001D            
    bne     $at, $zero, lbl_8098DF1C   
    slti    $at, t4, 0x0038            
    beql    $at, $zero, lbl_8098DF20   
    lw      t3, 0x0084($sp)            
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t8, 0x0080($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    sw      t0, 0x0068($sp)            
    sw      a2, 0x0088($sp)            
    jal     func_800AB900              
    sw      v1, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lw      a2, 0x0088($sp)            
    lw      t0, 0x0068($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0000(a2)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8098DF8C 
    lw      t5, 0x0084($sp)            
lbl_8098DF1C:
    lw      t3, 0x0084($sp)            
lbl_8098DF20:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    lui     t4, %hi(var_8099BE42)      # t4 = 809A0000
    bnel    t3, $at, lbl_8098DF8C      
    lw      t5, 0x0084($sp)            
    lb      t4, %lo(var_8099BE42)(t4)  
    lw      t6, 0x0090($sp)            
    slti    $at, t4, 0x000E            
    beq     $at, $zero, lbl_8098DF88   
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f16                  # $f16 = 450.00
    lwc1    $f10, 0x00BC(t6)           # 000000BC
    lui     $at, 0xC30C                # $at = C30C0000
    mtc1    $at, $f4                   # $f4 = -140.00
    add.s   $f18, $f10, $f16           
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, t6, 0x0270             # a1 = 00000270
    add.s   $f6, $f18, $f4             
    jal     func_800AB958              
    swc1    $f6, 0x0070($sp)           
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lw      a1, 0x0090($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    swc1    $f8, 0x0070($sp)           
    jal     func_800AB958              
    addiu   a1, a1, 0x0264             # a1 = 00000264
lbl_8098DF88:
    lw      t5, 0x0084($sp)            
lbl_8098DF8C:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lui     t8, %hi(var_8099BE42)      # t8 = 809A0000
    bnel    t5, $at, lbl_8098E064      
    lw      $ra, 0x0034($sp)           
    lb      t8, %lo(var_8099BE42)(t8)  
    lw      t7, 0x0090($sp)            
    slti    $at, t8, 0x000E            
    bne     $at, $zero, lbl_8098E060   
    addiu   t9, t7, 0x0264             # t9 = 00000264
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f12                  # $f12 = 320.00
    jal     func_80026D90              
    sw      t9, 0x003C($sp)            
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f10                  # $f10 = -250.00
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f12                  # $f12 = 320.00
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0070($sp)          
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f12                  # $f12 = 320.00
    jal     func_80026D90              
    swc1    $f0, 0x0074($sp)           
    lwc1    $f2, 0x0074($sp)           
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x4316                # $at = 43160000
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    c.lt.s  $f2, $f14                  
    nop
    bc1fl   lbl_8098E028               
    mtc1    $at, $f12                  # $f12 = 150.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f12                  # $f12 = 150.00
    nop
    sub.s   $f2, $f2, $f12             
    beq     $zero, $zero, lbl_8098E034 
    swc1    $f2, 0x0074($sp)           
    mtc1    $at, $f12                  # $f12 = 150.00
lbl_8098E028:
    nop
    add.s   $f2, $f2, $f12             
    swc1    $f2, 0x0074($sp)           
lbl_8098E034:
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_8098E054               
    add.s   $f4, $f0, $f12             
    sub.s   $f18, $f0, $f12            
    beq     $zero, $zero, lbl_8098E058 
    swc1    $f18, 0x0078($sp)          
    add.s   $f4, $f0, $f12             
lbl_8098E054:
    swc1    $f4, 0x0078($sp)           
lbl_8098E058:
    jal     func_800AB958              
    lw      a1, 0x003C($sp)            
lbl_8098E060:
    lw      $ra, 0x0034($sp)           
lbl_8098E064:
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_8098E070:
    sw      a0, 0x0000($sp)            
    lw      a0, 0x0014($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    lbu     t6, 0x0184(a0)             # 00000184
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t6, $zero, lbl_8098E0AC    
    or      v0, $zero, $zero           # v0 = 00000000
    bne     a1, $at, lbl_8098E0A8      
    lw      v0, 0x0010($sp)            
    lh      t7, 0x0004(v0)             # 00000004
    lh      t8, 0x01E6(a0)             # 000001E6
    addu    t9, t7, t8                 
    sh      t9, 0x0004(v0)             # 00000004
lbl_8098E0A8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098E0AC:
    jr      $ra                        
    nop


func_8098E0B4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    addiu   a3, $sp, 0x0020            # a3 = FFFFFFF0
    lw      a2, 0x0040($sp)            
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    lui     t6, %hi(var_80991A84)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991A84)  # t6 = 80991A84
    lw      t8, 0x0000(t6)             # 80991A84
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      t8, 0x0000(a3)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80991A88
    sw      t7, 0x0004(a3)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80991A8C
    sw      t8, 0x0008(a3)             # FFFFFFF8
    lbu     t9, 0x0184(a2)             # 00000184
    beq     t9, $zero, lbl_8098E220    
    nop
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_8098E12C      
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_8098E150      
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    a1, $at, lbl_8098E1C4      
    lw      t6, 0x0188(a2)             # 00000188
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E12C:
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    jal     func_800AB958              
    addiu   a1, a2, 0x0038             # a1 = 00000038
    lw      a2, 0x0040($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, a2, 0x02C8             # a1 = 000002C8
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E150:
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 00001A40
    jal     func_800AB958              
    addiu   a1, a2, 0x01A4             # a1 = 000001A4
    lw      a2, 0x0040($sp)            
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f8                   # $f8 = -40.00
    lw      t0, 0x0188(a2)             # 00000188
    lui     $at, 0xC0E0                # $at = C0E00000
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    andi    t1, t0, 0x001F             # t1 = 00000000
    sra     t2, t1,  1                 
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   a1, a2, 0x01EC             # a1 = 000001EC
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f4                   # $f4 = -7.00
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0020($sp)          
    lw      t3, 0x0188(a2)             # 00000188
    andi    t4, t3, 0x001F             # t4 = 00000000
    sra     t5, t4,  1                 
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    jal     func_800AB958              
    swc1    $f6, 0x0024($sp)           
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x0188(a2)             # 00000188
lbl_8098E1C4:
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f16                  # $f16 = -60.00
    andi    t7, t6, 0x001F             # t7 = 00000000
    sra     t8, t7,  1                 
    mtc1    t8, $f8                    # $f8 = 0.00
    lui     $at, 0xC234                # $at = C2340000
    or      a0, a3, $zero              # a0 = 00000000
    cvt.s.w $f10, $f8                  
    mtc1    $at, $f8                   # $f8 = -45.00
    addiu   a1, a2, 0x01F8             # a1 = 000001F8
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x0020($sp)          
    lw      t9, 0x0188(a2)             # 00000188
    andi    t0, t9, 0x001F             # t0 = 00000000
    sra     t1, t0,  1                 
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    jal     func_800AB958              
    swc1    $f10, 0x0024($sp)          
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E220:
    beq     a1, $at, lbl_8098E24C      
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a1, $at, lbl_8098E260      
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a1, $at, lbl_8098E294      
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    a1, $at, lbl_8098E2CC      
    lh      t6, 0x018C(a2)             # 0000018C
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E24C:
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    jal     func_800AB958              
    addiu   a1, a2, 0x01A4             # a1 = 000001A4
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E260:
    lh      t2, 0x018C(a2)             # 0000018C
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f4                   # $f4 = 90.00
    andi    t3, t2, 0x0007             # t3 = 00000000
    mtc1    t3, $f16                   # $f16 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a2, 0x0204             # a1 = 00000204
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    jal     func_800AB958              
    swc1    $f6, 0x0020($sp)           
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
lbl_8098E294:
    lh      t4, 0x018C(a2)             # 0000018C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    andi    t5, t4, 0x0007             # t5 = 00000000
    mtc1    t5, $f8                    # $f8 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a2, 0x01F8             # a1 = 000001F8
    cvt.s.w $f10, $f8                  
    mul.s   $f18, $f10, $f16           
    jal     func_800AB958              
    swc1    $f18, 0x0020($sp)          
    beq     $zero, $zero, lbl_8098E2F8 
    lw      $ra, 0x0014($sp)           
    lh      t6, 0x018C(a2)             # 0000018C
lbl_8098E2CC:
    lui     $at, 0x4238                # $at = 42380000
    mtc1    $at, $f8                   # $f8 = 46.00
    andi    t7, t6, 0x0007             # t7 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a2, 0x01EC             # a1 = 000001EC
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    jal     func_800AB958              
    swc1    $f10, 0x0020($sp)          
    lw      $ra, 0x0014($sp)           
lbl_8098E2F8:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8098E304:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0018($sp)            
    or      s0, a3, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0070($sp)            
    sw      a2, 0x0078($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_8098E348      
    lw      v0, 0x0080($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a1, $at, lbl_8098E370      
    lw      v0, 0x0080($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_8098E398      
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_8098E4CC 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098E348:
    lw      v1, 0x0084($sp)            
    lh      t6, 0x0002(v0)             # 00000002
    lh      t9, 0x0004(v0)             # 00000004
    lh      t7, 0x01D6(v1)             # 000001D6
    addu    t8, t6, t7                 
    sh      t8, 0x0002(v0)             # 00000002
    lh      t0, 0x01D4(v1)             # 000001D4
    addu    t1, t9, t0                 
    beq     $zero, $zero, lbl_8098E4C8 
    sh      t1, 0x0004(v0)             # 00000004
lbl_8098E370:
    lw      v1, 0x0084($sp)            
    lh      t2, 0x0002(v0)             # 00000002
    lh      t5, 0x0004(v0)             # 00000004
    lh      t3, 0x01DC(v1)             # 000001DC
    addu    t4, t2, t3                 
    sh      t4, 0x0002(v0)             # 00000002
    lh      t6, 0x01DA(v1)             # 000001DA
    addu    t7, t5, t6                 
    beq     $zero, $zero, lbl_8098E4C8 
    sh      t7, 0x0004(v0)             # 00000004
lbl_8098E398:
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f14, 0x0004(s0)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800AA740              
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFBC
    lui     a1, %hi(var_8099BEA8)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099BEA8)  # a1 = 8099BEA8
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFBC
    jal     func_800AC0E8              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t8, %hi(var_8099BEA8)      # t8 = 809A0000
    lh      t8, %lo(var_8099BEA8)(t8)  
    lui     $at, %hi(var_80991E9C)     # $at = 80990000
    lwc1    $f8, %lo(var_80991E9C)($at) 
    subu    t9, $zero, t8              
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lui     t0, %hi(var_8099BEAA)      # t0 = 809A0000
    lh      t0, %lo(var_8099BEAA)(t0)  
    lui     $at, %hi(var_80991EA0)     # $at = 80990000
    lwc1    $f18, %lo(var_80991EA0)($at) 
    subu    t1, $zero, t0              
    mtc1    t1, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAB94              
    nop
    lui     t2, %hi(var_8099BEAC)      # t2 = 809A0000
    lh      t2, %lo(var_8099BEAC)(t2)  
    lui     $at, %hi(var_80991EA4)     # $at = 80990000
    lwc1    $f8, %lo(var_80991EA4)($at) 
    subu    t3, $zero, t2              
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lw      v1, 0x0084($sp)            
    lui     $at, %hi(var_80991EA8)     # $at = 80990000
    lwc1    $f18, %lo(var_80991EA8)($at) 
    lh      t4, 0x01E2(v1)             # 000001E2
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAB94              
    nop
    lw      v1, 0x0084($sp)            
    lui     $at, %hi(var_80991EAC)     # $at = 80990000
    lwc1    $f8, %lo(var_80991EAC)($at) 
    lh      t5, 0x01E0(v1)             # 000001E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lw      v0, 0x0080($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0008(s0)            # 00000008
    swc1    $f0, 0x0004(s0)            # 00000004
    swc1    $f0, 0x0000(s0)            # 00000000
    sh      $zero, 0x0004(v0)          # 00000004
    lh      v1, 0x0004(v0)             # 00000004
    sh      v1, 0x0002(v0)             # 00000002
    sh      v1, 0x0000(v0)             # 00000000
lbl_8098E4C8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098E4CC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_8098E4E0:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      a2, 0x0088($sp)            
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFF0
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x0020($sp)            
    sw      a0, 0x0080($sp)            
    sw      a3, 0x008C($sp)            
    lui     t6, %hi(var_80991A90)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991A90)  # t6 = 80991A90
    lw      t8, 0x0000(t6)             # 80991A90
    lui     t0, %hi(var_80991A9C)      # t0 = 80990000
    addiu   t0, t0, %lo(var_80991A9C)  # t0 = 80991A9C
    sw      t8, 0x0000(a2)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80991A94
    addiu   t9, $sp, 0x0064            # t9 = FFFFFFE4
    lui     t4, %hi(var_80991AA8)      # t4 = 80990000
    sw      t7, 0x0004(a2)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80991A98
    addiu   t4, t4, %lo(var_80991AA8)  # t4 = 80991AA8
    addiu   t3, $sp, 0x0058            # t3 = FFFFFFD8
    sw      t8, 0x0008(a2)             # FFFFFFF8
    lw      t2, 0x0000(t0)             # 80991A9C
    lw      t1, 0x0004(t0)             # 80991AA0
    lui     t8, %hi(var_80991AB4)      # t8 = 80990000
    sw      t2, 0x0000(t9)             # FFFFFFE4
    lw      t2, 0x0008(t0)             # 80991AA4
    sw      t1, 0x0004(t9)             # FFFFFFE8
    addiu   t8, t8, %lo(var_80991AB4)  # t8 = 80991AB4
    sw      t2, 0x0008(t9)             # FFFFFFEC
    lw      t6, 0x0000(t4)             # 80991AA8
    lw      t5, 0x0004(t4)             # 80991AAC
    addiu   t7, $sp, 0x004C            # t7 = FFFFFFCC
    sw      t6, 0x0000(t3)             # FFFFFFD8
    lw      t6, 0x0008(t4)             # 80991AB0
    sw      t5, 0x0004(t3)             # FFFFFFDC
    lui     t2, %hi(var_80991AC0)      # t2 = 80990000
    sw      t6, 0x0008(t3)             # FFFFFFE0
    lw      t0, 0x0000(t8)             # 80991AB4
    lw      t9, 0x0004(t8)             # 80991AB8
    addiu   t2, t2, %lo(var_80991AC0)  # t2 = 80991AC0
    sw      t0, 0x0000(t7)             # FFFFFFCC
    lw      t0, 0x0008(t8)             # 80991ABC
    sw      t9, 0x0004(t7)             # FFFFFFD0
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFC0
    sw      t0, 0x0008(t7)             # FFFFFFD4
    lw      t4, 0x0000(t2)             # 80991AC0
    lw      t3, 0x0004(t2)             # 80991AC4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t4, 0x0000(t1)             # FFFFFFC0
    lw      t4, 0x0008(t2)             # 80991AC8
    sw      t3, 0x0004(t1)             # FFFFFFC4
    beq     a1, $at, lbl_8098E5E0      
    sw      t4, 0x0008(t1)             # FFFFFFC8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_8098E61C      
    lw      s0, 0x0090($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a1, $at, lbl_8098E660      
    lw      s0, 0x0090($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_8098E6A4      
    lw      s0, 0x0090($sp)            
    beq     $zero, $zero, lbl_8098E930 
    lw      $ra, 0x0024($sp)           
lbl_8098E5E0:
    lw      s0, 0x0090($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lh      t5, 0x018C(s0)             # 0000018C
    or      a0, a2, $zero              # a0 = FFFFFFF0
    addiu   a1, s0, 0x01EC             # a1 = 000001EC
    andi    t6, t5, 0x0007             # t6 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    jal     func_800AB958              
    swc1    $f10, 0x0070($sp)          
    beq     $zero, $zero, lbl_8098E930 
    lw      $ra, 0x0024($sp)           
lbl_8098E61C:
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    jal     func_800AB958              
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    lh      t7, 0x018C(s0)             # 0000018C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    andi    t8, t7, 0x0007             # t8 = 00000000
    mtc1    t8, $f16                   # $f16 = 0.00
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, s0, 0x01F8             # a1 = 000001F8
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    jal     func_800AB958              
    swc1    $f6, 0x0070($sp)           
    beq     $zero, $zero, lbl_8098E930 
    lw      $ra, 0x0024($sp)           
lbl_8098E660:
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    jal     func_800AB958              
    addiu   a1, s0, 0x01B0             # a1 = 000001B0
    lh      t9, 0x018C(s0)             # 0000018C
    lui     $at, 0x4238                # $at = 42380000
    mtc1    $at, $f16                  # $f16 = 46.00
    andi    t0, t9, 0x0007             # t0 = 00000000
    mtc1    t0, $f8                    # $f8 = 0.00
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, s0, 0x0204             # a1 = 00000204
    cvt.s.w $f10, $f8                  
    mul.s   $f18, $f10, $f16           
    jal     func_800AB958              
    swc1    $f18, 0x0070($sp)          
    beq     $zero, $zero, lbl_8098E930 
    lw      $ra, 0x0024($sp)           
lbl_8098E6A4:
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    jal     func_800AB958              
    addiu   a1, s0, 0x01BC             # a1 = 000001BC
    lh      t1, 0x018C(s0)             # 0000018C
    lui     $at, 0x4238                # $at = 42380000
    mtc1    $at, $f8                   # $f8 = 46.00
    andi    t2, t1, 0x0007             # t2 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, s0, 0x0210             # a1 = 00000210
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    jal     func_800AB958              
    swc1    $f10, 0x0070($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    addiu   a1, s0, 0x0258             # a1 = 00000258
    sw      a1, 0x0034($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    jal     func_800AB958              
    swc1    $f16, 0x0070($sp)          
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x01C8             # a1 = 000001C8
    addiu   a2, s0, 0x01E6             # a2 = 000001E6
    jal     func_800285B0              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t3, 0x01E6(s0)             # 000001E6
    sh      t3, 0x003E($sp)            
    lh      t4, 0x01E8(s0)             # 000001E8
    jal     func_800AA6EC              
    sh      t4, 0x003C($sp)            
    lwc1    $f12, 0x0258(s0)           # 00000258
    lwc1    $f14, 0x025C(s0)           # 0000025C
    lw      a2, 0x0260(s0)             # 00000260
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x003E($sp)            
    lh      a1, 0x003C($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     t5, %hi(var_8099BE41)      # t5 = 809A0000
    lbu     t5, %lo(var_8099BE41)(t5)  
    mtc1    $zero, $f2                 # $f2 = 0.00
    slti    $at, t5, 0x000F            
    bne     $at, $zero, lbl_8098E790   
    swc1    $f2, 0x0070($sp)           
    lh      t6, 0x018C(s0)             # 0000018C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    addiu   t7, t6, 0xFFF0             # t7 = FFFFFFF0
    andi    t8, t7, 0x0007             # t8 = 00000000
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_8098E7B8 
    swc1    $f8, 0x0078($sp)           
lbl_8098E790:
    lh      t9, 0x018C(s0)             # 0000018C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    addiu   t0, t9, 0xFFE0             # t0 = FFFFFFE0
    andi    t1, t0, 0x000F             # t1 = 00000000
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0078($sp)           
lbl_8098E7B8:
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f0, 0x0078($sp)           
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    add.s   $f0, $f0, $f6              
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, s0, 0x021C             # a1 = 0000021C
    swc1    $f0, 0x0048($sp)           
    swc1    $f0, 0x0054($sp)           
    add.s   $f0, $f0, $f8              
    jal     func_800AB958              
    swc1    $f0, 0x0078($sp)           
    lui     t2, %hi(var_8099BE41)      # t2 = 809A0000
    lbu     t2, %lo(var_8099BE41)(t2)  
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0078($sp)           
    slti    $at, t2, 0x000F            
    bne     $at, $zero, lbl_8098E864   
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    lui     $at, 0x4204                # $at = 42040000
    lwc1    $f0, 0x0078($sp)           
    mtc1    $at, $f10                  # $f10 = 33.00
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    sub.s   $f0, $f0, $f10             
    c.lt.s  $f0, $f2                   
    swc1    $f0, 0x0078($sp)           
    bc1f    lbl_8098E830               
    nop
    swc1    $f2, 0x0078($sp)           
lbl_8098E830:
    jal     func_800AB958              
    addiu   a1, s0, 0x0234             # a1 = 00000234
    lui     $at, 0x4204                # $at = 42040000
    lwc1    $f0, 0x0078($sp)           
    mtc1    $at, $f16                  # $f16 = 33.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f0, $f0, $f16             
    c.lt.s  $f0, $f2                   
    swc1    $f0, 0x0078($sp)           
    bc1fl   lbl_8098E8BC               
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    beq     $zero, $zero, lbl_8098E8B8 
    swc1    $f2, 0x0078($sp)           
lbl_8098E864:
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f18                  # $f18 = 22.00
    nop
    sub.s   $f0, $f0, $f18             
    c.lt.s  $f0, $f2                   
    swc1    $f0, 0x0078($sp)           
    bc1f    lbl_8098E888               
    nop
    swc1    $f2, 0x0078($sp)           
lbl_8098E888:
    jal     func_800AB958              
    addiu   a1, s0, 0x0234             # a1 = 00000234
    lui     $at, 0x41B0                # $at = 41B00000
    lwc1    $f0, 0x0078($sp)           
    mtc1    $at, $f4                   # $f4 = 22.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f0, $f0, $f4              
    c.lt.s  $f0, $f2                   
    swc1    $f0, 0x0078($sp)           
    bc1fl   lbl_8098E8BC               
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    swc1    $f2, 0x0078($sp)           
lbl_8098E8B8:
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
lbl_8098E8BC:
    jal     func_800AB958              
    addiu   a1, s0, 0x0228             # a1 = 00000228
    addiu   a1, s0, 0x0374             # a1 = 00000374
    sw      a1, 0x0030($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFE4
    addiu   a1, s0, 0x0368             # a1 = 00000368
    sw      a1, 0x0034($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFD8
    addiu   a1, s0, 0x038C             # a1 = 0000038C
    sw      a1, 0x0028($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFCC
    addiu   a3, s0, 0x0380             # a3 = 00000380
    or      a1, a3, $zero              # a1 = 00000380
    sw      a3, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC0
    lw      t3, 0x0028($sp)            
    lw      a3, 0x002C($sp)            
    addiu   a0, s0, 0x0328             # a0 = 00000328
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0030($sp)            
    jal     func_80050B64              
    sw      t3, 0x0010($sp)            
    jal     func_800AA724              
    nop
    lw      $ra, 0x0024($sp)           
lbl_8098E930:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_8098E940:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_8098E978      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_8098E980      
    lw      t6, 0x002C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    a1, $at, lbl_8098E9A4      
    lui     $at, 0x3F80                # $at = 3F800000
    beq     $zero, $zero, lbl_8098E9C0 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098E978:
    beq     $zero, $zero, lbl_8098E9BC 
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8098E980:
    lwc1    $f12, 0x01C8(t6)           # 000001C8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_8098E9C0 
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8098E9A4:
    mtc1    $at, $f12                  # $f12 = 1.00
    lw      t7, 0x002C($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    lwc1    $f14, 0x01CC(t7)           # 000001CC
lbl_8098E9BC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8098E9C0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8098E9D0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0040($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sw      a2, 0x0070($sp)            
    sw      a3, 0x0074($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_8098EAE0      
    lw      s1, 0x0000(s2)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s2                 
    sw      t7, 0x0000(s0)             # 00000000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    subu    $at, $zero, v0             
    sll     t1, $at,  2                
    sll     a3, v0,  2                 
    addu    t1, t1, $at                
    addu    a3, a3, v0                 
    sll     a3, a3,  1                 
    andi    t2, t1, 0x001F             # t2 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t2, 0x0020($sp)            
    andi    a3, a3, 0x001F             # a3 = 00000000
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x0058($sp)            
    lw      v1, 0x0058($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0054($sp)            
    lw      a1, 0x0054($sp)            
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0FA0             # t9 = 06000FA0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_8098EB44 
    lw      $ra, 0x0044($sp)           
lbl_8098EAE0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_8098EAF4      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a1, $at, lbl_8098EB44      
    lw      $ra, 0x0044($sp)           
lbl_8098EAF4:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x004C($sp)            
    lw      a1, 0x004C($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      t4, 0x0070($sp)            
    lw      t5, 0x0000(t4)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      $ra, 0x0044($sp)           
lbl_8098EB44:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_8098EB58:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     t7, %hi(var_80991ACC)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991ACC)  # t7 = 80991ACC
    lw      t9, 0x0000(t7)             # 80991ACC
    addiu   t6, $sp, 0x00A8            # t6 = FFFFFFE0
    lw      t8, 0x0004(t7)             # 80991AD0
    sw      t9, 0x0000(t6)             # FFFFFFE0
    lw      t9, 0x0008(t7)             # 80991AD4
    lui     t5, %hi(var_80991AD8)      # t5 = 80990000
    addiu   t5, t5, %lo(var_80991AD8)  # t5 = 80991AD8
    sw      t8, 0x0004(t6)             # FFFFFFE4
    sw      t9, 0x0008(t6)             # FFFFFFE8
    lw      t7, 0x0000(t5)             # 80991AD8
    addiu   t4, $sp, 0x009C            # t4 = FFFFFFD4
    lw      t6, 0x0004(t5)             # 80991ADC
    sw      t7, 0x0000(t4)             # FFFFFFD4
    lw      t7, 0x0008(t5)             # 80991AE0
    lui     t9, %hi(var_80991AE4)      # t9 = 80990000
    addiu   t9, t9, %lo(var_80991AE4)  # t9 = 80991AE4
    sw      t6, 0x0004(t4)             # FFFFFFD8
    sw      t7, 0x0008(t4)             # FFFFFFDC
    lw      t5, 0x0000(t9)             # 80991AE4
    addiu   t8, $sp, 0x0090            # t8 = FFFFFFC8
    lw      t4, 0x0004(t9)             # 80991AE8
    sw      t5, 0x0000(t8)             # FFFFFFC8
    lw      t5, 0x0008(t9)             # 80991AEC
    lui     t7, %hi(var_80991AF0)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991AF0)  # t7 = 80991AF0
    sw      t4, 0x0004(t8)             # FFFFFFCC
    sw      t5, 0x0008(t8)             # FFFFFFD0
    lw      t9, 0x0000(t7)             # 80991AF0
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFBC
    lw      t8, 0x0004(t7)             # 80991AF4
    sw      t9, 0x0000(t6)             # FFFFFFBC
    lw      t9, 0x0008(t7)             # 80991AF8
    lui     t5, %hi(var_80991AFC)      # t5 = 80990000
    addiu   t5, t5, %lo(var_80991AFC)  # t5 = 80991AFC
    sw      t8, 0x0004(t6)             # FFFFFFC0
    sw      t9, 0x0008(t6)             # FFFFFFC4
    lw      t7, 0x0000(t5)             # 80991AFC
    addiu   t4, $sp, 0x0078            # t4 = FFFFFFB0
    lw      t6, 0x0004(t5)             # 80991B00
    sw      t7, 0x0000(t4)             # FFFFFFB0
    lw      t7, 0x0008(t5)             # 80991B04
    lui     t9, %hi(var_80991B08)      # t9 = 80990000
    addiu   t9, t9, %lo(var_80991B08)  # t9 = 80991B08
    sw      t6, 0x0004(t4)             # FFFFFFB4
    sw      t7, 0x0008(t4)             # FFFFFFB8
    lw      t5, 0x0000(t9)             # 80991B08
    addiu   t8, $sp, 0x006C            # t8 = FFFFFFA4
    lw      t4, 0x0004(t9)             # 80991B0C
    sw      t5, 0x0000(t8)             # FFFFFFA4
    lw      t5, 0x0008(t9)             # 80991B10
    lui     t6, %hi(var_80991B14)      # t6 = 80990000
    sw      t4, 0x0004(t8)             # FFFFFFA8
    sw      t5, 0x0008(t8)             # FFFFFFAC
    lw      t6, %lo(var_80991B14)(t6)  
    sw      t6, 0x0068($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0064($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(s1)             # 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sltiu   $at, t8, 0x0015            
    beq     $at, $zero, lbl_8098EEEC   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80991EB0)     # $at = 80990000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80991EB0)($at) 
    jr      t8                         
    nop
var_8098EC90:
    lui     $at, 0x0001                # $at = 00010000
    addu    t1, s1, $at                
    lh      v0, 0x0AC2(t1)             # 00000AC2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    beq     v0, $zero, lbl_8098ECC8    
    addiu   t9, v0, 0x015E             # t9 = 0000015E
    sh      t9, 0x0AC2($at)            # 00010AC2
    lh      t4, 0x0AC2(t1)             # 00000AC2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    blezl   t4, lbl_8098ECCC           
    lh      v0, 0x0AC4(t1)             # 00000AC4
    sh      $zero, 0x0AC2($at)         # 00010AC2
lbl_8098ECC8:
    lh      v0, 0x0AC4(t1)             # 00000AC4
lbl_8098ECCC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    beq     v0, $zero, lbl_8098ECF8    
    addiu   t5, v0, 0x015E             # t5 = 0000015E
    sh      t5, 0x0AC4($at)            # 00010AC4
    lh      t6, 0x0AC4(t1)             # 00000AC4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    blezl   t6, lbl_8098ECFC           
    lbu     t7, 0x0187(s0)             # 00000187
    sh      $zero, 0x0AC4($at)         # 00010AC4
lbl_8098ECF8:
    lbu     t7, 0x0187(s0)             # 00000187
lbl_8098ECFC:
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      v0, 0x0064($sp)            
    bne     t7, $zero, lbl_8098F0FC    
    ori     t9, t9, 0x0020             # t9 = DB060020
    lw      v1, 0x02C0(v0)             # 000002C0
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lw      t7, 0x1DE4(t1)             # 00001DE4
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    sw      t4, 0x0024($sp)            
    subu    $at, $zero, t7             
    sll     t8, $at,  2                
    addu    t8, t8, $at                
    sll     t8, t8,  1                 
    andi    t9, t8, 0x000F             # t9 = 00000008
    sw      t9, 0x0020($sp)            
    sw      t1, 0x0050($sp)            
    sw      t5, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x005C($sp)            
    lw      t2, 0x005C($sp)            
    lw      t1, 0x0050($sp)            
    lui     t8, 0xDB06                 # t8 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t6, 0x0064($sp)            
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    lw      v1, 0x02C0(t6)             # 000002C0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t6)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t1)             # 00001DE4
    lw      a0, 0x0000(s1)             # 00000000
    sw      t9, 0x0010($sp)            
    subu    $at, $zero, t0             
    sll     a3, $at,  2                
    sll     t7, $at,  2                
    addu    t7, t7, $at                
    addu    a3, a3, $at                
    sll     a3, a3,  1                 
    andi    t6, t7, 0x001F             # t6 = 00000008
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0024($sp)            
    sw      t9, 0x0028($sp)            
    sw      t6, 0x0020($sp)            
    andi    a3, a3, 0x001F             # a3 = 00000000
    sw      $zero, 0x001C($sp)         
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0058($sp)            
    lw      t3, 0x0058($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(func_8098D9CC)     # a3 = 80990000
    sw      v0, 0x0004(t3)             # 00000004
    lui     t4, %hi(func_8098DB70)     # t4 = 80990000
    addiu   t4, t4, %lo(func_8098DB70) # t4 = 8098DB70
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    jal     func_8008993C              
    addiu   a3, a3, %lo(func_8098D9CC) # a3 = 8098D9CC
    beq     $zero, $zero, lbl_8098F100 
    lh      v0, 0x001C(s0)             # 0000001C
var_8098EE44:
    lbu     t5, 0x0187(s0)             # 00000187
    lui     t7, %hi(func_8098E070)     # t7 = 80990000
    addiu   t7, t7, %lo(func_8098E070) # t7 = 8098E070
    bne     t5, $zero, lbl_8098F0FC    
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t6, %hi(func_8098E0B4)     # t6 = 80990000
    addiu   t6, t6, %lo(func_8098E0B4) # t6 = 8098E0B4
    sw      t6, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    sw      t7, 0x0010($sp)            
    beq     $zero, $zero, lbl_8098F100 
    lh      v0, 0x001C(s0)             # 0000001C
var_8098EE84:
    lbu     t8, 0x0187(s0)             # 00000187
    lui     t9, %hi(func_8098E304)     # t9 = 80990000
    addiu   t9, t9, %lo(func_8098E304) # t9 = 8098E304
    bne     t8, $zero, lbl_8098F0FC    
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t4, %hi(func_8098E4E0)     # t4 = 80990000
    addiu   t4, t4, %lo(func_8098E4E0) # t4 = 8098E4E0
    sw      t4, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    sw      t9, 0x0010($sp)            
    beq     $zero, $zero, lbl_8098F100 
    lh      v0, 0x001C(s0)             # 0000001C
var_8098EEC4:
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8098F100 
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8098EEEC:
    lbu     t5, 0x0187(s0)             # 00000187
    lui     a3, %hi(func_8098E940)     # a3 = 80990000
    addiu   a3, a3, %lo(func_8098E940) # a3 = 8098E940
    bne     t5, $zero, lbl_8098F0FC    
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(func_8098E9D0)     # t7 = 80990000
    addiu   t7, t7, %lo(func_8098E9D0) # t7 = 8098E9D0
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)            
    jal     func_8008993C              
    sw      t7, 0x0010($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, s0, 0x02C8             # a1 = 000002C8
    lui     t6, %hi(var_8099BE42)      # t6 = 809A0000
    lb      t6, %lo(var_8099BE42)(t6)  
    lui     a0, %hi(var_80991A40)      # a0 = 80990000
    addiu   a0, a0, %lo(var_80991A40)  # a0 = 80991A40
    slti    $at, t6, 0x000D            
    beql    $at, $zero, lbl_8098EF6C   
    lw      t6, 0x0118(s0)             # 00000118
    lw      t9, 0x0118(s0)             # 00000118
    addiu   t8, $sp, 0x00B4            # t8 = FFFFFFEC
    lw      t5, 0x0024(t9)             # 00000024
    sw      t5, 0x0000(t8)             # FFFFFFEC
    lw      t4, 0x0028(t9)             # 00000028
    sw      t4, 0x0004(t8)             # FFFFFFF0
    lw      t5, 0x002C(t9)             # 0000002C
    beq     $zero, $zero, lbl_8098EF88 
    sw      t5, 0x0008(t8)             # FFFFFFF4
    lw      t6, 0x0118(s0)             # 00000118
lbl_8098EF6C:
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFFEC
    lw      t9, 0x01C8(t6)             # 809A01C8
    sw      t9, 0x0000(t7)             # FFFFFFEC
    lw      t8, 0x01CC(t6)             # 809A01CC
    sw      t8, 0x0004(t7)             # FFFFFFF0
    lw      t9, 0x01D0(t6)             # 809A01D0
    sw      t9, 0x0008(t7)             # FFFFFFF4
lbl_8098EF88:
    jal     func_800AB958              
    addiu   a1, s0, 0x01F8             # a1 = 000001F8
    jal     func_800AA6EC              
    nop
    lwc1    $f12, 0x00B4($sp)          
    lwc1    $f14, 0x00B8($sp)          
    lw      a2, 0x00BC($sp)            
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f4, 0x0190(s0)            # 00000190
    lui     $at, 0x3D80                # $at = 3D800000
    mtc1    $at, $f10                  # $f10 = 0.06
    swc1    $f4, 0x0074($sp)           
    lwc1    $f6, 0x0074($sp)           
    addiu   a0, $sp, 0x00A8            # a0 = FFFFFFE0
    addiu   a1, s0, 0x01EC             # a1 = 000001EC
    swc1    $f6, 0x0080($sp)           
    lh      t4, 0x018C(s0)             # 0000018C
    lwc1    $f8, 0x0190(s0)            # 00000190
    andi    t5, t4, 0x000F             # t5 = 00000000
    mtc1    t5, $f18                   # $f18 = 0.00
    mul.s   $f16, $f8, $f10            
    cvt.s.w $f4, $f18                  
    mul.s   $f6, $f4, $f16             
    jal     func_800AB958              
    swc1    $f6, 0x00B0($sp)           
    addiu   a1, s0, 0x0374             # a1 = 00000374
    sw      a1, 0x004C($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFC8
    addiu   a1, s0, 0x0368             # a1 = 00000368
    sw      a1, 0x0050($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0084            # a0 = FFFFFFBC
    addiu   a1, s0, 0x038C             # a1 = 0000038C
    sw      a1, 0x0044($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFB0
    addiu   a3, s0, 0x0380             # a3 = 00000380
    or      a1, a3, $zero              # a1 = 00000380
    sw      a3, 0x0048($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFA4
    lw      t7, 0x0044($sp)            
    lw      a3, 0x0048($sp)            
    addiu   a0, s0, 0x0328             # a0 = 00000328
    lw      a1, 0x0050($sp)            
    lw      a2, 0x004C($sp)            
    jal     func_80050B64              
    sw      t7, 0x0010($sp)            
    jal     func_800AA724              
    nop
    lw      t9, 0x0024(s0)             # 00000024
    addiu   t6, $sp, 0x00B4            # t6 = FFFFFFEC
    lui     $at, 0x4110                # $at = 41100000
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t8, 0x0028(s0)             # 00000028
    mtc1    $at, $f10                  # $f10 = 9.00
    sw      t8, 0x0004(t6)             # FFFFFFF0
    lw      t9, 0x002C(s0)             # 0000002C
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lwc1    $f8, 0x00B8($sp)           
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x00B8($sp)          
    lbu     t4, 0x0114(s0)             # 00000114
    beql    t4, $zero, lbl_8098F0B4    
    addiu   a0, $sp, 0x00B4            # a0 = FFFFFFEC
    jal     func_8001A83C              
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a0, $sp, 0x00B4            # a0 = FFFFFFEC
lbl_8098F0B4:
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFD4
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80026AD0              
    or      a3, s1, $zero              # a3 = 00000000
    lbu     t5, 0x0114(s0)             # 00000114
    lui     t7, %hi(var_80991B18)      # t7 = 80990000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFF8C
    beq     t5, $zero, lbl_8098F0FC    
    addiu   t7, t7, %lo(var_80991B18)  # t7 = 80991B18
    lw      t8, 0x0000(t7)             # 80991B18
    or      a0, s1, $zero              # a0 = 00000000
    sw      t8, 0x0000(a1)             # FFFFFF8C
    lhu     a3, 0x0112(s0)             # 00000112
    lbu     a2, 0x0114(s0)             # 00000114
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sll     a3, a3, 16                 
    jal     func_8001A654              
    sra     a3, a3, 16                 
lbl_8098F0FC:
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8098F100:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     a0, %hi(var_809934C0)      # a0 = 80990000
    bne     v0, $at, lbl_8098F120      
    addiu   a0, a0, %lo(var_809934C0)  # a0 = 809934C0
    jal     func_8098FAEC              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8098F13C 
    lw      $ra, 0x003C($sp)           
lbl_8098F120:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v0, $at, lbl_8098F138      
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_8099BEA4)      # a1 = 809A0000
    jal     func_8099158C              
    lh      a1, %lo(var_8099BEA4)(a1)  
lbl_8098F138:
    lw      $ra, 0x003C($sp)           
lbl_8098F13C:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000


func_8098F14C:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s2, 0x0034($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s7, 0x0048($sp)            
    sw      s6, 0x0044($sp)            
    sw      s5, 0x0040($sp)            
    sw      s4, 0x003C($sp)            
    sw      s3, 0x0038($sp)            
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     $at, %hi(var_80991F04)     # $at = 80990000
    lw      t6, 0x1C44(s2)             # 00001C44
    lwc1    $f22, %lo(var_80991F04)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s0, %hi(var_809934C0)      # s0 = 80990000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s0, s0, %lo(var_809934C0)  # s0 = 809934C0
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s7, $zero, 0x0005          # s7 = 00000005
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    addiu   s4, $zero, 0x0002          # s4 = 00000002
    addiu   s3, $sp, 0x0064            # s3 = FFFFFFA4
    sw      t6, 0x00B8($sp)            
lbl_8098F1B4:
    lbu     t7, 0x0024(s0)             # 809934E4
    beql    t7, $zero, lbl_8098FAA4    
    addiu   s6, s6, 0x0001             # s6 = 00000001
    lwc1    $f0, 0x000C(s0)            # 809934CC
    lwc1    $f4, 0x0000(s0)            # 809934C0
    lwc1    $f2, 0x0010(s0)            # 809934D0
    lwc1    $f8, 0x0004(s0)            # 809934C4
    lwc1    $f12, 0x0014(s0)           # 809934D4
    lwc1    $f16, 0x0008(s0)           # 809934C8
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x0018(s0)            # 809934D8
    lhu     t8, 0x0026(s0)             # 809934E6
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x001C(s0)            # 809934DC
    swc1    $f6, 0x0000(s0)            # 809934C0
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0020(s0)           # 809934E0
    swc1    $f10, 0x0004(s0)           # 809934C4
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x0008(s0)           # 809934C8
    lbu     v0, 0x0024(s0)             # 809934E4
    add.s   $f10, $f2, $f8             
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0026(s0)             # 809934E6
    add.s   $f18, $f12, $f16           
    swc1    $f6, 0x000C(s0)            # 809934CC
    swc1    $f10, 0x0010(s0)           # 809934D0
    beq     s5, v0, lbl_8098F234       
    swc1    $f18, 0x0014(s0)           # 809934D4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8098F418      
    nop
lbl_8098F234:
    jal     func_800CDCCC              # Rand.Next() float
    lw      s1, 0x0054(s0)             # 80993514
    lui     $at, %hi(var_80991F08)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F08)($at) 
    lh      t0, 0x002E(s0)             # 809934EE
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t4, $f8                    
    nop
    addu    t5, t0, t4                 
    addiu   t6, t5, 0x2000             # t6 = 00002000
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, 0x002E(s0)             # 809934EE
    lui     $at, %hi(var_80991F0C)     # $at = 80990000
    lwc1    $f10, %lo(var_80991F0C)($at) 
    lh      t7, 0x002C(s0)             # 809934EC
    lh      v0, 0x0028(s0)             # 809934E8
    mul.s   $f16, $f0, $f10            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f18                   
    nop
    addu    t3, t7, t2                 
    addiu   t0, t3, 0x2000             # t0 = 00002000
    beq     s5, v0, lbl_8098F2A4       
    sh      t0, 0x002C(s0)             # 809934EC
    bne     v0, $at, lbl_8098F328      
    nop
lbl_8098F2A4:
    lw      a1, 0x0118(s1)             # 00000118
    addiu   a0, s1, 0x0024             # a0 = 00000024
    jal     func_80063F34              
    addiu   a1, a1, 0x01C8             # a1 = 000001C8
    lh      t4, 0x002A(s0)             # 809934EA
    subu    t5, t4, v0                 
    sh      t5, 0x00AA($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f6, 0x0048(s0)            # 80993508
    lwc1    $f4, 0x0024(s1)            # 00000024
    mul.s   $f8, $f6, $f0              
    sub.s   $f10, $f4, $f8             
    swc1    $f10, 0x0000(s0)           # 809934C0
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f18, 0x0048(s0)           # 80993508
    lwc1    $f16, 0x002C(s1)           # 0000002C
    mul.s   $f6, $f18, $f0             
    sub.s   $f4, $f16, $f6             
    swc1    $f4, 0x0008(s0)            # 809934C8
    lh      a0, 0x00AA($sp)            
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f8, 0x004C(s0)            # 8099350C
    lwc1    $f18, 0x0028(s1)           # 00000028
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x0004(s0)           # 809934C4
    beq     $zero, $zero, lbl_8098F3E4 
    lhu     t2, 0x0026(s0)             # 809934E6
lbl_8098F328:
    beql    s4, v0, lbl_8098F33C       
    lwc1    $f6, 0x0048(s0)            # 80993508
    bne     s7, v0, lbl_8098F36C       
    lui     $at, %hi(var_80991F10)     # $at = 80990000
    lwc1    $f6, 0x0048(s0)            # 80993508
lbl_8098F33C:
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x004C(s0)           # 8099350C
    add.s   $f8, $f6, $f4              
    lwc1    $f6, 0x0050(s0)            # 80993510
    swc1    $f8, 0x0000(s0)            # 809934C0
    lwc1    $f18, 0x0028(s1)           # 00000028
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x0004(s0)           # 809934C4
    lwc1    $f4, 0x002C(s1)            # 0000002C
    add.s   $f8, $f6, $f4              
    beq     $zero, $zero, lbl_8098F3E0 
    swc1    $f8, 0x0008(s0)            # 809934C8
lbl_8098F36C:
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80991F10)($at) 
    trunc.w.s $f10, $f0                  
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t8, $f10                   
    jal     func_80026D90              
    sh      t8, 0x00B6($sp)            
    lh      t1, 0x00B6($sp)            
    lw      t9, 0x00B8($sp)            
    lui     $at, 0x4170                # $at = 41700000
    sll     t7, t1,  2                 
    subu    t7, t7, t1                 
    sll     t7, t7,  2                 
    addu    s1, t9, t7                 
    lwc1    $f18, 0x08F8(s1)           # 000008F8
    mtc1    $at, $f12                  # $f12 = 15.00
    add.s   $f16, $f0, $f18            
    jal     func_80026D90              
    swc1    $f16, 0x0000(s0)           # 809934C0
    lwc1    $f6, 0x08FC(s1)            # 000008FC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f4, $f0, $f6              
    jal     func_80026D90              
    swc1    $f4, 0x0004(s0)            # 809934C4
    lwc1    $f8, 0x0900(s1)            # 00000900
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0008(s0)           # 809934C8
lbl_8098F3E0:
    lhu     t2, 0x0026(s0)             # 809934E6
lbl_8098F3E4:
    slti    $at, t2, 0x0064            
    beql    $at, $zero, lbl_8098F418   
    lbu     v0, 0x0024(s0)             # 809934E4
    lh      t3, 0x0036(s0)             # 809934F6
    addiu   t0, t3, 0xFFCE             # t0 = FFFFFFCE
    sh      t0, 0x0036(s0)             # 809934F6
    lh      t4, 0x0036(s0)             # 809934F6
    bgezl   t4, lbl_8098F418           
    lbu     v0, 0x0024(s0)             # 809934E4
    sh      $zero, 0x0036(s0)          # 809934F6
    sh      $zero, 0x0026(s0)          # 809934E6
    sb      $zero, 0x0024(s0)          # 809934E4
    lbu     v0, 0x0024(s0)             # 809934E4
lbl_8098F418:
    bnel    s4, v0, lbl_8098F484       
    lbu     v0, 0x0024(s0)             # 809934E4
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80991F14)     # $at = 80990000
    lwc1    $f18, %lo(var_80991F14)($at) 
    lh      t5, 0x002E(s0)             # 809934EE
    lhu     t3, 0x0026(s0)             # 809934E6
    mul.s   $f16, $f0, $f18            
    slti    $at, t3, 0x0064            
    trunc.w.s $f6, $f16                  
    mfc1    t9, $f6                    
    nop
    addu    t7, t5, t9                 
    addiu   t2, t7, 0x4000             # t2 = 00004000
    beq     $at, $zero, lbl_8098F480   
    sh      t2, 0x002E(s0)             # 809934EE
    lh      t0, 0x0036(s0)             # 809934F6
    addiu   t4, t0, 0xFFCE             # t4 = FFFFFFCE
    sh      t4, 0x0036(s0)             # 809934F6
    lh      t6, 0x0036(s0)             # 809934F6
    bgezl   t6, lbl_8098F484           
    lbu     v0, 0x0024(s0)             # 809934E4
    sh      $zero, 0x0036(s0)          # 809934F6
    sh      $zero, 0x0026(s0)          # 809934E6
    sb      $zero, 0x0024(s0)          # 809934E4
lbl_8098F480:
    lbu     v0, 0x0024(s0)             # 809934E4
lbl_8098F484:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8098F550      
    nop
    lw      v0, 0x0054(s0)             # 80993514
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x00A4($sp)            
    lui     $at, %hi(var_80991F18)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F18)($at) 
    lh      t8, 0x002E(s0)             # 809934EE
    lw      v0, 0x00A4($sp)            
    mul.s   $f8, $f0, $f4              
    lwc1    $f18, 0x0048(s0)           # 80993508
    lui     $at, 0x439B                # $at = 439B0000
    lh      t0, 0x0028(s0)             # 809934E8
    lhu     t1, 0x0026(s0)             # 809934E6
    addiu   t4, t0, 0x0001             # t4 = 00000001
    trunc.w.s $f10, $f8                  
    mtc1    $at, $f8                   # $f8 = 310.00
    andi    t6, t4, 0x0007             # t6 = 00000001
    slti    $at, t1, 0x0064            
    mfc1    t7, $f10                   
    nop
    addu    t2, t8, t7                 
    addiu   t3, t2, 0x24A8             # t3 = 000024A8
    sh      t3, 0x002E(s0)             # 809934EE
    lwc1    $f16, 0x0024(v0)           # 00000024
    add.s   $f6, $f18, $f16            
    swc1    $f6, 0x0000(s0)            # 809934C0
    lwc1    $f16, 0x0054(v0)           # 00000054
    lwc1    $f18, 0x00BC(v0)           # 000000BC
    lwc1    $f4, 0x0028(v0)            # 00000028
    mul.s   $f6, $f18, $f16            
    add.s   $f10, $f4, $f8             
    lwc1    $f8, 0x0050(s0)            # 80993510
    add.s   $f4, $f10, $f6             
    swc1    $f4, 0x0004(s0)            # 809934C4
    lwc1    $f18, 0x002C(v0)           # 0000002C
    sh      t6, 0x0028(s0)             # 809934E8
    add.s   $f16, $f8, $f18            
    beq     $at, $zero, lbl_8098F54C   
    swc1    $f16, 0x0008(s0)           # 809934C8
    lh      t5, 0x0036(s0)             # 809934F6
    addiu   t9, t5, 0xFFCE             # t9 = FFFFFFCE
    sh      t9, 0x0036(s0)             # 809934F6
    lh      t8, 0x0036(s0)             # 809934F6
    bgezl   t8, lbl_8098F550           
    lbu     v0, 0x0024(s0)             # 809934E4
    sh      $zero, 0x0036(s0)          # 809934F6
    sh      $zero, 0x0026(s0)          # 809934E6
    sb      $zero, 0x0024(s0)          # 809934E4
lbl_8098F54C:
    lbu     v0, 0x0024(s0)             # 809934E4
lbl_8098F550:
    bnel    s7, v0, lbl_8098F58C       
    lbu     t1, 0x0024(s0)             # 809934E4
    lh      t0, 0x0036(s0)             # 809934F6
    lh      t7, 0x0028(s0)             # 809934E8
    addiu   t4, t0, 0xFFEC             # t4 = FFFFFFEC
    sh      t4, 0x0036(s0)             # 809934F6
    lh      t6, 0x0036(s0)             # 809934F6
    addiu   t2, t7, 0x0001             # t2 = 00000001
    andi    t3, t2, 0x0007             # t3 = 00000001
    bgtz    t6, lbl_8098F588           
    sh      t3, 0x0028(s0)             # 809934E8
    sh      $zero, 0x0036(s0)          # 809934F6
    sh      $zero, 0x0026(s0)          # 809934E6
    sb      $zero, 0x0024(s0)          # 809934E4
lbl_8098F588:
    lbu     t1, 0x0024(s0)             # 809934E4
lbl_8098F58C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t1, $at, lbl_8098F708      
    lbu     v0, 0x0024(s0)             # 809934E4
    lh      t5, 0x0028(s0)             # 809934E8
    addiu   a2, $sp, 0x0094            # a2 = FFFFFFD4
    slti    $at, t5, 0x0002            
    beql    $at, $zero, lbl_8098F6B0   
    lhu     v0, 0x0026(s0)             # 809934E6
    lw      t8, 0x0000(s0)             # 809934C0
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    sw      t8, 0x0000(a2)             # FFFFFFD4
    lw      t9, 0x0004(s0)             # 809934C4
    addiu   a0, s2, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD0
    sw      t9, 0x0004(a2)             # FFFFFFD8
    lw      t8, 0x0008(s0)             # 809934C8
    sw      t8, 0x0008(a2)             # FFFFFFDC
    lwc1    $f10, 0x0010(s0)           # 809934D0
    lwc1    $f8, 0x0098($sp)           
    add.s   $f4, $f10, $f6             
    sub.s   $f18, $f8, $f4             
    jal     func_8002F3A4              
    swc1    $f18, 0x0098($sp)          
    lw      t7, 0x0090($sp)            
    beql    t7, $zero, lbl_8098F694    
    lhu     v0, 0x0026(s0)             # 809934E6
    lwc1    $f16, 0x0004(s0)           # 809934C4
    lui     t4, %hi(var_80991A40)      # t4 = 80990000
    addiu   t4, t4, %lo(var_80991A40)  # t4 = 80991A40
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_8098F694               
    lhu     v0, 0x0026(s0)             # 809934E6
    add.s   $f10, $f0, $f20            
    sh      s4, 0x0028(s0)             # 809934E8
    lui     t2, %hi(var_8099BE42)      # t2 = 809A0000
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    swc1    $f10, 0x0004(s0)           # 809934C4
    lb      t2, %lo(var_8099BE42)(t2)  
    ori     t0, $zero, 0xEA60          # t0 = 0000EA60
    slti    $at, t2, 0x0014            
    beql    $at, $zero, lbl_8098F648   
    sh      t0, 0x0026(s0)             # 809934E6
    beq     $zero, $zero, lbl_8098F648 
    sh      t3, 0x0026(s0)             # 809934E6
    sh      t0, 0x0026(s0)             # 809934E6
lbl_8098F648:
    lw      t1, 0x0000(t4)             # 80991A40
    sw      t1, 0x0000(s3)             # FFFFFFA4
    lw      t6, 0x0004(t4)             # 80991A44
    lw      t9, 0x0000(s3)             # FFFFFFA4
    sw      t6, 0x0004(s3)             # FFFFFFA8
    lw      t1, 0x0008(t4)             # 80991A48
    sw      t1, 0x0008(s3)             # FFFFFFAC
    sw      t9, 0x000C(s0)             # 809934CC
    lw      t5, 0x0004(s3)             # FFFFFFA8
    sw      t5, 0x0010(s0)             # 809934D0
    lw      t9, 0x0008(s3)             # FFFFFFAC
    sw      t9, 0x0014(s0)             # 809934D4
    lw      t7, 0x0000(s3)             # FFFFFFA4
    sw      t7, 0x0018(s0)             # 809934D8
    lw      t8, 0x0004(s3)             # FFFFFFA8
    sw      t8, 0x001C(s0)             # 809934DC
    lw      t7, 0x0008(s3)             # FFFFFFAC
    sw      t7, 0x0020(s0)             # 809934E0
    lhu     v0, 0x0026(s0)             # 809934E6
lbl_8098F694:
    bne     v0, $zero, lbl_8098F6F8    
    nop
    sb      $zero, 0x0024(s0)          # 809934E4
    lhu     v0, 0x0026(s0)             # 809934E6
    beq     $zero, $zero, lbl_8098F6F8 
    nop
    lhu     v0, 0x0026(s0)             # 809934E6
lbl_8098F6B0:
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_8098F6E0   
    or      v1, v0, $zero              # v1 = 00000000
    multu   v1, s7                     
    sll     t3, v1,  2                 
    addu    t3, t3, v1                 
    sll     t3, t3,  1                 
    sh      t3, 0x0036(s0)             # 809934F6
    mflo    t2                         
    sh      t2, 0x003E(s0)             # 809934FE
    beq     $zero, $zero, lbl_8098F6F8 
    nop
lbl_8098F6E0:
    ori     $at, $zero, 0xC351         # $at = 0000C351
    slt     $at, v1, $at               
    bne     $at, $zero, lbl_8098F6F8   
    addiu   t0, v0, 0x0001             # t0 = 00000001
    sh      t0, 0x0026(s0)             # 809934E6
    andi    v0, t0, 0xFFFF             # v0 = 00000001
lbl_8098F6F8:
    bnel    v0, $zero, lbl_8098F708    
    lbu     v0, 0x0024(s0)             # 809934E4
    sb      $zero, 0x0024(s0)          # 809934E4
    lbu     v0, 0x0024(s0)             # 809934E4
lbl_8098F708:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    v0, $at, lbl_8098F8BC      
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lh      v0, 0x0028(s0)             # 809934E8
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFC0
    bne     v0, $zero, lbl_8098F814    
    nop
    lw      t6, 0x0000(s0)             # 809934C0
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    sw      t6, 0x0000(a2)             # FFFFFFC0
    lw      t4, 0x0004(s0)             # 809934C4
    addiu   a0, s2, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFBC
    sw      t4, 0x0004(a2)             # FFFFFFC4
    lw      t6, 0x0008(s0)             # 809934C8
    sw      t6, 0x0008(a2)             # FFFFFFC8
    lwc1    $f6, 0x0010(s0)            # 809934D0
    lwc1    $f18, 0x0084($sp)          
    add.s   $f4, $f6, $f8              
    sub.s   $f16, $f18, $f4            
    swc1    $f16, 0x0084($sp)          
    lh      t1, 0x002A(s0)             # 809934EA
    addiu   t5, t1, 0x1770             # t5 = 00001770
    jal     func_8002F3A4              
    sh      t5, 0x002A(s0)             # 809934EA
    lw      t9, 0x007C($sp)            
    beql    t9, $zero, lbl_8098F800    
    lhu     t9, 0x0026(s0)             # 809934E6
    lwc1    $f10, 0x0004(s0)           # 809934C4
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    lui     t7, %hi(var_80991A40)      # t7 = 80990000
    c.le.s  $f10, $f0                  
    nop
    bc1fl   lbl_8098F800               
    lhu     t9, 0x0026(s0)             # 809934E6
    add.s   $f6, $f0, $f20             
    sh      s5, 0x0028(s0)             # 809934E8
    sh      t8, 0x0026(s0)             # 809934E6
    addiu   t7, t7, %lo(var_80991A40)  # t7 = 80991A40
    swc1    $f6, 0x0004(s0)            # 809934C4
    lw      t3, 0x0000(t7)             # 80991A40
    addiu   t5, $zero, 0xC000          # t5 = FFFFC000
    sw      t3, 0x0000(s3)             # FFFFFFA4
    lw      t2, 0x0004(t7)             # 80991A44
    lw      t4, 0x0000(s3)             # FFFFFFA4
    sw      t2, 0x0004(s3)             # FFFFFFA8
    lw      t3, 0x0008(t7)             # 80991A48
    sw      t3, 0x0008(s3)             # FFFFFFAC
    sw      t4, 0x000C(s0)             # 809934CC
    lw      t0, 0x0004(s3)             # FFFFFFA8
    sw      t0, 0x0010(s0)             # 809934D0
    lw      t4, 0x0008(s3)             # FFFFFFAC
    sw      t4, 0x0014(s0)             # 809934D4
    lw      t1, 0x0000(s3)             # FFFFFFA4
    sw      t1, 0x0018(s0)             # 809934D8
    lw      t6, 0x0004(s3)             # FFFFFFA8
    sw      t6, 0x001C(s0)             # 809934DC
    lw      t1, 0x0008(s3)             # FFFFFFAC
    sh      t5, 0x002A(s0)             # 809934EA
    sw      t1, 0x0020(s0)             # 809934E0
    lhu     t9, 0x0026(s0)             # 809934E6
lbl_8098F800:
    bnel    t9, $zero, lbl_8098F8A8    
    lwc1    $f4, 0x0048(s0)            # 80993508
    sb      $zero, 0x0024(s0)          # 809934E4
    beq     $zero, $zero, lbl_8098F8A8 
    lwc1    $f4, 0x0048(s0)            # 80993508
lbl_8098F814:
    bne     s4, v0, lbl_8098F830       
    addiu   a0, s0, 0x0044             # a0 = 80993504
    lhu     t8, 0x0026(s0)             # 809934E6
    bnel    t8, $zero, lbl_8098F8A8    
    lwc1    $f4, 0x0048(s0)            # 80993508
    beq     $zero, $zero, lbl_8098F8A4 
    sb      $zero, 0x0024(s0)          # 809934E4
lbl_8098F830:
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    mfc1    a2, $f20                   
    mfc1    a3, $f22                   
    lui     $at, 0x0001                # $at = 00010000
    addu    s1, s2, $at                
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lui     $at, %hi(var_80991F1C)     # $at = 80990000
    lwc1    $f18, %lo(var_80991F1C)($at) 
    lui     a2, 0x3F19                 # a2 = 3F190000
    mfc1    a3, $f22                   
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x004C             # a0 = 8099350C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lw      t7, 0x1DE4(s1)             # 00001DE4
    addiu   a0, s0, 0x0030             # a0 = 809934F0
    addiu   a1, $zero, 0x005F          # a1 = 0000005F
    andi    t2, t7, 0x0003             # t2 = 00000000
    bne     t2, $zero, lbl_8098F8A4    
    sll     a2, s5, 16                 
    sll     a3, s5, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_8098F8A4:
    lwc1    $f4, 0x0048(s0)            # 80993508
lbl_8098F8A8:
    lwc1    $f16, 0x004C(s0)           # 8099350C
    lbu     v0, 0x0024(s0)             # 809934E4
    add.s   $f10, $f4, $f16            
    swc1    $f10, 0x0048(s0)           # 80993508
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_8098F8BC:
    bnel    v0, $at, lbl_8098FAA4      
    addiu   s6, s6, 0x0001             # s6 = 00000002
    lh      t3, 0x002E(s0)             # 809934EE
    lw      s1, 0x0054(s0)             # 80993514
    addiu   t0, t3, 0x157C             # t0 = 0000157C
    sh      t0, 0x002E(s0)             # 809934EE
    jal     func_800636C4              # sins?
    lh      a0, 0x002E(s0)             # 809934EE
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lw      a1, 0x0044(s0)             # 80993504
    mfc1    a2, $f20                   
    mul.s   $f8, $f0, $f6              
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    addiu   a0, s0, 0x0040             # a0 = 80993500
    trunc.w.s $f18, $f8                  
    mfc1    t5, $f18                   
    nop
    addiu   t9, t5, 0x0050             # t9 = 00000050
    sh      t9, 0x003E(s0)             # 809934FE
    jal     func_80064178              
    swc1    $f22, 0x0010($sp)          
    lwc1    $f4, 0x0048(s0)            # 80993508
    lwc1    $f16, 0x0024(s1)           # 00000024
    lwc1    $f6, 0x004C(s0)            # 8099350C
    lh      v0, 0x0028(s0)             # 809934E8
    add.s   $f10, $f4, $f16            
    lwc1    $f4, 0x0050(s0)            # 80993510
    swc1    $f10, 0x0000(s0)           # 809934C0
    lwc1    $f8, 0x0028(s1)            # 00000028
    add.s   $f18, $f6, $f8             
    swc1    $f18, 0x0004(s0)           # 809934C4
    lwc1    $f16, 0x002C(s1)           # 0000002C
    add.s   $f10, $f4, $f16            
    beq     v0, $zero, lbl_8098F968    
    swc1    $f10, 0x0008(s0)           # 809934C8
    beql    v0, s5, lbl_8098FA0C       
    lbu     t3, 0x0185(s1)             # 00000185
    beql    v0, s4, lbl_8098FA0C       
    lbu     t3, 0x0185(s1)             # 00000185
    beq     $zero, $zero, lbl_8098FAA4 
    addiu   s6, s6, 0x0001             # s6 = 00000003
lbl_8098F968:
    lhu     t8, 0x0026(s0)             # 809934E6
    addiu   a0, s1, 0x0024             # a0 = 00000024
    bnel    t8, $zero, lbl_8098FAA4    
    addiu   s6, s6, 0x0001             # s6 = 00000004
    jal     func_80063F00              
    or      a1, s0, $zero              # a1 = 809934C0
    sb      $zero, 0x0024(s0)          # 809934E4
    lui     $at, %hi(var_80991F20)     # $at = 80990000
    lwc1    $f8, %lo(var_80991F20)($at) 
    lwc1    $f6, 0x0040(s0)            # 80993500
    sll     s1, v0, 16                 
    sll     a2, v0, 16                 
    mul.s   $f18, $f6, $f8             
    sra     s1, s1, 16                 
    sra     a2, a2, 16                 
    sw      s5, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 809934C0
    trunc.w.s $f4, $f18                  
    mfc1    a3, $f4                    
    nop
    sll     a3, a3, 16                 
    jal     func_80985020              
    sra     a3, a3, 16                 
    lui     $at, %hi(var_80991F24)     # $at = 80990000
    lwc1    $f10, %lo(var_80991F24)($at) 
    lwc1    $f16, 0x0040(s0)           # 80993500
    sll     a2, s1, 16                 
    sra     a2, a2, 16                 
    mul.s   $f6, $f16, $f10            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 809934C0
    trunc.w.s $f8, $f6                   
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    jal     func_8098514C              
    sra     a3, a3, 16                 
    beq     $zero, $zero, lbl_8098FAA4 
    addiu   s6, s6, 0x0001             # s6 = 00000005
    lbu     t3, 0x0185(s1)             # 00000185
lbl_8098FA0C:
    addiu   a0, s1, 0x0024             # a0 = 00000024
    or      a1, s0, $zero              # a1 = 809934C0
    beql    t3, $zero, lbl_8098FAA4    
    addiu   s6, s6, 0x0001             # s6 = 00000006
    jal     func_80063F00              
    sb      $zero, 0x0024(s0)          # 809934E4
    lui     $at, %hi(var_80991F28)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F28)($at) 
    lwc1    $f18, 0x0040(s0)           # 80993500
    sll     s1, v0, 16                 
    sll     a2, v0, 16                 
    mul.s   $f16, $f18, $f4            
    sra     s1, s1, 16                 
    sra     a2, a2, 16                 
    sw      s5, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 809934C0
    trunc.w.s $f10, $f16                 
    mfc1    a3, $f10                   
    nop
    sll     a3, a3, 16                 
    jal     func_80985020              
    sra     a3, a3, 16                 
    lui     $at, %hi(var_80991F2C)     # $at = 80990000
    lwc1    $f8, %lo(var_80991F2C)($at) 
    lwc1    $f6, 0x0040(s0)            # 80993500
    sll     a2, s1, 16                 
    sra     a2, a2, 16                 
    mul.s   $f18, $f6, $f8             
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 809934C0
    trunc.w.s $f4, $f18                  
    mfc1    a3, $f4                    
    nop
    sll     a3, a3, 16                 
    jal     func_8098514C              
    sra     a3, a3, 16                 
    addiu   s6, s6, 0x0001             # s6 = 00000007
lbl_8098FAA4:
    sll     s6, s6, 16                 
    sra     s6, s6, 16                 
    slti    $at, s6, 0x0190            
    bne     $at, $zero, lbl_8098F1B4   
    addiu   s0, s0, 0x0058             # s0 = 80993518
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    lw      s2, 0x0034($sp)            
    lw      s3, 0x0038($sp)            
    lw      s4, 0x003C($sp)            
    lw      s5, 0x0040($sp)            
    lw      s6, 0x0044($sp)            
    lw      s7, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_8098FAEC:
    addiu   $sp, $sp, 0xFEB8           # $sp = FFFFFEB8
    sw      s1, 0x0034($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s8, 0x0050($sp)            
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    or      a2, a1, $zero              # a2 = 00000000
    lw      s2, 0x0000(a2)             # 00000000
    lui     a1, %hi(var_80991A5C)      # a1 = 80990000
    or      s6, $zero, $zero           # s6 = 00000000
    sw      s1, 0x0138($sp)            
    lh      a1, %lo(var_80991A5C)(a1)  
    sw      a2, 0x014C($sp)            
    jal     func_8009D2F0              
    or      a0, a2, $zero              # a0 = 00000000
    sw      v0, 0x0134($sp)            
    lui     $at, %hi(var_80991F30)     # $at = 80990000
    lwc1    $f24, %lo(var_80991F30)($at) 
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f22                  # $f22 = 32768.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
lbl_8098FB70:
    lbu     t6, 0x0024(s1)             # 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t7, 0x014C($sp)            
    bne     t6, $at, lbl_8098FCA8      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, t7, $at                
    bne     s6, $zero, lbl_8098FBE4    
    addiu   s7, s7, 0x4310             # s7 = 06014310
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x42A0             # s3 = 060142A0
    jal     func_8007E2C0              
    lw      a0, 0x0000(t7)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0x8282                 # t0 = 82820000
    ori     t0, t0, 0x1E00             # t0 = 82821E00
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8098FBE4:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     $at, 0xE6E6                # $at = E6E60000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lh      t4, 0x0036(s1)             # 00000036
    ori     $at, $at, 0xE600           # $at = E6E6E600
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = E6E6E600
    sw      t6, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000008
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 00000000
    lh      t7, 0x002E(s1)             # 0000002E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f8, $f6, $f22             
    mul.s   $f12, $f8, $f24            
    jal     func_800AAD4C              
    nop
    lui     $at, %hi(var_80991F34)     # $at = 80990000
    lwc1    $f16, %lo(var_80991F34)($at) 
    lwc1    $f10, 0x0040(s1)           # 00000040
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f10, $f16           
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s3, 0x0008             # t8 = 060142A8
    sw      t8, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t9, 0x0000(s3)             # 060142A0
    sw      v0, 0x0004(s3)             # 060142A4
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8098FCA8:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_8098FB70   
    addiu   s1, s1, 0x0058             # s1 = 00000058
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
lbl_8098FCCC:
    lbu     t1, 0x0024(s1)             # 0000007C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      v0, 0x014C($sp)            
    bne     t1, $at, lbl_8098FED4      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, v0, $at                
    bne     s6, $zero, lbl_8098FD20    
    addiu   s7, s7, 0x0368             # s7 = 06010368
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x0338             # s3 = 06010338
    jal     func_8007E2C0              
    lw      a0, 0x0000(v0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8098FD20:
    lwc1    $f12, 0x0000(s1)           # 00000058
    lwc1    $f14, 0x0004(s1)           # 0000005C
    lw      a2, 0x0008(s1)             # 00000060
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0040(s1)           # 00000098
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lh      t3, 0x002E(s1)             # 00000086
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    div.s   $f6, $f4, $f22             
    mul.s   $f12, $f6, $f24            
    jal     func_800AAD4C              
    nop
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s3, 0x0008             # t4 = 06010340
    sw      t4, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t5, 0x0000(s3)             # 06010338
    sw      v0, 0x0004(s3)             # 0601033C
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lh      t0, 0x0028(s1)             # 00000080
    lui     a1, %hi(var_80991B20)      # a1 = 80990000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    lw      a1, %lo(var_80991B20)(a1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, a1,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lh      t1, 0x0036(s1)             # 0000008E
    lh      t7, 0x0032(s1)             # 0000008A
    lh      t5, 0x0030(s1)             # 00000088
    andi    t3, t1, 0x00FF             # t3 = 00000000
    lh      t1, 0x0034(s1)             # 0000008C
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t2, t5, 24                 
    or      t6, t3, t2                 # t6 = 00000000
    sll     t9, t8, 16                 
    andi    t4, t1, 0x00FF             # t4 = 00000000
    sll     t5, t4,  8                 
    or      t0, t6, t9                 # t0 = 00000008
    or      t3, t0, t5                 # t3 = 00000008
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lh      t9, 0x003E(s1)             # 00000096
    lh      t2, 0x003A(s1)             # 00000092
    lh      t0, 0x0038(s1)             # 00000090
    andi    t1, t9, 0x00FF             # t1 = 00000008
    lh      t9, 0x003C(s1)             # 00000094
    andi    t7, t2, 0x00FF             # t7 = 00000008
    sll     t5, t0, 24                 
    or      t3, t1, t5                 # t3 = 00000008
    sll     t8, t7, 16                 
    andi    t4, t9, 0x00FF             # t4 = 00000008
    sll     t0, t4,  8                 
    or      t6, t3, t8                 # t6 = 00000008
    or      t1, t6, t0                 # t1 = 00000008
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8098FED4:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_8098FCCC   
    addiu   s1, s1, 0x0058             # s1 = 000000B0
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
lbl_8098FEF8:
    lbu     t2, 0x0024(s1)             # 000000D4
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     s7, 0x0601                 # s7 = 06010000
    bnel    t2, $at, lbl_809900C0      
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_8098FFA4    
    addiu   s7, s7, 0x8068             # s7 = 06008068
    lui     v0, 0x0406                 # v0 = 04060000
    lw      t7, 0x014C($sp)            
    addiu   v0, v0, 0xB2E0             # v0 = 0405B2E0
    sll     t3, v0,  4                 
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    srl     t8, t3, 28                 
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    sll     t9, t8,  2                 
    and     t6, v0, $at                
    lui     s3, 0x0601                 # s3 = 06010000
    lw      a0, 0x0000(t7)             # 00000008
    sw      t6, 0x0058($sp)            
    addiu   s3, s3, 0x8030             # s3 = 06008030
    jal     func_8007E2C0              
    addu    s4, t9, t4                 
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t7, 0x0058($sp)            
    lw      t2, 0x0000(s4)             # 00000000
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t2, t7                 
    addu    t8, t3, $at                
    sw      t8, 0x0004(s0)             # 00000004
lbl_8098FFA4:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    lui     $at, 0x0064                # $at = 00640000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lh      t1, 0x003E(s1)             # 000000EE
    andi    t5, t1, 0x00FF             # t5 = 00000008
    or      t2, t5, $at                # t2 = 00640008
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     $at, 0x0096                # $at = 00960000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lh      t8, 0x0036(s1)             # 000000E6
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t4, t9, $at                # t4 = 00960000
    sw      t4, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 000000B0
    lwc1    $f14, 0x0004(s1)           # 000000B4
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 000000B8
    lh      t6, 0x0028(s1)             # 000000D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     t6, $at, lbl_80990048      
    lw      a0, 0x014C($sp)            
    lui     $at, %hi(var_80991F38)     # $at = 80990000
    jal     func_800AA9E0              
    lwc1    $f12, %lo(var_80991F38)($at) 
    beq     $zero, $zero, lbl_8099005C 
    lwc1    $f12, 0x0040(s1)           # 000000F0
lbl_80990048:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, a0, $at                
    lwc1    $f12, 0x0040(s1)           # 000000F0
lbl_8099005C:
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xDA38                 # t2 = DA380000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s3, 0x02D0(s2)             # 000002D0
    ori     t2, t2, 0x0003             # t2 = DA380003
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t5, s3, 0x0008             # t5 = 06008038
    sw      t5, 0x02D0(s2)             # 000002D0
    jal     func_800AB900              
    sw      t2, 0x0000(s3)             # 06008030
    sw      v0, 0x0004(s3)             # 06008034
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_809900C0:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_8098FEF8   
    addiu   s1, s1, 0x0058             # s1 = 00000108
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0007          # s7 = 00000007
lbl_809900E4:
    lbu     t3, 0x0024(s1)             # 0000012C
    bnel    s7, t3, lbl_80990200       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_80990148    
    lw      s4, 0x0054(s1)             # 0000015C
    lw      t8, 0x014C($sp)            
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x14B8             # s3 = 060114B8
    jal     func_8007E298              
    lw      a0, 0x0000(t8)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s2)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lh      t6, 0x003E(s1)             # 00000146
    andi    s6, s6, 0x00FF             # s6 = 00000001
    andi    t0, t6, 0x00FF             # t0 = 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_80990148:
    lh      t5, 0x0028(s1)             # 00000130
    lw      s0, 0x0134($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t5, $at, lbl_80990194      
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    or      a0, s0, $zero              # a0 = 0000005C
    jal     func_80063EB8              
    or      a1, s1, $zero              # a1 = 00000108
    swc1    $f0, 0x0068($sp)           
    or      a0, s0, $zero              # a0 = 0000005C
    jal     func_80063EB8              
    addiu   a1, s4, 0x0024             # a1 = 00000024
    lwc1    $f8, 0x0068($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    sub.s   $f10, $f8, $f0             
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_809901FC               
lbl_80990194:
    lui     s4, 0x0601                 # s4 = 06010000
    addiu   s4, s4, 0x1548             # s4 = 06011548
    lwc1    $f12, 0x0000(s1)           # 00000108
    lwc1    $f14, 0x0004(s1)           # 0000010C
    lw      a2, 0x0008(s1)             # 00000110
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0040(s1)           # 00000148
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 060114C0
    sw      t2, 0x02C0(s2)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t7, 0x0000(s3)             # 060114B8
    sw      v0, 0x0004(s3)             # 060114BC
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t3, s0, 0x0008             # t3 = 00000064
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_809901FC:
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_80990200:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_809900E4   
    addiu   s1, s1, 0x0058             # s1 = 00000160
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0008          # s7 = 00000008
lbl_80990224:
    lbu     t8, 0x0024(s1)             # 00000184
    lui     s4, 0x0601                 # s4 = 06010000
    bnel    s7, t8, lbl_80990434       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_8099026C    
    addiu   s4, s4, 0x1850             # s4 = 06011850
    lw      t9, 0x014C($sp)            
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x17A0             # s3 = 060117A0
    jal     func_8007E298              
    lw      a0, 0x0000(t9)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t4, s0, 0x0008             # t4 = 00000064
    sw      t4, 0x02C0(s2)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_8099026C:
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t0, 0xE700                 # t0 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t6, s0, 0x0008             # t6 = 00000064
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000060
    sw      t0, 0x0000(s0)             # 0000005C
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t1, s0, 0x0008             # t1 = 00000064
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      t5, 0x0000(s0)             # 0000005C
    lh      t2, 0x0036(s1)             # 00000196
    andi    t7, t2, 0x00FF             # t7 = 00000000
    or      t3, t7, $at                # t3 = FFFFFF00
    sw      t3, 0x0004(s0)             # 00000060
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000064
    sw      t8, 0x02C0(s2)             # 000002C0
    sw      t9, 0x0000(s0)             # 0000005C
    lh      t4, 0x0036(s1)             # 00000196
    lh      t7, 0x0032(s1)             # 00000192
    lh      t1, 0x0030(s1)             # 00000190
    andi    t6, t4, 0x00FF             # t6 = 00000064
    lh      t4, 0x0034(s1)             # 00000194
    andi    t3, t7, 0x00FF             # t3 = 00000000
    sll     t5, t1, 24                 
    or      t2, t6, t5                 # t2 = FB000064
    sll     t8, t3, 16                 
    andi    t0, t4, 0x00FF             # t0 = 00000064
    sll     t1, t0,  8                 
    or      t9, t2, t8                 # t9 = FB000064
    or      t6, t9, t1                 # t6 = FB000064
    sw      t6, 0x0004(s0)             # 00000060
    lwc1    $f12, 0x0000(s1)           # 00000160
    lwc1    $f14, 0x0004(s1)           # 00000164
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000168
    lh      a0, 0x002A(s1)             # 0000018A
    lh      a1, 0x002C(s1)             # 0000018C
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0040(s1)           # 000001A0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_80991F3C)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F3C)($at) 
    lwc1    $f18, 0x0048(s1)           # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f18, $f4            
    jal     func_800AA9E0              
    nop
    lui     $at, %hi(var_80991F40)     # $at = 80990000
    lwc1    $f8, %lo(var_80991F40)($at) 
    lwc1    $f6, 0x0048(s1)            # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lui     $at, %hi(var_80991F44)     # $at = 80990000
    lwc1    $f16, %lo(var_80991F44)($at) 
    lwc1    $f10, 0x0048(s1)           # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16           
    jal     func_800AAD4C              
    nop
    lwc1    $f0, 0x0044(s1)            # 000001A4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f12, $f20, $f0            
    add.s   $f14, $f0, $f20            
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lui     $at, %hi(var_80991F48)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F48)($at) 
    lwc1    $f18, 0x0048(s1)           # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f18, $f4            
    jal     func_800AAD4C              
    neg.s   $f12, $f12                 
    lui     $at, %hi(var_80991F4C)     # $at = 80990000
    lwc1    $f8, %lo(var_80991F4C)($at) 
    lwc1    $f6, 0x0048(s1)            # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    neg.s   $f12, $f12                 
    lui     $at, %hi(var_80991F50)     # $at = 80990000
    lwc1    $f16, %lo(var_80991F50)($at) 
    lwc1    $f10, 0x0048(s1)           # 000001A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t5, s3, 0x0008             # t5 = 060117A8
    sw      t5, 0x02C0(s2)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t7, 0x0000(s3)             # 060117A0
    sw      v0, 0x0004(s3)             # 060117A4
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t3, s0, 0x0008             # t3 = 00000064
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_80990434:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_80990224   
    addiu   s1, s1, 0x0058             # s1 = 000001B8
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0005          # s7 = 00000005
lbl_80990458:
    lbu     t2, 0x0024(s1)             # 000001DC
    lui     s4, 0x0601                 # s4 = 06010000
    bnel    s7, t2, lbl_80990584       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_809904A0    
    addiu   s4, s4, 0x2238             # s4 = 06012238
    lw      t8, 0x014C($sp)            
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x21B0             # s3 = 060121B0
    jal     func_8007E2C0              
    lw      a0, 0x0000(t8)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t4, s0, 0x0008             # t4 = 00000064
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_809904A0:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t0, s0, 0x0008             # t0 = 00000064
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000060
    sw      t9, 0x0000(s0)             # 0000005C
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     $at, 0xFFFF                # $at = FFFF0000
    addiu   t1, s0, 0x0008             # t1 = 00000064
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 0000005C
    lh      t5, 0x0036(s1)             # 000001EE
    ori     $at, $at, 0x3200           # $at = FFFF3200
    andi    t7, t5, 0x00FF             # t7 = 00000000
    or      t3, t7, $at                # t3 = FFFF3200
    sw      t3, 0x0004(s0)             # 00000060
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t2, s0, 0x0008             # t2 = 00000064
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s0)             # 0000005C
    lh      t4, 0x0036(s1)             # 000001EE
    andi    t0, t4, 0x00FF             # t0 = 00000064
    or      t9, t0, $at                # t9 = FFFFFF64
    sw      t9, 0x0004(s0)             # 00000060
    lwc1    $f12, 0x0000(s1)           # 000001B8
    lwc1    $f14, 0x0004(s1)           # 000001BC
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 000001C0
    lh      a0, 0x002A(s1)             # 000001E2
    lh      a1, 0x002C(s1)             # 000001E4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0040(s1)           # 000001F8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 060121B8
    sw      t1, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t6, 0x0000(s3)             # 060121B0
    sw      v0, 0x0004(s3)             # 060121B4
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t5, s0, 0x0008             # t5 = 00000064
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_80990584:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_80990458   
    addiu   s1, s1, 0x0058             # s1 = 00000210
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
lbl_809905A4:
    lbu     t7, 0x0024(s1)             # 00000234
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t3, 0x014C($sp)            
    bne     t7, $at, lbl_809906DC      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, t3, $at                
    bne     s6, $zero, lbl_80990618    
    addiu   s7, s7, 0x4310             # s7 = 06014310
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0x42A0             # s3 = 060142A0
    jal     func_8007E204              
    lw      a0, 0x0000(t3)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0x8282                 # t4 = 82820000
    ori     t4, t4, 0x1E00             # t4 = 82821E00
    addiu   t2, s0, 0x0008             # t2 = 00000064
    sw      t2, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0000(s0)             # 0000005C
    sw      t4, 0x0004(s0)             # 00000060
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t0, s0, 0x0008             # t0 = 00000064
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_80990618:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     $at, 0xE6E6                # $at = E6E60000
    addiu   t9, s0, 0x0008             # t9 = 00000064
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0000(s0)             # 0000005C
    lh      t6, 0x0036(s1)             # 00000246
    ori     $at, $at, 0xE600           # $at = E6E6E600
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t5, t6, 0x00FF             # t5 = 00000000
    or      t7, t5, $at                # t7 = E6E6E600
    sw      t7, 0x0004(s0)             # 00000060
    lwc1    $f12, 0x0000(s1)           # 00000210
    lwc1    $f14, 0x0004(s1)           # 00000214
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000218
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 06012238
    lh      t3, 0x002E(s1)             # 0000023E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    div.s   $f6, $f4, $f22             
    mul.s   $f12, $f6, $f24            
    jal     func_800AAD4C              
    nop
    lui     $at, %hi(var_80991F54)     # $at = 80990000
    lwc1    $f10, %lo(var_80991F54)($at) 
    lwc1    $f8, 0x0040(s1)            # 00000250
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f8, $f10            
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 060142A8
    sw      t2, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t8, 0x0000(s3)             # 060142A0
    sw      v0, 0x0004(s3)             # 060142A4
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t4, s0, 0x0008             # t4 = 00000064
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_809906DC:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_809905A4   
    addiu   s1, s1, 0x0058             # s1 = 00000268
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0138($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0003          # s7 = 00000003
lbl_80990704:
    lbu     t0, 0x0024(s1)             # 0000028C
    lui     s4, 0x0600                 # s4 = 06000000
    bnel    s7, t0, lbl_80990840       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_8099076C    
    addiu   s4, s4, 0x7B70             # s4 = 06007B70
    lw      t9, 0x014C($sp)            
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   s3, s3, 0x7B08             # s3 = 06007B08
    jal     func_8007E2C0              
    lw      a0, 0x0000(t9)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xFFFF                 # t5 = FFFF0000
    ori     t5, t5, 0x6400             # t5 = FFFF6400
    addiu   t1, s0, 0x0008             # t1 = 00000064
    sw      t1, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(s0)             # 0000005C
    sw      t5, 0x0004(s0)             # 00000060
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t7, s0, 0x0008             # t7 = 00000064
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
lbl_8099076C:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t3, s0, 0x0008             # t3 = 00000064
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0000(s0)             # 0000005C
    lh      t8, 0x0036(s1)             # 0000029E
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t4, t8, 0x00FF             # t4 = 00000000
    or      t0, t4, $at                # t0 = FFFFFF00
    sw      t0, 0x0004(s0)             # 00000060
    lwc1    $f12, 0x0000(s1)           # 00000268
    lwc1    $f14, 0x0004(s1)           # 0000026C
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000270
    lh      t9, 0x002E(s1)             # 00000296
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f4, $f18, $f22            
    mul.s   $f12, $f4, $f24            
    jal     func_800AAD4C              
    nop
    lh      t1, 0x002C(s1)             # 00000294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    div.s   $f10, $f8, $f22            
    mul.s   $f12, $f10, $f24           
    jal     func_800AAB94              
    nop
    lwc1    $f12, 0x0040(s1)           # 000002A8
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t6, s3, 0x0008             # t6 = 06007B10
    sw      t6, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t5, 0x0000(s3)             # 06007B08
    sw      v0, 0x0004(s3)             # 06007B0C
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000064
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000060
    sw      s8, 0x0000(s0)             # 0000005C
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_80990840:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0190            
    bne     $at, $zero, lbl_80990704   
    addiu   s1, s1, 0x0058             # s1 = 000002C0
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0148           # $sp = 00000000


func_80990890:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   v1, $sp, 0x0044            # v1 = FFFFFFEC
    lw      t6, 0x1C44(a0)             # 00001C44
    lui     t7, %hi(var_80991B40)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991B40)  # t7 = 80991B40
    sw      t6, 0x0054($sp)            
    lw      t9, 0x0000(t7)             # 80991B40
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t9, 0x0000(v1)             # FFFFFFEC
    lw      t8, 0x0004(t7)             # 80991B44
    sw      t8, 0x0004(v1)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80991B48
    sw      t9, 0x0008(v1)             # FFFFFFF4
lbl_809908DC:
    lbu     t0, 0x0024(s0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t0, $zero, lbl_80990B60    
    sra     v0, v0, 16                 
    sb      t1, 0x0024(s0)             # 00000024
    sw      a2, 0x0054(s0)             # 00000054
    lw      t3, 0x0000(v1)             # FFFFFFEC
    sw      t3, 0x0000(s0)             # 00000000
    lw      t2, 0x0004(v1)             # FFFFFFF0
    sw      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0008(v1)             # FFFFFFF4
    sw      t3, 0x0008(s0)             # 00000008
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0060($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lw      a2, 0x0060($sp)            
    lui     t9, %hi(var_80991A40)      # t9 = 80990000
    mul.s   $f6, $f0, $f4              
    addiu   t9, t9, %lo(var_80991A40)  # t9 = 80991A40
    addiu   v1, $sp, 0x0028            # v1 = FFFFFFD0
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    addiu   t8, t7, 0x006F             # t8 = 0000006F
    sh      t8, 0x0026(s0)             # 00000026
    lw      t1, 0x0000(t9)             # 80991A40
    sw      t1, 0x0000(v1)             # FFFFFFD0
    lw      t0, 0x0004(t9)             # 80991A44
    lw      t3, 0x0000(v1)             # FFFFFFD0
    sw      t0, 0x0004(v1)             # FFFFFFD4
    lw      t1, 0x0008(t9)             # 80991A48
    sw      t1, 0x0008(v1)             # FFFFFFD8
    sw      t3, 0x0018(s0)             # 00000018
    lw      t2, 0x0004(v1)             # FFFFFFD4
    sw      t2, 0x001C(s0)             # 0000001C
    lw      t3, 0x0008(v1)             # FFFFFFD8
    sw      t3, 0x0020(s0)             # 00000020
    lw      t5, 0x0000(v1)             # FFFFFFD0
    sw      t5, 0x000C(s0)             # 0000000C
    lw      t4, 0x0004(v1)             # FFFFFFD4
    sw      t4, 0x0010(s0)             # 00000010
    lw      t5, 0x0008(v1)             # FFFFFFD8
    sw      t5, 0x0014(s0)             # 00000014
    lbu     v0, 0x006F($sp)            
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sltiu   $at, t6, 0x0006            
    beq     $at, $zero, lbl_80990B1C   
    sh      v0, 0x0028(s0)             # 00000028
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80991F58)     # $at = 80990000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80991F58)($at) 
    jr      t6                         
    nop
var_809909BC:
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0024(s0)             # 00000024
var_809909C4:
    lw      t9, 0x0000(s1)             # 00000000
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE0
    addiu   a0, a2, 0x0024             # a0 = 00000024
    sw      t9, 0x0000(a1)             # FFFFFFE0
    lw      t8, 0x0004(s1)             # 00000004
    sw      t8, 0x0004(a1)             # FFFFFFE4
    lw      t9, 0x0008(s1)             # 00000008
    sw      t9, 0x0008(a1)             # FFFFFFE8
    lwc1    $f10, 0x0038($sp)          
    lwc1    $f16, 0x0024(a2)           # 00000024
    lwc1    $f4, 0x0040($sp)           
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0038($sp)          
    lwc1    $f6, 0x002C(a2)            # 0000002C
    sw      a2, 0x0060($sp)            
    sw      a0, 0x0024($sp)            
    add.s   $f8, $f4, $f6              
    jal     func_80063EB8              
    swc1    $f8, 0x0040($sp)           
    lw      a2, 0x0060($sp)            
    lw      a0, 0x0024($sp)            
    swc1    $f0, 0x0048(s0)            # 00000048
    lw      a1, 0x0118(a2)             # 00000118
    jal     func_80063F34              
    addiu   a1, a1, 0x01C8             # a1 = 000001C8
    beq     $zero, $zero, lbl_80990B1C 
    sh      v0, 0x002A(s0)             # 0000002A
var_80990A30:
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x0024(s0)             # 00000024
var_80990A38:
    lwc1    $f10, 0x0000(s1)           # 00000000
    swc1    $f10, 0x0048(s0)           # 00000048
    lwc1    $f16, 0x0008(s1)           # 00000008
    beq     $zero, $zero, lbl_80990B1C 
    swc1    $f16, 0x0050(s0)           # 00000050
var_80990A4C:
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0024(s0)             # 00000024
    lwc1    $f4, 0x0024(a2)            # 00000024
    lwc1    $f18, 0x0000(s1)           # 00000000
    addiu   t2, $zero, 0x006F          # t2 = 0000006F
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0028(a2)           # 00000028
    lwc1    $f8, 0x0004(s1)            # 00000004
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0004(s0)           # 00000004
    lwc1    $f4, 0x002C(a2)            # 0000002C
    lwc1    $f18, 0x0008(s1)           # 00000008
    sh      t2, 0x0026(s0)             # 00000026
    add.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_80990B1C 
    swc1    $f6, 0x0008(s0)            # 00000008
var_80990A90:
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sb      t3, 0x0024(s0)             # 00000024
    lui     $at, %hi(var_80991F70)     # $at = 80990000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80991F70)($at) 
    trunc.w.s $f8, $f0                   
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t5, $f8                    
    jal     func_80026D90              
    sh      t5, 0x0052($sp)            
    lh      t7, 0x0052($sp)            
    lw      t6, 0x0054($sp)            
    lui     $at, 0x4170                # $at = 41700000
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    v0, t6, t8                 
    lwc1    $f10, 0x08F8(v0)           # 000008F8
    mtc1    $at, $f12                  # $f12 = 15.00
    add.s   $f16, $f0, $f10            
    swc1    $f16, 0x0000(s0)           # 00000000
    jal     func_80026D90              
    sw      v0, 0x0024($sp)            
    lw      t9, 0x0024($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f18, 0x08FC(t9)           # 000008FC
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0004(s0)            # 00000004
    lw      t0, 0x0024($sp)            
    lwc1    $f6, 0x0900(t0)            # 00000900
    add.s   $f8, $f0, $f6              
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_80990B1C:
    lwc1    $f10, 0x0004(s1)           # 00000004
    swc1    $f10, 0x004C(s0)           # 0000004C
    lh      t1, 0x006A($sp)            
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f12, $f16                 
    jal     func_80026D64              
    swc1    $f12, 0x0024($sp)          
    lwc1    $f12, 0x0024($sp)          
    lui     $at, %hi(var_80991F74)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F74)($at) 
    add.s   $f18, $f0, $f12            
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sh      t2, 0x0036(s0)             # 00000036
    mul.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_80990B6C 
    swc1    $f6, 0x0040(s0)            # 00000040
lbl_80990B60:
    slti    $at, v0, 0x0190            
    bne     $at, $zero, lbl_809908DC   
    addiu   s0, s0, 0x0058             # s0 = 00000058
lbl_80990B6C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80990B80:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0040($sp)            
    addiu   v1, $sp, 0x0034            # v1 = FFFFFFF4
    lui     t6, %hi(var_80991B4C)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991B4C)  # t6 = 80991B4C
    lw      t8, 0x0000(t6)             # 80991B4C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t8, 0x0000(v1)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80991B50
    sw      t7, 0x0004(v1)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80991B54
    sw      t8, 0x0008(v1)             # FFFFFFFC
lbl_80990BB8:
    lbu     t9, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t9, $zero, lbl_80990CF0    
    sra     v0, v0, 16                 
    sb      t0, 0x0024(a1)             # 00000024
    sw      a2, 0x0054(a1)             # 00000054
    lw      t2, 0x0000(v1)             # FFFFFFF4
    lui     t3, %hi(var_80991A40)      # t3 = 80990000
    addiu   t3, t3, %lo(var_80991A40)  # t3 = 80991A40
    sw      t2, 0x0000(a1)             # 00000000
    lw      t1, 0x0004(v1)             # FFFFFFF8
    addiu   v0, $sp, 0x0024            # v0 = FFFFFFE4
    sw      t1, 0x0004(a1)             # 00000004
    lw      t2, 0x0008(v1)             # FFFFFFFC
    sw      t2, 0x0008(a1)             # 00000008
    lw      t5, 0x0000(t3)             # 80991A40
    sw      t5, 0x0000(v0)             # FFFFFFE4
    lw      t4, 0x0004(t3)             # 80991A44
    lw      t7, 0x0000(v0)             # FFFFFFE4
    sw      t4, 0x0004(v0)             # FFFFFFE8
    lw      t5, 0x0008(t3)             # 80991A48
    sw      t5, 0x0008(v0)             # FFFFFFEC
    sw      t7, 0x0018(a1)             # 00000018
    lw      t6, 0x0004(v0)             # FFFFFFE8
    sw      t6, 0x001C(a1)             # 0000001C
    lw      t7, 0x0008(v0)             # FFFFFFEC
    sw      t7, 0x0020(a1)             # 00000020
    lw      t9, 0x0000(v0)             # FFFFFFE4
    sw      t9, 0x000C(a1)             # 0000000C
    lw      t8, 0x0004(v0)             # FFFFFFE8
    sw      t8, 0x0010(a1)             # 00000010
    lw      t9, 0x0008(v0)             # FFFFFFEC
    sh      $zero, 0x0028(a1)          # 00000028
    sw      t9, 0x0014(a1)             # 00000014
    lwc1    $f4, 0x0000(a3)            # 00000000
    swc1    $f4, 0x0048(a1)            # 00000048
    lwc1    $f6, 0x0008(a3)            # 00000008
    swc1    $f6, 0x0050(a1)            # 00000050
    lwc1    $f8, 0x0004(a3)            # 00000004
    swc1    $f8, 0x004C(a1)            # 0000004C
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0044($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      a1, 0x0044($sp)            
    addiu   t5, $zero, 0x00E6          # t5 = 000000E6
    mul.s   $f16, $f0, $f10            
    sh      t5, 0x0036(a1)             # 00000036
    lh      v0, 0x0036(a1)             # 00000036
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x00DC          # t7 = 000000DC
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    sh      $zero, 0x0038(a1)          # 00000038
    trunc.w.s $f18, $f16                 
    sh      t6, 0x003A(a1)             # 0000003A
    sh      t7, 0x003C(a1)             # 0000003C
    sh      t8, 0x003E(a1)             # 0000003E
    mfc1    t3, $f18                   
    sh      v0, 0x0034(a1)             # 00000034
    sh      v0, 0x0032(a1)             # 00000032
    addiu   t4, t3, 0x006F             # t4 = 0000006F
    sh      t4, 0x0026(a1)             # 00000026
    sh      v0, 0x0030(a1)             # 00000030
    lh      t9, 0x0052($sp)            
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f12, $f4                  
    jal     func_80026D64              
    swc1    $f12, 0x001C($sp)          
    lwc1    $f12, 0x001C($sp)          
    lui     $at, %hi(var_80991F78)     # $at = 80990000
    lwc1    $f8, %lo(var_80991F78)($at) 
    add.s   $f6, $f0, $f12             
    lw      a1, 0x0044($sp)            
    mul.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_80990CFC 
    swc1    $f10, 0x0040(a1)           # 00000040
lbl_80990CF0:
    slti    $at, v0, 0x0190            
    bne     $at, $zero, lbl_80990BB8   
    addiu   a1, a1, 0x0058             # a1 = 00000058
lbl_80990CFC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80990D0C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0048($sp)            
    sw      a3, 0x0054($sp)            
    lui     t7, %hi(var_80991B58)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991B58)  # t7 = 80991B58
    lw      t9, 0x0000(t7)             # 80991B58
    addiu   t6, $sp, 0x0038            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80991B5C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80991B60
    lui     t1, %hi(var_80991B64)      # t1 = 80990000
    addiu   t1, t1, %lo(var_80991B64)  # t1 = 80991B64
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 80991B64
    addiu   t0, $sp, 0x002C            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 80991B68
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 80991B6C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x0190          # v1 = 00000190
    sw      t2, 0x0004(t0)             # FFFFFFE8
    sw      t3, 0x0008(t0)             # FFFFFFEC
lbl_80990D74:
    lbu     t4, 0x0024(s0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     t4, $zero, lbl_80990EBC    
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sb      t5, 0x0024(s0)             # 00000024
    lw      t7, 0x0000(a2)             # 00000000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t6, 0x0004(a2)             # 00000004
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0008(a2)             # 00000008
    sh      $zero, 0x0028(s0)          # 00000028
    sw      t7, 0x0008(s0)             # 00000008
    jal     func_800636C4              # sins?
    lh      a0, 0x005A($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mul.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0028($sp)           
    swc1    $f0, 0x0024($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x005E($sp)            
    lwc1    $f10, 0x0028($sp)          
    neg.s   $f8, $f0                   
    lwc1    $f18, 0x0024($sp)          
    mul.s   $f16, $f8, $f10            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    add.s   $f4, $f16, $f18            
    jal     func_80026D90              
    swc1    $f4, 0x002C($sp)           
    swc1    $f0, 0x0024($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x005E($sp)            
    lwc1    $f8, 0x0028($sp)           
    neg.s   $f6, $f0                   
    lwc1    $f16, 0x0024($sp)          
    mul.s   $f10, $f6, $f8             
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFE4
    lui     $at, %hi(var_80991F7C)     # $at = 80990000
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0034($sp)          
    lw      t0, 0x0000(t8)             # FFFFFFE4
    sw      t0, 0x000C(s0)             # 0000000C
    lw      t9, 0x0004(t8)             # FFFFFFE8
    sw      t9, 0x0010(s0)             # 00000010
    lw      t0, 0x0008(t8)             # FFFFFFEC
    sw      t0, 0x0014(s0)             # 00000014
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991F7C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t1, $sp, 0x0038            # t1 = FFFFFFF0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sub.s   $f6, $f0, $f4              
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    swc1    $f6, 0x003C($sp)           
    lw      t3, 0x0000(t1)             # FFFFFFF0
    sw      t3, 0x0018(s0)             # 00000018
    lw      t2, 0x0004(t1)             # FFFFFFF4
    sw      t2, 0x001C(s0)             # 0000001C
    lw      t3, 0x0008(t1)             # FFFFFFF8
    sh      t4, 0x0026(s0)             # 00000026
    sh      t5, 0x003E(s0)             # 0000003E
    sh      t6, 0x0036(s0)             # 00000036
    sw      t3, 0x0020(s0)             # 00000020
    lh      t7, 0x0056($sp)            
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f12, $f8                  
    jal     func_80026D64              
    swc1    $f12, 0x0020($sp)          
    lwc1    $f12, 0x0020($sp)          
    lui     $at, %hi(var_80991F80)     # $at = 80990000
    lwc1    $f16, %lo(var_80991F80)($at) 
    add.s   $f10, $f0, $f12            
    mul.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_80990EC4 
    swc1    $f18, 0x0040(s0)           # 00000040
lbl_80990EBC:
    bne     v0, v1, lbl_80990D74       
    addiu   s0, s0, 0x0058             # s0 = 00000058
lbl_80990EC4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80990ED8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    sw      a3, 0x004C($sp)            
    lui     t7, %hi(var_80991B70)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991B70)  # t7 = 80991B70
    lw      t9, 0x0000(t7)             # 80991B70
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80991B74
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80991B78
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x0190          # v1 = 00000190
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
lbl_80990F1C:
    lbu     t0, 0x0024(s0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     t0, $zero, lbl_80991058    
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t1, 0x0024(s0)             # 00000024
    lw      t3, 0x0000(a2)             # 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t3, 0x0000(s0)             # 00000000
    lw      t2, 0x0004(a2)             # 00000004
    sw      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0008(a2)             # 00000008
    sh      t4, 0x0028(s0)             # 00000028
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0008(s0)             # 00000008
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lh      a0, 0x004E($sp)            
    mul.s   $f6, $f0, $f4              
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0038($sp)           
    lwc1    $f8, 0x0038($sp)           
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    mul.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0020($sp)          
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    lh      a0, 0x004E($sp)            
    add.s   $f18, $f0, $f16            
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024($sp)          
    lwc1    $f4, 0x0038($sp)           
    addiu   t5, $sp, 0x0020            # t5 = FFFFFFE0
    lui     $at, %hi(var_80991F84)     # $at = 80990000
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x0028($sp)           
    lw      t7, 0x0000(t5)             # FFFFFFE0
    sw      t7, 0x000C(s0)             # 0000000C
    lw      t6, 0x0004(t5)             # FFFFFFE4
    sw      t6, 0x0010(s0)             # 00000010
    lw      t7, 0x0008(t5)             # FFFFFFE8
    sw      t7, 0x0014(s0)             # 00000014
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991F84)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFEC
    lui     t1, %hi(var_8099BE42)      # t1 = 809A0000
    sub.s   $f10, $f0, $f8             
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    swc1    $f10, 0x0030($sp)          
    lw      t0, 0x0000(t8)             # FFFFFFEC
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    sw      t0, 0x0018(s0)             # 00000018
    lw      t9, 0x0004(t8)             # FFFFFFF0
    sw      t9, 0x001C(s0)             # 0000001C
    lw      t0, 0x0008(t8)             # FFFFFFF4
    sw      t0, 0x0020(s0)             # 00000020
    lb      t1, %lo(var_8099BE42)(t1)  
    slti    $at, t1, 0x0014            
    beql    $at, $zero, lbl_8099102C   
    sh      t3, 0x0026(s0)             # 00000026
    beq     $zero, $zero, lbl_8099102C 
    sh      t2, 0x0026(s0)             # 00000026
    sh      t3, 0x0026(s0)             # 00000026
lbl_8099102C:
    sh      t4, 0x003E(s0)             # 0000003E
    sh      t5, 0x0036(s0)             # 00000036
    lh      t6, 0x0052($sp)            
    lui     $at, %hi(var_80991F88)     # $at = 80990000
    lwc1    $f4, %lo(var_80991F88)($at) 
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_80991060 
    swc1    $f6, 0x0040(s0)            # 00000040
lbl_80991058:
    bne     v0, v1, lbl_80990F1C       
    addiu   s0, s0, 0x0058             # s0 = 00000058
lbl_80991060:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80991074:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    addiu   t0, $sp, 0x0034            # t0 = FFFFFFF4
    lui     t6, %hi(var_80991B7C)      # t6 = 80990000
    addiu   t6, t6, %lo(var_80991B7C)  # t6 = 80991B7C
    lw      t8, 0x0000(t6)             # 80991B7C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    sw      t8, 0x0000(t0)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80991B80
    sw      t7, 0x0004(t0)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80991B84
    sw      t8, 0x0008(t0)             # FFFFFFFC
lbl_809910AC:
    lbu     t9, 0x0024(a1)             # 00000024
    bnel    t9, $zero, lbl_809911F4    
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      t1, 0x0024(a1)             # 00000024
    sw      a2, 0x0054(a1)             # 00000054
    lw      t3, 0x0000(t0)             # FFFFFFF4
    lui     t4, %hi(var_80991A40)      # t4 = 80990000
    addiu   t4, t4, %lo(var_80991A40)  # t4 = 80991A40
    sw      t3, 0x0000(a1)             # 00000000
    lw      t2, 0x0004(t0)             # FFFFFFF8
    addiu   v1, $sp, 0x0024            # v1 = FFFFFFE4
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0008(t0)             # FFFFFFFC
    sw      t3, 0x0008(a1)             # 00000008
    lw      t6, 0x0000(t4)             # 80991A40
    sw      t6, 0x0000(v1)             # FFFFFFE4
    lw      t5, 0x0004(t4)             # 80991A44
    lw      t8, 0x0000(v1)             # FFFFFFE4
    sw      t5, 0x0004(v1)             # FFFFFFE8
    lw      t6, 0x0008(t4)             # 80991A48
    sw      t6, 0x0008(v1)             # FFFFFFEC
    sw      t8, 0x0018(a1)             # 00000018
    lw      t7, 0x0004(v1)             # FFFFFFE8
    sw      t7, 0x001C(a1)             # 0000001C
    lw      t8, 0x0008(v1)             # FFFFFFEC
    sw      t8, 0x0020(a1)             # 00000020
    lw      t1, 0x0000(v1)             # FFFFFFE4
    sw      t1, 0x000C(a1)             # 0000000C
    lw      t9, 0x0004(v1)             # FFFFFFE8
    sw      t9, 0x0010(a1)             # 00000010
    lw      t1, 0x0008(v1)             # FFFFFFEC
    sw      t1, 0x0014(a1)             # 00000014
    lbu     a0, 0x0057($sp)            
    sh      $zero, 0x002E(a1)          # 0000002E
    sh      a0, 0x0028(a1)             # 00000028
    lwc1    $f4, 0x0000(a3)            # 00000000
    swc1    $f4, 0x0048(a1)            # 00000048
    lwc1    $f6, 0x0008(a3)            # 00000008
    swc1    $f6, 0x0050(a1)            # 00000050
    lwc1    $f8, 0x0004(a3)            # 00000004
    swc1    $f8, 0x004C(a1)            # 0000004C
    sw      a1, 0x0044($sp)            
    sh      v0, 0x0032($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0020($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      a1, 0x0044($sp)            
    lh      v0, 0x0032($sp)            
    mul.s   $f16, $f0, $f10            
    lw      a0, 0x0020($sp)            
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, 0x003E(a1)             # 0000003E
    lui     $at, %hi(var_80991F8C)     # $at = 80990000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    trunc.w.s $f18, $f16                 
    mtc1    $zero, $f16                # $f16 = 0.00
    andi    t9, v0, 0x0003             # t9 = 00000000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    mfc1    t5, $f18                   
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t6, t5, 0x000A             # t6 = 0000000A
    sh      t6, 0x0026(a1)             # 00000026
    lh      t8, 0x0052($sp)            
    lwc1    $f8, %lo(var_80991F8C)($at) 
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mtc1    t8, $f4                    # $f4 = 0.00
    swc1    $f16, 0x0040(a1)           # 00000040
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    beq     t9, $zero, lbl_809911D8    
    swc1    $f10, 0x0044(a1)           # 00000044
    bne     a0, $at, lbl_80991208      
lbl_809911D8:
    addiu   a0, $zero, 0x393F          # a0 = 0000393F
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t1, 0x0014($sp)            
    beq     $zero, $zero, lbl_8099120C 
    lw      $ra, 0x001C($sp)           
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_809911F4:
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0190            
    bne     $at, $zero, lbl_809910AC   
    addiu   a1, a1, 0x0058             # a1 = 00000058
lbl_80991208:
    lw      $ra, 0x001C($sp)           
lbl_8099120C:
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80991218:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0050($sp)            
    sw      a3, 0x005C($sp)            
    lui     t7, %hi(var_80991B88)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991B88)  # t7 = 80991B88
    lw      t9, 0x0000(t7)             # 80991B88
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80991B8C
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80991B90
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x0190          # v1 = 00000190
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
lbl_8099125C:
    lbu     t0, 0x0024(s0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     t0, $zero, lbl_8099141C    
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sb      t1, 0x0024(s0)             # 00000024
    lw      t3, 0x0000(a2)             # 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t3, 0x0000(s0)             # 00000000
    lw      t2, 0x0004(a2)             # 00000004
    sw      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0008(a2)             # 00000008
    swc1    $f4, 0x0044(s0)            # 00000044
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0008(s0)             # 00000008
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f2                   # $f2 = 4.00
    lh      a0, 0x005E($sp)            
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f6, $f2              
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0048($sp)           
    lwc1    $f10, 0x0048($sp)          
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    mul.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0030($sp)          
    swc1    $f0, 0x0034($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x005E($sp)            
    lwc1    $f18, 0x0048($sp)          
    addiu   t4, $sp, 0x0030            # t4 = FFFFFFE0
    lui     $at, %hi(var_80991F90)     # $at = 80990000
    mul.s   $f4, $f0, $f18             
    swc1    $f4, 0x0038($sp)           
    lw      t6, 0x0000(t4)             # FFFFFFE0
    sw      t6, 0x000C(s0)             # 0000000C
    lw      t5, 0x0004(t4)             # FFFFFFE4
    sw      t5, 0x0010(s0)             # 00000010
    lw      t6, 0x0008(t4)             # FFFFFFE8
    sw      t6, 0x0014(s0)             # 00000014
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80991F90)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   t7, $sp, 0x003C            # t7 = FFFFFFEC
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sub.s   $f8, $f0, $f6              
    lui     t1, %hi(var_8099BE42)      # t1 = 809A0000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    swc1    $f8, 0x0040($sp)           
    lw      t9, 0x0000(t7)             # FFFFFFEC
    addiu   t4, $zero, 0x009B          # t4 = 0000009B
    addiu   t5, $zero, 0x0037          # t5 = 00000037
    sw      t9, 0x0018(s0)             # 00000018
    lw      t8, 0x0004(t7)             # FFFFFFF0
    sw      t8, 0x001C(s0)             # 0000001C
    lw      t9, 0x0008(t7)             # FFFFFFF4
    sh      t0, 0x0026(s0)             # 00000026
    sw      t9, 0x0020(s0)             # 00000020
    lb      t1, %lo(var_8099BE42)(t1)  
    slti    $at, t1, 0x0014            
    beql    $at, $zero, lbl_8099136C   
    sh      $zero, 0x0028(s0)          # 00000028
    beq     $zero, $zero, lbl_8099136C 
    sh      t2, 0x0028(s0)             # 00000028
    sh      $zero, 0x0028(s0)          # 00000028
lbl_8099136C:
    sh      t3, 0x003E(s0)             # 0000003E
    lh      v0, 0x003E(s0)             # 0000003E
    sh      t5, 0x0034(s0)             # 00000034
    lh      t6, 0x0034(s0)             # 00000034
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f12                  # $f12 = 65536.00
    sh      t4, 0x0030(s0)             # 00000030
    sh      v0, 0x003C(s0)             # 0000003C
    sh      v0, 0x003A(s0)             # 0000003A
    sh      v0, 0x0038(s0)             # 00000038
    sh      v0, 0x0036(s0)             # 00000036
    jal     func_80026D90              
    sh      t6, 0x0032(s0)             # 00000032
    trunc.w.s $f10, $f0                  
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f12                  # $f12 = 65536.00
    mfc1    t8, $f10                   
    jal     func_80026D90              
    sh      t8, 0x002A(s0)             # 0000002A
    trunc.w.s $f16, $f0                  
    mfc1    t0, $f16                   
    nop
    sh      t0, 0x002C(s0)             # 0000002C
    lh      t1, 0x0062($sp)            
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f12, $f18                 
    jal     func_80026D64              
    swc1    $f12, 0x0024($sp)          
    lwc1    $f12, 0x0024($sp)          
    lui     $at, %hi(var_80991F94)     # $at = 80990000
    lwc1    $f6, %lo(var_80991F94)($at) 
    add.s   $f4, $f0, $f12             
    mul.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0040(s0)            # 00000040
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    lui     $at, %hi(var_80991F98)     # $at = 80990000
    lwc1    $f18, %lo(var_80991F98)($at) 
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_80991424 
    swc1    $f4, 0x004C(s0)            # 0000004C
lbl_8099141C:
    bne     v0, v1, lbl_8099125C       
    addiu   s0, s0, 0x0058             # s0 = 00000058
lbl_80991424:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80991438:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    lui     t7, %hi(var_80991B94)      # t7 = 80990000
    addiu   t7, t7, %lo(var_80991B94)  # t7 = 80991B94
    lw      t9, 0x0000(t7)             # 80991B94
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80991B98
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80991B9C
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
lbl_8099146C:
    lbu     t0, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t0, $zero, lbl_80991570    
    sra     v0, v0, 16                 
    lw      v1, 0x0048($sp)            
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sb      t1, 0x0024(a1)             # 00000024
    sw      a2, 0x0054(a1)             # 00000054
    lw      t3, 0x0000(a3)             # 00000000
    lui     t4, %hi(var_80991A40)      # t4 = 80990000
    addiu   t4, t4, %lo(var_80991A40)  # t4 = 80991A40
    sw      t3, 0x0000(a1)             # 00000000
    lw      t2, 0x0004(a3)             # 00000004
    addiu   v0, $sp, 0x001C            # v0 = FFFFFFE4
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0008(a1)             # 00000008
    lw      t6, 0x0000(t4)             # 80991A40
    sw      t6, 0x0000(v0)             # FFFFFFE4
    lw      t5, 0x0004(t4)             # 80991A44
    lw      t8, 0x0000(v0)             # FFFFFFE4
    sw      t5, 0x0004(v0)             # FFFFFFE8
    lw      t6, 0x0008(t4)             # 80991A48
    sw      t6, 0x0008(v0)             # FFFFFFEC
    sw      t8, 0x0018(a1)             # 00000018
    lw      t7, 0x0004(v0)             # FFFFFFE8
    sw      t7, 0x001C(a1)             # 0000001C
    lw      t8, 0x0008(v0)             # FFFFFFEC
    sw      t8, 0x0020(a1)             # 00000020
    lw      t0, 0x0000(v0)             # FFFFFFE4
    sw      t0, 0x000C(a1)             # 0000000C
    lw      t9, 0x0004(v0)             # FFFFFFE8
    sw      t9, 0x0010(a1)             # 00000010
    lw      t0, 0x0008(v0)             # FFFFFFEC
    sw      t0, 0x0014(a1)             # 00000014
    lbu     t1, 0x0053($sp)            
    sh      t1, 0x0028(a1)             # 00000028
    lh      t2, 0x0000(v1)             # 00000000
    addiu   t3, t2, 0x4000             # t3 = 00004000
    sh      t3, 0x002A(a1)             # 0000002A
    lh      t4, 0x0002(v1)             # 00000002
    sh      t4, 0x002C(a1)             # 0000002C
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x003C($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lw      a1, 0x003C($sp)            
    addiu   t0, $zero, 0x00F0          # t0 = 000000F0
    mul.s   $f6, $f0, $f4              
    sh      t0, 0x0036(a1)             # 00000036
    lui     $at, %hi(var_80991F9C)     # $at = 80990000
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    nop
    addiu   t9, t8, 0x000A             # t9 = 0000000A
    sh      t9, 0x0026(a1)             # 00000026
    lh      t1, 0x004E($sp)            
    lwc1    $f18, %lo(var_80991F9C)($at) 
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_8099157C 
    swc1    $f4, 0x0040(a1)            # 00000040
lbl_80991570:
    slti    $at, v0, 0x0190            
    bne     $at, $zero, lbl_8099146C   
    addiu   a1, a1, 0x0058             # a1 = 00000058
lbl_8099157C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8099158C:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s0, 0x0038($sp)            
    sdc1    $f22, 0x0020($sp)          
    sll     s0, a1, 16                 
    mtc1    $zero, $f22                # $f22 = 0.00
    sra     s0, s0, 16                 
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x00C8($sp)            
    sw      a1, 0x00CC($sp)            
    mov.s   $f20, $f22                 
    lw      t6, 0x00C8($sp)            
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f14                  # $f14 = 80.00
    mov.s   $f12, $f22                 
    lui     a2, 0x43C8                 # a2 = 43C80000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4              
    lw      s4, 0x0000(t6)             # 00000000
    lui     $at, %hi(var_80991FA0)     # $at = 80990000
    lwc1    $f12, %lo(var_80991FA0)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    s0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80991FA4)     # $at = 80990000
    lwc1    $f12, %lo(var_80991FA4)($at) 
    cvt.s.w $f6, $f4                   
    lui     $at, %hi(var_80991FA8)     # $at = 80990000
    lwc1    $f8, %lo(var_80991FA8)($at) 
    mfc1    a2, $f12                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f24, $f10, $f12           
    jal     func_800AA8FC              
    mov.s   $f14, $f24                 
    c.eq.s  $f24, $f22                 
    lui     $at, %hi(var_80991FAC)     # $at = 80990000
    lwc1    $f12, %lo(var_80991FAC)($at) 
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFC0
    bc1tl   lbl_80991668               
    mov.s   $f26, $f22                 
    beq     $zero, $zero, lbl_80991668 
    div.s   $f26, $f12, $f24           
    mov.s   $f26, $f22                 
lbl_80991668:
    jal     func_800AA740              
    or      a0, s8, $zero              # a0 = FFFFFFC0
    lui     s3, %hi(var_80991BC0)      # s3 = 80990000
    lui     s2, %hi(var_80991BA0)      # s2 = 80990000
    lui     $at, %hi(var_80991FB0)     # $at = 80990000
    lui     s7, %hi(var_80991BC0)      # s7 = 80990000
    lui     s5, 0xDA38                 # s5 = DA380000
    ori     s5, s5, 0x0003             # s5 = DA380003
    addiu   s7, s7, %lo(var_80991BC0)  # s7 = 80991BC0
    lwc1    $f24, %lo(var_80991FB0)($at) 
    addiu   s2, s2, %lo(var_80991BA0)  # s2 = 80991BA0
    addiu   s3, s3, %lo(var_80991BC0)  # s3 = 80991BC0
    lui     s6, 0xDE00                 # s6 = DE000000
lbl_8099169C:
    jal     func_800AA764              
    or      a0, s8, $zero              # a0 = FFFFFFC0
    mov.s   $f12, $f20                 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t7, 0x0000(s3)             # 80991BC0
    mfc1    a2, $f22                   
    mov.s   $f12, $f22                 
    mtc1    t7, $f16                   # $f16 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f18, $f16                 
    mul.s   $f14, $f18, $f26           
    jal     func_800AA7F4              
    nop
    lw      s1, 0x02C0(s4)             # 000002C0
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s4)             # 000002C0
    sw      s5, 0x0000(s1)             # 00000000
    lw      t9, 0x00C8($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    addiu   s2, s2, 0x0004             # s2 = 80991BA4
    sub.s   $f20, $f20, $f24           
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s4)             # 000002C0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t1, -0x0004(s2)            # 80991BA0
    sw      t1, 0x0004(s0)             # 00000004
    bne     s2, s7, lbl_8099169C       
    addiu   s3, s3, 0x0002             # s3 = 80991BC2
    lw      $ra, 0x005C($sp)           
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
    lw      s7, 0x0054($sp)            
    lw      s8, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000
    nop

.section .data

var_80991760: .word 0x00BA0900, 0x00000035, 0x008C0000, 0x000003A8
.word func_8098587C
.word func_809860CC
.word func_8098D7C0
.word func_8098EB58
var_80991780: .word \
0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFEF, \
0x03080000, 0x00000010, 0x00000000, 0x01010100, \
0x00550078, 0x00000000, 0x00000000
var_809917AC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000010, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00190064
var_809917D0: .word 0x06000900, 0x10000000, 0x00000001
.word var_809917AC
var_809917E0: .word \
0x00000000, 0xFFCFFFFF, 0x03040000, 0xFFCFFFFF, \
0x00000000, 0x01010000, 0x00000000, 0x00000000, \
0x001E0064
var_80991804: .word 0x0A110900, 0x10000000, 0x00000001
.word var_809917E0
var_80991814: .word \
0x09110900, 0x00030000, 0x00000000, 0x20000000, \
0x03040000, 0x00000010, 0x00000000, 0x81010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80991864: .word \
0x00000000, 0x432F599A, 0x00000000, 0x00000000, \
0x432F599A, 0x00000000, 0x00000000, 0x432F599A, \
0x00000000, 0x42F00000, 0x42CED99A, 0xC2860000, \
0x00000000, 0x42CED99A, 0x430C0000
var_809918A0: .word \
0xC2F00000, 0x42CED99A, 0xC28C0000, 0xC0000000, \
0x41800000, 0x42480000, 0x42400000, 0x41800000, \
0x41700000, 0x41C80000, 0x41800000, 0xC2100000, \
0xC1E80000, 0x41800000, 0xC2100000
var_809918DC: .word 0xC27C0000
var_809918E0: .word \
0x41800000, 0x41B00000, 0x00000000, 0xC1200000, \
0xC2800000, 0x427C0000, 0xC1200000, 0xC1B00000, \
0x420C0000, 0xC1200000, 0x42380000, 0xC2100000, \
0xC1200000, 0x42380000
var_80991918: .word \
0xC2440000, 0xC1200000, 0xC1880000, 0x00000000, \
0x43200000, 0x43B90000, 0x42820000, 0x420C0000, \
0x43B90000, 0x42A00000, 0x428C0000, 0xC3020000, \
0xC3200000, 0x42C80000, 0xC3020000, 0xC3160000, \
0x43020000, 0x00000000, 0x43660000, 0x00000000, \
0x00000000, 0x42700000, 0x430C0000, 0x00000000, \
0x00000000, 0x42200000, 0x43870000, 0xC2C80000, \
0x41200000, 0x43480000, 0xC2B40000, 0x428C0000, \
0xC39B0000
var_8099199C: .byte 0x1F, 0xFE
var_8099199E: .byte 0x00, 0x00
var_809919A0: .byte \
0x00, 0x00, 0x1F, 0xFE, 0x55, 0x50, 0x00, 0x00, 0x1F, 0xFE, 0xAA, 0xB0, 0x00, 0x00, 0xD5, 0x58, \
0x55, 0x50, 0x00, 0x00, 0xD5, 0x58, 0x00, 0x00, 0x00, 0x00
var_809919BA: .byte \
0xD5, 0x58, 0xAA, 0xB0, 0x00, 0x00, 0x2A, 0xA8, 0xFC, 0xCC, 0x00, 0x00, 0x2A, 0xA8, 0x33, 0x30, \
0x00, 0x00, 0x2A, 0xA8, 0x66, 0x60, 0x00, 0x00, 0x2A, 0xA8, 0x99, 0xA0, 0x00, 0x00
var_809919D8: .byte \
0x2A, 0xA8, 0xCC, 0xD0, 0x00, 0x00, 0x4C, 0x98, 0x81, 0xD0, 0x00, 0x00, 0x4C, 0x98, 0x4F, 0x70, \
0x00, 0x00, 0x4C, 0x98, 0x17, 0x58, 0x00, 0x00, 0x4C, 0x98, 0xE8, 0xA8, 0x00, 0x00
var_809919F6: .byte 0x4C, 0x98, 0xB6, 0x48, 0x00, 0x00
var_809919FC: .word 0x41200000, 0x00000000, 0x41F00000
var_80991A08: .word 0x43820000, 0x00000000, 0xC3EB0000
var_80991A14: .word 0xC3700000, 0x00000000, 0xC3EB0000
var_80991A20: .word \
0x10020102, 0x10020210, 0x01020402, 0x02020202, \
0x02E060D0, 0x00000104, 0x02020804, 0x00000400
var_80991A40: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80991A46: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80991A4C: .word 0x00000000
var_80991A50: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80991A5A: .byte 0x00, 0x00
var_80991A5C: .word 0x00000000
var_80991A60: .word 0x00000000, 0x00000000, 0x00000000
var_80991A6C: .word 0x00000000, 0x00000000, 0x00000000
var_80991A78: .word 0x00000000, 0x00000000, 0x00000000
var_80991A84: .word 0x00000000, 0x00000000, 0x00000000
var_80991A90: .word 0x00000000, 0x00000000, 0x00000000
var_80991A9C: .word 0x41700000, 0x00000000, 0x00000000
var_80991AA8: .word 0xC1700000, 0x00000000, 0x00000000
var_80991AB4: .word 0x41700000, 0x00000000, 0x00000000
var_80991AC0: .word 0xC1700000, 0x00000000, 0x00000000
var_80991ACC: .word 0x00000000, 0x42340000, 0x00000000
var_80991AD8: .word 0x3ECCCCCD, 0x3ECCCCCD, 0x3ECCCCCD
var_80991AE4: .word 0x41700000, 0x42200000, 0x00000000
var_80991AF0: .word 0xC1700000, 0x42200000, 0x00000000
var_80991AFC: .word 0x41700000, 0x42200000, 0x00000000
var_80991B08: .word 0xC1700000, 0x42200000, 0x00000000
var_80991B14: .word 0xFAFAE6C8
var_80991B18: .word 0x0000FFFF, 0x009B0000
var_80991B20: .word \
0x060082F8, 0x060092F8, 0x0600A2F8, 0x0600B2F8, \
0x0600C2F8, 0x0600D2F8, 0x0600E2F8, 0x0600F2F8
var_80991B40: .word 0x00000000, 0xC47A0000, 0x00000000
var_80991B4C: .word 0x00000000, 0xC47A0000, 0x00000000
var_80991B58: .word 0x00000000, 0x00000000, 0x00000000
var_80991B64: .word 0x00000000, 0x00000000, 0x00000000
var_80991B70: .word 0x00000000, 0x00000000, 0x00000000
var_80991B7C: .word 0x00000000, 0xC47A0000, 0x00000000
var_80991B88: .word 0x00000000, 0x00000000, 0x00000000
var_80991B94: .word 0x00000000, 0xC47A0000, 0x00000000
var_80991BA0: .word \
0x06018FE8, 0x06019AE8, 0x0601A5E8, 0x0601B0E8, \
0x0601BBE8, 0x0601C6E8, 0x0601D1E8, 0x0601DCE8
var_80991BC0: .word 0x03440384, 0x034403F8, 0x032003F8, 0x03440384

.section .rodata

var_80991BD0: .word var_80984D64
.word var_80984D64
.word var_80984D64
.word var_80984DB0
.word var_80984DB0
.word var_80984DB0
var_80991BE8: .word 0x46CB2000
var_80991BEC: .word 0x46CB2000
var_80991BF0: .word 0x3F19999A
var_80991BF4: .word 0x3F19999A
var_80991BF8: .word 0x3F333333
var_80991BFC: .word var_809858E8
.word var_80985924
.word var_80985924
.word var_80985924
.word var_80985954
.word var_80985954
.word var_80985954
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word lbl_809859B4
.word var_80985984
.word var_80985984
.word var_80985984
.word lbl_809859FC
var_80991C50: .word var_80985A48
.word var_80985EE8
.word var_80985EE8
.word var_80985EE8
.word var_80985F5C
.word var_80985F5C
.word var_80985F5C
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word lbl_80985FE8
.word var_80985FC0
.word var_80985FC0
.word var_80985FC0
.word var_80985FD4
var_80991CA4: .word 0x3DCCCCCD
var_80991CA8: .word 0x3D4CCCCD
var_80991CAC: .word var_8098625C
.word var_80986284
.word var_809862DC
.word var_8098643C
.word var_80986478
.word var_809864C8
.word var_809864EC
.word lbl_80986FA4
.word var_80986708
.word var_809867F4
.word var_809868A4
.word var_80986958
.word lbl_80986FA4
.word var_80986A24
.word var_80986AD8
.word var_80986E1C
.word var_80986E8C
.word var_80986EFC
.word var_80986F98
var_80991CF8: .word 0x3DCCCCCD
var_80991CFC: .word 0x3F333333
var_80991D00: .word 0x411CCCCD
var_80991D04: .word 0x3DCCCCCD
var_80991D08: .word 0x3FCCCCCD
var_80991D0C: .word 0x3D99999A
var_80991D10: .word 0x3D99999A
var_80991D14: .word 0x3D99999A
var_80991D18: .word 0x3D99999A
var_80991D1C: .word 0x3D99999A
var_80991D20: .word 0x3D99999A
var_80991D24: .word 0x3DCCCCCD
var_80991D28: .word 0x3D4CCCCD
var_80991D2C: .word 0x3DCCCCCD
var_80991D30: .word 0x3DCCCCCD
var_80991D34: .word 0x3DCCCCCD
var_80991D38: .word 0x3D4CCCCD
var_80991D3C: .word 0x3983126F
var_80991D40: .word 0x463B8000
var_80991D44: .word 0x3DCCCCCD
var_80991D48: .word 0x3D4CCCCD
var_80991D4C: .word 0x3DCCCCCD
var_80991D50: .word 0x3983126F
var_80991D54: .word 0x463B8000
var_80991D58: .word 0x3DCCCCCD
var_80991D5C: .word 0x3DCCCCCD
var_80991D60: .word 0x3D4CCCCD
var_80991D64: .word 0x45AAA000
var_80991D68: .word 0x3983126F
var_80991D6C: .word var_80988E9C
.word var_80989058
.word lbl_80989714
.word lbl_80989714
.word lbl_80989714
.word lbl_80989714
.word lbl_80989714
.word var_809892A4
.word var_8098937C
.word var_809894C0
.word lbl_809896F8
var_80991D98: .word 0x3F19999A
var_80991D9C: .word 0x3DF5C28F
var_80991DA0: .word 0x3D99999A
var_80991DA4: .word 0x3C75C28F
var_80991DA8: .word 0x3E19999A
var_80991DAC: .word 0x3E19999A
var_80991DB0: .word 0x3E19999A
var_80991DB4: .word 0x3E19999A
var_80991DB8: .word 0x3E19999A
var_80991DBC: .word 0x3E19999A
var_80991DC0: .word 0x3DCCCCCD
var_80991DC4: .word 0x3D4CCCCD
var_80991DC8: .word 0x3DCCCCCD
var_80991DCC: .word 0x3DCCCCCD
var_80991DD0: .word 0x3E99999A
var_80991DD4: .word 0x3DF5C28F
var_80991DD8: .word 0x3BA3D70A
var_80991DDC: .word 0x3DCCCCCD
var_80991DE0: .word 0x3F19999A
var_80991DE4: .word 0x3DCCCCCD
var_80991DE8: .word var_8098C3F0
.word var_8098C474
.word var_8098C474
.word var_8098C474
.word var_8098C474
.word lbl_8098C718
.word var_8098C554
.word var_8098C554
.word lbl_8098C7E0
.word lbl_8098C7E0
.word lbl_8098C7E0
.word var_8098C7C0
var_80991E18: .word 0x3E19999A
var_80991E1C: .word 0x3E19999A
var_80991E20: .word 0x3E19999A
var_80991E24: .word 0x3DCCCCCD
var_80991E28: .word 0x3DCCCCCD
var_80991E2C: .word 0x3DCCCCCD
var_80991E30: .word var_8098D814
.word lbl_8098D9BC
.word lbl_8098D9BC
.word lbl_8098D9BC
.word lbl_8098D9BC
.word lbl_8098D9BC
.word lbl_8098D9BC
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D8E0
.word lbl_8098D9BC
var_80991E84: .word 0x3E75C28F
var_80991E88: .word 0x3F428F5C
var_80991E8C: .word 0x3E4CCCCD
var_80991E90: .word 0xBFC90FDB
var_80991E94: .word 0x44048000
var_80991E98: .word 0x44048000
var_80991E9C: .word 0x38C90FDB
var_80991EA0: .word 0x38C90FDB
var_80991EA4: .word 0x38C90FDB
var_80991EA8: .word 0x38C90FDB
var_80991EAC: .word 0x38C90FDB
var_80991EB0: .word var_8098EC90
.word var_8098EE44
.word var_8098EE44
.word var_8098EE44
.word var_8098EE84
.word var_8098EE84
.word var_8098EE84
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word lbl_8098EEEC
.word var_8098EEC4
.word var_8098EEC4
.word var_8098EEC4
.word lbl_8098F0FC
var_80991F04: .word 0x3BA3D70A
var_80991F08: .word 0x469C4000
var_80991F0C: .word 0x461C4000
var_80991F10: .word 0x418F3333
var_80991F14: .word 0x469C4000
var_80991F18: .word 0x461C4000
var_80991F1C: .word 0x3AAA64C3
var_80991F20: .word 0x458CA000
var_80991F24: .word 0x3F99999A
var_80991F28: .word 0x458CA000
var_80991F2C: .word 0x3F99999A
var_80991F30: .word 0x40490FF9
var_80991F34: .word 0x3C978D50
var_80991F38: .word 0x3FC90FDB
var_80991F3C: .word 0x3DEB851F
var_80991F40: .word 0x3E051EB8
var_80991F44: .word 0x3DCCCCCD
var_80991F48: .word 0x3DCCCCCD
var_80991F4C: .word 0x3E051EB8
var_80991F50: .word 0x3DEB851F
var_80991F54: .word 0x3CA3D70A
var_80991F58: .word var_809909C4
.word var_80990A38
.word var_80990A4C
.word var_809909BC
.word var_80990A30
.word var_80990A90
var_80991F70: .word 0x418F3333
var_80991F74: .word 0x3C23D70A
var_80991F78: .word 0x3C23D70A
var_80991F7C: .word 0x3E99999A
var_80991F80: .word 0x3C23D70A
var_80991F84: .word 0x3E99999A
var_80991F88: .word 0x3C23D70A
var_80991F8C: .word 0x3C23D70A
var_80991F90: .word 0x3E99999A
var_80991F94: .word 0x3C23D70A
var_80991F98: .word 0x3F666666
var_80991F9C: .word 0x3C23D70A
var_80991FA0: .word 0x40490FDB
var_80991FA4: .word 0x3DCCCCCD
var_80991FA8: .word 0x3C23D70A
var_80991FAC: .word 0x3DCCCCCD
var_80991FB0: .word 0x3F490FDB, 0x00000000, 0x00000000, 0x00000000

.bss

var_809934C0: .space 0x8980
var_8099BE40: .space 0x01
var_8099BE41: .space 0x01
var_8099BE42: .space 0x06
var_8099BE48: .space 0x04
var_8099BE4C: .space 0x04
var_8099BE50: .space 0x08
var_8099BE58: .space 0x04
var_8099BE5C: .space 0x04
var_8099BE60: .space 0x08
var_8099BE68: .space 0x04
var_8099BE6C: .space 0x04
var_8099BE70: .space 0x08
var_8099BE78: .space 0x04
var_8099BE7C: .space 0x04
var_8099BE80: .space 0x08
var_8099BE88: .space 0x04
var_8099BE8C: .space 0x04
var_8099BE90: .space 0x08
var_8099BE98: .space 0x04
var_8099BE9C: .space 0x04
var_8099BEA0: .space 0x04
var_8099BEA4: .space 0x02
var_8099BEA6: .space 0x02
var_8099BEA8: .space 0x02
var_8099BEAA: .space 0x02
var_8099BEAC: .space 0x02
var_8099BEAE: .space 0x02
var_8099BEB0: .space 0x10
