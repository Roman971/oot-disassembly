.section .text
func_80A7F8B0:
    sh      $zero, 0x018C(a0)          # 0000018C
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A7F8C0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    sw      a2, 0x0048($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0028(a3)            # 00000028
    lw      a0, 0x0044($sp)            
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFEC
    add.s   $f10, $f6, $f8             
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFE8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x002C(a3)           # 0000002C
    sw      a3, 0x0040($sp)            
    sw      t6, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x0034($sp)          
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    lw      a3, 0x0040($sp)            
    lwc1    $f4, 0x0048($sp)           
    c.lt.s  $f18, $f0                  
    or      v0, $zero, $zero           # v0 = 00000000
    bc1f    lbl_80A7F954               
    nop
    add.s   $f6, $f0, $f4              
    addiu   a0, a3, 0x0008             # a0 = 00000008
    addiu   a1, a3, 0x0024             # a1 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f6, 0x0028(a3)            # 00000028
    beq     $zero, $zero, lbl_80A7F954 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A7F954:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7F964:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v1, 0x001C(t6)             # 0000001C
    lw      a0, 0x001C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    andi    v0, v1, 0x0003             # v0 = 00000000
    beq     v0, $zero, lbl_80A7F9A4    
    addiu   a2, a2, 0x0024             # a2 = 00000024
    beq     v0, $at, lbl_80A7F9DC      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A7FA20      
lbl_80A7F9A4:
    sra     v0, v1,  8                 
    andi    v0, v0, 0x000F             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x000D            
    bnel    $at, $zero, lbl_80A7F9C8   
    or      a3, v0, $zero              # a3 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      a3, v0, $zero              # a3 = 00000000
lbl_80A7F9C8:
    sll     a3, a3, 20                 
    jal     func_80013A84              
    sra     a3, a3, 16                 
    beq     $zero, $zero, lbl_80A7FA24 
    lw      $ra, 0x0014($sp)           
lbl_80A7F9DC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      v0, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    c.lt.s  $f0, $f4                   
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    addiu   a1, v0, 0x0024             # a1 = 00000024
    bc1f    lbl_80A7FA18               
    nop
    jal     func_80013678              
    addiu   a1, v0, 0x0024             # a1 = 00000024
    beq     $zero, $zero, lbl_80A7FA24 
    lw      $ra, 0x0014($sp)           
lbl_80A7FA18:
    jal     func_80013678              
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_80A7FA20:
    lw      $ra, 0x0014($sp)           
lbl_80A7FA24:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7FA30:
    lwc1    $f4, 0x0060(a0)            # 00000060
    lwc1    $f6, 0x006C(a0)            # 0000006C
    lwc1    $f0, 0x0070(a0)            # 00000070
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(a0)            # 00000060
    lwc1    $f10, 0x0060(a0)           # 00000060
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A7FA5C               
    nop
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80A7FA5C:
    jr      $ra                        
    nop


func_80A7FA64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x001C($sp)          
    lui     $at, %hi(var_80A80B90)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A80B90)($at) 
    lui     $at, %hi(var_80A80B94)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A80B94)($at) 
    mul.s   $f6, $f0, $f4              
    lwc1    $f12, 0x001C($sp)          
    lw      a0, 0x0018($sp)            
    lwc1    $f2, 0x0000(a0)            # 00000000
    lwc1    $f14, 0x0004(a0)           # 00000004
    sub.s   $f10, $f6, $f8             
    lwc1    $f16, 0x0008(a0)           # 00000008
    mul.s   $f18, $f10, $f12           
    add.s   $f12, $f12, $f18           
    mul.s   $f4, $f2, $f12             
    nop
    mul.s   $f8, $f14, $f12            
    nop
    mul.s   $f18, $f16, $f12           
    sub.s   $f6, $f2, $f4              
    sub.s   $f10, $f14, $f8            
    swc1    $f6, 0x0000(a0)            # 00000000
    sub.s   $f4, $f16, $f18            
    swc1    $f10, 0x0004(a0)           # 00000004
    swc1    $f4, 0x0008(a0)            # 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A7FAE8:
    lui     $at, %hi(var_80A80B98)     # $at = 80A80000
    lwc1    $f0, %lo(var_80A80B98)($at) 
    lui     $at, %hi(var_80A80B9C)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A80B9C)($at) 
    swc1    $f0, 0x0050(a0)            # 00000050
    swc1    $f0, 0x0058(a0)            # 00000058
    swc1    $f4, 0x0054(a0)            # 00000054
    jr      $ra                        
    nop


func_80A7FB0C:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sw      s3, 0x0084($sp)            
    sw      s0, 0x0078($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lui     $at, %hi(var_80A80BA0)     # $at = 80A80000
    lwc1    $f30, %lo(var_80A80BA0)($at) 
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f28                  # $f28 = 8.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    lui     s1, %hi(var_80A80B2C)      # s1 = 80A80000
    lui     s8, 0x0403                 # s8 = 04030000
    lui     s6, 0x0403                 # s6 = 04030000
    lui     s5, %hi(var_80A80B5C)      # s5 = 80A80000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s5, s5, %lo(var_80A80B5C)  # s5 = 80A80B5C
    addiu   s6, s6, 0x5A80             # s6 = 04035A80
    addiu   s8, s8, 0x5B40             # s8 = 04035B40
    addiu   s1, s1, %lo(var_80A80B2C)  # s1 = 80A80B2C
    addiu   s7, $zero, 0x0007          # s7 = 00000007
    addiu   s4, $sp, 0x00C4            # s4 = FFFFFFF4
    addiu   s2, $sp, 0x00B8            # s2 = FFFFFFE8
    lwc1    $f4, 0x0000(s1)            # 80A80B2C
lbl_80A7FBB8:
    lwc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f16, 0x0024(s0)           # 00000024
    mul.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0004(s1)            # 80A80B30
    mul.s   $f10, $f8, $f24            
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x00B8($sp)          
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0028(s0)           # 00000028
    mul.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0008(s1)            # 80A80B34
    mul.s   $f16, $f8, $f24            
    add.s   $f18, $f10, $f16           
    add.s   $f4, $f18, $f20            
    swc1    $f4, 0x00BC($sp)           
    lwc1    $f8, 0x0058(s0)            # 00000058
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f16, $f10, $f24           
    add.s   $f4, $f18, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C0($sp)           
    sub.s   $f6, $f0, $f22             
    mul.s   $f8, $f6, $f28             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00C4($sp)           
    mul.s   $f10, $f0, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C8($sp)          
    sub.s   $f18, $f0, $f22            
    mul.s   $f16, $f18, $f28           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00CC($sp)          
    mul.s   $f4, $f0, $f30             
    addiu   t6, $zero, 0xFF9C          # t6 = FFFFFF9C
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    trunc.w.s $f6, $f4                   
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    mfc1    t1, $f6                    
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t9, 0x001C($sp)            
    andi    t2, t1, 0x0007             # t2 = 00000000
    sll     t3, t2,  1                 
    addu    t4, s5, t3                 
    lh      t5, 0x0000(t4)             # 00000000
    sw      s6, 0x003C($sp)            
    sw      t8, 0x0038($sp)            
    sw      t7, 0x0034($sp)            
    sw      t6, 0x0030($sp)            
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0028($sp)         
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFE8
    or      a2, s4, $zero              # a2 = FFFFFFF4
    or      a3, s2, $zero              # a3 = FFFFFFE8
    sw      $zero, 0x0020($sp)         
    jal     func_8001D998              
    sw      t5, 0x0024($sp)            
    lwc1    $f8, 0x0000(s1)            # 80A80B2C
    lwc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f18, $f8, $f10            
    lwc1    $f8, 0x0004(s1)            # 80A80B30
    mul.s   $f16, $f18, $f26           
    add.s   $f6, $f4, $f16             
    swc1    $f6, 0x00B8($sp)           
    lwc1    $f10, 0x0054(s0)           # 00000054
    lwc1    $f16, 0x0028(s0)           # 00000028
    mul.s   $f18, $f8, $f10            
    lwc1    $f10, 0x0008(s1)           # 80A80B34
    mul.s   $f4, $f18, $f26            
    add.s   $f6, $f16, $f4             
    add.s   $f8, $f6, $f20             
    swc1    $f8, 0x00BC($sp)           
    lwc1    $f18, 0x0058(s0)           # 00000058
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f16, $f10, $f18           
    nop
    mul.s   $f4, $f16, $f26            
    add.s   $f8, $f6, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00C0($sp)           
    sub.s   $f10, $f0, $f22            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    nop
    mul.s   $f16, $f10, $f18           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00C4($sp)          
    mul.s   $f6, $f0, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00C8($sp)           
    sub.s   $f4, $f0, $f22             
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    nop
    mul.s   $f10, $f4, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00CC($sp)          
    mul.s   $f18, $f0, $f30            
    addiu   t9, $zero, 0xFF9C          # t9 = FFFFFF9C
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    trunc.w.s $f16, $f18                 
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mfc1    t4, $f16                   
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sw      t2, 0x001C($sp)            
    div     $zero, t4, s7              
    mfhi    t5                         
    sll     t6, t5,  1                 
    addu    t7, s5, t6                 
    lh      t8, 0x0000(t7)             # 00000000
    sw      s8, 0x003C($sp)            
    sw      t1, 0x0038($sp)            
    sw      t0, 0x0034($sp)            
    sw      t9, 0x0030($sp)            
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0028($sp)         
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFE8
    or      a2, s4, $zero              # a2 = FFFFFFF4
    or      a3, s2, $zero              # a3 = FFFFFFE8
    sw      $zero, 0x0020($sp)         
    bne     s7, $zero, lbl_80A7FDE4    
    nop
    break   # 0x01C00
lbl_80A7FDE4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s7, $at, lbl_80A7FDFC      
    lui     $at, 0x8000                # $at = 80000000
    bne     t4, $at, lbl_80A7FDFC      
    nop
    break   # 0x01800
lbl_80A7FDFC:
    sw      t8, 0x0024($sp)            
    jal     func_8001D998              
    nop
    lui     t2, %hi(var_80A80B5C)      # t2 = 80A80000
    addiu   t2, t2, %lo(var_80A80B5C)  # t2 = 80A80B5C
    addiu   s1, s1, 0x000C             # s1 = 80A80B38
    bnel    s1, t2, lbl_80A7FBB8       
    lwc1    $f4, 0x0000(s1)            # 80A80B38
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
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_80A7FE64:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f20, 0x0030($sp)          
    lui     $at, %hi(var_80A80BA4)     # $at = 80A80000
    lwc1    $f20, %lo(var_80A80BA4)($at) 
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, s2, 0x1C24             # s3 = 00001C24
    addiu   s4, $zero, 0x0003          # s4 = 00000003
lbl_80A7FEA0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f20             
    lwc1    $f4, 0x0028(s1)            # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sw      t8, 0x0024($sp)            
    trunc.w.s $f10, $f8                  
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0018($sp)         
    or      a0, s3, $zero              # a0 = 00001C24
    mfc1    t7, $f10                   
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    swc1    $f6, 0x0014($sp)           
    jal     func_80025110              # ActorSpawn
    sw      t7, 0x001C($sp)            
    beq     v0, $zero, lbl_80A7FEFC    
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s4, lbl_80A7FEA0       
    nop
lbl_80A7FEFC:
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80A7FF20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_80A80AF8)      # a3 = 80A80000
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A80AF8)  # a3 = 80A80AF8
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


func_80A7FF78:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A80B6C)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A80B6C)  # a1 = 80A80B6C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    lui     $at, 0x447A                # $at = 447A0000
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beq     t6, $zero, lbl_80A7FFC4    
    nop
    lwc1    $f4, 0x00F4(s0)            # 000000F4
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00F4(s0)            # 000000F4
lbl_80A7FFC4:
    jal     func_80A7FF20              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(var_80A80B24)      # a2 = 80A80000
    addiu   a2, a2, %lo(var_80A80B24)  # a2 = 80A80B24
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4780                # $at = 47800000
    bnel    t7, $zero, lbl_80A80018    
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f12                  # $f12 = 65536.00
    jal     func_80026D64              
    nop
    trunc.w.s $f10, $f0                  
    mfc1    v0, $f10                   
    nop
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x0016(s0)             # 00000016
    sh      v0, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A80018:
    lw      a1, 0x0024($sp)            
    jal     func_80A7F8C0              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    bne     v0, $zero, lbl_80A8003C    
    lw      a0, 0x0024($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A80090 
    lw      $ra, 0x001C($sp)           
lbl_80A8003C:
    lh      t9, 0x001C(s0)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(var_80A80AF0)      # a1 = 80A80000
    andi    t0, t9, 0x0003             # t0 = 00000000
    sll     t1, t0,  1                 
    addu    a1, a1, t1                 
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at                
    jal     func_80081628              # ObjectIndex
    lh      a1, %lo(var_80A80AF0)(a1)  
    sb      v0, 0x018E(s0)             # 0000018E
    lb      t2, 0x018E(s0)             # 0000018E
    bgez    t2, lbl_80A80084           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A80090 
    lw      $ra, 0x001C($sp)           
lbl_80A80084:
    jal     func_80A800CC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A80090:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A800A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a3, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A800CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A800F0)     # a1 = 80A80000
    jal     func_80A7F8B0              
    addiu   a1, a1, %lo(func_80A800F0) # a1 = 80A800F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A800F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081688              
    lb      a1, 0x018E(s0)             # 0000018E
    beql    v0, $zero, lbl_80A80170    
    lw      $ra, 0x001C($sp)           
    lw      t6, 0x0004(s0)             # 00000004
    andi    t7, t6, 0x0800             # t7 = 00000000
    beq     t7, $zero, lbl_80A80140    
    nop
    jal     func_80A80798              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8014C 
    lw      t0, 0x0004(s0)             # 00000004
lbl_80A80140:
    jal     func_80A80180              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
lbl_80A8014C:
    lb      t9, 0x018E(s0)             # 0000018E
    lui     t8, %hi(func_80A80A50)     # t8 = 80A80000
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    addiu   t8, t8, %lo(func_80A80A50) # t8 = 80A80A50
    and     t1, t0, $at                
    sw      t8, 0x0134(s0)             # 00000134
    sw      t1, 0x0004(s0)             # 00000004
    sb      t9, 0x001E(s0)             # 0000001E
    lw      $ra, 0x001C($sp)           
lbl_80A80170:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A80180:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A801B8)     # a1 = 80A80000
    addiu   a1, a1, %lo(func_80A801B8) # a1 = 80A801B8
    jal     func_80A7F8B0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0004(a0)             # 00000004
    and     t7, t6, $at                
    sw      t7, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A801B8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0              
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A8020C    
    lbu     v0, 0x0151(s0)             # 00000151
    jal     func_80A80380              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x0869          # a3 = 00000869
    beq     $zero, $zero, lbl_80A80370 
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0151(s0)             # 00000151
lbl_80A8020C:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A802A0    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    jal     func_80A7FB0C              
    sb      t7, 0x0151(s0)             # 00000151
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7F964              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x284E          # a3 = 0000284E
    lh      v0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t8, v0,  4                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80A80270    
    andi    t0, v0, 0x0003             # t0 = 00000000
    jal     func_80A7FE64              
    or      a1, s1, $zero              # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t0, v0, 0x0003             # t0 = 00000000
lbl_80A80270:
    bne     t0, $zero, lbl_80A80288    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A80370 
    lw      $ra, 0x001C($sp)           
lbl_80A80288:
    jal     func_80A80798              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0004(s0)             # 00000004
    ori     t2, t1, 0x0800             # t2 = 00000800
    beq     $zero, $zero, lbl_80A8036C 
    sw      t2, 0x0004(s0)             # 00000004
lbl_80A802A0:
    lbu     v0, 0x0152(s0)             # 00000152
    lui     $at, 0x4140                # $at = 41400000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, v0, 0x0008             # t3 = 00000000
    bne     t3, $zero, lbl_80A802D8    
    addiu   a1, s0, 0x0140             # a1 = 00000140
    mtc1    $at, $f4                   # $f4 = 12.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    ori     t4, v0, 0x0008             # t4 = 00000008
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A802DC               
    lui     $at, 0x4416                # $at = 44160000
    sb      t4, 0x0152(s0)             # 00000152
lbl_80A802D8:
    lui     $at, 0x4416                # $at = 44160000
lbl_80A802DC:
    mtc1    $at, $f10                  # $f10 = 600.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A80370               
    lw      $ra, 0x001C($sp)           
    jal     func_80050B00              
    sw      a1, 0x0028($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x0024($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f18                  # $f18 = 400.00
    lwc1    $f16, 0x0090(s0)           # 00000090
    lw      a1, 0x0024($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80A80370               
    lw      $ra, 0x001C($sp)           
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A80370               
    lw      $ra, 0x001C($sp)           
    jal     func_80022D20              
    or      a1, s1, $zero              # a1 = 00000000
lbl_80A8036C:
    lw      $ra, 0x001C($sp)           
lbl_80A80370:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A80380:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A803BC)     # a1 = 80A80000
    addiu   a1, a1, %lo(func_80A803BC) # a1 = 80A803BC
    jal     func_80A7F8B0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    lw      t7, 0x0004(a0)             # 00000004
    sb      t6, 0x0003(a0)             # 00000003
    ori     t8, t7, 0x0010             # t8 = 00000010
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A803BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022D40              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A80488    
    lw      t6, 0x002C($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lb      t7, 0x1CBC(t7)             # 00011CBC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8049C              
    sb      t7, 0x0003(s0)             # 00000003
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0068(s0)            # 00000068
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f4              
    jal     func_80063684              # coss?
    swc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f8, 0x0068(s0)            # 00000068
    addiu   t8, $zero, 0x00F0          # t8 = 000000F0
    sb      t8, 0x00AE(s0)             # 000000AE
    mul.s   $f10, $f0, $f8             
    lui     $at, %hi(var_80A80BA8)     # $at = 80A80000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x0064(s0)           # 00000064
    lwc1    $f16, %lo(var_80A80BA8)($at) 
    jal     func_80A7FA30              
    swc1    $f16, 0x006C(s0)           # 0000006C
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_80A7FA64              
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t9, $zero, 0x00C5          # t9 = 000000C5
    sw      t9, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40F0                 # a2 = 40F00000
    lui     a3, 0x420C                 # a3 = 420C0000
    jal     func_80021E6C              
    swc1    $f18, 0x0010($sp)          
    lui     $at, %hi(var_80A80BAC)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A80BAC)($at) 
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_80A80488:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8049C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A80508)     # a1 = 80A80000
    jal     func_80A7F8B0              
    addiu   a1, a1, %lo(func_80A80508) # a1 = 80A80508
    addiu   t6, $zero, 0xF448          # t6 = FFFFF448
    lui     $at, %hi(var_80A80AC0)     # $at = 80A80000
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, %lo(var_80A80AC0)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x44C8                # $at = 44C80000
    mtc1    $at, $f8                   # $f8 = 1600.00
    sub.s   $f6, $f0, $f4              
    lui     $at, %hi(var_80A80AC8)     # $at = 80A80000
    lw      $ra, 0x0014($sp)           
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    nop
    sh      t8, %lo(var_80A80AC8)($at) 
    lui     $at, %hi(var_80A80AC4)     # $at = 80A80000
    sh      $zero, %lo(var_80A80AC4)($at) 
    lui     $at, %hi(var_80A80ACC)     # $at = 80A80000
    sh      $zero, %lo(var_80A80ACC)($at) 
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A80508:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x000B             # t6 = 00000000
    beq     t6, $zero, lbl_80A805A8    
    andi    t8, v0, 0x0040             # t8 = 00000000
    andi    t7, v0, 0x0020             # t7 = 00000000
    bne     t7, $zero, lbl_80A8054C    
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x284E          # a3 = 0000284E
lbl_80A8054C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7FB0C              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7F964              
    or      a1, s1, $zero              # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $zero, lbl_80A80588    
    nop
    beq     v0, $at, lbl_80A80598      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80A80788      
    lw      $ra, 0x0024($sp)           
lbl_80A80588:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A80788 
    lw      $ra, 0x0024($sp)           
lbl_80A80598:
    jal     func_80A8082C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A80788 
    lw      $ra, 0x0024($sp)           
lbl_80A805A8:
    beq     t8, $zero, lbl_80A806BC    
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t9, $zero, 0x0190          # t9 = 00000190
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f4, 0x0030($sp)           
    lwc1    $f8, 0x0084(s0)            # 00000084
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    or      a2, $zero, $zero           # a2 = 00000000
    add.s   $f10, $f6, $f8             
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f10, 0x0034($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t9, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8001CF94              
    swc1    $f16, 0x0038($sp)          
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    addiu   a3, $zero, 0x028A          # a3 = 0000028A
    jal     func_8001CF3C              
    sw      $zero, 0x0010($sp)         
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sw      t2, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x0190          # a2 = 00000190
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x0320          # a3 = 00000320
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    sw      t3, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    jal     func_8001CF3C              
    addiu   a3, $zero, 0x044C          # a3 = 0000044C
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f18                  # $f18 = -3.00
    lui     v0, %hi(var_80A80AC4)      # v0 = 80A80000
    lui     v1, %hi(var_80A80ACC)      # v1 = 80A80000
    swc1    $f18, 0x0070(s0)           # 00000070
    lui     t0, %hi(var_80A80AC0)      # t0 = 80A80000
    lui     t1, %hi(var_80A80AC8)      # t1 = 80A80000
    addiu   t1, t1, %lo(var_80A80AC8)  # t1 = 80A80AC8
    addiu   t0, t0, %lo(var_80A80AC0)  # t0 = 80A80AC0
    addiu   v1, v1, %lo(var_80A80ACC)  # v1 = 80A80ACC
    addiu   v0, v0, %lo(var_80A80AC4)  # v0 = 80A80AC4
    lh      t4, 0x0000(v0)             # 80A80AC4
    lh      t6, 0x0000(t0)             # 80A80AC0
    lh      t8, 0x0000(v1)             # 80A80ACC
    lh      t2, 0x0000(t1)             # 80A80AC8
    sra     t5, t4,  1                 
    sra     t7, t6,  1                 
    sra     t9, t8,  1                 
    sra     t3, t2,  1                 
    sh      t5, 0x0000(v0)             # 80A80AC4
    sh      t7, 0x0000(t0)             # 80A80AC0
    sh      t9, 0x0000(v1)             # 80A80ACC
    sh      t3, 0x0000(t1)             # 80A80AC8
    lhu     t4, 0x0088(s0)             # 00000088
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    andi    t5, t4, 0xFFBF             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x28C5          # a3 = 000028C5
lbl_80A806BC:
    jal     func_80A7FA30              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A80AC4)      # a0 = 80A80000
    lui     a1, %hi(var_80A80AC0)      # a1 = 80A80000
    lh      a1, %lo(var_80A80AC0)(a1)  
    addiu   a0, a0, %lo(var_80A80AC4)  # a0 = 80A80AC4
    jal     func_800637D4              
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    lui     a0, %hi(var_80A80ACC)      # a0 = 80A80000
    lui     a1, %hi(var_80A80AC8)      # a1 = 80A80000
    lh      a1, %lo(var_80A80AC8)(a1)  
    addiu   a0, a0, %lo(var_80A80ACC)  # a0 = 80A80ACC
    jal     func_800637D4              
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    lui     t7, %hi(var_80A80AC4)      # t7 = 80A80000
    lh      t7, %lo(var_80A80AC4)(t7)  
    lh      t6, 0x00B4(s0)             # 000000B4
    lui     t2, %hi(var_80A80ACC)      # t2 = 80A80000
    lh      t9, 0x00B6(s0)             # 000000B6
    addu    t8, t6, t7                 
    sh      t8, 0x00B4(s0)             # 000000B4
    lh      t2, %lo(var_80A80ACC)(t2)  
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    addu    t3, t9, t2                 
    sh      t3, 0x00B6(s0)             # 000000B6
    jal     func_80A7FA64              
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t4, $zero, 0x00C5          # t4 = 000000C5
    sw      t4, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40F0                 # a2 = 40F00000
    lui     a3, 0x420C                 # a3 = 420C0000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    addiu   a2, s0, 0x0140             # a2 = 00000140
    or      a1, a2, $zero              # a1 = 00000140
    sw      a2, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A80788:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A80798:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a1, %hi(func_80A807E8)     # a1 = 80A80000
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $at, lbl_80A807D0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A807D8      
    lui     a1, %hi(func_80A8081C)     # a1 = 80A80000
    jal     func_80A7F8B0              
    addiu   a1, a1, %lo(func_80A8081C) # a1 = 80A8081C
    beq     $zero, $zero, lbl_80A807DC 
    lw      $ra, 0x0014($sp)           
lbl_80A807D0:
    jal     func_80A7F8B0              
    addiu   a1, a1, %lo(func_80A807E8) # a1 = 000007E8
lbl_80A807D8:
    lw      $ra, 0x0014($sp)           
lbl_80A807DC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A807E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x018C(a0)             # 0000018C
    slti    $at, t6, 0x0078            
    bnel    $at, $zero, lbl_80A80810   
    lw      $ra, 0x0014($sp)           
    jal     func_80A808FC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A80810:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8081C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A8082C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f8                   # $f8 = 9.00
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f16, 0x0010(a0)           # 00000010
    sub.s   $f10, $f6, $f8             
    swc1    $f4, 0x0024(a0)            # 00000024
    swc1    $f16, 0x002C(a0)           # 0000002C
    swc1    $f10, 0x0028(a0)           # 00000028
    jal     func_80A7FAE8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80A80898)     # a1 = 80A80000
    addiu   a1, a1, %lo(func_80A80898) # a1 = 80A80898
    lwl     t7, 0x0014(a0)             # 00000014
    lwr     t7, 0x0017(a0)             # 00000017
    swl     t7, 0x00B4(a0)             # 000000B4
    swr     t7, 0x00B7(a0)             # 000000B7
    lhu     t7, 0x0018(a0)             # 00000018
    jal     func_80A7F8B0              
    sh      t7, 0x00B8(a0)             # 000000B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A80898:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x018C(a3)             # 0000018C
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    slti    $at, t6, 0x0079            
    bne     $at, $zero, lbl_80A808EC   
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(a3)             # 0000000C
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80A808EC    
    lw      a3, 0x0018($sp)            
    lh      t7, 0x018C(a3)             # 0000018C
    slti    $at, t7, 0x00AA            
    bnel    $at, $zero, lbl_80A808F0   
    lw      $ra, 0x0014($sp)           
    jal     func_80A808FC              
    or      a0, a3, $zero              # a0 = 00000000
lbl_80A808EC:
    lw      $ra, 0x0014($sp)           
lbl_80A808F0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A808FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A80954)     # a1 = 80A80000
    addiu   a1, a1, %lo(func_80A80954) # a1 = 80A80954
    jal     func_80A7F8B0              
    sw      a0, 0x0018($sp)            
    jal     func_80A7FAE8              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    lwl     t7, 0x0014(a0)             # 00000014
    lwr     t7, 0x0017(a0)             # 00000017
    lw      t8, 0x0004(a0)             # 00000004
    swl     t7, 0x00B4(a0)             # 000000B4
    swr     t7, 0x00B7(a0)             # 000000B7
    lhu     t7, 0x0018(a0)             # 00000018
    and     t9, t8, $at                
    sw      t9, 0x0004(a0)             # 00000004
    sh      t7, 0x00B8(a0)             # 000000B8
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A80954:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a2, 0x3C65                 # a2 = 3C650000
    ori     a2, a2, 0x6042             # a2 = 3C656042
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    jal     func_8006385C              
    addiu   a0, s0, 0x0054             # a0 = 00000054
    andi    v1, v0, 0x0001             # v1 = 00000000
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a2, 0x3C34                 # a2 = 3C340000
    ori     a2, a2, 0x3958             # a2 = 3C343958
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    sw      v1, 0x0024($sp)            
    jal     func_8006385C              
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lw      v1, 0x0024($sp)            
    lwc1    $f4, 0x0050(s0)            # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    and     v1, v1, v0                 
    beq     v1, $zero, lbl_80A809D8    
    swc1    $f4, 0x0058(s0)            # 00000058
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    jal     func_80A80180              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x0152(s0)             # 00000152
    andi    t7, t6, 0xFFF7             # t7 = 00000000
    sb      t7, 0x0152(s0)             # 00000152
lbl_80A809D8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A809EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x018C(a0)             # 0000018C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x018C(a0)             # 0000018C
    sw      a0, 0x0018($sp)            
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lui     $at, 0xC0C8                # $at = C0C80000
    lw      t8, 0x0004(a0)             # 00000004
    andi    t0, t8, 0x0800             # t0 = 00000000
    beql    t0, $zero, lbl_80A80A38    
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f4                   # $f4 = -6.25
    beq     $zero, $zero, lbl_80A80A40 
    swc1    $f4, 0x00BC(a0)            # 000000BC
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_80A80A38:
    nop
    swc1    $f6, 0x00BC(a0)            # 000000BC
lbl_80A80A40:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A80A50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0004(a2)             # 00000004
    or      a0, a3, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    andi    t7, t6, 0x0800             # t7 = 00000000
    beql    t7, $zero, lbl_80A80A8C    
    lh      t8, 0x001C(a2)             # 0000001C
    jal     func_80028048              
    addiu   a1, a1, 0x02E0             # a1 = 060002E0
    beq     $zero, $zero, lbl_80A80AAC 
    lw      $ra, 0x0014($sp)           
    lh      t8, 0x001C(a2)             # 0000001C
lbl_80A80A8C:
    lui     a1, %hi(var_80A80B84)      # a1 = 80A80000
    or      a0, a3, $zero              # a0 = 00000000
    andi    t9, t8, 0x0003             # t9 = 00000000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    jal     func_80028048              
    lw      a1, %lo(var_80A80B84)(a1)  
    lw      $ra, 0x0014($sp)           
lbl_80A80AAC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80A80AC0: .word 0x00000000
var_80A80AC4: .word 0x00000000
var_80A80AC8: .word 0x00000000
var_80A80ACC: .word 0x00000000
var_80A80AD0: .word 0x01250600, 0x00800010, 0x00010000, 0x00000190
.word func_80A7FF78
.word func_80A800A0
.word func_80A809EC
.word 0x00000000
var_80A80AF0: .word 0x0002012B, 0x012B0000
var_80A80AF8: .word \
0x0A000929, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x4FC00758, 0x00000000, 0x00010100, \
0x000C002C, 0x00000000, 0x00000000
var_80A80B24: .word 0x0000000C, 0x001EFF00
var_80A80B2C: .word \
0x00000000, 0x3F350481, 0x3F350481, 0x3F350481, \
0x3F350481, 0x00000000, 0x00000000, 0x3F350481, \
0xBF350481, 0xBF350481, 0x3F350481, 0x00000000
var_80A80B5C: .word 0x006C0066, 0x00600054, 0x00420037, 0x002A0026
var_80A80B6C: .word \
0xC8500190, 0xB86CF380, 0xB870BD98, 0xB0F404B0, \
0xB0F80064, 0x30FC0078
var_80A80B84: .word 0x0500B9D0, 0x06000140, 0x06000140

.section .rodata

var_80A80B90: .word 0x3E4CCCCD
var_80A80B94: .word 0x3DCCCCCD
var_80A80B98: .word 0x3DF5C290
var_80A80B9C: .word 0x3E23D70B
var_80A80BA0: .word 0x42DE3333
var_80A80BA4: .word 0x477FFF00
var_80A80BA8: .word 0xBDCCCCCD
var_80A80BAC: .word 0xC04CCCCD

