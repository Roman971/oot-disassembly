.section .text
func_809C6140:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0028($sp)         
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_809C6F10)      # t9 = 809C0000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_809C6F10)(t9)  
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    beql    t9, $zero, lbl_809C61C8    
    sw      t3, 0x013C(s0)             # 0000013C
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_809C6F10)      # a0 = 809C0000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF8
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_80033EF4              
    lw      a0, %lo(var_809C6F10)(a0)  
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0028($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    beq     $zero, $zero, lbl_809C61C8 
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t3, 0x013C(s0)             # 0000013C
lbl_809C61C8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809C61DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0154             # a1 = 00000154
    sw      a1, 0x0020($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8004A484              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lui     a3, %hi(var_809C6F00)      # a3 = 809C0000
    lw      a1, 0x0020($sp)            
    addiu   t6, a2, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_809C6F00)  # a3 = 809C6F00
    jal     func_8004A874              
    lw      a0, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    lui     t0, %hi(var_809C6F1C)      # t0 = 809C0000
    lui     t5, %hi(var_809C6F24)      # t5 = 809C0000
    lh      t7, 0x001C(a2)             # 0000001C
    lw      t1, 0x0170(a2)             # 00000170
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8,  1                 
    addu    t0, t0, t9                 
    lh      t0, %lo(var_809C6F1C)(t0)  
    sh      t0, 0x002E(t1)             # 0000002E
    lh      t2, 0x001C(a2)             # 0000001C
    lw      t6, 0x0170(a2)             # 00000170
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sll     t4, t3,  1                 
    addu    t5, t5, t4                 
    lh      t5, %lo(var_809C6F24)(t5)  
    sh      t5, 0x002A(t6)             # 0000002A
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809C6270:
    lh      t6, 0x001C(a0)             # 0000001C
    lui     $at, %hi(var_809C6F2C)     # $at = 809C0000
    lwc1    $f6, 0x000C(a0)            # 0000000C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    lwc1    $f4, %lo(var_809C6F2C)($at) 
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_809C629C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C6140              
    lw      a1, 0x0024($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v1, v0, 0x00FF             # v1 = 00000000
    bltz    v1, lbl_809C62D4           
    slti    $at, v1, 0x0003            
    bne     $at, $zero, lbl_809C62E4   
    lw      a0, 0x0024($sp)            
lbl_809C62D4:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C633C 
    lw      $ra, 0x001C($sp)           
lbl_809C62E4:
    sra     a1, v0,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809C6308    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C633C 
    lw      $ra, 0x001C($sp)           
lbl_809C6308:
    lui     a1, %hi(var_809C6F38)      # a1 = 809C0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_809C6F38)  # a1 = 809C6F38
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C61DC              
    lw      a1, 0x0024($sp)            
    jal     func_809C6270              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809C633C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C634C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C6394:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a1, 0x003C($sp)            
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    lw      t6, 0x0038($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lw      t8, 0x0024(t6)             # 00000024
    addiu   t9, $zero, 0x0258          # t9 = 00000258
    addiu   t0, $zero, 0x012C          # t0 = 0000012C
    sw      t8, 0x0000(a1)             # FFFFFFF0
    lw      t7, 0x0028(t6)             # 00000028
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      t7, 0x0004(a1)             # FFFFFFF4
    lw      t8, 0x002C(t6)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t8, 0x0008(a1)             # FFFFFFF8
    lwc1    $f4, 0x002C($sp)           
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    add.s   $f8, $f4, $f6              
    sw      t9, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_80026308              
    swc1    $f8, 0x002C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    sub.s   $f16, $f0, $f10            
    lw      t2, 0x0038($sp)            
    mul.s   $f4, $f16, $f18            
    lwc1    $f6, 0x0024(t2)            # 00000024
    add.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0028($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lw      t3, 0x0038($sp)            
    mul.s   $f16, $f0, $f10            
    lwc1    $f18, 0x0028(t3)           # 00000028
    add.s   $f4, $f16, $f18            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x002C($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    sub.s   $f8, $f0, $f6              
    lw      t4, 0x0038($sp)            
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    mul.s   $f16, $f8, $f10            
    lwc1    $f18, 0x002C(t4)           # 0000002C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    add.s   $f4, $f16, $f18            
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_80026308              
    swc1    $f4, 0x0030($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809C64B8:
    addiu   $sp, $sp, 0xFF08           # $sp = FFFFFF08
    sw      s2, 0x0080($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
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
    sw      a1, 0x00FC($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f24, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(s2)            # 00000028
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f30                  # $f30 = 11.00
    add.s   $f8, $f4, $f6              
    lui     $at, 0x4100                # $at = 41000000
    addiu   v0, $zero, 0xFFD0          # v0 = FFFFFFD0
    addiu   t6, s2, 0x0024             # t6 = 00000024
    lui     s8, 0x0500                 # s8 = 05000000
    mtc1    $at, $f28                  # $f28 = 8.00
    mov.s   $f26, $f0                  
    swc1    $f8, 0x00DC($sp)           
    addiu   s8, s8, 0x0530             # s8 = 05000530
    sw      t6, 0x00A4($sp)            
    sw      v0, 0x00B8($sp)            
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x00E4            # s7 = FFFFFFEC
    addiu   s6, $sp, 0x00D8            # s6 = FFFFFFE0
    addiu   s5, $zero, 0x0005          # s5 = 00000005
    addiu   s4, $zero, 0x0004          # s4 = 00000004
lbl_809C656C:
    lw      v0, 0x00B8($sp)            
    addiu   t7, s3, 0xFFFE             # t7 = FFFFFFFE
    mtc1    t7, $f6                    # $f6 = NaN
    mtc1    v0, $f10                   # $f10 = NaN
    mtc1    v0, $f18                   # $f18 = NaN
    cvt.s.w $f8, $f6                   
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $zero, 0xFFD0          # s1 = FFFFFFD0
    cvt.s.w $f16, $f10                 
    swc1    $f8, 0x00A8($sp)           
    cvt.s.w $f4, $f18                  
    mul.s   $f2, $f16, $f26            
    nop
    mul.s   $f12, $f4, $f24            
    swc1    $f2, 0x00B0($sp)           
    swc1    $f12, 0x00AC($sp)          
lbl_809C65AC:
    mtc1    s1, $f10                   # $f10 = NaN
    lwc1    $f2, 0x00B0($sp)           
    lwc1    $f4, 0x0024(s2)            # 00000024
    cvt.s.w $f0, $f10                  
    lwc1    $f12, 0x00AC($sp)          
    mul.s   $f16, $f0, $f24            
    add.s   $f18, $f16, $f2            
    mul.s   $f8, $f0, $f26             
    add.s   $f6, $f18, $f4             
    sub.s   $f10, $f8, $f12            
    swc1    $f6, 0x00D8($sp)           
    lwc1    $f16, 0x002C(s2)           # 0000002C
    add.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00E0($sp)          
    mul.s   $f4, $f0, $f28             
    lwc1    $f6, 0x00A8($sp)           
    mul.s   $f20, $f4, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    nop
    addiu   t8, s0, 0xFFFE             # t8 = FFFFFFFE
    mtc1    t8, $f10                   # $f10 = NaN
    mul.s   $f8, $f0, $f28             
    cvt.s.w $f16, $f10                 
    mul.s   $f22, $f8, $f16            
    nop
    mul.s   $f18, $f22, $f24           
    nop
    mul.s   $f4, $f20, $f26            
    add.s   $f6, $f18, $f4             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00E4($sp)           
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    nop
    mul.s   $f8, $f0, $f10             
    nop
    mul.s   $f16, $f22, $f26           
    nop
    mul.s   $f18, $f20, $f24           
    swc1    $f8, 0x00E8($sp)           
    sub.s   $f4, $f16, $f18            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00EC($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_809C6F50)     # $at = 809C0000
    lwc1    $f16, %lo(var_809C6F50)($at) 
    sub.s   $f10, $f0, $f6             
    lw      a0, 0x00FC($sp)            
    or      a1, s6, $zero              # a1 = FFFFFFE0
    or      a2, s7, $zero              # a2 = FFFFFFEC
    mul.s   $f8, $f10, $f30            
    lw      a3, 0x00A4($sp)            
    addiu   t0, $zero, 0xFDDA          # t0 = FFFFFDDA
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    mul.s   $f18, $f8, $f16            
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    add.s   $f4, $f18, $f30            
    trunc.w.s $f6, $f4                   
    mfc1    v1, $f6                    
    nop
    sll     v1, v1, 16                 
    beq     s3, $zero, lbl_809C66CC    
    sra     v1, v1, 16                 
    bnel    s3, s4, lbl_809C66E8       
    addiu   v0, $zero, 0x0040          # v0 = 00000040
lbl_809C66CC:
    beq     s0, $zero, lbl_809C66DC    
    nop
    bnel    s0, s4, lbl_809C66E8       
    addiu   v0, $zero, 0x0040          # v0 = 00000040
lbl_809C66DC:
    beq     $zero, $zero, lbl_809C66E8 
    addiu   v0, $zero, 0x0041          # v0 = 00000041
    addiu   v0, $zero, 0x0040          # v0 = 00000040
lbl_809C66E8:
    sw      t0, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    sw      t2, 0x001C($sp)            
    sw      $zero, 0x0020($sp)         
    sw      v1, 0x0024($sp)            
    sw      t3, 0x0028($sp)            
    sw      t4, 0x002C($sp)            
    sw      t5, 0x0030($sp)            
    sw      t6, 0x0034($sp)            
    sw      t7, 0x0038($sp)            
    jal     func_8001D998              
    sw      s8, 0x003C($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_809C65AC       
    addiu   s1, s1, 0x0018             # s1 = FFFFFFE8
    lw      t8, 0x00B8($sp)            
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   t9, t8, 0x0018             # t9 = 00000018
    bne     s3, s5, lbl_809C656C       
    sw      t9, 0x00B8($sp)            
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
    addiu   $sp, $sp, 0x00F8           # $sp = 00000000


func_809C6784:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s4, 0x0088($sp)            
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
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
    sw      a1, 0x00EC($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s4)             # 000000B6
    mov.s   $f24, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s4)             # 000000B6
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f30                  # $f30 = 3.00
    lui     $at, 0x4130                # $at = 41300000
    lui     s8, 0x0500                 # s8 = 05000000
    mtc1    $at, $f28                  # $f28 = 11.00
    mov.s   $f26, $f0                  
    addiu   s8, s8, 0x0530             # s8 = 05000530
    addiu   s5, s4, 0x0024             # s5 = 00000024
    sw      $zero, 0x00A8($sp)         
    addiu   s7, $sp, 0x00D4            # s7 = FFFFFFEC
    addiu   s6, $sp, 0x00C8            # s6 = FFFFFFE0
lbl_809C6810:
    lw      v0, 0x00A8($sp)            
    lwc1    $f8, 0x0028(s4)            # 00000028
    or      s1, $zero, $zero           # s1 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   s2, $zero, 0xFFE0          # s2 = FFFFFFE0
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x00CC($sp)          
lbl_809C6830:
    mtc1    s2, $f16                   # $f16 = NaN
    lwc1    $f4, 0x0024(s4)            # 00000024
    cvt.s.w $f0, $f16                  
    mul.s   $f18, $f0, $f26            
    add.s   $f6, $f18, $f4             
    mul.s   $f10, $f0, $f24            
    swc1    $f6, 0x00C8($sp)           
    lwc1    $f8, 0x002C(s4)            # 0000002C
    sub.s   $f16, $f8, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00D0($sp)          
    addiu   t6, s1, 0xFFFE             # t6 = FFFFFFFE
    mtc1    t6, $f4                    # $f4 = NaN
    mul.s   $f18, $f0, $f30            
    cvt.s.w $f6, $f4                   
    mul.s   $f20, $f18, $f6            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    nop
    mul.s   $f22, $f0, $f8             
    nop
    mul.s   $f10, $f22, $f24           
    nop
    mul.s   $f16, $f20, $f26           
    add.s   $f4, $f10, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00D4($sp)           
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f18                  # $f18 = 18.00
    nop
    mul.s   $f6, $f0, $f18             
    nop
    mul.s   $f8, $f22, $f26            
    nop
    mul.s   $f10, $f20, $f24           
    swc1    $f6, 0x00D8($sp)           
    sub.s   $f16, $f8, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00DC($sp)          
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_809C6F54)     # $at = 809C0000
    lwc1    $f8, %lo(var_809C6F54)($at) 
    sub.s   $f18, $f0, $f4             
    addiu   s0, $zero, 0x0040          # s0 = 00000040
    mul.s   $f6, $f18, $f28            
    nop
    mul.s   $f10, $f6, $f8             
    add.s   $f16, $f10, $f28           
    trunc.w.s $f4, $f16                  
    mfc1    v0, $f4                    
    nop
    sll     t8, v0, 16                 
    sra     t9, t8, 16                 
    slti    $at, t9, 0x000F            
    sll     s3, v0, 16                 
    bne     $at, $zero, lbl_809C6928   
    sra     s3, s3, 16                 
    beq     $zero, $zero, lbl_809C6928 
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_809C6928:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lw      a0, 0x00EC($sp)            
    or      a1, s6, $zero              # a1 = FFFFFFE0
    c.lt.s  $f0, $f18                  
    or      a2, s7, $zero              # a2 = FFFFFFEC
    or      a3, s5, $zero              # a3 = 00000024
    addiu   t0, $zero, 0xFDE4          # t0 = FFFFFDE4
    bc1f    lbl_809C6964               
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    ori     s0, s0, 0x0001             # s0 = 00000021
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
lbl_809C6964:
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x0038($sp)            
    sw      t6, 0x0034($sp)            
    sw      t5, 0x0030($sp)            
    sw      t4, 0x002C($sp)            
    sw      t3, 0x0028($sp)            
    sw      t2, 0x001C($sp)            
    sw      t0, 0x0010($sp)            
    sw      s0, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    sw      s3, 0x0024($sp)            
    jal     func_8001D998              
    sw      s8, 0x003C($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     s1, $at, lbl_809C6830      
    addiu   s2, s2, 0x0010             # s2 = FFFFFFF0
    lw      t8, 0x00A8($sp)            
    addiu   $at, $zero, 0x0064         # $at = 00000064
    addiu   t9, t8, 0x0014             # t9 = 00000014
    bne     t9, $at, lbl_809C6810      
    sw      t9, 0x00A8($sp)            
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
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_809C6A1C:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s4, 0x0088($sp)            
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
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
    sw      a1, 0x00EC($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s4)             # 000000B6
    mov.s   $f24, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s4)             # 000000B6
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f30                  # $f30 = 14.00
    lui     $at, 0x40C0                # $at = 40C00000
    lui     s8, 0x0500                 # s8 = 05000000
    mtc1    $at, $f28                  # $f28 = 6.00
    mov.s   $f26, $f0                  
    addiu   s8, s8, 0x0530             # s8 = 05000530
    addiu   s5, s4, 0x0024             # s5 = 00000024
    sw      $zero, 0x00A8($sp)         
    addiu   s7, $sp, 0x00D4            # s7 = FFFFFFEC
    addiu   s6, $sp, 0x00C8            # s6 = FFFFFFE0
lbl_809C6AA8:
    lw      v0, 0x00A8($sp)            
    lwc1    $f8, 0x0028(s4)            # 00000028
    or      s1, $zero, $zero           # s1 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   s2, $zero, 0xFFC8          # s2 = FFFFFFC8
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x00CC($sp)          
lbl_809C6AC8:
    mtc1    s2, $f16                   # $f16 = NaN
    lwc1    $f4, 0x0024(s4)            # 00000024
    cvt.s.w $f0, $f16                  
    mul.s   $f18, $f0, $f26            
    add.s   $f6, $f18, $f4             
    mul.s   $f10, $f0, $f24            
    swc1    $f6, 0x00C8($sp)           
    lwc1    $f8, 0x002C(s4)            # 0000002C
    sub.s   $f16, $f8, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00D0($sp)          
    addiu   t6, s1, 0xFFFE             # t6 = FFFFFFFE
    mtc1    t6, $f4                    # $f4 = NaN
    mul.s   $f18, $f0, $f28            
    cvt.s.w $f6, $f4                   
    mul.s   $f20, $f18, $f6            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f22, $f0, $f28            
    nop
    mul.s   $f8, $f22, $f24            
    nop
    mul.s   $f10, $f20, $f26           
    add.s   $f16, $f8, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00D4($sp)          
    lui     $at, 0x4208                # $at = 42080000
    mtc1    $at, $f4                   # $f4 = 34.00
    nop
    mul.s   $f18, $f0, $f4             
    nop
    mul.s   $f6, $f22, $f26            
    nop
    mul.s   $f8, $f20, $f24            
    swc1    $f18, 0x00D8($sp)          
    sub.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00DC($sp)          
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_809C6F58)     # $at = 809C0000
    lwc1    $f6, %lo(var_809C6F58)($at) 
    sub.s   $f4, $f0, $f16             
    addiu   s0, $zero, 0x0040          # s0 = 00000040
    mul.s   $f18, $f4, $f30            
    nop
    mul.s   $f8, $f18, $f6             
    add.s   $f10, $f8, $f30            
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sll     t8, v0, 16                 
    sra     t9, t8, 16                 
    slti    $at, t9, 0x0015            
    sll     s3, v0, 16                 
    bne     $at, $zero, lbl_809C6BB4   
    sra     s3, s3, 16                 
    beq     $zero, $zero, lbl_809C6BB4 
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_809C6BB4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lw      a0, 0x00EC($sp)            
    or      a1, s6, $zero              # a1 = FFFFFFE0
    c.lt.s  $f0, $f4                   
    or      a2, s7, $zero              # a2 = FFFFFFEC
    or      a3, s5, $zero              # a3 = 00000024
    addiu   t0, $zero, 0xFD76          # t0 = FFFFFD76
    bc1f    lbl_809C6BF0               
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    ori     s0, s0, 0x0001             # s0 = 00000021
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
lbl_809C6BF0:
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x0038($sp)            
    sw      t6, 0x0034($sp)            
    sw      t5, 0x0030($sp)            
    sw      t4, 0x002C($sp)            
    sw      t3, 0x0028($sp)            
    sw      t2, 0x001C($sp)            
    sw      t0, 0x0010($sp)            
    sw      s0, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    sw      $zero, 0x0020($sp)         
    sw      s3, 0x0024($sp)            
    jal     func_8001D998              
    sw      s8, 0x003C($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     s1, $at, lbl_809C6AC8      
    addiu   s2, s2, 0x001C             # s2 = FFFFFFE4
    lw      t8, 0x00A8($sp)            
    addiu   $at, $zero, 0x0078         # $at = 00000078
    addiu   t9, t8, 0x0018             # t9 = 00000018
    bne     t9, $at, lbl_809C6AA8      
    sw      t9, 0x00A8($sp)            
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
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_809C6CA8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_809C6CF0    
    nop
    beq     v0, $at, lbl_809C6D00      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809C6D10      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C6D1C 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C6CF0:
    jal     func_809C64B8              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_809C6D1C 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C6D00:
    jal     func_809C6784              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_809C6D1C 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C6D10:
    jal     func_809C6A1C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C6D1C:
    jal     func_809C6394              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C6D38:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   a2, s1, 0x0154             # a2 = 00000154
    or      a1, a2, $zero              # a1 = 00000154
    sw      a2, 0x0024($sp)            
    jal     func_800264C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809C6DE0    
    lw      a2, 0x0024($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C6CA8              
    or      a1, s0, $zero              # a1 = 00000000
    lh      a1, 0x001C(s1)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     a1, a1,  8                 
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lh      t6, 0x001C(s1)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bne     t7, $zero, lbl_809C6DC0    
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2802          # a3 = 00002802
    beq     $zero, $zero, lbl_809C6DC8 
    nop
lbl_809C6DC0:
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2810          # a3 = 00002810
lbl_809C6DC8:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C6DF8 
    lw      $ra, 0x001C($sp)           
lbl_809C6DE0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809C6DF8:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809C6E08:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lw      v1, 0x02C0(a3)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a3)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0018($sp)            
    lw      t0, 0x0018($sp)            
    lw      a3, 0x0020($sp)            
    lw      t1, 0x0028($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a3)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     t7, %hi(var_809C6ED0)      # t7 = 809C0000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a3)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lh      t4, 0x001C(t1)             # 0000001C
    or      a0, $zero, $zero           # a0 = 00000000
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_809C6ED0)(t7)  
    sw      t7, 0x0004(v1)             # 00000004
    jal     func_80050CE4              
    addiu   a1, t1, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_809C6EB0: .word 0x00CF0100, 0x00000000, 0x002C0000, 0x000001B4
.word func_809C629C
.word func_809C634C
.word func_809C6D38
.word func_809C6E08
var_809C6ED0: .word 0x0600B9C0, 0x0600C038, 0x0600B900
var_809C6EDC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00640064
var_809C6F00: .word 0x0A000900, 0x00000000, 0x00000001
.word var_809C6EDC
var_809C6F10: .word 0x0600D800, 0x0600D878, 0x0600D8F8
var_809C6F1C: .word 0x0050002D, 0x00500000
var_809C6F24: .word 0x000001F4, 0x01F40000
var_809C6F2C: .word 0x3F333333, 0x00000000, 0x00000000
var_809C6F38: .word \
0xB0F407D0, 0xB0F80190, 0x30FC03E8, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809C6F50: .word 0x3FB33333
var_809C6F54: .word 0x3FB33333
var_809C6F58: .word 0x3FCCCCCD, 0x00000000

