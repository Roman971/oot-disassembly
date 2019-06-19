.section .text
func_80B804A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_80B80C30)      # a3 = 80B80000
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80B80C30)  # a3 = 80B80C30
    lw      a0, 0x0024($sp)            
    jal     func_8004ACEC              
    lw      a1, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80050B00              
    lw      a1, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B804F8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0190(s0)             # 00000190
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    blez    v0, lbl_80B80628           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    lh      t7, 0x0192(s0)             # 00000192
    lh      t9, 0x0194(s0)             # 00000194
    lui     a2, 0x3E19                 # a2 = 3E190000
    addiu   t8, t7, 0x1388             # t8 = 00001388
    addiu   t0, t9, 0x0E10             # t0 = 00000E10
    sh      t6, 0x0190(s0)             # 00000190
    sh      t8, 0x0192(s0)             # 00000192
    sh      t0, 0x0194(s0)             # 00000194
    ori     a2, a2, 0x999A             # a2 = 3E19999A
    addiu   a0, s0, 0x0188             # a0 = 00000188
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    addiu   a0, s0, 0x018C             # a0 = 0000018C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    lui     a2, 0x4220                 # a2 = 42200000
    lh      a0, 0x0192(s0)             # 00000192
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x0188(s0)            # 00000188
    lh      a0, 0x0192(s0)             # 00000192
    lwc1    $f8, 0x0008(s0)            # 00000008
    mul.s   $f6, $f0, $f4              
    addu    $at, a0, $zero             
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0188(s0)           # 00000188
    lwc1    $f4, 0x0010(s0)            # 00000010
    lh      a0, 0x0194(s0)             # 00000194
    mul.s   $f18, $f0, $f16            
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f6, $f18, $f4             
    jal     func_800636C4              # sins?
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x018C(s0)            # 0000018C
    lh      a0, 0x0194(s0)             # 00000194
    lh      t5, 0x0014(s0)             # 00000014
    mul.s   $f10, $f0, $f8             
    addu    $at, a0, $zero             
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    addu    t6, t4, t5                 
    jal     func_80063684              # coss?
    sh      t6, 0x00B4(s0)             # 000000B4
    lwc1    $f18, 0x018C(s0)           # 0000018C
    lh      t1, 0x0018(s0)             # 00000018
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    addu    t2, t0, t1                 
    beq     $zero, $zero, lbl_80B80660 
    sh      t2, 0x00B8(s0)             # 000000B8
lbl_80B80628:
    jal     func_8006385C              
    lw      a1, 0x0008(s0)             # 00000008
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0010(s0)             # 00000010
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      a1, 0x0014(s0)             # 00000014
    jal     func_80063704              
    addiu   a2, $zero, 0x0BB8          # a2 = 00000BB8
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    lh      a1, 0x0018(s0)             # 00000018
    jal     func_80063704              
    addiu   a2, $zero, 0x0BB8          # a2 = 00000BB8
lbl_80B80660:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B80674:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s5, 0x008C($sp)            
    sw      s2, 0x0080($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f30                  # $f30 = 2.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f28                  # $f28 = 5.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    lui     s3, %hi(var_80B80C64)      # s3 = 80B80000
    lui     s8, 0x0501                 # s8 = 05010000
    mtc1    $at, $f24                  # $f24 = 10.00
    addiu   s0, $zero, 0x03E8          # s0 = 000003E8
    addiu   s8, s8, 0xA5E8             # s8 = 0500A5E8
    addiu   s3, s3, %lo(var_80B80C64)  # s3 = 80B80C64
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, s2, 0x0024             # s4 = 00000024
    addiu   s7, $sp, 0x00C8            # s7 = FFFFFFF0
    addiu   s6, $sp, 0x00BC            # s6 = FFFFFFE4
lbl_80B80704:
    addiu   s0, s0, 0x4E20             # s0 = 00005208
    sll     s0, s0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16                 
    mul.s   $f20, $f0, $f24            
    sll     a0, s0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s2)            # 00000024
    add.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00BC($sp)           
    mul.s   $f10, $f0, $f26            
    lwc1    $f16, 0x0028(s2)           # 00000028
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    add.s   $f18, $f10, $f16           
    add.s   $f4, $f18, $f28            
    jal     func_80063684              # coss?
    swc1    $f4, 0x00C0($sp)           
    mul.s   $f6, $f0, $f20             
    lwc1    $f8, 0x002C(s2)            # 0000002C
    add.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C4($sp)          
    mul.s   $f16, $f0, $f24            
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    add.s   $f20, $f16, $f30           
    mul.s   $f18, $f0, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00C8($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f22, $f0                  
    mtc1    s1, $f4                    # $f4 = 0.00
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f10                  # $f10 = 2.50
    cvt.s.w $f6, $f4                   
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f8, $f0, $f6              
    nop
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f4, $f22, $f18            
    add.s   $f6, $f16, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x00CC($sp)           
    mul.s   $f8, $f0, $f20             
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFE4
    or      a2, s7, $zero              # a2 = FFFFFFF0
    or      a3, s4, $zero              # a3 = 00000024
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    bne     s1, $zero, lbl_80B80800    
    swc1    $f8, 0x00D0($sp)           
    addiu   v0, $zero, 0x0029          # v0 = 00000029
    beq     $zero, $zero, lbl_80B8081C 
    addiu   v1, $zero, 0xFE3E          # v1 = FFFFFE3E
lbl_80B80800:
    slti    $at, s1, 0x0004            
    beq     $at, $zero, lbl_80B80818   
    addiu   v0, $zero, 0x0045          # v0 = 00000045
    addiu   v0, $zero, 0x0025          # v0 = 00000025
    beq     $zero, $zero, lbl_80B8081C 
    addiu   v1, $zero, 0xFE84          # v1 = FFFFFE84
lbl_80B80818:
    addiu   v1, $zero, 0xFEC0          # v1 = FFFFFEC0
lbl_80B8081C:
    lh      t8, 0x0000(s3)             # 80B80C64
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0038($sp)            
    sw      t1, 0x0034($sp)            
    sw      t0, 0x0030($sp)            
    sw      t9, 0x0028($sp)            
    sw      t7, 0x001C($sp)            
    sw      v1, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    sw      t6, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x002C($sp)         
    sw      s8, 0x003C($sp)            
    jal     func_8001D998              
    sw      t8, 0x0024($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     s1, $at, lbl_80B80704      
    addiu   s3, s3, 0x0002             # s3 = 80B80C66
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f20                  # $f20 = 140.00
    addiu   t3, $zero, 0x00B4          # t3 = 000000B4
    addiu   t4, $zero, 0x005A          # t4 = 0000005A
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    mfc1    a2, $f20                   
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000024
    jal     func_80026308              
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    mfc1    a2, $f20                   
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    addiu   t7, $zero, 0x005A          # t7 = 0000005A
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000024
    jal     func_80026308              
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    lw      $ra, 0x009C($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80B80920:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80B80C78)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B80C78)  # a1 = 80B80C78
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0024($sp)            
    lui     $at, 0x447A                # $at = 447A0000
    lbu     t7, 0x1D6C(t6)             # 00001D6C
    beql    t7, $zero, lbl_80B80970    
    lh      t8, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x00F4(s0)            # 000000F4
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00F4(s0)            # 000000F4
    lh      t8, 0x00B6(s0)             # 000000B6
lbl_80B80970:
    lui     $at, 0x4780                # $at = 47800000
    bnel    t8, $zero, lbl_80B809A4    
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f12                  # $f12 = 65536.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    mfc1    v0, $f10                   
    nop
    sh      v0, 0x0016(s0)             # 00000016
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B809A4:
    jal     func_80B804A0              
    lw      a1, 0x0024($sp)            
    lui     a2, %hi(var_80B80C5C)      # a2 = 80B80000
    addiu   a2, a2, %lo(var_80B80C5C)  # a2 = 80B80C5C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B809E8    
    lui     $at, 0x42A0                # $at = 42A00000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B809F8 
    lw      $ra, 0x001C($sp)           
lbl_80B809E8:
    mtc1    $at, $f16                  # $f16 = 0.00
    nop
    swc1    $f16, 0x00BC(s0)           # 000000BC
    lw      $ra, 0x001C($sp)           
lbl_80B809F8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B80A08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a3, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B80A34:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80B804F8              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x014D(s0)             # 0000014D
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80B80B08    
    lui     $at, 0x4416                # $at = 44160000
    lw      t7, 0x0178(s0)             # 00000178
    lui     $at, 0x4000                # $at = 40000000
    ori     $at, $at, 0x0040           # $at = 40000040
    lw      t8, 0x0000(t7)             # 00000000
    and     t9, t8, $at                
    beql    t9, $zero, lbl_80B80B08    
    lui     $at, 0x4416                # $at = 44160000
    lh      t1, 0x0196(s0)             # 00000196
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x014D(s0)             # 0000014D
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0196(s0)             # 00000196
    lh      t3, 0x0196(s0)             # 00000196
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t3, 0x0002            
    beq     $at, $zero, lbl_80B80AC8   
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    sh      t4, 0x0190(s0)             # 00000190
    swc1    $f4, 0x0188(s0)            # 00000188
    beq     $zero, $zero, lbl_80B80B50 
    swc1    $f6, 0x018C(s0)            # 0000018C
lbl_80B80AC8:
    jal     func_80B80674              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2810          # a3 = 00002810
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B80B54 
    lw      $ra, 0x001C($sp)           
    lui     $at, 0x4416                # $at = 44160000
lbl_80B80B08:
    mtc1    $at, $f10                  # $f10 = 600.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lui     $at, 0x0001                # $at = 00010000
    andi    t5, v0, 0xFFFD             # t5 = 00000000
    c.lt.s  $f8, $f10                  
    ori     $at, $at, 0x1E60           # $at = 00011E60
    sb      t5, 0x014D(s0)             # 0000014D
    addu    a1, s1, $at                
    bc1f    lbl_80B80B50               
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    sw      a2, 0x0020($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B80B50:
    lw      $ra, 0x001C($sp)           
lbl_80B80B54:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B80B64:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a3, 0x001C($sp)            
    lw      a2, 0x0024($sp)            
    lui     t1, 0xFA00                 # t1 = FA000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0xFFAA                 # t2 = FFAA0000
    ori     t2, t2, 0x82FF             # t2 = FFAA82FF
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t5, 0x0501                 # t5 = 05010000
    addiu   t5, t5, 0xA3B8             # t5 = 0500A3B8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B80C10: .word 0x01D20600, 0x00000000, 0x00020000, 0x00000198
.word func_80B80920
.word func_80B80A08
.word func_80B80A34
.word func_80B80B64
var_80B80C30: .word \
0x0C000D39, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x4FC1FFF6, 0x00000000, 0x00010100, \
0x00320046, 0x00000000, 0x00000000
var_80B80C5C: .word 0x0000000C, 0x003CFF00
var_80B80C64: .word \
0x00910087, 0x00730055, 0x004B0035, 0x002D0028, \
0x00230000
var_80B80C78: .word \
0xC8500190, 0xB0F407D0, 0xB0F800FA, 0x30FC01F4, \
0x00000000, 0x00000000

.section .rodata


