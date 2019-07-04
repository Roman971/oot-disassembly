.section .text
func_80979D40:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x0158             # a1 = 00000158
    slti    $at, t6, 0x00C8            
    bne     $at, $zero, lbl_80979DDC   
    lui     $at, 0x4440                # $at = 44400000
    mtc1    $at, $f12                  # $f12 = 768.00
    jal     func_80026D90              
    nop
    lui     $at, 0x4440                # $at = 44400000
    mtc1    $at, $f12                  # $f12 = 768.00
    jal     func_80026D90              
    swc1    $f0, 0x014C(s0)            # 0000014C
    swc1    $f0, 0x0148(s0)            # 00000148
    lwc1    $f12, 0x0024(s0)           # 00000024
    jal     func_800CD76C              
    lwc1    $f14, 0x002C(s0)           # 0000002C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64              
    swc1    $f0, 0x0028($sp)           
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_800CF470              
    lwc1    $f12, 0x0028($sp)          
    add.s   $f4, $f0, $f0              
    swc1    $f4, 0x005C(s0)            # 0000005C
    jal     func_800D2CD0              
    lwc1    $f12, 0x0028($sp)          
    add.s   $f6, $f0, $f0              
    lui     $at, %hi(var_8097ADE0)     # $at = 80980000
    swc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f8, %lo(var_8097ADE0)($at) 
    beq     $zero, $zero, lbl_80979EAC 
    swc1    $f8, 0x006C(s0)            # 0000006C
lbl_80979DDC:
    jal     func_8004AB7C              
    sw      a1, 0x0024($sp)            
    lui     a3, %hi(var_8097AD50)      # a3 = 80980000
    lw      a1, 0x0024($sp)            
    addiu   a3, a3, %lo(var_8097AD50)  # a3 = 8097AD50
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t7, 0x0034(s0)             # 00000034
    lui     $at, %hi(var_8097ADE4)     # $at = 80980000
    lwc1    $f18, %lo(var_8097ADE4)($at) 
    mtc1    t7, $f10                   # $f10 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f16, $f10                 
    div.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    lui     $at, %hi(var_8097ADE8)     # $at = 80980000
    lwc1    $f6, %lo(var_8097ADE8)($at) 
    lwc1    $f0, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_8097ADEC)     # $at = 80980000
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    sh      t9, 0x0198(s0)             # 00000198
    lwc1    $f16, %lo(var_8097ADEC)($at) 
    lui     $at, %hi(var_8097ADF0)     # $at = 80980000
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x019A(s0)             # 0000019A
    lwc1    $f6, %lo(var_8097ADF0)($at) 
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f12                  # $f12 = 8192.00
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    jal     func_80026D90              
    sh      t3, 0x019C(s0)             # 0000019C
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f12                  # $f12 = 8192.00
    jal     func_80026D90              
    swc1    $f0, 0x0148(s0)            # 00000148
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f18                  # $f18 = 68.00
    lwc1    $f16, 0x0054(s0)           # 00000054
    swc1    $f0, 0x014C(s0)            # 0000014C
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0150(s0)            # 00000150
lbl_80979EAC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80979EC0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    slti    $at, t6, 0x00C8            
    beql    $at, $zero, lbl_80979EF0   
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0158             # a1 = 00000158
    lw      $ra, 0x0014($sp)           
lbl_80979EF0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80979EFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80979F0C:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80979FB8    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0024(a1)             # 00000024
    lw      t9, 0x0000(a2)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(a2)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(a2)             # 00000008
    sw      t9, 0x0008(a1)             # 00000008
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x000C(a1)             # 0000000C
    lw      t0, 0x0004(a3)             # 00000004
    sw      t0, 0x0010(a1)             # 00000010
    lw      t1, 0x0008(a3)             # 00000008
    sw      t1, 0x0014(a1)             # 00000014
    lw      t2, 0x0028($sp)            
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0018(a1)             # 00000018
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x001C(a1)             # 0000001C
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0020(a1)             # 00000020
    lwc1    $f4, 0x002C($sp)           
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x0030(a1)            # 00000030
    jal     func_80026D64              
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64              
    swc1    $f0, 0x0034(a1)            # 00000034
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80979FC4 
    swc1    $f0, 0x0038(a1)            # 00000038
lbl_80979FB8:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_80979F0C   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
lbl_80979FC4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80979FD4:
    sw      a0, 0x0000($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80979FDC:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_8097A060    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0024(a1)             # 00000024
    lw      t9, 0x0000(a2)             # 00000000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(a2)             # 00000004
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(a2)             # 00000008
    sw      t9, 0x0008(a1)             # 00000008
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x000C(a1)             # 0000000C
    lw      t0, 0x0004(a3)             # 00000004
    sw      t0, 0x0010(a1)             # 00000010
    lw      t1, 0x0008(a3)             # 00000008
    sw      t1, 0x0014(a1)             # 00000014
    lw      t2, 0x0010($sp)            
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0018(a1)             # 00000018
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x001C(a1)             # 0000001C
    lw      t4, 0x0008(t2)             # 00000008
    sh      $zero, 0x002C(a1)          # 0000002C
    sw      t4, 0x0020(a1)             # 00000020
    lwc1    $f4, 0x0014($sp)           
    div.s   $f8, $f4, $f6              
    jr      $ra                        
    swc1    $f8, 0x0030(a1)            # 00000030
lbl_8097A060:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_80979FDC   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
    jr      $ra                        
    nop


func_8097A074:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    lui     $at, 0x4248                # $at = 42480000
    sw      s8, 0x0070($sp)            
    sw      s3, 0x005C($sp)            
    mtc1    $at, $f0                   # $f0 = 50.00
    or      s3, a0, $zero              # s3 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f30, 0x0048($sp)          
    sdc1    $f28, 0x0040($sp)          
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lw      s1, 0x0118(s3)             # 00000118
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lhu     t7, 0x0088(s3)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_8097A2F0    
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0060(s3)            # 00000060
    lui     $at, 0x4680                # $at = 46800000
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_8097A2F0               
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0148(s3)            # 00000148
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x014C(s3)            # 0000014C
    lwc1    $f12, 0x0024(s3)           # 00000024
    jal     func_800CD76C              
    lwc1    $f14, 0x002C(s3)           # 0000002C
    mov.s   $f20, $f0                  
    jal     func_800CF470              
    mov.s   $f12, $f0                  
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    mov.s   $f12, $f20                 
    mul.s   $f16, $f0, $f10            
    jal     func_800D2CD0              
    swc1    $f16, 0x005C(s3)           # 0000005C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f8                   # $f8 = -0.50
    mul.s   $f4, $f0, $f18             
    lwc1    $f6, 0x0060(s3)            # 00000060
    lh      t9, 0x001C(s3)             # 0000001C
    lui     a3, 0x8010                 # a3 = 80100000
    mul.s   $f10, $f6, $f8             
    andi    t0, t9, 0x0001             # t0 = 00000000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    swc1    $f4, 0x0064(s3)            # 00000064
    addiu   a0, $zero, 0x3927          # a0 = 00003927
    addiu   a1, s3, 0x00E4             # a1 = 000000E4
    beq     t0, $zero, lbl_8097A1C4    
    swc1    $f10, 0x0060(s3)           # 00000060
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_8097A1C4:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f30                  # $f30 = 200.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f28                  # $f28 = 80.00
    lui     $at, %hi(var_8097ADF4)     # $at = 80980000
    lwc1    $f26, %lo(var_8097ADF4)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    lui     $at, 0x4100                # $at = 41000000
    addiu   s4, s1, 0x1960             # s4 = 00001960
    lui     s6, %hi(var_8097AD88)      # s6 = 80980000
    lui     s5, %hi(var_8097AD7C)      # s5 = 80980000
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s5, s5, %lo(var_8097AD7C)  # s5 = 8097AD7C
    addiu   s6, s6, %lo(var_8097AD88)  # s6 = 8097AD88
    addiu   s1, $sp, 0x0098            # s1 = FFFFFFE0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $sp, 0x0080            # s7 = FFFFFFC8
    addiu   s2, $sp, 0x008C            # s2 = FFFFFFD4
    lw      t3, 0x0000(s5)             # 8097AD7C
lbl_8097A21C:
    lw      t5, 0x0000(s6)             # 8097AD88
    lw      t2, 0x0004(s5)             # 8097AD80
    sw      t3, 0x0000(s1)             # FFFFFFE0
    sw      t5, 0x0000(s2)             # FFFFFFD4
    lw      t3, 0x0008(s5)             # 8097AD84
    lw      t5, 0x0008(s6)             # 8097AD90
    lw      t4, 0x0004(s6)             # 8097AD8C
    mov.s   $f12, $f20                 
    sw      t2, 0x0004(s1)             # FFFFFFE4
    sw      t3, 0x0008(s1)             # FFFFFFE8
    sw      t5, 0x0008(s2)             # FFFFFFDC
    jal     func_80026D90              
    sw      t4, 0x0004(s2)             # FFFFFFD8
    swc1    $f0, 0x0098($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    swc1    $f0, 0x009C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x00A0($sp)           
    swc1    $f26, 0x0090($sp)          
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lwc1    $f16, 0x0024(s3)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    add.s   $f18, $f0, $f16            
    mov.s   $f12, $f22                 
    swc1    $f18, 0x0080($sp)          
    lwc1    $f4, 0x0080(s3)            # 00000080
    add.s   $f8, $f4, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x0084($sp)           
    lwc1    $f10, 0x002C(s3)           # 0000002C
    mov.s   $f12, $f28                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D64              
    swc1    $f16, 0x0088($sp)          
    add.s   $f18, $f0, $f30            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00001960
    or      a2, s7, $zero              # a2 = FFFFFFC8
    swc1    $f18, 0x0014($sp)          
    or      a3, s1, $zero              # a3 = FFFFFFE0
    jal     func_80979FD4              
    sw      s2, 0x0010($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    bnel    $at, $zero, lbl_8097A21C   
    lw      t3, 0x0000(s5)             # 8097AD7C
    lui     $at, 0x4248                # $at = 42480000
lbl_8097A2F0:
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0028(s3)            # 00000028
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8097A314               
    lw      $ra, 0x0074($sp)           
    jal     func_80020EB4              
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x0074($sp)           
lbl_8097A314:
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
    lw      s7, 0x006C($sp)            
    lw      s8, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_8097A358:
    addiu   $sp, $sp, 0xFEF0           # $sp = FFFFFEF0
    sw      s4, 0x005C($sp)            
    sw      s1, 0x0050($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s5, 0x0060($sp)            
    sw      s3, 0x0058($sp)            
    sw      s2, 0x0054($sp)            
    sw      s0, 0x004C($sp)            
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lw      t6, 0x0118(s1)             # 00000118
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    sw      t6, 0x0104($sp)            
    lh      t7, 0x0142(s1)             # 00000142
    lh      v0, 0x0140(s1)             # 00000140
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     v0, $zero, lbl_8097A3BC    
    sh      t8, 0x0142(s1)             # 00000142
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0140(s1)             # 00000140
lbl_8097A3BC:
    lwc1    $f4, 0x0148(s1)            # 00000148
    lwc1    $f8, 0x014C(s1)            # 0000014C
    lwc1    $f16, 0x0060(s1)           # 00000060
    trunc.w.s $f6, $f4                   
    lh      t0, 0x00B4(s1)             # 000000B4
    lh      t6, 0x00B6(s1)             # 000000B6
    trunc.w.s $f10, $f8                  
    mfc1    t4, $f6                    
    swc1    $f0, 0x006C(s1)            # 0000006C
    add.s   $f18, $f16, $f0            
    mfc1    t1, $f10                   
    addu    t5, t0, t4                 
    sh      t5, 0x00B4(s1)             # 000000B4
    addu    t2, t6, t1                 
    sh      t2, 0x00B6(s1)             # 000000B6
    jal     func_80021124              
    swc1    $f18, 0x0060(s1)           # 00000060
    lh      t3, 0x001C(s1)             # 0000001C
    addiu   a0, s1, 0x0154             # a0 = 00000154
    lui     a1, 0x432F                 # a1 = 432F0000
    slti    $at, t3, 0x00C8            
    bne     $at, $zero, lbl_8097A42C   
    lui     a2, 0x3F80                 # a2 = 3F800000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8097A074              
    or      a1, s4, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8097AAF8 
    lw      $ra, 0x0064($sp)           
lbl_8097A42C:
    jal     func_80064280              
    lui     a3, 0x4220                 # a3 = 42200000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, %hi(var_8097ADF8)     # $at = 80980000
    lwc1    $f6, %lo(var_8097ADF8)($at) 
    lwc1    $f4, 0x0054(s1)            # 00000054
    lwc1    $f8, 0x0028(s1)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f20, $f4, $f6             
    mtc1    $at, $f16                  # $f16 = 100.00
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sub.s   $f10, $f8, $f20            
    swc1    $f10, 0x0028(s1)           # 00000028
    sw      t0, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x0028(s1)           # 00000028
    lhu     t4, 0x0088(s1)             # 00000088
    add.s   $f4, $f18, $f20            
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_8097AAAC    
    swc1    $f4, 0x0028(s1)            # 00000028
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0060(s1)            # 00000060
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_8097AAB0               
    lbu     v0, 0x0168(s1)             # 00000168
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   s5, $zero, 0x0064          # s5 = 00000064
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beq     s5, v0, lbl_8097A4CC       
    nop
    bne     v0, $at, lbl_8097A978      
    or      s2, $zero, $zero           # s2 = 00000000
lbl_8097A4CC:
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    lh      v0, 0x001C(s1)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    bne     s5, v0, lbl_8097A4F4       
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80026CF4              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lh      v0, 0x001C(s1)             # 0000001C
lbl_8097A4F4:
    bne     s5, v0, lbl_8097A508       
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_8097A510 
    sh      t7, 0x00FA($sp)            
lbl_8097A508:
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sh      t8, 0x00FA($sp)            
lbl_8097A510:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f24                  # $f24 = 5.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x4040                # $at = 40400000
    addiu   t9, s4, 0x1C24             # t9 = 00001C24
    lui     s3, 0x8010                 # s3 = 80100000
    mtc1    $at, $f20                  # $f20 = 3.00
    addiu   s3, s3, 0x43A0             # s3 = 801043A0
    sw      t9, 0x006C($sp)            
    lh      t6, 0x001C(s1)             # 0000001C
lbl_8097A53C:
    lui     $at, 0x4150                # $at = 41500000
    bne     s5, t6, lbl_8097A584       
    nop
    mtc1    $at, $f12                  # $f12 = 13.00
    jal     func_80026D90              
    nop
    swc1    $f0, 0x00EC($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f12                  # $f12 = 13.00
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x00F0($sp)          
    beq     $zero, $zero, lbl_8097A5B4 
    swc1    $f0, 0x00F4($sp)           
lbl_8097A584:
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    swc1    $f0, 0x00EC($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    mov.s   $f12, $f22                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x00F0($sp)           
    swc1    $f0, 0x00F4($sp)           
lbl_8097A5B4:
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x00EC($sp)           
    lwc1    $f18, 0x00F0($sp)          
    lui     $at, 0x3F00                # $at = 3F000000
    add.s   $f10, $f6, $f8             
    lwc1    $f8, 0x00F4($sp)           
    lw      a0, 0x006C($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s1)           # 00000028
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00AD          # a3 = 000000AD
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f4                   # $f4 = 0.50
    swc1    $f10, 0x0018($sp)          
    lh      t1, 0x0034(s1)             # 00000034
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    sw      t3, 0x0024($sp)            
    lh      t0, 0x001C(s1)             # 0000001C
    addiu   t4, t0, 0x0001             # t4 = 00000001
    jal     func_800253F0              
    sw      t4, 0x0028($sp)            
    beq     v0, $zero, lbl_8097A700    
    or      s0, v0, $zero              # s0 = 00000000
    bnel    s2, $zero, lbl_8097A678    
    lw      t8, 0x0118(s1)             # 00000118
    lh      t5, 0x001C(s1)             # 0000001C
    addiu   a0, $zero, 0x38D7          # a0 = 000038D7
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    bne     s5, t5, lbl_8097A674       
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    or      a3, s3, $zero              # a3 = 801043A0
    jal     func_800C806C              
    sw      s3, 0x0010($sp)            
lbl_8097A674:
    lw      t8, 0x0118(s1)             # 00000118
lbl_8097A678:
    addiu   t9, $sp, 0x00EC            # t9 = FFFFFFDC
    mtc1    $zero, $f10                # $f10 = 0.00
    sw      t8, 0x0118(s0)             # 00000118
    lw      t1, 0x0000(t9)             # FFFFFFDC
    lui     $at, %hi(var_8097ADFC)     # $at = 80980000
    sw      t1, 0x005C(s0)             # 0000005C
    lw      t6, 0x0004(t9)             # FFFFFFE0
    sw      t6, 0x0060(s0)             # 00000060
    lw      t1, 0x0008(t9)             # FFFFFFE4
    swc1    $f10, 0x014C(s0)           # 0000014C
    sw      t1, 0x0064(s0)             # 00000064
    lwc1    $f16, 0x00EC($sp)          
    lwc1    $f4, 0x00F4($sp)           
    lwc1    $f8, %lo(var_8097ADFC)($at) 
    mul.s   $f18, $f16, $f16           
    nop
    mul.s   $f6, $f4, $f4              
    add.s   $f0, $f18, $f6             
    sqrt.s  $f0, $f0                   
    mul.s   $f10, $f8, $f0             
    swc1    $f10, 0x0148(s0)           # 00000148
    lwc1    $f14, 0x00F4($sp)          
    jal     func_800CD76C              
    lwc1    $f12, 0x00EC($sp)          
    lui     $at, %hi(var_8097AE00)     # $at = 80980000
    lwc1    $f16, %lo(var_8097AE00)($at) 
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    mul.s   $f4, $f0, $f16             
    swc1    $f6, 0x0154(s0)            # 00000154
    trunc.w.s $f18, $f4                  
    mfc1    t3, $f18                   
    nop
    sh      t3, 0x00B6(s0)             # 000000B6
lbl_8097A700:
    lh      t0, 0x00FA($sp)            
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slt     $at, s2, t0                
    bnel    $at, $zero, lbl_8097A53C   
    lh      t6, 0x001C(s1)             # 0000001C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    lw      s3, 0x0104($sp)            
    mtc1    $at, $f24                  # $f24 = 5.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f20                  # $f20 = 25.00
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s0, $sp, 0x00D8            # s0 = FFFFFFC8
    addiu   s3, s3, 0x1960             # s3 = 80105D00
lbl_8097A744:
    lui     t4, %hi(var_8097AD94)      # t4 = 80980000
    addiu   t4, t4, %lo(var_8097AD94)  # t4 = 8097AD94
    lw      t7, 0x0000(t4)             # 8097AD94
    lui     t9, %hi(var_8097ADA0)      # t9 = 80980000
    addiu   t9, t9, %lo(var_8097ADA0)  # t9 = 8097ADA0
    sw      t7, 0x0000(s0)             # FFFFFFC8
    lw      t5, 0x0004(t4)             # 8097AD98
    addiu   t8, $sp, 0x00CC            # t8 = FFFFFFBC
    mov.s   $f12, $f20                 
    sw      t5, 0x0004(s0)             # FFFFFFCC
    lw      t7, 0x0008(t4)             # 8097AD9C
    sw      t7, 0x0008(s0)             # FFFFFFD0
    lw      t1, 0x0000(t9)             # 8097ADA0
    lw      t6, 0x0004(t9)             # 8097ADA4
    sw      t1, 0x0000(t8)             # FFFFFFBC
    lw      t1, 0x0008(t9)             # 8097ADA8
    sw      t6, 0x0004(t8)             # FFFFFFC0
    jal     func_80026D90              
    sw      t1, 0x0008(t8)             # FFFFFFC4
    swc1    $f0, 0x00D8($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x00DC($sp)          
    swc1    $f0, 0x00E0($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lwc1    $f16, 0x0024(s1)           # 00000024
    mov.s   $f12, $f22                 
    add.s   $f4, $f0, $f16             
    jal     func_80026D90              
    swc1    $f4, 0x00C0($sp)           
    lwc1    $f18, 0x0028(s1)           # 00000028
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f18             
    jal     func_80026D90              
    swc1    $f6, 0x00C4($sp)           
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f12                  # $f12 = 12.00
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x00C8($sp)          
    trunc.w.s $f16, $f0                  
    addiu   t2, $sp, 0x00CC            # t2 = FFFFFFBC
    sw      t2, 0x0010($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    mfc1    t0, $f16                   
    or      a1, s3, $zero              # a1 = 80105D00
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFB0
    sll     t4, t0, 16                 
    sra     t5, t4, 16                 
    addiu   t7, t5, 0x000F             # t7 = 0000000F
    mtc1    t7, $f4                    # $f4 = 0.00
    or      a3, s0, $zero              # a3 = FFFFFFC8
    cvt.s.w $f18, $f4                  
    jal     func_80979EFC              
    swc1    $f18, 0x0014($sp)          
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x000F            
    bne     $at, $zero, lbl_8097A744   
    nop
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f24                  # $f24 = 350.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s0, $sp, 0x00B4            # s0 = FFFFFFA4
lbl_8097A874:
    lui     t8, %hi(var_8097ADAC)      # t8 = 80980000
    addiu   t8, t8, %lo(var_8097ADAC)  # t8 = 8097ADAC
    lw      t6, 0x0000(t8)             # 8097ADAC
    lui     t2, %hi(var_8097ADB8)      # t2 = 80980000
    addiu   t2, t2, %lo(var_8097ADB8)  # t2 = 8097ADB8
    sw      t6, 0x0000(s0)             # FFFFFFA4
    lw      t9, 0x0004(t8)             # 8097ADB0
    addiu   t1, $sp, 0x00A8            # t1 = FFFFFF98
    lui     $at, 0x4100                # $at = 41000000
    sw      t9, 0x0004(s0)             # FFFFFFA8
    lw      t6, 0x0008(t8)             # 8097ADB4
    mtc1    $at, $f12                  # $f12 = 8.00
    sw      t6, 0x0008(s0)             # FFFFFFAC
    lw      t0, 0x0000(t2)             # 8097ADB8
    lw      t3, 0x0004(t2)             # 8097ADBC
    sw      t0, 0x0000(t1)             # FFFFFF98
    lw      t0, 0x0008(t2)             # 8097ADC0
    sw      t3, 0x0004(t1)             # FFFFFF9C
    jal     func_80026D90              
    sw      t0, 0x0008(t1)             # FFFFFFA0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_80026D64              
    swc1    $f0, 0x00B4($sp)           
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    jal     func_80026D90              
    swc1    $f0, 0x00B8($sp)           
    swc1    $f0, 0x00BC($sp)           
    swc1    $f22, 0x00AC($sp)          
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f6, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20                 
    add.s   $f8, $f0, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x009C($sp)           
    lwc1    $f10, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x00A0($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f18, $f0, $f4             
    jal     func_80026D64              
    swc1    $f18, 0x00A4($sp)          
    add.s   $f6, $f0, $f24             
    addiu   t4, $sp, 0x00A8            # t4 = FFFFFF98
    sw      t4, 0x0010($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    swc1    $f6, 0x0014($sp)           
    or      a1, s3, $zero              # a1 = 80105D00
    addiu   a2, $sp, 0x009C            # a2 = FFFFFF8C
    jal     func_80979FD4              
    or      a3, s0, $zero              # a3 = FFFFFFA4
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x000A            
    bne     $at, $zero, lbl_8097A874   
    nop
    beq     $zero, $zero, lbl_8097AAB0 
    lbu     v0, 0x0168(s1)             # 00000168
lbl_8097A978:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f24                  # $f24 = 5.00
    lui     $at, 0x4120                # $at = 41200000
    lw      s3, 0x0104($sp)            
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f20                  # $f20 = 3.00
    addiu   s0, $sp, 0x0090            # s0 = FFFFFF80
    addiu   s3, s3, 0x1960             # s3 = 80107660
lbl_8097A99C:
    lui     t5, %hi(var_8097ADC4)      # t5 = 80980000
    addiu   t5, t5, %lo(var_8097ADC4)  # t5 = 8097ADC4
    lw      t8, 0x0000(t5)             # 8097ADC4
    lui     t6, %hi(var_8097ADD0)      # t6 = 80980000
    addiu   t6, t6, %lo(var_8097ADD0)  # t6 = 8097ADD0
    sw      t8, 0x0000(s0)             # FFFFFF80
    lw      t7, 0x0004(t5)             # 8097ADC8
    addiu   t9, $sp, 0x0084            # t9 = FFFFFF74
    mov.s   $f12, $f22                 
    sw      t7, 0x0004(s0)             # FFFFFF84
    lw      t8, 0x0008(t5)             # 8097ADCC
    sw      t8, 0x0008(s0)             # FFFFFF88
    lw      t2, 0x0000(t6)             # 8097ADD0
    lw      t1, 0x0004(t6)             # 8097ADD4
    sw      t2, 0x0000(t9)             # FFFFFF74
    lw      t2, 0x0008(t6)             # 8097ADD8
    sw      t1, 0x0004(t9)             # FFFFFF78
    jal     func_80026D90              
    sw      t2, 0x0008(t9)             # FFFFFF7C
    swc1    $f0, 0x0090($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    add.s   $f8, $f0, $f20             
    mov.s   $f12, $f22                 
    jal     func_80026D90              
    swc1    $f8, 0x0094($sp)           
    swc1    $f0, 0x0098($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f24                 
    lwc1    $f10, 0x0024(s1)           # 00000024
    mov.s   $f12, $f24                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0078($sp)          
    lwc1    $f4, 0x0028(s1)            # 00000028
    mov.s   $f12, $f24                 
    add.s   $f18, $f0, $f4             
    jal     func_80026D90              
    swc1    $f18, 0x007C($sp)          
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f12                  # $f12 = 12.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x0080($sp)           
    trunc.w.s $f10, $f0                  
    addiu   t3, $sp, 0x0084            # t3 = FFFFFF74
    sw      t3, 0x0010($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    mfc1    t4, $f10                   
    or      a1, s3, $zero              # a1 = 80107660
    addiu   a2, $sp, 0x0078            # a2 = FFFFFF68
    sll     t5, t4, 16                 
    sra     t7, t5, 16                 
    addiu   t8, t7, 0x000F             # t8 = 0000000F
    mtc1    t8, $f16                   # $f16 = 0.00
    or      a3, s0, $zero              # a3 = FFFFFF80
    cvt.s.w $f4, $f16                  
    jal     func_80979EFC              
    swc1    $f4, 0x0014($sp)           
    addiu   s2, s2, 0x0001             # s2 = 00000002
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x0005            
    bne     $at, $zero, lbl_8097A99C   
    nop
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
lbl_8097AAAC:
    lbu     v0, 0x0168(s1)             # 00000168
lbl_8097AAB0:
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_8097AACC    
    andi    t6, v0, 0xFFFD             # t6 = 00000000
    lw      a0, 0x1C44(s4)             # 00001C44
    jal     func_80022FD0              
    sb      t6, 0x0168(s1)             # 00000168
lbl_8097AACC:
    addiu   s0, s1, 0x0158             # s0 = 00000158
    or      a1, s0, $zero              # a1 = 00000158
    jal     func_80050B00              
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s4, $at                
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s0, $zero              # a2 = 00000158
    lw      $ra, 0x0064($sp)           
lbl_8097AAF8:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    lw      s0, 0x004C($sp)            
    lw      s1, 0x0050($sp)            
    lw      s2, 0x0054($sp)            
    lw      s3, 0x0058($sp)            
    lw      s4, 0x005C($sp)            
    lw      s5, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0110           # $sp = 00000000


func_8097AB24:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x003C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v0, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     a1, 0x0601                 # a1 = 06010000
    sw      v0, 0x0004(v1)             # 00000004
    lh      t0, 0x001C(s1)             # 0000001C
    addiu   a1, a1, 0x9F20             # a1 = 06009F20
    sll     t2, a1,  4                 
    slti    $at, t0, 0x00C8            
    bne     $at, $zero, lbl_8097ABF4   
    srl     t3, t2, 28                 
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xB2F8             # a0 = 0600B2F8
    sll     t3, a0,  4                 
    srl     t4, t3, 28                 
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sll     t5, t4,  2                 
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(v0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_8097AD14 
    lw      $ra, 0x001C($sp)           
lbl_8097ABF4:
    lw      v0, 0x02C0(s0)             # 000002C0
    sll     t4, t3,  2                 
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    addu    t5, t5, t4                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t1, 0x0000(v0)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x003C($sp)            
    jal     func_8007E404              
    lw      a0, 0x0000(t9)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x0154(s1)            # 00000154
    mtc1    $at, $f14                  # $f14 = 100.00
    or      a3, $zero, $zero           # a3 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x0024(s1)           # 00000024
    jal     func_800AA7F4              
    lw      a2, 0x002C(s1)             # 0000002C
    lwc1    $f12, 0x0150(s1)           # 00000150
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x003C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a1, 0x0405                 # a1 = 04050000
    addiu   a1, a1, 0xE740             # a1 = 0404E740
    sll     t2, a1,  4                 
    srl     t3, t2, 28                 
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sll     t4, t3,  2                 
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t1, 0x0000(v1)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)           
lbl_8097AD14:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_8097AD30: .word 0x00000900, 0x00000030, 0x009C0000, 0x000001A4
.word func_80979D40
.word func_80979EC0
.word func_8097A358
.word func_8097AB24
var_8097AD50: .word \
0x0A110939, 0x10010000, 0x06000000, 0x00100700, \
0x00200000, 0x00100700, 0x00000000, 0x01010100, \
0x0014001E, 0x000A0000, 0x00000000
var_8097AD7C: .word 0x00000000, 0x00000000, 0x00000000
var_8097AD88: .word 0x00000000, 0x00000000, 0x00000000
var_8097AD94: .word 0x00000000, 0x00000000, 0x00000000
var_8097ADA0: .word 0x00000000, 0xBF800000, 0x00000000
var_8097ADAC: .word 0x00000000, 0x00000000, 0x00000000
var_8097ADB8: .word 0x00000000, 0x00000000, 0x00000000
var_8097ADC4: .word 0x00000000, 0x00000000, 0x00000000
var_8097ADD0: .word 0x00000000, 0xBF800000, 0x00000000, 0x00000000

.section .rodata

var_8097ADE0: .word 0xBF4CCCCD
var_8097ADE4: .word 0x461C4000
var_8097ADE8: .word 0x453B8000
var_8097ADEC: .word 0x459C4000
var_8097ADF0: .word 0xC51C4000
var_8097ADF4: .word 0x3E99999A
var_8097ADF8: .word 0x44D48000
var_8097ADFC: .word 0x43CCCCCD
var_8097AE00: .word 0x4622F983, 0x00000000, 0x00000000, 0x00000000

