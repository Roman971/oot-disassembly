.section .text
func_80A65220:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v1, 0x001C(a3)             # 0000001C
    andi    v0, v1, 0x001F             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A65270           
    slti    $at, v0, 0x001A            
    beq     $at, $zero, lbl_80A65270   
    lw      a0, 0x001C($sp)            
    sra     t6, v1,  9                 
    andi    t7, t6, 0x003F             # t7 = 00000000
    sll     t8, t7,  8                 
    or      a2, v0, t8                 # a2 = 00000000
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80013678              
    addiu   a1, a3, 0x0024             # a1 = 00000024
lbl_80A65270:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65280:
    lwc1    $f4, 0x0060(a0)            # 00000060
    lwc1    $f6, 0x006C(a0)            # 0000006C
    lwc1    $f0, 0x0070(a0)            # 00000070
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(a0)            # 00000060
    lwc1    $f10, 0x0060(a0)           # 00000060
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A652AC               
    nop
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80A652AC:
    jr      $ra                        
    nop


func_80A652B4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0028(a3)            # 00000028
    lw      a0, 0x003C($sp)            
    addiu   t6, $sp, 0x0028            # t6 = FFFFFFF0
    add.s   $f10, $f6, $f8             
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFEC
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    swc1    $f10, 0x002C($sp)          
    lwc1    $f16, 0x002C(a3)           # 0000002C
    sw      a3, 0x0038($sp)            
    sw      t6, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x0030($sp)          
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    lw      a3, 0x0038($sp)            
    mov.s   $f2, $f0                   
    c.lt.s  $f18, $f0                  
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, a3, 0x0008             # a0 = 00000008
    addiu   a1, a3, 0x0024             # a1 = 00000024
    bc1f    lbl_80A65340               
    nop
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f2, 0x0028(a3)            # 00000028
    beq     $zero, $zero, lbl_80A65340 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A65340:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65350:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_80A66044)      # a3 = 80A60000
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A66044)  # a3 = 80A66044
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


func_80A653A8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A66078)      # a1 = 80A60000
    addiu   a1, a1, %lo(var_80A66078)  # a1 = 80A66078
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65350              
    lw      a1, 0x0024($sp)            
    lui     a2, %hi(var_80A66070)      # a2 = 80A60000
    addiu   a2, a2, %lo(var_80A66070)  # a2 = 80A66070
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A652B4              
    lw      a1, 0x0024($sp)            
    bne     v0, $zero, lbl_80A65410    
    lw      a0, 0x0024($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65468 
    lw      $ra, 0x001C($sp)           
lbl_80A65410:
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(var_80A66030)      # a1 = 80A60000
    sra     t7, t6,  8                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  1                 
    addu    a1, a1, t9                 
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at                
    jal     func_80081628              # ObjectIndex
    lh      a1, %lo(var_80A66030)(a1)  
    sb      v0, 0x018C(s0)             # 0000018C
    lb      t0, 0x018C(s0)             # 0000018C
    bgez    t0, lbl_80A6545C           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65468 
    lw      $ra, 0x001C($sp)           
lbl_80A6545C:
    jal     func_80A659C4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A65468:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65478:
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


func_80A654A4:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lui     $at, %hi(var_80A66090)     # $at = 80A60000
    lwc1    $f30, %lo(var_80A66090)($at) 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f28                  # $f28 = 2.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s8, %hi(var_80A66030)      # s8 = 80A60000
    mtc1    $at, $f24                  # $f24 = 8.00
    addiu   s8, s8, %lo(var_80A66030)  # s8 = 80A66030
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, s5, 0x0024             # s4 = 00000024
    addiu   s7, $sp, 0x00BC            # s7 = FFFFFFDC
    addiu   s3, $sp, 0x00C8            # s3 = FFFFFFE8
lbl_80A6552C:
    sll     a0, s1, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s1, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f4, $f20, $f24            
    mov.s   $f22, $f0                  
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C8($sp)           
    mul.s   $f6, $f0, $f26             
    lwc1    $f16, 0x00C8($sp)          
    mul.s   $f10, $f22, $f24           
    nop
    mul.s   $f18, $f16, $f30           
    add.s   $f8, $f6, $f28             
    swc1    $f10, 0x00D0($sp)          
    swc1    $f8, 0x00CC($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00BC($sp)          
    mul.s   $f4, $f0, $f26             
    lwc1    $f8, 0x00D0($sp)           
    or      a0, s3, $zero              # a0 = FFFFFFE8
    or      a1, s4, $zero              # a1 = 00000024
    mul.s   $f10, $f8, $f30            
    or      a2, s3, $zero              # a2 = FFFFFFE8
    add.s   $f6, $f4, $f28             
    swc1    $f10, 0x00C4($sp)          
    jal     func_80063D10              # Vec3f_Add
    swc1    $f6, 0x00C0($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A66094)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A66094)($at) 
    lui     $at, %hi(var_80A66098)     # $at = 80A60000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80A655D4               
    nop
    beq     $zero, $zero, lbl_80A655F4 
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80A655D4:
    lwc1    $f18, %lo(var_80A66098)($at) 
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_80A655F4               
    nop
    beq     $zero, $zero, lbl_80A655F4 
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80A655F4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f4                   # $f4 = 95.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    mul.s   $f6, $f0, $f4              
    addiu   t6, $zero, 0xFF10          # t6 = FFFFFF10
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    add.s   $f10, $f6, $f8             
    sw      t3, 0x0034($sp)            
    sw      t2, 0x0030($sp)            
    sw      t1, 0x002C($sp)            
    trunc.w.s $f16, $f10                 
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    mfc1    t0, $f16                   
    sw      s0, 0x0014($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0028($sp)         
    sw      t0, 0x0024($sp)            
    lh      v0, 0x001C(s5)             # 0000001C
    lui     t8, %hi(var_80A6603C)      # t8 = 80A60000
    or      a0, s6, $zero              # a0 = 00000000
    sra     v0, v0,  8                 
    andi    v0, v0, 0x0001             # v0 = 00000000
    sll     t4, v0,  1                 
    sll     t7, v0,  2                 
    addu    t8, t8, t7                 
    addu    t5, s8, t4                 
    lh      t6, 0x0000(t5)             # 00000000
    lw      t8, %lo(var_80A6603C)(t8)  
    or      a1, s3, $zero              # a1 = FFFFFFE8
    or      a2, s7, $zero              # a2 = FFFFFFDC
    or      a3, s4, $zero              # a3 = 00000024
    sw      t6, 0x0038($sp)            
    jal     func_8001D998              
    sw      t8, 0x003C($sp)            
    addiu   s1, s1, 0x4E20             # s1 = 00004E20
    sll     s1, s1, 16                 
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     s2, $at, lbl_80A6552C      
    sra     s1, s1, 16                 
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000024
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
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
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_80A6572C:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s3, 0x0084($sp)            
    sw      s0, 0x0078($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s3, $sp, 0x00C8            # s3 = FFFFFFE8
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
    sw      a1, 0x00E4($sp)            
    addiu   s4, s0, 0x0024             # s4 = 00000024
    lw      t7, 0x0000(s4)             # 00000024
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    or      a1, s3, $zero              # a1 = FFFFFFE8
    sw      t7, 0x0000(s3)             # FFFFFFE8
    lw      t6, 0x0004(s4)             # 00000028
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t6, 0x0004(s3)             # FFFFFFEC
    lw      t7, 0x0008(s4)             # 0000002C
    sw      t7, 0x0008(s3)             # FFFFFFF0
    lwc1    $f4, 0x00CC($sp)           
    lwc1    $f6, 0x0084(s0)            # 00000084
    sw      s0, 0x00E0($sp)            
    sw      t8, 0x0014($sp)            
    add.s   $f8, $f4, $f6              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x00E4($sp)            
    jal     func_8001CF94              
    swc1    $f8, 0x00CC($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f30                  # $f30 = 5.00
    lui     $at, %hi(var_80A6609C)     # $at = 80A60000
    lwc1    $f28, %lo(var_80A6609C)($at) 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f26                  # $f26 = 2.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s7, %hi(var_80A6603C)      # s7 = 80A60000
    lui     s6, %hi(var_80A66030)      # s6 = 80A60000
    mtc1    $at, $f24                  # $f24 = 8.00
    addiu   s6, s6, %lo(var_80A66030)  # s6 = 80A66030
    addiu   s7, s7, %lo(var_80A6603C)  # s7 = 80A6603C
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x000F          # s8 = 0000000F
    addiu   s5, $sp, 0x00BC            # s5 = FFFFFFDC
lbl_80A6580C:
    sll     a0, s1, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s1, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f10, $f20, $f24           
    mov.s   $f22, $f0                  
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C8($sp)          
    mul.s   $f16, $f0, $f30            
    lwc1    $f6, 0x00C8($sp)           
    mul.s   $f4, $f22, $f24            
    nop
    mul.s   $f8, $f6, $f28             
    add.s   $f18, $f16, $f26           
    swc1    $f4, 0x00D0($sp)           
    swc1    $f18, 0x00CC($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00BC($sp)           
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lwc1    $f4, 0x00D0($sp)           
    or      a0, s3, $zero              # a0 = FFFFFFE8
    mul.s   $f16, $f0, $f10            
    or      a1, s4, $zero              # a1 = 00000024
    or      a2, s3, $zero              # a2 = FFFFFFE8
    mul.s   $f6, $f4, $f28             
    add.s   $f18, $f16, $f26           
    swc1    $f6, 0x00C4($sp)           
    jal     func_80063D10              # Vec3f_Add
    swc1    $f18, 0x00C0($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A660A0)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A660A0)($at) 
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A658BC               
    nop
    beq     $zero, $zero, lbl_80A658BC 
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80A658BC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f10                  # $f10 = 95.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    mul.s   $f16, $f0, $f10            
    lw      t7, 0x00E0($sp)            
    addiu   t9, $zero, 0xFF4C          # t9 = FFFFFF4C
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    add.s   $f4, $f16, $f18            
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0034($sp)            
    sw      t5, 0x0030($sp)            
    trunc.w.s $f6, $f4                   
    sw      t4, 0x002C($sp)            
    sw      t1, 0x001C($sp)            
    sw      t0, 0x0018($sp)            
    mfc1    t3, $f6                    
    sw      t9, 0x0010($sp)            
    sw      s0, 0x0014($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0028($sp)         
    sw      t3, 0x0024($sp)            
    lh      v0, 0x001C(t7)             # 0000001C
    lw      a0, 0x00E4($sp)            
    or      a1, s3, $zero              # a1 = FFFFFFE8
    sra     v0, v0,  8                 
    andi    v0, v0, 0x0001             # v0 = 00000000
    sll     t8, v0,  1                 
    sll     t1, v0,  2                 
    addu    t2, s7, t1                 
    addu    t9, s6, t8                 
    lh      t0, 0x0000(t9)             # FFFFFF4C
    lw      t3, 0x0000(t2)             # 00000000
    or      a2, s5, $zero              # a2 = FFFFFFDC
    or      a3, s4, $zero              # a3 = 00000024
    sw      t0, 0x0038($sp)            
    jal     func_8001D998              
    sw      t3, 0x003C($sp)            
    addiu   s1, s1, 0x4E20             # s1 = 00004E20
    sll     s1, s1, 16                 
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bne     s2, s8, lbl_80A6580C       
    sra     s1, s1, 16                 
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
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_80A659C4:
    lui     t6, %hi(func_80A659D8)     # t6 = 80A60000
    addiu   t6, t6, %lo(func_80A659D8) # t6 = 80A659D8
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A659D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x018C(a2)             # 0000018C
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_80A65A3C    
    lw      a2, 0x0018($sp)            
    lb      t7, 0x018C(a2)             # 0000018C
    lui     t6, %hi(func_80A65FBC)     # t6 = 80A60000
    addiu   t6, t6, %lo(func_80A65FBC) # t6 = 80A65FBC
    sw      t6, 0x0134(a2)             # 00000134
    sb      t7, 0x001E(a2)             # 0000001E
    sw      a2, 0x0018($sp)            
    jal     func_80A65A4C              
    or      a0, a2, $zero              # a0 = 00000000
    lw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t8, 0x0004(a2)             # 00000004
    and     t9, t8, $at                
    sw      t9, 0x0004(a2)             # 00000004
lbl_80A65A3C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65A4C:
    lui     t6, %hi(func_80A65A60)     # t6 = 80A60000
    addiu   t6, t6, %lo(func_80A65A60) # t6 = 80A65A60
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A65A60:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0              
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A65AA0    
    lhu     t6, 0x0088(s0)             # 00000088
    jal     func_80A65C70              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65C60 
    lw      $ra, 0x0024($sp)           
    lhu     t6, 0x0088(s0)             # 00000088
lbl_80A65AA0:
    lui     $at, 0x4170                # $at = 41700000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80A65B08    
    lbu     t8, 0x0151(s0)             # 00000151
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A65B08               
    lbu     t8, 0x0151(s0)             # 00000151
    jal     func_80A6572C              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65220              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65C60 
    lw      $ra, 0x0024($sp)           
    lbu     t8, 0x0151(s0)             # 00000151
lbl_80A65B08:
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80A65B70    
    lui     $at, 0x4416                # $at = 44160000
    lw      t0, 0x017C(s0)             # 0000017C
    lui     $at, 0x4FC1                # $at = 4FC10000
    ori     $at, $at, 0xFFFC           # $at = 4FC1FFFC
    lw      t1, 0x0000(t0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    and     t2, t1, $at                
    beql    t2, $zero, lbl_80A65B70    
    lui     $at, 0x4416                # $at = 44160000
    jal     func_80A654A4              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65220              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65C60 
    lw      $ra, 0x0024($sp)           
    lui     $at, 0x4416                # $at = 44160000
lbl_80A65B70:
    mtc1    $at, $f8                   # $f8 = 600.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80A65BF4               
    lui     $at, 0x42C8                # $at = 42C80000
    jal     func_80050B00              
    sw      a1, 0x002C($sp)            
    lbu     t3, 0x0151(s0)             # 00000151
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    sb      t4, 0x0151(s0)             # 00000151
    addu    a1, s1, $at                
    sw      a1, 0x0028($sp)            
    lw      a2, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lw      a1, 0x0028($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A65BF4               
    lui     $at, 0x42C8                # $at = 42C80000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)            
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x42C8                # $at = 42C80000
lbl_80A65BF4:
    mtc1    $at, $f16                  # $f16 = 100.00
    nop
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80A65C60               
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    lh      t5, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0032(t6)             # 00000032
    subu    v0, t5, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A65C38           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80A65C38 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A65C38:
    slti    $at, v1, 0x5556            
    bne     $at, $zero, lbl_80A65C5C   
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a3, $f0                    
    jal     func_80022BD4              
    swc1    $f0, 0x0010($sp)           
lbl_80A65C5C:
    lw      $ra, 0x0024($sp)           
lbl_80A65C60:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A65C70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A65CB4)     # t6 = 80A60000
    addiu   t6, t6, %lo(func_80A65CB4) # t6 = 80A65CB4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t6, 0x013C(a0)             # 0000013C
    sb      t7, 0x0003(a0)             # 00000003
    sw      a0, 0x0018($sp)            
    jal     func_80022F84              
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    lw      a0, 0x0018($sp)            
    lw      t8, 0x0004(a0)             # 00000004
    ori     t9, t8, 0x0010             # t9 = 00000010
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A65CB4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022D40              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A65D28    
    lw      t6, 0x002C($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6                 
    lb      t7, 0x1CBC(t7)             # 00011CBC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65D3C              
    sb      t7, 0x0003(s0)             # 00000003
    jal     func_80A65280              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0085          # t8 = 00000085
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
lbl_80A65D28:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65D3C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0068(s0)            # 00000068
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f4              
    jal     func_80063684              # coss?
    swc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f8, 0x0068(s0)            # 00000068
    addiu   t6, $zero, 0x00F0          # t6 = 000000F0
    sb      t6, 0x00AE(s0)             # 000000AE
    mul.s   $f10, $f0, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0064(s0)           # 00000064
    lui     $at, %hi(var_80A660A4)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A660A4)($at) 
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f4                   # $f4 = 2800.00
    sub.s   $f18, $f0, $f16            
    lui     $at, %hi(var_80A66000)     # $at = 80A60000
    mul.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    jal     func_800CDCCC              # Rand.Next() float
    sh      t8, %lo(var_80A66000)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f18                  # $f18 = 2000.00
    sub.s   $f16, $f0, $f10            
    lui     $at, %hi(var_80A66008)     # $at = 80A60000
    lui     t1, %hi(func_80A65E04)     # t1 = 80A60000
    addiu   t1, t1, %lo(func_80A65E04) # t1 = 80A65E04
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    sh      t0, %lo(var_80A66008)($at) 
    lui     $at, %hi(var_80A66004)     # $at = 80A60000
    sh      $zero, %lo(var_80A66004)($at) 
    lui     $at, %hi(var_80A6600C)     # $at = 80A60000
    sh      $zero, %lo(var_80A6600C)($at) 
    sw      t1, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A65E04:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x000B             # t6 = 00000000
    bne     t6, $zero, lbl_80A65E44    
    nop
    lbu     t7, 0x0150(s0)             # 00000150
    andi    t9, v0, 0x0040             # t9 = 00000000
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A65E7C    
    nop
lbl_80A65E44:
    jal     func_80A654A4              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65220              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65F88 
    lw      $ra, 0x0024($sp)           
lbl_80A65E7C:
    beq     t9, $zero, lbl_80A65EBC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6572C              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A65220              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A65F88 
    lw      $ra, 0x0024($sp)           
lbl_80A65EBC:
    jal     func_80A65280              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A66004)      # a0 = 80A60000
    lui     a1, %hi(var_80A66000)      # a1 = 80A60000
    lh      a1, %lo(var_80A66000)(a1)  
    addiu   a0, a0, %lo(var_80A66004)  # a0 = 80A66004
    jal     func_800637D4              
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lui     a0, %hi(var_80A6600C)      # a0 = 80A60000
    lui     a1, %hi(var_80A66008)      # a1 = 80A60000
    lh      a1, %lo(var_80A66008)(a1)  
    addiu   a0, a0, %lo(var_80A6600C)  # a0 = 80A6600C
    jal     func_800637D4              
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lui     t1, %hi(var_80A66004)      # t1 = 80A60000
    lh      t1, %lo(var_80A66004)(t1)  
    lh      t0, 0x00B4(s0)             # 000000B4
    lui     t4, %hi(var_80A6600C)      # t4 = 80A60000
    lh      t3, 0x00B6(s0)             # 000000B6
    addu    t2, t0, t1                 
    sh      t2, 0x00B4(s0)             # 000000B4
    lh      t4, %lo(var_80A6600C)(t4)  
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0085          # t6 = 00000085
    addu    t5, t3, t4                 
    sh      t5, 0x00B6(s0)             # 000000B6
    sw      t6, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s0, s1, $at                
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80A65F88:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A65F98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A65FBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A66034)      # a1 = 80A60000
    or      a0, a2, $zero              # a0 = 00000000
    sra     t7, t6,  8                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    jal     func_80028048              
    lw      a1, %lo(var_80A66034)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80A66000: .word 0x00000000
var_80A66004: .word 0x00000000
var_80A66008: .word 0x00000000
var_80A6600C: .word 0x00000000
var_80A66010: .word 0x01110600, 0x00800010, 0x00010000, 0x00000190
.word func_80A653A8
.word func_80A65478
.word func_80A65F98
.word 0x00000000
var_80A66030: .word 0x0003012C
var_80A66034: .word 0x05017870, 0x060017C0
var_80A6603C: .word 0x05017A60, 0x06001960
var_80A66044: .word \
0x0C090939, 0x20010000, 0x00000000, 0x00000002, \
0x00010000, 0x4FC1FFFE, 0x00000000, 0x01010100, \
0x0009001A, 0x00000000, 0x00000000
var_80A66070: .word 0x0000000C, 0x003CFF00
var_80A66078: .word \
0xB86CFB50, 0xB870B1E0, 0xC8500096, 0xB0F40384, \
0xB0F80064, 0x30FC0320

.section .rodata

var_80A66090: .word 0x3E6B851F
var_80A66094: .word 0x3E4CCCCD
var_80A66098: .word 0x3F19999A
var_80A6609C: .word 0x3E4CCCCD
var_80A660A0: .word 0x3E4CCCCD
var_80A660A4: .word 0x3F333333, 0x00000000, 0x00000000

