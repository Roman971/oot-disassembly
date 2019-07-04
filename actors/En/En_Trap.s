.section .text
func_80920340:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sdc1    $f20, 0x0020($sp)          
    sw      a1, 0x0054($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    sra     t6, v0,  8                 
    andi    t7, t6, 0x00FF             # t7 = 00000000
    andi    t8, v0, 0x00FF             # t8 = 00000000
    sh      t7, 0x0140(s0)             # 00000140
    sh      t8, 0x001C(s0)             # 0000001C
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_809203CC    
    swc1    $f4, 0x006C(s0)            # 0000006C
    lh      t0, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    andi    t1, t0, 0x000F             # t1 = 00000000
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6                   
    swc1    $f0, 0x018C(s0)            # 0000018C
    jal     func_80022FD0              
    swc1    $f0, 0x0068(s0)            # 00000068
    addiu   t2, s0, 0x0024             # t2 = 00000024
    beq     $zero, $zero, lbl_80920678 
    sw      t2, 0x0030($sp)            
lbl_809203CC:
    andi    t3, v0, 0x0020             # t3 = 00000000
    beq     t3, $zero, lbl_8092044C    
    or      a1, s0, $zero              # a1 = 00000000
    lh      v0, 0x0140(s0)             # 00000140
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    andi    t4, v0, 0x000F             # t4 = 00000000
    mtc1    t4, $f8                    # $f8 = 0.00
    andi    t5, v0, 0x00F0             # t5 = 00000000
    addiu   t6, t5, 0x0010             # t6 = 00000010
    cvt.s.w $f10, $f8                  
    sll     t7, t6,  5                 
    sh      t7, 0x0140(s0)             # 00000140
    or      a0, $zero, $zero           # a0 = 00000000
    mul.s   $f18, $f10, $f16           
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0144(s0)           # 00000144
    lwc1    $f4, 0x0144(s0)            # 00000144
    lwc1    $f8, 0x0008(s0)            # 00000008
    or      a0, $zero, $zero           # a0 = 00000000
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0144(s0)           # 00000144
    lwc1    $f4, 0x0010(s0)            # 00000010
    addiu   t8, s0, 0x0024             # t8 = 00000024
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(s0)            # 0000002C
    beq     $zero, $zero, lbl_80920678 
    sw      t8, 0x0030($sp)            
lbl_8092044C:
    lh      v0, 0x0140(s0)             # 00000140
    lui     a2, 0x4120                 # a2 = 41200000
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    beq     v0, $zero, lbl_80920488    
    andi    t1, v0, 0x000F             # t1 = 00000000
    mtc1    t1, $f10                   # $f10 = 0.00
    sra     t9, v0,  4                 
    sll     t0, t9,  2                 
    cvt.s.w $f16, $f10                 
    addu    t0, t0, t9                 
    sll     t0, t0,  3                 
    mtc1    t0, $f8                    # $f8 = 0.00
    swc1    $f16, 0x0048($sp)          
    beq     $zero, $zero, lbl_809204A4 
    cvt.s.w $f20, $f8                  
lbl_80920488:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f20                  # $f20 = 200.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    swc1    $f18, 0x0048($sp)          
    sh      t2, 0x001C(s0)             # 0000001C
lbl_809204A4:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lw      a0, 0x0054($sp)            
    sw      t3, 0x0014($sp)            
    mfc1    a3, $f0                    
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    addiu   v0, s0, 0x0024             # v0 = 00000024
    lw      t5, 0x0000(v0)             # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    sw      t5, 0x0008(s0)             # 00000008
    lw      t4, 0x0004(v0)             # 00000028
    sw      t4, 0x000C(s0)             # 0000000C
    lw      t5, 0x0008(v0)             # 0000002C
    sw      t5, 0x0010(s0)             # 00000010
    jal     func_80063684              # coss?
    sw      v0, 0x0030($sp)            
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f8, $f4, $f6              
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0148(s0)            # 00000148
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lh      a0, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    sub.s   $f18, $f10, $f16           
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f18, 0x0150(s0)           # 00000150
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    add.s   $f8, $f4, $f6              
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0154(s0)            # 00000154
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lh      a0, 0x0032(s0)             # 00000032
    sub.s   $f18, $f10, $f16           
    jal     func_800636C4              # sins?
    swc1    $f18, 0x015C(s0)           # 0000015C
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f8, $f4, $f6              
    jal     func_80063684              # coss?
    swc1    $f8, 0x0160(s0)            # 00000160
    mul.s   $f10, $f0, $f20            
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lh      a0, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    add.s   $f18, $f10, $f16           
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0168(s0)           # 00000168
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    add.s   $f8, $f4, $f6              
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f8, 0x016C(s0)            # 0000016C
    mul.s   $f10, $f0, $f20            
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f18, $f10, $f16           
    jal     func_80063684              # coss?
    swc1    $f18, 0x0174(s0)           # 00000174
    lwc1    $f4, 0x0048($sp)           
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    jal     func_800636C4              # sins?
    sh      v0, 0x0046($sp)            
    lwc1    $f10, 0x0048($sp)          
    lh      v0, 0x0046($sp)            
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v1, $f18                   
    nop
    sll     a1, v1, 16                 
    bgez    v0, lbl_80920640           
    sra     a1, a1, 16                 
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80920640:
    mtc1    v0, $f4                    # $f4 = 0.00
    sll     a0, v1, 16                 
    sra     a0, a0, 16                 
    bgez    a0, lbl_80920660           
    cvt.s.w $f0, $f4                   
    subu    a1, $zero, a0              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
lbl_80920660:
    mtc1    a1, $f6                    # $f6 = 0.00
    swc1    $f0, 0x018C(s0)            # 0000018C
    swc1    $f0, 0x0178(s0)            # 00000178
    cvt.s.w $f2, $f6                   
    swc1    $f2, 0x0184(s0)            # 00000184
    swc1    $f2, 0x0180(s0)            # 00000180
lbl_80920678:
    lw      t8, 0x0030($sp)            
    addiu   a1, s0, 0x0190             # a1 = 00000190
    lw      t0, 0x0000(t8)             # 00000000
    sw      t0, 0x0038(s0)             # 00000038
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x003C(s0)             # 0000003C
    lw      t0, 0x0008(t8)             # 00000008
    sw      t0, 0x0040(s0)             # 00000040
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0054($sp)            
    lui     a3, %hi(var_80921520)      # a3 = 80920000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80921520)  # a3 = 80921520
    lw      a0, 0x0054($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sb      t1, 0x001F(s0)             # 0000001F
    sb      t2, 0x00AE(s0)             # 000000AE
    lw      $ra, 0x002C($sp)           
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809206FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0190             # a1 = 00000190
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80920728:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x00AC($sp)            
    lh      t6, 0x007E(s0)             # 0000007E
    lh      t7, 0x0032(s0)             # 00000032
    lbu     v0, 0x01A2(s0)             # 000001A2
    or      t2, $zero, $zero           # t2 = 00000000
    subu    t0, t6, t7                 
    sll     t0, t0, 16                 
    andi    t8, v0, 0x0002             # t8 = 00000000
    or      t3, $zero, $zero           # t3 = 00000000
    beq     t8, $zero, lbl_809207A4    
    sra     t0, t0, 16                 
    lw      a0, 0x019C(s0)             # 0000019C
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x01A2(s0)             # 000001A2
    sh      $zero, 0x0090($sp)         
    sh      t0, 0x008A($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80063F00              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lh      t4, 0x0032(s0)             # 00000032
    lh      t0, 0x008A($sp)            
    lh      t3, 0x0090($sp)            
    addu    t1, v0, t4                 
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    sh      t1, 0x0094($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_809207A4:
    lbu     t5, 0x01A1(s0)             # 000001A1
    lh      t1, 0x0094($sp)            
    andi    t6, t5, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_8092096C    
    lbu     t7, 0x0114(s0)             # 00000114
    lw      t9, 0x0024(s0)             # 00000024
    addiu   t7, $sp, 0x007C            # t7 = FFFFFFD4
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    sw      t9, 0x0000(t7)             # FFFFFFD4
    lw      t8, 0x0028(s0)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t8, 0x0004(t7)             # FFFFFFD8
    lw      t9, 0x002C(s0)             # 0000002C
    addiu   a2, $zero, 0x00FA          # a2 = 000000FA
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t9, 0x0008(t7)             # FFFFFFDC
    lbu     t4, 0x01A1(s0)             # 000001A1
    andi    t5, t4, 0xFFFD             # t5 = 00000000
    sb      t5, 0x01A1(s0)             # 000001A1
    sh      t3, 0x0090($sp)            
    sh      t2, 0x0092($sp)            
    sh      t1, 0x0094($sp)            
    sh      t0, 0x008A($sp)            
    jal     func_80027090              
    sw      t6, 0x0010($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x0080($sp)           
    lwc1    $f8, 0x0084($sp)           
    lui     $at, %hi(var_80921550)     # $at = 80920000
    add.s   $f6, $f4, $f0              
    lwc1    $f16, %lo(var_80921550)($at) 
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    add.s   $f10, $f8, $f0             
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t4, $zero, 0x00EB          # t4 = 000000EB
    addiu   t5, $zero, 0x00F5          # t5 = 000000F5
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    swc1    $f6, 0x0080($sp)           
    swc1    $f10, 0x0084($sp)          
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFD4
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C              
    swc1    $f16, 0x0028($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f18, 0x007C($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0084($sp)           
    add.s   $f6, $f18, $f4             
    lui     $at, %hi(var_80921554)     # $at = 80920000
    lwc1    $f18, %lo(var_80921554)($at) 
    sub.s   $f16, $f8, $f10            
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t4, $zero, 0x00EB          # t4 = 000000EB
    addiu   t5, $zero, 0x00F5          # t5 = 000000F5
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    swc1    $f6, 0x007C($sp)           
    swc1    $f16, 0x0084($sp)          
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFD4
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C              
    swc1    $f18, 0x0028($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x007C($sp)           
    lui     $at, %hi(var_80921558)     # $at = 80920000
    lwc1    $f10, %lo(var_80921558)($at) 
    sub.s   $f8, $f4, $f6              
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t4, $zero, 0x00EB          # t4 = 000000EB
    addiu   t5, $zero, 0x00F5          # t5 = 000000F5
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    swc1    $f8, 0x007C($sp)           
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFD4
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C              
    swc1    $f10, 0x0028($sp)          
    lh      t0, 0x008A($sp)            
    lh      t1, 0x0094($sp)            
    lh      t2, 0x0092($sp)            
    lh      t3, 0x0090($sp)            
    lbu     t7, 0x0114(s0)             # 00000114
lbl_8092096C:
    lui     $at, 0x4220                # $at = 42200000
    bnel    t7, $zero, lbl_80921464    
    addiu   a1, s0, 0x0190             # a1 = 00000190
    lw      v0, 0x013C(s0)             # 0000013C
    mtc1    $at, $f16                  # $f16 = 40.00
    beq     v0, $zero, lbl_8092098C    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x013C(s0)             # 0000013C
lbl_8092098C:
    lwc1    $f18, 0x0090(s0)           # 00000090
    c.le.s  $f18, $f16                 
    nop
    bc1fl   lbl_80920A78               
    lh      v0, 0x001C(s0)             # 0000001C
    lw      t9, 0x013C(s0)             # 0000013C
    lui     $at, 0x41A0                # $at = 41A00000
    bnel    t9, $zero, lbl_80920A78    
    lh      v0, 0x001C(s0)             # 0000001C
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f6, 0x0094(s0)            # 00000094
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80920A78               
    lh      v0, 0x001C(s0)             # 0000001C
    lh      t4, 0x001C(s0)             # 0000001C
    andi    t5, t4, 0x0030             # t5 = 00000000
    bnel    t5, $zero, lbl_80920A0C    
    lh      t6, 0x008A(s0)             # 0000008A
    lh      a3, 0x0142(s0)             # 00000142
    lh      t6, 0x008A(s0)             # 0000008A
    addiu   t4, a3, 0xC000             # t4 = FFFFC000
    subu    t7, a3, t6                 
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    bltz    t9, lbl_80920A00           
    addiu   t5, a3, 0x4000             # t5 = 00004000
    beq     $zero, $zero, lbl_80920A10 
    sh      t4, 0x0096($sp)            
lbl_80920A00:
    beq     $zero, $zero, lbl_80920A10 
    sh      t5, 0x0096($sp)            
    lh      t6, 0x008A(s0)             # 0000008A
lbl_80920A0C:
    sh      t6, 0x0096($sp)            
lbl_80920A10:
    lw      a0, 0x00AC($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    sh      t0, 0x008A($sp)            
    sh      t1, 0x0094($sp)            
    sh      t2, 0x0092($sp)            
    sh      t3, 0x0090($sp)            
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             # 00011D58
    addiu   a1, $zero, 0xFFFC          # a1 = FFFFFFFC
    jalr    $ra, t9                    
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    lw      a0, 0x00AC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f0                    
    lh      a3, 0x0096($sp)            
    jal     func_80022F48              
    swc1    $f0, 0x0010($sp)           
    lh      t0, 0x008A($sp)            
    lh      t1, 0x0094($sp)            
    lh      t2, 0x0092($sp)            
    lh      t3, 0x0090($sp)            
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sw      t8, 0x013C(s0)             # 0000013C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80920A78:
    andi    t4, v0, 0x0010             # t4 = 00000000
    beql    t4, $zero, lbl_80920C24    
    andi    t4, v0, 0x0020             # t4 = 00000000
    lhu     t5, 0x0088(s0)             # 00000088
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    andi    t6, t5, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_80920AC4    
    swc1    $f8, 0x0144(s0)            # 00000144
    bltz    t0, lbl_80920AAC           
    subu    v1, $zero, t0              
    beq     $zero, $zero, lbl_80920AAC 
    or      v1, t0, $zero              # v1 = 00000000
lbl_80920AAC:
    slti    $at, v1, 0x6000            
    bnel    $at, $zero, lbl_80920AC8   
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
lbl_80920AC4:
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80920AC8:
    lwc1    $f10, 0x0144(s0)           # 00000144
    addiu   t7, s0, 0x0024             # t7 = 00000024
    c.eq.s  $f2, $f10                  
    nop
    bc1t    lbl_80920B88               
    nop
    lh      a0, 0x0032(s0)             # 00000032
    sh      t2, 0x0092($sp)            
    jal     func_800636C4              # sins?
    sw      t7, 0x0048($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0070($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lw      a0, 0x00AC($sp)            
    mul.s   $f10, $f0, $f8             
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFB8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFB4
    lw      a1, 0x0048($sp)            
    add.s   $f18, $f10, $f16           
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFBC
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    swc1    $f18, 0x0078($sp)          
    lwc1    $f4, 0x0028(s0)            # 00000028
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t4, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    jal     func_800308B4              
    swc1    $f4, 0x0074($sp)           
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80920B88      
    lh      t2, 0x0092($sp)            
    swc1    $f2, 0x0144(s0)            # 00000144
lbl_80920B88:
    beql    t2, $zero, lbl_80920BEC    
    lwc1    $f8, 0x0144(s0)            # 00000144
    lwc1    $f6, 0x0144(s0)            # 00000144
    c.eq.s  $f2, $f6                   
    nop
    bc1tl   lbl_80920BEC               
    lwc1    $f8, 0x0144(s0)            # 00000144
    lw      a1, 0x019C(s0)             # 0000019C
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063F00              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lh      t7, 0x0032(s0)             # 00000032
    mtc1    $zero, $f2                 # $f2 = 0.00
    subu    t1, v0, t7                 
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    bltz    t1, lbl_80920BD8           
    subu    v1, $zero, t1              
    beq     $zero, $zero, lbl_80920BD8 
    or      v1, t1, $zero              # v1 = 00000000
lbl_80920BD8:
    slti    $at, v1, 0x1000            
    beql    $at, $zero, lbl_80920BEC   
    lwc1    $f8, 0x0144(s0)            # 00000144
    swc1    $f2, 0x0144(s0)            # 00000144
    lwc1    $f8, 0x0144(s0)            # 00000144
lbl_80920BEC:
    ori     $at, $zero, 0x8000         # $at = 00008000
    c.eq.s  $f2, $f8                   
    nop
    bc1f    lbl_809213E8               
    nop
    lh      t9, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    addu    t8, t9, $at                
    jal     func_80022FD0              
    sh      t8, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_809213E8 
    nop
    andi    t4, v0, 0x0020             # t4 = 00000000
lbl_80920C24:
    beq     t4, $zero, lbl_80920CE4    
    addiu   t5, s0, 0x0024             # t5 = 00000024
    lh      a0, 0x0142(s0)             # 00000142
    jal     func_800636C4              # sins?
    sw      t5, 0x0048($sp)            
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t6, 0x0142(s0)             # 00000142
    lh      t7, 0x0140(s0)             # 00000140
    c.lt.s  $f0, $f2                   
    addu    t9, t6, t7                 
    sh      t9, 0x0142(s0)             # 00000142
    bc1f    lbl_80920C80               
    nop
    jal     func_800636C4              # sins?
    lh      a0, 0x0142(s0)             # 00000142
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f2, $f0                   
    nop
    bc1f    lbl_80920C80               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28D2          # a1 = 000028D2
lbl_80920C80:
    jal     func_800636C4              # sins?
    lh      a0, 0x0142(s0)             # 00000142
    lwc1    $f10, 0x0144(s0)           # 00000144
    lwc1    $f18, 0x0008(s0)           # 00000008
    lh      a0, 0x0142(s0)             # 00000142
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063684              # coss?
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0144(s0)            # 00000144
    lwc1    $f10, 0x0010(s0)           # 00000010
    lwc1    $f18, 0x0080(s0)           # 00000080
    mul.s   $f8, $f0, $f6              
    swc1    $f18, 0x0028(s0)           # 00000028
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x002C(s0)           # 0000002C
    lw      t8, 0x0048($sp)            
    lw      t5, 0x0000(t8)             # 00000000
    sw      t5, 0x0100(s0)             # 00000100
    lw      t4, 0x0004(t8)             # 00000004
    sw      t4, 0x0104(s0)             # 00000104
    lw      t5, 0x0008(t8)             # 00000008
    sw      t5, 0x0108(s0)             # 00000108
    beq     $zero, $zero, lbl_809213E8 
    nop
lbl_80920CE4:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0144(s0)            # 00000144
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_80921178               
    lwc1    $f4, 0x0008(s0)            # 00000008
    lh      a3, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     a3, $at, lbl_80920F40      
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    beq     a3, $at, lbl_80921054      
    andi    t6, v0, 0x0008             # t6 = 00000000
    beq     a3, $zero, lbl_80920D34    
    andi    t6, v0, 0x0001             # t6 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beq     a3, $at, lbl_80920E40      
    andi    t4, v0, 0x0004             # t4 = 00000000
    beq     $zero, $zero, lbl_80921154 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80920D34:
    bnel    t6, $zero, lbl_80920D4C    
    lhu     t7, 0x0088(s0)             # 00000088
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80920D7C 
    lwc1    $f0, 0x0144(s0)            # 00000144
    lhu     t7, 0x0088(s0)             # 00000088
lbl_80920D4C:
    andi    t9, t7, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_80920D7C    
    nop
    bltz    t0, lbl_80920D68           
    subu    v1, $zero, t0              
    beq     $zero, $zero, lbl_80920D68 
    or      v1, t0, $zero              # v1 = 00000000
lbl_80920D68:
    slti    $at, v1, 0x6001            
    bne     $at, $zero, lbl_80920D7C   
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
    lwc1    $f0, 0x0144(s0)            # 00000144
lbl_80920D7C:
    beql    t2, $zero, lbl_80920DBC    
    c.eq.s  $f2, $f0                   
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_80920DBC               
    c.eq.s  $f2, $f0                   
    bltz    t1, lbl_80920DA4           
    subu    v1, $zero, t1              
    beq     $zero, $zero, lbl_80920DA4 
    or      v1, t1, $zero              # v1 = 00000000
lbl_80920DA4:
    slti    $at, v1, 0x6001            
    bnel    $at, $zero, lbl_80920DBC   
    c.eq.s  $f2, $f0                   
    swc1    $f2, 0x0144(s0)            # 00000144
    lwc1    $f0, 0x0144(s0)            # 00000144
    c.eq.s  $f2, $f0                   
lbl_80920DBC:
    lui     $at, %hi(var_8092155C)     # $at = 80920000
    bc1t    lbl_80920E38               
    nop
    lwc1    $f4, %lo(var_8092155C)($at) 
    addiu   t8, s0, 0x0024             # t8 = 00000024
    sw      t8, 0x0048($sp)            
    c.eq.s  $f4, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_80920DF8               
    lw      a1, 0x0168(s0)             # 00000168
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    lw      a1, 0x0168(s0)             # 00000168
lbl_80920DF8:
    lw      a3, 0x018C(s0)             # 0000018C
    swc1    $f2, 0x0010($sp)           
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    jal     func_80064178              
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0144(s0)            # 00000144
    lw      a1, 0x0160(s0)             # 00000160
    lw      a3, 0x0184(s0)             # 00000184
    lw      a0, 0x0048($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f6, 0x0144(s0)            # 00000144
    add.s   $f8, $f6, $f0              
    swc1    $f8, 0x0144(s0)            # 00000144
lbl_80920E38:
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80920E40:
    bnel    t4, $zero, lbl_80920E58    
    lhu     t5, 0x0088(s0)             # 00000088
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80920E84 
    lwc1    $f0, 0x0144(s0)            # 00000144
    lhu     t5, 0x0088(s0)             # 00000088
lbl_80920E58:
    slti    $at, t0, 0xE000            
    andi    t6, t5, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_80920E84    
    nop
    beq     $at, $zero, lbl_80920E84   
    slti    $at, t0, 0xA001            
    bne     $at, $zero, lbl_80920E84   
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80920E84:
    beql    t2, $zero, lbl_80920EBC    
    c.eq.s  $f2, $f0                   
    c.eq.s  $f2, $f0                   
    slti    $at, t1, 0xE001            
    bc1tl   lbl_80920EBC               
    c.eq.s  $f2, $f0                   
    beq     $at, $zero, lbl_80920EB8   
    slti    $at, t1, 0xA001            
    bnel    $at, $zero, lbl_80920EBC   
    c.eq.s  $f2, $f0                   
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80920EB8:
    c.eq.s  $f2, $f0                   
lbl_80920EBC:
    lui     $at, %hi(var_80921560)     # $at = 80920000
    bc1t    lbl_80920F38               
    nop
    lwc1    $f10, %lo(var_80921560)($at) 
    addiu   t7, s0, 0x0024             # t7 = 00000024
    sw      t7, 0x0048($sp)            
    c.eq.s  $f10, $f0                  
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_80920EF8               
    lw      a1, 0x0148(s0)             # 00000148
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    lw      a1, 0x0148(s0)             # 00000148
lbl_80920EF8:
    lw      a3, 0x0178(s0)             # 00000178
    swc1    $f2, 0x0010($sp)           
    lw      a0, 0x0048($sp)            
    jal     func_80064178              
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0144(s0)            # 00000144
    lw      a1, 0x0150(s0)             # 00000150
    lw      a3, 0x0180(s0)             # 00000180
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f16, 0x0144(s0)           # 00000144
    add.s   $f18, $f16, $f0            
    swc1    $f18, 0x0144(s0)           # 00000144
lbl_80920F38:
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80920F40:
    bnel    t9, $zero, lbl_80920F58    
    lhu     t8, 0x0088(s0)             # 00000088
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80920F8C 
    lwc1    $f0, 0x0144(s0)            # 00000144
    lhu     t8, 0x0088(s0)             # 00000088
lbl_80920F58:
    andi    t4, t8, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80920F8C    
    nop
    bltz    t0, lbl_80920F74           
    subu    v1, $zero, t0              
    beq     $zero, $zero, lbl_80920F74 
    or      v1, t0, $zero              # v1 = 00000000
lbl_80920F74:
    slti    $at, v1, 0x2000            
    beq     $at, $zero, lbl_80920F8C   
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80920F8C:
    beql    t2, $zero, lbl_80920FD0    
    c.eq.s  $f2, $f0                   
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_80920FD0               
    c.eq.s  $f2, $f0                   
    bltz    t1, lbl_80920FB4           
    subu    v1, $zero, t1              
    beq     $zero, $zero, lbl_80920FB4 
    or      v1, t1, $zero              # v1 = 00000000
lbl_80920FB4:
    slti    $at, v1, 0x2000            
    beql    $at, $zero, lbl_80920FD0   
    c.eq.s  $f2, $f0                   
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
    c.eq.s  $f2, $f0                   
lbl_80920FD0:
    lui     $at, %hi(var_80921564)     # $at = 80920000
    bc1t    lbl_8092104C               
    nop
    lwc1    $f4, %lo(var_80921564)($at) 
    addiu   t5, s0, 0x0024             # t5 = 00000024
    sw      t5, 0x0048($sp)            
    c.eq.s  $f4, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_8092100C               
    lw      a1, 0x0174(s0)             # 00000174
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    lw      a1, 0x0174(s0)             # 00000174
lbl_8092100C:
    lw      a3, 0x018C(s0)             # 0000018C
    swc1    $f2, 0x0010($sp)           
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    jal     func_80064178              
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0144(s0)            # 00000144
    lw      a1, 0x016C(s0)             # 0000016C
    lw      a3, 0x0184(s0)             # 00000184
    lw      a0, 0x0048($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f6, 0x0144(s0)            # 00000144
    add.s   $f8, $f6, $f0              
    swc1    $f8, 0x0144(s0)            # 00000144
lbl_8092104C:
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80921054:
    bnel    t6, $zero, lbl_8092106C    
    lhu     t7, 0x0088(s0)             # 00000088
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921098 
    lwc1    $f0, 0x0144(s0)            # 00000144
    lhu     t7, 0x0088(s0)             # 00000088
lbl_8092106C:
    slti    $at, t0, 0x2001            
    andi    t9, t7, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_80921098    
    nop
    bne     $at, $zero, lbl_80921098   
    slti    $at, t0, 0x6000            
    beq     $at, $zero, lbl_80921098   
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_80921098:
    beql    t2, $zero, lbl_809210D0    
    c.eq.s  $f2, $f0                   
    c.eq.s  $f2, $f0                   
    slti    $at, t1, 0x2001            
    bc1tl   lbl_809210D0               
    c.eq.s  $f2, $f0                   
    bne     $at, $zero, lbl_809210CC   
    slti    $at, t1, 0x6000            
    beql    $at, $zero, lbl_809210D0   
    c.eq.s  $f2, $f0                   
    swc1    $f2, 0x0144(s0)            # 00000144
    beq     $zero, $zero, lbl_80921150 
    lh      a3, 0x0142(s0)             # 00000142
lbl_809210CC:
    c.eq.s  $f2, $f0                   
lbl_809210D0:
    lui     $at, %hi(var_80921568)     # $at = 80920000
    bc1tl   lbl_80921150               
    lh      a3, 0x0142(s0)             # 00000142
    lwc1    $f10, %lo(var_80921568)($at) 
    addiu   t8, s0, 0x0024             # t8 = 00000024
    sw      t8, 0x0048($sp)            
    c.eq.s  $f10, $f0                  
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_8092110C               
    lw      a1, 0x0154(s0)             # 00000154
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287D          # a1 = 0000287D
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    lw      a1, 0x0154(s0)             # 00000154
lbl_8092110C:
    lw      a3, 0x0178(s0)             # 00000178
    swc1    $f2, 0x0010($sp)           
    lw      a0, 0x0048($sp)            
    jal     func_80064178              
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0144(s0)            # 00000144
    lw      a1, 0x015C(s0)             # 0000015C
    lw      a3, 0x0180(s0)             # 00000180
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f16, 0x0144(s0)           # 00000144
    add.s   $f18, $f16, $f0            
    swc1    $f18, 0x0144(s0)           # 00000144
    lh      a3, 0x0142(s0)             # 00000142
lbl_80921150:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80921154:
    lw      a1, 0x00AC($sp)            
    jal     func_80026850              
    lui     a2, 0x4248                 # a2 = 42480000
    mtc1    $zero, $f2                 # $f2 = 0.00
    bne     v0, $zero, lbl_809213E8    
    nop
    beq     $zero, $zero, lbl_809213E8 
    swc1    $f2, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0008(s0)            # 00000008
lbl_80921178:
    lwc1    $f6, 0x0024(s0)            # 00000024
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, s0, 0x0008             # a1 = 00000008
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_809211F0               
    sw      a0, 0x0048($sp)            
    lwc1    $f8, 0x0010(s0)            # 00000010
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x4348                # $at = 43480000
    c.eq.s  $f8, $f10                  
    nop
    bc1fl   lbl_809211F0               
    sw      a0, 0x0048($sp)            
    lwc1    $f16, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 200.00
    lh      t4, 0x008A(s0)             # 0000008A
    lh      t5, 0x0032(s0)             # 00000032
    c.lt.s  $f16, $f18                 
    swc1    $f2, 0x0144(s0)            # 00000144
    subu    t6, t4, t5                 
    addiu   t7, t6, 0x2000             # t7 = 00002000
    andi    t9, t7, 0xC000             # t9 = 00000000
    bc1f    lbl_809213E8               
    sh      t9, 0x0142(s0)             # 00000142
    lui     $at, %hi(var_8092156C)     # $at = 80920000
    lwc1    $f4, %lo(var_8092156C)($at) 
    beq     $zero, $zero, lbl_809213E8 
    swc1    $f4, 0x0144(s0)            # 00000144
    sw      a0, 0x0048($sp)            
lbl_809211F0:
    sh      t1, 0x0094($sp)            
    sh      t2, 0x0092($sp)            
    jal     func_80063F00              
    sh      t3, 0x0090($sp)            
    addiu   t4, v0, 0x2000             # t4 = 00002000
    andi    t5, t4, 0xC000             # t5 = 00000000
    lh      t1, 0x0094($sp)            
    lh      t2, 0x0092($sp)            
    lh      t3, 0x0090($sp)            
    sh      t5, 0x0142(s0)             # 00000142
    lh      v1, 0x0142(s0)             # 00000142
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    beq     v1, $at, lbl_80921304      
    lw      a0, 0x0048($sp)            
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    beql    v1, $at, lbl_8092136C      
    lhu     t6, 0x0088(s0)             # 00000088
    beq     v1, $zero, lbl_80921250    
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beql    v1, $at, lbl_809212B8      
    lhu     t9, 0x0088(s0)             # 00000088
    beq     $zero, $zero, lbl_809213B4 
    nop
lbl_80921250:
    lhu     t6, 0x0088(s0)             # 00000088
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80921288    
    nop
    lh      v0, 0x007E(s0)             # 0000007E
    bltz    v0, lbl_80921274           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80921274 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80921274:
    slti    $at, v1, 0x6001            
    bne     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80921288:
    beq     t2, $zero, lbl_809213B4    
    nop
    bltz    t1, lbl_809212A0           
    subu    v1, $zero, t1              
    beq     $zero, $zero, lbl_809212A0 
    or      v1, t1, $zero              # v1 = 00000000
lbl_809212A0:
    slti    $at, v1, 0x6001            
    bne     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lhu     t9, 0x0088(s0)             # 00000088
lbl_809212B8:
    andi    t8, t9, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_809212E4    
    nop
    lh      v0, 0x007E(s0)             # 0000007E
    slti    $at, v0, 0xE000            
    beq     $at, $zero, lbl_809213B4   
    slti    $at, v0, 0xA001            
    bne     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_809212E4:
    beq     t2, $zero, lbl_809213B4    
    slti    $at, t1, 0xE000            
    beq     $at, $zero, lbl_809213B4   
    slti    $at, t1, 0xA001            
    bne     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80921304:
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t5, t4, 0x0008             # t5 = 00000000
    beq     t5, $zero, lbl_8092133C    
    nop
    lh      v0, 0x007E(s0)             # 0000007E
    bltz    v0, lbl_80921328           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80921328 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80921328:
    slti    $at, v1, 0x2000            
    beq     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_8092133C:
    beq     t2, $zero, lbl_809213B4    
    nop
    bltz    t1, lbl_80921354           
    subu    v1, $zero, t1              
    beq     $zero, $zero, lbl_80921354 
    or      v1, t1, $zero              # v1 = 00000000
lbl_80921354:
    slti    $at, v1, 0x2000            
    beq     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lhu     t6, 0x0088(s0)             # 00000088
lbl_8092136C:
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80921398    
    nop
    lh      v0, 0x007E(s0)             # 0000007E
    slti    $at, v0, 0x2001            
    bne     $at, $zero, lbl_809213B4   
    slti    $at, v0, 0x6000            
    beq     $at, $zero, lbl_809213B4   
    nop
    beq     $zero, $zero, lbl_809213B4 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80921398:
    beq     t2, $zero, lbl_809213B4    
    slti    $at, t1, 0x2001            
    bne     $at, $zero, lbl_809213B4   
    slti    $at, t1, 0x6000            
    beq     $at, $zero, lbl_809213B4   
    nop
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_809213B4:
    bne     t3, $zero, lbl_809213E8    
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a1, 0x0008(s0)             # 00000008
    swc1    $f2, 0x0010($sp)           
    jal     func_80064178              
    lui     a3, 0x4040                 # a3 = 40400000
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      a1, 0x0010(s0)             # 00000010
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
lbl_809213E8:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41C8                 # a2 = 41C80000
    andi    t8, t9, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_80921424    
    lui     a3, 0x41A0                 # a3 = 41A00000
    lw      t6, 0x0024(s0)             # 00000024
    addiu   t4, $sp, 0x0098            # t4 = FFFFFFF0
    sw      t6, 0x0000(t4)             # FFFFFFF0
    lw      t5, 0x0028(s0)             # 00000028
    sw      t5, 0x0004(t4)             # FFFFFFF4
    lw      t6, 0x002C(s0)             # 0000002C
    sw      t6, 0x0008(t4)             # FFFFFFF8
lbl_80921424:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)            
    lw      a0, 0x00AC($sp)            
    jal     func_80021E6C              
    swc1    $f6, 0x0010($sp)           
    lh      t9, 0x001C(s0)             # 0000001C
    lwc1    $f8, 0x0098($sp)           
    andi    t8, t9, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_80921464    
    addiu   a1, s0, 0x0190             # a1 = 00000190
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x00A0($sp)          
    swc1    $f10, 0x002C(s0)           # 0000002C
    addiu   a1, s0, 0x0190             # a1 = 00000190
lbl_80921464:
    sw      a1, 0x0048($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x00AC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x004C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0048($sp)            
    lbu     t5, 0x0114(s0)             # 00000114
    lw      a1, 0x004C($sp)            
    lw      a0, 0x00AC($sp)            
    bnel    t5, $zero, lbl_809214AC    
    lw      $ra, 0x003C($sp)           
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0048($sp)            
    lw      $ra, 0x003C($sp)           
lbl_809214AC:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000
    jr      $ra                        
    nop


func_809214BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022438              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1400             # a1 = 06001400
    jal     func_80028048              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80921500: .word 0x00800100, 0x00000010, 0x00850000, 0x000001DC
.word func_80920340
.word func_809206FC
.word func_80920728
.word func_809214BC
var_80921520: .word \
0x00000935, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00001000, 0x00000000, 0x00010100, \
0x001E0014, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80921550: .word 0x3FE66666
var_80921554: .word 0x3FE66666
var_80921558: .word 0x3FE66666
var_8092155C: .word 0x477FFF00
var_80921560: .word 0x477FFF00
var_80921564: .word 0x477FFF00
var_80921568: .word 0x477FFF00
var_8092156C: .word 0x477FFF00

