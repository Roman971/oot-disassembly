.section .text
func_80948F60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80948F6C:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80949010    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    mtc1    $at, $f12                  # $f12 = 10.00
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
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0028($sp)           
    sh      t4, 0x002A(a0)             # 0000002A
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x0030(a0)            # 00000030
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    trunc.w.s $f10, $f0                  
    lw      a0, 0x0018($sp)            
    mfc1    t8, $f10                   
    beq     $zero, $zero, lbl_8094901C 
    sb      t8, 0x0025(a0)             # 00000025
lbl_80949010:
    slti    $at, v0, 0x0096            
    bne     $at, $zero, lbl_80948F6C   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
lbl_8094901C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8094902C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80949038:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_809490E0    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
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
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0028($sp)           
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x0030(a0)            # 00000030
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64              
    swc1    $f0, 0x0034(a0)            # 00000034
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_809490EC 
    swc1    $f0, 0x0038(a0)            # 00000038
lbl_809490E0:
    slti    $at, v0, 0x0096            
    bne     $at, $zero, lbl_80949038   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
lbl_809490EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809490FC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80949100:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80949180    
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
lbl_80949180:
    slti    $at, v0, 0x0096            
    bne     $at, $zero, lbl_80949100   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
    jr      $ra                        
    nop


func_80949194:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809491A0:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80949284    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0024(a0)             # 00000024
    sb      $zero, 0x0025(a0)          # 00000025
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    lwc1    $f4, 0x0000(a0)            # 00000000
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    lwc1    $f10, 0x0004(a0)           # 00000004
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(a2)             # 00000004
    lwc1    $f6, 0x000C(a0)            # 0000000C
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(a2)             # 00000008
    sub.s   $f8, $f4, $f6              
    lwc1    $f16, 0x0010(a0)           # 00000010
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(a3)             # 00000000
    lwc1    $f6, 0x0014(a0)            # 00000014
    lwc1    $f4, 0x0008(a0)            # 00000008
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(a3)             # 00000004
    sub.s   $f18, $f10, $f16           
    mtc1    $zero, $f10                # $f10 = 0.00
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(a3)             # 00000008
    swc1    $f8, 0x0000(a0)            # 00000000
    sub.s   $f8, $f4, $f6              
    swc1    $f18, 0x0004(a0)           # 00000004
    swc1    $f10, 0x0034(a0)           # 00000034
    sw      t3, 0x0020(a0)             # 00000020
    swc1    $f8, 0x0008(a0)            # 00000008
    lh      t4, 0x002E($sp)            
    sh      t4, 0x002A(a0)             # 0000002A
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f18                  # $f18 = 400.00
    swc1    $f0, 0x0038(a0)            # 00000038
    sh      $zero, 0x002C(a0)          # 0000002C
    lwc1    $f16, 0x0028($sp)          
    div.s   $f4, $f16, $f18            
    swc1    $f4, 0x0030(a0)            # 00000030
    lh      t5, 0x0032($sp)            
    beq     $zero, $zero, lbl_80949290 
    sh      t5, 0x002E(a0)             # 0000002E
lbl_80949284:
    slti    $at, v0, 0x00B4            
    bne     $at, $zero, lbl_809491A0   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
lbl_80949290:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809492A0:
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x13F8(a0)            # 000013F8
    lwc1    $f6, 0x1440(a0)            # 00001440
    lwc1    $f10, 0x13FC(a0)           # 000013FC
    lwc1    $f16, 0x1444(a0)           # 00001444
    sub.s   $f0, $f4, $f6              
    lwc1    $f6, 0x1448(a0)            # 00001448
    lwc1    $f4, 0x1400(a0)            # 00001400
    abs.s   $f0, $f0                   
    mul.s   $f8, $f0, $f12             
    sub.s   $f0, $f10, $f16            
    lwc1    $f16, 0x1458(a0)           # 00001458
    lwc1    $f10, 0x1404(a0)           # 00001404
    abs.s   $f0, $f0                   
    swc1    $f8, 0x1428(a0)            # 00001428
    mul.s   $f18, $f0, $f12            
    sub.s   $f0, $f4, $f6              
    lwc1    $f6, 0x145C(a0)            # 0000145C
    lwc1    $f4, 0x1408(a0)            # 00001408
    abs.s   $f0, $f0                   
    swc1    $f18, 0x142C(a0)           # 0000142C
    mul.s   $f8, $f0, $f12             
    sub.s   $f0, $f10, $f16            
    lwc1    $f16, 0x1460(a0)           # 00001460
    lwc1    $f10, 0x140C(a0)           # 0000140C
    abs.s   $f0, $f0                   
    swc1    $f8, 0x1430(a0)            # 00001430
    mul.s   $f18, $f0, $f12            
    sub.s   $f0, $f4, $f6              
    abs.s   $f0, $f0                   
    swc1    $f18, 0x1434(a0)           # 00001434
    mul.s   $f8, $f0, $f12             
    sub.s   $f0, $f10, $f16            
    abs.s   $f0, $f0                   
    swc1    $f8, 0x1438(a0)            # 00001438
    mul.s   $f18, $f0, $f12            
    swc1    $f18, 0x143C(a0)           # 0000143C
    jr      $ra                        
    nop


func_80949340:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x13F4(s0)             # 000013F4
    beql    t6, $zero, lbl_8094949C    
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x1428(s0)            # 00001428
    lwc1    $f6, 0x1470(s0)            # 00001470
    addiu   a0, s0, 0x13F8             # a0 = 000013F8
    lw      a1, 0x1440(s0)             # 00001440
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x144C(s0)             # 0000144C
    sw      a0, 0x0024($sp)            
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x142C(s0)           # 0000142C
    lwc1    $f16, 0x1470(s0)           # 00001470
    addiu   a0, s0, 0x13FC             # a0 = 000013FC
    lw      a1, 0x1444(s0)             # 00001444
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x1450(s0)             # 00001450
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x1430(s0)            # 00001430
    lwc1    $f6, 0x1470(s0)            # 00001470
    addiu   a0, s0, 0x1400             # a0 = 00001400
    lw      a1, 0x1448(s0)             # 00001448
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x1454(s0)             # 00001454
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x1434(s0)           # 00001434
    lwc1    $f16, 0x1470(s0)           # 00001470
    addiu   a0, s0, 0x1404             # a0 = 00001404
    lw      a1, 0x1458(s0)             # 00001458
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x1464(s0)             # 00001464
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x1438(s0)            # 00001438
    lwc1    $f6, 0x1470(s0)            # 00001470
    addiu   a0, s0, 0x1408             # a0 = 00001408
    lw      a1, 0x145C(s0)             # 0000145C
    mul.s   $f8, $f4, $f6              
    lw      a2, 0x1468(s0)             # 00001468
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x143C(s0)           # 0000143C
    lwc1    $f16, 0x1470(s0)           # 00001470
    addiu   a0, s0, 0x140C             # a0 = 0000140C
    lw      a1, 0x1460(s0)             # 00001460
    mul.s   $f18, $f10, $f16           
    lw      a2, 0x146C(s0)             # 0000146C
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s0, 0x1470             # a0 = 00001470
    lw      a3, 0x1474(s0)             # 00001474
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    nop
    lwc1    $f4, 0x1408(s0)            # 00001408
    lwc1    $f6, 0x1478(s0)            # 00001478
    lh      a1, 0x13F4(s0)             # 000013F4
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x1408(s0)            # 00001408
    lw      a3, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8009D328              
    lw      a0, 0x002C($sp)            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x1478             # a0 = 00001478
    jal     func_800642F0              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      $ra, 0x001C($sp)           
lbl_8094949C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809494AC:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, 0x442A                # $at = 442A0000
    mtc1    $at, $f4                   # $f4 = 680.00
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f6                   # $f6 = -100.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0028($sp)            
    sw      a0, 0x0048($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00AC          # a3 = 000000AC
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(var_8094F87C)      # a1 = 80950000
    addiu   a1, a1, %lo(var_8094F87C)  # a1 = 8094F87C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x01E4             # a3 = 060101E4
    addiu   a2, a2, 0x0260             # a2 = 06010260
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C684              
    sw      $zero, 0x0018($sp)         
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x0124             # a3 = 06010124
    addiu   a2, a2, 0x01A0             # a2 = 060101A0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0180             # a1 = 00000180
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C684              
    sw      $zero, 0x0018($sp)         
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x0064             # a3 = 06010064
    addiu   a2, a2, 0x00E0             # a2 = 060100E0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01C4             # a1 = 000001C4
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C684              
    sw      $zero, 0x0018($sp)         
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x13F2(s0)             # 000013F2
    lh      t8, 0x13F2(s0)             # 000013F2
    bnel    t8, $zero, lbl_809495F0    
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800CAA70              
    addiu   a0, $zero, 0x006B          # a0 = 0000006B
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_809495F0:
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    addiu   a1, s0, 0x1480             # a1 = 00001480
    swc1    $f0, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f10, 0x0028(s0)           # 00000028
    sw      a1, 0x0044($sp)            
    jal     func_8004A484              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8094F86C)      # a3 = 80950000
    addiu   t9, s0, 0x14A0             # t9 = 000014A0
    lw      a1, 0x0044($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_8094F86C)  # a3 = 8094F86C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
lbl_8094963C:
    multu   v1, a0                     
    lwc1    $f16, 0x0024(s0)           # 00000024
    slti    $at, v1, 0x001E            
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    mflo    t0                         
    addu    v0, s0, t0                 
    swc1    $f16, 0x077C(v0)           # 0000077C
    lwc1    $f18, 0x0028(s0)           # 00000028
    swc1    $f18, 0x0780(v0)           # 00000780
    lwc1    $f4, 0x002C(s0)            # 0000002C
    beq     $at, $zero, lbl_8094968C   
    swc1    $f4, 0x0784(v0)            # 00000784
    lwc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0DF4(v0)            # 00000DF4
    lwc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f8, 0x0DF8(v0)            # 00000DF8
    lwc1    $f10, 0x002C(s0)           # 0000002C
    swc1    $f10, 0x0DFC(v0)           # 00000DFC
lbl_8094968C:
    slti    $at, v1, 0x0064            
    bne     $at, $zero, lbl_8094963C   
    nop
    lh      t3, 0x13F2(s0)             # 000013F2
    addiu   t1, $zero, 0x0018          # t1 = 00000018
    addiu   t2, $zero, 0x0012          # t2 = 00000012
    sb      t1, 0x00AF(s0)             # 000000AF
    bne     t3, $zero, lbl_809496C0    
    sh      t2, 0x020E(s0)             # 0000020E
    lui     t4, %hi(func_8094BF54)     # t4 = 80950000
    addiu   t4, t4, %lo(func_8094BF54) # t4 = 8094BF54
    beq     $zero, $zero, lbl_809496CC 
    sw      t4, 0x0208(s0)             # 00000208
lbl_809496C0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8094985C              
    or      a1, s1, $zero              # a1 = 00000000
lbl_809496CC:
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s1                 
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640              
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_8094977C    
    lwc1    $f10, 0x0024(s0)           # 00000024
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    sw      t5, 0x0028($sp)            
    lw      a0, 0x0048($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f18, 0x0014($sp)          
    swc1    $f16, 0x0010($sp)          
    jal     func_800253F0              
    swc1    $f4, 0x0018($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lw      a0, 0x0048($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f6, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)           
    beq     $zero, $zero, lbl_809497BC 
    lw      $ra, 0x003C($sp)           
    lwc1    $f10, 0x0024(s0)           # 00000024
lbl_8094977C:
    lw      a0, 0x0048($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00A2          # a3 = 000000A2
    swc1    $f16, 0x0014($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    swc1    $f18, 0x0018($sp)          
    lh      t6, 0x13F2(s0)             # 000013F2
    jal     func_800253F0              
    sw      t6, 0x0028($sp)            
    lw      $ra, 0x003C($sp)           
lbl_809497BC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809497CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x0180             # a0 = 00000180
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x01C4             # a0 = 000001C4
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x1480             # a1 = 00001480
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8094982C:
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x0032(a0)             # 00000032
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80949850           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80949850 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80949850:
    slti    v0, v1, 0x2000             
    jr      $ra                        
    nop


func_8094985C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x01E4             # a1 = 060101E4
    jal     func_8008D1C4              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x0124             # a1 = 06010124
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0180             # a0 = 00000180
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x0064             # a1 = 06010064
    jal     func_8008D1C4              
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     t6, %hi(func_809498CC)     # t6 = 80950000
    addiu   t6, t6, %lo(func_809498CC) # t6 = 809498CC
    sw      t6, 0x0208(s0)             # 00000208
    swc1    $f4, 0x029C(s0)            # 0000029C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809498CC:
    addiu   $sp, $sp, 0xFE30           # $sp = FFFFFE30
    sw      s6, 0x0078($sp)            
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s5, 0x0074($sp)            
    sw      s4, 0x0070($sp)            
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s1, 0x0064($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f30, 0x0058($sp)          
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    sw      a1, 0x01D4($sp)            
    lw      t6, 0x01D4($sp)            
    sb      $zero, 0x01CF($sp)         
    addiu   a0, s6, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    lw      s3, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    addiu   a0, s6, 0x0180             # a0 = 00000180
    jal     func_8008C9C0              
    addiu   a0, s6, 0x01C4             # a0 = 000001C4
    lwc1    $f4, 0x02AC(s6)            # 000002AC
    lwc1    $f6, 0x0024(s6)            # 00000024
    lwc1    $f8, 0x02B0(s6)            # 000002B0
    lwc1    $f10, 0x0028(s6)           # 00000028
    sub.s   $f20, $f4, $f6             
    lui     $at, 0x4503                # $at = 45030000
    sub.s   $f4, $f8, $f10             
    mtc1    $at, $f10                  # $f10 = 2096.00
    swc1    $f4, 0x01C0($sp)           
    lwc1    $f8, 0x002C(s6)            # 0000002C
    lwc1    $f6, 0x02B4(s6)            # 000002B4
    lh      t7, 0x0214(s6)             # 00000214
    lwc1    $f4, 0x02A4(s6)            # 000002A4
    sub.s   $f22, $f6, $f8             
    mtc1    t7, $f8                    # $f8 = 0.00
    add.s   $f6, $f10, $f4             
    cvt.s.w $f10, $f8                  
    mul.s   $f4, $f10, $f6             
    trunc.w.s $f8, $f4                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x02A0(s6)           # 000002A0
    lh      t9, 0x0214(s6)             # 00000214
    lui     $at, 0x4489                # $at = 44890000
    mul.s   $f6, $f0, $f10             
    mtc1    $at, $f4                   # $f4 = 1096.00
    lwc1    $f8, 0x02A4(s6)            # 000002A4
    add.s   $f10, $f4, $f8             
    add.s   $f20, $f20, $f6            
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    mul.s   $f8, $f4, $f10             
    trunc.w.s $f6, $f8                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x02A0(s6)           # 000002A0
    lwc1    $f4, 0x01C0($sp)           
    lui     $at, %hi(var_8094FB90)     # $at = 80950000
    mul.s   $f8, $f0, $f10             
    lwc1    $f10, %lo(var_8094FB90)($at) 
    add.s   $f6, $f4, $f8              
    swc1    $f6, 0x01C0($sp)           
    lh      t1, 0x0214(s6)             # 00000214
    lwc1    $f4, 0x02A4(s6)            # 000002A4
    mtc1    t1, $f6                    # $f6 = 0.00
    add.s   $f8, $f10, $f4             
    cvt.s.w $f10, $f6                  
    mul.s   $f4, $f10, $f8             
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x02A0(s6)           # 000002A0
    mov.s   $f12, $f20                 
    mul.s   $f8, $f0, $f10             
    add.s   $f22, $f22, $f8            
    jal     func_800CD76C              
    mov.s   $f14, $f22                 
    lui     $at, %hi(var_8094FB94)     # $at = 80950000
    lwc1    $f24, %lo(var_8094FB94)($at) 
    lwc1    $f12, 0x01C0($sp)          
    mul.s   $f4, $f0, $f24             
    nop
    mul.s   $f2, $f20, $f20            
    nop
    mul.s   $f16, $f22, $f22           
    swc1    $f2, 0x0098($sp)           
    trunc.w.s $f6, $f4                   
    swc1    $f16, 0x0094($sp)          
    add.s   $f18, $f2, $f16            
    mfc1    t4, $f6                    
    sqrt.s  $f14, $f18                 
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    swc1    $f14, 0x0090($sp)          
    jal     func_800CD76C              
    swc1    $f8, 0x01B4($sp)           
    mul.s   $f4, $f0, $f24             
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f30                  # $f30 = 1.00
    addiu   s5, s6, 0x0270             # s5 = 00000270
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    mfc1    a2, $f30                   
    trunc.w.s $f6, $f4                   
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    or      a0, s5, $zero              # a0 = 00000270
    mfc1    t8, $f6                    
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    jal     func_80064280              
    swc1    $f8, 0x01B0($sp)           
    lh      t1, 0x13F2(s6)             # 000013F2
    beql    t1, $zero, lbl_8094A6F8    
    lui     $at, 0x40A0                # $at = 40A00000
    lw      a0, 0x01D4($sp)            
    lw      s0, 0x1C44(a0)             # 00001C44
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t2, 0x13F2(s6)             # 000013F2
    or      s1, v0, $zero              # s1 = 00000000
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sltiu   $at, t3, 0x0006            
    beq     $at, $zero, lbl_8094A6B8   
    sll     t3, t3,  2                 
    lui     $at, %hi(var_8094FB98)     # $at = 80950000
    addu    $at, $at, t3               
    lw      t3, %lo(var_8094FB98)($at) 
    jr      t3                         
    nop
var_80949B30:
    lui     $at, 0xC2DC                # $at = C2DC0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = -110.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0210(s6)             # 00000210
    lui     $at, %hi(var_8094FBB0)     # $at = 80950000
    swc1    $f4, 0x02AC(s6)            # 000002AC
    swc1    $f6, 0x02B0(s6)            # 000002B0
    swc1    $f10, 0x02B4(s6)           # 000002B4
    lwc1    $f8, %lo(var_8094FBB0)($at) 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    sh      t5, 0x0212(s6)             # 00000212
    swc1    $f8, 0x029C(s6)            # 0000029C
    lwc1    $f0, 0x002C(s0)            # 0000002C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    abs.s   $f0, $f0                   
    lui     $at, 0x43AA                # $at = 43AA0000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80949E74               
    nop
    lwc1    $f6, 0x0024(s0)            # 00000024
    mtc1    $at, $f10                  # $f10 = 340.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    sub.s   $f0, $f6, $f10             
    lw      a0, 0x01D4($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    abs.s   $f0, $f0                   
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80949E74               
    nop
    jal     func_80052328              
    sh      t6, 0x13F2(s6)             # 000013F2
    lw      a0, 0x01D4($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0              
    lw      a0, 0x01D4($sp)            
    sh      v0, 0x13F4(s6)             # 000013F4
    lw      a0, 0x01D4($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x01D4($sp)            
    lh      a1, 0x13F4(s6)             # 000013F4
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x43BE                # $at = 43BE0000
    mtc1    $at, $f0                   # $f0 = 380.00
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f2                   # $f2 = 18.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f28                  # $f28 = 100.00
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      t7, 0x0032(s0)             # 00000032
    sub.s   $f6, $f0, $f4              
    lh      t8, 0x0032(s0)             # 00000032
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f28, 0x0028(s0)           # 00000028
    swc1    $f12, 0x002C(s0)           # 0000002C
    swc1    $f12, 0x0068(s0)           # 00000068
    sh      t8, 0x00B6(s0)             # 000000B6
    swc1    $f6, 0x13F8(s6)            # 000013F8
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    mfc1    a1, $f30                   
    add.s   $f4, $f10, $f8             
    mtc1    $at, $f10                  # $f10 = 70.00
    lui     $at, 0x41F0                # $at = 41F00000
    or      a0, s6, $zero              # a0 = 00000000
    swc1    $f4, 0x13FC(s6)            # 000013FC
    lwc1    $f6, 0x002C(s0)            # 0000002C
    add.s   $f8, $f6, $f10             
    mtc1    $at, $f10                  # $f10 = 30.00
    lui     $at, 0x4220                # $at = 42200000
    swc1    $f8, 0x1400(s6)            # 00001400
    lwc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f4, 0x1404(s6)            # 00001404
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f8, $f6, $f10             
    swc1    $f8, 0x1408(s6)            # 00001408
    lwc1    $f4, 0x002C(s0)            # 0000002C
    swc1    $f4, 0x140C(s6)            # 0000140C
    lwc1    $f6, 0x0024(s0)            # 00000024
    sub.s   $f10, $f6, $f24            
    mtc1    $at, $f6                   # $f6 = 40.00
    add.s   $f8, $f10, $f2             
    swc1    $f8, 0x1440(s6)            # 00001440
    lwc1    $f4, 0x0028(s0)            # 00000028
    add.s   $f10, $f4, $f6             
    swc1    $f10, 0x1444(s6)           # 00001444
    lwc1    $f8, 0x002C(s0)            # 0000002C
    add.s   $f4, $f8, $f24             
    sub.s   $f6, $f4, $f2              
    swc1    $f6, 0x1448(s6)            # 00001448
    lwc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f10, 0x1458(s6)           # 00001458
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f4, $f8, $f24             
    swc1    $f4, 0x145C(s6)            # 0000145C
    lwc1    $f6, 0x002C(s0)            # 0000002C
    jal     func_809492A0              
    swc1    $f6, 0x1460(s6)            # 00001460
    lui     $at, %hi(var_8094FBB4)     # $at = 80950000
    lwc1    $f2, %lo(var_8094FBB4)($at) 
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0xA5D0             # s4 = 8011A5D0
    sh      $zero, 0x0238(s6)          # 00000238
    swc1    $f2, 0x146C(s6)            # 0000146C
    swc1    $f2, 0x1468(s6)            # 00001468
    swc1    $f2, 0x1464(s6)            # 00001464
    swc1    $f2, 0x1454(s6)            # 00001454
    swc1    $f2, 0x1450(s6)            # 00001450
    swc1    $f2, 0x144C(s6)            # 0000144C
    swc1    $f0, 0x1470(s6)            # 00001470
    swc1    $f0, 0x1474(s6)            # 00001474
    lhu     t9, 0x0EE2(s4)             # 8011B4B2
    lui     $at, 0x4348                # $at = 43480000
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    andi    t0, t9, 0x0008             # t0 = 00000000
    beq     t0, $zero, lbl_80949E74    
    nop
    sh      t1, 0x13F2(s6)             # 000013F2
    mtc1    $at, $f22                  # $f22 = 200.00
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    add.s   $f8, $f10, $f28            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f10                  # $f10 = 600.00
    add.s   $f6, $f8, $f4              
    lui     $at, 0x4316                # $at = 43160000
    mfc1    a1, $f26                   
    or      a0, s6, $zero              # a0 = 00000000
    sub.s   $f8, $f6, $f10             
    swc1    $f8, 0x1440(s6)            # 00001440
    lwc1    $f4, 0x0028(s0)            # 00000028
    add.s   $f6, $f4, $f28             
    sub.s   $f10, $f6, $f24            
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, 0x42F0                # $at = 42F00000
    swc1    $f10, 0x1444(s6)           # 00001444
    lwc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x1458(s6)            # 00001458
    swc1    $f0, 0x1460(s6)            # 00001460
    add.s   $f4, $f8, $f22             
    mtc1    $at, $f8                   # $f8 = 120.00
    sub.s   $f10, $f4, $f6             
    swc1    $f8, 0x145C(s6)            # 0000145C
    jal     func_809492A0              
    swc1    $f10, 0x1448(s6)           # 00001448
    lui     $at, %hi(var_8094FBB8)     # $at = 80950000
    lwc1    $f0, %lo(var_8094FBB8)($at) 
    lui     $at, %hi(var_8094FBBC)     # $at = 80950000
    lwc1    $f20, %lo(var_8094FBBC)($at) 
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    andi    t3, t2, 0x00FF             # t3 = 00000001
    sll     t4, t3,  2                 
    subu    t4, t4, t3                 
    lui     t5, %hi(var_8094F88C)      # t5 = 80950000
    addiu   t5, t5, %lo(var_8094F88C)  # t5 = 8094F88C
    sll     t4, t4,  2                 
    sh      $zero, 0x0238(s6)          # 00000238
    sb      t2, 0x02C4(s6)             # 000002C4
    addu    v0, t4, t5                 
    swc1    $f0, 0x144C(s6)            # 0000144C
    swc1    $f0, 0x1450(s6)            # 00001450
    swc1    $f0, 0x1454(s6)            # 00001454
    swc1    $f0, 0x1464(s6)            # 00001464
    swc1    $f0, 0x1468(s6)            # 00001468
    swc1    $f0, 0x146C(s6)            # 0000146C
    swc1    $f20, 0x1474(s6)           # 00001474
    lwc1    $f4, 0x0000(v0)            # 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    swc1    $f4, 0x02AC(s6)            # 000002AC
    lwc1    $f6, 0x0004(v0)            # 00000004
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sub.s   $f10, $f6, $f22            
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t0, $zero, 0x01D6          # t0 = 000001D6
    swc1    $f10, 0x02B0(s6)           # 000002B0
    lwc1    $f8, 0x0008(v0)            # 00000008
    sh      t6, 0x0238(s6)             # 00000238
    sh      t7, 0x0212(s6)             # 00000212
    sh      t8, 0x0030(s6)             # 00000030
    sh      $zero, 0x0214(s6)          # 00000214
    sh      t9, 0x023E(s6)             # 0000023E
    sh      t0, 0x023C(s6)             # 0000023C
    swc1    $f4, 0x0294(s6)            # 00000294
    swc1    $f8, 0x02B4(s6)            # 000002B4
lbl_80949E74:
    beq     $zero, $zero, lbl_8094A6BC 
    lui     $at, 0x4348                # $at = 43480000
var_80949E7C:
    lh      t1, 0x0238(s6)             # 00000238
    lui     $at, %hi(var_8094FBC8)     # $at = 80950000
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    bne     t1, $zero, lbl_80949EA0    
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    lwc1    $f6, %lo(var_8094FBC8)($at) 
    sh      t2, 0x0238(s6)             # 00000238
    sh      t3, 0x13F2(s6)             # 000013F2
    swc1    $f6, 0x1474(s6)            # 00001474
lbl_80949EA0:
    lui     $at, 0x43BE                # $at = 43BE0000
    mtc1    $at, $f0                   # $f0 = 380.00
    addiu   t4, $zero, 0xC000          # t4 = FFFFC000
    lui     $at, 0x42C8                # $at = 42C80000
    sh      t4, 0x0032(s0)             # 00000032
    mtc1    $at, $f28                  # $f28 = 100.00
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lh      t5, 0x0032(s0)             # 00000032
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f28, 0x0028(s0)           # 00000028
    swc1    $f10, 0x002C(s0)           # 0000002C
    swc1    $f8, 0x0068(s0)            # 00000068
    sh      t5, 0x00B6(s0)             # 000000B6
    lh      v1, 0x0238(s6)             # 00000238
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    bne     v1, $at, lbl_80949EF4      
    lui     s2, 0x8010                 # s2 = 80100000
    sb      t6, 0x0210(s6)             # 00000210
    lh      v1, 0x0238(s6)             # 00000238
lbl_80949EF4:
    slti    $at, v1, 0x0032            
    beq     $at, $zero, lbl_80949F5C   
    addiu   a3, s2, 0x43A0             # a3 = 801043A0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    addiu   a0, $zero, 0x304E          # a0 = 0000304E
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lh      a0, 0x0214(s6)             # 00000214
    sll     a0, a0, 15                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x147C(s6)            # 0000147C
    mfc1    a2, $f30                   
    lui     a3, 0x3C03                 # a3 = 3C030000
    mul.s   $f6, $f0, $f4              
    ori     a3, a3, 0x126E             # a3 = 3C03126E
    addiu   a0, s6, 0x147C             # a0 = 0000147C
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    swc1    $f6, 0x1478(s6)            # 00001478
    lh      v1, 0x0238(s6)             # 00000238
lbl_80949F5C:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v1, $at, lbl_80949F78      
    lw      a0, 0x01D4($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    lh      v1, 0x0238(s6)             # 00000238
lbl_80949F78:
    bne     v1, $zero, lbl_8094A6B8    
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sh      t8, 0x13F2(s6)             # 000013F2
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, %hi(var_8094FBCC)     # $at = 80950000
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    add.s   $f4, $f10, $f8             
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f4, 0x145C(s6)            # 0000145C
    lwc1    $f6, %lo(var_8094FBCC)($at) 
    lui     $at, %hi(var_8094FBD0)     # $at = 80950000
    swc1    $f10, 0x1470(s6)           # 00001470
    swc1    $f6, 0x1468(s6)            # 00001468
    lwc1    $f8, %lo(var_8094FBD0)($at) 
    sh      t9, 0x0238(s6)             # 00000238
    sh      $zero, 0x0214(s6)          # 00000214
    beq     $zero, $zero, lbl_8094A6B8 
    swc1    $f8, 0x1474(s6)            # 00001474
var_80949FC8:
    lh      a0, 0x0214(s6)             # 00000214
    sll     a0, a0, 15                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x147C(s6)            # 0000147C
    mfc1    a2, $f30                   
    lui     a3, 0x3C03                 # a3 = 3C030000
    mul.s   $f6, $f0, $f4              
    ori     a3, a3, 0x126E             # a3 = 3C03126E
    addiu   a0, s6, 0x147C             # a0 = 0000147C
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    swc1    $f6, 0x1478(s6)            # 00001478
    lui     s2, 0x8010                 # s2 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, s2, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x304E          # a0 = 0000304E
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      t1, 0x0238(s6)             # 00000238
    lui     $at, 0x4348                # $at = 43480000
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    bne     t1, $zero, lbl_8094A0E4    
    nop
    mtc1    $at, $f22                  # $f22 = 200.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    sh      t2, 0x13F2(s6)             # 000013F2
    mtc1    $at, $f28                  # $f28 = 100.00
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    add.s   $f8, $f10, $f28            
    lui     $at, 0x4316                # $at = 43160000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    add.s   $f6, $f8, $f4              
    or      a0, s6, $zero              # a0 = 00000000
    swc1    $f6, 0x1440(s6)            # 00001440
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f8, $f10, $f28            
    swc1    $f8, 0x1444(s6)            # 00001444
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f6, $f4, $f22             
    mtc1    $at, $f4                   # $f4 = 150.00
    swc1    $f6, 0x1448(s6)            # 00001448
    lwc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f10, 0x1458(s6)           # 00001458
    lwc1    $f8, 0x0028(s0)            # 00000028
    sub.s   $f6, $f8, $f4              
    swc1    $f6, 0x145C(s6)            # 0000145C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f8, $f10, $f24            
    jal     func_809492A0              
    swc1    $f8, 0x1460(s6)            # 00001460
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t3, $zero, 0x00AA          # t3 = 000000AA
    sh      t3, 0x0238(s6)             # 00000238
    swc1    $f4, 0x1470(s6)            # 00001470
    swc1    $f6, 0x1474(s6)            # 00001474
    lw      a0, 0x01D4($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0014          # a2 = 00000014
lbl_8094A0E4:
    beq     $zero, $zero, lbl_8094A6BC 
    lui     $at, 0x4348                # $at = 43480000
var_8094A0EC:
    lh      a0, 0x0214(s6)             # 00000214
    lui     $at, %hi(var_8094FBD4)     # $at = 80950000
    lwc1    $f20, %lo(var_8094FBD4)($at) 
    sll     a0, a0, 15                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f20, 0x1474(s6)           # 00001474
    lwc1    $f10, 0x147C(s6)           # 0000147C
    mfc1    a2, $f30                   
    lui     a3, 0x3C03                 # a3 = 3C030000
    mul.s   $f8, $f0, $f10             
    ori     a3, a3, 0x126E             # a3 = 3C03126E
    addiu   a0, s6, 0x147C             # a0 = 0000147C
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280              
    swc1    $f8, 0x1478(s6)            # 00001478
    lui     s2, 0x8010                 # s2 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, s2, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x304E          # a0 = 0000304E
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      v1, 0x0238(s6)             # 00000238
    addiu   $at, $zero, 0x0064         # $at = 00000064
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    bne     v1, $at, lbl_8094A174      
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sb      t5, 0x02C6(s6)             # 000002C6
    lh      v1, 0x0238(s6)             # 00000238
lbl_8094A174:
    bne     v1, $zero, lbl_8094A2E0    
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f22                  # $f22 = 200.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    lui     $at, 0x42C8                # $at = 42C80000
    sh      t6, 0x13F2(s6)             # 000013F2
    swc1    $f4, 0x1470(s6)            # 00001470
    mtc1    $at, $f28                  # $f28 = 100.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f8                   # $f8 = 300.00
    add.s   $f10, $f6, $f28            
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f6                   # $f6 = 600.00
    lui     $at, 0x4316                # $at = 43160000
    add.s   $f4, $f10, $f8             
    mfc1    a1, $f26                   
    or      a0, s6, $zero              # a0 = 00000000
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x1440(s6)           # 00001440
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f4, $f8, $f28             
    sub.s   $f6, $f4, $f24             
    mtc1    $at, $f4                   # $f4 = 150.00
    lui     $at, 0x42F0                # $at = 42F00000
    swc1    $f6, 0x1444(s6)            # 00001444
    lwc1    $f10, 0x002C(s0)           # 0000002C
    add.s   $f8, $f10, $f22            
    mtc1    $zero, $f10                # $f10 = 0.00
    sub.s   $f6, $f8, $f4              
    mtc1    $at, $f8                   # $f8 = 120.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f10, 0x1458(s6)           # 00001458
    swc1    $f6, 0x1448(s6)            # 00001448
    swc1    $f8, 0x145C(s6)            # 0000145C
    jal     func_809492A0              
    swc1    $f4, 0x1460(s6)            # 00001460
    lui     $at, %hi(var_8094FBD8)     # $at = 80950000
    lwc1    $f6, %lo(var_8094FBD8)($at) 
    lui     $at, %hi(var_8094FBDC)     # $at = 80950000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    swc1    $f6, 0x146C(s6)            # 0000146C
    lwc1    $f10, %lo(var_8094FBDC)($at) 
    lui     $at, %hi(var_8094FBE0)     # $at = 80950000
    andi    t8, t7, 0x00FF             # t8 = 00000001
    swc1    $f10, 0x1468(s6)           # 00001468
    lwc1    $f8, %lo(var_8094FBE0)($at) 
    lui     $at, %hi(var_8094FBE4)     # $at = 80950000
    sll     t9, t8,  2                 
    swc1    $f8, 0x1464(s6)            # 00001464
    lwc1    $f4, %lo(var_8094FBE4)($at) 
    lui     $at, %hi(var_8094FBE8)     # $at = 80950000
    subu    t9, t9, t8                 
    swc1    $f4, 0x1454(s6)            # 00001454
    lwc1    $f6, %lo(var_8094FBE8)($at) 
    lui     $at, %hi(var_8094FBEC)     # $at = 80950000
    lui     t0, %hi(var_8094F88C)      # t0 = 80950000
    swc1    $f6, 0x1450(s6)            # 00001450
    lwc1    $f10, %lo(var_8094FBEC)($at) 
    addiu   t0, t0, %lo(var_8094F88C)  # t0 = 8094F88C
    sll     t9, t9,  2                 
    swc1    $f20, 0x1474(s6)           # 00001474
    sh      $zero, 0x0238(s6)          # 00000238
    sb      t7, 0x02C4(s6)             # 000002C4
    addu    v0, t9, t0                 
    swc1    $f10, 0x144C(s6)           # 0000144C
    lwc1    $f8, 0x0000(v0)            # 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    swc1    $f8, 0x02AC(s6)            # 000002AC
    lwc1    $f4, 0x0004(v0)            # 00000004
    mtc1    $at, $f8                   # $f8 = 5.00
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sub.s   $f6, $f4, $f22             
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    addiu   t5, $zero, 0x01D6          # t5 = 000001D6
    swc1    $f6, 0x02B0(s6)            # 000002B0
    lwc1    $f10, 0x0008(v0)           # 00000008
    sh      t1, 0x0238(s6)             # 00000238
    sh      t2, 0x0212(s6)             # 00000212
    sh      t3, 0x0030(s6)             # 00000030
    sh      $zero, 0x0214(s6)          # 00000214
    sh      t4, 0x023E(s6)             # 0000023E
    sh      t5, 0x023C(s6)             # 0000023C
    swc1    $f8, 0x0294(s6)            # 00000294
    swc1    $f10, 0x02B4(s6)           # 000002B4
lbl_8094A2E0:
    beq     $zero, $zero, lbl_8094A6BC 
    lui     $at, 0x4348                # $at = 43480000
var_8094A2E8:
    lh      v0, 0x023E(s6)             # 0000023E
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0xA5D0             # s4 = 8011A5D0
    slti    $at, v0, 0x00BF            
    bne     $at, $zero, lbl_8094A338   
    nop
    lhu     t6, 0x0EE2(s4)             # 8011B4B2
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   a3, s2, 0x43A0             # a3 = 801043A0
    andi    t7, t6, 0x0008             # t7 = 00000000
    bne     t7, $zero, lbl_8094A338    
    addiu   a0, $zero, 0x304E          # a0 = 0000304E
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lh      v0, 0x023E(s6)             # 0000023E
lbl_8094A338:
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   $at, $zero, 0x00BE         # $at = 000000BE
    bne     v0, $at, lbl_8094A384      
    addiu   s4, s4, 0xA5D0             # s4 = 8011A5D0
    lui     $at, %hi(var_8094FBF0)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FBF0)($at) 
    lui     $at, %hi(var_8094FBF4)     # $at = 80950000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    swc1    $f4, 0x146C(s6)            # 0000146C
    lwc1    $f6, %lo(var_8094FBF4)($at) 
    lui     $at, %hi(var_8094FBF8)     # $at = 80950000
    or      a1, s6, $zero              # a1 = 00000000
    swc1    $f6, 0x1468(s6)            # 00001468
    lwc1    $f10, %lo(var_8094FBF8)($at) 
    sb      t9, 0x02C6(s6)             # 000002C6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f10, 0x1464(s6)           # 00001464
    jal     func_800218EC              
    lw      a0, 0x01D4($sp)            
lbl_8094A384:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    lwc1    $f4, 0x0028(s6)            # 00000028
    lui     $at, 0x433E                # $at = 433E0000
    addiu   a0, s6, 0x147C             # a0 = 0000147C
    c.lt.s  $f8, $f4                   
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a3, 0x3C03                 # a3 = 3C030000
    bc1fl   lbl_8094A3EC               
    mfc1    a2, $f30                   
    lw      t1, 0x0024(s6)             # 00000024
    lw      t0, 0x0028(s6)             # 00000028
    mtc1    $at, $f6                   # $f6 = 190.00
    sw      t1, 0x1458(s6)             # 00001458
    lw      t1, 0x002C(s6)             # 0000002C
    lui     $at, %hi(var_8094FBFC)     # $at = 80950000
    sw      t0, 0x145C(s6)             # 0000145C
    swc1    $f6, 0x1434(s6)            # 00001434
    sw      t1, 0x1460(s6)             # 00001460
    lwc1    $f10, %lo(var_8094FBFC)($at) 
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    swc1    $f10, 0x1438(s6)           # 00001438
    beq     $zero, $zero, lbl_8094A414 
    swc1    $f8, 0x143C(s6)            # 0000143C
    mfc1    a2, $f30                   
lbl_8094A3EC:
    jal     func_80064280              
    ori     a3, a3, 0x126E             # a3 = 3C03126E
    lh      a0, 0x0214(s6)             # 00000214
    sll     a0, a0, 15                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x147C(s6)            # 0000147C
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x1478(s6)            # 00001478
lbl_8094A414:
    lh      v0, 0x023E(s6)             # 0000023E
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    v0, $at, lbl_8094A434      
    addiu   $at, $zero, 0x0082         # $at = 00000082
    jal     func_800CAA70              
    addiu   a0, $zero, 0x006B          # a0 = 0000006B
    lh      v0, 0x023E(s6)             # 0000023E
    addiu   $at, $zero, 0x0082         # $at = 00000082
lbl_8094A434:
    bnel    v0, $at, lbl_8094A4B0      
    slti    $at, v0, 0x0065            
    lhu     t2, 0x0EE2(s4)             # 8011B4B2
    lw      a0, 0x01D4($sp)            
    lui     t8, 0x8012                 # t8 = 80120000
    andi    t3, t2, 0x0008             # t3 = 00000000
    bne     t3, $zero, lbl_8094A4AC    
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0xD700             # v0 = 0600D700
    sll     t5, v0,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addiu   t0, $zero, 0x00B4          # t0 = 000000B4
    addiu   t1, $zero, 0x0080          # t1 = 00000080
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addu    a2, t8, t9                 
    addu    a2, a2, $at                
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    jal     func_80020780              
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    lh      v0, 0x023E(s6)             # 0000023E
lbl_8094A4AC:
    slti    $at, v0, 0x0065            
lbl_8094A4B0:
    beq     $at, $zero, lbl_8094A4FC   
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    mtc1    $at, $f8                   # $f8 = 2.00
    mtc1    $at, $f4                   # $f4 = 2.00
    swc1    $f10, 0x1430(s6)           # 00001430
    swc1    $f8, 0x142C(s6)            # 0000142C
    swc1    $f4, 0x1428(s6)            # 00001428
    lwc1    $f6, 0x0024(s0)            # 00000024
    add.s   $f10, $f6, $f24            
    swc1    $f10, 0x1440(s6)           # 00001440
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f4, $f8, $f24             
    swc1    $f4, 0x1444(s6)            # 00001444
    lwc1    $f6, 0x002C(s0)            # 0000002C
    add.s   $f10, $f6, $f24            
    swc1    $f10, 0x1448(s6)           # 00001448
lbl_8094A4FC:
    lh      t3, 0x0212(s6)             # 00000212
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t3, $at, lbl_8094A608      
    lh      t8, 0x023C(s6)             # 0000023C
    lh      v0, 0x13F0(s6)             # 000013F0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    beq     v0, $zero, lbl_8094A548    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     v0, $at, lbl_8094A550      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8094A570      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8094A604      
    nop
    beq     $zero, $zero, lbl_8094A608 
    lh      t8, 0x023C(s6)             # 0000023C
lbl_8094A548:
    sh      t4, 0x0242(s6)             # 00000242
    sh      t5, 0x13F0(s6)             # 000013F0
lbl_8094A550:
    lh      t6, 0x0242(s6)             # 00000242
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x004B          # t8 = 0000004B
    bnel    t6, $zero, lbl_8094A608    
    lh      t8, 0x023C(s6)             # 0000023C
    sh      t7, 0x13F0(s6)             # 000013F0
    beq     $zero, $zero, lbl_8094A604 
    sh      t8, 0x0242(s6)             # 00000242
lbl_8094A570:
    lw      t0, 0x13F8(s6)             # 000013F8
    lh      v1, 0x0242(s6)             # 00000242
    lw      t9, 0x13FC(s6)             # 000013FC
    sw      t0, 0x02AC(s6)             # 000002AC
    lw      t0, 0x1400(s6)             # 00001400
    sw      t9, 0x02B0(s6)             # 000002B0
    bne     v1, $zero, lbl_8094A5EC    
    sw      t0, 0x02B4(s6)             # 000002B4
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    andi    t2, t1, 0x00FF             # t2 = 00000007
    sll     t3, t2,  2                 
    subu    t3, t3, t2                 
    lui     t4, %hi(var_8094F88C)      # t4 = 80950000
    addiu   t4, t4, %lo(var_8094F88C)  # t4 = 8094F88C
    sll     t3, t3,  2                 
    sh      $zero, 0x0238(s6)          # 00000238
    sb      t1, 0x02C4(s6)             # 000002C4
    addu    v0, t3, t4                 
    lwc1    $f8, 0x0000(v0)            # 00000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f22                  # $f22 = 200.00
    swc1    $f8, 0x02AC(s6)            # 000002AC
    lwc1    $f4, 0x0004(v0)            # 00000004
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    lh      v1, 0x0242(s6)             # 00000242
    add.s   $f6, $f4, $f22             
    add.s   $f10, $f6, $f24            
    swc1    $f10, 0x02B0(s6)           # 000002B0
    lwc1    $f8, 0x0008(v0)            # 00000008
    sh      t5, 0x13F0(s6)             # 000013F0
    swc1    $f8, 0x02B4(s6)            # 000002B4
lbl_8094A5EC:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_8094A604      
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t6, 0x021E(s6)             # 0000021E
    sh      t7, 0x020C(s6)             # 0000020C
lbl_8094A604:
    lh      t8, 0x023C(s6)             # 0000023C
lbl_8094A608:
    addiu   v0, s6, 0x13F8             # v0 = 000013F8
    bnel    t8, $zero, lbl_8094A6BC    
    lui     $at, 0x4348                # $at = 43480000
    lw      t0, 0x0000(v0)             # 000013F8
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t0, 0x005C(s1)             # 0000005C
    lw      t9, 0x0004(v0)             # 000013FC
    sw      t9, 0x0060(s1)             # 00000060
    lw      t0, 0x0008(v0)             # 00001400
    sw      t0, 0x0064(s1)             # 00000064
    lw      t2, 0x0000(v0)             # 000013F8
    sw      t2, 0x0074(s1)             # 00000074
    lw      t1, 0x0004(v0)             # 000013FC
    sw      t1, 0x0078(s1)             # 00000078
    lw      t2, 0x0008(v0)             # 00001400
    sw      t2, 0x007C(s1)             # 0000007C
    lw      t4, 0x1404(s6)             # 00001404
    sw      t4, 0x0050(s1)             # 00000050
    lw      t3, 0x1408(s6)             # 00001408
    sw      t3, 0x0054(s1)             # 00000054
    lw      t4, 0x140C(s6)             # 0000140C
    sw      t4, 0x0058(s1)             # 00000058
    lh      a1, 0x13F4(s6)             # 000013F4
    jal     func_8009D718              
    lw      a0, 0x01D4($sp)            
    sh      $zero, 0x13F4(s6)          # 000013F4
    lh      v0, 0x13F4(s6)             # 000013F4
    sh      v0, 0x13F0(s6)             # 000013F0
    sh      v0, 0x13F2(s6)             # 000013F2
    lw      a0, 0x01D4($sp)            
    jal     func_80052340              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x01D4($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t6, %hi(func_8094BF54)     # t6 = 80950000
    addiu   t6, t6, %lo(func_8094BF54) # t6 = 8094BF54
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0208(s6)             # 00000208
    sb      t7, 0x02C8(s6)             # 000002C8
    lhu     t8, 0x0EE2(s4)             # 8011B4B2
    ori     t9, t8, 0x0008             # t9 = 00000008
    sh      t9, 0x0EE2(s4)             # 8011B4B2
lbl_8094A6B8:
    lui     $at, 0x4348                # $at = 43480000
lbl_8094A6BC:
    mtc1    $at, $f22                  # $f22 = 200.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f28                  # $f28 = 100.00
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   s2, s2, 0x43A0             # s2 = 801043A0
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_80949340              
    lw      a1, 0x01D4($sp)            
    beq     $zero, $zero, lbl_8094A72C 
    lh      v0, 0x0212(s6)             # 00000212
    lui     $at, 0x40A0                # $at = 40A00000
lbl_8094A6F8:
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f28                  # $f28 = 100.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x4348                # $at = 43480000
    lui     s2, 0x8010                 # s2 = 80100000
    mtc1    $at, $f22                  # $f22 = 200.00
    addiu   s2, s2, 0x43A0             # s2 = 801043A0
    swc1    $f4, 0x0294(s6)            # 00000294
    lh      v0, 0x0212(s6)             # 00000212
lbl_8094A72C:
    slti    $at, v0, 0x0034            
    bne     $at, $zero, lbl_8094A774   
    slti    $at, v0, 0x0065            
    bne     $at, $zero, lbl_8094A760   
    addiu   t0, v0, 0xFF38             # t0 = FFFFFF38
    sltiu   $at, t0, 0x0006            
    beq     $at, $zero, lbl_8094B6BC   
    sll     t0, t0,  2                 
    lui     $at, %hi(var_8094FC08)     # $at = 80950000
    addu    $at, $at, t0               
    lw      t0, %lo(var_8094FC08)($at) 
    jr      t0                         
    nop
lbl_8094A760:
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beql    v0, $at, lbl_8094AD0C      
    lh      t6, 0x0214(s6)             # 00000214
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
lbl_8094A774:
    slti    $at, v0, 0x0033            
    bne     $at, $zero, lbl_8094A794   
    addiu   t1, v0, 0x0001             # t1 = 00000001
    addiu   $at, $zero, 0x0033         # $at = 00000033
    beq     v0, $at, lbl_8094ABC0      
    lui     t1, %hi(var_8094F8F8)      # t1 = 80950000
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
lbl_8094A794:
    slti    $at, v0, 0x0004            
    bne     $at, $zero, lbl_8094A7B0   
    addiu   $at, $zero, 0x0032         # $at = 00000032
    beql    v0, $at, lbl_8094AB5C      
    lui     $at, 0x442F                # $at = 442F0000
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
lbl_8094A7B0:
    sltiu   $at, t1, 0x0005            
    beq     $at, $zero, lbl_8094B6BC   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_8094FC20)     # $at = 80950000
    addu    $at, $at, t1               
    lw      t1, %lo(var_8094FC20)($at) 
    jr      t1                         
    nop
var_8094A7D0:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x01CF($sp)            
    lh      t3, 0x0238(s6)             # 00000238
    bnel    t3, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    lbu     t4, 0x00AF(s6)             # 000000AF
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    bnel    t4, $zero, lbl_8094A80C    
    lh      t7, 0x13F2(s6)             # 000013F2
    sh      t5, 0x0212(s6)             # 00000212
    sh      $zero, 0x0238(s6)          # 00000238
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t6, 0x023A(s6)             # 0000023A
    lh      t7, 0x13F2(s6)             # 000013F2
lbl_8094A80C:
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    lui     $at, %hi(var_8094FC34)     # $at = 80950000
    beq     t7, $zero, lbl_8094A824    
    nop
    beq     $zero, $zero, lbl_8094A8C4 
    sb      t8, 0x02C4(s6)             # 000002C4
lbl_8094A824:
    lwc1    $f20, %lo(var_8094FC34)($at) 
lbl_8094A828:
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    cfc1    t9, $f31                   
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f0                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_8094A8A0    
    mfc1    v0, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f6, $f0, $f6              
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_8094A894    
    nop
    mfc1    v0, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094A8AC 
    or      v0, v0, $at                # v0 = 80000000
lbl_8094A894:
    beq     $zero, $zero, lbl_8094A8AC 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f6                    
lbl_8094A8A0:
    nop
    bltz    v0, lbl_8094A894           
    nop
lbl_8094A8AC:
    lbu     t0, 0x02C4(s6)             # 000002C4
    ctc1    t9, $f31                   
    andi    v0, v0, 0x00FF             # v0 = 000000FF
    beq     t0, v0, lbl_8094A828       
    nop
    sb      v0, 0x02C4(s6)             # 000002C4
lbl_8094A8C4:
    lbu     t1, 0x02C4(s6)             # 000002C4
    lui     t3, %hi(var_8094F88C)      # t3 = 80950000
    addiu   t3, t3, %lo(var_8094F88C)  # t3 = 8094F88C
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  2                 
    addu    v0, t2, t3                 
    lwc1    $f10, 0x0000(v0)           # 000000FF
    lh      t4, 0x13F2(s6)             # 000013F2
    lui     $at, 0x447A                # $at = 447A0000
    swc1    $f10, 0x02AC(s6)           # 000002AC
    lwc1    $f8, 0x0004(v0)            # 00000103
    addiu   t5, $zero, 0x2742          # t5 = 00002742
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    add.s   $f4, $f8, $f22             
    mtc1    $zero, $f8                 # $f8 = 0.00
    add.s   $f6, $f4, $f24             
    mtc1    $at, $f4                   # $f4 = 1000.00
    swc1    $f6, 0x02B0(s6)            # 000002B0
    lwc1    $f10, 0x0008(v0)           # 00000107
    swc1    $f8, 0x0298(s6)            # 00000298
    swc1    $f4, 0x029C(s6)            # 0000029C
    beq     t4, $zero, lbl_8094A92C    
    swc1    $f10, 0x02B4(s6)           # 000002B4
    beq     $zero, $zero, lbl_8094A930 
    sh      t5, 0x0238(s6)             # 00000238
lbl_8094A92C:
    sh      t6, 0x0238(s6)             # 00000238
lbl_8094A930:
    lh      t8, 0x0222(s6)             # 00000222
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    swc1    $f28, 0x02A0(s6)           # 000002A0
    beq     t8, $zero, lbl_8094B6BC    
    sh      t7, 0x0212(s6)             # 00000212
    lh      t9, 0x0236(s6)             # 00000236
    sh      $zero, 0x0222(s6)          # 00000222
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0236(s6)             # 00000236
    lh      t1, 0x0236(s6)             # 00000236
    addiu   t4, $zero, 0x012C          # t4 = 0000012C
    lui     $at, 0x4461                # $at = 44610000
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8094A99C    
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    mtc1    $at, $f6                   # $f6 = 900.00
    lui     $at, 0x4396                # $at = 43960000
    sh      $zero, 0x0226(s6)          # 00000226
    mtc1    $at, $f10                  # $f10 = 300.00
    lh      t5, 0x0226(s6)             # 00000226
    sh      t3, 0x0212(s6)             # 00000212
    sh      t4, 0x0238(s6)             # 00000238
    swc1    $f6, 0x029C(s6)            # 0000029C
    swc1    $f10, 0x0268(s6)           # 00000268
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t5, 0x0224(s6)             # 00000224
lbl_8094A99C:
    sh      t6, 0x0212(s6)             # 00000212
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
var_8094A9A8:
    lh      t7, 0x0238(s6)             # 00000238
    lwc1    $f8, 0x01C0($sp)           
    bnel    t7, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    mul.s   $f4, $f8, $f8              
    lwc1    $f6, 0x0098($sp)           
    lwc1    $f8, 0x0094($sp)           
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    add.s   $f10, $f6, $f4             
    add.s   $f0, $f10, $f8             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f28                  
    nop
    bc1fl   lbl_8094B6C0               
    lh      t9, 0x0234(s6)             # 00000234
    lbu     t9, 0x02C4(s6)             # 000002C4
    lui     $at, %hi(var_8094F890)     # $at = 80950000
    sh      t8, 0x0212(s6)             # 00000212
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    $at, $at, t0               
    lwc1    $f6, %lo(var_8094F890)($at) 
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lui     $at, %hi(var_8094FC38)     # $at = 80950000
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    sub.s   $f10, $f6, $f4             
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x02AC(s6)            # 000002AC
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    swc1    $f10, 0x02B0(s6)           # 000002B0
    lwc1    $f8, %lo(var_8094FC38)($at) 
    lwc1    $f10, 0x02B4(s6)           # 000002B4
    sh      t1, 0x0238(s6)             # 00000238
    sh      t2, 0x021E(s6)             # 0000021E
    swc1    $f6, 0x02A0(s6)            # 000002A0
    swc1    $f4, 0x02B8(s6)            # 000002B8
    swc1    $f8, 0x029C(s6)            # 0000029C
    beq     $zero, $zero, lbl_8094B6BC 
    swc1    $f10, 0x02C0(s6)           # 000002C0
var_8094AA4C:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x01CF($sp)            
    lh      t4, 0x0238(s6)             # 00000238
    lui     t5, %hi(func_8094BF54)     # t5 = 80950000
    addiu   t5, t5, %lo(func_8094BF54) # t5 = 8094BF54
    bne     t4, $zero, lbl_8094B6BC    
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t5, 0x0208(s6)             # 00000208
    beq     $zero, $zero, lbl_8094B6BC 
    sb      t6, 0x02C8(s6)             # 000002C8
var_8094AA74:
    lh      t7, 0x0238(s6)             # 00000238
    lwc1    $f2, 0x01C0($sp)           
    bnel    t7, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    mul.s   $f6, $f2, $f2              
    lwc1    $f8, 0x0098($sp)           
    lwc1    $f10, 0x0094($sp)          
    addiu   t0, $zero, 0x4000          # t0 = 00004000
    lui     $at, %hi(var_8094F890)     # $at = 80950000
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    add.s   $f4, $f8, $f6              
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    addiu   a3, $zero, 0x5000          # a3 = 00005000
    add.s   $f0, $f4, $f10             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f28                  
    nop
    bc1fl   lbl_8094B6C0               
    lh      t9, 0x0234(s6)             # 00000234
    lw      t9, 0x02AC(s6)             # 000002AC
    lbu     t1, 0x02C4(s6)             # 000002C4
    lw      t8, 0x02B0(s6)             # 000002B0
    sw      t9, 0x0024(s6)             # 00000024
    lw      t9, 0x02B4(s6)             # 000002B4
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  2                 
    sh      $zero, 0x0212(s6)          # 00000212
    sh      t0, 0x0030(s6)             # 00000030
    addu    $at, $at, t2               
    sw      t8, 0x0028(s6)             # 00000028
    sw      t9, 0x002C(s6)             # 0000002C
    lwc1    $f8, %lo(var_8094F890)($at) 
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    add.s   $f6, $f8, $f22             
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x02AC(s6)            # 000002AC
    sh      t3, 0x0240(s6)             # 00000240
    swc1    $f6, 0x02B0(s6)            # 000002B0
    lwc1    $f6, 0x02B4(s6)            # 000002B4
    swc1    $f4, 0x029C(s6)            # 0000029C
    swc1    $f10, 0x02A0(s6)           # 000002A0
    swc1    $f8, 0x02B8(s6)            # 000002B8
    swc1    $f6, 0x02C0(s6)            # 000002C0
    jal     func_80026C84              
    lw      a0, 0x01D4($sp)            
    lh      t4, 0x13F2(s6)             # 000013F2
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    beq     t4, $zero, lbl_8094AB50    
    nop
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t5, 0x0238(s6)             # 00000238
lbl_8094AB50:
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t6, 0x0238(s6)             # 00000238
    lui     $at, 0x442F                # $at = 442F0000
lbl_8094AB5C:
    mtc1    $at, $f0                   # $f0 = 700.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f4, 0x0294(s6)            # 00000294
    lwc1    $f4, 0x0028(s6)            # 00000028
    mtc1    $at, $f8                   # $f8 = -300.00
    swc1    $f22, 0x02A0(s6)           # 000002A0
    c.lt.s  $f0, $f4                   
    lui     $at, %hi(var_8094FC3C)     # $at = 80950000
    swc1    $f0, 0x02B0(s6)            # 000002B0
    swc1    $f10, 0x02AC(s6)           # 000002AC
    swc1    $f8, 0x02B4(s6)            # 000002B4
    lwc1    $f6, %lo(var_8094FC3C)($at) 
    addiu   t7, $zero, 0x0033          # t7 = 00000033
    bc1f    lbl_8094B6BC               
    swc1    $f6, 0x029C(s6)            # 0000029C
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    sh      t7, 0x0212(s6)             # 00000212
    sh      t8, 0x0238(s6)             # 00000238
    sh      t9, 0x023C(s6)             # 0000023C
    beq     $zero, $zero, lbl_8094B6BC 
    sh      $zero, 0x022C(s6)          # 0000022C
lbl_8094ABC0:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    lh      v1, 0x022C(s6)             # 0000022C
    swc1    $f22, 0x02A0(s6)           # 000002A0
    lui     $at, %hi(var_8094FC40)     # $at = 80950000
    swc1    $f10, 0x0294(s6)           # 00000294
    lwc1    $f8, %lo(var_8094FC40)($at) 
    sll     t0, v1,  2                 
    subu    t0, t0, v1                 
    sll     t0, t0,  2                 
    addiu   t1, t1, %lo(var_8094F8F8)  # t1 = FFFFF8F8
    addu    v0, t0, t1                 
    swc1    $f8, 0x029C(s6)            # 0000029C
    lwc1    $f6, 0x0000(v0)            # 00000000
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f10                  # $f10 = 900.00
    swc1    $f6, 0x02AC(s6)            # 000002AC
    lwc1    $f4, 0x0004(v0)            # 00000004
    lh      t2, 0x0238(s6)             # 00000238
    mfc1    a2, $f24                   
    add.s   $f8, $f4, $f10             
    mfc1    a3, $f24                   
    or      a1, s6, $zero              # a1 = 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    swc1    $f8, 0x02B0(s6)            # 000002B0
    lwc1    $f6, 0x0008(v0)            # 00000008
    addiu   t4, v1, 0x0001             # t4 = 00000001
    bne     t2, $zero, lbl_8094AC54    
    swc1    $f6, 0x02B4(s6)            # 000002B4
    sh      t4, 0x022C(s6)             # 0000022C
    lh      t5, 0x022C(s6)             # 0000022C
    addiu   t3, $zero, 0x0019          # t3 = 00000019
    sh      t3, 0x0238(s6)             # 00000238
    slti    $at, t5, 0x0006            
    bnel    $at, $zero, lbl_8094AC58   
    lw      a0, 0x01D4($sp)            
    sh      $zero, 0x022C(s6)          # 0000022C
lbl_8094AC54:
    lw      a0, 0x01D4($sp)            
lbl_8094AC58:
    swc1    $f28, 0x0010($sp)          
    jal     func_80021E6C              
    sw      t6, 0x0014($sp)            
    lh      t7, 0x023A(s6)             # 0000023A
    addiu   a0, s6, 0x026C             # a0 = 0000026C
    lui     a2, 0x447A                 # a2 = 447A0000
    bnel    t7, $zero, lbl_8094ACE0    
    lwc1    $f10, 0x026C(s6)           # 0000026C
    lhu     t8, 0x0088(s6)             # 00000088
    lui     $at, %hi(var_8094FC44)     # $at = 80950000
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    andi    t9, t8, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_8094ACEC    
    addiu   a0, $zero, 0x2802          # a0 = 00002802
    lwc1    $f4, %lo(var_8094FC44)($at) 
    lui     t1, 0x8010                 # t1 = 80100000
    sh      t0, 0x023A(s6)             # 0000023A
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    swc1    $f4, 0x026C(s6)            # 0000026C
    sw      t1, 0x0014($sp)            
    sw      s2, 0x0010($sp)            
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    or      a3, s2, $zero              # a3 = 801043A0
    lw      a0, 0x01D4($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80026C84              
    addiu   a3, $zero, 0x7530          # a3 = 00007530
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    beq     $zero, $zero, lbl_8094ACEC 
    sh      t2, 0x022A(s6)             # 0000022A
    lwc1    $f10, 0x026C(s6)           # 0000026C
lbl_8094ACE0:
    mfc1    a1, $f30                   
    jal     func_800642F0              
    swc1    $f10, 0x01B0($sp)          
lbl_8094ACEC:
    lh      t3, 0x023C(s6)             # 0000023C
    bnel    t3, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    sh      $zero, 0x0212(s6)          # 00000212
    sh      $zero, 0x0238(s6)          # 00000238
    beq     $zero, $zero, lbl_8094B6BC 
    sh      $zero, 0x0222(s6)          # 00000222
    lh      t6, 0x0214(s6)             # 00000214
lbl_8094AD0C:
    lw      t4, 0x0004(s6)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    mtc1    t6, $f8                    # $f8 = 0.00
    or      t5, t4, $at                # t5 = 01000000
    sw      t5, 0x0004(s6)             # 00000004
    cvt.s.w $f6, $f8                   
    lui     $at, %hi(var_8094FC48)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FC48)($at) 
    mul.s   $f10, $f6, $f4             
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f6, 0x0268(s6)            # 00000268
    lwc1    $f8, 0x0024(s3)            # 00000024
    mul.s   $f10, $f0, $f4             
    lh      v1, 0x0238(s6)             # 00000238
    swc1    $f8, 0x02AC(s6)            # 000002AC
    lwc1    $f4, 0x0028(s3)            # 00000028
    andi    t8, v1, 0x003F             # t8 = 00000000
    add.s   $f2, $f6, $f10             
    mtc1    $at, $f10                  # $f10 = 30.00
    slti    $at, v1, 0x01C2            
    add.s   $f6, $f4, $f2              
    add.s   $f8, $f6, $f10             
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f8, 0x02B0(s6)            # 000002B0
    lwc1    $f4, 0x002C(s3)            # 0000002C
    swc1    $f6, 0x02A0(s6)            # 000002A0
    bne     t8, $zero, lbl_8094ADB8    
    swc1    $f4, 0x02B4(s6)            # 000002B4
    beq     $at, $zero, lbl_8094ADB8   
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sh      t9, 0x021E(s6)             # 0000021E
    jal     func_8094982C              
    or      a0, s6, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8094ADB8    
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sh      t0, 0x020C(s6)             # 0000020C
lbl_8094ADB8:
    lh      t1, 0x0220(s6)             # 00000220
    bnel    t1, $zero, lbl_8094ADF8    
    sh      $zero, 0x0212(s6)          # 00000212
    lh      t2, 0x0238(s6)             # 00000238
    lui     $at, 0x428C                # $at = 428C0000
    beql    t2, $zero, lbl_8094ADF8    
    sh      $zero, 0x0212(s6)          # 00000212
    lwc1    $f10, 0x0028(s3)           # 00000028
    mtc1    $at, $f8                   # $f8 = 70.00
    addiu   a0, s6, 0x0268             # a0 = 00000268
    lui     a1, 0x4248                 # a1 = 42480000
    c.lt.s  $f10, $f8                  
    nop
    bc1fl   lbl_8094AE08               
    mfc1    a2, $f30                   
    sh      $zero, 0x0212(s6)          # 00000212
lbl_8094ADF8:
    sh      $zero, 0x0238(s6)          # 00000238
    beq     $zero, $zero, lbl_8094B6BC 
    sh      $zero, 0x0222(s6)          # 00000222
    mfc1    a2, $f30                   
lbl_8094AE08:
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
var_8094AE18:
    lwc1    $f0, 0x0090($sp)           
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f0, $f24                  
    nop
    bc1fl   lbl_8094AE38               
    lh      t3, 0x0238(s6)             # 00000238
    sh      $zero, 0x0238(s6)          # 00000238
    lh      t3, 0x0238(s6)             # 00000238
lbl_8094AE38:
    bnel    t3, $zero, lbl_8094AEC0    
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f20                  # $f20 = 390.00
    mfc1    t7, $f4                    
    nop
    addiu   t8, t7, 0x000A             # t8 = 0000000A
    sh      t8, 0x0238(s6)             # 00000238
lbl_8094AE68:
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    swc1    $f0, 0x02AC(s6)            # 000002AC
    swc1    $f20, 0x02B0(s6)           # 000002B0
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lwc1    $f6, 0x02AC(s6)            # 000002AC
    lwc1    $f10, 0x0024(s6)           # 00000024
    lwc1    $f8, 0x002C(s6)            # 0000002C
    swc1    $f0, 0x02B4(s6)            # 000002B4
    sub.s   $f2, $f6, $f10             
    sub.s   $f12, $f0, $f8             
    mul.s   $f4, $f2, $f2              
    nop
    mul.s   $f6, $f12, $f12            
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f28, $f0                  
    nop
    bc1f    lbl_8094AE68               
    nop
    lui     $at, 0x447A                # $at = 447A0000
lbl_8094AEC0:
    mtc1    $at, $f10                  # $f10 = 1000.00
    swc1    $f22, 0x02A0(s6)           # 000002A0
    lui     $at, %hi(var_8094FC4C)     # $at = 80950000
    swc1    $f10, 0x02A4(s6)           # 000002A4
    lwc1    $f8, %lo(var_8094FC4C)($at) 
    lui     a1, 0x3E99                 # a1 = 3E990000
    mfc1    a2, $f30                   
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0x999A             # a1 = 3E99999A
    or      a0, s5, $zero              # a0 = 00000270
    jal     func_80064280              
    swc1    $f8, 0x029C(s6)            # 0000029C
    lh      t9, 0x023A(s6)             # 0000023A
    addiu   t0, $zero, 0x00C9          # t0 = 000000C9
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    bnel    t9, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    sh      t0, 0x0212(s6)             # 00000212
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t1, 0x0238(s6)             # 00000238
var_8094AF14:
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f20                  # $f20 = 390.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 2000.00
    lui     a1, 0x3E99                 # a1 = 3E990000
    mfc1    a2, $f30                   
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    swc1    $f22, 0x02A0(s6)           # 000002A0
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0x999A             # a1 = 3E99999A
    or      a0, s5, $zero              # a0 = 00000270
    swc1    $f20, 0x02B0(s6)           # 000002B0
    swc1    $f10, 0x02A4(s6)           # 000002A4
    swc1    $f4, 0x02AC(s6)            # 000002AC
    swc1    $f6, 0x02B4(s6)            # 000002B4
    jal     func_80064280              
    swc1    $f8, 0x029C(s6)            # 0000029C
    lh      t2, 0x0238(s6)             # 00000238
    bnel    t2, $zero, lbl_8094AFC4    
    lh      t9, 0x0214(s6)             # 00000214
    lh      t3, 0x0214(s6)             # 00000214
    andi    t4, t3, 0x0003             # t4 = 00000000
    bnel    t4, $zero, lbl_8094AFC4    
    lh      t9, 0x0214(s6)             # 00000214
    lh      v0, 0x020E(s6)             # 0000020E
    addiu   t7, $zero, 0x00CA          # t7 = 000000CA
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    beq     v0, $zero, lbl_8094AFB8    
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x020E(s6)             # 0000020E
    lh      t6, 0x020E(s6)             # 0000020E
    bnel    t6, $zero, lbl_8094AFC4    
    lh      t9, 0x0214(s6)             # 00000214
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    beq     $zero, $zero, lbl_8094AFC4 
    lh      t9, 0x0214(s6)             # 00000214
lbl_8094AFB8:
    sh      t7, 0x0212(s6)             # 00000212
    sh      t8, 0x0238(s6)             # 00000238
    lh      t9, 0x0214(s6)             # 00000214
lbl_8094AFC4:
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t3, $sp, 0x017C            # t3 = FFFFFFAC
    andi    t0, t9, 0x001F             # t0 = 00000000
    bne     t0, $zero, lbl_8094AFDC    
    lui     t4, %hi(var_8094F940)      # t4 = 80950000
    sh      t1, 0x021E(s6)             # 0000021E
lbl_8094AFDC:
    lh      t2, 0x020E(s6)             # 0000020E
    addiu   t4, t4, %lo(var_8094F940)  # t4 = 8094F940
    beql    t2, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    lw      t6, 0x0000(t4)             # 8094F940
    lw      t5, 0x0004(t4)             # 8094F944
    lui     t8, %hi(var_8094F94C)      # t8 = 80950000
    sw      t6, 0x0000(t3)             # FFFFFFAC
    lw      t6, 0x0008(t4)             # 8094F948
    addiu   t8, t8, %lo(var_8094F94C)  # t8 = 8094F94C
    sw      t5, 0x0004(t3)             # FFFFFFB0
    sw      t6, 0x0008(t3)             # FFFFFFB4
    lw      t0, 0x0000(t8)             # 8094F94C
    addiu   t7, $sp, 0x0164            # t7 = FFFFFF94
    lw      t9, 0x0004(t8)             # 8094F950
    sw      t0, 0x0000(t7)             # FFFFFF94
    lw      t0, 0x0008(t8)             # 8094F954
    sw      t9, 0x0004(t7)             # FFFFFF98
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t0, 0x0008(t7)             # FFFFFF9C
    lbu     t1, 0x0210(s6)             # 00000210
    lw      t2, 0x01D4($sp)            
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    bne     t1, $zero, lbl_8094B050    
    addiu   a0, $zero, 0x30DA          # a0 = 000030DA
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2               
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_8094B050:
    sb      t3, 0x0210(s6)             # 00000210
    sh      t4, 0x0150($sp)            
    lh      t5, 0x0214(s6)             # 00000214
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    andi    t6, t5, 0x001C             # t6 = 00000000
    beq     t6, $zero, lbl_8094B084    
    or      a3, s2, $zero              # a3 = 801043A0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    jal     func_800C806C              
    sw      s2, 0x0010($sp)            
lbl_8094B084:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f24                  # $f24 = 3.00
    lui     $at, %hi(var_8094FC50)     # $at = 80950000
    lwc1    $f22, %lo(var_8094FC50)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s3, $sp, 0x0158            # s3 = FFFFFF88
    addiu   s2, $sp, 0x0170            # s2 = FFFFFFA0
    addiu   s1, $sp, 0x0188            # s1 = FFFFFFB8
lbl_8094B0AC:
    lui     $at, %hi(var_8094FC54)     # $at = 80950000
    lwc1    $f12, %lo(var_8094FC54)($at) 
    jal     func_80026D64              
    addiu   s4, s6, 0x1960             # s4 = 00001960
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, %hi(var_8094FC58)     # $at = 80950000
    mfc1    t9, $f6                    
    mov.s   $f12, $f20                 
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  2                 
    addu    v0, s6, t2                 
    lwc1    $f10, 0x077C(v0)           # 0000077C
    swc1    $f10, 0x0188($sp)          
    lwc1    $f8, 0x0780(v0)            # 00000780
    sub.s   $f6, $f8, $f4              
    lwc1    $f8, %lo(var_8094FC58)($at) 
    swc1    $f6, 0x018C($sp)           
    lwc1    $f10, 0x0784(v0)           # 00000784
    swc1    $f8, 0x0168($sp)           
    jal     func_80026D64              
    swc1    $f10, 0x0190($sp)          
    trunc.w.s $f4, $f0                   
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0014($sp)            
    lw      a0, 0x01D4($sp)            
    mfc1    t4, $f4                    
    or      a1, s1, $zero              # a1 = FFFFFFB8
    addiu   a2, $sp, 0x017C            # a2 = FFFFFFAC
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    addiu   t7, t6, 0x0028             # t7 = 00000028
    sw      t7, 0x0010($sp)            
    jal     func_8001D8C8              
    addiu   a3, $sp, 0x0164            # a3 = FFFFFF94
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8094B14C:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0170($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0174($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0178($sp)           
    swc1    $f22, 0x015C($sp)          
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    swc1    $f0, 0x0158($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    swc1    $f0, 0x0160($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    trunc.w.s $f6, $f0                   
    or      a0, s4, $zero              # a0 = 00001960
    or      a1, s1, $zero              # a1 = FFFFFFB8
    or      a2, s2, $zero              # a2 = FFFFFFA0
    mfc1    t0, $f6                    
    or      a3, s3, $zero              # a3 = FFFFFF88
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    addiu   t3, t2, 0x0008             # t3 = 00000008
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    jal     func_80948F60              
    swc1    $f8, 0x0010($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x000F            
    bne     $at, $zero, lbl_8094B14C   
    nop
    lh      t4, 0x0150($sp)            
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slt     $at, s5, t4                
    bne     $at, $zero, lbl_8094B0AC   
    nop
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
var_8094B208:
    lh      v1, 0x0238(s6)             # 00000238
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    slti    $at, v1, 0x0012            
    sh      v0, 0x0234(s6)             # 00000234
    beq     $at, $zero, lbl_8094B234   
    sb      t5, 0x0210(s6)             # 00000210
    sll     t6, v1,  1                 
    addu    t7, s6, t6                 
    sh      v0, 0x13C0(t7)             # 000013C0
    lh      v1, 0x0238(s6)             # 00000238
lbl_8094B234:
    bne     v1, $zero, lbl_8094B270    
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f24                  # $f24 = 90.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    addiu   t8, $zero, 0x00CB          # t8 = 000000CB
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    sh      t8, 0x0212(s6)             # 00000212
    sh      t9, 0x0238(s6)             # 00000238
    sh      $zero, 0x022C(s6)          # 0000022C
    swc1    $f24, 0x0028(s3)           # FFFFFFB0
    swc1    $f4, 0x0024(s3)            # FFFFFFAC
    swc1    $f6, 0x002C(s3)            # FFFFFFB4
lbl_8094B270:
    beq     $zero, $zero, lbl_8094B6C0 
    lh      t9, 0x0234(s6)             # 00000234
var_8094B278:
    lh      t0, 0x0238(s6)             # 00000238
    addiu   t1, $zero, 0x00CC          # t1 = 000000CC
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    bnel    t0, $zero, lbl_8094B6C0    
    lh      t9, 0x0234(s6)             # 00000234
    sh      t1, 0x0212(s6)             # 00000212
    sh      t2, 0x0238(s6)             # 00000238
    beq     $zero, $zero, lbl_8094B6BC 
    sh      $zero, 0x0234(s6)          # 00000234
var_8094B29C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      v1, 0x0238(s6)             # 00000238
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f0, 0x0294(s6)            # 00000294
    swc1    $f0, 0x0068(s6)            # 00000068
    swc1    $f0, 0x029C(s6)            # 0000029C
    bne     v1, $at, lbl_8094B2F8      
    swc1    $f0, 0x0298(s6)            # 00000298
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f10                  # $f10 = 900.00
    lui     $at, 0x4316                # $at = 43160000
    sh      $zero, 0x0032(s6)          # 00000032
    mtc1    $at, $f8                   # $f8 = 150.00
    lh      t3, 0x0032(s6)             # 00000032
    addiu   t4, $zero, 0x1200          # t4 = 00001200
    swc1    $f0, 0x0024(s6)            # 00000024
    sh      t4, 0x00B8(s6)             # 000000B8
    swc1    $f0, 0x005C(s6)            # 0000005C
    swc1    $f0, 0x0064(s6)            # 00000064
    lh      v1, 0x0238(s6)             # 00000238
    swc1    $f10, 0x0028(s6)           # 00000028
    swc1    $f8, 0x002C(s6)            # 0000002C
    sh      t3, 0x0030(s6)             # 00000030
lbl_8094B2F8:
    bne     v1, $zero, lbl_8094B4A8    
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f4                   # $f4 = 110.00
    lwc1    $f6, 0x0028(s6)            # 00000028
    lui     $at, 0x42DC                # $at = 42DC0000
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8094B49C               
    lwc1    $f8, 0x0060(s6)            # 00000060
    lh      v1, 0x022C(s6)             # 0000022C
    mtc1    $at, $f10                  # $f10 = 110.00
    swc1    $f0, 0x0060(s6)            # 00000060
    bne     v1, $zero, lbl_8094B4AC    
    swc1    $f10, 0x0028(s6)           # 00000028
    addiu   t5, v1, 0x0001             # t5 = 00000001
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    lui     t8, 0x8010                 # t8 = 80100000
    sh      t5, 0x022C(s6)             # 0000022C
    sh      t6, 0x023A(s6)             # 0000023A
    sh      t7, 0x0232(s6)             # 00000232
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      s2, 0x0010($sp)            
    addiu   a0, $zero, 0x3889          # a0 = 00003889
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    or      a3, s2, $zero              # a3 = FFFFFFA0
    lw      a0, 0x01D4($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f22                  # $f22 = 300.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s3, %hi(var_8094F964)      # s3 = 80950000
    lui     s2, %hi(var_8094F958)      # s2 = 80950000
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s2, s2, %lo(var_8094F958)  # s2 = 8094F958
    addiu   s3, s3, %lo(var_8094F964)  # s3 = 8094F964
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s4, s6, 0x1960             # s4 = 00001960
    addiu   s1, $sp, 0x0138            # s1 = FFFFFF68
    addiu   s0, $sp, 0x0144            # s0 = FFFFFF74
    lw      t0, 0x0000(s2)             # 8094F958
lbl_8094B3B0:
    lw      t2, 0x0000(s3)             # 8094F964
    lw      t9, 0x0004(s2)             # 8094F95C
    sw      t0, 0x0000(s0)             # FFFFFF74
    sw      t2, 0x0000(s1)             # FFFFFF68
    lw      t0, 0x0008(s2)             # 8094F960
    lw      t2, 0x0008(s3)             # 8094F96C
    lw      t1, 0x0004(s3)             # 8094F968
    mov.s   $f12, $f20                 
    sw      t9, 0x0004(s0)             # FFFFFF78
    sw      t0, 0x0008(s0)             # FFFFFF7C
    sw      t2, 0x0008(s1)             # FFFFFF70
    jal     func_80026D90              
    sw      t1, 0x0004(s1)             # FFFFFF6C
    swc1    $f0, 0x0144($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f30                 
    swc1    $f0, 0x0148($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lui     $at, %hi(var_8094FC5C)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FC5C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f0, 0x014C($sp)           
    jal     func_80026D90              
    swc1    $f8, 0x013C($sp)           
    lwc1    $f4, 0x0024(s6)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x012C($sp)           
    lwc1    $f10, 0x0028(s6)           # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f8, $f0, $f10             
    jal     func_80026D90              
    swc1    $f8, 0x0130($sp)           
    lwc1    $f4, 0x002C(s6)            # 0000002C
    mov.s   $f12, $f28                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D64              
    swc1    $f6, 0x0134($sp)           
    add.s   $f10, $f0, $f22            
    or      a0, s4, $zero              # a0 = 00001960
    addiu   a1, $sp, 0x012C            # a1 = FFFFFF5C
    or      a2, s0, $zero              # a2 = FFFFFF74
    swc1    $f10, 0x0010($sp)          
    jal     func_809490FC              
    or      a3, s1, $zero              # a3 = FFFFFF68
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x000F            
    bnel    $at, $zero, lbl_8094B3B0   
    lw      t0, 0x0000(s2)             # 8094F958
    beq     $zero, $zero, lbl_8094B4B0 
    lh      t3, 0x023A(s6)             # 0000023A
    lwc1    $f8, 0x0060(s6)            # 00000060
lbl_8094B49C:
    sub.s   $f4, $f8, $f30             
    beq     $zero, $zero, lbl_8094B4AC 
    swc1    $f4, 0x0060(s6)            # 00000060
lbl_8094B4A8:
    swc1    $f0, 0x0060(s6)            # 00000060
lbl_8094B4AC:
    lh      t3, 0x023A(s6)             # 0000023A
lbl_8094B4B0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t4, $zero, 0x00CD          # t4 = 000000CD
    bne     t3, $at, lbl_8094B6BC      
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    sh      t4, 0x0212(s6)             # 00000212
    beq     $zero, $zero, lbl_8094B6BC 
    sh      t5, 0x0238(s6)             # 00000238
var_8094B4CC:
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 110.00
    lh      v1, 0x0238(s6)             # 00000238
    swc1    $f6, 0x0060(s6)            # 00000060
    swc1    $f10, 0x0028(s6)           # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    slti    $at, v1, 0x0032            
    swc1    $f10, 0x0298(s6)           # 00000298
    swc1    $f6, 0x029C(s6)            # 0000029C
    swc1    $f8, 0x0294(s6)            # 00000294
    beq     $at, $zero, lbl_8094B62C   
    swc1    $f4, 0x0068(s6)            # 00000068
    blez    v1, lbl_8094B62C           
    addiu   s0, $sp, 0x0114            # s0 = FFFFFF44
    addiu   s1, $sp, 0x0108            # s1 = FFFFFF38
    lui     t6, %hi(var_8094F970)      # t6 = 80950000
    addiu   t6, t6, %lo(var_8094F970)  # t6 = 8094F970
    lw      t8, 0x0000(t6)             # 8094F970
    lui     t9, %hi(var_8094F97C)      # t9 = 80950000
    addiu   t9, t9, %lo(var_8094F97C)  # t9 = 8094F97C
    sw      t8, 0x0000(s0)             # FFFFFF44
    lw      t7, 0x0004(t6)             # 8094F974
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t7, 0x0004(s0)             # FFFFFF48
    lw      t8, 0x0008(t6)             # 8094F978
    addiu   a0, $zero, 0x301C          # a0 = 0000301C
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    sw      t8, 0x0008(s0)             # FFFFFF4C
    lw      t1, 0x0000(t9)             # 8094F97C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s2, $zero              # a3 = 8094F958
    sw      t1, 0x0000(s1)             # FFFFFF38
    lw      t0, 0x0004(t9)             # 8094F980
    sw      t0, 0x0004(s1)             # FFFFFF3C
    lw      t1, 0x0008(t9)             # 8094F984
    sw      t1, 0x0008(s1)             # FFFFFF40
    sw      t2, 0x0014($sp)            
    jal     func_800C806C              
    sw      s2, 0x0010($sp)            
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D90              
    nop
    lwc1    $f8, 0x0024(s6)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f4, $f0, $f8              
    jal     func_80026D90              
    swc1    $f4, 0x0120($sp)           
    lwc1    $f6, 0x0028(s6)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    add.s   $f10, $f0, $f6             
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    sub.s   $f4, $f10, $f8             
    jal     func_80026D90              
    swc1    $f4, 0x0124($sp)           
    lwc1    $f6, 0x002C(s6)            # 0000002C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    add.s   $f10, $f0, $f6             
    lui     $at, %hi(var_8094FC60)     # $at = 80950000
    lwc1    $f6, %lo(var_8094FC60)($at) 
    lui     $at, 0x4170                # $at = 41700000
    add.s   $f4, $f10, $f8             
    mtc1    $at, $f12                  # $f12 = 15.00
    swc1    $f6, 0x010C($sp)           
    jal     func_80026D64              
    swc1    $f4, 0x0128($sp)           
    trunc.w.s $f10, $f0                  
    lw      a0, 0x01D4($sp)            
    addiu   a1, $sp, 0x0120            # a1 = FFFFFF50
    or      a2, s0, $zero              # a2 = FFFFFF44
    mfc1    t4, $f10                   
    or      a3, s1, $zero              # a3 = FFFFFF38
    sw      $zero, 0x0014($sp)         
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    addiu   t7, t6, 0x001E             # t7 = 0000001E
    jal     func_8001D8C8              
    sw      t7, 0x0010($sp)            
    lh      v1, 0x0238(s6)             # 00000238
lbl_8094B62C:
    slti    $at, v1, 0x0014            
    beq     $at, $zero, lbl_8094B658   
    addiu   a0, s6, 0x0050             # a0 = 00000050
    mfc1    a1, $f30                   
    lui     a2, 0x3B23                 # a2 = 3B230000
    jal     func_800642F0              
    ori     a2, a2, 0xD70A             # a2 = 3B23D70A
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_80020F88              
    lw      a1, 0x0050(s6)             # 00000050
    lh      v1, 0x0238(s6)             # 00000238
lbl_8094B658:
    bne     v1, $zero, lbl_8094B680    
    lui     $at, 0x447A                # $at = 447A0000
    lwc1    $f8, 0x0028(s6)            # 00000028
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     t8, %hi(func_8094BF54)     # t8 = 80950000
    addiu   t8, t8, %lo(func_8094BF54) # t8 = 8094BF54
    sub.s   $f6, $f8, $f4              
    sw      t8, 0x0208(s6)             # 00000208
    lh      v1, 0x0238(s6)             # 00000238
    swc1    $f6, 0x0028(s6)            # 00000028
lbl_8094B680:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v1, $at, lbl_8094B6BC      
    lw      a1, 0x01D4($sp)            
    lwc1    $f10, 0x0028(s6)           # 00000028
    lw      a3, 0x0024(s6)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f10, 0x0010($sp)          
    lwc1    $f8, 0x002C(s6)            # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)           
lbl_8094B6BC:
    lh      t9, 0x0234(s6)             # 00000234
lbl_8094B6C0:
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f24                  # $f24 = 90.00
    bne     t9, $zero, lbl_8094BF14    
    lwc1    $f4, 0x01B4($sp)           
    lwc1    $f10, 0x0298(s6)           # 00000298
    trunc.w.s $f6, $f4                   
    addiu   a0, s6, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    trunc.w.s $f8, $f10                  
    mfc1    a1, $f6                    
    mfc1    a3, $f8                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    jal     func_80064624              
    sra     a3, a3, 16                 
    lh      v0, 0x0212(s6)             # 00000212
    addiu   $at, $zero, 0x0064         # $at = 00000064
    beq     v0, $at, lbl_8094B714      
    addiu   $at, $zero, 0x0065         # $at = 00000065
    bne     v0, $at, lbl_8094B75C      
lbl_8094B714:
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f6                   # $f6 = 110.00
    lwc1    $f4, 0x0028(s6)            # 00000028
    lwc1    $f10, 0x01B0($sp)          
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8094B760               
    lwc1    $f8, 0x01B0($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s6, 0x0028             # a0 = 00000028
    lui     a1, 0x42DC                 # a1 = 42DC0000
    c.lt.s  $f10, $f0                  
    lui     a3, 0x40A0                 # a3 = 40A00000
    bc1fl   lbl_8094B760               
    lwc1    $f8, 0x01B0($sp)           
    mfc1    a2, $f30                   
    jal     func_80064280              
    swc1    $f0, 0x01B0($sp)           
lbl_8094B75C:
    lwc1    $f8, 0x01B0($sp)           
lbl_8094B760:
    lwc1    $f6, 0x0298(s6)            # 00000298
    addiu   a0, s6, 0x0030             # a0 = 00000030
    trunc.w.s $f4, $f8                   
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    trunc.w.s $f10, $f6                  
    mfc1    a1, $f4                    
    mfc1    a3, $f10                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sll     a3, a3, 16                 
    jal     func_80064624              
    sra     a3, a3, 16                 
    mfc1    a2, $f30                   
    lui     a3, 0x469C                 # a3 = 469C0000
    ori     a3, a3, 0x4000             # a3 = 469C4000
    addiu   a0, s6, 0x0298             # a0 = 00000298
    jal     func_80064280              
    lw      a1, 0x029C(s6)             # 0000029C
    mfc1    a2, $f30                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s6, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lw      a1, 0x0294(s6)             # 00000294
    lh      t4, 0x0212(s6)             # 00000212
    slti    $at, t4, 0x00CC            
    beq     $at, $zero, lbl_8094B7D8   
    nop
    jal     func_80021248              
    or      a0, s6, $zero              # a0 = 00000000
lbl_8094B7D8:
    jal     func_80021124              
    or      a0, s6, $zero              # a0 = 00000000
    lh      t5, 0x0218(s6)             # 00000218
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0218(s6)             # 00000218
    lh      v1, 0x0218(s6)             # 00000218
    slti    $at, v1, 0x0064            
    bnel    $at, $zero, lbl_8094B808   
    sll     s0, v1, 16                 
    sh      $zero, 0x0218(s6)          # 00000218
    lh      v1, 0x0218(s6)             # 00000218
    sll     s0, v1, 16                 
lbl_8094B808:
    sra     s0, s0, 16                 
    lui     $at, 0x4700                # $at = 47000000
    sll     t7, s0,  2                 
    mtc1    $at, $f20                  # $f20 = 32768.00
    lwc1    $f8, 0x0024(s6)            # 00000024
    subu    t7, t7, s0                 
    lui     $at, %hi(var_8094FC64)     # $at = 80950000
    sll     t7, t7,  2                 
    lwc1    $f22, %lo(var_8094FC64)($at) 
    addu    v0, s6, t7                 
    swc1    $f8, 0x077C(v0)            # 0000077C
    lwc1    $f4, 0x0028(s6)            # 00000028
    swc1    $f4, 0x0780(v0)            # 00000780
    lwc1    $f6, 0x002C(s6)            # 0000002C
    swc1    $f6, 0x0784(v0)            # 00000784
    lh      t8, 0x0030(s6)             # 00000030
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x02CC(v0)            # 000002CC
    lh      t9, 0x0032(s6)             # 00000032
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x02D0(v0)            # 000002D0
    lh      t0, 0x0034(s6)             # 00000034
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x02D4(v0)            # 000002D4
    lh      t1, 0x021A(s6)             # 0000021A
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x021A(s6)             # 0000021A
    lh      v0, 0x021A(s6)             # 0000021A
    slti    $at, v0, 0x001E            
    bnel    $at, $zero, lbl_8094B8C0   
    lh      t3, 0x0214(s6)             # 00000214
    sh      $zero, 0x021A(s6)          # 0000021A
    lh      v0, 0x021A(s6)             # 0000021A
    lh      t3, 0x0214(s6)             # 00000214
lbl_8094B8C0:
    lui     $at, %hi(var_8094FC68)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FC68)($at) 
    mtc1    t3, $f10                   # $f10 = 0.00
    sll     s0, v0, 16                 
    sra     s0, s0, 16                 
    cvt.s.w $f8, $f10                  
    mul.s   $f6, $f8, $f4              
    trunc.w.s $f10, $f6                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC6C)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FC6C)($at) 
    sll     t5, s0,  2                 
    addu    s1, s6, t5                 
    mul.s   $f4, $f0, $f8              
    lui     $at, %hi(var_8094FC70)     # $at = 80950000
    add.s   $f6, $f4, $f30             
    swc1    $f6, 0x0F5C(s1)            # 00000E94
    lh      t6, 0x0214(s6)             # 00000214
    lwc1    $f4, %lo(var_8094FC70)($at) 
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    mul.s   $f6, $f8, $f4              
    trunc.w.s $f10, $f6                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC74)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FC74)($at) 
    lui     $at, 0x45B2                # $at = 45B20000
    mul.s   $f4, $f0, $f8              
    add.s   $f6, $f4, $f30             
    mtc1    $at, $f4                   # $f4 = 5696.00
    swc1    $f6, 0x1148(s1)            # 00001080
    lh      t8, 0x0214(s6)             # 00000214
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    mul.s   $f6, $f8, $f4              
    trunc.w.s $f10, $f6                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC78)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FC78)($at) 
    sll     t0, s0,  2                 
    subu    t0, t0, s0                 
    mul.s   $f4, $f0, $f8              
    sll     t0, t0,  2                 
    addu    v0, s6, t0                 
    addiu   a0, s6, 0x13B8             # a0 = 000013B8
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    add.s   $f6, $f4, $f30             
    swc1    $f6, 0x1334(s1)            # 0000126C
    lw      t2, 0x0FD4(s6)             # 00000FD4
    sw      t2, 0x0DF4(v0)             # 00000DF4
    lw      t1, 0x0FD8(s6)             # 00000FD8
    sw      t1, 0x0DF8(v0)             # 00000DF8
    lw      t2, 0x0FDC(s6)             # 00000FDC
    sw      t2, 0x0DFC(v0)             # 00000DFC
    lh      t3, 0x0030(s6)             # 00000030
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x0C8C(v0)            # 00000C8C
    lh      t4, 0x0032(s6)             # 00000032
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x0C90(v0)            # 00000C90
    lh      t5, 0x0034(s6)             # 00000034
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    div.s   $f4, $f8, $f20             
    mul.s   $f6, $f4, $f22             
    swc1    $f6, 0x0C94(v0)            # 00000C94
    lw      t7, 0x11C0(s6)             # 000011C0
    sw      t7, 0x0FE0(v0)             # 00000FE0
    lw      t6, 0x11C4(s6)             # 000011C4
    sw      t6, 0x0FE4(v0)             # 00000FE4
    lw      t7, 0x11C8(s6)             # 000011C8
    sw      t7, 0x0FE8(v0)             # 00000FE8
    lw      t9, 0x13AC(s6)             # 000013AC
    sw      t9, 0x11CC(v0)             # 000011CC
    lw      t8, 0x13B0(s6)             # 000013B0
    sw      t8, 0x11D0(v0)             # 000011D0
    lw      t9, 0x13B4(s6)             # 000013B4
    sw      t9, 0x11D4(v0)             # 000011D4
    lh      v0, 0x0030(s6)             # 00000030
    slti    $at, v0, 0x3000            
    beq     $at, $zero, lbl_8094BA8C   
    slti    $at, v0, 0xD001            
    bnel    $at, $zero, lbl_8094BA90   
    mfc1    a1, $f26                   
    mfc1    a1, $f30                   
    mfc1    a2, $f30                   
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280              
    addiu   a0, s6, 0x13B8             # a0 = 000013B8
    beq     $zero, $zero, lbl_8094BAA0 
    lh      t0, 0x0212(s6)             # 00000212
lbl_8094BA8C:
    mfc1    a1, $f26                   
lbl_8094BA90:
    mfc1    a2, $f30                   
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    lh      t0, 0x0212(s6)             # 00000212
lbl_8094BAA0:
    slti    $at, t0, 0x00CC            
    beql    $at, $zero, lbl_8094BB58   
    lbu     t8, 0x01CF($sp)            
    lwc1    $f0, 0x0104(s6)            # 00000104
    c.lt.s  $f0, $f24                  
    nop
    bc1fl   lbl_8094BB0C               
    c.lt.s  $f24, $f0                  
    lwc1    $f10, 0x0028(s6)           # 00000028
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    c.le.s  $f24, $f10                 
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    addiu   a3, $zero, 0x5000          # a3 = 00005000
    bc1fl   lbl_8094BB0C               
    c.lt.s  $f24, $f0                  
    sh      t1, 0x0240(s6)             # 00000240
    jal     func_80026C84              
    lw      a0, 0x01D4($sp)            
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sh      t2, 0x021E(s6)             # 0000021E
    sh      t3, 0x0228(s6)             # 00000228
    sh      t4, 0x0230(s6)             # 00000230
    lwc1    $f0, 0x0104(s6)            # 00000104
    c.lt.s  $f24, $f0                  
lbl_8094BB0C:
    nop
    bc1fl   lbl_8094BB58               
    lbu     t8, 0x01CF($sp)            
    lwc1    $f8, 0x0028(s6)            # 00000028
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    c.le.s  $f8, $f24                  
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    addiu   a3, $zero, 0x5000          # a3 = 00005000
    bc1fl   lbl_8094BB58               
    lbu     t8, 0x01CF($sp)            
    sh      t5, 0x0240(s6)             # 00000240
    jal     func_80026C84              
    lw      a0, 0x01D4($sp)            
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t6, 0x0228(s6)             # 00000228
    sh      t7, 0x0230(s6)             # 00000230
    lbu     t8, 0x01CF($sp)            
lbl_8094BB58:
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, %hi(var_8094FC94)     # $at = 80950000
    bne     t8, $zero, lbl_8094BE80    
    nop
    lui     $at, %hi(var_8094FC7C)     # $at = 80950000
    lwc1    $f22, %lo(var_8094FC7C)($at) 
    lh      t9, 0x0214(s6)             # 00000214
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f22            
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC80)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FC80)($at) 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f8                   # $f8 = 2000.00
    mul.s   $f2, $f0, $f4              
    swc1    $f2, 0x00E4($sp)           
    swc1    $f2, 0x00E0($sp)           
    lh      t1, 0x0214(s6)             # 00000214
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    mul.s   $f4, $f10, $f8             
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f20                  # $f20 = 4000.00
    lui     $at, %hi(var_8094FC84)     # $at = 80950000
    lwc1    $f24, %lo(var_8094FC84)($at) 
    mul.s   $f10, $f0, $f20            
    swc1    $f10, 0x00EC($sp)          
    lh      t3, 0x0214(s6)             # 00000214
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    mul.s   $f6, $f4, $f24             
    trunc.w.s $f10, $f6                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f8, $f0, $f20             
    lui     $at, %hi(var_8094FC88)     # $at = 80950000
    lwc1    $f26, %lo(var_8094FC88)($at) 
    swc1    $f8, 0x00F0($sp)           
    lh      t5, 0x0214(s6)             # 00000214
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f26            
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC8C)     # $at = 80950000
    lwc1    $f20, %lo(var_8094FC8C)($at) 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f4                   # $f4 = 2000.00
    nop
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x00F8($sp)           
    lh      t7, 0x0214(s6)             # 00000214
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    mul.s   $f4, $f8, $f20             
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f10                  # $f10 = 2000.00
    nop
    mul.s   $f8, $f0, $f10             
    swc1    $f8, 0x00FC($sp)           
    lh      t9, 0x0214(s6)             # 00000214
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f22            
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8094FC90)     # $at = 80950000
    lwc1    $f22, %lo(var_8094FC90)($at) 
    mul.s   $f2, $f0, $f22             
    swc1    $f2, 0x00C0($sp)           
    swc1    $f2, 0x00BC($sp)           
    lh      t1, 0x0214(s6)             # 00000214
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f24            
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0xC57A                # $at = C57A0000
    mtc1    $at, $f22                  # $f22 = -4000.00
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f8                   # $f8 = 2000.00
    mul.s   $f4, $f0, $f22             
    swc1    $f4, 0x00C8($sp)           
    lh      t3, 0x0214(s6)             # 00000214
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    mul.s   $f4, $f10, $f8             
    trunc.w.s $f6, $f4                   
    mfc1    a0, $f6                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f10, $f0, $f22            
    swc1    $f10, 0x00CC($sp)          
    lh      t5, 0x0214(s6)             # 00000214
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    mul.s   $f6, $f4, $f20             
    trunc.w.s $f10, $f6                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f20                  # $f20 = -2000.00
    nop
    mul.s   $f8, $f0, $f20             
    swc1    $f8, 0x00D4($sp)           
    lh      t7, 0x0214(s6)             # 00000214
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f26            
    trunc.w.s $f8, $f10                  
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f4, $f0, $f20             
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s5, $sp, 0x00BC            # s5 = FFFFFEEC
    addiu   s4, $sp, 0x00E0            # s4 = FFFFFF10
    swc1    $f4, 0x00D8($sp)           
    sll     s1, s3,  2                 
lbl_8094BDFC:
    subu    s1, s1, s3                 
    sll     s1, s1,  2                 
    addu    s0, s6, s1                 
    addu    s2, s4, s1                 
    mfc1    a2, $f30                   
    lw      a1, 0x0000(s2)             # 8094F958
    addiu   a0, s0, 0x0C2C             # a0 = 00000C2C
    jal     func_80064280              
    lui     a3, 0x447A                 # a3 = 447A0000
    mfc1    a2, $f30                   
    addiu   a0, s0, 0x0C30             # a0 = 00000C30
    lw      a1, 0x0004(s2)             # 8094F95C
    jal     func_80064280              
    lui     a3, 0x447A                 # a3 = 447A0000
    addu    s2, s5, s1                 
    mfc1    a2, $f30                   
    lw      a1, 0x0000(s2)             # 8094F958
    addiu   a0, s0, 0x0C5C             # a0 = 00000C5C
    jal     func_80064280              
    lui     a3, 0x447A                 # a3 = 447A0000
    mfc1    a2, $f30                   
    addiu   a0, s0, 0x0C60             # a0 = 00000C60
    lw      a1, 0x0004(s2)             # 8094F95C
    jal     func_80064280              
    lui     a3, 0x447A                 # a3 = 447A0000
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x0003            
    bnel    $at, $zero, lbl_8094BDFC   
    sll     s1, s3,  2                 
    beq     $zero, $zero, lbl_8094BF18 
    lw      $ra, 0x007C($sp)           
lbl_8094BE80:
    lwc1    $f22, %lo(var_8094FC94)($at) 
    sll     t9, s0,  2                 
lbl_8094BE88:
    subu    t9, t9, s0                 
    sll     t9, t9,  2                 
    mtc1    $zero, $f20                # $f20 = 0.00
    addu    s1, s6, t9                 
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    mfc1    a2, $f28                   
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_800642F0              
    addiu   a0, s1, 0x0C30             # a0 = 00000B68
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    mfc1    a2, $f28                   
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_800642F0              
    addiu   a0, s1, 0x0C60             # a0 = 00000B98
    bne     s0, $zero, lbl_8094BECC    
    addiu   a0, s1, 0x0C2C             # a0 = 00000B64
    mov.s   $f20, $f22                 
lbl_8094BECC:
    mfc1    a1, $f20                   
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f28                   
    jal     func_80064280              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    neg.s   $f6, $f20                  
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a1, $f6                    
    mfc1    a3, $f28                   
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_80064280              
    addiu   a0, s1, 0x0C5C             # a0 = 00000B94
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0003            
    bnel    $at, $zero, lbl_8094BE88   
    sll     t9, s0,  2                 
lbl_8094BF14:
    lw      $ra, 0x007C($sp)           
lbl_8094BF18:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    ldc1    $f30, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    lw      s5, 0x0074($sp)            
    lw      s6, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01D0           # $sp = 00000000


func_8094BF54:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x003C($sp)            
    lbu     v1, 0x02C8(s0)             # 000002C8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_8094C0A8      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sb      $zero, 0x02C8(s0)          # 000002C8
    jal     func_8094985C              
    lw      a1, 0x003C($sp)            
    lui     $at, %hi(var_8094FC98)     # $at = 80950000
    lwc1    $f20, %lo(var_8094FC98)($at) 
lbl_8094BF94:
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    cfc1    t6, $f31                   
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f0                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_8094C00C    
    mfc1    v0, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f4, $f0, $f4              
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_8094C000    
    nop
    mfc1    v0, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094C018 
    or      v0, v0, $at                # v0 = 80000000
lbl_8094C000:
    beq     $zero, $zero, lbl_8094C018 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f4                    
lbl_8094C00C:
    nop
    bltz    v0, lbl_8094C000           
    nop
lbl_8094C018:
    lbu     t7, 0x02C4(s0)             # 000002C4
    ctc1    t6, $f31                   
    andi    v0, v0, 0x00FF             # v0 = 000000FF
    beq     t7, v0, lbl_8094BF94       
    nop
    sb      v0, 0x02C4(s0)             # 000002C4
    lbu     t8, 0x02C4(s0)             # 000002C4
    lui     a2, %hi(var_8094F88C)      # a2 = 80950000
    addiu   a2, a2, %lo(var_8094F88C)  # a2 = 8094F88C
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addu    v0, a2, t9                 
    lwc1    $f6, 0x0000(v0)            # 000000FF
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    swc1    $f6, 0x02AC(s0)            # 000002AC
    lwc1    $f8, 0x0004(v0)            # 00000103
    lw      t1, 0x02AC(s0)             # 000002AC
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sub.s   $f16, $f8, $f10            
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lbu     v1, 0x02C8(s0)             # 000002C8
    swc1    $f16, 0x02B0(s0)           # 000002B0
    lwc1    $f18, 0x0008(v0)           # 00000107
    sw      t1, 0x0024(s0)             # 00000024
    lw      t0, 0x02B0(s0)             # 000002B0
    swc1    $f18, 0x02B4(s0)           # 000002B4
    lw      t1, 0x02B4(s0)             # 000002B4
    sh      t2, 0x0238(s0)             # 00000238
    sh      t3, 0x0212(s0)             # 00000212
    sh      t4, 0x0222(s0)             # 00000222
    sw      t0, 0x0028(s0)             # 00000028
    sw      t1, 0x002C(s0)             # 0000002C
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8094C0A8:
    bne     v1, $at, lbl_8094C130      
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x02C8(s0)          # 000002C8
    addiu   t5, s0, 0x0024             # t5 = 00000024
    addiu   t6, s0, 0x02AC             # t6 = 000002AC
    sw      t6, 0x002C($sp)            
    sw      t5, 0x0030($sp)            
    jal     func_8094985C              
    lw      a1, 0x003C($sp)            
    lui     a2, %hi(var_8094F88C)      # a2 = 80950000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   a2, a2, %lo(var_8094F88C)  # a2 = 8094F88C
    sb      t7, 0x02C4(s0)             # 000002C4
    lwc1    $f4, 0x000C(a2)            # 8094F898
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    swc1    $f4, 0x02AC(s0)            # 000002AC
    lwc1    $f6, 0x0010(a2)            # 8094F89C
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x02B0(s0)           # 000002B0
    lwc1    $f16, 0x0014(a2)           # 8094F8A0
    swc1    $f16, 0x02B4(s0)           # 000002B4
    lw      t9, 0x002C($sp)            
    lw      t8, 0x0030($sp)            
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0000(t8)             # 00000000
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0004(t8)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(t8)             # 00000008
    sh      t2, 0x0238(s0)             # 00000238
    sh      t3, 0x0212(s0)             # 00000212
lbl_8094C130:
    lw      $ra, 0x0024($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8094C144:
    addiu   $sp, $sp, 0xFEF8           # $sp = FFFFFEF8
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    addiu   s0, $sp, 0x00E8            # s0 = FFFFFFE0
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0064($sp)           
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lui     t6, %hi(var_8094F994)      # t6 = 80950000
    sh      $zero, 0x0106($sp)         
    addiu   t6, t6, %lo(var_8094F994)  # t6 = 8094F994
    lw      t8, 0x0000(t6)             # 8094F994
    sw      t8, 0x0000(s0)             # FFFFFFE0
    lw      t7, 0x0004(t6)             # 8094F998
    sw      t7, 0x0004(s0)             # FFFFFFE4
    lhu     t8, 0x0008(t6)             # 8094F99C
    sh      t8, 0x0008(s0)             # FFFFFFE8
    lbu     v1, 0x0210(s1)             # 00000210
    bne     v1, $zero, lbl_8094C224    
    or      v0, v1, $zero              # v0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lh      a0, 0x0216(s1)             # 00000216
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  8                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f6, $f0, $f4              
    addu    $at, $at, s2               
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0AFC($at)          # 00010AFC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      t9, 0x0B00($at)            # 00010B00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      t0, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    beq     $zero, $zero, lbl_8094C458 
    sb      $zero, 0x0AE2($at)         # 00010AE2
lbl_8094C224:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8094C294      
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      t1, 0x0B00($at)            # 00010B00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t2, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f22                   
    mfc1    a2, $f22                   
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280              
    addu    a0, s2, $at                
    beq     $zero, $zero, lbl_8094C45C 
    lh      v0, 0x0228(s1)             # 00000228
lbl_8094C294:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8094C348      
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    lui     $at, 0x0001                # $at = 00010000
    sb      t3, 0x0210(s1)             # 00000210
    addu    $at, $at, s2               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lh      a0, 0x0216(s1)             # 00000216
    addu    $at, a0, $zero             
    sll     a0, a0,  5                 
    subu    a0, a0, $at                
    sll     a0, a0,  9                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    a0, s2, $at                
    lui     $at, %hi(var_8094FC9C)     # $at = 80950000
    lwc1    $f16, %lo(var_8094FC9C)($at) 
    lui     $at, %hi(var_8094FCA0)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FCA0)($at) 
    mul.s   $f18, $f0, $f16            
    lui     a3, 0x3E19                 # a3 = 3E190000
    mfc1    a2, $f22                   
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    add.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sb      t4, 0x0B00($at)            # 00010B00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      $zero, 0x0AE2($at)         # 00010AE2
    beq     $zero, $zero, lbl_8094C45C 
    lh      v0, 0x0228(s1)             # 00000228
lbl_8094C348:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_8094C3FC      
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sb      t6, 0x0210(s1)             # 00000210
    addu    $at, $at, s2               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lh      a0, 0x0216(s1)             # 00000216
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0, 10                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    a0, s2, $at                
    lui     $at, %hi(var_8094FCA4)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FCA4)($at) 
    lui     $at, %hi(var_8094FCA8)     # $at = 80950000
    lwc1    $f16, %lo(var_8094FCA8)($at) 
    mul.s   $f10, $f0, $f8             
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a2, $f22                   
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    add.s   $f18, $f10, $f16           
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0B00($at)            # 00010B00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    sb      $zero, 0x0AE2($at)         # 00010AE2
    beq     $zero, $zero, lbl_8094C45C 
    lh      v0, 0x0228(s1)             # 00000228
lbl_8094C3FC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8094C458      
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f28                # $f28 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a2, $f22                   
    mfc1    a1, $f28                   
    addu    a0, s2, $at                
    jal     func_80064280              
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    lui     $at, %hi(var_8094FCAC)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FCAC)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    lwc1    $f6, 0x0AFC($at)           # 00010AFC
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8094C45C               
    lh      v0, 0x0228(s1)             # 00000228
    sb      $zero, 0x0210(s1)          # 00000210
lbl_8094C458:
    lh      v0, 0x0228(s1)             # 00000228
lbl_8094C45C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f28                # $f28 = 0.00
    beq     v0, $zero, lbl_8094C48C    
    addiu   a0, s1, 0x0284             # a0 = 00000284
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f26                  # $f26 = 20.00
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0228(s1)             # 00000228
    mov.s   $f0, $f26                  
    beq     $zero, $zero, lbl_8094C4A8 
    mov.s   $f20, $f26                 
lbl_8094C48C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f0                   # $f0 = 3.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f20                  # $f20 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f26                  # $f26 = 20.00
    nop
lbl_8094C4A8:
    mfc1    a1, $f0                    
    mfc1    a2, $f22                   
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x0280             # a0 = 00000280
    jal     func_80064280              
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      t0, 0x0216(s1)             # 00000216
    andi    t1, t0, 0x0007             # t1 = 00000000
    bnel    t1, $zero, lbl_8094C50C    
    lh      v0, 0x021C(s1)             # 0000021C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8094FCB0)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FCB0)($at) 
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8094C50C               
    lh      v0, 0x021C(s1)             # 0000021C
    sh      t2, 0x021C(s1)             # 0000021C
    lh      v0, 0x021C(s1)             # 0000021C
lbl_8094C50C:
    sll     t3, v0,  1                 
    addu    t4, s0, t3                 
    lh      t5, 0x0000(t4)             # 00000000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_8094C528    
    sb      t5, 0x02C5(s1)             # 000002C5
    sh      t6, 0x021C(s1)             # 0000021C
lbl_8094C528:
    lh      v0, 0x021E(s1)             # 0000021E
    addiu   $at, $zero, 0x0025         # $at = 00000025
    beql    v0, $zero, lbl_8094C57C    
    lh      t8, 0x0216(s1)             # 00000216
    bne     v0, $at, lbl_8094C564      
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x38D1          # a0 = 000038D1
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8094C564:
    lui     $at, %hi(var_8094FCB4)     # $at = 80950000
    lwc1    $f0, %lo(var_8094FCB4)($at) 
    lui     $at, %hi(var_8094FCB8)     # $at = 80950000
    beq     $zero, $zero, lbl_8094C5A8 
    lwc1    $f2, %lo(var_8094FCB8)($at) 
    lh      t8, 0x0216(s1)             # 00000216
lbl_8094C57C:
    lui     $at, 0x447A                # $at = 447A0000
    andi    t9, t8, 0x0010             # t9 = 00000000
    beql    t9, $zero, lbl_8094C598    
    mtc1    $at, $f0                   # $f0 = 1000.00
    beq     $zero, $zero, lbl_8094C59C 
    mov.s   $f0, $f28                  
    mtc1    $at, $f0                   # $f0 = 1000.00
lbl_8094C598:
    nop
lbl_8094C59C:
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f2                   # $f2 = 500.00
    nop
lbl_8094C5A8:
    mfc1    a1, $f0                    
    lui     a2, 0x3E99                 # a2 = 3E990000
    mfc1    a3, $f2                    
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    jal     func_80064280              
    addiu   a0, s1, 0x13BC             # a0 = 000013BC
    lh      v0, 0x021E(s1)             # 0000021E
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    beq     v0, $zero, lbl_8094C5D8    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x021E(s1)             # 0000021E
lbl_8094C5D8:
    lh      t1, 0x0240(s1)             # 00000240
    addiu   a0, $zero, 0x30D0          # a0 = 000030D0
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    beq     t1, $zero, lbl_8094C980    
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lh      v0, 0x0230(s1)             # 00000230
    lui     $at, 0x42C8                # $at = 42C80000
    beql    v0, $zero, lbl_8094C79C    
    mtc1    $at, $f24                  # $f24 = 100.00
    lbu     t4, 0x00AF(s1)             # 000000AF
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0230(s1)             # 00000230
    beq     t4, $zero, lbl_8094C644    
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lh      t5, 0x13F2(s1)             # 000013F2
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t5, $at, lbl_8094C664      
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t6, 0x0030(s1)             # 00000030
    slti    $at, t6, 0x3001            
    bnel    $at, $zero, lbl_8094C664   
    lui     $at, 0x42C8                # $at = 42C80000
lbl_8094C644:
    lbu     t7, 0x0210(s1)             # 00000210
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2               
    bnel    t7, $zero, lbl_8094C660    
    sb      t8, 0x0210(s1)             # 00000210
    swc1    $f28, 0x0AFC($at)          # 00010AFC
    sb      t8, 0x0210(s1)             # 00000210
lbl_8094C660:
    lui     $at, 0x42C8                # $at = 42C80000
lbl_8094C664:
    mtc1    $at, $f24                  # $f24 = 100.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8094C67C:
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    swc1    $f0, 0x00D0($sp)           
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    mov.s   $f12, $f26                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x00D4($sp)          
    lwc1    $f6, 0x00D0($sp)           
    lui     $at, %hi(var_8094FCBC)     # $at = 80950000
    lwc1    $f18, %lo(var_8094FCBC)($at) 
    mul.s   $f8, $f6, $f20             
    swc1    $f0, 0x00D8($sp)           
    swc1    $f28, 0x00CC($sp)          
    mul.s   $f6, $f0, $f20             
    swc1    $f28, 0x00C4($sp)          
    swc1    $f18, 0x00C8($sp)          
    lwc1    $f4, 0x02B8(s1)            # 000002B8
    swc1    $f24, 0x00BC($sp)          
    lui     $at, 0x4316                # $at = 43160000
    div.s   $f10, $f8, $f22            
    mtc1    $at, $f12                  # $f12 = 150.00
    div.s   $f8, $f6, $f22             
    add.s   $f16, $f4, $f10            
    swc1    $f16, 0x00B8($sp)          
    lwc1    $f18, 0x02C0(s1)           # 000002C0
    add.s   $f4, $f18, $f8             
    jal     func_80026D64              
    swc1    $f4, 0x00C0($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64              
    swc1    $f0, 0x0074($sp)           
    lwc1    $f10, 0x0074($sp)          
    trunc.w.s $f6, $f0                   
    lui     t9, %hi(var_8094F9B8)      # t9 = 80950000
    addiu   t9, t9, %lo(var_8094F9B8)  # t9 = 8094F9B8
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f6                    
    lui     t0, %hi(var_8094F9BC)      # t0 = 80950000
    addiu   t0, t0, %lo(var_8094F9BC)  # t0 = 8094F9BC
    mfc1    t2, $f16                   
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    sll     t9, t8, 16                 
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    sra     t0, t9, 16                 
    addiu   t1, t0, 0x0011             # t1 = 8094F9CD
    addiu   t5, t4, 0x0320             # t5 = 00000320
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    sw      t1, 0x0020($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00B8            # a1 = FFFFFFB0
    addiu   a2, $sp, 0x00D0            # a2 = FFFFFFC8
    jal     func_8001BE64              
    addiu   a3, $sp, 0x00C4            # a3 = FFFFFFBC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0005            
    bne     $at, $zero, lbl_8094C67C   
    nop
    beq     $zero, $zero, lbl_8094C888 
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f24                  # $f24 = 60.00
lbl_8094C79C:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8094C7B0:
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64              
    swc1    $f0, 0x00D0($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    mov.s   $f12, $f22                 
    add.s   $f8, $f0, $f18             
    jal     func_80026D90              
    swc1    $f8, 0x00D4($sp)           
    lwc1    $f16, 0x00D0($sp)          
    lui     $at, %hi(var_8094FCC0)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FCC0)($at) 
    mul.s   $f6, $f16, $f20            
    swc1    $f0, 0x00D8($sp)           
    swc1    $f28, 0x00CC($sp)          
    mul.s   $f16, $f0, $f20            
    swc1    $f28, 0x00C4($sp)          
    swc1    $f4, 0x00C8($sp)           
    lwc1    $f10, 0x02B8(s1)           # 000002B8
    swc1    $f24, 0x00BC($sp)          
    lui     t2, %hi(var_8094F9B8)      # t2 = 80950000
    div.s   $f18, $f6, $f22            
    lui     t3, %hi(var_8094F9BC)      # t3 = 80950000
    addiu   t3, t3, %lo(var_8094F9BC)  # t3 = 8094F9BC
    addiu   t2, t2, %lo(var_8094F9B8)  # t2 = 8094F9B8
    addiu   t4, $zero, 0x01F4          # t4 = 000001F4
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00B8            # a1 = FFFFFFB0
    addiu   a2, $sp, 0x00D0            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x00C4            # a3 = FFFFFFBC
    div.s   $f6, $f16, $f22            
    add.s   $f8, $f10, $f18            
    swc1    $f8, 0x00B8($sp)           
    lwc1    $f4, 0x02C0(s1)            # 000002C0
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    add.s   $f10, $f4, $f6             
    jal     func_8001BE64              
    swc1    $f10, 0x00C0($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0002            
    bne     $at, $zero, lbl_8094C7B0   
    nop
    lui     $at, 0x4270                # $at = 42700000
lbl_8094C888:
    addiu   t7, s1, 0x1960             # t7 = 00001960
    mtc1    $at, $f20                  # $f20 = 60.00
    sw      t7, 0x0070($sp)            
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8094C898:
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    swc1    $f0, 0x00D0($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f22                 
    swc1    $f0, 0x00D4($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    lui     $at, %hi(var_8094FCC4)     # $at = 80950000
    lwc1    $f18, %lo(var_8094FCC4)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    swc1    $f0, 0x00D8($sp)           
    jal     func_80026D90              
    swc1    $f18, 0x00C8($sp)          
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    jal     func_80026D90              
    swc1    $f0, 0x00C4($sp)           
    swc1    $f0, 0x00CC($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f8, 0x02B8(s1)            # 000002B8
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f16, $f0, $f8             
    jal     func_80026D64              
    swc1    $f16, 0x00B8($sp)          
    add.s   $f4, $f0, $f24             
    mov.s   $f12, $f20                 
    jal     func_80026D90              
    swc1    $f4, 0x00BC($sp)           
    lwc1    $f6, 0x02C0(s1)            # 000002C0
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    add.s   $f10, $f0, $f6             
    jal     func_80026D64              
    swc1    $f10, 0x00C0($sp)          
    trunc.w.s $f18, $f0                  
    lw      a0, 0x0070($sp)            
    addiu   a1, $sp, 0x00B8            # a1 = FFFFFFB0
    addiu   a2, $sp, 0x00D0            # a2 = FFFFFFC8
    mfc1    t9, $f18                   
    addiu   a3, $sp, 0x00C4            # a3 = FFFFFFBC
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    addiu   t2, t1, 0x0006             # t2 = 00000006
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    jal     func_80948F60              
    swc1    $f16, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0008            
    bne     $at, $zero, lbl_8094C898   
    nop
lbl_8094C980:
    lh      v0, 0x020C(s1)             # 0000020C
    addiu   s2, $sp, 0x00A0            # s2 = FFFFFF98
    lui     t6, %hi(var_8094F9A0)      # t6 = 80950000
    beq     v0, $zero, lbl_8094C9C4    
    slti    $at, v0, 0x0011            
    beq     $at, $zero, lbl_8094C9C4   
    slti    $at, v0, 0x0006            
    bne     $at, $zero, lbl_8094C9B0   
    sll     t4, v0,  2                 
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    beq     $zero, $zero, lbl_8094C9C4 
    sh      t3, 0x0106($sp)            
lbl_8094C9B0:
    subu    t4, t4, v0                 
    sll     t4, t4,  3                 
    addu    t4, t4, v0                 
    sll     t4, t4,  1                 
    sh      t4, 0x0106($sp)            
lbl_8094C9C4:
    lh      t5, 0x0106($sp)            
    addiu   t6, t6, %lo(var_8094F9A0)  # t6 = 8094F9A0
    addiu   t9, $sp, 0x0088            # t9 = FFFFFF80
    beq     t5, $zero, lbl_8094CCCC    
    lui     t0, %hi(var_8094F9AC)      # t0 = 80950000
    lw      t8, 0x0000(t6)             # 8094F9A0
    addiu   t0, t0, %lo(var_8094F9AC)  # t0 = 8094F9AC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sw      t8, 0x0000(s2)             # FFFFFF98
    lw      t7, 0x0004(t6)             # 8094F9A4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    sw      t7, 0x0004(s2)             # FFFFFF9C
    lw      t8, 0x0008(t6)             # 8094F9A8
    lui     t4, 0x8010                 # t4 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    sw      t8, 0x0008(s2)             # FFFFFFA0
    lw      t2, 0x0000(t0)             # 8094F9AC
    lw      t1, 0x0004(t0)             # 8094F9B0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t2, 0x0000(t9)             # FFFFFF80
    lw      t2, 0x0008(t0)             # 8094F9B4
    sw      t1, 0x0004(t9)             # FFFFFF84
    addiu   a3, t4, 0x43A0             # a3 = 801043A0
    sw      t2, 0x0008(t9)             # FFFFFF88
    sb      t3, 0x0210(s1)             # 00000210
    addiu   t6, s1, 0x1960             # t6 = 00001960
    lui     a1, %hi(var_8094F988)      # a1 = 80950000
    addiu   a1, a1, %lo(var_8094F988)  # a1 = 8094F988
    sw      t6, 0x0070($sp)            
    sw      t5, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x30DB          # a0 = 000030DB
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    swc1    $f4, 0x00A8($sp)           
    lui     $at, 0x4700                # $at = 47000000
    addiu   v0, s1, 0x13E4             # v0 = 000013E4
    mtc1    $at, $f0                   # $f0 = 32768.00
    lw      t8, 0x0000(v0)             # 000013E4
    lui     $at, %hi(var_8094FCC8)     # $at = 80950000
    lwc1    $f2, %lo(var_8094FCC8)($at) 
    addiu   s0, $sp, 0x007C            # s0 = FFFFFF74
    sw      t8, 0x0000(s0)             # FFFFFF74
    lw      t7, 0x0004(v0)             # 000013E8
    lui     $at, %hi(var_8094FCCC)     # $at = 80950000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t7, 0x0004(s0)             # FFFFFF78
    lw      t8, 0x0008(v0)             # 000013EC
    sw      t8, 0x0008(s0)             # FFFFFF7C
    lh      t9, 0x0032(s1)             # 00000032
    lh      t0, 0x0030(s1)             # 00000030
    sw      v0, 0x006C($sp)            
    mtc1    t9, $f6                    # $f6 = 0.00
    subu    t1, $zero, t0              
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f10, $f6                  
    cvt.s.w $f16, $f8                  
    div.s   $f18, $f10, $f0            
    lwc1    $f10, %lo(var_8094FCCC)($at) 
    div.s   $f4, $f16, $f0             
    mul.s   $f12, $f18, $f2            
    nop
    mul.s   $f6, $f4, $f2              
    add.s   $f18, $f6, $f10            
    jal     func_800AAB94              
    swc1    $f18, 0x00B0($sp)          
    lwc1    $f12, 0x00B0($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s2, $zero              # a0 = FFFFFF98
    jal     func_800AB958              
    addiu   a1, $sp, 0x0094            # a1 = FFFFFF8C
    lh      a0, 0x0216(s1)             # 00000216
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f22                  # $f22 = 300.00
    mul.s   $f8, $f0, $f20             
    lh      t2, 0x0106($sp)            
    lw      a0, 0x0070($sp)            
    or      a1, s0, $zero              # a1 = FFFFFF74
    sw      t2, 0x0014($sp)            
    addiu   a2, $sp, 0x0094            # a2 = FFFFFF8C
    addiu   a3, $sp, 0x0088            # a3 = FFFFFF80
    add.s   $f16, $f8, $f22            
    swc1    $f16, 0x0010($sp)          
    lh      t3, 0x0032(s1)             # 00000032
    jal     func_80949194              
    sw      t3, 0x0018($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0094($sp)           
    lwc1    $f18, 0x007C($sp)          
    lwc1    $f16, 0x0098($sp)          
    mul.s   $f10, $f4, $f6             
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    mul.s   $f6, $f16, $f4             
    mtc1    $at, $f16                  # $f16 = 0.50
    add.s   $f8, $f18, $f10            
    lwc1    $f18, 0x0080($sp)          
    swc1    $f8, 0x007C($sp)           
    lwc1    $f8, 0x009C($sp)           
    add.s   $f10, $f18, $f6            
    lwc1    $f18, 0x0084($sp)          
    mul.s   $f4, $f8, $f16             
    swc1    $f10, 0x0080($sp)          
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0084($sp)           
    lh      a0, 0x0216(s1)             # 00000216
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f10, $f0, $f20            
    lh      t4, 0x0106($sp)            
    lw      a0, 0x0070($sp)            
    or      a1, s0, $zero              # a1 = FFFFFF74
    sw      t4, 0x0014($sp)            
    addiu   a2, $sp, 0x0094            # a2 = FFFFFF8C
    addiu   a3, $sp, 0x0088            # a3 = FFFFFF80
    add.s   $f8, $f10, $f22            
    swc1    $f8, 0x0010($sp)           
    lh      t5, 0x0032(s1)             # 00000032
    jal     func_80949194              
    sw      t5, 0x0018($sp)            
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f16                  # $f16 = 17.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f24                  # $f24 = 2.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f22                  # $f22 = 100.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f20                  # $f20 = -10.00
    swc1    $f28, 0x00A0($sp)          
    swc1    $f28, 0x00A8($sp)          
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f16, 0x00A4($sp)          
lbl_8094CC00:
    lui     $at, %hi(var_8094FCD0)     # $at = 80950000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_8094FCD0)($at) 
    lui     $at, %hi(var_8094FCD4)     # $at = 80950000
    lwc1    $f12, %lo(var_8094FCD4)($at) 
    jal     func_80026D64              
    swc1    $f0, 0x00AC($sp)           
    lwc1    $f12, 0x00AC($sp)          
    swc1    $f0, 0x00B0($sp)           
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f12, 0x00B0($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s2, $zero              # a0 = FFFFFF98
    jal     func_800AB958              
    addiu   a1, $sp, 0x0094            # a1 = FFFFFF8C
    lwc1    $f18, 0x0094($sp)          
    lwc1    $f10, 0x0098($sp)          
    mov.s   $f12, $f24                 
    mul.s   $f4, $f18, $f20            
    lwc1    $f18, 0x009C($sp)          
    mul.s   $f8, $f10, $f20            
    div.s   $f6, $f4, $f22             
    mul.s   $f4, $f18, $f20            
    div.s   $f16, $f8, $f22            
    swc1    $f6, 0x0088($sp)           
    div.s   $f6, $f4, $f22             
    swc1    $f16, 0x008C($sp)          
    jal     func_80026D64              
    swc1    $f6, 0x0090($sp)           
    trunc.w.s $f10, $f0                  
    lw      a0, 0x0070($sp)            
    lw      a1, 0x006C($sp)            
    addiu   a2, $sp, 0x0094            # a2 = FFFFFF8C
    mfc1    t7, $f10                   
    addiu   a3, $sp, 0x0088            # a3 = FFFFFF80
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    addiu   t0, t9, 0x0008             # t0 = 00000008
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    jal     func_80948F60              
    swc1    $f16, 0x0010($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0006            
    bne     $at, $zero, lbl_8094CC00   
    nop
lbl_8094CCCC:
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f18                  # $f18 = 90.00
    lwc1    $f0, 0x0028(s1)            # 00000028
    lui     $at, 0x442F                # $at = 442F0000
    c.lt.s  $f0, $f18                  
    nop
    bc1tl   lbl_8094CD1C               
    lw      t3, 0x0004(s1)             # 00000004
    mtc1    $at, $f4                   # $f4 = 700.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1tl   lbl_8094CD1C               
    lw      t3, 0x0004(s1)             # 00000004
    lw      t2, 0x0208(s1)             # 00000208
    lui     t1, %hi(func_8094BF54)     # t1 = 80950000
    addiu   t1, t1, %lo(func_8094BF54) # t1 = 8094BF54
    bnel    t1, t2, lbl_8094CD30       
    lw      t5, 0x0004(s1)             # 00000004
    lw      t3, 0x0004(s1)             # 00000004
lbl_8094CD1C:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at                
    beq     $zero, $zero, lbl_8094CD38 
    sw      t4, 0x0004(s1)             # 00000004
    lw      t5, 0x0004(s1)             # 00000004
lbl_8094CD30:
    ori     t6, t5, 0x0001             # t6 = 00000001
    sw      t6, 0x0004(s1)             # 00000004
lbl_8094CD38:
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0108           # $sp = 00000000


func_8094CD64:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x149C(s0)             # 0000149C
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lbu     a1, 0x0016(v0)             # 00000016
    addiu   a0, $zero, 0x38D5          # a0 = 000038D5
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    andi    t6, a1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8094CE04    
    andi    t7, a1, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0016(v0)             # 00000016
    lbu     t8, 0x00AF(s0)             # 000000AF
    lw      v1, 0x0024(v0)             # 00000024
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t9, t8, 0xFFFE             # t9 = FFFFFFFE
    sb      t9, 0x00AF(s0)             # 000000AF
    lw      t0, 0x0000(v1)             # 00000000
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    lui     t8, 0x8010                 # t8 = 80100000
    andi    t1, t0, 0x1000             # t1 = 00000000
    beq     t1, $zero, lbl_8094CDD4    
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   t3, t9, 0xFFFE             # t3 = FFFFFFFC
    sb      t3, 0x00AF(s0)             # 000000AF
lbl_8094CDD4:
    lb      t4, 0x00AF(s0)             # 000000AF
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    slti    $at, t4, 0x0003            
    beql    $at, $zero, lbl_8094CDF4   
    sh      t6, 0x0220(s0)             # 00000220
    sb      t5, 0x00AF(s0)             # 000000AF
    sh      t6, 0x0220(s0)             # 00000220
lbl_8094CDF4:
    sh      t7, 0x022E(s0)             # 0000022E
    sw      t8, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_8094CE04:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8094CE18:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s3, 0x0054($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s4, 0x0058($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x00DC($sp)            
    sw      s3, 0x00D0($sp)            
    lh      t8, 0x0214(s3)             # 00000214
    lh      t6, 0x0216(s3)             # 00000216
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0214(s3)             # 00000214
    lw      t9, 0x0208(s3)             # 00000208
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0216(s3)             # 00000216
    jalr    $ra, t9                    
    lw      a1, 0x00DC($sp)            
    or      s2, $zero, $zero           # s2 = 00000000
    sll     t0, s2,  1                 
lbl_8094CE78:
    addu    v0, s3, t0                 
    lh      v1, 0x0238(v0)             # 00000238
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    beq     v1, $zero, lbl_8094CE98    
    sra     s2, s2, 16                 
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0238(v0)             # 00000238
lbl_8094CE98:
    slti    $at, s2, 0x0006            
    bnel    $at, $zero, lbl_8094CE78   
    sll     t0, s2,  1                 
    lh      v0, 0x020C(s3)             # 0000020C
    beq     v0, $zero, lbl_8094CEB4    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x020C(s3)             # 0000020C
lbl_8094CEB4:
    lh      v0, 0x0220(s3)             # 00000220
    beq     v0, $zero, lbl_8094CEC4    
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0220(s3)             # 00000220
lbl_8094CEC4:
    lh      v0, 0x022E(s3)             # 0000022E
    beq     v0, $zero, lbl_8094CED4    
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x022E(s3)             # 0000022E
lbl_8094CED4:
    lh      t5, 0x0212(s3)             # 00000212
    slti    $at, t5, 0x00C8            
    beql    $at, $zero, lbl_8094CF30   
    or      a0, s3, $zero              # a0 = 00000000
    lh      t6, 0x022E(s3)             # 0000022E
    or      a0, s3, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_8094CF00    
    lw      a0, 0x00DC($sp)            
    jal     func_8094CD64              
    lw      a1, 0x00DC($sp)            
    lw      a0, 0x00DC($sp)            
lbl_8094CF00:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   s1, s3, 0x1480             # s1 = 00001480
    addu    s0, a0, $at                
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 00001480
    lw      a0, 0x00DC($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s1, $zero              # a2 = 00001480
    or      a0, s3, $zero              # a0 = 00000000
lbl_8094CF30:
    jal     func_8094C144              
    lw      a1, 0x00DC($sp)            
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f4, 0x0244(s3)            # 00000244
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    add.s   $f8, $f4, $f6              
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, 0x4000                # $at = 40000000
    swc1    $f8, 0x0244(s3)            # 00000244
    lwc1    $f16, 0x024C(s3)           # 0000024C
    mtc1    $at, $f8                   # $f8 = 2.00
    lwc1    $f6, 0x0250(s3)            # 00000250
    swc1    $f10, 0x0248(s3)           # 00000248
    add.s   $f4, $f16, $f18            
    addiu   a0, s3, 0x0260             # a0 = 00000260
    lui     a2, 0x3F80                 # a2 = 3F800000
    sub.s   $f10, $f6, $f8             
    swc1    $f4, 0x024C(s3)            # 0000024C
    swc1    $f10, 0x0250(s3)           # 00000250
    lh      t7, 0x0216(s3)             # 00000216
    andi    t8, t7, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_8094CFA4    
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    beq     $zero, $zero, lbl_8094CFB4 
    mfc1    a1, $f0                    
lbl_8094CFA4:
    lui     $at, 0x431E                # $at = 431E0000
    mtc1    $at, $f0                   # $f0 = 158.00
    nop
    mfc1    a1, $f0                    
lbl_8094CFB4:
    jal     func_80064280              
    lui     a3, 0x4100                 # a3 = 41000000
    lh      t9, 0x020E(s3)             # 0000020E
    bnel    t9, $zero, lbl_8094CFD8    
    lh      t0, 0x0216(s3)             # 00000216
    lwc1    $f16, 0x0260(s3)           # 00000260
    beq     $zero, $zero, lbl_8094D00C 
    swc1    $f16, 0x0264(s3)           # 00000264
    lh      t0, 0x0216(s3)             # 00000216
lbl_8094CFD8:
    lui     $at, 0x437F                # $at = 437F0000
    addiu   a0, s3, 0x0264             # a0 = 00000264
    andi    t1, t0, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_8094CFF8    
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_8094D004 
    mfc1    a1, $f0                    
lbl_8094CFF8:
    mtc1    $at, $f0                   # $f0 = 255.00
    nop
    mfc1    a1, $f0                    
lbl_8094D004:
    jal     func_80064280              
    lui     a3, 0x4280                 # a3 = 42800000
lbl_8094D00C:
    lh      v0, 0x0216(s3)             # 00000216
    addiu   a0, s3, 0x0274             # a0 = 00000274
    lui     a2, 0x3F80                 # a2 = 3F800000
    andi    t2, v0, 0x0008             # t2 = 00000000
    beq     t2, $zero, lbl_8094D034    
    addiu   t3, v0, 0x0003             # t3 = 00000003
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f2                   # $f2 = 128.00
    beq     $zero, $zero, lbl_8094D048 
    mov.s   $f0, $f2                   
lbl_8094D034:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f0                   # $f0 = 255.00
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f2                   # $f2 = 128.00
    nop
lbl_8094D048:
    andi    t4, t3, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_8094D05C    
    addiu   t5, v0, 0x0006             # t5 = 00000006
    beq     $zero, $zero, lbl_8094D068 
    mov.s   $f22, $f2                  
lbl_8094D05C:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f22                  # $f22 = 255.00
    nop
lbl_8094D068:
    andi    t6, t5, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_8094D07C    
    lui     $at, 0x437F                # $at = 437F0000
    beq     $zero, $zero, lbl_8094D084 
    mov.s   $f20, $f2                  
lbl_8094D07C:
    mtc1    $at, $f20                  # $f20 = 255.00
    nop
lbl_8094D084:
    mfc1    a1, $f0                    
    jal     func_80064280              
    lui     a3, 0x4180                 # a3 = 41800000
    mfc1    a1, $f22                   
    addiu   a0, s3, 0x0278             # a0 = 00000278
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4180                 # a3 = 41800000
    mfc1    a1, $f20                   
    addiu   a0, s3, 0x027C             # a0 = 0000027C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4180                 # a3 = 41800000
    lh      v0, 0x022A(s3)             # 0000022A
    beq     v0, $zero, lbl_8094D23C    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x022A(s3)             # 0000022A
    lh      t8, 0x022A(s3)             # 0000022A
    lui     $at, 0x4248                # $at = 42480000
    andi    t9, t8, 0x000F             # t9 = 00000000
    bnel    t9, $zero, lbl_8094D240    
    addiu   s4, s3, 0x1960             # s4 = 00001960
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lwc1    $f18, 0x0024(s3)           # 00000024
    mfc1    t2, $f8                    
    swc1    $f4, 0x0014($sp)           
    swc1    $f18, 0x0010($sp)          
    lwc1    $f6, 0x002C(s3)            # 0000002C
    sll     t3, t2, 16                 
    lw      a2, 0x00DC($sp)            
    sra     t4, t3, 16                 
    addiu   t5, t4, 0x0082             # t5 = 00000082
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00AD          # a3 = 000000AD
    swc1    $f6, 0x0018($sp)           
    jal     func_800253F0              
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    beq     v0, $zero, lbl_8094D23C    
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f22                  # $f22 = 15.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f20                  # $f20 = 300.00
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s4, s3, 0x1960             # s4 = 00001960
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
lbl_8094D164:
    lui     t7, %hi(var_8094F9C0)      # t7 = 80950000
    addiu   t7, t7, %lo(var_8094F9C0)  # t7 = 8094F9C0
    lw      t9, 0x0000(t7)             # 8094F9C0
    lui     t1, %hi(var_8094F9CC)      # t1 = 80950000
    addiu   t1, t1, %lo(var_8094F9CC)  # t1 = 8094F9CC
    sw      t9, 0x0000(s1)             # FFFFFFD8
    lw      t8, 0x0004(t7)             # 8094F9C4
    addiu   t0, $sp, 0x00A4            # t0 = FFFFFFCC
    mov.s   $f12, $f20                 
    sw      t8, 0x0004(s1)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 8094F9C8
    sw      t9, 0x0008(s1)             # FFFFFFE0
    lw      t3, 0x0000(t1)             # 8094F9CC
    lw      t2, 0x0004(t1)             # 8094F9D0
    sw      t3, 0x0000(t0)             # FFFFFFCC
    lw      t3, 0x0008(t1)             # 8094F9D4
    sw      t2, 0x0004(t0)             # FFFFFFD0
    jal     func_80026D90              
    sw      t3, 0x0008(t0)             # FFFFFFD4
    lwc1    $f10, 0x0024(s0)           # 00000024
    mov.s   $f12, $f20                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0098($sp)          
    lwc1    $f18, 0x0028(s0)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x009C($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mov.s   $f12, $f22                 
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x00A0($sp)           
    trunc.w.s $f10, $f0                  
    or      a0, s4, $zero              # a0 = 00001960
    addiu   a1, $sp, 0x0098            # a1 = FFFFFFC0
    or      a2, s1, $zero              # a2 = FFFFFFD8
    mfc1    t5, $f10                   
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    sll     t6, t5, 16                 
    sra     t7, t6, 16                 
    addiu   t8, t7, 0x0014             # t8 = 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_8094902C              
    swc1    $f18, 0x0010($sp)          
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x000A            
    bne     $at, $zero, lbl_8094D164   
    nop
lbl_8094D23C:
    addiu   s4, s3, 0x1960             # s4 = 00001960
lbl_8094D240:
    lui     t0, %hi(var_8094F9D8)      # t0 = 80950000
    addiu   t0, t0, %lo(var_8094F9D8)  # t0 = 8094F9D8
    lw      t2, 0x0000(t0)             # 8094F9D8
    addiu   t9, $sp, 0x008C            # t9 = FFFFFFB4
    lw      t1, 0x0004(t0)             # 8094F9DC
    sw      t2, 0x0000(t9)             # FFFFFFB4
    lw      t2, 0x0008(t0)             # 8094F9E0
    lui     t4, %hi(var_8094F9E4)      # t4 = 80950000
    addiu   t4, t4, %lo(var_8094F9E4)  # t4 = 8094F9E4
    sw      t1, 0x0004(t9)             # FFFFFFB8
    sw      t2, 0x0008(t9)             # FFFFFFBC
    lw      t6, 0x0000(t4)             # 8094F9E4
    addiu   t3, $sp, 0x0080            # t3 = FFFFFFA8
    lui     $at, 0x3F00                # $at = 3F000000
    sw      t6, 0x0000(t3)             # FFFFFFA8
    lw      t6, 0x0008(t4)             # 8094F9EC
    lw      t5, 0x0004(t4)             # 8094F9E8
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    or      s2, $zero, $zero           # s2 = 00000000
    sw      t6, 0x0008(t3)             # FFFFFFB0
    sw      t5, 0x0004(t3)             # FFFFFFAC
lbl_8094D29C:
    lui     $at, %hi(var_8094FCD8)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FCD8)($at) 
    mov.s   $f12, $f22                 
    jal     func_80026D90              
    swc1    $f4, 0x0084($sp)           
    swc1    $f0, 0x0080($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lui     $at, %hi(var_8094FCDC)     # $at = 80950000
    swc1    $f0, 0x0088($sp)           
    jal     func_80026D64              
    lwc1    $f12, %lo(var_8094FCDC)($at) 
    trunc.w.s $f6, $f0                   
    mov.s   $f12, $f20                 
    mfc1    s0, $f6                    
    nop
    sll     s0, s0, 16                 
    jal     func_80026D90              
    sra     s0, s0, 16                 
    sll     t8, s0,  2                 
    subu    t8, t8, s0                 
    lui     t9, %hi(var_8094F88C)      # t9 = 80950000
    addiu   t9, t9, %lo(var_8094F88C)  # t9 = 8094F88C
    sll     t8, t8,  2                 
    addu    s1, t8, t9                 
    lwc1    $f8, 0x0000(s1)            # FFFFFFD8
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x0074($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f16, 0x0004(s1)           # FFFFFFDC
    mov.s   $f12, $f20                 
    add.s   $f4, $f16, $f18            
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0078($sp)           
    lwc1    $f8, 0x0008(s1)            # FFFFFFE0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x007C($sp)          
    trunc.w.s $f16, $f0                  
    or      a0, s4, $zero              # a0 = 00001960
    addiu   a1, $sp, 0x0074            # a1 = FFFFFF9C
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFB4
    mfc1    t1, $f16                   
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFA8
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    addiu   t4, t3, 0x0006             # t4 = 00000006
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    jal     func_80948F60              
    swc1    $f4, 0x0010($sp)           
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x0006            
    bne     $at, $zero, lbl_8094D29C   
    nop
    lh      t5, 0x020E(s3)             # 0000020E
    beql    t5, $zero, lbl_8094D528    
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f6, 0x0284(s3)            # 00000284
    or      s2, $zero, $zero           # s2 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    blezl   t9, lbl_8094D528           
    or      a0, s3, $zero              # a0 = 00000000
    mtc1    $at, $f20                  # $f20 = 20.00
    nop
lbl_8094D3DC:
    lui     $at, %hi(var_8094FCE0)     # $at = 80950000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_8094FCE0)($at) 
    trunc.w.s $f10, $f0                  
    mov.s   $f12, $f20                 
    mfc1    s0, $f10                   
    nop
    sll     s0, s0, 16                 
    jal     func_80026D90              
    sra     s0, s0, 16                 
    sll     t1, s0,  2                 
    subu    t1, t1, s0                 
    sll     t1, t1,  2                 
    addu    s1, s3, t1                 
    lwc1    $f16, 0x0DF8(s1)           # 00000DD0
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f6                   # $f6 = 90.00
    add.s   $f18, $f0, $f16            
    swc1    $f18, 0x0078($sp)          
    lwc1    $f4, 0x0078($sp)           
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8094D4F4               
    lw      t7, 0x00D0($sp)            
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f8, 0x0DF4(s1)            # 00000DCC
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0074($sp)          
    lwc1    $f16, 0x0DFC(s1)           # 00000DD4
    add.s   $f18, $f0, $f16            
    swc1    $f18, 0x007C($sp)          
    jal     func_80026D90              
    lwc1    $f12, 0x0280(s3)           # 00000280
    swc1    $f0, 0x008C($sp)           
    jal     func_80026D90              
    lwc1    $f12, 0x0280(s3)           # 00000280
    swc1    $f0, 0x0090($sp)           
    jal     func_80026D90              
    lwc1    $f12, 0x0280(s3)           # 00000280
    lui     $at, %hi(var_8094FCE4)     # $at = 80950000
    lwc1    $f4, %lo(var_8094FCE4)($at) 
    swc1    $f0, 0x0094($sp)           
    mov.s   $f12, $f22                 
    jal     func_80026D90              
    swc1    $f4, 0x0084($sp)           
    swc1    $f0, 0x0080($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f22                 
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64              
    swc1    $f0, 0x0088($sp)           
    trunc.w.s $f6, $f0                   
    or      a0, s4, $zero              # a0 = 00001960
    addiu   a1, $sp, 0x0074            # a1 = FFFFFF9C
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFB4
    mfc1    t3, $f6                    
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFA8
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    addiu   t6, t5, 0x0008             # t6 = 00000008
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    jal     func_80948F60              
    swc1    $f10, 0x0010($sp)          
    lw      t7, 0x00D0($sp)            
lbl_8094D4F4:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16                 
    lwc1    $f16, 0x0284(t7)           # 00000284
    sra     s2, s2, 16                 
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    slt     $at, s2, t1                
    bne     $at, $zero, lbl_8094D3DC   
    nop
    or      a0, s3, $zero              # a0 = 00000000
lbl_8094D528:
    jal     func_8094D558              
    lw      a1, 0x00DC($sp)            
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_8094D558:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s5, 0x0060($sp)            
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s4, 0x005C($sp)            
    sw      s3, 0x0058($sp)            
    sw      s2, 0x0054($sp)            
    sw      s1, 0x0050($sp)            
    sw      s0, 0x004C($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x00A4($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    lui     t8, %hi(var_8094F9F0)      # t8 = 80950000
    mtc1    $at, $f30                  # $f30 = 0.50
    lw      t6, 0x00A4($sp)            
    addiu   t8, t8, %lo(var_8094F9F0)  # t8 = 8094F9F0
    lui     $at, 0xC1C8                # $at = C1C80000
    lw      t0, 0x0000(t8)             # 8094F9F0
    mtc1    $at, $f28                  # $f28 = -25.00
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t7, $sp, 0x008C            # t7 = FFFFFFEC
    mtc1    $at, $f24                  # $f24 = 5.00
    lw      s2, 0x1C44(t6)             # 00001C44
    lui     $at, 0x4020                # $at = 40200000
    sw      t0, 0x0000(t7)             # FFFFFFEC
    lw      t0, 0x0008(t8)             # 8094F9F8
    lw      t9, 0x0004(t8)             # 8094F9F4
    mtc1    $at, $f22                  # $f22 = 2.50
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    mtc1    $zero, $f26                # $f26 = 0.00
    addiu   s1, s5, 0x1960             # s1 = 00001960
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    sw      t0, 0x0008(t7)             # FFFFFFF4
    sw      t9, 0x0004(t7)             # FFFFFFF0
lbl_8094D5FC:
    lbu     t1, 0x0024(s1)             # 00001984
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t1, $zero, lbl_8094D960    
    addiu   s3, s3, 0x0001             # s3 = 00000001
    lwc1    $f0, 0x000C(s1)            # 0000196C
    lwc1    $f4, 0x0000(s1)            # 00001960
    lwc1    $f2, 0x0010(s1)            # 00001970
    lwc1    $f8, 0x0004(s1)            # 00001964
    lwc1    $f12, 0x0014(s1)           # 00001974
    lwc1    $f16, 0x0008(s1)           # 00001968
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x0018(s1)            # 00001978
    lbu     t2, 0x0025(s1)             # 00001985
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x001C(s1)            # 0000197C
    swc1    $f6, 0x0000(s1)            # 00001960
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0020(s1)           # 00001980
    swc1    $f10, 0x0004(s1)           # 00001964
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x0008(s1)           # 00001968
    lbu     v0, 0x0024(s1)             # 00001984
    add.s   $f10, $f2, $f8             
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0025(s1)             # 00001985
    add.s   $f18, $f12, $f16           
    swc1    $f6, 0x000C(s1)            # 0000196C
    swc1    $f10, 0x0010(s1)           # 00001970
    bne     v0, $at, lbl_8094D6E0      
    swc1    $f18, 0x0014(s1)           # 00001974
    andi    v1, t3, 0x00FF             # v1 = 00000001
    bgez    v1, lbl_8094D68C           
    andi    v1, v1, 0x0003             # v1 = 00000001
    beq     v1, $zero, lbl_8094D68C    
    nop
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFD
lbl_8094D68C:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    multu   v1, s4                     
    addiu   t5, $sp, 0x008C            # t5 = FFFFFFEC
    lh      t9, 0x002A(s1)             # 0000198A
    addiu   t0, t9, 0xFFEC             # t0 = FFFFFFEC
    mflo    t4                         
    addu    v0, t4, t5                 
    lbu     t6, 0x0000(v0)             # 00000000
    sb      t6, 0x0026(s1)             # 00001986
    lbu     t7, 0x0001(v0)             # 00000001
    sb      t7, 0x0027(s1)             # 00001987
    lbu     t8, 0x0002(v0)             # 00000002
    sh      t0, 0x002A(s1)             # 0000198A
    lh      t1, 0x002A(s1)             # 0000198A
    sb      t8, 0x0028(s1)             # 00001988
    bgtzl   t1, lbl_8094D960           
    addiu   s3, s3, 0x0001             # s3 = 00000002
    sh      $zero, 0x002A(s1)          # 0000198A
    beq     $zero, $zero, lbl_8094D95C 
    sb      $zero, 0x0024(s1)          # 00001984
lbl_8094D6E0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8094D6F0      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8094D72C      
lbl_8094D6F0:
    lui     $at, %hi(var_8094FCE8)     # $at = 80950000
    lwc1    $f6, %lo(var_8094FCE8)($at) 
    lwc1    $f4, 0x0034(s1)            # 00001994
    lui     $at, %hi(var_8094FCEC)     # $at = 80950000
    lwc1    $f10, 0x0038(s1)           # 00001998
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0004(s1)            # 00001964
    swc1    $f8, 0x0034(s1)            # 00001994
    lwc1    $f16, %lo(var_8094FCEC)($at) 
    c.le.s  $f4, $f20                  
    add.s   $f18, $f10, $f16           
    bc1f    lbl_8094D95C               
    swc1    $f18, 0x0038(s1)           # 00001998
    beq     $zero, $zero, lbl_8094D95C 
    sb      $zero, 0x0024(s1)          # 00001984
lbl_8094D72C:
    bne     s4, v0, lbl_8094D794       
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      v0, 0x002C(s1)             # 0000198C
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    slti    $at, v0, 0x0008            
    bnel    $at, $zero, lbl_8094D758   
    lbu     t3, 0x0025(s1)             # 00001985
    sh      t2, 0x002C(s1)             # 0000198C
    beq     $zero, $zero, lbl_8094D95C 
    sb      $zero, 0x0024(s1)          # 00001984
    lbu     t3, 0x0025(s1)             # 00001985
lbl_8094D758:
    andi    t4, t3, 0x0001             # t4 = 00000001
    bnel    t4, $zero, lbl_8094D78C    
    addiu   t5, v0, 0x0001             # t5 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8094FCF0)     # $at = 80950000
    lwc1    $f6, %lo(var_8094FCF0)($at) 
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8094D960               
    addiu   s3, s3, 0x0001             # s3 = 00000003
    lh      v0, 0x002C(s1)             # 0000198C
    addiu   t5, v0, 0x0001             # t5 = 00000001
lbl_8094D78C:
    beq     $zero, $zero, lbl_8094D95C 
    sh      t5, 0x002C(s1)             # 0000198C
lbl_8094D794:
    bnel    v0, $at, lbl_8094D960      
    addiu   s3, s3, 0x0001             # s3 = 00000004
    lwc1    $f8, 0x0024(s2)            # 00000024
    lwc1    $f10, 0x0000(s1)           # 00001960
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f16, 0x0028(s2)           # 00000028
    sub.s   $f2, $f8, $f10             
    lh      t6, 0x023E(s5)             # 0000023E
    lwc1    $f6, 0x0004(s1)            # 00001964
    add.s   $f4, $f16, $f18            
    lwc1    $f10, 0x0008(s1)           # 00001968
    lwc1    $f8, 0x002C(s2)            # 0000002C
    sub.s   $f12, $f4, $f6             
    bne     t6, $zero, lbl_8094D86C    
    sub.s   $f14, $f8, $f10            
    mul.s   $f16, $f2, $f2             
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    mul.s   $f18, $f12, $f12           
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f6, $f14, $f14            
    addiu   t8, $zero, 0x0030          # t8 = 00000030
    add.s   $f4, $f16, $f18            
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8094D870               
    lh      v0, 0x002C(s1)             # 0000198C
    sh      t7, 0x023E(s5)             # 0000023E
    lh      a3, 0x002E(s1)             # 0000198E
    mfc1    a2, $f24                   
    sw      t8, 0x0014($sp)            
    swc1    $f26, 0x0010($sp)          
    jal     func_80022E7C              
    lw      a0, 0x00A4($sp)            
    lbu     t9, 0x0A50(s2)             # 00000A50
    or      s0, $zero, $zero           # s0 = 00000000
    bnel    t9, $zero, lbl_8094D870    
    lh      v0, 0x002C(s1)             # 0000198C
lbl_8094D83C:
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80063BF0              
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addu    t0, s2, s0                 
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0012            
    bne     $at, $zero, lbl_8094D83C   
    sb      v0, 0x0A51(t0)             # 00000A51
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x0A50(s2)             # 00000A50
lbl_8094D86C:
    lh      v0, 0x002C(s1)             # 0000198C
lbl_8094D870:
    bnel    v0, $zero, lbl_8094D918    
    lwc1    $f16, 0x0030(s1)           # 00001990
    lwc1    $f2, 0x0030(s1)            # 00001990
    c.lt.s  $f2, $f22                  
    nop
    bc1fl   lbl_8094D8AC               
    lui     $at, 0x4302                # $at = 43020000
    lwc1    $f0, 0x0034(s1)            # 00001994
    lui     $at, %hi(var_8094FCF4)     # $at = 80950000
    add.s   $f10, $f2, $f0             
    swc1    $f10, 0x0030(s1)           # 00001990
    lwc1    $f16, %lo(var_8094FCF4)($at) 
    add.s   $f18, $f0, $f16            
    swc1    $f18, 0x0034(s1)           # 00001994
    lui     $at, 0x4302                # $at = 43020000
lbl_8094D8AC:
    mtc1    $at, $f6                   # $f6 = 130.00
    lwc1    $f4, 0x0038(s1)            # 00001998
    lwc1    $f10, 0x0004(s1)           # 00001964
    add.s   $f8, $f4, $f6              
    c.le.s  $f10, $f8                  
    nop
    bc1tl   lbl_8094D8E0               
    lwc1    $f16, 0x000C(s1)           # 0000196C
    lbu     t2, 0x0025(s1)             # 00001985
    slti    $at, t2, 0x000A            
    bnel    $at, $zero, lbl_8094D960   
    addiu   s3, s3, 0x0001             # s3 = 00000005
    lwc1    $f16, 0x000C(s1)           # 0000196C
lbl_8094D8E0:
    lwc1    $f6, 0x0014(s1)            # 00001974
    lh      t3, 0x002C(s1)             # 0000198C
    mul.s   $f18, $f16, $f28           
    swc1    $f24, 0x001C(s1)           # 0000197C
    addiu   t4, t3, 0x0001             # t4 = 00000001
    mul.s   $f8, $f6, $f28             
    sh      t4, 0x002C(s1)             # 0000198C
    swc1    $f26, 0x0010(s1)           # 00001970
    div.s   $f4, $f18, $f20            
    div.s   $f10, $f8, $f20            
    swc1    $f4, 0x0018(s1)            # 00001978
    beq     $zero, $zero, lbl_8094D95C 
    swc1    $f10, 0x0020(s1)           # 00001980
    lwc1    $f16, 0x0030(s1)           # 00001990
lbl_8094D918:
    c.lt.s  $f16, $f22                 
    nop
    bc1fl   lbl_8094D944               
    addiu   t5, v0, 0x0001             # t5 = 00000001
    mfc1    a1, $f22                   
    mfc1    a2, $f30                   
    mfc1    a3, $f30                   
    jal     func_80064280              
    addiu   a0, s1, 0x0030             # a0 = 00001990
    lh      v0, 0x002C(s1)             # 0000198C
    addiu   t5, v0, 0x0001             # t5 = 00000001
lbl_8094D944:
    sh      t5, 0x002C(s1)             # 0000198C
    lh      t6, 0x002C(s1)             # 0000198C
    slti    $at, t6, 0x0009            
    bnel    $at, $zero, lbl_8094D960   
    addiu   s3, s3, 0x0001             # s3 = 00000006
    sb      $zero, 0x0024(s1)          # 00001984
lbl_8094D95C:
    addiu   s3, s3, 0x0001             # s3 = 00000007
lbl_8094D960:
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    slti    $at, s3, 0x00B4            
    bne     $at, $zero, lbl_8094D5FC   
    addiu   s1, s1, 0x003C             # s1 = 0000199C
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x004C($sp)            
    lw      s1, 0x0050($sp)            
    lw      s2, 0x0054($sp)            
    lw      s3, 0x0058($sp)            
    lw      s4, 0x005C($sp)            
    lw      s5, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_8094D9B0:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0024($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    or      s6, $zero, $zero           # s6 = 00000000
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x0000(t6)             # 00000000
    sw      s1, 0x0048($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lui     s8, 0xDE00                 # s8 = DE000000
lbl_8094DA08:
    lbu     t7, 0x0024(s1)             # 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t8, 0x005C($sp)            
    bne     t7, $at, lbl_8094DB08      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, t8, $at                
    bne     s6, $zero, lbl_8094DA5C    
    addiu   s7, s7, 0xA900             # s7 = 0600A900
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xA880             # s3 = 0600A880
    jal     func_8007E2C0              
    lw      a0, 0x0000(t8)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DA5C:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lbu     t3, 0x0026(s1)             # 00000026
    lbu     t6, 0x0027(s1)             # 00000027
    lbu     t0, 0x0028(s1)             # 00000028
    sll     t4, t3, 24                 
    lh      t3, 0x002A(s1)             # 0000002A
    sll     t7, t6, 16                 
    or      t8, t4, t7                 # t8 = 00000000
    sll     t1, t0,  8                 
    or      t2, t8, t1                 # t2 = FA000000
    andi    t5, t3, 0x00FF             # t5 = 00000000
    or      t6, t2, t5                 # t6 = FA000000
    sw      t6, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000008
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0030(s1)           # 00000030
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t4, s3, 0x0008             # t4 = 0600A888
    sw      t4, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t7, 0x0000(s3)             # 0600A880
    sw      v0, 0x0004(s3)             # 0600A884
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DB08:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00B4            
    bne     $at, $zero, lbl_8094DA08   
    addiu   s1, s1, 0x003C             # s1 = 0000003C
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0048($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
lbl_8094DB30:
    lbu     t0, 0x0024(s1)             # 00000060
    lui     s4, 0x0601                 # s4 = 06010000
    bnel    s7, t0, lbl_8094DBF4       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_8094DB78    
    addiu   s4, s4, 0xD420             # s4 = 0600D420
    lw      t8, 0x005C($sp)            
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xD3A0             # s3 = 0600D3A0
    jal     func_8007E298              
    lw      a0, 0x0000(t8)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DB78:
    lwc1    $f12, 0x0000(s1)           # 0000003C
    lwc1    $f14, 0x0004(s1)           # 00000040
    lw      a2, 0x0008(s1)             # 00000044
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0038(s1)           # 00000074
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s1)           # 00000070
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0030(s1)           # 0000006C
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t3, s3, 0x0008             # t3 = 0600D3A8
    sw      t3, 0x02C0(s2)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t2, 0x0000(s3)             # 0600D3A0
    sw      v0, 0x0004(s3)             # 0600D3A4
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_8094DBF4:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00B4            
    bne     $at, $zero, lbl_8094DB30   
    addiu   s1, s1, 0x003C             # s1 = 00000078
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0048($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
lbl_8094DC14:
    lbu     t6, 0x0024(s1)             # 0000009C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      s4, 0x005C($sp)            
    bne     t6, $at, lbl_8094DD6C      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, s4, $at                
    bne     s6, $zero, lbl_8094DCA4    
    addiu   s7, s7, 0xB3C8             # s7 = 0600B3C8
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xB3A8             # s3 = 0600B3A8
    lw      a0, 0x02D0(s2)             # 000002D0
    jal     func_8007DFBC              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(v0)             # 00000004
    sw      s8, 0x0000(v0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0x5A1E                 # t0 = 5A1E0000
    ori     t0, t0, 0x00FF             # t0 = 5A1E00FF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    lui     t3, 0x5A1E                 # t3 = 5A1E0000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_8094DCA4:
    lwc1    $f12, 0x0000(s1)           # 00000078
    lwc1    $f14, 0x0004(s1)           # 0000007C
    lw      a2, 0x0008(s1)             # 00000080
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0030(s1)           # 000000A8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 0600D420
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 0600B3B0
    sw      t2, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t5, 0x0000(s3)             # 0600B3A8
    sw      v0, 0x0004(s3)             # 0600B3AC
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lh      t7, 0x002C(s1)             # 000000A4
    lui     a0, %hi(var_8094F9FC)      # a0 = 80950000
    lui     t2, 0x8012                 # t2 = 80120000
    sll     t9, t7,  2                 
    addu    a0, a0, t9                 
    lw      a0, %lo(var_8094F9FC)(a0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, a0,  4                 
    srl     t1, t8, 28                 
    sll     t3, t1,  2                 
    addu    t2, t2, t3                 
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t0, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t2                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DD6C:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00B4            
    bne     $at, $zero, lbl_8094DC14   
    addiu   s1, s1, 0x003C             # s1 = 000000B4
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0048($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
lbl_8094DD90:
    lbu     t7, 0x0024(s1)             # 000000D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      s4, 0x005C($sp)            
    bne     t7, $at, lbl_8094DEF4      
    lui     s7, 0x0601                 # s7 = 06010000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s4, s4, $at                
    bne     s6, $zero, lbl_8094DE04    
    addiu   s7, s7, 0xB3C8             # s7 = 0600B3C8
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xB3A8             # s3 = 0600B3A8
    lw      a0, 0x02D0(s2)             # 000002D0
    jal     func_8007DFBC              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(v0)             # 00000004
    sw      s8, 0x0000(v0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xFF0A                 # t3 = FF0A0000
    ori     t3, t3, 0x00FF             # t3 = FF0A00FF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    sw      t1, 0x0000(s0)             # 00000000
    sw      t3, 0x0004(s0)             # 00000004
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
lbl_8094DE04:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     $at, 0xFFFF                # $at = FFFF0000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lh      t5, 0x002A(s1)             # 000000DE
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t4, t6, $at                # t4 = FFFF0000
    sw      t4, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 000000B4
    lwc1    $f14, 0x0004(s1)           # 000000B8
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 000000BC
    lwc1    $f12, 0x0030(s1)           # 000000E4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 0600D420
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t7, s3, 0x0008             # t7 = 0600B3B0
    sw      t7, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t9, 0x0000(s3)             # 0600B3A8
    sw      v0, 0x0004(s3)             # 0600B3AC
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lh      t3, 0x002C(s1)             # 000000E0
    lui     a0, %hi(var_8094F9FC)      # a0 = 80950000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t0, t3,  2                 
    addu    a0, a0, t0                 
    lw      a0, %lo(var_8094F9FC)(a0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, a0,  4                 
    srl     t6, t5, 28                 
    sll     t4, t6,  2                 
    addu    t7, t7, t4                 
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t2, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t2, t7                 
    addu    t8, t9, $at                
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DEF4:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00B4            
    bne     $at, $zero, lbl_8094DD90   
    addiu   s1, s1, 0x003C             # s1 = 000000F0
    or      s6, $zero, $zero           # s6 = 00000000
    lw      s1, 0x0048($sp)            
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $zero, 0x0005          # s7 = 00000005
lbl_8094DF1C:
    lbu     t3, 0x0024(s1)             # 00000114
    lui     s4, 0x0601                 # s4 = 06010000
    bnel    s7, t3, lbl_8094DFE0       
    addiu   s5, s5, 0x0001             # s5 = 00000001
    bne     s6, $zero, lbl_8094DF64    
    addiu   s4, s4, 0xD6E8             # s4 = 0600D6E8
    lw      t0, 0x005C($sp)            
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xD668             # s3 = 0600D668
    jal     func_8007E2C0              
    lw      a0, 0x0000(t0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0x00FF             # s6 = 00000001
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_8094DF64:
    lwc1    $f12, 0x0000(s1)           # 000000F0
    lwc1    $f14, 0x0004(s1)           # 000000F4
    lw      a2, 0x0008(s1)             # 000000F8
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0038(s1)           # 00000128
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s1)           # 00000124
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0030(s1)           # 00000120
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t6, s3, 0x0008             # t6 = 0600D670
    sw      t6, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t4, 0x0000(s3)             # 0600D668
    sw      v0, 0x0004(s3)             # 0600D66C
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
lbl_8094DFE0:
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00B4            
    bne     $at, $zero, lbl_8094DF1C   
    addiu   s1, s1, 0x003C             # s1 = 0000012C
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_8094E028:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t7, 0x0030($sp)            
    lui     t6, %hi(func_8094BF54)     # t6 = 80950000
    addiu   t6, t6, %lo(func_8094BF54) # t6 = 8094BF54
    lw      t8, 0x0208(t7)             # 00000208
    lw      t9, 0x0034($sp)            
    beql    t6, t8, lbl_8094E0C0       
    lw      a0, 0x0030($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      t0, 0x0030($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    lh      t1, 0x0220(t0)             # 00000220
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    addiu   t3, $zero, 0x0384          # t3 = 00000384
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_8094E0A0    
    addiu   t4, $zero, 0x044B          # t4 = 0000044B
    lw      a0, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    jal     func_8007DC40              
    sw      $zero, 0x0010($sp)         
    sw      v0, 0x02C0(s0)             # 000002C0
lbl_8094E0A0:
    lw      a0, 0x0034($sp)            
    jal     func_8094E8EC              
    lw      a1, 0x0030($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_8009A574              
    lw      a1, 0x02C0(s0)             # 000002C0
    sw      v0, 0x02C0(s0)             # 000002C0
    lw      a0, 0x0030($sp)            
lbl_8094E0C0:
    lw      a1, 0x0034($sp)            
    jal     func_8094D9B0              
    addiu   a0, a0, 0x1960             # a0 = 00001960
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8094E0E0:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_8094E114      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_8094E148      
    lw      v1, 0x0010($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_8094E194      
    lw      v1, 0x0010($sp)            
    beq     $zero, $zero, lbl_8094E1E0 
    lw      v0, 0x0014($sp)            
lbl_8094E114:
    lw      v1, 0x0010($sp)            
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f4                   # $f4 = 4000.00
    lh      t6, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x0C2C(v0)            # 00000C2C
    mtc1    t6, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6              
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    beq     $zero, $zero, lbl_8094E1E0 
    sh      t8, 0x0002(v1)             # 00000002
lbl_8094E148:
    lh      t9, 0x0002(v1)             # 00000002
    lw      v0, 0x0014($sp)            
    lh      t2, 0x0004(v1)             # 00000004
    mtc1    t9, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x0C38(v0)           # 00000C38
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f6                  
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f10, $f16            
    trunc.w.s $f18, $f8                  
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0002(v1)             # 00000002
    lwc1    $f10, 0x0C3C(v0)           # 00000C3C
    add.s   $f16, $f6, $f10            
    trunc.w.s $f8, $f16                  
    mfc1    t4, $f8                    
    beq     $zero, $zero, lbl_8094E1E0 
    sh      t4, 0x0004(v1)             # 00000004
lbl_8094E194:
    lh      t5, 0x0002(v1)             # 00000002
    lw      v0, 0x0014($sp)            
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t5, $f18                   # $f18 = 0.00
    lwc1    $f6, 0x0C44(v0)            # 00000C44
    mtc1    t8, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f18                  
    cvt.s.w $f18, $f8                  
    add.s   $f10, $f4, $f6             
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    sh      t7, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x0C48(v0)            # 00000C48
    add.s   $f6, $f18, $f4             
    trunc.w.s $f10, $f6                  
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x0004(v1)             # 00000004
lbl_8094E1E0:
    lh      t1, 0x020E(v0)             # 0000020E
    or      v0, $zero, $zero           # v0 = 00000000
    slt     $at, t1, a1                
    beq     $at, $zero, lbl_8094E1F8   
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8094E1F8:
    jr      $ra                        
    nop


func_8094E200:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_8094E234      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_8094E268      
    lw      v1, 0x0010($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_8094E2B4      
    lw      v1, 0x0010($sp)            
    beq     $zero, $zero, lbl_8094E300 
    lw      v0, 0x0014($sp)            
lbl_8094E234:
    lw      v1, 0x0010($sp)            
    lui     $at, 0xC57A                # $at = C57A0000
    mtc1    $at, $f4                   # $f4 = -4000.00
    lh      t6, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x0C5C(v0)            # 00000C5C
    mtc1    t6, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6              
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    beq     $zero, $zero, lbl_8094E300 
    sh      t8, 0x0002(v1)             # 00000002
lbl_8094E268:
    lh      t9, 0x0002(v1)             # 00000002
    lw      v0, 0x0014($sp)            
    lh      t2, 0x0004(v1)             # 00000004
    mtc1    t9, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x0C68(v0)           # 00000C68
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f6                  
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f10, $f16            
    trunc.w.s $f18, $f8                  
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0002(v1)             # 00000002
    lwc1    $f10, 0x0C6C(v0)           # 00000C6C
    add.s   $f16, $f6, $f10            
    trunc.w.s $f8, $f16                  
    mfc1    t4, $f8                    
    beq     $zero, $zero, lbl_8094E300 
    sh      t4, 0x0004(v1)             # 00000004
lbl_8094E2B4:
    lh      t5, 0x0002(v1)             # 00000002
    lw      v0, 0x0014($sp)            
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t5, $f18                   # $f18 = 0.00
    lwc1    $f6, 0x0C74(v0)            # 00000C74
    mtc1    t8, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f18                  
    cvt.s.w $f18, $f8                  
    add.s   $f10, $f4, $f6             
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    sh      t7, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x0C78(v0)            # 00000C78
    add.s   $f6, $f18, $f4             
    trunc.w.s $f10, $f6                  
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x0004(v1)             # 00000004
lbl_8094E300:
    lh      t1, 0x020E(v0)             # 0000020E
    or      v0, $zero, $zero           # v0 = 00000000
    slt     $at, t1, a1                
    beq     $at, $zero, lbl_8094E318   
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8094E318:
    jr      $ra                        
    nop


func_8094E320:
    addiu   $sp, $sp, 0xFEA8           # $sp = FFFFFEA8
    sw      s7, 0x0064($sp)            
    sw      s6, 0x0060($sp)            
    sw      s3, 0x0054($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s6, $sp, 0x0130            # s6 = FFFFFFD8
    addiu   s7, $sp, 0x00B8            # s7 = FFFFFF60
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0158($sp)            
    sw      a2, 0x0160($sp)            
    sw      a3, 0x0164($sp)            
    lui     t6, %hi(var_8094FA60)      # t6 = 80950000
    addiu   t6, t6, %lo(var_8094FA60)  # t6 = 8094FA60
    addiu   t0, t6, 0x0024             # t0 = 8094FA84
    or      t9, s6, $zero              # t9 = FFFFFFD8
lbl_8094E38C:
    lw      t8, 0x0000(t6)             # 8094FA60
    addiu   t6, t6, 0x000C             # t6 = 8094FA6C
    addiu   t9, t9, 0x000C             # t9 = FFFFFFE4
    sw      t8, -0x000C(t9)            # FFFFFFD8
    lw      t7, -0x0008(t6)            # 8094FA64
    sw      t7, -0x0008(t9)            # FFFFFFDC
    lw      t8, -0x0004(t6)            # 8094FA68
    bne     t6, t0, lbl_8094E38C       
    sw      t8, -0x0004(t9)            # FFFFFFE0
    lw      t8, 0x0000(t6)             # 8094FA6C
    lui     t2, %hi(var_8094FA88)      # t2 = 80950000
    addiu   t2, t2, %lo(var_8094FA88)  # t2 = 8094FA88
    addiu   t5, t2, 0x0024             # t5 = 8094FAAC
    addiu   t1, $sp, 0x0108            # t1 = FFFFFFB0
    sw      t8, 0x0000(t9)             # FFFFFFE4
lbl_8094E3C8:
    lw      t4, 0x0000(t2)             # 8094FA88
    addiu   t2, t2, 0x000C             # t2 = 8094FA94
    addiu   t1, t1, 0x000C             # t1 = FFFFFFBC
    sw      t4, -0x000C(t1)            # FFFFFFB0
    lw      t3, -0x0008(t2)            # 8094FA8C
    sw      t3, -0x0008(t1)            # FFFFFFB4
    lw      t4, -0x0004(t2)            # 8094FA90
    bne     t2, t5, lbl_8094E3C8       
    sw      t4, -0x0004(t1)            # FFFFFFB8
    lw      t4, 0x0000(t2)             # 8094FA94
    lui     t6, %hi(var_8094FAB0)      # t6 = 80950000
    addiu   t6, t6, %lo(var_8094FAB0)  # t6 = 8094FAB0
    addiu   t8, t6, 0x0024             # t8 = 8094FAD4
    addiu   t0, $sp, 0x00E0            # t0 = FFFFFF88
    sw      t4, 0x0000(t1)             # FFFFFFBC
lbl_8094E404:
    lw      t7, 0x0000(t6)             # 8094FAB0
    addiu   t6, t6, 0x000C             # t6 = 8094FABC
    addiu   t0, t0, 0x000C             # t0 = FFFFFF94
    sw      t7, -0x000C(t0)            # FFFFFF88
    lw      t9, -0x0008(t6)            # 8094FAB4
    sw      t9, -0x0008(t0)            # FFFFFF8C
    lw      t7, -0x0004(t6)            # 8094FAB8
    bne     t6, t8, lbl_8094E404       
    sw      t7, -0x0004(t0)            # FFFFFF90
    lw      t7, 0x0000(t6)             # 8094FABC
    lui     t5, %hi(var_8094FAD8)      # t5 = 80950000
    addiu   t5, t5, %lo(var_8094FAD8)  # t5 = 8094FAD8
    addiu   t4, t5, 0x0024             # t4 = 8094FAFC
    or      t3, s7, $zero              # t3 = FFFFFF60
    sw      t7, 0x0000(t0)             # FFFFFF94
lbl_8094E440:
    lw      t1, 0x0000(t5)             # 8094FAD8
    addiu   t5, t5, 0x000C             # t5 = 8094FAE4
    addiu   t3, t3, 0x000C             # t3 = FFFFFF6C
    sw      t1, -0x000C(t3)            # FFFFFF60
    lw      t2, -0x0008(t5)            # 8094FADC
    sw      t2, -0x0008(t3)            # FFFFFF64
    lw      t1, -0x0004(t5)            # 8094FAE0
    bne     t5, t4, lbl_8094E440       
    sw      t1, -0x0004(t3)            # FFFFFF68
    lw      t1, 0x0000(t5)             # 8094FAE4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    lui     t4, 0x0601                 # t4 = 06010000
    sw      t1, 0x0000(t3)             # FFFFFF6C
    lw      t8, 0x0158($sp)            
    lh      t6, 0x020E(s3)             # 0000020E
    addiu   t4, t4, 0x91E8             # t4 = 060091E8
    lw      s5, 0x0000(t8)             # 8094FAD4
    sh      t6, 0x00B2($sp)            
    lh      t0, 0x00B2($sp)            
    slti    $at, t0, 0x000B            
    bnel    $at, $zero, lbl_8094E4A0   
    lh      t7, 0x00B2($sp)            
    sh      t9, 0x00B2($sp)            
    lh      t7, 0x00B2($sp)            
lbl_8094E4A0:
    or      s1, $zero, $zero           # s1 = 00000000
    lbu     s8, 0x016F($sp)            
    blez    t7, lbl_8094E758           
    lui     $at, %hi(var_8094FCF8)     # $at = 80950000
    lwc1    $f30, %lo(var_8094FCF8)($at) 
    lui     $at, %hi(var_8094FCFC)     # $at = 80950000
    lwc1    $f28, %lo(var_8094FCFC)($at) 
    lui     $at, %hi(var_8094FD00)     # $at = 80950000
    mtc1    $zero, $f24                # $f24 = 0.00
    lwc1    $f26, %lo(var_8094FD00)($at) 
    sw      t4, 0x0070($sp)            
    lh      t5, 0x021A(s3)             # 0000021A
lbl_8094E4D0:
    sll     t3, s1,  1                 
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    subu    s4, t5, t3                 
    addiu   s4, s4, 0x001E             # s4 = 0000001E
    div     $zero, s4, $at             
    mfhi    s4                         
    sll     s4, s4, 16                 
    bne     s8, $zero, lbl_8094E544    
    sra     s4, s4, 16                 
    sll     v0, s1,  2                 
    swc1    $f24, 0x00AC($sp)          
    swc1    $f24, 0x00A4($sp)          
    addu    t2, s6, v0                 
    lwc1    $f4, 0x0000(t2)            # 8094FA94
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f6, $f4, $f30             
    lwc1    $f16, 0x13B8(s3)           # 000013B8
    addu    t1, s7, v0                 
    mov.s   $f20, $f24                 
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x00A8($sp)          
    lwc1    $f6, 0x13B8(s3)            # 000013B8
    lwc1    $f4, 0x0000(t1)            # FFFFFFBC
    mul.s   $f22, $f4, $f6             
    beq     $zero, $zero, lbl_8094E610 
    nop
lbl_8094E544:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     s8, $at, lbl_8094E5B4      
    sll     v0, s1,  2                 
    sll     v0, s1,  2                 
    addu    t8, s7, v0                 
    lwc1    $f8, 0x0000(t8)            # 8094FAD4
    lwc1    $f0, 0x13B8(s3)            # 000013B8
    addu    t6, $sp, v0                
    lwc1    $f16, 0x00E0(t6)           # 8094FB9C
    mul.s   $f10, $f8, $f0             
    addu    t0, s6, v0                 
    lwc1    $f18, 0x0000(t0)           # FFFFFF94
    addu    t9, $sp, v0                
    mul.s   $f22, $f10, $f26           
    nop
    mul.s   $f20, $f16, $f0            
    nop
    mul.s   $f4, $f18, $f0             
    nop
    mul.s   $f6, $f4, $f26             
    swc1    $f6, 0x00A8($sp)           
    lwc1    $f8, 0x0108(t9)            # 00000112
    lwc1    $f16, 0x13B8(s3)           # 000013B8
    swc1    $f24, 0x00AC($sp)          
    neg.s   $f10, $f8                  
    mul.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_8094E610 
    swc1    $f18, 0x00A4($sp)          
lbl_8094E5B4:
    addu    t7, s7, v0                 
    lwc1    $f4, 0x0000(t7)            # 00000000
    lwc1    $f0, 0x13B8(s3)            # 000013B8
    addu    t4, $sp, v0                
    lwc1    $f8, 0x00E0(t4)            # 060092C8
    mul.s   $f6, $f4, $f0              
    addu    t5, s6, v0                 
    neg.s   $f10, $f8                  
    lwc1    $f16, 0x0000(t5)           # 8094FAE4
    addu    t3, $sp, v0                
    mul.s   $f22, $f6, $f26            
    nop
    mul.s   $f20, $f10, $f0            
    nop
    mul.s   $f18, $f16, $f0            
    nop
    mul.s   $f4, $f18, $f26            
    swc1    $f4, 0x00A8($sp)           
    lwc1    $f8, 0x13B8(s3)            # 000013B8
    lwc1    $f6, 0x0108(t3)            # 00000074
    swc1    $f24, 0x00AC($sp)          
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x00A4($sp)          
lbl_8094E610:
    lw      t2, 0x0164($sp)            
    sll     s2, s4,  2                 
    subu    s2, s2, s4                 
    sll     s2, s2,  2                 
    addu    s0, s2, t2                 
    lwc1    $f12, 0x0004(s0)           # 00000004
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f12, 0x0000(s0)           # 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFF4C
    jal     func_800AB958              
    addiu   a1, $sp, 0x0098            # a1 = FFFFFF40
    lw      t1, 0x0160($sp)            
    lwc1    $f18, 0x0098($sp)          
    lwc1    $f10, 0x00A0($sp)          
    addu    v0, s2, t1                 
    lwc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f8, 0x0008(v0)            # 00000008
    lwc1    $f4, 0x0004(v0)            # 00000004
    add.s   $f12, $f16, $f18           
    lwc1    $f6, 0x009C($sp)           
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f16, $f8, $f10            
    add.s   $f14, $f4, $f6             
    mfc1    a2, $f16                   
    jal     func_800AA7F4              
    nop
    lwc1    $f18, 0x0004(s0)           # 00000004
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94              
    add.s   $f12, $f18, $f20           
    lwc1    $f4, 0x0000(s0)            # 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    add.s   $f12, $f4, $f22            
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    mtc1    s1, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_8094FD04)     # $at = 80950000
    lwc1    $f16, %lo(var_8094FD04)($at) 
    cvt.s.w $f10, $f8                  
    lw      t8, 0x0168($sp)            
    sll     t6, s4,  2                 
    mfc1    a2, $f28                   
    addu    t0, t8, t6                 
    lwc1    $f6, 0x0000(t0)            # 00000000
    mul.s   $f18, $f10, $f16           
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f4, $f28, $f18            
    mul.s   $f12, $f6, $f4             
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, %hi(var_8094FD08)     # $at = 80950000
    lwc1    $f12, %lo(var_8094FD08)($at) 
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02D0(s5)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t9, s2, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s5)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    lw      t4, 0x0158($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      t2, 0x0070($sp)            
    sw      t2, 0x0004(s0)             # 00000004
    lh      t1, 0x00B2($sp)            
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slt     $at, s1, t1                
    bnel    $at, $zero, lbl_8094E4D0   
    lh      t5, 0x021A(s3)             # 0000021A
lbl_8094E758:
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
    addiu   $sp, $sp, 0x0158           # $sp = 00000000


func_8094E7A0:
    sw      a0, 0x0000($sp)            
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    sw      a3, 0x000C($sp)            
    beq     a1, a0, lbl_8094E808       
    lw      v1, 0x0010($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a1, $at, lbl_8094E7D4      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    a1, $at, lbl_8094E7D8      
    lw      v1, 0x0010($sp)            
    beq     $zero, $zero, lbl_8094E830 
    lw      v0, 0x0014($sp)            
lbl_8094E7D4:
    lw      v1, 0x0010($sp)            
lbl_8094E7D8:
    lui     $at, %hi(var_8094FD0C)     # $at = 80950000
    lwc1    $f6, %lo(var_8094FD0C)($at) 
    lh      t6, 0x0004(v1)             # 00000004
    lwc1    $f4, 0x13BC(v0)            # 000013BC
    mtc1    t6, $f10                   # $f10 = 0.00
    mul.s   $f8, $f4, $f6              
    cvt.s.w $f16, $f10                 
    sub.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    beq     $zero, $zero, lbl_8094E830 
    sh      t8, 0x0004(v1)             # 00000004
lbl_8094E808:
    lh      t9, 0x0004(v1)             # 00000004
    lw      v0, 0x0014($sp)            
    mtc1    t9, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x13BC(v0)           # 000013BC
    cvt.s.w $f10, $f6                  
    add.s   $f8, $f10, $f16            
    trunc.w.s $f18, $f8                  
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0004(v1)             # 00000004
lbl_8094E830:
    lbu     t2, 0x02C7(v0)             # 000002C7
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_8094E850      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_8094E850      
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x59F8             # t3 = 060059F8
    sw      t3, 0x0000(a2)             # 00000000
lbl_8094E850:
    lh      t4, 0x020E(v0)             # 0000020E
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t4, $zero, lbl_8094E890    
    nop
    bne     a1, $at, lbl_8094E878      
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0xCBC8             # t5 = 0600CBC8
    beq     $zero, $zero, lbl_8094E890 
    sw      t5, 0x0000(a2)             # 00000000
lbl_8094E878:
    bne     a1, a0, lbl_8094E88C       
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xD0A0             # t6 = 0600D0A0
    beq     $zero, $zero, lbl_8094E890 
    sw      t6, 0x0000(a2)             # 00000000
lbl_8094E88C:
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8094E890:
    jr      $ra                        
    nop


func_8094E898:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_8094E8DC      
    lui     a0, %hi(var_8094FB00)      # a0 = 80950000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_8094FB00)  # a0 = 8094FB00
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a1, 0x0028($sp)            
    lui     a0, %hi(var_8094FB0C)      # a0 = 80950000
    addiu   a0, a0, %lo(var_8094FB0C)  # a0 = 8094FB0C
    jal     func_800AB958              
    addiu   a1, a1, 0x13E4             # a1 = 000013E4
lbl_8094E8DC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8094E8EC:
    addiu   $sp, $sp, 0xFE88           # $sp = FFFFFE88
    sw      s7, 0x0078($sp)            
    sw      s4, 0x006C($sp)            
    or      s4, a1, $zero              # s4 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s6, 0x0074($sp)            
    sw      s5, 0x0070($sp)            
    sw      s3, 0x0068($sp)            
    sw      s2, 0x0064($sp)            
    sw      s1, 0x0060($sp)            
    sw      s0, 0x005C($sp)            
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lw      v0, 0x0000(s7)             # 00000000
    lw      s1, 0x02C4(v0)             # 000002C4
    addiu   s1, s1, 0xFB80             # s1 = FFFFFB80
    or      s6, s1, $zero              # s6 = FFFFFB80
    sw      s1, 0x02C4(v0)             # 000002C4
    lh      t6, 0x020E(s4)             # 0000020E
    lw      s5, 0x0000(s7)             # 00000000
    beql    t6, $zero, lbl_8094E9B8    
    lw      s0, 0x02C0(s5)             # 000002C0
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s5)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t9, 0x02C5(s4)             # 000002C5
    lui     a0, %hi(var_8094FB18)      # a0 = 80950000
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t0, t9,  2                 
    addu    a0, a0, t0                 
    lw      a0, %lo(var_8094FB18)(a0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, a0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t1, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s5)             # 000002C0
lbl_8094E9B8:
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s5)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0248(s4)            # 00000248
    lwc1    $f4, 0x0244(s4)            # 00000244
    lw      a0, 0x0000(s7)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lwc1    $f16, 0x024C(s4)           # 0000024C
    trunc.w.s $f6, $f4                   
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f6                    
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     t7, t6, 16                 
    sra     t8, t7, 16                 
    sw      t8, 0x001C($sp)            
    lwc1    $f4, 0x0250(s4)            # 00000250
    mfc1    a3, $f10                   
    sw      t1, 0x0028($sp)            
    trunc.w.s $f6, $f4                   
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t4, 0x0024($sp)            
    mfc1    t0, $f6                    
    nop
    sll     t2, t0, 16                 
    sra     t3, t2, 16                 
    jal     func_8007EB84              
    sw      t3, 0x0020($sp)            
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s5)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s5)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x0260(s4)            # 00000260
    trunc.w.s $f10, $f8                  
    mfc1    t4, $f10                   
    nop
    andi    t1, t4, 0x00FF             # t1 = 00000000
    or      t5, t1, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA6EC              
    nop
    lui     t6, %hi(var_8094FA24)      # t6 = 80950000
    lh      t6, %lo(var_8094FA24)(t6)  
    lh      t7, 0x0218(s4)             # 00000218
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a3, $zero, $zero           # a3 = 00000000
    addu    v0, t6, t7                 
    div     $zero, v0, $at             
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t8, v0,  2                 
    subu    t8, t8, v0                 
    sll     t8, t8,  2                 
    addu    s0, s4, t8                 
    lwc1    $f12, 0x077C(s0)           # 0000077C
    lwc1    $f14, 0x0780(s0)           # 00000780
    jal     func_800AA7F4              
    lw      a2, 0x0784(s0)             # 00000784
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x02CC(s0)           # 000002CC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f20                  # $f20 = 13.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f22                  # $f22 = -5.00
    lui     $at, 0xC150                # $at = C1500000
    mtc1    $at, $f12                  # $f12 = -13.00
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f22                 
    lui     $at, %hi(var_8094FD10)     # $at = 80950000
    lwc1    $f26, %lo(var_8094FD10)($at) 
    lwc1    $f16, 0x0050(s4)           # 00000050
    lwc1    $f18, 0x0054(s4)           # 00000054
    lwc1    $f4, 0x0058(s4)            # 00000058
    mul.s   $f12, $f16, $f26           
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f18, $f26           
    nop
    mul.s   $f6, $f4, $f26             
    mfc1    a2, $f6                    
    jal     func_800AA8FC              
    nop
    lw      a1, 0x0184(s4)             # 00000184
    lw      a2, 0x01A0(s4)             # 000001A0
    lui     a3, %hi(func_8094E0E0)     # a3 = 80950000
    addiu   a3, a3, %lo(func_8094E0E0) # a3 = 8094E0E0
    sw      s4, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8008993C              
    or      a0, s7, $zero              # a0 = 00000000
    jal     func_800AA724              
    nop
    jal     func_800AA6EC              
    nop
    lui     t9, %hi(var_8094FA24)      # t9 = 80950000
    lh      t9, %lo(var_8094FA24)(t9)  
    lh      t0, 0x0218(s4)             # 00000218
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a3, $zero, $zero           # a3 = 00000000
    addu    v0, t9, t0                 
    div     $zero, v0, $at             
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t2, v0,  2                 
    subu    t2, t2, v0                 
    sll     t2, t2,  2                 
    addu    s0, s4, t2                 
    lwc1    $f12, 0x077C(s0)           # 0000077C
    lwc1    $f14, 0x0780(s0)           # 00000780
    jal     func_800AA7F4              
    lw      a2, 0x0784(s0)             # 00000784
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x02CC(s0)           # 000002CC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f22                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f8, 0x0050(s4)            # 00000050
    lwc1    $f10, 0x0054(s4)           # 00000054
    lwc1    $f16, 0x0058(s4)           # 00000058
    mul.s   $f12, $f8, $f26            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f10, $f26           
    nop
    mul.s   $f18, $f16, $f26           
    mfc1    a2, $f18                   
    jal     func_800AA8FC              
    nop
    lw      a1, 0x01C8(s4)             # 000001C8
    lw      a2, 0x01E4(s4)             # 000001E4
    lui     a3, %hi(func_8094E200)     # a3 = 80950000
    addiu   a3, a3, %lo(func_8094E200) # a3 = 8094E200
    sw      s4, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8008993C              
    or      a0, s7, $zero              # a0 = 00000000
    jal     func_800AA724              
    nop
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0034             # t4 = DB060034
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s5)             # 000002C0
    sw      s1, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_800AA6EC              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t1, s4, 0x1480             # t1 = 00001480
    mtc1    $at, $f24                  # $f24 = 1.00
    mtc1    $zero, $f28                # $f28 = 0.00
    sw      t1, 0x0084($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
lbl_8094ECAC:
    sll     s2, s1,  1                 
    lui     t5, %hi(var_8094FA22)      # t5 = 80950000
    addu    t5, t5, s2                 
    lh      t5, %lo(var_8094FA22)(t5)  
    lh      t6, 0x0218(s4)             # 00000218
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a3, $zero, $zero           # a3 = 00000000
    addu    v0, t5, t6                 
    div     $zero, v0, $at             
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t7, v0,  2                 
    subu    t7, t7, v0                 
    sll     t7, t7,  2                 
    addu    s0, s4, t7                 
    lwc1    $f12, 0x077C(s0)           # 0000077C
    lwc1    $f14, 0x0780(s0)           # 00000780
    jal     func_800AA7F4              
    lw      a2, 0x0784(s0)             # 00000784
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x02CC(s0)           # 000002CC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    mov.s   $f12, $f28                 
    mov.s   $f14, $f28                 
    lui     a2, 0x420C                 # a2 = 420C0000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0050(s4)           # 00000050
    lwc1    $f14, 0x0054(s4)           # 00000054
    lw      a2, 0x0058(s4)             # 00000058
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t8, 0x020E(s4)             # 0000020E
    lui     t0, %hi(var_8094FB6C)      # t0 = 80950000
    addiu   t0, t0, %lo(var_8094FB6C)  # t0 = 8094FB6C
    slt     $at, s1, t8                
    beql    $at, $zero, lbl_8094EE74   
    lw      t3, 0x0000(t0)             # 8094FB6C
    mtc1    s1, $f4                    # $f4 = 0.00
    lh      t9, 0x0218(s4)             # 00000218
    lui     $at, %hi(var_8094FD14)     # $at = 80950000
    cvt.s.w $f6, $f4                   
    mtc1    t9, $f10                   # $f10 = 0.00
    lwc1    $f8, %lo(var_8094FD14)($at) 
    lui     $at, %hi(var_8094FD18)     # $at = 80950000
    lwc1    $f18, %lo(var_8094FD18)($at) 
    cvt.s.w $f16, $f10                 
    mul.s   $f2, $f6, $f8              
    nop
    mul.s   $f4, $f16, $f18            
    swc1    $f2, 0x0090($sp)           
    add.s   $f6, $f4, $f2              
    trunc.w.s $f8, $f6                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    swc1    $f0, 0x0094($sp)           
    lh      t2, 0x0218(s4)             # 00000218
    lui     $at, %hi(var_8094FD1C)     # $at = 80950000
    lwc1    $f18, %lo(var_8094FD1C)($at) 
    mtc1    t2, $f10                   # $f10 = 0.00
    lwc1    $f2, 0x0090($sp)           
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    add.s   $f6, $f4, $f2              
    trunc.w.s $f8, $f6                   
    mfc1    a0, $f8                    
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f2, 0x0270(s4)            # 00000270
    lwc1    $f10, 0x0094($sp)          
    mfc1    a2, $f24                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f16, $f2, $f10            
    nop
    mul.s   $f18, $f2, $f0             
    add.s   $f12, $f16, $f24           
    jal     func_800AA8FC              
    add.s   $f14, $f18, $f24           
    lui     $at, %hi(var_8094FD20)     # $at = 80950000
    lwc1    $f12, %lo(var_8094FD20)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AB8D8              
    or      a0, s6, $zero              # a0 = FFFFFB80
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s5)             # 000002C0
    sw      s6, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    sll     t7, s1,  2                 
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s5)             # 000002C0
    lui     t8, %hi(var_8094FB24)      # t8 = 80950000
    addu    t8, t8, t7                 
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, %lo(var_8094FB24)(t8)  
    sw      t8, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8094F014 
    nop
    lw      t3, 0x0000(t0)             # 00000000
lbl_8094EE74:
    addiu   t9, $sp, 0x00FC            # t9 = FFFFFF84
    lw      t2, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t9)             # FFFFFF84
    lw      t3, 0x0008(t0)             # 00000008
    addu    s3, s4, s2                 
    sw      t2, 0x0004(t9)             # FFFFFF88
    sw      t3, 0x0008(t9)             # FFFFFF8C
    lh      t4, 0x13C0(s3)             # 000013C0
    lui     a2, 0xC489                 # a2 = C4890000
    ori     a2, a2, 0x8000             # a2 = C4898000
    slti    $at, t4, 0x0002            
    beq     $at, $zero, lbl_8094F014   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     s2, 0x0601                 # s2 = 06010000
    mov.s   $f22, $f26                 
    mov.s   $f20, $f26                 
    addiu   s2, s2, 0xB2F8             # s2 = 0600B2F8
    mov.s   $f12, $f28                 
    jal     func_800AA7F4              
    mov.s   $f14, $f28                 
    lui     $at, %hi(var_8094FD24)     # $at = 80950000
    lwc1    $f12, %lo(var_8094FD24)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    slti    $at, s1, 0x000E            
    bne     $at, $zero, lbl_8094EF18   
    addiu   t1, s1, 0xFFF2             # t1 = FFFFFFF2
    mtc1    t1, $f4                    # $f4 = NaN
    lui     $at, %hi(var_8094FD28)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FD28)($at) 
    cvt.s.w $f6, $f4                   
    mfc1    a2, $f24                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f6, $f8             
    sub.s   $f12, $f24, $f10           
    mov.s   $f14, $f12                 
    jal     func_800AA8FC              
    swc1    $f12, 0x008C($sp)          
    lwc1    $f12, 0x008C($sp)          
    mul.s   $f20, $f26, $f12           
    mov.s   $f22, $f20                 
lbl_8094EF18:
    mfc1    a2, $f26                   
    mov.s   $f12, $f26                 
    mov.s   $f14, $f26                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02C0(s5)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s5)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s5)             # 000002C0
    sw      s2, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x13C0(s3)             # 000013C0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $sp, 0x00FC            # a0 = FFFFFF84
    bne     t9, $at, lbl_8094F014      
    addiu   a1, $sp, 0x00F0            # a1 = FFFFFF78
    sh      t0, 0x13C0(s3)             # 000013C0
    jal     func_800AB958              
    addiu   s0, s7, 0x1C24             # s0 = 00001C24
    jal     func_800AA740              
    addiu   a0, $sp, 0x0108            # a0 = FFFFFF90
    addiu   a0, $sp, 0x0108            # a0 = FFFFFF90
    addiu   a1, $sp, 0x00E8            # a1 = FFFFFF70
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    lwc1    $f16, 0x00F0($sp)          
    lwc1    $f18, 0x00F4($sp)          
    lwc1    $f4, 0x00F8($sp)           
    lh      t2, 0x00E8($sp)            
    lh      t3, 0x00EA($sp)            
    lh      t4, 0x00EC($sp)            
    addiu   t1, s1, 0x00C8             # t1 = 000000C8
    sw      t1, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s7, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00AD          # a3 = 000000AD
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    swc1    $f4, 0x0018($sp)           
    sw      t2, 0x001C($sp)            
    sw      t3, 0x0020($sp)            
    jal     func_800253F0              
    sw      t4, 0x0024($sp)            
    lwc1    $f6, 0x0050(s4)            # 00000050
    mul.s   $f8, $f6, $f20             
    swc1    $f8, 0x0050(v0)            # 00000050
    lwc1    $f10, 0x0054(s4)           # 00000054
    mul.s   $f16, $f10, $f22           
    swc1    $f16, 0x0054(v0)           # 00000054
    lwc1    $f18, 0x0058(s4)           # 00000058
    mul.s   $f4, $f18, $f26            
    swc1    $f4, 0x0058(v0)            # 00000058
lbl_8094F014:
    blez    s1, lbl_8094F024           
    addiu   a0, s1, 0x0001             # a0 = 00000001
    jal     func_80050CE4              
    lw      a1, 0x0084($sp)            
lbl_8094F024:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0012            
    bne     $at, $zero, lbl_8094ECAC   
    addiu   s6, s6, 0x0040             # s6 = FFFFFBC0
    jal     func_800AA724              
    nop
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s5)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s5)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s5)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f6, 0x0264(s4)            # 00000264
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t1, t4, $at                # t1 = FFFFFF00
    sw      t1, 0x0004(v1)             # 00000004
    jal     func_800AA6EC              
    nop
    lh      t5, 0x0212(s4)             # 00000212
    lui     t6, %hi(var_8094FA20)      # t6 = 80950000
    slti    $at, t5, 0x00CC            
    bne     $at, $zero, lbl_8094F0B8   
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f20                  # $f20 = -20.00
    beq     $zero, $zero, lbl_8094F0E0 
    nop
lbl_8094F0B8:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f10, 0x0068(s4)           # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sub.s   $f18, $f10, $f16           
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    mul.s   $f6, $f18, $f4             
    sub.s   $f20, $f8, $f6             
lbl_8094F0E0:
    lh      t6, %lo(var_8094FA20)(t6)  
    lh      t7, 0x0218(s4)             # 00000218
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a3, $zero, $zero           # a3 = 00000000
    addu    v0, t6, t7                 
    div     $zero, v0, $at             
    mfhi    v0                         
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sll     t8, v0,  2                 
    subu    t8, t8, v0                 
    sll     t8, t8,  2                 
    addu    s0, s4, t8                 
    lwc1    $f12, 0x077C(s0)           # 000023A0
    lwc1    $f14, 0x0780(s0)           # 000023A4
    jal     func_800AA7F4              
    lw      a2, 0x0784(s0)             # 000023A8
    lwc1    $f12, 0x02D0(s0)           # 00001EF4
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x02CC(s0)           # 00001EF0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lh      t9, 0x00B8(s4)             # 000000B8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_8094FD2C)     # $at = 80950000
    lwc1    $f8, %lo(var_8094FD2C)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f8             
    jal     func_800AAD4C              
    nop
    mfc1    a2, $f20                   
    mov.s   $f12, $f28                 
    mov.s   $f14, $f28                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA6EC              
    nop
    mov.s   $f12, $f28                 
    mov.s   $f14, $f28                 
    lui     a2, 0x41C8                 # a2 = 41C80000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4              
    lw      a1, 0x0084($sp)            
    jal     func_800AA724              
    nop
    lwc1    $f6, 0x0050(s4)            # 00000050
    lwc1    $f10, 0x0054(s4)           # 00000054
    lwc1    $f16, 0x0058(s4)           # 00000058
    mul.s   $f12, $f6, $f26            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f10, $f26           
    nop
    mul.s   $f18, $f16, $f26           
    mfc1    a2, $f18                   
    jal     func_800AA8FC              
    nop
    lui     t0, %hi(func_8094E898)     # t0 = 80950000
    addiu   t0, t0, %lo(func_8094E898) # t0 = 8094E898
    lw      a1, 0x0140(s4)             # 00000140
    lw      a2, 0x015C(s4)             # 0000015C
    lui     a3, %hi(func_8094E7A0)     # a3 = 80950000
    addiu   a3, a3, %lo(func_8094E7A0) # a3 = 8094E7A0
    sw      s4, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    jal     func_8008993C              
    or      a0, s7, $zero              # a0 = 00000000
    addiu   s0, $sp, 0x00BC            # s0 = FFFFFF44
    addiu   s2, $sp, 0x00B0            # s2 = FFFFFF38
    lui     t2, %hi(var_8094FB78)      # t2 = 80950000
    addiu   t2, t2, %lo(var_8094FB78)  # t2 = 8094FB78
    lw      t4, 0x0000(t2)             # 8094FB78
    lui     t1, %hi(var_8094FB84)      # t1 = 80950000
    addiu   t1, t1, %lo(var_8094FB84)  # t1 = 8094FB84
    sw      t4, 0x0000(s0)             # FFFFFF44
    lw      t3, 0x0004(t2)             # 8094FB7C
    sw      t3, 0x0004(s0)             # FFFFFF48
    lw      t4, 0x0008(t2)             # 8094FB80
    sw      t4, 0x0008(s0)             # FFFFFF4C
    lw      t6, 0x0000(t1)             # 8094FB84
    sw      t6, 0x0000(s2)             # FFFFFF38
    lw      t5, 0x0004(t1)             # 8094FB88
    sw      t5, 0x0004(s2)             # FFFFFF3C
    lw      t6, 0x0008(t1)             # 8094FB8C
    sw      t6, 0x0008(s2)             # FFFFFF40
    jal     func_8007E2C0              
    lw      a0, 0x0000(s7)             # 00000000
    lui     s1, 0xFF00                 # s1 = FF000000
    lw      v0, 0x02D0(s5)             # 000002D0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x9168             # t9 = 06009168
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s5)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      a0, 0x02D0(s5)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    cfc1    t3, $f31                   
    addiu   t0, a0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s5)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t2, 0x0000(a0)             # 00000000
    ctc1    t4, $f31                   
    lwc1    $f4, 0x0274(s4)            # 00000274
    cvt.w.s $f8, $f4                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_8094F2FC    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f4, $f8              
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8094F2F4    
    nop
    mfc1    t4, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094F30C 
    or      t4, t4, $at                # t4 = 80000000
lbl_8094F2F4:
    beq     $zero, $zero, lbl_8094F30C 
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_8094F2FC:
    mfc1    t4, $f8                    
    nop
    bltz    t4, lbl_8094F2F4           
    nop
lbl_8094F30C:
    andi    t1, t4, 0x00FF             # t1 = 000000FF
    sll     t5, t1, 16                 
    or      t6, t5, s1                 # t6 = FF000000
    ctc1    t3, $f31                   
    ori     t7, t6, 0x00FF             # t7 = FF0000FF
    sw      t7, 0x0004(a0)             # 00000004
    jal     func_800AA6EC              
    nop
    or      a0, s0, $zero              # a0 = FFFFFF44
    jal     func_800AB958              
    addiu   a1, s4, 0x0FD4             # a1 = 00000FD4
    addiu   s0, s4, 0x0C8C             # s0 = 00000C8C
    addiu   t8, s4, 0x0F5C             # t8 = 00000F5C
    sw      t8, 0x0010($sp)            
    or      a3, s0, $zero              # a3 = 00000C8C
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, s4, 0x0DF4             # a2 = 00000DF4
    jal     func_8094E320              
    sw      $zero, 0x0014($sp)         
    jal     func_800AA724              
    nop
    lw      v1, 0x02D0(s5)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    cfc1    t2, $f31                   
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s5)             # 000002D0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t0, 0x0000(v1)             # 00000000
    ctc1    t3, $f31                   
    lwc1    $f6, 0x0278(s4)            # 00000278
    cvt.w.s $f10, $f6                  
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_8094F3E4    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f10, $f6, $f10            
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8094F3DC    
    nop
    mfc1    t3, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094F3F4 
    or      t3, t3, $at                # t3 = 80000000
lbl_8094F3DC:
    beq     $zero, $zero, lbl_8094F3F4 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_8094F3E4:
    mfc1    t3, $f10                   
    nop
    bltz    t3, lbl_8094F3DC           
    nop
lbl_8094F3F4:
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sll     t1, t4, 16                 
    or      t5, t1, s1                 # t5 = FF000000
    ctc1    t2, $f31                   
    ori     t6, t5, 0x00FF             # t6 = FF0000FF
    sw      t6, 0x0004(v1)             # 00000004
    jal     func_800AA6EC              
    nop
    or      a0, s2, $zero              # a0 = FFFFFF38
    jal     func_800AB958              
    addiu   a1, s4, 0x11C0             # a1 = 000011C0
    addiu   t7, s4, 0x1148             # t7 = 00001148
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, s4, 0x0FE0             # a2 = 00000FE0
    jal     func_8094E320              
    or      a3, s0, $zero              # a3 = 00000C8C
    jal     func_800AA724              
    nop
    lw      v1, 0x02D0(s5)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    cfc1    t2, $f31                   
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s5)             # 000002D0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t0, 0x0000(v1)             # 00000000
    ctc1    t3, $f31                   
    lwc1    $f16, 0x027C(s4)           # 0000027C
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f18, $f16                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_8094F4D4    
    mfc1    t3, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8094F4C8    
    nop
    mfc1    t3, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094F4E0 
    or      t3, t3, $at                # t3 = 80000000
lbl_8094F4C8:
    beq     $zero, $zero, lbl_8094F4E0 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f18                   
lbl_8094F4D4:
    nop
    bltz    t3, lbl_8094F4C8           
    nop
lbl_8094F4E0:
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sll     t1, t4, 16                 
    or      t5, t1, s1                 # t5 = FF000000
    ctc1    t2, $f31                   
    ori     t6, t5, 0x00FF             # t6 = FF0000FF
    sw      t6, 0x0004(v1)             # 00000004
    jal     func_800AA6EC              
    nop
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    lwc1    $f4, 0x00B0($sp)           
    or      a0, s2, $zero              # a0 = FFFFFF38
    addiu   a1, s4, 0x13AC             # a1 = 000013AC
    mul.s   $f6, $f4, $f8              
    jal     func_800AB958              
    swc1    $f6, 0x00B0($sp)           
    addiu   t7, s4, 0x1334             # t7 = 00001334
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, s4, 0x11CC             # a2 = 000011CC
    jal     func_8094E320              
    or      a3, s0, $zero              # a3 = 00000C8C
    jal     func_800AA724              
    nop
    jal     func_800AA724              
    nop
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    lw      s0, 0x005C($sp)            
    lw      s1, 0x0060($sp)            
    lw      s2, 0x0064($sp)            
    lw      s3, 0x0068($sp)            
    lw      s4, 0x006C($sp)            
    lw      s5, 0x0070($sp)            
    lw      s6, 0x0074($sp)            
    lw      s7, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0178           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_8094F5A0: .word 0x00960900, 0x00000035, 0x009C0000, 0x00004390
.word func_809494AC
.word func_809497CC
.word func_8094CE18
.word func_8094E028
var_8094F5C0: .word \
0x03000000, 0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, \
0x00000000, 0x01010100, 0x00000000, 0x00000000, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00100000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x01000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00100000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x02000000, 0x00000000, 0x00140064, 0x02000000, \
0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x03000000, 0x00000000, 0x00140064, \
0x02000000, 0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x04000000, 0x00000000, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00100000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x05000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00100000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x06000000, 0x00000000, 0x00140064, 0x02000000, \
0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x07000000, 0x00000000, 0x00140064, \
0x02000000, 0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x08000000, 0x00000000, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00100000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x09000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00100000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x0A000000, 0x00000000, 0x00140064, 0x02000000, \
0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x0B000000, 0x00000000, 0x00140064, \
0x02000000, 0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x0C000000, 0x00000000, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00100000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x0D000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00100000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x0E000000, 0x00000000, 0x00120064, 0x02000000, \
0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, 0x00000000, \
0x01000100, 0x0F000000, 0x00000000, 0x00100064, \
0x02000000, 0xFFCFFFFF, 0x00100000, 0xFFCDFFFE, \
0x00000000, 0x01000100, 0x10000000, 0x00000000, \
0x000E0064, 0x02000000, 0xFFCFFFFF, 0x00100000, \
0xFFCDFFFE, 0x00000000, 0x01000100, 0x11000000, \
0x00000000, 0x000C0064, 0x02000000, 0xFFCFFFFF, \
0x00100000, 0xFFCDFFFE, 0x00000000, 0x01000100, \
0x12000000, 0x00000000, 0x000A0064
var_8094F86C: .word 0x09110909, 0x10000000, 0x00000013
.word var_8094F5C0
var_8094F87C: .word 0x801F0005, 0x89170021, 0xB86C0000, 0x304C0000
var_8094F88C: .word 0x00000000
var_8094F890: .word \
0x42B40000, 0xC3730000, 0x00000000, 0x42B40000, \
0x00000000, 0x00000000, 0x42B40000, 0x43730000, \
0xC3730000, 0x42B40000, 0xC3730000, 0xC3730000, \
0x42B40000, 0x00000000, 0xC3730000, 0x42B40000, \
0x43730000, 0x43730000, 0x42B40000, 0xC3730000, \
0x43730000, 0x42B40000, 0x00000000, 0x43730000, \
0x42B40000, 0x43730000
var_8094F8F8: .word \
0x00000000, 0x44610000, 0xC3730000, 0x43730000, \
0x44610000, 0xC2C80000, 0x43730000, 0x44610000, \
0x42C80000, 0x00000000, 0x44610000, 0x43730000, \
0xC3730000, 0x44610000, 0x42C80000, 0xC3730000, \
0x44610000, 0xC2C80000
var_8094F940: .word 0x00000000, 0x00000000, 0x00000000
var_8094F94C: .word 0x00000000, 0x3CF5C28F, 0x00000000
var_8094F958: .word 0x00000000, 0x00000000, 0x00000000
var_8094F964: .word 0x00000000, 0x00000000, 0x00000000
var_8094F970: .word 0x00000000, 0x00000000, 0x00000000
var_8094F97C: .word 0x00000000, 0x3CF5C28F, 0x00000000
var_8094F988: .word 0x00000000, 0x00000000, 0x42480000
var_8094F994: .word 0x00000001, 0x00020002, 0x00010000
var_8094F9A0: .word 0x00000000, 0x00000000, 0x00000000
var_8094F9AC: .word 0x00000000, 0x00000000, 0x00000000
var_8094F9B8: .word 0xFFFF00FF
var_8094F9BC: .word 0xFF0A00FF
var_8094F9C0: .word 0x00000000, 0x00000000, 0x00000000
var_8094F9CC: .word 0x00000000, 0xBF800000, 0x00000000
var_8094F9D8: .word 0x00000000, 0x00000000, 0x00000000
var_8094F9E4: .word 0x00000000, 0x00000000, 0x00000000
var_8094F9F0: .word 0xFF8000FF, 0x0000FFFF, 0x00FF0000
var_8094F9FC: .word \
0x040572E0, 0x040572E0, 0x040576E0, 0x04057AE0, \
0x04057EE0, 0x040582E0, 0x040586E0, 0x04058AE0, \
0x04058EE0
var_8094FA20: .byte 0x00, 0x00
var_8094FA22: .byte 0x00, 0x5F
var_8094FA24: .word \
0x005A0055, 0x0050004B, 0x00460041, 0x003C0037, \
0x0032002D, 0x00280023, 0x001E0019, 0x0014000F, \
0x000A0005, 0x0000001C, 0x001A0018, 0x00160014, \
0x00120010, 0x000E000C, 0x000A0000
var_8094FA60: .word \
0x00000000, 0x41200000, 0x41880000, 0x41A00000, \
0x419C0000, 0x41900000, 0x41880000, 0x41700000, \
0x41700000, 0x41700000
var_8094FA88: .word \
0x00000000, 0x41200000, 0x41880000, 0x41A00000, \
0x41A80000, 0x41A80000, 0x41A80000, 0x41A80000, \
0x41A80000, 0x41A80000
var_8094FAB0: .word \
0x3EED62F8, 0x3EAC5887, 0x3E185E04, 0x3D4C98A2, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000
var_8094FAD8: .word \
0xBEED62F8, 0xBEAC5887, 0xBE185E04, 0x3CCC341A, \
0x3D992714, 0x3D4C98A2, 0x3DCC01D6, 0x00000000, \
0x00000000, 0x00000000
var_8094FB00: .word 0x458CA000, 0x00000000, 0x00000000
var_8094FB0C: .word 0x457A0000, 0x00000000, 0x00000000
var_8094FB18: .word 0x060038A8, 0x060034A8, 0x06003CA8
var_8094FB24: .word \
0x060079A0, 0x06007AC0, 0x06007B70, 0x06007BD0, \
0x06007C30, 0x06007C90, 0x06007CF0, 0x06007D50, \
0x06007DB0, 0x06007E10, 0x06007E70, 0x06007ED0, \
0x06007F30, 0x06007F90, 0x06007FF0, 0x06008038, \
0x06008080, 0x060080D8
var_8094FB6C: .word 0x00000000, 0x00000000, 0x00000000
var_8094FB78: .word 0x00000000, 0x44D48000, 0x45DAC000
var_8094FB84: .word 0xC47A0000, 0x442F0000, 0x45DAC000

.section .rodata

var_8094FB90: .word 0x44E08000
var_8094FB94: .word 0x4622F983
var_8094FB98: .word var_80949B30
.word var_80949E7C
.word lbl_80949EA0
.word var_80949FC8
.word var_8094A0EC
.word var_8094A2E8
var_8094FBB0: .word 0x461C4000
var_8094FBB4: .word 0x3D4CCCCD
var_8094FBB8: .word 0x3DCCCCCD
var_8094FBBC: .word 0x3BA3D70A, 0x3DCCCCCD, 0x3D4CCCCD
var_8094FBC8: .word 0x3A831270
var_8094FBCC: .word 0x3E4CCCCD
var_8094FBD0: .word 0x3CA3D70A
var_8094FBD4: .word 0x3BA3D70A
var_8094FBD8: .word 0x3DCCCCCD
var_8094FBDC: .word 0x3DCCCCCD
var_8094FBE0: .word 0x3DCCCCCD
var_8094FBE4: .word 0x3DCCCCCD
var_8094FBE8: .word 0x3DCCCCCD
var_8094FBEC: .word 0x3DCCCCCD
var_8094FBF0: .word 0x3D4CCCCD
var_8094FBF4: .word 0x3D4CCCCD
var_8094FBF8: .word 0x3D4CCCCD
var_8094FBFC: .word 0x42AB1EB8, 0x3DCCCCCD, 0x3D4CCCCD
var_8094FC08: .word var_8094AE18
.word var_8094AF14
.word var_8094B208
.word var_8094B278
.word var_8094B29C
.word var_8094B4CC
var_8094FC20: .word lbl_8094B6BC
.word var_8094A7D0
.word var_8094A9A8
.word var_8094AA4C
.word var_8094AA74
var_8094FC34: .word 0x410E6666
var_8094FC38: .word 0x461C4000
var_8094FC3C: .word 0x453B8000
var_8094FC40: .word 0x461C4000
var_8094FC44: .word 0xC68FA000
var_8094FC48: .word 0x4515C000
var_8094FC4C: .word 0x461C4000
var_8094FC50: .word 0x3ECCCCCD
var_8094FC54: .word 0x42C7CCCD
var_8094FC58: .word 0x3CF5C28F
var_8094FC5C: .word 0x3E99999A
var_8094FC60: .word 0x3CF5C28F
var_8094FC64: .word 0x40490FDB
var_8094FC68: .word 0x45AEE000
var_8094FC6C: .word 0x3E99999A
var_8094FC70: .word 0x45ABC000
var_8094FC74: .word 0x3E99999A
var_8094FC78: .word 0x3E99999A
var_8094FC7C: .word 0x44BB8000
var_8094FC80: .word 0x453B8000
var_8094FC84: .word 0x45098000
var_8094FC88: .word 0x44D48000
var_8094FC8C: .word 0x44ED8000
var_8094FC90: .word 0xC53B8000
var_8094FC94: .word 0xC53B8000
var_8094FC98: .word 0x410E6666
var_8094FC9C: .word 0x3D4CCCCD
var_8094FCA0: .word 0x3F0CCCCD
var_8094FCA4: .word 0x3D8F5C29
var_8094FCA8: .word 0x3E570A3D
var_8094FCAC: .word 0x3C23D70A
var_8094FCB0: .word 0x3E99999A
var_8094FCB4: .word 0x45BB8000
var_8094FCB8: .word 0x44A28000
var_8094FCBC: .word 0xBE99999A
var_8094FCC0: .word 0xBE99999A
var_8094FCC4: .word 0x3ECCCCCD
var_8094FCC8: .word 0x40490FDB
var_8094FCCC: .word 0x3E99999A
var_8094FCD0: .word 0x40C90FDB
var_8094FCD4: .word 0x40C90FDB
var_8094FCD8: .word 0x3ECCCCCD
var_8094FCDC: .word 0x410E6666
var_8094FCE0: .word 0x41EF3333
var_8094FCE4: .word 0x3ECCCCCD
var_8094FCE8: .word 0x3F0CCCCD
var_8094FCEC: .word 0x3DCCCCCD
var_8094FCF0: .word 0x3E99999A
var_8094FCF4: .word 0x3DA3D70A
var_8094FCF8: .word 0x3DCCCCCD
var_8094FCFC: .word 0x3C23D70A
var_8094FD00: .word 0x3F333333
var_8094FD04: .word 0x3A51B717
var_8094FD08: .word 0xBFC90FDB
var_8094FD0C: .word 0x3DCCCCCD
var_8094FD10: .word 0x3DCCCCCD
var_8094FD14: .word 0x45DAC000
var_8094FD18: .word 0x459C4000
var_8094FD1C: .word 0x459C4000
var_8094FD20: .word 0x3FC90FDB
var_8094FD24: .word 0xC0490FDB
var_8094FD28: .word 0x3E4CCCCD
var_8094FD2C: .word 0x40490FDB

