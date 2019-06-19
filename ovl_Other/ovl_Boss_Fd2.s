.section .text
func_80967100:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80967110:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809671BC    
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
    beq     $zero, $zero, lbl_809671C8 
    swc1    $f0, 0x0038(a1)            # 00000038
lbl_809671BC:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_80967110   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
lbl_809671C8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809671D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809671E8:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809672D0    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0024(a1)             # 00000024
    sb      $zero, 0x0025(a1)          # 00000025
    lw      t9, 0x0000(a2)             # 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(a2)             # 00000004
    lwc1    $f4, 0x0000(a1)            # 00000000
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(a2)             # 00000008
    lwc1    $f10, 0x0004(a1)           # 00000004
    sw      t9, 0x0008(a1)             # 00000008
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x000C(a1)             # 0000000C
    lw      t0, 0x0004(a3)             # 00000004
    lwc1    $f6, 0x000C(a1)            # 0000000C
    sw      t0, 0x0010(a1)             # 00000010
    lw      t1, 0x0008(a3)             # 00000008
    sub.s   $f8, $f4, $f6              
    lwc1    $f16, 0x0010(a1)           # 00000010
    sw      t1, 0x0014(a1)             # 00000014
    lw      t2, 0x0028($sp)            
    lwc1    $f6, 0x0014(a1)            # 00000014
    lwc1    $f4, 0x0008(a1)            # 00000008
    lw      t4, 0x0000(t2)             # 00000000
    sub.s   $f18, $f10, $f16           
    mtc1    $zero, $f10                # $f10 = 0.00
    sw      t4, 0x0018(a1)             # 00000018
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x001C(a1)             # 0000001C
    lw      t4, 0x0008(t2)             # 00000008
    swc1    $f8, 0x0000(a1)            # 00000000
    sub.s   $f8, $f4, $f6              
    swc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f10, 0x0034(a1)           # 00000034
    sw      t4, 0x0020(a1)             # 00000020
    swc1    $f8, 0x0008(a1)            # 00000008
    lh      t5, 0x0032($sp)            
    sh      t5, 0x002A(a1)             # 0000002A
    jal     func_80026D64              
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f18                  # $f18 = 400.00
    swc1    $f0, 0x0038(a1)            # 00000038
    sh      $zero, 0x002C(a1)          # 0000002C
    lwc1    $f16, 0x002C($sp)          
    div.s   $f4, $f16, $f18            
    swc1    $f4, 0x0030(a1)            # 00000030
    lh      t6, 0x0036($sp)            
    beq     $zero, $zero, lbl_809672DC 
    sh      t6, 0x002E(a1)             # 0000002E
lbl_809672D0:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_809671E8   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
lbl_809672DC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809672EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809672FC:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809673A4    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0024(a1)             # 00000024
    lw      t9, 0x0000(a2)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(a2)             # 00000004
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(a2)             # 00000008
    mtc1    $at, $f12                  # $f12 = 10.00
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
    sh      t5, 0x002A(a1)             # 0000002A
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x0030(a1)            # 00000030
    jal     func_80026D64              
    sw      a1, 0x001C($sp)            
    trunc.w.s $f10, $f0                  
    lw      a1, 0x001C($sp)            
    mfc1    t9, $f10                   
    beq     $zero, $zero, lbl_809673B0 
    sb      t9, 0x0025(a1)             # 00000025
lbl_809673A4:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_809672FC   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
lbl_809673B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809673C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809673D0:
    lbu     t6, 0x0024(a1)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_8096747C    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0005          # t7 = 00000005
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
    beq     $zero, $zero, lbl_80967488 
    swc1    $f0, 0x0038(a1)            # 00000038
lbl_8096747C:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_809673D0   
    addiu   a1, a1, 0x003C             # a1 = 0000003C
lbl_80967488:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80967498:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8096749C:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_8096751C    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(a3)             # 00000008
    sh      $zero, 0x002C(a0)          # 0000002C
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0010($sp)           
    div.s   $f8, $f4, $f6              
    jr      $ra                        
    swc1    $f8, 0x0030(a0)            # 00000030
lbl_8096751C:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_8096749C   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
    jr      $ra                        
    nop


func_80967530:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_8096A9F0)      # a1 = 80970000
    addiu   a1, a1, %lo(var_8096A9F0)  # a1 = 8096A9F0
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3BE5                 # a1 = 3BE50000
    ori     a1, a1, 0x6040             # a1 = 3BE56040
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_8096AB30)     # $at = 80970000
    lwc1    $f4, %lo(var_8096AB30)($at) 
    lui     $at, 0xC411                # $at = C4110000
    mtc1    $at, $f6                   # $f6 = -580.00
    lwc1    $f8, 0x0054(s0)            # 00000054
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    div.s   $f10, $f6, $f8             
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f4, 0x0028(s0)            # 00000028
    mfc1    a1, $f10                   
    jal     func_8001EC20              
    nop
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0xC8EC             # a3 = 0600C8EC
    addiu   a2, a2, 0x1A78             # a2 = 06011A78
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t7, %hi(func_8096912C)     # t7 = 80970000
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_809675E4    
    addiu   t7, t7, %lo(func_8096912C) # t7 = 8096912C
    jal     func_8096766C              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_809675EC 
    addiu   a1, s0, 0x140C             # a1 = 0000140C
lbl_809675E4:
    sw      t7, 0x0180(s0)             # 00000180
    addiu   a1, s0, 0x140C             # a1 = 0000140C
lbl_809675EC:
    sw      a1, 0x0034($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_8096A974)      # a3 = 80970000
    addiu   t8, s0, 0x142C             # t8 = 0000142C
    lw      a1, 0x0034($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, %lo(var_8096A974)  # a3 = 8096A974
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8096762C:
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
    addiu   a1, a1, 0x140C             # a1 = 0000140C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8096766C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0118(a2)             # 00000118
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC1D0             # a1 = 0600C1D0
    sw      a2, 0x0020($sp)            
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      t6, 0x001C($sp)            
    lw      a2, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t7, %hi(func_80967764)     # t7 = 80960000
    addiu   t7, t7, %lo(func_80967764) # t7 = 80967764
    lui     $at, %hi(var_8096AB34)     # $at = 80970000
    sw      t7, 0x0180(a2)             # 00000180
    swc1    $f4, 0x0158(a2)            # 00000158
    jal     func_80026D64              
    lwc1    $f12, %lo(var_8096AB34)($at) 
    trunc.w.s $f6, $f0                   
    lui     t3, %hi(var_8096A984)      # t3 = 80970000
    addiu   t3, t3, %lo(var_8096A984)  # t3 = 8096A984
    lw      a2, 0x0020($sp)            
    mfc1    t9, $f6                    
    lw      v1, 0x001C($sp)            
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  2                 
    addu    v0, t2, t3                 
    lwc1    $f8, 0x0000(v0)            # 00000000
    swc1    $f8, 0x0024(a2)            # 00000024
    lwc1    $f10, 0x0008(v0)           # 00000008
    sh      $zero, 0x0188(a2)          # 00000188
    sh      t4, 0x01AC(a2)             # 000001AC
    beq     v1, $zero, lbl_80967754    
    swc1    $f10, 0x002C(a2)           # 0000002C
    lb      v0, 0x00AF(v1)             # 000000AF
    slti    $at, v0, 0x0012            
    bnel    $at, $zero, lbl_80967728   
    slti    $at, v0, 0x000C            
    beq     $zero, $zero, lbl_80967754 
    sh      $zero, 0x019C(a2)          # 0000019C
    slti    $at, v0, 0x000C            
lbl_80967728:
    bne     $at, $zero, lbl_80967738   
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_80967754 
    sh      t5, 0x019C(a2)             # 0000019C
lbl_80967738:
    slti    $at, v0, 0x0006            
    bne     $at, $zero, lbl_80967750   
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     $zero, $zero, lbl_80967754 
    sh      t6, 0x019C(a2)             # 0000019C
lbl_80967750:
    sh      t7, 0x019C(a2)             # 0000019C
lbl_80967754:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80967764:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s2, 0x0030($sp)            
    sw      s0, 0x0028($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x002C($sp)            
    sdc1    $f20, 0x0020($sp)          
    lw      t6, 0x0118(s2)             # 00000118
    addiu   a0, s2, 0x013C             # a0 = 0000013C
    sw      t6, 0x0050($sp)            
    lw      s1, 0x1C44(s0)             # 00001C44
    jal     func_8008C9C0              
    sw      a0, 0x003C($sp)            
    lh      v1, 0x0188(s2)             # 00000188
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $zero, lbl_809677C8    
    lh      t7, 0x01AC(s2)             # 000001AC
    beq     v1, $at, lbl_809678AC      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80967A04      
    addiu   a0, s2, 0x00B6             # a0 = 000000B6
    beq     $zero, $zero, lbl_80967A8C 
    lw      $ra, 0x0034($sp)           
    lh      t7, 0x01AC(s2)             # 000001AC
lbl_809677C8:
    lui     $at, 0x428C                # $at = 428C0000
    bnel    t7, $zero, lbl_80967A8C    
    lw      $ra, 0x0034($sp)           
    mtc1    $at, $f4                   # $f4 = 70.00
    lwc1    $f6, 0x0028(s1)            # 00000028
    lw      v0, 0x0050($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80967A8C               
    lw      $ra, 0x0034($sp)           
    sb      $zero, 0x02C7(v0)          # 000002C7
    lwc1    $f8, 0x0024(s2)            # 00000024
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    swc1    $f8, 0x02B8(v0)            # 000002B8
    lwc1    $f10, 0x002C(s2)           # 0000002C
    addiu   a3, $zero, 0x5000          # a3 = 00005000
    jal     func_80026C84              
    swc1    $f10, 0x02C0(v0)           # 000002C0
    lh      t9, 0x0198(s2)             # 00000198
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f16                  # $f16 = -200.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t8, 0x0188(s2)             # 00000188
    sh      t0, 0x0198(s2)             # 00000198
    swc1    $f16, 0x0028(s2)           # 00000028
    lw      t1, 0x0050($sp)            
    addiu   $at, $zero, 0x0018         # $at = 00000018
    lb      v0, 0x00AF(t1)             # 000000AF
    bnel    v0, $at, lbl_80967858      
    slti    $at, v0, 0x0012            
    beq     $zero, $zero, lbl_80967890 
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    slti    $at, v0, 0x0012            
lbl_80967858:
    bnel    $at, $zero, lbl_8096786C   
    slti    $at, v0, 0x000C            
    beq     $zero, $zero, lbl_80967890 
    addiu   v0, $zero, 0x0019          # v0 = 00000019
    slti    $at, v0, 0x000C            
lbl_8096786C:
    bnel    $at, $zero, lbl_80967880   
    slti    $at, v0, 0x0006            
    beq     $zero, $zero, lbl_80967890 
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    slti    $at, v0, 0x0006            
lbl_80967880:
    bne     $at, $zero, lbl_80967890   
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    beq     $zero, $zero, lbl_80967890 
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
lbl_80967890:
    sh      v0, 0x01AC(s2)             # 000001AC
    lh      t2, 0x01AC(s2)             # 000001AC
    lw      t4, 0x0050($sp)            
    addiu   t3, t2, 0x000A             # t3 = 0000000A
    sh      t3, 0x0240(t4)             # 00000240
    beq     $zero, $zero, lbl_80967A8C 
    lw      $ra, 0x0034($sp)           
lbl_809678AC:
    lh      t5, 0x01AC(s2)             # 000001AC
    bnel    t5, $zero, lbl_80967A8C    
    lw      $ra, 0x0034($sp)           
    lh      v0, 0x019C(s2)             # 0000019C
    lui     $at, %hi(var_8096AB38)     # $at = 80970000
    beq     v0, $zero, lbl_80967920    
    addiu   t6, v0, 0xFFFF             # t6 = 00000009
    sh      t6, 0x019C(s2)             # 0000019C
    jal     func_80026D64              
    lwc1    $f12, %lo(var_8096AB38)($at) 
    trunc.w.s $f18, $f0                  
    lui     t2, %hi(var_8096A984)      # t2 = 80970000
    addiu   t2, t2, %lo(var_8096A984)  # t2 = 8096A984
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    mfc1    t8, $f18                   
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    sll     t1, t0,  2                 
    subu    t1, t1, t0                 
    sll     t1, t1,  2                 
    addu    v0, t1, t2                 
    lwc1    $f4, 0x0000(v0)            # 00000000
    swc1    $f4, 0x0024(s2)            # 00000024
    lwc1    $f6, 0x0008(v0)            # 00000008
    sh      $zero, 0x0188(s2)          # 00000188
    sh      t3, 0x01AC(s2)             # 000001AC
    beq     $zero, $zero, lbl_80967A88 
    swc1    $f6, 0x002C(s2)            # 0000002C
lbl_80967920:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xC1D0             # a0 = 0600C1D0
    jal     func_8008A194              
    swc1    $f8, 0x0158(s2)            # 00000158
    mtc1    v0, $f10                   # $f10 = 0.00
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x0188(s2)             # 00000188
    cvt.s.w $f16, $f10                 
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38D1          # a1 = 000038D1
    jal     func_80022FD0              
    swc1    $f16, 0x01E0(s2)           # 000001E0
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    lh      t5, 0x008A(s2)             # 0000008A
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    mtc1    $at, $f20                  # $f20 = 100.00
    sh      t6, 0x01AC(s2)             # 000001AC
    or      s1, $zero, $zero           # s1 = 00000000
    sh      t5, 0x00B6(s2)             # 000000B6
    swc1    $f18, 0x0028(s2)           # 00000028
lbl_80967980:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    sll     t7, s1,  2                 
    subu    t7, t7, s1                 
    sll     t7, t7,  2                 
    addu    s0, s2, t7                 
    lwc1    $f4, 0x10B8(s0)            # 000010B8
    mov.s   $f12, $f20                 
    add.s   $f6, $f4, $f0              
    jal     func_80026D90              
    swc1    $f6, 0x10B8(s0)            # 000010B8
    lwc1    $f8, 0x10C0(s0)            # 000010C0
    mov.s   $f12, $f20                 
    add.s   $f10, $f8, $f0             
    jal     func_80026D90              
    swc1    $f10, 0x10C0(s0)           # 000010C0
    lwc1    $f16, 0x1254(s0)           # 00001254
    mov.s   $f12, $f20                 
    add.s   $f18, $f16, $f0            
    jal     func_80026D90              
    swc1    $f18, 0x1254(s0)           # 00001254
    lwc1    $f4, 0x125C(s0)            # 0000125C
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    add.s   $f6, $f4, $f0              
    sra     s1, s1, 16                 
    slti    $at, s1, 0x000A            
    bne     $at, $zero, lbl_80967980   
    swc1    $f6, 0x125C(s0)            # 0000125C
    lw      t9, 0x0050($sp)            
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    beq     $zero, $zero, lbl_80967A88 
    sh      t8, 0x0230(t9)             # 00000230
lbl_80967A04:
    lh      a1, 0x008A(s2)             # 0000008A
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t0, 0x01AC(s2)             # 000001AC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t0, $at, lbl_80967A6C      
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    lwc1    $f8, 0x0090(s2)            # 00000090
    lui     $at, 0x4000                # $at = 40000000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10                  
    or      a1, s2, $zero              # a1 = 00000000
    lui     a2, 0x4040                 # a2 = 40400000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    bc1fl   lbl_80967A70               
    lw      a0, 0x003C($sp)            
    mtc1    $at, $f16                  # $f16 = 2.00
    lh      a3, 0x008A(s2)             # 0000008A
    sw      t1, 0x0014($sp)            
    jal     func_80022E7C              
    swc1    $f16, 0x0010($sp)          
    or      a0, s1, $zero              # a0 = 00000001
    jal     func_80022FD0              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
lbl_80967A6C:
    lw      a0, 0x003C($sp)            
lbl_80967A70:
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s2)             # 000001E0
    beq     v0, $zero, lbl_80967A88    
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80967AA4              
    or      a1, s0, $zero              # a1 = 00000000
lbl_80967A88:
    lw      $ra, 0x0034($sp)           
lbl_80967A8C:
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80967AA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0118(a2)             # 00000118
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAE90             # a1 = 0600AE90
    sw      a2, 0x0020($sp)            
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      t6, 0x001C($sp)            
    lw      a2, 0x0020($sp)            
    lui     t7, %hi(func_80967B4C)     # t7 = 80960000
    addiu   t7, t7, %lo(func_80967B4C) # t7 = 80967B4C
    sw      t7, 0x0180(a2)             # 00000180
    lw      t8, 0x001C($sp)            
    addiu   $at, $zero, 0x0018         # $at = 00000018
    lb      v0, 0x00AF(t8)             # 000000AF
    bnel    v0, $at, lbl_80967B00      
    slti    $at, v0, 0x0012            
    beq     $zero, $zero, lbl_80967B38 
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    slti    $at, v0, 0x0012            
lbl_80967B00:
    bnel    $at, $zero, lbl_80967B14   
    slti    $at, v0, 0x000C            
    beq     $zero, $zero, lbl_80967B38 
    addiu   v0, $zero, 0x0028          # v0 = 00000028
    slti    $at, v0, 0x000C            
lbl_80967B14:
    bnel    $at, $zero, lbl_80967B28   
    slti    $at, v0, 0x0006            
    beq     $zero, $zero, lbl_80967B38 
    addiu   v0, $zero, 0x0028          # v0 = 00000028
    slti    $at, v0, 0x0006            
lbl_80967B28:
    bne     $at, $zero, lbl_80967B38   
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    beq     $zero, $zero, lbl_80967B38 
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
lbl_80967B38:
    sh      v0, 0x01AC(a2)             # 000001AC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80967B4C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    lh      t6, 0x0186(s0)             # 00000186
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sh      t6, 0x0036($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    sh      v0, 0x0186(s0)             # 00000186
    lh      t7, 0x0036($sp)            
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f2, $f4                   
    abs.s   $f2, $f2                   
    c.le.s  $f2, $f12                  
    nop
    bc1fl   lbl_80967C04               
    c.lt.s  $f12, $f2                  
    lh      t8, 0x0186(s0)             # 00000186
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAE90             # a1 = 0600AE90
    mtc1    t8, $f6                    # $f6 = 0.00
    lw      a0, 0x0030($sp)            
    lui     a2, 0xC0A0                 # a2 = C0A00000
    cvt.s.w $f0, $f6                   
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80967C04               
    c.lt.s  $f12, $f2                  
    jal     func_8008D328              
    swc1    $f2, 0x002C($sp)           
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    lwc1    $f2, 0x002C($sp)           
    c.lt.s  $f12, $f2                  
lbl_80967C04:
    nop
    bc1fl   lbl_80967C48               
    lh      t0, 0x01AC(s0)             # 000001AC
    lh      t9, 0x0186(s0)             # 00000186
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC8EC             # a1 = 0600C8EC
    mtc1    t9, $f8                    # $f8 = 0.00
    lw      a0, 0x0030($sp)            
    cvt.s.w $f0, $f8                   
    abs.s   $f0, $f0                   
    c.le.s  $f0, $f12                  
    nop
    bc1fl   lbl_80967C48               
    lh      t0, 0x01AC(s0)             # 000001AC
    jal     func_8008D328              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lh      t0, 0x01AC(s0)             # 000001AC
lbl_80967C48:
    lui     $at, 0x4348                # $at = 43480000
    bnel    t0, $zero, lbl_80967C90    
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x0090(s0)           # 00000090
    mtc1    $at, $f16                  # $f16 = 200.00
    lw      a1, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_80967C84               
    nop
    jal     func_80968390              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80967C90 
    lw      $ra, 0x0024($sp)           
lbl_80967C84:
    jal     func_80967DE8              
    lw      a1, 0x003C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80967C90:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80967CA0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0118(a3)             # 00000118
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9194             # a1 = 06009194
    sw      a3, 0x0020($sp)            
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    sw      t6, 0x001C($sp)            
    lw      a3, 0x0020($sp)            
    lui     t7, %hi(func_80967D18)     # t7 = 80960000
    addiu   t7, t7, %lo(func_80967D18) # t7 = 80967D18
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x9194             # a0 = 06009194
    jal     func_8008A194              
    sw      t7, 0x0180(a3)             # 00000180
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0020($sp)            
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x01E0(a3)            # 000001E0
    lw      t9, 0x001C($sp)            
    sh      t8, 0x0240(t9)             # 00000240
    sh      $zero, 0x0188(a3)          # 00000188
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80967D18:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x0188(s0)             # 00000188
    lw      v0, 0x0118(s0)             # 00000118
    addiu   a0, s0, 0x0028             # a0 = 00000028
    bne     t6, $zero, lbl_80967D70    
    lui     a1, 0xC2C8                 # a1 = C2C80000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s0)             # 000001E0
    beq     v0, $zero, lbl_80967DD4    
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    sh      t7, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_80967DD4 
    sh      t8, 0x01AC(s0)             # 000001AC
lbl_80967D70:
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064280              
    sw      v0, 0x0024($sp)            
    lh      t9, 0x01AC(s0)             # 000001AC
    lw      v0, 0x0024($sp)            
    bnel    t9, $zero, lbl_80967DD8    
    lw      $ra, 0x001C($sp)           
    lh      t0, 0x0198(s0)             # 00000198
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0003            
    bne     $at, $zero, lbl_80967DCC   
    nop
    lb      t1, 0x00AF(v0)             # 000000AF
    lui     t2, %hi(func_8096912C)     # t2 = 80970000
    addiu   t2, t2, %lo(func_8096912C) # t2 = 8096912C
    slti    $at, t1, 0x0018            
    beq     $at, $zero, lbl_80967DCC   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      $zero, 0x0198(s0)          # 00000198
    sw      t2, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_80967DD4 
    sb      t3, 0x02C8(v0)             # 000002C8
lbl_80967DCC:
    jal     func_8096766C              
    lw      a1, 0x002C($sp)            
lbl_80967DD4:
    lw      $ra, 0x001C($sp)           
lbl_80967DD8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80967DE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x73CC             # a1 = 060073CC
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80967E4C)     # t6 = 80960000
    addiu   t6, t6, %lo(func_80967E4C) # t6 = 80967E4C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x73CC             # a0 = 060073CC
    jal     func_8008A194              
    sw      t6, 0x0180(t7)             # 00000180
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0018($sp)            
    cvt.s.w $f6, $f4                   
    sh      $zero, 0x0188(v1)          # 00000188
    swc1    $f6, 0x01E0(v1)            # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80967E4C:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s2, 0x0058($sp)            
    sw      s0, 0x0050($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s1, 0x0054($sp)            
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sh      $zero, 0x00B2($sp)         
    lw      t6, 0x0118(s0)             # 00000118
    addiu   s1, s0, 0x013C             # s1 = 0000013C
    or      a0, s1, $zero              # a0 = 0000013C
    sw      t6, 0x00AC($sp)            
    lw      t7, 0x1C44(s2)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x00A8($sp)            
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s0)             # 000001E0
    beq     v0, $zero, lbl_80967EB8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80967CA0              
    or      a1, s2, $zero              # a1 = 00000000
lbl_80967EB8:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f2                   # $f2 = 25.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x428C                # $at = 428C0000
    addiu   a0, s0, 0x020E             # a0 = 0000020E
    c.le.s  $f2, $f0                   
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bc1f    lbl_80968040               
    nop
    mtc1    $at, $f20                  # $f20 = 70.00
    nop
    c.lt.s  $f0, $f20                  
    nop
    bc1f    lbl_80968040               
    nop
    c.eq.s  $f2, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_80967F18               
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_80967F18:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x30DB          # a1 = 000030DB
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4140                # $at = 41400000
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80967F68               
    sh      t0, 0x00B2($sp)            
    sub.s   $f8, $f20, $f0             
    mtc1    $at, $f10                  # $f10 = 12.00
    nop
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    beq     $zero, $zero, lbl_80967F68 
    sh      t9, 0x00B2($sp)            
    sh      t0, 0x00B2($sp)            
lbl_80967F68:
    lw      v0, 0x00A8($sp)            
    lwc1    $f6, 0x0200(s0)            # 00000200
    lwc1    $f18, 0x0208(s0)           # 00000208
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f16, 0x002C(v0)           # 0000002C
    lwc1    $f10, 0x0204(s0)           # 00000204
    sub.s   $f20, $f4, $f6             
    lwc1    $f8, 0x0028(v0)            # 00000028
    sub.s   $f22, $f16, $f18           
    mov.s   $f14, $f20                 
    sub.s   $f24, $f8, $f10            
    jal     func_800AA4F8              
    mov.s   $f12, $f22                 
    mul.s   $f4, $f20, $f20            
    mov.s   $f14, $f24                 
    sh      v0, 0x00B4($sp)            
    mul.s   $f6, $f22, $f22            
    add.s   $f0, $f4, $f6              
    jal     func_800AA4F8              
    sqrt.s  $f12, $f0                  
    lh      a1, 0x00B4($sp)            
    lh      t1, 0x00B6(s0)             # 000000B6
    subu    v1, $zero, v0              
    or      s1, v1, $zero              # s1 = 00000000
    subu    a1, a1, t1                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    slti    $at, a1, 0x1F41            
    bne     $at, $zero, lbl_80967FE4   
    addiu   s1, s1, 0xE4A8             # s1 = FFFFE4A8
    addiu   a1, $zero, 0x1F40          # a1 = 00001F40
lbl_80967FE4:
    slti    $at, a1, 0xE0C0            
    beq     $at, $zero, lbl_80967FF4   
    sll     s1, s1, 16                 
    addiu   a1, $zero, 0xE0C0          # a1 = FFFFE0C0
lbl_80967FF4:
    sra     s1, s1, 16                 
    slti    $at, s1, 0x03E9            
    bne     $at, $zero, lbl_80968008   
    addiu   a0, s0, 0x020E             # a0 = 0000020E
    addiu   s1, $zero, 0x03E8          # s1 = 000003E8
lbl_80968008:
    slti    $at, s1, 0xF060            
    beq     $at, $zero, lbl_80968018   
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   s1, $zero, 0xF060          # s1 = FFFFF060
lbl_80968018:
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    sll     a1, s1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x020C             # a0 = 0000020C
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     $zero, $zero, lbl_80968060 
    lh      t2, 0x00B2($sp)            
lbl_80968040:
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x020C             # a0 = 0000020C
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t2, 0x00B2($sp)            
lbl_80968060:
    lui     $at, 0x4700                # $at = 47000000
    addiu   t3, $sp, 0x0090            # t3 = FFFFFFC8
    beq     t2, $zero, lbl_80968364    
    lui     t4, %hi(var_8096AA0C)      # t4 = 80970000
    mtc1    $at, $f0                   # $f0 = 32768.00
    lui     $at, %hi(var_8096AB3C)     # $at = 80970000
    lwc1    $f2, %lo(var_8096AB3C)($at) 
    addiu   t4, t4, %lo(var_8096AA0C)  # t4 = 8096AA0C
    lw      t6, 0x0000(t4)             # 8096AA0C
    lw      t5, 0x0004(t4)             # 8096AA10
    lui     t8, %hi(var_8096AA18)      # t8 = 80970000
    sw      t6, 0x0000(t3)             # FFFFFFC8
    lw      t6, 0x0008(t4)             # 8096AA14
    addiu   t8, t8, %lo(var_8096AA18)  # t8 = 8096AA18
    sw      t5, 0x0004(t3)             # FFFFFFCC
    sw      t6, 0x0008(t3)             # FFFFFFD0
    lw      t0, 0x0000(t8)             # 8096AA18
    addiu   t7, $sp, 0x0078            # t7 = FFFFFFB0
    lw      t9, 0x0004(t8)             # 8096AA1C
    sw      t0, 0x0000(t7)             # FFFFFFB0
    lw      t0, 0x0008(t8)             # 8096AA20
    sw      t9, 0x0004(t7)             # FFFFFFB4
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t0, 0x0008(t7)             # FFFFFFB8
    lw      t2, 0x00AC($sp)            
    mtc1    $at, $f8                   # $f8 = 30.00
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0210(t2)             # 00000210
    addiu   v0, s0, 0x0200             # v0 = 00000200
    swc1    $f8, 0x0098($sp)           
    lw      t5, 0x0000(v0)             # 00000200
    addiu   t3, $sp, 0x006C            # t3 = FFFFFFA4
    lui     $at, 0x3F00                # $at = 3F000000
    sw      t5, 0x0000(t3)             # FFFFFFA4
    lw      t4, 0x0004(v0)             # 00000204
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t4, 0x0004(t3)             # FFFFFFA8
    lw      t5, 0x0008(v0)             # 00000208
    sw      t5, 0x0008(t3)             # FFFFFFAC
    lh      t7, 0x020E(s0)             # 0000020E
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t9, 0x020C(s0)             # 0000020C
    sw      v0, 0x0064($sp)            
    addu    t8, t6, t7                 
    mtc1    t8, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f6, $f4                   
    div.s   $f18, $f16, $f0            
    mtc1    $at, $f16                  # $f16 = 0.50
    div.s   $f8, $f6, $f0              
    mul.s   $f12, $f18, $f2            
    nop
    mul.s   $f10, $f8, $f2             
    jal     func_800AAB94              
    add.s   $f22, $f10, $f16           
    mov.s   $f12, $f22                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   s1, $sp, 0x0084            # s1 = FFFFFFBC
    or      a1, s1, $zero              # a1 = FFFFFFBC
    jal     func_800AB958              
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFC8
    lh      a0, 0x018C(s0)             # 0000018C
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f22                  # $f22 = 300.00
    mul.s   $f18, $f0, $f20            
    lh      t1, 0x00B2($sp)            
    addiu   t0, $sp, 0x0078            # t0 = FFFFFFB0
    sw      t0, 0x0010($sp)            
    sw      t1, 0x0018($sp)            
    lw      a1, 0x00AC($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    add.s   $f4, $f18, $f22            
    addiu   a1, a1, 0x1960             # a1 = 00001960
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFA4
    or      a3, s1, $zero              # a3 = FFFFFFBC
    swc1    $f4, 0x0014($sp)           
    lh      t3, 0x020E(s0)             # 0000020E
    lh      t2, 0x00B6(s0)             # 000000B6
    sw      a1, 0x0060($sp)            
    addu    t4, t2, t3                 
    jal     func_809671D8              
    sw      t4, 0x001C($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    lwc1    $f8, 0x0084($sp)           
    lwc1    $f6, 0x006C($sp)           
    lwc1    $f4, 0x0088($sp)           
    mul.s   $f10, $f8, $f0             
    lwc1    $f18, 0x0070($sp)          
    mul.s   $f8, $f4, $f0              
    add.s   $f16, $f6, $f10            
    lwc1    $f10, 0x0074($sp)          
    add.s   $f6, $f18, $f8             
    swc1    $f16, 0x006C($sp)          
    lwc1    $f16, 0x008C($sp)          
    swc1    $f6, 0x0070($sp)           
    mul.s   $f4, $f16, $f0             
    add.s   $f18, $f10, $f4            
    swc1    $f18, 0x0074($sp)          
    lh      a0, 0x018C(s0)             # 0000018C
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f8, $f0, $f20             
    lh      t6, 0x00B2($sp)            
    addiu   t5, $sp, 0x0078            # t5 = FFFFFFB0
    sw      t5, 0x0010($sp)            
    sw      t6, 0x0018($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x0060($sp)            
    add.s   $f6, $f8, $f22             
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFA4
    or      a3, s1, $zero              # a3 = FFFFFFBC
    swc1    $f6, 0x0014($sp)           
    lh      t8, 0x020E(s0)             # 0000020E
    lh      t7, 0x00B6(s0)             # 000000B6
    addu    t9, t7, t8                 
    jal     func_809671D8              
    sw      t9, 0x001C($sp)            
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f10                  # $f10 = 17.00
    lui     $at, %hi(var_8096AB40)     # $at = 80970000
    lwc1    $f28, %lo(var_8096AB40)($at) 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f26                  # $f26 = 100.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f24                  # $f24 = -10.00
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f10, 0x0094($sp)          
    swc1    $f16, 0x0090($sp)          
    swc1    $f4, 0x0098($sp)           
lbl_80968298:
    jal     func_80026D64              
    mov.s   $f12, $f28                 
    mov.s   $f20, $f0                  
    jal     func_80026D64              
    mov.s   $f12, $f28                 
    mov.s   $f22, $f0                  
    mov.s   $f12, $f20                 
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    mov.s   $f12, $f22                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFC8
    jal     func_800AB958              
    or      a1, s1, $zero              # a1 = FFFFFFBC
    lwc1    $f18, 0x0084($sp)          
    lwc1    $f16, 0x0088($sp)          
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f8, $f18, $f24            
    lwc1    $f18, 0x008C($sp)          
    mtc1    $at, $f12                  # $f12 = 2.00
    mul.s   $f10, $f16, $f24           
    div.s   $f6, $f8, $f26             
    mul.s   $f8, $f18, $f24            
    div.s   $f4, $f10, $f26            
    swc1    $f6, 0x0078($sp)           
    div.s   $f6, $f8, $f26             
    swc1    $f4, 0x007C($sp)           
    jal     func_80026D64              
    swc1    $f6, 0x0080($sp)           
    trunc.w.s $f16, $f0                  
    addiu   t0, $sp, 0x0078            # t0 = FFFFFFB0
    sw      t0, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    mfc1    t2, $f16                   
    lw      a1, 0x0060($sp)            
    lw      a2, 0x0064($sp)            
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    addiu   t5, t4, 0x0008             # t5 = 00000008
    mtc1    t5, $f10                   # $f10 = 0.00
    or      a3, s1, $zero              # a3 = FFFFFFBC
    cvt.s.w $f4, $f10                  
    jal     func_809672EC              
    swc1    $f4, 0x0014($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0006            
    bne     $at, $zero, lbl_80968298   
    nop
lbl_80968364:
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000


func_80968390:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB7A4             # a1 = 0600B7A4
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_809683F0)     # t6 = 80970000
    addiu   t6, t6, %lo(func_809683F0) # t6 = 809683F0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xB7A4             # a0 = 0600B7A4
    jal     func_8008A194              
    sw      t6, 0x0180(t7)             # 00000180
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t8, 0x0018($sp)            
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x01E0(t8)            # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809683F0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40A0                 # a1 = 40A00000
    beq     v0, $zero, lbl_80968438    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D1          # a1 = 000038D1
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D8          # a1 = 000038D8
lbl_80968438:
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s0)             # 000001E0
    beq     v0, $zero, lbl_80968454    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80967CA0              
    lw      a1, 0x002C($sp)            
lbl_80968454:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80968468:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA31C             # a1 = 0600A31C
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xA31C             # a0 = 0600A31C
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_809684C4)     # t6 = 80970000
    cvt.s.w $f6, $f4                   
    addiu   t6, t6, %lo(func_809684C4) # t6 = 809684C4
    sw      t6, 0x0180(a2)             # 00000180
    sh      $zero, 0x0188(a2)          # 00000188
    swc1    $f6, 0x01E0(a2)            # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809684C4:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s2, 0x0048($sp)            
    sw      s0, 0x0040($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s4, 0x0050($sp)            
    sw      s3, 0x004C($sp)            
    sw      s1, 0x0044($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lw      t7, 0x0004(s2)             # 00000004
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lw      s1, 0x0118(s2)             # 00000118
    ori     t8, t7, 0x0400             # t8 = 00000400
    sb      t6, 0x0184(s2)             # 00000184
    sw      t8, 0x0004(s2)             # 00000004
    addiu   a0, s2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0060($sp)            
    lh      v1, 0x0188(s2)             # 00000188
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0060($sp)            
    beq     v1, $zero, lbl_80968540    
    nop
    beql    v1, $at, lbl_809686B8      
    lh      t3, 0x018C(s2)             # 0000018C
    beq     $zero, $zero, lbl_809686F0 
    lw      $ra, 0x0054($sp)           
lbl_80968540:
    jal     func_8008D6A8              
    lui     a1, 0x4150                 # a1 = 41500000
    beq     v0, $zero, lbl_80968558    
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D3          # a1 = 000038D3
lbl_80968558:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f4, 0x01E0(s2)            # 000001E0
    lw      a0, 0x0060($sp)            
    sub.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8008D6A8              
    nop
    beq     v0, $zero, lbl_8096867C    
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f26                  # $f26 = 300.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f22                  # $f22 = 8.00
    lui     $at, 0x4120                # $at = 41200000
    addiu   s4, s1, 0x1960             # s4 = 00001960
    lui     s3, %hi(var_8096AA24)      # s3 = 80970000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s3, s3, %lo(var_8096AA24)  # s3 = 8096AA24
    addiu   s1, $sp, 0x0078            # s1 = FFFFFFE0
    lw      t0, 0x0000(s3)             # 8096AA24
lbl_809685B4:
    lw      t9, 0x0004(s3)             # 8096AA28
    mov.s   $f12, $f22                 
    sw      t0, 0x0000(s1)             # FFFFFFE0
    lw      t0, 0x0008(s3)             # 8096AA2C
    sw      t9, 0x0004(s1)             # FFFFFFE4
    jal     func_80026D90              
    sw      t0, 0x0008(s1)             # FFFFFFE8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_80026D64              
    swc1    $f0, 0x0084($sp)           
    swc1    $f0, 0x0088($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    swc1    $f0, 0x008C($sp)           
    swc1    $f24, 0x007C($sp)          
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f10, 0x0038(s2)           # 00000038
    mov.s   $f12, $f20                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x006C($sp)          
    lwc1    $f18, 0x003C(s2)           # 0000003C
    mov.s   $f12, $f20                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lwc1    $f6, 0x0040(s2)            # 00000040
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x0074($sp)           
    add.s   $f10, $f0, $f26            
    or      a0, s4, $zero              # a0 = 00001960
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFD4
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFEC
    swc1    $f10, 0x0010($sp)          
    jal     func_80967498              
    or      a3, s1, $zero              # a3 = FFFFFFE0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0019            
    bnel    $at, $zero, lbl_809685B4   
    lw      t0, 0x0000(s3)             # 8096AA24
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3927          # a1 = 00003927
lbl_8096867C:
    lw      a0, 0x0060($sp)            
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s2)             # 000001E0
    beq     v0, $zero, lbl_809686EC    
    lw      a0, 0x0060($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA86C             # a1 = 0600A86C
    jal     func_8008D328              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    sh      t1, 0x0188(s2)             # 00000188
    beq     $zero, $zero, lbl_809686EC 
    sh      t2, 0x01AC(s2)             # 000001AC
    lh      t3, 0x018C(s2)             # 0000018C
lbl_809686B8:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, s2, $zero              # a0 = 00000000
    andi    t4, t3, 0x000F             # t4 = 00000000
    bnel    t4, $at, lbl_809686D8      
    lh      t5, 0x01AC(s2)             # 000001AC
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D4          # a1 = 000038D4
    lh      t5, 0x01AC(s2)             # 000001AC
lbl_809686D8:
    or      a0, s2, $zero              # a0 = 00000000
    bnel    t5, $zero, lbl_809686F0    
    lw      $ra, 0x0054($sp)           
    jal     func_80967CA0              
    or      a1, s0, $zero              # a1 = 00000001
lbl_809686EC:
    lw      $ra, 0x0054($sp)           
lbl_809686F0:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_8096871C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7850             # a1 = 06007850
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x7850             # a0 = 06007850
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80968778)     # t6 = 80970000
    cvt.s.w $f6, $f4                   
    addiu   t6, t6, %lo(func_80968778) # t6 = 80968778
    sw      t6, 0x0180(a2)             # 00000180
    sh      $zero, 0x0188(a2)          # 00000188
    swc1    $f6, 0x01E0(a2)            # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80968778:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x0118(s0)             # 00000118
    addiu   s1, s0, 0x013C             # s1 = 0000013C
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008C9C0              
    sw      t6, 0x0024($sp)            
    lh      v1, 0x0188(s0)             # 00000188
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0184(s0)             # 00000184
    bne     v1, $zero, lbl_809687FC    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s0)             # 000001E0
    beq     v0, $zero, lbl_80968894    
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    jal     func_8008D1C4              
    addiu   a1, a1, 0x89DC             # a1 = 060089DC
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x89DC             # a0 = 060089DC
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0188(s0)             # 00000188
    cvt.s.w $f6, $f4                   
    beq     $zero, $zero, lbl_80968894 
    swc1    $f6, 0x01E0(s0)            # 000001E0
lbl_809687FC:
    bne     v1, $at, lbl_80968860      
    addiu   a0, s0, 0x0028             # a0 = 00000028
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     v0, $zero, lbl_80968820    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D6          # a1 = 000038D6
lbl_80968820:
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x41A0                 # a1 = 41A00000
    beq     v0, $zero, lbl_80968840    
    or      a0, s1, $zero              # a0 = 0000013C
    lw      t0, 0x0024($sp)            
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sh      t9, 0x0240(t0)             # 00000240
lbl_80968840:
    jal     func_8008D6A8              
    lw      a1, 0x01E0(s0)             # 000001E0
    beq     v0, $zero, lbl_80968894    
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    sh      t1, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_80968894 
    sh      t2, 0x01AC(s0)             # 000001AC
lbl_80968860:
    lui     a1, 0xC2C8                 # a1 = C2C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lh      t3, 0x01AC(s0)             # 000001AC
    lui     t4, %hi(func_8096912C)     # t4 = 80970000
    addiu   t4, t4, %lo(func_8096912C) # t4 = 8096912C
    bnel    t3, $zero, lbl_80968898    
    lw      $ra, 0x001C($sp)           
    sw      t4, 0x0180(s0)             # 00000180
    lw      t6, 0x0024($sp)            
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x02C8(t6)             # 000002C8
lbl_80968894:
    lw      $ra, 0x001C($sp)           
lbl_80968898:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809688A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x89DC             # a0 = 060089DC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f6                   # $f6 = -3.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   a1, a1, 0x89DC             # a1 = 060089DC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x01E0(s0)            # 000001E0
    sw      t6, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lw      t8, 0x0004(s0)             # 00000004
    lui     t7, %hi(func_80968AA8)     # t7 = 80970000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t7, t7, %lo(func_80968AA8) # t7 = 80968AA8
    and     t9, t8, $at                
    sw      t7, 0x0180(s0)             # 00000180
    sw      t9, 0x0004(s0)             # 00000004
    sh      $zero, 0x1380(s0)          # 00001380
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80968938:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x1382(s0)             # 00001382
    beql    t6, $zero, lbl_80968A98    
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x13B4(s0)            # 000013B4
    lwc1    $f6, 0x13FC(s0)            # 000013FC
    addiu   a0, s0, 0x1384             # a0 = 00001384
    lw      a1, 0x13CC(s0)             # 000013CC
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x13D8(s0)             # 000013D8
    sw      a0, 0x0024($sp)            
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x13B8(s0)           # 000013B8
    lwc1    $f16, 0x13FC(s0)           # 000013FC
    addiu   a0, s0, 0x1388             # a0 = 00001388
    lw      a1, 0x13D0(s0)             # 000013D0
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x13DC(s0)             # 000013DC
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x13BC(s0)            # 000013BC
    lwc1    $f6, 0x13FC(s0)            # 000013FC
    addiu   a0, s0, 0x138C             # a0 = 0000138C
    lw      a1, 0x13D4(s0)             # 000013D4
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x13E0(s0)             # 000013E0
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x13C0(s0)           # 000013C0
    lwc1    $f16, 0x13FC(s0)           # 000013FC
    addiu   a0, s0, 0x1390             # a0 = 00001390
    lw      a1, 0x13E4(s0)             # 000013E4
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x13F0(s0)             # 000013F0
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x13C4(s0)            # 000013C4
    lwc1    $f6, 0x13FC(s0)            # 000013FC
    addiu   a0, s0, 0x1394             # a0 = 00001394
    lw      a1, 0x13E8(s0)             # 000013E8
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x13F4(s0)             # 000013F4
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x13C8(s0)           # 000013C8
    lwc1    $f16, 0x13FC(s0)           # 000013FC
    addiu   a0, s0, 0x1398             # a0 = 00001398
    lw      a1, 0x13EC(s0)             # 000013EC
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x13F8(s0)             # 000013F8
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s0, 0x13FC             # a0 = 000013FC
    lw      a3, 0x1400(s0)             # 00001400
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    nop
    lwc1    $f4, 0x1394(s0)            # 00001394
    lwc1    $f6, 0x1404(s0)            # 00001404
    lh      a1, 0x1382(s0)             # 00001382
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x1394(s0)            # 00001394
    lw      a3, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8009D328              
    lw      a0, 0x002C($sp)            
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x1404             # a0 = 00001404
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x001C($sp)           
lbl_80968A98:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80968AA8:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0084($sp)            
    lw      t6, 0x0118(s0)             # 00000118
    lw      a0, 0x0084($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D2F0              
    sw      t6, 0x0060($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      v0, 0x005C($sp)            
    jal     func_8008C9C0              
    sw      a0, 0x0044($sp)            
    lhu     t7, 0x1380(s0)             # 00001380
    sltiu   $at, t7, 0x0006            
    beq     $at, $zero, lbl_8096910C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_8096AB44)     # $at = 80970000
    addu    $at, $at, t7               
    lw      t7, %lo(var_8096AB44)($at) 
    jr      t7                         
    nop
var_80968B04:
    lw      a0, 0x0084($sp)            
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x1380(s0)             # 00001380
    jal     func_80052328              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x0084($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8009D0F0              
    lw      a0, 0x0084($sp)            
    sh      v0, 0x1382(s0)             # 00001382
    lw      a0, 0x0084($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0084($sp)            
    lh      a1, 0x1382(s0)             # 00001382
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      v1, 0x005C($sp)            
    lui     $at, %hi(var_8096AB5C)     # $at = 80970000
    lwc1    $f0, %lo(var_8096AB5C)($at) 
    lw      t0, 0x005C(v1)             # 0000005C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    sw      t0, 0x1384(s0)             # 00001384
    lw      t9, 0x0060(v1)             # 00000060
    lui     $at, %hi(var_8096AB60)     # $at = 80970000
    sw      t9, 0x1388(s0)             # 00001388
    lw      t0, 0x0064(v1)             # 00000064
    sw      t0, 0x138C(s0)             # 0000138C
    lw      t2, 0x0050(v1)             # 00000050
    sw      t2, 0x1390(s0)             # 00001390
    lw      t1, 0x0054(v1)             # 00000054
    sw      t1, 0x1394(s0)             # 00001394
    lw      t2, 0x0058(v1)             # 00000058
    swc1    $f2, 0x13B4(s0)            # 000013B4
    swc1    $f2, 0x13B8(s0)            # 000013B8
    swc1    $f2, 0x13BC(s0)            # 000013BC
    swc1    $f2, 0x13C0(s0)            # 000013C0
    swc1    $f2, 0x13C4(s0)            # 000013C4
    swc1    $f2, 0x13C8(s0)            # 000013C8
    sw      t2, 0x1398(s0)             # 00001398
    lwc1    $f4, %lo(var_8096AB60)($at) 
    sh      $zero, 0x01AC(s0)          # 000001AC
    sh      $zero, 0x0198(s0)          # 00000198
    swc1    $f0, 0x13D8(s0)            # 000013D8
    swc1    $f0, 0x13DC(s0)            # 000013DC
    swc1    $f0, 0x13E0(s0)            # 000013E0
    swc1    $f0, 0x13F0(s0)            # 000013F0
    swc1    $f0, 0x13F4(s0)            # 000013F4
    swc1    $f0, 0x13F8(s0)            # 000013F8
    swc1    $f4, 0x1400(s0)            # 00001400
var_80968BDC:
    lh      t3, 0x0198(s0)             # 00000198
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0198(s0)             # 00000198
    lh      v0, 0x0198(s0)             # 00000198
    slti    $at, v0, 0x000F            
    beq     $at, $zero, lbl_80968C08   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80968C30 
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80968C08:
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_80968C20   
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80968C30 
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80968C20:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80968C30:
    beq     v0, $at, lbl_80968C3C      
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v0, $at, lbl_80968C6C      
lbl_80968C3C:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v0, $at, lbl_80968C58      
    sh      t5, 0x0194(s0)             # 00000194
    addiu   a0, $zero, 0x38D9          # a0 = 000038D9
    jal     func_800C9884              
    swc1    $f0, 0x007C($sp)           
    lwc1    $f0, 0x007C($sp)           
lbl_80968C58:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38D6          # a1 = 000038D6
    jal     func_80022FD0              
    swc1    $f0, 0x007C($sp)           
    lwc1    $f0, 0x007C($sp)           
lbl_80968C6C:
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0158             # a0 = 00000158
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t6, 0x008A(s0)             # 0000008A
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_8096AB64)     # $at = 80970000
    lwc1    $f18, %lo(var_8096AB64)($at) 
    cvt.s.w $f8, $f6                   
    lui     $at, %hi(var_8096AB68)     # $at = 80970000
    lwc1    $f6, %lo(var_8096AB68)($at) 
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10            
    mul.s   $f4, $f16, $f18            
    jal     func_800AAB94              
    add.s   $f12, $f4, $f6             
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFE4
    swc1    $f0, 0x0070($sp)           
    swc1    $f0, 0x0074($sp)           
    jal     func_800AB958              
    swc1    $f8, 0x0078($sp)           
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0064($sp)          
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f4                   # $f4 = 140.00
    add.s   $f18, $f10, $f16           
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    lwc1    $f0, 0x003C(s0)            # 0000003C
    swc1    $f18, 0x13CC(s0)           # 000013CC
    swc1    $f4, 0x13D0(s0)            # 000013D0
    lwc1    $f8, 0x006C($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    c.le.s  $f16, $f0                  
    lui     $at, 0x41A0                # $at = 41A00000
    add.s   $f10, $f6, $f8             
    lui     a1, 0x4170                 # a1 = 41700000
    bc1f    lbl_80968D38               
    swc1    $f10, 0x13D4(s0)           # 000013D4
    lwc1    $f18, 0x0038(s0)           # 00000038
    lwc1    $f4, 0x0040(s0)            # 00000040
    swc1    $f0, 0x13E8(s0)            # 000013E8
    swc1    $f18, 0x13E4(s0)           # 000013E4
    swc1    $f4, 0x13EC(s0)            # 000013EC
lbl_80968D38:
    lh      t7, 0x01AC(s0)             # 000001AC
    bne     t7, $zero, lbl_80968D8C    
    nop
    mtc1    $at, $f2                   # $f2 = 20.00
    lw      a0, 0x0044($sp)            
    mfc1    a1, $f2                    
    jal     func_8008D6A8              
    nop
    beq     v0, $zero, lbl_80968D68    
    lw      t9, 0x0060($sp)            
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    sh      t8, 0x0240(t9)             # 00000240
lbl_80968D68:
    lh      t0, 0x0198(s0)             # 00000198
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    slti    $at, t0, 0x0064            
    bnel    $at, $zero, lbl_80969110   
    or      a0, s0, $zero              # a0 = 00000000
    sh      t1, 0x1380(s0)             # 00001380
    beq     $zero, $zero, lbl_8096910C 
    sh      t2, 0x01AC(s0)             # 000001AC
lbl_80968D8C:
    jal     func_8008D6A8              
    lw      a0, 0x0044($sp)            
    beq     v0, $zero, lbl_8096910C    
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x89DC             # a1 = 060089DC
    jal     func_8008D21C              
    lui     a2, 0xC120                 # a2 = C1200000
    beq     $zero, $zero, lbl_80969110 
    or      a0, s0, $zero              # a0 = 00000000
var_80968DB4:
    lh      t3, 0x01AC(s0)             # 000001AC
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0xC2C8                 # a1 = C2C80000
    bne     t3, $zero, lbl_80968DF0    
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      $zero, 0x0134(s0)          # 00000134
    sh      t4, 0x1380(s0)             # 00001380
    lw      t6, 0x0060($sp)            
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sb      t5, 0x02C8(t6)             # 000002C8
    sh      $zero, 0x0188(s0)          # 00000188
    beq     $zero, $zero, lbl_8096910C 
    swc1    $f6, 0x13FC(s0)            # 000013FC
lbl_80968DF0:
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    beq     $zero, $zero, lbl_80969110 
    or      a0, s0, $zero              # a0 = 00000000
var_80968E00:
    lw      v0, 0x0060($sp)            
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f0                   # $f0 = 80.00
    lwc1    $f8, 0x0028(v0)            # 00000028
    addiu   a0, s0, 0x13D0             # a0 = 000013D0
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80968E80               
    lw      t1, 0x0024(v0)             # 00000024
    lh      t7, 0x0030(v0)             # 00000030
    slti    $at, t7, 0x3001            
    bnel    $at, $zero, lbl_80968F10   
    lw      v0, 0x0060($sp)            
    lw      t9, 0x0024(v0)             # 00000024
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    sw      t9, 0x13E4(s0)             # 000013E4
    lw      t8, 0x0028(v0)             # 00000028
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    sw      t8, 0x13E8(s0)             # 000013E8
    lw      t9, 0x002C(v0)             # 0000002C
    swc1    $f0, 0x13E8(s0)            # 000013E8
    sw      t9, 0x13EC(s0)             # 000013EC
    lwc1    $f10, 0x0024(v0)           # 00000024
    swc1    $f16, 0x13D0(s0)           # 000013D0
    swc1    $f10, 0x13CC(s0)           # 000013CC
    lwc1    $f18, 0x002C(v0)           # 0000002C
    add.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_80968F0C 
    swc1    $f6, 0x13D4(s0)            # 000013D4
    lw      t1, 0x0024(v0)             # 00000024
lbl_80968E80:
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     a1, 0x4348                 # a1 = 43480000
    sw      t1, 0x13E4(s0)             # 000013E4
    lw      t0, 0x0028(v0)             # 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    sw      t0, 0x13E8(s0)             # 000013E8
    lw      t1, 0x002C(v0)             # 0000002C
    swc1    $f8, 0x13CC(s0)            # 000013CC
    jal     func_80064280              
    sw      t1, 0x13EC(s0)             # 000013EC
    lw      t2, 0x0060($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f10, 0x002C(t2)           # 0000002C
    addiu   a0, s0, 0x13D4             # a0 = 000013D4
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f18, $f10, $f16           
    lui     a3, 0x4040                 # a3 = 40400000
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lh      v0, 0x0188(s0)             # 00000188
    bne     v0, $zero, lbl_80968F0C    
    addiu   t3, v0, 0x0001             # t3 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t3, 0x0188(s0)             # 00000188
    lui     $at, %hi(var_8096AB6C)     # $at = 80970000
    swc1    $f4, 0x13FC(s0)            # 000013FC
    lwc1    $f6, %lo(var_8096AB6C)($at) 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f6, 0x1400(s0)            # 00001400
    lw      a1, 0x0060($sp)            
    jal     func_800218EC              
    lw      a0, 0x0084($sp)            
lbl_80968F0C:
    lw      v0, 0x0060($sp)            
lbl_80968F10:
    addiu   $at, $zero, 0x00CA         # $at = 000000CA
    lh      t4, 0x0212(v0)             # 00000212
    bnel    t4, $at, lbl_80969110      
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x0238(v0)             # 00000238
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    bnel    t5, $at, lbl_80969110      
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t6, 0x1380(s0)             # 00001380
    lui     $at, %hi(var_8096AB70)     # $at = 80970000
    swc1    $f8, 0x13FC(s0)            # 000013FC
    lwc1    $f10, %lo(var_8096AB70)($at) 
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    lui     $at, 0x4396                # $at = 43960000
    swc1    $f10, 0x1400(s0)           # 00001400
    swc1    $f16, 0x13D0(s0)           # 000013D0
    lwc1    $f18, 0x002C(v0)           # 0000002C
    mtc1    $at, $f4                   # $f4 = 300.00
    nop
    add.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_8096910C 
    swc1    $f6, 0x13D4(s0)            # 000013D4
var_80968F74:
    addiu   a0, s0, 0x13E8             # a0 = 000013E8
    lui     a1, 0x42C8                 # a1 = 42C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x42C8                 # a3 = 42C80000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f8                   # $f8 = 140.00
    lui     a3, 0x3F93                 # a3 = 3F930000
    ori     a3, a3, 0x3333             # a3 = 3F933333
    addiu   a0, s0, 0x13D4             # a0 = 000013D4
    lui     a1, 0x435C                 # a1 = 435C0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x13E4(s0)            # 000013E4
    swc1    $f0, 0x13EC(s0)            # 000013EC
    swc1    $f0, 0x13CC(s0)            # 000013CC
    jal     func_80064280              
    swc1    $f8, 0x13D0(s0)            # 000013D0
    lw      v1, 0x0060($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    lh      v0, 0x0232(v1)             # 00000232
    beq     v0, $zero, lbl_80969028    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    mtc1    $at, $f2                   # $f2 = 20.00
    nop
    sh      t7, 0x0232(v1)             # 00000232
    lh      v0, 0x0232(v1)             # 00000232
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    mtc1    v0, $f10                   # $f10 = 0.00
    andi    t8, v0, 0x0001             # t8 = 00000000
    cvt.s.w $f16, $f10                 
    div.s   $f0, $f16, $f18            
    c.le.s  $f2, $f0                   
    nop
    bc1f    lbl_80969010               
    nop
    mov.s   $f0, $f2                   
lbl_80969010:
    beql    t8, $zero, lbl_80969024    
    neg.s   $f4, $f0                   
    beq     $zero, $zero, lbl_80969028 
    swc1    $f0, 0x1404(s0)            # 00001404
    neg.s   $f4, $f0                   
lbl_80969024:
    swc1    $f4, 0x1404(s0)            # 00001404
lbl_80969028:
    lh      t9, 0x0212(v1)             # 00000212
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
    lw      v1, 0x005C($sp)            
    bne     t9, $at, lbl_8096910C      
    addiu   v0, s0, 0x1384             # v0 = 00001384
    sh      t0, 0x1380(s0)             # 00001380
    lw      t2, 0x0000(v0)             # 00001384
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t2, 0x005C(v1)             # 0000005C
    lw      t1, 0x0004(v0)             # 00001388
    sw      t1, 0x0060(v1)             # 00000060
    lw      t2, 0x0008(v0)             # 0000138C
    sw      t2, 0x0064(v1)             # 00000064
    lw      t4, 0x0000(v0)             # 00001384
    sw      t4, 0x0074(v1)             # 00000074
    lw      t3, 0x0004(v0)             # 00001388
    sw      t3, 0x0078(v1)             # 00000078
    lw      t4, 0x0008(v0)             # 0000138C
    sw      t4, 0x007C(v1)             # 0000007C
    lw      t6, 0x1390(s0)             # 00001390
    sw      t6, 0x0050(v1)             # 00000050
    lw      t5, 0x1394(s0)             # 00001394
    sw      t5, 0x0054(v1)             # 00000054
    lw      t6, 0x1398(s0)             # 00001398
    sw      t6, 0x0058(v1)             # 00000058
    lh      a1, 0x1382(s0)             # 00001382
    jal     func_8009D718              
    lw      a0, 0x0084($sp)            
    lw      a0, 0x0084($sp)            
    sh      $zero, 0x1382(s0)          # 00001382
    jal     func_80052340              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x0084($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    lw      a2, 0x0084($sp)            
    mtc1    $at, $f6                   # $f6 = 100.00
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0028($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f0, 0x0010($sp)           
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0              
    swc1    $f6, 0x0014($sp)           
    lw      a0, 0x0084($sp)            
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a0                 
    jal     func_80020658              
    lb      a1, 0x1CBC(a1)             # 00011CBC
lbl_8096910C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80969110:
    jal     func_80968938              
    lw      a1, 0x0084($sp)            
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_8096912C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0118(a0)             # 00000118
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lbu     t6, 0x02C8(v0)             # 000002C8
    bnel    t6, $at, lbl_80969168      
    lw      $ra, 0x0014($sp)           
    sb      $zero, 0x02C8(v0)          # 000002C8
    jal     func_8096766C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x01AC(a0)             # 000001AC
    sh      $zero, 0x0198(a0)          # 00000198
    lw      $ra, 0x0014($sp)           
lbl_80969168:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80969174:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s5, 0x0038($sp)            
    sw      s3, 0x0030($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s4, 0x0034($sp)            
    sw      s2, 0x002C($sp)            
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    sdc1    $f20, 0x0018($sp)          
    lw      t6, 0x0118(s3)             # 00000118
    lui     t7, %hi(func_809683F0)     # t7 = 80970000
    addiu   t7, t7, %lo(func_809683F0) # t7 = 809683F0
    sw      t6, 0x009C($sp)            
    lw      t8, 0x0180(s3)             # 00000180
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0xFFFD          # s2 = FFFFFFFD
    bnel    t7, t8, lbl_80969210       
    lw      t3, 0x009C($sp)            
    lw      s1, 0x1C44(s5)             # 00001C44
    lw      t9, 0x1428(s3)             # 00001428
lbl_809691CC:
    sll     t0, s0,  6                 
    or      a0, s1, $zero              # a0 = 00000000
    addu    v0, t9, t0                 
    lbu     v1, 0x0015(v0)             # 00000015
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    andi    t1, v1, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_809691F4    
    and     t2, v1, s2                 
    jal     func_80022FD0              
    sb      t2, 0x0015(v0)             # 00000015
lbl_809691F4:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0009            
    bnel    $at, $zero, lbl_809691CC   
    lw      t9, 0x1428(s3)             # 00001428
    lw      t3, 0x009C($sp)            
lbl_80969210:
    addiu   s2, $zero, 0xFFFD          # s2 = FFFFFFFD
    lw      v0, 0x1428(s3)             # 00001428
    lbu     t4, 0x02C7(t3)             # 000002C7
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    bne     t4, $zero, lbl_80969238    
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sb      t5, 0x0014(v0)             # 00000014
    beq     $zero, $zero, lbl_80969240 
    sb      t6, 0x1420(s3)             # 00001420
lbl_80969238:
    sb      v1, 0x0014(v0)             # 00000014
    sb      v1, 0x1420(s3)             # 00001420
lbl_80969240:
    lw      v0, 0x1428(s3)             # 00001428
    lbu     v1, 0x0016(v0)             # 00000016
    andi    t7, v1, 0x0002             # t7 = 00000002
    beq     t7, $zero, lbl_809695EC    
    and     t8, v1, s2                 
    sb      t8, 0x0016(v0)             # 00000016
    lw      t0, 0x009C($sp)            
    lw      t9, 0x1428(s3)             # 00001428
    or      s2, $zero, $zero           # s2 = 00000000
    lbu     t1, 0x02C7(t0)             # 000002C7
    lw      s0, 0x0024(t9)             # 00000024
    bne     t1, $zero, lbl_809693F4    
    nop
    lw      t2, 0x0000(s0)             # 00000001
    lui     $at, 0x4000                # $at = 40000000
    ori     $at, $at, 0x0040           # $at = 40000040
    and     t3, t2, $at                
    beq     t3, $zero, lbl_809695EC    
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lbu     t4, 0x00AF(t0)             # 000000AF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t5, t4, 0xFFFE             # t5 = FFFFFFFE
    sb      t5, 0x00AF(t0)             # 000000AF
    lw      t6, 0x009C($sp)            
    lb      t7, 0x00AF(t6)             # 000000B8
    slti    $at, t7, 0x0003            
    beql    $at, $zero, lbl_809692BC   
    lw      t1, 0x009C($sp)            
    sb      t8, 0x00AF(t6)             # 000000B8
    lw      t1, 0x009C($sp)            
lbl_809692BC:
    or      a1, s5, $zero              # a1 = 00000000
    jal     func_80968468              
    sb      t9, 0x02C7(t1)             # 000002C7
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    sh      t2, 0x019A(s3)             # 0000019A
    sh      t3, 0x0196(s3)             # 00000196
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D2          # a1 = 000038D2
    lw      s4, 0x009C($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $sp, 0x0080            # s2 = FFFFFFD8
    addiu   s1, $sp, 0x008C            # s1 = FFFFFFE4
    addiu   s4, s4, 0x1960             # s4 = 00001960
lbl_80969300:
    lui     t4, %hi(var_8096AA30)      # t4 = 80970000
    addiu   t4, t4, %lo(var_8096AA30)  # t4 = 8096AA30
    lw      t0, 0x0000(t4)             # 8096AA30
    lui     t7, %hi(var_8096AA3C)      # t7 = 80970000
    addiu   t7, t7, %lo(var_8096AA3C)  # t7 = 8096AA3C
    sw      t0, 0x0000(s1)             # FFFFFFE4
    lw      t5, 0x0004(t4)             # 8096AA34
    mov.s   $f12, $f20                 
    sw      t5, 0x0004(s1)             # FFFFFFE8
    lw      t0, 0x0008(t4)             # 8096AA38
    sw      t0, 0x0008(s1)             # FFFFFFEC
    lw      t6, 0x0000(t7)             # 8096AA3C
    sw      t6, 0x0000(s2)             # FFFFFFD8
    lw      t8, 0x0004(t7)             # 8096AA40
    sw      t8, 0x0004(s2)             # FFFFFFDC
    lw      t6, 0x0008(t7)             # 8096AA44
    jal     func_80026D90              
    sw      t6, 0x0008(s2)             # FFFFFFE0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    swc1    $f0, 0x008C($sp)           
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    mov.s   $f12, $f20                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0090($sp)           
    swc1    $f0, 0x0094($sp)           
    lwc1    $f8, 0x0038(s3)            # 00000038
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f8, 0x0074($sp)           
    lwc1    $f10, 0x003C(s3)           # 0000003C
    swc1    $f10, 0x0078($sp)          
    lwc1    $f16, 0x0040(s3)           # 00000040
    jal     func_80026D64              
    swc1    $f16, 0x007C($sp)          
    trunc.w.s $f18, $f0                  
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00001960
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFCC
    mfc1    t1, $f18                   
    or      a3, s1, $zero              # a3 = FFFFFFE4
    sw      s2, 0x0010($sp)            
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    addiu   t4, t3, 0x000A             # t4 = 0000000A
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_80967100              
    swc1    $f6, 0x0014($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x001E            
    bne     $at, $zero, lbl_80969300   
    nop
    beq     $zero, $zero, lbl_809695F0 
    lw      $ra, 0x003C($sp)           
lbl_809693F4:
    jal     func_80051A34              
    lw      a0, 0x0000(s0)             # 00000001
    bne     v0, $zero, lbl_80969424    
    andi    s1, v0, 0x00FF             # s1 = 00000000
    lw      v0, 0x0000(s0)             # 00000001
    andi    t5, v0, 0x1000             # t5 = 00000000
    beq     t5, $zero, lbl_8096941C    
    nop
    beq     $zero, $zero, lbl_8096942C 
    addiu   s1, $zero, 0x0004          # s1 = 00000004
lbl_8096941C:
    beq     $zero, $zero, lbl_8096942C 
    addiu   s1, $zero, 0x0002          # s1 = 00000002
lbl_80969424:
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    lw      v0, 0x0000(s0)             # 00000001
lbl_8096942C:
    andi    t0, v0, 0x0080             # t0 = 00000000
    beq     t0, $zero, lbl_8096943C    
    lw      t7, 0x009C($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
lbl_8096943C:
    lbu     v1, 0x00AF(t7)             # 000000AF
    lw      t6, 0x009C($sp)            
    or      a0, s3, $zero              # a0 = 00000000
    sll     v0, v1, 24                 
    sra     v0, v0, 24                 
    slti    $at, v0, 0x0003            
    beql    $at, $zero, lbl_80969464   
    subu    t8, v1, s1                 
    beq     s2, $zero, lbl_80969470    
    subu    t8, v1, s1                 
lbl_80969464:
    sb      t8, 0x00AF(t6)             # 000000AF
    lw      t9, 0x009C($sp)            
    lb      v0, 0x00AF(t9)             # 000000AF
lbl_80969470:
    bgtz    v0, lbl_809694C0           
    lw      t1, 0x009C($sp)            
    sb      $zero, 0x00AF(t1)          # 000000AF
    jal     func_809688A8              
    or      a1, s5, $zero              # a1 = 00000000
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x7530          # t3 = 00007530
    lui     a0, 0x1001                 # a0 = 10010000
    sh      t2, 0x0196(s3)             # 00000196
    sh      t3, 0x019A(s3)             # 0000019A
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D9          # a1 = 000038D9
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80025B4C              
    or      a1, s3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809694EC 
    nop
lbl_809694C0:
    beq     s1, $zero, lbl_809694EC    
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8096871C              
    or      a1, s5, $zero              # a1 = 00000000
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sh      t4, 0x0196(s3)             # 00000196
    sh      t5, 0x019A(s3)             # 0000019A
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38D5          # a1 = 000038D5
lbl_809694EC:
    beq     s1, $zero, lbl_809695EC    
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s4, 0x009C($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f20                  # $f20 = 6.00
    addiu   s2, $sp, 0x0058            # s2 = FFFFFFB0
    addiu   s1, $sp, 0x0064            # s1 = FFFFFFBC
    addiu   s4, s4, 0x1960             # s4 = 000032C0
lbl_8096950C:
    lui     t0, %hi(var_8096AA48)      # t0 = 80970000
    addiu   t0, t0, %lo(var_8096AA48)  # t0 = 8096AA48
    lw      t8, 0x0000(t0)             # 8096AA48
    lui     t6, %hi(var_8096AA54)      # t6 = 80970000
    addiu   t6, t6, %lo(var_8096AA54)  # t6 = 8096AA54
    sw      t8, 0x0000(s1)             # FFFFFFBC
    lw      t7, 0x0004(t0)             # 8096AA4C
    mov.s   $f12, $f20                 
    sw      t7, 0x0004(s1)             # FFFFFFC0
    lw      t8, 0x0008(t0)             # 8096AA50
    sw      t8, 0x0008(s1)             # FFFFFFC4
    lw      t1, 0x0000(t6)             # 8096AA54
    sw      t1, 0x0000(s2)             # FFFFFFB0
    lw      t9, 0x0004(t6)             # 8096AA58
    sw      t9, 0x0004(s2)             # FFFFFFB4
    lw      t1, 0x0008(t6)             # 8096AA5C
    jal     func_80026D90              
    sw      t1, 0x0008(s2)             # FFFFFFB8
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_80026D64              
    swc1    $f0, 0x0064($sp)           
    add.s   $f8, $f0, $f20             
    mov.s   $f12, $f20                 
    jal     func_80026D90              
    swc1    $f8, 0x0068($sp)           
    swc1    $f0, 0x006C($sp)           
    lwc1    $f10, 0x0038(s3)           # 00000038
    mov.s   $f12, $f20                 
    swc1    $f10, 0x004C($sp)          
    lwc1    $f16, 0x003C(s3)           # 0000003C
    swc1    $f16, 0x0050($sp)          
    lwc1    $f18, 0x0040(s3)           # 00000040
    jal     func_80026D64              
    swc1    $f18, 0x0054($sp)          
    trunc.w.s $f4, $f0                   
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 000032C0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFA4
    mfc1    t3, $f4                    
    or      a3, s1, $zero              # a3 = FFFFFFBC
    sw      s2, 0x0010($sp)            
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    addiu   t0, t5, 0x000A             # t0 = 0000000A
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    jal     func_809673C0              
    swc1    $f8, 0x0014($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x001E            
    bne     $at, $zero, lbl_8096950C   
    nop
lbl_809695EC:
    lw      $ra, 0x003C($sp)           
lbl_809695F0:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    lw      s4, 0x0034($sp)            
    lw      s5, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80969614:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lui     t7, %hi(var_8096AA60)      # t7 = 80970000
    addiu   t7, t7, %lo(var_8096AA60)  # t7 = 8096AA60
    lw      t9, 0x0000(t7)             # 8096AA60
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 8096AA64
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lhu     t9, 0x0008(t7)             # 8096AA68
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sh      t9, 0x0008(t6)             # FFFFFFF4
    lh      t0, 0x018C(s0)             # 0000018C
    andi    t1, t0, 0x0007             # t1 = 00000000
    bnel    t1, $zero, lbl_80969688    
    lw      v0, 0x0180(s0)             # 00000180
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8096AB74)     # $at = 80970000
    lwc1    $f4, %lo(var_8096AB74)($at) 
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80969688               
    lw      v0, 0x0180(s0)             # 00000180
    sh      t2, 0x0192(s0)             # 00000192
    lw      v0, 0x0180(s0)             # 00000180
lbl_80969688:
    lui     t3, %hi(func_809684C4)     # t3 = 80970000
    addiu   t3, t3, %lo(func_809684C4) # t3 = 809684C4
    beq     t3, v0, lbl_809696A8       
    addiu   a0, s0, 0x137C             # a0 = 0000137C
    lui     t4, %hi(func_80968778)     # t4 = 80970000
    addiu   t4, t4, %lo(func_80968778) # t4 = 80968778
    bnel    t4, v0, lbl_809696D8       
    lh      v0, 0x0192(s0)             # 00000192
lbl_809696A8:
    lh      t5, 0x018C(s0)             # 0000018C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    andi    t6, t5, 0x0010             # t6 = 00000000
    beql    t6, $zero, lbl_809696CC    
    sb      t8, 0x0213(s0)             # 00000213
    beq     $zero, $zero, lbl_809696CC 
    sb      t7, 0x0213(s0)             # 00000213
    sb      t8, 0x0213(s0)             # 00000213
lbl_809696CC:
    beq     $zero, $zero, lbl_809696E8 
    lh      v0, 0x0192(s0)             # 00000192
    lh      v0, 0x0192(s0)             # 00000192
lbl_809696D8:
    sll     t9, v0,  1                 
    addu    t0, $sp, t9                
    lh      t0, 0x0024(t0)             # 00000024
    sb      t0, 0x0213(s0)             # 00000213
lbl_809696E8:
    beq     v0, $zero, lbl_809696F8    
    lui     a2, 0x3E99                 # a2 = 3E990000
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0192(s0)             # 00000192
lbl_809696F8:
    lh      t2, 0x0194(s0)             # 00000194
    lui     $at, %hi(var_8096AB78)     # $at = 80970000
    beql    t2, $zero, lbl_8096971C    
    lh      t3, 0x018C(s0)             # 0000018C
    lwc1    $f0, %lo(var_8096AB78)($at) 
    lui     $at, %hi(var_8096AB7C)     # $at = 80970000
    beq     $zero, $zero, lbl_8096974C 
    lwc1    $f2, %lo(var_8096AB7C)($at) 
    lh      t3, 0x018C(s0)             # 0000018C
lbl_8096971C:
    lui     $at, 0x447A                # $at = 447A0000
    andi    t4, t3, 0x0010             # t4 = 00000000
    beql    t4, $zero, lbl_8096973C    
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f0                   # $f0 = 1000.00
    beq     $zero, $zero, lbl_80969744 
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8096973C:
    nop
    lui     $at, 0x442F                # $at = 442F0000
lbl_80969744:
    mtc1    $at, $f2                   # $f2 = 700.00
    nop
lbl_8096974C:
    mfc1    a1, $f0                    
    mfc1    a3, $f2                    
    jal     func_80064280              
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lh      v0, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_8096976C    
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0194(s0)             # 00000194
lbl_8096976C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80969780:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t8, 0x018C(s0)             # 0000018C
    lw      t6, 0x0004(s0)             # 00000004
    lh      t0, 0x018A(s0)             # 0000018A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x018C(s0)             # 0000018C
    lw      t9, 0x0180(s0)             # 00000180
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    and     t7, t6, $at                
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      $zero, 0x0184(s0)          # 00000184
    sw      t7, 0x0004(s0)             # 00000004
    sh      t1, 0x018A(s0)             # 0000018A
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    or      a1, s1, $zero              # a1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t2, v0,  1                 
lbl_809697DC:
    addu    v1, s0, t2                 
    lh      a0, 0x01AC(v1)             # 000001AC
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    beq     a0, $zero, lbl_809697FC    
    sra     v0, v0, 16                 
    addiu   t3, a0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x01AC(v1)             # 000001AC
lbl_809697FC:
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_809697DC   
    sll     t2, v0,  1                 
    lh      v0, 0x0196(s0)             # 00000196
    beq     v0, $zero, lbl_80969818    
    addiu   t4, v0, 0xFFFF             # t4 = 00000000
    sh      t4, 0x0196(s0)             # 00000196
lbl_80969818:
    lh      v0, 0x019A(s0)             # 0000019A
    beq     v0, $zero, lbl_80969828    
    addiu   t5, v0, 0xFFFF             # t5 = 00000000
    sh      t5, 0x019A(s0)             # 0000019A
lbl_80969828:
    lh      t6, 0x1380(s0)             # 00001380
    bnel    t6, $zero, lbl_8096989C    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x019A(s0)             # 0000019A
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_80969850    
    lui     $at, 0x0001                # $at = 00010000
    jal     func_80969174              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_80969850:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x140C             # a2 = 0000140C
    sw      a2, 0x0024($sp)            
    sw      a1, 0x0028($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0024($sp)            
    lbu     t8, 0x0184(s0)             # 00000184
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)            
    bnel    t8, $zero, lbl_8096989C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_8096989C:
    jal     func_80969614              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f4, 0x01B8(s0)            # 000001B8
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    add.s   $f8, $f4, $f6              
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f16, 0x01C0(s0)           # 000001C0
    swc1    $f8, 0x01B8(s0)            # 000001B8
    lui     $at, 0x4000                # $at = 40000000
    add.s   $f4, $f16, $f18            
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f18                  # $f18 = 90.00
    lwc1    $f16, 0x003C(s0)           # 0000003C
    lwc1    $f6, 0x01C4(s0)            # 000001C4
    swc1    $f10, 0x01BC(s0)           # 000001BC
    c.lt.s  $f16, $f18                 
    swc1    $f4, 0x01C0(s0)            # 000001C0
    sub.s   $f10, $f6, $f8             
    bc1f    lbl_80969914               
    swc1    $f10, 0x01C4(s0)           # 000001C4
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t0, $at                
    beq     $zero, $zero, lbl_80969920 
    sw      t1, 0x0004(s0)             # 00000004
lbl_80969914:
    lw      t9, 0x0004(s0)             # 00000004
    ori     t2, t9, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
lbl_80969920:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80969934:
    sw      a3, 0x000C($sp)            
    lw      a3, 0x0014($sp)            
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bne     a1, $at, lbl_809699AC      
    lw      v0, 0x0118(a3)             # 00000118
    lw      v1, 0x0010($sp)            
    lh      t7, 0x020E(a3)             # 0000020E
    lh      t6, 0x0002(v1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      t2, 0x0004(v1)             # 00000004
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8                  
    cvt.s.w $f6, $f4                   
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    sub.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x0002(v1)             # 00000002
    lh      t3, 0x020C(a3)             # 0000020C
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x0004(v1)             # 00000004
lbl_809699AC:
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    beq     a1, t0, lbl_809699FC       
    lw      v1, 0x0010($sp)            
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    beq     a1, t1, lbl_809699CC       
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bnel    a1, $at, lbl_80969A2C      
    lbu     t4, 0x02C7(v0)             # 000002C7
lbl_809699CC:
    lh      t6, 0x0004(v1)             # 00000004
    lui     $at, %hi(var_8096AB80)     # $at = 80970000
    lwc1    $f6, %lo(var_8096AB80)($at) 
    lwc1    $f4, 0x137C(a3)            # 0000137C
    mtc1    t6, $f10                   # $f10 = 0.00
    mul.s   $f8, $f4, $f6              
    cvt.s.w $f16, $f10                 
    sub.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    beq     $zero, $zero, lbl_80969A28 
    sh      t8, 0x0004(v1)             # 00000004
lbl_809699FC:
    lh      t9, 0x0004(v1)             # 00000004
    lwc1    $f16, 0x137C(a3)           # 0000137C
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    add.s   $f8, $f10, $f16            
    trunc.w.s $f18, $f8                  
    mfc1    t3, $f18                   
    nop
    sh      t3, 0x0004(v1)             # 00000004
lbl_80969A28:
    lbu     t4, 0x02C7(v0)             # 000002C7
lbl_80969A2C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_80969A48      
    nop
    bne     a1, t1, lbl_80969A48       
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x4E38             # t5 = 06004E38
    sw      t5, 0x0000(a2)             # 00000000
lbl_80969A48:
    beql    a1, t0, lbl_80969A64       
    lw      v1, 0x0000(a0)             # 00000000
    beq     a1, t1, lbl_80969A60       
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bnel    a1, $at, lbl_80969ABC      
    lw      v1, 0x0000(a0)             # 00000000
lbl_80969A60:
    lw      v1, 0x0000(a0)             # 00000000
lbl_80969A64:
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, t0, 0x0008             # t6 = 00000028
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000024
    sw      t7, 0x0000(t0)             # 00000020
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t8, t0, 0x0008             # t8 = 00000028
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(t0)             # 00000020
    lwc1    $f4, 0x0264(v0)            # 00000264
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000038
    or      t7, t6, $at                # t7 = FFFFFF38
    sw      t7, 0x0004(t0)             # 00000024
    beq     $zero, $zero, lbl_80969B08 
    nop
    lw      v1, 0x0000(a0)             # 00000000
lbl_80969ABC:
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, t0, 0x0008             # t8 = 00000028
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000024
    sw      t9, 0x0000(t0)             # 00000020
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t2, t0, 0x0008             # t2 = 00000028
    sw      t2, 0x02C0(v1)             # 000002C0
    sw      t3, 0x0000(t0)             # 00000020
    lwc1    $f10, 0x0260(v0)           # 00000260
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000038
    or      t9, t8, $at                # t9 = FFFFFF38
    sw      t9, 0x0004(t0)             # 00000024
lbl_80969B08:
    blez    a1, lbl_80969B20           
    or      v0, $zero, $zero           # v0 = 00000000
    slti    $at, a1, 0x0010            
    beq     $at, $zero, lbl_80969B20   
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80969B20:
    jr      $ra                        
    nop


func_80969B28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    lw      t6, 0x001C($sp)            
    addiu   $at, $zero, 0x0023         # $at = 00000023
    lui     a0, %hi(var_8096AA6C)      # a0 = 80970000
    bne     t6, $at, lbl_80969BB0      
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_8096AA6C)  # a0 = 8096AA6C
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a1, 0x0028($sp)            
    lui     a0, %hi(var_8096AA78)      # a0 = 80970000
    addiu   a0, a0, %lo(var_8096AA78)  # a0 = 8096AA78
    jal     func_800AB958              
    addiu   a1, a1, 0x0200             # a1 = 00000200
    lw      a1, 0x0028($sp)            
    lui     a0, %hi(var_8096AA84)      # a0 = 80970000
    addiu   a0, a0, %lo(var_8096AA84)  # a0 = 8096AA84
    jal     func_800AB958              
    addiu   a1, a1, 0x1034             # a1 = 00001034
    lw      a1, 0x0028($sp)            
    lui     a0, %hi(var_8096AA90)      # a0 = 80970000
    addiu   a0, a0, %lo(var_8096AA90)  # a0 = 8096AA90
    jal     func_800AB958              
    addiu   a1, a1, 0x11D0             # a1 = 000011D0
    lw      a1, 0x0028($sp)            
    lui     a0, %hi(var_8096AA9C)      # a0 = 80970000
    addiu   a0, a0, %lo(var_8096AA9C)  # a0 = 8096AA9C
    jal     func_800AB958              
    addiu   a1, a1, 0x136C             # a1 = 0000136C
lbl_80969BB0:
    lw      a1, 0x0028($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80050CE4              
    addiu   a1, a1, 0x140C             # a1 = 0000140C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80969BD0:
    addiu   $sp, $sp, 0xFEB0           # $sp = FFFFFEB0
    sw      s6, 0x0060($sp)            
    or      s6, a2, $zero              # s6 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s7, 0x0064($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0150($sp)            
    sw      a1, 0x0154($sp)            
    sw      a3, 0x015C($sp)            
    lui     t7, %hi(var_8096AAA8)      # t7 = 80970000
    addiu   t7, t7, %lo(var_8096AAA8)  # t7 = 8096AAA8
    addiu   t0, t7, 0x0024             # t0 = 8096AACC
    addiu   t6, $sp, 0x0128            # t6 = FFFFFFD8
lbl_80969C34:
    lw      t9, 0x0000(t7)             # 8096AAA8
    addiu   t7, t7, 0x000C             # t7 = 8096AAB4
    addiu   t6, t6, 0x000C             # t6 = FFFFFFE4
    sw      t9, -0x000C(t6)            # FFFFFFD8
    lw      t8, -0x0008(t7)            # 8096AAAC
    sw      t8, -0x0008(t6)            # FFFFFFDC
    lw      t9, -0x0004(t7)            # 8096AAB0
    bne     t7, t0, lbl_80969C34       
    sw      t9, -0x0004(t6)            # FFFFFFE0
    lw      t9, 0x0000(t7)             # 8096AAB4
    lui     t2, %hi(var_8096AAD0)      # t2 = 80970000
    addiu   t2, t2, %lo(var_8096AAD0)  # t2 = 8096AAD0
    addiu   t5, t2, 0x0024             # t5 = 8096AAF4
    addiu   t1, $sp, 0x0100            # t1 = FFFFFFB0
    sw      t9, 0x0000(t6)             # FFFFFFE4
lbl_80969C70:
    lw      t4, 0x0000(t2)             # 8096AAD0
    addiu   t2, t2, 0x000C             # t2 = 8096AADC
    addiu   t1, t1, 0x000C             # t1 = FFFFFFBC
    sw      t4, -0x000C(t1)            # FFFFFFB0
    lw      t3, -0x0008(t2)            # 8096AAD4
    sw      t3, -0x0008(t1)            # FFFFFFB4
    lw      t4, -0x0004(t2)            # 8096AAD8
    bne     t2, t5, lbl_80969C70       
    sw      t4, -0x0004(t1)            # FFFFFFB8
    lw      t4, 0x0000(t2)             # 8096AADC
    lui     t7, %hi(var_8096AAF8)      # t7 = 80970000
    addiu   t7, t7, %lo(var_8096AAF8)  # t7 = 8096AAF8
    addiu   t9, t7, 0x0024             # t9 = 8096AB1C
    addiu   t0, $sp, 0x00D8            # t0 = FFFFFF88
    sw      t4, 0x0000(t1)             # FFFFFFBC
lbl_80969CAC:
    lw      t8, 0x0000(t7)             # 8096AAF8
    addiu   t7, t7, 0x000C             # t7 = 8096AB04
    addiu   t0, t0, 0x000C             # t0 = FFFFFF94
    sw      t8, -0x000C(t0)            # FFFFFF88
    lw      t6, -0x0008(t7)            # 8096AAFC
    sw      t6, -0x0008(t0)            # FFFFFF8C
    lw      t8, -0x0004(t7)            # 8096AB00
    bne     t7, t9, lbl_80969CAC       
    sw      t8, -0x0004(t0)            # FFFFFF90
    lw      t8, 0x0000(t7)             # 8096AB04
    sw      t8, 0x0000(t0)             # FFFFFF94
    lw      t5, 0x0154($sp)            
    jal     func_800AA6EC              
    lw      s7, 0x0000(t5)             # 8096AAF4
    lw      v1, 0x02C0(s7)             # 000002C0
    lui     t1, 0xE700                 # t1 = E7000000
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s7)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s8, $zero, 0x000C          # s8 = 0000000C
    lw      v0, 0x015C($sp)            
lbl_80969D10:
    bne     s5, $zero, lbl_80969D40    
    nop
    multu   s5, s8                     
    lwc1    $f4, 0x0000(s6)            # 00000000
    mflo    t3                         
    addu    s0, v0, t3                 
    swc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x0004(s6)            # 00000004
    swc1    $f6, 0x0004(s0)            # 00000004
    lwc1    $f8, 0x0008(s6)            # 00000008
    beq     $zero, $zero, lbl_80969D90 
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_80969D40:
    multu   s5, s8                     
    lw      t9, 0x0164($sp)            
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mflo    t4                         
    addu    s2, t4, t9                 
    jal     func_80064280              
    or      a0, s2, $zero              # a0 = 00000000
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   a0, s2, 0x0004             # a0 = 00000004
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   a0, s2, 0x0008             # a0 = 00000008
    jal     func_80064280              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      v0, 0x015C($sp)            
lbl_80969D90:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x000A            
    bne     $at, $zero, lbl_80969D10   
    nop
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f30                  # $f30 = -30.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f28                  # $f28 = 30.00
    addiu   s5, $zero, 0x0001          # s5 = 00000001
lbl_80969DBC:
    multu   s5, s8                     
    lw      v0, 0x015C($sp)            
    lw      t7, 0x0164($sp)            
    lui     $at, 0x4000                # $at = 40000000
    sll     s3, s5,  2                 
    addu    t0, $sp, s3                
    addu    t6, $sp, s3                
    mflo    s4                         
    addu    s0, s4, v0                 
    addu    s2, t7, s4                 
    lwc1    $f18, 0x0000(s2)           # 00000000
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f6, -0x000C(s0)           # FFFFFFF4
    lwc1    $f8, 0x0004(s0)            # 00000004
    add.s   $f4, $f10, $f18            
    lwc1    $f10, 0x0004(s2)           # 00000004
    lwc1    $f16, -0x0008(s0)          # FFFFFFF8
    add.s   $f18, $f8, $f10            
    lwc1    $f8, 0x0128(t0)            # 00000128
    lwc1    $f10, 0x0100(t6)           # 00000100
    sub.s   $f22, $f4, $f6             
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, %hi(var_8096AB84)     # $at = 80970000
    add.s   $f2, $f10, $f16            
    sub.s   $f6, $f18, $f4             
    add.s   $f0, $f8, $f6              
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80969E3C               
    lwc1    $f18, 0x0004(s6)           # 00000004
    mov.s   $f0, $f2                   
    lwc1    $f18, 0x0004(s6)           # 00000004
lbl_80969E3C:
    lwc1    $f4, %lo(var_8096AB84)($at) 
    lui     $at, 0x42DC                # $at = 42DC0000
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_80969E74               
    lwc1    $f8, 0x0008(s0)            # 00000008
    mtc1    $at, $f2                   # $f2 = 110.00
    nop
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80969E74               
    lwc1    $f8, 0x0008(s0)            # 00000008
    mov.s   $f0, $f2                   
    lwc1    $f8, 0x0008(s0)            # 00000008
lbl_80969E74:
    lwc1    $f6, 0x0008(s2)            # 00000008
    lwc1    $f18, -0x0004(s0)          # FFFFFFFC
    sub.s   $f24, $f0, $f16            
    mov.s   $f14, $f22                 
    add.s   $f10, $f8, $f6             
    sub.s   $f20, $f10, $f18           
    jal     func_800AA670              
    mov.s   $f12, $f20                 
    mul.s   $f4, $f22, $f22            
    mov.s   $f26, $f0                  
    mov.s   $f14, $f24                 
    mul.s   $f8, $f20, $f20            
    add.s   $f0, $f4, $f8              
    jal     func_800AA670              
    sqrt.s  $f12, $f0                  
    lw      t8, 0x0160($sp)            
    mtc1    $zero, $f14                # $f14 = 0.00
    neg.s   $f20, $f0                  
    addu    s1, t8, s4                 
    swc1    $f26, -0x0008(s1)          # FFFFFFF8
    swc1    $f20, -0x000C(s1)          # FFFFFFF4
    addu    t5, $sp, s3                
    lui     $at, 0x41C8                # $at = 41C80000
    swc1    $f14, 0x00AC($sp)          
    swc1    $f14, 0x00B0($sp)          
    lwc1    $f6, 0x00D8(t5)            # 000000D8
    mtc1    $at, $f10                  # $f10 = 25.00
    mov.s   $f12, $f26                 
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f18, $f6, $f10            
    jal     func_800AAB94              
    swc1    $f18, 0x00B4($sp)          
    mov.s   $f12, $f20                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF5C
    jal     func_800AB958              
    addiu   a1, $sp, 0x00A0            # a1 = FFFFFF50
    lwc1    $f4, -0x000C(s0)           # FFFFFFF4
    lwc1    $f8, 0x00A0($sp)           
    lwc1    $f22, 0x0000(s0)           # 00000000
    lwc1    $f10, -0x0008(s0)          # FFFFFFF8
    add.s   $f6, $f4, $f8              
    lwc1    $f24, 0x0004(s0)           # 00000004
    lwc1    $f8, -0x0004(s0)           # FFFFFFFC
    lui     $at, 0x42B0                # $at = 42B00000
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f18, 0x00A4($sp)          
    mtc1    $at, $f2                   # $f2 = 88.00
    lui     $at, 0x42C8                # $at = 42C80000
    add.s   $f4, $f10, $f18            
    lwc1    $f18, 0x0000(s0)           # 00000000
    mtc1    $at, $f12                  # $f12 = 100.00
    lwc1    $f20, 0x0008(s0)           # 00000008
    swc1    $f4, 0x0004(s0)            # 00000004
    sub.s   $f4, $f18, $f22            
    lwc1    $f6, 0x00A8($sp)           
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16                 
    add.s   $f10, $f8, $f6             
    mul.s   $f8, $f4, $f2              
    sra     s5, s5, 16                 
    slti    $at, s5, 0x000A            
    swc1    $f10, 0x0008(s0)           # 00000008
    div.s   $f6, $f8, $f12             
    swc1    $f6, 0x0000(s2)            # 00000000
    lwc1    $f10, 0x0004(s0)           # 00000004
    lwc1    $f0, 0x0000(s2)            # 00000000
    sub.s   $f18, $f10, $f24           
    c.lt.s  $f28, $f0                  
    mul.s   $f4, $f18, $f2             
    div.s   $f8, $f4, $f12             
    swc1    $f8, 0x0004(s2)            # 00000004
    lwc1    $f6, 0x0008(s0)            # 00000008
    sub.s   $f10, $f6, $f20            
    mul.s   $f18, $f10, $f2            
    div.s   $f4, $f18, $f12            
    bc1f    lbl_80969FB8               
    swc1    $f4, 0x0008(s2)            # 00000008
    swc1    $f28, 0x0000(s2)           # 00000000
    lwc1    $f0, 0x0000(s2)            # 00000000
lbl_80969FB8:
    c.lt.s  $f0, $f30                  
    nop
    bc1fl   lbl_80969FD0               
    lwc1    $f0, 0x0004(s2)            # 00000004
    swc1    $f30, 0x0000(s2)           # 00000000
    lwc1    $f0, 0x0004(s2)            # 00000004
lbl_80969FD0:
    c.lt.s  $f28, $f0                  
    nop
    bc1fl   lbl_80969FEC               
    c.lt.s  $f0, $f30                  
    swc1    $f28, 0x0004(s2)           # 00000004
    lwc1    $f0, 0x0004(s2)            # 00000004
    c.lt.s  $f0, $f30                  
lbl_80969FEC:
    nop
    bc1fl   lbl_8096A000               
    lwc1    $f0, 0x0008(s2)            # 00000008
    swc1    $f30, 0x0004(s2)           # 00000004
    lwc1    $f0, 0x0008(s2)            # 00000008
lbl_8096A000:
    c.lt.s  $f28, $f0                  
    nop
    bc1fl   lbl_8096A01C               
    c.lt.s  $f0, $f30                  
    swc1    $f28, 0x0008(s2)           # 00000008
    lwc1    $f0, 0x0008(s2)            # 00000008
    c.lt.s  $f0, $f30                  
lbl_8096A01C:
    nop
    bc1f    lbl_8096A02C               
    nop
    swc1    $f30, 0x0008(s2)           # 00000008
lbl_8096A02C:
    bne     $at, $zero, lbl_80969DBC   
    nop
    lui     $at, %hi(var_8096AB88)     # $at = 80970000
    lwc1    $f24, %lo(var_8096AB88)($at) 
    lui     $at, %hi(var_8096AB8C)     # $at = 80970000
    lwc1    $f22, %lo(var_8096AB8C)($at) 
    lui     $at, %hi(var_8096AB90)     # $at = 80970000
    lui     s2, 0x0600                 # s2 = 06000000
    addiu   s2, s2, 0x4BC8             # s2 = 06004BC8
    lwc1    $f20, %lo(var_8096AB90)($at) 
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s6, 0x0168($sp)            
lbl_8096A05C:
    multu   s5, s8                     
    lw      t2, 0x015C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    s4                         
    addu    s0, s4, t2                 
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f14, 0x0004(s0)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s0)             # 00000008
    lw      t1, 0x0160($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    s1, s4, t1                 
    jal     func_800AAB94              
    lwc1    $f12, 0x0004(s1)           # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    s5, $f6                    # $f6 = 0.00
    sll     s3, s5,  2                 
    addu    t3, $sp, s3                
    cvt.s.w $f10, $f6                  
    lwc1    $f0, 0x00D8(t3)            # 000000D8
    addu    t4, s6, s3                 
    lwc1    $f8, 0x0000(t4)            # 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f18, $f10, $f22           
    sub.s   $f4, $f20, $f18            
    mul.s   $f6, $f4, $f0              
    nop
    mul.s   $f12, $f8, $f6             
    nop
    mul.s   $f10, $f0, $f20            
    mov.s   $f14, $f12                 
    mfc1    a2, $f10                   
    jal     func_800AA8FC              
    nop
    mov.s   $f12, $f24                 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s1, 0x02D0(s7)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s7)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    lw      t0, 0x0154($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s7)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s7)             # 000002D0
    sw      s2, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0009            
    bne     $at, $zero, lbl_8096A05C   
    nop
    jal     func_800AA724              
    nop
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0150           # $sp = 00000000


func_8096A1A0:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s5, 0x0068($sp)            
    sw      s2, 0x005C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s4, 0x0064($sp)            
    sw      s3, 0x0060($sp)            
    sw      s1, 0x0058($sp)            
    sw      s0, 0x0054($sp)            
    sdc1    $f30, 0x0048($sp)          
    sdc1    $f28, 0x0040($sp)          
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lw      t6, 0x0118(s2)             # 00000118
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x45B2                # $at = 45B20000
    sw      t6, 0x0070($sp)            
    mtc1    $at, $f30                  # $f30 = 5696.00
    lui     $at, %hi(var_8096AB94)     # $at = 80970000
    lwc1    $f28, %lo(var_8096AB94)($at) 
    lui     $at, %hi(var_8096AB98)     # $at = 80970000
    lwc1    $f26, %lo(var_8096AB98)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f24                  # $f24 = 1.50
    lui     $at, %hi(var_8096AB9C)     # $at = 80970000
    lw      s4, 0x0000(s5)             # 00000000
    lwc1    $f22, %lo(var_8096AB9C)($at) 
    addiu   s3, $zero, 0x3200          # s3 = 00003200
lbl_8096A21C:
    multu   s0, s3                     
    lh      t8, 0x018C(s2)             # 0000018C
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mflo    t7                         
    mtc1    t7, $f4                    # $f4 = 0.00
    mul.s   $f10, $f8, $f26            
    cvt.s.w $f20, $f4                  
    add.s   $f16, $f10, $f20           
    trunc.w.s $f18, $f16                 
    mfc1    a0, $f18                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f4, $f0, $f22             
    sll     t0, s0,  2                 
    addu    s1, s2, t0                 
    add.s   $f6, $f4, $f24             
    swc1    $f6, 0x100C(s1)            # 0000100C
    lh      t1, 0x018C(s2)             # 0000018C
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f16, $f10, $f28           
    add.s   $f18, $f16, $f20           
    trunc.w.s $f4, $f18                  
    mfc1    a0, $f4                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f6, $f0, $f22             
    add.s   $f8, $f6, $f24             
    swc1    $f8, 0x11A8(s1)            # 000011A8
    lh      t3, 0x018C(s2)             # 0000018C
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f18, $f16, $f30           
    add.s   $f4, $f18, $f20            
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f8, $f0, $f22             
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000A            
    add.s   $f10, $f8, $f24            
    bne     $at, $zero, lbl_8096A21C   
    swc1    $f10, 0x1344(s1)           # 00001344
    jal     func_8007E2C0              
    lw      a0, 0x0000(s5)             # 00000000
    lui     s1, 0xFA00                 # s1 = FA000000
    lui     s3, 0xFF00                 # s3 = FF000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x4B48             # t7 = 06004B48
    addiu   t5, s0, 0x0008             # t5 = 00000009
    sw      t5, 0x02D0(s4)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(s0)             # 00000001
    sw      t7, 0x0004(s0)             # 00000005
    lw      v1, 0x02D0(s4)             # 000002D0
    cfc1    t0, $f31                   
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    sw      s1, 0x0000(v1)             # 00000000
    lw      t9, 0x0070($sp)            
    ctc1    t1, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    lwc1    $f16, 0x0274(t9)           # 00000274
    addiu   t8, s2, 0x100C             # t8 = 0000100C
    or      a0, s2, $zero              # a0 = 00000000
    cvt.w.s $f18, $f16                 
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, s2, 0x1034             # a2 = 00001034
    addiu   a3, s2, 0x0F1C             # a3 = 00000F1C
    cfc1    t1, $f31                   
    addiu   t6, s2, 0x0EA4             # t6 = 00000EA4
    addiu   t7, s2, 0x0F94             # t7 = 00000F94
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_8096A3CC    
    mfc1    t1, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_8096A3C0    
    nop
    mfc1    t1, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8096A3D8 
    or      t1, t1, $at                # t1 = 80000000
lbl_8096A3C0:
    beq     $zero, $zero, lbl_8096A3D8 
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f18                   
lbl_8096A3CC:
    nop
    bltz    t1, lbl_8096A3C0           
    nop
lbl_8096A3D8:
    andi    t2, t1, 0x00FF             # t2 = 000000FF
    sll     t3, t2, 16                 
    or      t4, t3, s3                 # t4 = FF000000
    ctc1    t0, $f31                   
    ori     t5, t4, 0x00FF             # t5 = FF0000FF
    sw      t5, 0x0004(v1)             # 00000004
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    jal     func_80969BD0              
    sw      t8, 0x0018($sp)            
    lw      v0, 0x02D0(s4)             # 000002D0
    cfc1    t1, $f31                   
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      s1, 0x0000(v0)             # 00000000
    lw      t0, 0x0070($sp)            
    ctc1    t2, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    lwc1    $f4, 0x0278(t0)            # 00000278
    addiu   t9, s2, 0x11A8             # t9 = 000011A8
    or      a0, s2, $zero              # a0 = 00000000
    cvt.w.s $f6, $f4                   
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, s2, 0x11D0             # a2 = 000011D0
    addiu   a3, s2, 0x10B8             # a3 = 000010B8
    cfc1    t2, $f31                   
    addiu   t7, s2, 0x1040             # t7 = 00001040
    addiu   t8, s2, 0x1130             # t8 = 00001130
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_8096A4A0    
    mfc1    t2, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_8096A494    
    nop
    mfc1    t2, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8096A4AC 
    or      t2, t2, $at                # t2 = 80000000
lbl_8096A494:
    beq     $zero, $zero, lbl_8096A4AC 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f6                    
lbl_8096A4A0:
    nop
    bltz    t2, lbl_8096A494           
    nop
lbl_8096A4AC:
    andi    t3, t2, 0x00FF             # t3 = 000000FF
    sll     t4, t3, 16                 
    or      t5, t4, s3                 # t5 = FF000000
    ctc1    t1, $f31                   
    ori     t6, t5, 0x00FF             # t6 = FF0000FF
    sw      t6, 0x0004(v0)             # 00000004
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    jal     func_80969BD0              
    sw      t9, 0x0018($sp)            
    lw      v0, 0x02D0(s4)             # 000002D0
    cfc1    t2, $f31                   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s4)             # 000002D0
    sw      s1, 0x0000(v0)             # 00000000
    lw      t1, 0x0070($sp)            
    ctc1    t3, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    lwc1    $f8, 0x027C(t1)            # 0000027C
    addiu   t0, s2, 0x1344             # t0 = 00001344
    or      a0, s2, $zero              # a0 = 00000000
    cvt.w.s $f10, $f8                  
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, s2, 0x136C             # a2 = 0000136C
    addiu   a3, s2, 0x1254             # a3 = 00001254
    cfc1    t3, $f31                   
    addiu   t8, s2, 0x11DC             # t8 = 000011DC
    addiu   t9, s2, 0x12CC             # t9 = 000012CC
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_8096A574    
    mfc1    t3, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8096A568    
    nop
    mfc1    t3, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8096A580 
    or      t3, t3, $at                # t3 = 80000000
lbl_8096A568:
    beq     $zero, $zero, lbl_8096A580 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f10                   
lbl_8096A574:
    nop
    bltz    t3, lbl_8096A568           
    nop
lbl_8096A580:
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sll     t5, t4, 16                 
    or      t6, t5, s3                 # t6 = FF000000
    ctc1    t2, $f31                   
    ori     t7, t6, 0x00FF             # t7 = FF0000FF
    sw      t7, 0x0004(v0)             # 00000004
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    jal     func_80969BD0              
    sw      t0, 0x0018($sp)            
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    ldc1    $f28, 0x0040($sp)          
    ldc1    $f30, 0x0048($sp)          
    lw      s0, 0x0054($sp)            
    lw      s1, 0x0058($sp)            
    lw      s2, 0x005C($sp)            
    lw      s3, 0x0060($sp)            
    lw      s4, 0x0064($sp)            
    lw      s5, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8096A5E4:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x003C($sp)            
    lw      t7, 0x0180(s0)             # 00000180
    lw      a2, 0x0000(s2)             # 00000000
    lui     t6, %hi(func_8096912C)     # t6 = 80970000
    addiu   t6, t6, %lo(func_8096912C) # t6 = 8096912C
    beq     t6, t7, lbl_8096A7EC       
    or      s1, a2, $zero              # s1 = 00000000
    jal     func_8007E298              
    or      a0, a2, $zero              # a0 = 00000000
    lh      t8, 0x0196(s0)             # 00000196
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_8096A658    
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lw      a0, 0x02C0(s1)             # 000002C0
    addiu   t3, $zero, 0x0384          # t3 = 00000384
    addiu   t4, $zero, 0x044B          # t4 = 0000044B
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    jal     func_8007DC40              
    sw      $zero, 0x0010($sp)         
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_8096A658:
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t7, 0x0213(s0)             # 00000213
    lui     t0, %hi(var_8096AB20)      # t0 = 80970000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t8, t7,  2                 
    addu    t0, t0, t8                 
    lw      t0, %lo(var_8096AB20)(t0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t9, t0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t9, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x01BC(s0)            # 000001BC
    lwc1    $f4, 0x01B8(s0)            # 000001B8
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    lwc1    $f16, 0x01C0(s0)           # 000001C0
    trunc.w.s $f6, $f4                   
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f6                    
    trunc.w.s $f10, $f8                  
    mfc1    t4, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     t5, t4, 16                 
    sra     t9, t5, 16                 
    sw      t9, 0x001C($sp)            
    lwc1    $f4, 0x01C4(s0)            # 000001C4
    mfc1    a3, $f10                   
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    trunc.w.s $f6, $f4                   
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    t7, $f6                    
    sw      t4, 0x0024($sp)            
    sw      t5, 0x0028($sp)            
    sll     t8, t7, 16                 
    sra     t3, t8, 16                 
    sw      t3, 0x0020($sp)            
    jal     func_8007EB84              
    sw      v1, 0x0048($sp)            
    lw      t2, 0x0048($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    lui     t5, %hi(func_80969934)     # t5 = 80970000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t4, $zero, 0xFF80          # t4 = FFFFFF80
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_80969B28)     # t9 = 80970000
    addiu   t9, t9, %lo(func_80969B28) # t9 = 80969B28
    addiu   t5, t5, %lo(func_80969934) # t5 = 80969934
    sw      t5, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    jal     func_80089D8C              
    sw      s0, 0x0018($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8096A1A0              
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009A574              
    lw      a1, 0x02C0(s1)             # 000002C0
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_8096A7EC:
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_8096A810: .word 0x00A20900, 0x00000035, 0x00A50000, 0x0000166C
.word func_80967530
.word func_8096762C
.word func_80969780
.word func_8096A5E4
var_8096A830: .word \
0x03000000, 0xFFCFFFFF, 0x00200000, 0xFFCDFFFE, \
0x00000000, 0x00050100, 0x23001770, 0x00000000, \
0x00150064, 0x02000000, 0xFFCFFFFF, 0x00200000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x12000FA0, \
0x00000000, 0x000D0064, 0x02000000, 0xFFCFFFFF, \
0x00200000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x13000BB8, 0x00000000, 0x000D0064, 0x02000000, \
0xFFCFFFFF, 0x00200000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x14000FA0, 0x00000000, 0x000F0064, \
0x02000000, 0xFFCFFFFF, 0x00200000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x18000FA0, 0x00000000, \
0x000D0064, 0x02000000, 0xFFCFFFFF, 0x00200000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x19000BB8, \
0x00000000, 0x000D0064, 0x02000000, 0xFFCFFFFF, \
0x00200000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x1A000DAC, 0x05DC0000, 0x000F0064, 0x02000000, \
0xFFCFFFFF, 0x00200000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x11000000, 0x00000000, 0x001A0064, \
0x02000000, 0xFFCFFFFF, 0x00200000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x1E000000, 0x00000000, \
0x00110064
var_8096A974: .word 0x09110909, 0x10000000, 0x00000009
.word var_8096A830
var_8096A984: .word \
0x00000000, 0x42B40000, 0xC3730000, 0x00000000, \
0x42B40000, 0x00000000, 0x00000000, 0x42B40000, \
0x43730000, 0xC3730000, 0x42B40000, 0xC3730000, \
0xC3730000, 0x42B40000, 0x00000000, 0xC3730000, \
0x42B40000, 0x43730000, 0x43730000, 0x42B40000, \
0xC3730000, 0x43730000, 0x42B40000, 0x00000000, \
0x43730000, 0x42B40000, 0x43730000
var_8096A9F0: .word \
0x801F0005, 0x89170021, 0xB86C0000, 0x304C0000, \
0x00000000, 0x00000000, 0x42480000
var_8096AA0C: .word 0x00000000, 0x00000000, 0x00000000
var_8096AA18: .word 0x00000000, 0x00000000, 0x00000000
var_8096AA24: .word 0x00000000, 0x00000000, 0x00000000
var_8096AA30: .word 0x00000000, 0x00000000, 0x00000000
var_8096AA3C: .word 0x00000000, 0xBF800000, 0x00000000
var_8096AA48: .word 0x00000000, 0x00000000, 0x00000000
var_8096AA54: .word 0x00000000, 0xBF800000, 0x00000000
var_8096AA60: .word 0x00000001, 0x00020002, 0x00010000
var_8096AA6C: .word 0x458CA000, 0x00000000, 0x00000000
var_8096AA78: .word 0x457A0000, 0x00000000, 0x00000000
var_8096AA84: .word 0x457A0000, 0xC5354000, 0x44FA0000
var_8096AA90: .word 0x457A0000, 0xC4C80000, 0x00000000
var_8096AA9C: .word 0x457A0000, 0xC4C80000, 0xC4FA0000
var_8096AAA8: .word \
0x00000000, 0x42C80000, 0x42480000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000
var_8096AAD0: .word \
0x00000000, 0x40A00000, 0xC1200000, 0x43FA0000, \
0x43FA0000, 0x43FA0000, 0x43FA0000, 0x43FA0000, \
0x43FA0000, 0x43FA0000
var_8096AAF8: .word \
0x3ECCCCCD, 0x3F19999A, 0x3F4CCCCD, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000
var_8096AB20: .word 0x06002B08, 0x06002708, 0x06002F08, 0x00000000

.section .rodata

var_8096AB30: .word 0xC4548000
var_8096AB34: .word 0x410E6666
var_8096AB38: .word 0x410E6666
var_8096AB3C: .word 0x40490FDB
var_8096AB40: .word 0x40C90FDB
var_8096AB44: .word var_80968B04
.word var_80968BDC
.word var_80968DB4
.word var_80968E00
.word var_80968F74
.word lbl_8096910C
var_8096AB5C: .word 0x3DCCCCCD
var_8096AB60: .word 0x3CA3D70A
var_8096AB64: .word 0x40490FDB
var_8096AB68: .word 0x3E4CCCCD
var_8096AB6C: .word 0x3CA3D70A
var_8096AB70: .word 0x3CA3D70A
var_8096AB74: .word 0x3E99999A
var_8096AB78: .word 0x45BB8000
var_8096AB7C: .word 0x44A28000
var_8096AB80: .word 0x3DCCCCCD
var_8096AB84: .word 0xC4638000
var_8096AB88: .word 0x3FC90FDB
var_8096AB8C: .word 0x3A6BEDFA
var_8096AB90: .word 0x3C23D70A
var_8096AB94: .word 0x45ABC000
var_8096AB98: .word 0x45AEE000
var_8096AB9C: .word 0x3E99999A

