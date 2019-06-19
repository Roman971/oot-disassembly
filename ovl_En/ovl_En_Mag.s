.section .text
func_80AECDF0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    lui     s0, %hi(var_80AEFD00)      # s0 = 80AF0000
    addiu   s0, s0, %lo(var_80AEFD00)  # s0 = 80AEFD00
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              # a0 = 80AEFD00
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0800          # a1 = 00000800
    lui     a0, 0x0800                 # a0 = 08000000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x0800             # a0 = 08000800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x1000             # a0 = 08001000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x1800             # a0 = 08001800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x2000             # a0 = 08002000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x2800             # a0 = 08002800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x3000             # a0 = 08003000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x3800             # a0 = 08003800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x4000             # a0 = 08004000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x4800             # a0 = 08004800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x5000             # a0 = 08005000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x5800             # a0 = 08005800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x6000             # a0 = 08006000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x6800             # a0 = 08006800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x7000             # a0 = 08007000
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x0800                 # a0 = 08000000
    ori     a0, a0, 0x7800             # a0 = 08007800
    or      a1, s0, $zero              # a1 = 80AEFD00
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    jal     func_80091474              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sb      $zero, 0x140A(v0)          # 8011B9DA
    sb      $zero, 0x140C(v0)          # 8011B9DC
    jal     func_800C7420              
    lb      a0, 0x140A(v0)             # 8011B9DA
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AECFB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x42C8                # $at = 42C80000
    sw      a1, 0x001C($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lui     a3, 0x8012                 # a3 = 80120000
    mtc1    $at, $f14                  # $f14 = 100.00
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x003F          # t6 = 0000003F
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sh      t6, 0x0496(t7)             # 00000496
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      t8, 0x049A(t9)             # 0000049A
    lw      t5, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0077          # t8 = 00000077
    addiu   a0, a1, 0x0140             # a0 = 00000140
    sh      t4, 0x049C(t5)             # 0000049C
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    sh      t0, 0x049E(t6)             # 000004DD
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t0, 0x04A0(t7)             # 000004A0
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x04A2(t9)             # 000004A2
    lw      t5, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sh      t4, 0x04A4(t5)             # 000004A4
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t6, 0x04A6(t7)             # 000004A6
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x04A8(t9)             # 000004A8
    lw      t5, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0063          # t8 = 00000063
    sh      t4, 0x0F1C(t5)             # 00000F1C
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    sh      t1, 0x0F1E(t6)             # 00000F23
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F20(t7)             # 00000F20
    sh      t1, 0x6303($at)            # 0000E302
    sh      t2, 0x6305($at)            # 0000E304
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sh      t8, 0x0F3A(t9)             # 00000F3A
    lw      t5, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sh      t4, 0x0F3E(t5)             # 00000F3E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sh      t2, 0x0F42(t6)             # 00000F47
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0F44(t8)             # 00000FA7
    sh      $zero, 0x62FF($at)         # 0000E2FE
    sh      $zero, 0x62FD($at)         # 0000E2FC
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v1, a1, $at                
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f4                   # $f4 = 170.00
    swc1    $f12, 0x62D4(v1)           # 000062D4
    swc1    $f14, 0x62D8(v1)           # 000062D8
    swc1    $f12, 0x62E0(v1)           # 000062E0
    swc1    $f14, 0x62E4(v1)           # 000062E4
    swc1    $f12, 0x62E8(v1)           # 000062E8
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    swc1    $f4, 0x62DC(v1)            # 000062DC
    sh      t9, 0x62CB($at)            # 0000E2CA
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f12, -0x1D08($at)         # 0000E2F8
    lwc1    $f0, 0x62F8(v1)            # 000062F8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    trunc.w.s $f6, $f0                   
    swc1    $f0, -0x1D0C($at)          # 0000E2F4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    mfc1    a2, $f6                    
    swc1    $f0, -0x1D10($at)          # 0000E2F0
    lui     $at, 0x0001                # $at = 00010000
    sll     t5, a2, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f8                    # $f8 = 0.00
    addu    $at, $at, a1               
    swc1    $f0, -0x1D14($at)          # 0000E2EC
    cvt.s.w $f2, $f8                   
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      a2, 0x62CD($at)            # 0000E2CC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    trunc.w.s $f10, $f2                  
    swc1    $f2, -0x1D30($at)          # 0000E2D0
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mfc1    t8, $f10                   
    nop
    sh      t8, 0x62C9($at)            # 0000E2C8
    lbu     t9, 0x13E7(a3)             # 8011B9B7
    lui     $at, 0x437F                # $at = 437F0000
    beq     t9, $zero, lbl_80AED214    
    nop
    mtc1    $at, $f0                   # $f0 = 255.00
    mtc1    $at, $f2                   # $f2 = 255.00
    lui     $at, 0x4352                # $at = 43520000
    mtc1    $at, $f16                  # $f16 = 210.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f16, -0x1D10($at)         # 0000E2F0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f2, -0x1D0C($at)          # 0000E2F4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f2, -0x1D08($at)          # 0000E2F8
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f18                  # $f18 = 128.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f18, -0x1D30($at)         # 0000E2D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    swc1    $f0, -0x1D14($at)          # 0000E2EC
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f4                   # $f4 = 170.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    swc1    $f0, 0x62D4(v1)            # 000062D4
    swc1    $f0, 0x62D8(v1)            # 000062D8
    swc1    $f0, 0x62E0(v1)            # 000062E0
    swc1    $f4, 0x62DC(v1)            # 000062DC
    swc1    $f6, 0x62E4(v1)            # 000062E4
    sb      $zero, 0x13E7(a3)          # 8011B9B7
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      t3, 0x62CD($at)            # 0000E2CC
    lui     $at, %hi(var_80AEFB40)     # $at = 80AF0000
    sh      t4, %lo(var_80AEFB40)($at) 
    sb      t5, 0x1418(a3)             # 8011B9E8
    sb      t6, 0x1419(a3)             # 8011B9E9
lbl_80AED214:
    jal     func_8005BD78              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x6307($at)         # 0000E306
    sh      $zero, 0x6309($at)         # 0000E308
    sw      $zero, 0x630D($at)         # 0000E30C
    sw      $zero, 0x6311($at)         # 0000E310
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AED240:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AED250:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    ori     $at, $zero, 0x8000         # $at = 00008000
    lhu     a2, 0x0044(a0)             # 00000044
    addu    a3, a1, $at                
    lw      t6, 0x630C(a3)             # 0000630C
    andi    a2, a2, 0xFF3F             # a2 = 00000000
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    bne     a2, t6, lbl_80AED2B0       
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    lw      t7, 0x6310(a3)             # 00006310
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x6311($at)            # 0000E310
    lw      t9, 0x6310(a3)             # 00006310
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    bgezl   t9, lbl_80AED2A8           
    lw      t1, 0x630C(a3)             # 0000630C
    beq     $zero, $zero, lbl_80AED2B8 
    sw      t0, 0x6311($at)            # 0000E310
    lw      t1, 0x630C(a3)             # 0000630C
lbl_80AED2A8:
    beq     $zero, $zero, lbl_80AED2B8 
    xor     a2, a2, t1                 
lbl_80AED2B0:
    sw      t2, 0x6311($at)            # 0000E310
    sw      a2, 0x630D($at)            # 0000E30C
lbl_80AED2B8:
    lh      v1, 0x6306(a3)             # 00006306
    lui     t4, %hi(var_80AEFB44)      # t4 = 80AF0000
    lui     v0, %hi(var_80AEFB44)      # v0 = 80AF0000
    slti    $at, v1, 0x0004            
    beq     $at, $zero, lbl_80AED310   
    sll     t7, v1,  2                 
    sll     t3, v1,  2                 
    addu    t4, t4, t3                 
    lw      t4, %lo(var_80AEFB44)(t4)  
    addiu   t6, v1, 0x0001             # t6 = 00000001
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    and     t5, t4, a2                 
    beq     t5, $zero, lbl_80AED2FC    
    nop
    sh      t6, 0x6307($at)            # 0000E306
    beq     $zero, $zero, lbl_80AED34C 
    lh      v1, 0x6306(a3)             # 00006306
lbl_80AED2FC:
    beq     a2, $zero, lbl_80AED34C    
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x6307($at)         # 0000E306
    beq     $zero, $zero, lbl_80AED34C 
    lh      v1, 0x6306(a3)             # 00006306
lbl_80AED310:
    addu    v0, v0, t7                 
    lw      v0, %lo(var_80AEFB44)(v0)  
    lhu     t8, 0x0050(a0)             # 00000050
    addiu   t0, v1, 0x0001             # t0 = 00000001
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    and     t9, t8, v0                 
    bne     t9, v0, lbl_80AED33C       
    nop
    sh      t0, 0x6307($at)            # 0000E306
    beq     $zero, $zero, lbl_80AED34C 
    lh      v1, 0x6306(a3)             # 00006306
lbl_80AED33C:
    beq     a2, $zero, lbl_80AED34C    
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x6307($at)         # 0000E306
    lh      v1, 0x6306(a3)             # 00006306
lbl_80AED34C:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    v1, $at, lbl_80AED370      
    lw      $ra, 0x0014($sp)           
    jal     func_80AECDF0              
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    addiu   $at, a1, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x6307($at)         # 0000E306
    lw      $ra, 0x0014($sp)           
lbl_80AED370:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AED37C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_80AED250              
    or      a1, s0, $zero              # a1 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46DC(t6)            # 8011B924
    ori     $at, $zero, 0xFEDC         # $at = 0000FEDC
    beq     t6, $at, lbl_80AED5C8      
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, s0, $at                
    lh      v1, 0x62CC(v0)             # 000062CC
    lw      t7, 0x0044($sp)            
    slti    $at, v1, 0x0002            
    beql    $at, $zero, lbl_80AED4DC   
    slti    $at, v1, 0x0002            
    lhu     v1, 0x0020(t7)             # 00000020
    addiu   $at, $zero, 0x1000         # $at = 00001000
    lui     a3, 0x8010                 # a3 = 80100000
    andi    t8, v1, 0x1000             # t8 = 00000000
    beq     t8, $at, lbl_80AED3F4      
    andi    t9, v1, 0x8000             # t9 = 00000000
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     t9, $at, lbl_80AED3F4      
    andi    t0, v1, 0x4000             # t0 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     t0, $at, lbl_80AED4D0      
lbl_80AED3F4:
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4823          # a0 = 00004823
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      v0, 0x002C($sp)            
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f0                   # $f0 = 255.00
    mtc1    $at, $f2                   # $f2 = 255.00
    lui     $at, 0x4352                # $at = 43520000
    mtc1    $at, $f4                   # $f4 = 210.00
    lui     $at, 0x0001                # $at = 00010000
    lw      v0, 0x002C($sp)            
    addu    $at, $at, s0               
    swc1    $f4, -0x1D10($at)          # 0000E2F0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f0, -0x1D0C($at)          # 0000E2F4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f0, -0x1D08($at)          # 0000E2F8
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f6                   # $f6 = 128.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f6, -0x1D30($at)          # 0000E2D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f2, -0x1D14($at)          # 0000E2EC
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f8                   # $f8 = 170.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    swc1    $f2, 0x62D4(v0)            # 000062D4
    swc1    $f2, 0x62D8(v0)            # 000062D8
    swc1    $f2, 0x62E0(v0)            # 000062E0
    swc1    $f8, 0x62DC(v0)            # 000062DC
    swc1    $f10, 0x62E4(v0)           # 000062E4
    sh      t2, 0x62CD($at)            # 0000E2CC
    lui     v1, 0x8012                 # v1 = 80120000
    lui     $at, %hi(var_80AEFB40)     # $at = 80AF0000
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t3, %lo(var_80AEFB40)($at) 
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sb      t4, 0x1418(v1)             # 8011B9E8
    sb      t5, 0x1419(v1)             # 8011B9E9
lbl_80AED4D0:
    beq     $zero, $zero, lbl_80AED5CC 
    lui     $at, 0x437F                # $at = 437F0000
    slti    $at, v1, 0x0002            
lbl_80AED4DC:
    bne     $at, $zero, lbl_80AED5C8   
    lui     v0, %hi(var_80AEFB40)      # v0 = 80AF0000
    lh      v0, %lo(var_80AEFB40)(v0)  
    lw      t6, 0x0044($sp)            
    lui     $at, %hi(var_80AEFB40)     # $at = 80AF0000
    bne     v0, $zero, lbl_80AED5C4    
    addiu   t1, v0, 0xFFFF             # t1 = 80AEFFFF
    lhu     v1, 0x0020(t6)             # 00000020
    addiu   $at, $zero, 0x1000         # $at = 00001000
    lw      t0, 0x0044($sp)            
    andi    t7, v1, 0x1000             # t7 = 00000000
    beq     t7, $at, lbl_80AED524      
    andi    t8, v1, 0x8000             # t8 = 00008000
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     t8, $at, lbl_80AED524      
    andi    t9, v1, 0x4000             # t9 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     t9, $at, lbl_80AED5C8      
lbl_80AED524:
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0                 
    lb      t1, 0x1E15(t1)             # 00011E15
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beql    t1, $at, lbl_80AED5A8      
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    jal     func_800C75DC              
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4823          # a0 = 00004823
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t5, 0x0044($sp)            
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, -0x46D4($at)           # 8011B92C
    lui     $at, 0x0001                # $at = 00010000
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addu    $at, $at, t5               
    sb      t4, 0x1E15($at)            # 00011E15
    lw      t7, 0x0044($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addu    $at, $at, t7               
    sb      t6, 0x1E5E($at)            # 00011E5E
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
lbl_80AED5A8:
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sh      t8, 0x6303($at)            # 0000E302
    sh      t9, 0x6305($at)            # 0000E304
    beq     $zero, $zero, lbl_80AED5C8 
    sh      t0, 0x62CD($at)            # 0000E2CC
lbl_80AED5C4:
    sh      t1, %lo(var_80AEFB40)($at) 
lbl_80AED5C8:
    lui     $at, 0x437F                # $at = 437F0000
lbl_80AED5CC:
    mtc1    $at, $f2                   # $f2 = 255.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, s0, $at                
    lh      v1, 0x62CC(v0)             # 000062CC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a2, v1, lbl_80AED8D8       
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      v1, 0x62C8(v0)             # 000062C8
    lui     $at, 0x40CC                # $at = 40CC0000
    bne     v1, $zero, lbl_80AED6E0    
    nop
    mtc1    $at, $f0                   # $f0 = 6.38
    lui     $at, 0x4078                # $at = 40780000
    mtc1    $at, $f12                  # $f12 = 3.88
    lui     $at, %hi(var_80AEFBD0)     # $at = 80AF0000
    lwc1    $f18, %lo(var_80AEFBD0)($at) 
    lwc1    $f16, 0x62D0(v0)           # 000062D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    add.s   $f4, $f16, $f18            
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    swc1    $f4, -0x1D30($at)          # 0000E2D0
    lwc1    $f6, 0x62EC(v0)            # 000062EC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    add.s   $f8, $f6, $f0              
    swc1    $f8, -0x1D14($at)          # 0000E2EC
    lwc1    $f10, 0x62D4(v0)           # 000062D4
    lwc1    $f18, 0x62D8(v0)           # 000062D8
    lui     $at, 0x4008                # $at = 40080000
    add.s   $f16, $f10, $f0            
    mtc1    $at, $f8                   # $f8 = 2.13
    lwc1    $f6, 0x62DC(v0)            # 000062DC
    add.s   $f4, $f18, $f12            
    swc1    $f16, 0x62D4(v0)           # 000062D4
    lwc1    $f16, 0x62E0(v0)           # 000062E0
    add.s   $f10, $f6, $f8             
    swc1    $f4, 0x62D8(v0)            # 000062D8
    lwc1    $f4, 0x62E4(v0)            # 000062E4
    add.s   $f18, $f16, $f0            
    lh      t2, 0x62CA(v0)             # 000062CA
    swc1    $f10, 0x62DC(v0)           # 000062DC
    add.s   $f6, $f4, $f12             
    swc1    $f18, 0x62E0(v0)           # 000062E0
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    swc1    $f6, 0x62E4(v0)            # 000062E4
    sh      t3, 0x62CB($at)            # 0000E2CA
    lh      t4, 0x62CA(v0)             # 000062CA
    lui     $at, 0x4200                # $at = 42000000
    bnel    t4, $zero, lbl_80AED788    
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f8, -0x1D30($at)          # 0000E2D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f2, -0x1D14($at)          # 0000E2EC
    swc1    $f2, 0x62D4(v0)            # 000062D4
    swc1    $f2, 0x62D8(v0)            # 000062D8
    swc1    $f2, 0x62DC(v0)            # 000062DC
    swc1    $f2, 0x62E0(v0)            # 000062E0
    swc1    $f2, 0x62E4(v0)            # 000062E4
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    sh      t5, 0x62CB($at)            # 0000E2CA
    beq     $zero, $zero, lbl_80AED784 
    sh      a2, 0x62C9($at)            # 0000E2C8
lbl_80AED6E0:
    bne     a2, v1, lbl_80AED784       
    lui     $at, %hi(var_80AEFBD4)     # $at = 80AF0000
    lwc1    $f10, 0x62D0(v0)           # 000062D0
    lwc1    $f16, %lo(var_80AEFBD4)($at) 
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    add.s   $f18, $f10, $f16           
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    swc1    $f18, -0x1D30($at)         # 0000E2D0
    lui     $at, 0xC008                # $at = C0080000
    mtc1    $at, $f6                   # $f6 = -2.13
    lui     $at, 0xC078                # $at = C0780000
    lwc1    $f4, 0x62DC(v0)            # 000062DC
    mtc1    $at, $f16                  # $f16 = -3.88
    lwc1    $f10, 0x62E4(v0)           # 000062E4
    add.s   $f8, $f4, $f6              
    lh      t6, 0x62CA(v0)             # 000062CA
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    add.s   $f18, $f10, $f16           
    swc1    $f8, 0x62DC(v0)            # 000062DC
    addiu   t7, t6, 0xFFFF             # t7 = 00000001
    swc1    $f18, 0x62E4(v0)           # 000062E4
    sh      t7, 0x62CB($at)            # 0000E2CA
    lh      t8, 0x62CA(v0)             # 000062CA
    lui     $at, 0x4300                # $at = 43000000
    bnel    t8, $zero, lbl_80AED788    
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    swc1    $f4, -0x1D30($at)          # 0000E2D0
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f6                   # $f6 = 170.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    swc1    $f6, 0x62DC(v0)            # 000062DC
    swc1    $f8, 0x62E4(v0)            # 000062E4
    sh      t9, 0x62CB($at)            # 0000E2CA
    sh      t0, 0x62C9($at)            # 0000E2C8
lbl_80AED784:
    lui     $at, 0x4320                # $at = 43200000
lbl_80AED788:
    mtc1    $at, $f10                  # $f10 = 160.00
    lwc1    $f16, 0x62EC(v0)           # 000062EC
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80AED9F4               
    lh      v1, 0x62CC(v0)             # 000062CC
    lw      t1, 0x0000(v1)             # 8011BA00
    lwc1    $f18, 0x62F0(v0)           # 000062F0
    lui     $at, 0x4352                # $at = 43520000
    lh      t2, 0x0F1E(t1)             # 00000F1E
    mtc1    $at, $f12                  # $f12 = 210.00
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t2, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f18, $f6             
    swc1    $f8, -0x1D10($at)          # 0000E2F0
    lwc1    $f0, 0x62F0(v0)            # 000062F0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.le.s  $f12, $f0                  
    nop
    bc1fl   lbl_80AED7FC               
    lui     $at, 0x4352                # $at = 43520000
    swc1    $f12, -0x1D10($at)         # 4351E2F0
    lwc1    $f0, 0x62F0(v0)            # 000062F0
    lui     $at, 0x4352                # $at = 43520000
lbl_80AED7FC:
    mtc1    $at, $f10                  # $f10 = 210.00
    nop
    c.le.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AED9F4               
    lh      v1, 0x62CC(v0)             # 000062CC
    lw      t3, 0x0000(v1)             # 8011BA00
    lwc1    $f16, 0x62F4(v0)           # 000062F4
    lui     $at, 0x0001                # $at = 00010000
    lh      t4, 0x0F20(t3)             # 00000F1F
    addu    $at, $at, s0               
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4                  
    add.s   $f6, $f16, $f18            
    swc1    $f6, -0x1D0C($at)          # 0000E2F4
    lwc1    $f0, 0x62F4(v0)            # 000062F4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80AED864               
    lui     $at, 0x4348                # $at = 43480000
    swc1    $f2, -0x1D0C($at)          # 4347E2F4
    lwc1    $f0, 0x62F4(v0)            # 000062F4
    lui     $at, 0x4348                # $at = 43480000
lbl_80AED864:
    mtc1    $at, $f8                   # $f8 = 200.00
    nop
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80AED9F4               
    lh      v1, 0x62CC(v0)             # 000062CC
    lh      t5, 0x6302(v0)             # 00006302
    lwc1    $f10, 0x62F8(v0)           # 000062F8
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t5, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f16, $f4                  
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    add.s   $f18, $f10, $f16           
    swc1    $f18, -0x1D08($at)         # 0000E2F8
    lwc1    $f6, 0x62F8(v0)            # 000062F8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.le.s  $f2, $f6                   
    nop
    bc1fl   lbl_80AED9F4               
    lh      v1, 0x62CC(v0)             # 000062CC
    swc1    $f2, -0x1D08($at)          # 0000E2F8
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    sh      t6, 0x62CD($at)            # 0000E2CC
    lui     $at, %hi(var_80AEFB40)     # $at = 80AF0000
    beq     $zero, $zero, lbl_80AED9F0 
    sh      t7, %lo(var_80AEFB40)($at) 
lbl_80AED8D8:
    bnel    v1, $at, lbl_80AED9F4      
    lh      v1, 0x62CC(v0)             # 000062CC
    lh      t8, 0x6304(v0)             # 00006304
    lwc1    $f8, 0x62EC(v0)            # 000062EC
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t8, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f4                  
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sub.s   $f16, $f8, $f10            
    swc1    $f16, -0x1D14($at)         # 0000E2EC
    lwc1    $f18, 0x62EC(v0)           # 000062EC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80AED92C               
    lh      t9, 0x6304(v0)             # 00006304
    swc1    $f0, -0x1D14($at)          # 0000E2EC
    lh      t9, 0x6304(v0)             # 00006304
lbl_80AED92C:
    lwc1    $f6, 0x62F0(v0)            # 000062F0
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t9, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    cvt.s.w $f8, $f4                   
    sub.s   $f10, $f6, $f8             
    swc1    $f10, -0x1D10($at)         # 0000E2F0
    lwc1    $f16, 0x62F0(v0)           # 000062F0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80AED96C               
    lh      t0, 0x6304(v0)             # 00006304
    swc1    $f0, -0x1D10($at)          # 0000E2F0
    lh      t0, 0x6304(v0)             # 00006304
lbl_80AED96C:
    lwc1    $f18, 0x62F4(v0)           # 000062F4
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t0, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    cvt.s.w $f6, $f4                   
    sub.s   $f8, $f18, $f6             
    swc1    $f8, -0x1D0C($at)          # 0000E2F4
    lwc1    $f10, 0x62F4(v0)           # 000062F4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AED9AC               
    lh      t1, 0x6302(v0)             # 00006302
    swc1    $f0, -0x1D0C($at)          # 0000E2F4
    lh      t1, 0x6302(v0)             # 00006302
lbl_80AED9AC:
    lwc1    $f16, 0x62F8(v0)           # 000062F8
    lui     $at, 0x0001                # $at = 00010000
    mtc1    t1, $f4                    # $f4 = 0.00
    addu    $at, $at, s0               
    cvt.s.w $f18, $f4                  
    sub.s   $f6, $f16, $f18            
    swc1    $f6, -0x1D08($at)          # 0000E2F8
    lwc1    $f8, 0x62F8(v0)            # 000062F8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80AED9F4               
    lh      v1, 0x62CC(v0)             # 000062CC
    swc1    $f0, -0x1D08($at)          # 0000E2F8
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    sh      t2, 0x62CD($at)            # 0000E2CC
lbl_80AED9F0:
    lh      v1, 0x62CC(v0)             # 000062CC
lbl_80AED9F4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $zero, lbl_80AEDA24    
    nop
    jal     func_8005991C              
    lw      a0, 0x0044($sp)            
    beq     v0, $zero, lbl_80AEDA44    
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    sh      t3, 0x62CB($at)            # 0000E2CA
    beq     $zero, $zero, lbl_80AEDA44 
    sh      a2, 0x62CD($at)            # 0000E2CC
lbl_80AEDA24:
    bne     v1, $at, lbl_80AEDA44      
    lw      a0, 0x0044($sp)            
    jal     func_8005991C              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80AEDA44    
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   $at, s0, 0x7FFF            # $at = 00007FFF
    sh      t4, 0x62CD($at)            # 0000E2CC
lbl_80AEDA44:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80AEDA58:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a2, 0x0028($sp)            
    sw      a3, 0x002C($sp)            
    sll     a3, a3, 16                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sra     a3, a3, 16                 
    lui     t1, 0x0700                 # t1 = 07000000
    lw      v0, 0x0000(a0)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    lui     t6, 0xFD90                 # t6 = FD900000
    sw      t6, 0x0000(v1)             # 00000000
    sw      a1, 0x0004(v1)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      t2, v0, $zero              # t2 = 00000008
    lui     t7, 0xF590                 # t7 = F5900000
    sw      t7, 0x0000(t2)             # 00000008
    sw      t1, 0x0004(t2)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t3, v0, $zero              # t3 = 00000010
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(t3)             # 00000010
    sw      $zero, 0x0004(t3)          # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    multu   a2, a3                     
    or      t0, v0, $zero              # t0 = 00000018
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      t5, v0, $zero              # t5 = 00000020
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t0)             # 00000018
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      t2, a2, $zero              # t2 = 00000000
    mflo    t4                         
    addiu   t4, t4, 0x0001             # t4 = 00000001
    sra     t4, t4,  1                 
    addiu   t4, t4, 0xFFFF             # t4 = 00000000
    slti    $at, t4, 0x07FF            
    beql    $at, $zero, lbl_80AEDB00   
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
    beq     $zero, $zero, lbl_80AEDB00 
    or      a1, t4, $zero              # a1 = 00000000
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
lbl_80AEDB00:
    bgez    t2, lbl_80AEDB10           
    sra     v1, t2,  3                 
    addiu   $at, t2, 0x0007            # $at = 00000007
    sra     v1, $at,  3                
lbl_80AEDB10:
    bgtz    v1, lbl_80AEDB20           
    or      t3, v1, $zero              # t3 = 00000000
    beq     $zero, $zero, lbl_80AEDB20 
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80AEDB20:
    bgtz    v1, lbl_80AEDB30           
    addiu   t6, t3, 0x07FF             # t6 = 00000800
    beq     $zero, $zero, lbl_80AEDB34 
    addiu   t4, $zero, 0x0001          # t4 = 00000001
lbl_80AEDB30:
    or      t4, v1, $zero              # t4 = 00000000
lbl_80AEDB34:
    div     $zero, t6, t4              
    mflo    t7                         
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    bne     t4, $zero, lbl_80AEDB4C    
    nop
    break   # 0x01C00
lbl_80AEDB4C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t4, $at, lbl_80AEDB64      
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80AEDB64      
    nop
    break   # 0x01800
lbl_80AEDB64:
    andi    t6, a1, 0x0FFF             # t6 = 000007FF
    sll     t7, t6, 12                 
    or      t9, t8, t1                 # t9 = 07000000
    or      t8, t9, t7                 # t8 = F7900000
    sw      t8, 0x0004(t0)             # 0000001C
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(t5)             # 00000020
    sw      $zero, 0x0004(t5)          # 00000024
    addiu   t9, t2, 0x0007             # t9 = 00000007
    sra     t7, t9,  3                 
    andi    t8, t7, 0x01FF             # t8 = 00000000
    sw      v0, 0x0004($sp)            
    lw      t7, 0x0004($sp)            
    sll     t6, t8,  9                 
    lui     $at, 0xF588                # $at = F5880000
    or      t9, t6, $at                # t9 = F7880000
    sw      t9, 0x0000(t7)             # F5900000
    lw      t8, 0x0004($sp)            
    lui     t6, 0xF200                 # t6 = F2000000
    addiu   v0, v0, 0x0008             # v0 = 00000030
    sw      $zero, 0x0004(t8)          # 00000004
    sw      v0, 0x0000($sp)            
    lw      t9, 0x0000($sp)            
    addiu   t7, a2, 0xFFFF             # t7 = FFFFFFFF
    sll     t8, t7,  2                 
    sw      t6, 0x0000(t9)             # F7880000
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    addiu   t7, a3, 0xFFFF             # t7 = FFFFFFFF
    sll     t8, t7,  2                 
    sll     t9, t6, 12                 
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    lw      t8, 0x0000($sp)            
    or      t7, t9, t6                 # t7 = F7880000
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sw      t7, 0x0004(t8)             # 00000004
    lh      a1, 0x0032($sp)            
    lh      t9, 0x003A($sp)            
    lh      a2, 0x0036($sp)            
    lui     $at, 0xE400                # $at = E4000000
    addu    t6, a1, t9                 
    sll     t7, t6,  2                 
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    lh      t7, 0x003E($sp)            
    sll     t9, t8, 12                 
    or      t6, t9, $at                # t6 = F7880000
    addu    t8, a2, t7                 
    sll     t9, t8,  2                 
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    or      t8, t6, t7                 # t8 = F7880000
    or      v1, v0, $zero              # v1 = 00000038
    sll     t9, a1,  2                 
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    sw      t8, 0x0000(v1)             # 00000038
    sll     t8, a2,  2                 
    andi    t9, t8, 0x0FFF             # t9 = 00000000
    sll     t7, t6, 12                 
    or      t6, t7, t9                 # t6 = 00000000
    sw      t6, 0x0004(v1)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a3, v0, $zero              # a3 = 00000040
    lui     t8, 0xE100                 # t8 = E1000000
    sw      t8, 0x0000(a3)             # 00000040
    sw      $zero, 0x0004(a3)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      t0, v0, $zero              # t0 = 00000048
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(t0)             # 00000048
    lhu     t6, 0x0042($sp)            
    lhu     t9, 0x0046($sp)            
    addiu   v0, v0, 0x0008             # v0 = 00000050
    sll     t8, t6, 16                 
    or      t6, t8, t9                 # t6 = E1000000
    sw      t6, 0x0004(t0)             # 0000004C
    sw      v0, 0x0000(a0)             # 00000000
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80AEDC94:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      a3, 0x0074($sp)            
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      a0, 0x0068($sp)            
    sw      a2, 0x0070($sp)            
    lui     t3, 0x0700                 # t3 = 07000000
    lui     t5, 0xFD90                 # t5 = FD900000
    lw      t6, 0x0068($sp)            
    lui     t7, 0xF590                 # t7 = F5900000
    lui     t8, 0xE600                 # t8 = E6000000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      a1, 0x0004(v1)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      t1, v0, $zero              # t1 = 00000008
    sw      t7, 0x0000(t1)             # 00000008
    sw      t3, 0x0004(t1)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t2, v0, $zero              # t2 = 00000010
    sw      t8, 0x0000(t2)             # 00000010
    sw      $zero, 0x0004(t2)          # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      t0, v0, $zero              # t0 = 00000018
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t0)             # 00000018
    lh      t6, 0x007A($sp)            
    addiu   v0, v0, 0x0008             # v0 = 00000020
    lui     t2, 0xF200                 # t2 = F2000000
    multu   a3, t6                     
    mflo    t4                         
    addiu   t4, t4, 0x0003             # t4 = 00000003
    sra     t4, t4,  2                 
    addiu   t4, t4, 0xFFFF             # t4 = 00000002
    slti    $at, t4, 0x07FF            
    beql    $at, $zero, lbl_80AEDD38   
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
    beq     $zero, $zero, lbl_80AEDD38 
    or      a1, t4, $zero              # a1 = 00000002
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
lbl_80AEDD38:
    bgez    a3, lbl_80AEDD48           
    sra     a2, a3,  4                 
    addiu   $at, a3, 0x000F            # $at = 0000000F
    sra     a2, $at,  4                
lbl_80AEDD48:
    bgtzl   a2, lbl_80AEDD5C           
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AEDD5C 
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      a0, a2, $zero              # a0 = 00000000
lbl_80AEDD5C:
    bgtz    a2, lbl_80AEDD6C           
    addiu   t7, a0, 0x07FF             # t7 = 000007FF
    beq     $zero, $zero, lbl_80AEDD70 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AEDD6C:
    or      v1, a2, $zero              # v1 = 00000000
lbl_80AEDD70:
    div     $zero, t7, v1              
    mflo    t8                         
    andi    t9, t8, 0x0FFF             # t9 = 00000000
    bne     v1, $zero, lbl_80AEDD88    
    nop
    break   # 0x01C00
lbl_80AEDD88:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80AEDDA0      
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80AEDDA0      
    nop
    break   # 0x01800
lbl_80AEDDA0:
    andi    t7, a1, 0x0FFF             # t7 = 000007FF
    sll     t8, t7, 12                 
    or      t6, t9, t3                 # t6 = 07000000
    or      t9, t6, t8                 # t9 = E7000000
    sw      t9, 0x0004(t0)             # 0000001C
    or      a2, v0, $zero              # a2 = 00000020
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(a2)             # 00000020
    sw      $zero, 0x0004(a2)          # 00000024
    addiu   v0, v0, 0x0008             # v0 = 00000028
    sra     t6, a3,  1                 
    addiu   t8, t6, 0x0007             # t8 = 07000007
    sra     t9, t8,  3                 
    andi    t7, t9, 0x01FF             # t7 = 00000000
    or      t1, v0, $zero              # t1 = 00000028
    sll     t6, t7,  9                 
    lui     $at, 0xF580                # $at = F5800000
    or      t8, t6, $at                # t8 = F7800000
    sw      t8, 0x0000(t1)             # 00000028
    sw      $zero, 0x0004(t1)          # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      t4, v0, $zero              # t4 = 00000030
    addiu   t9, a3, 0xFFFF             # t9 = FFFFFFFF
    sll     t7, t9,  2                 
    sw      t2, 0x0000(t4)             # 00000030
    lh      t9, 0x007A($sp)            
    andi    t6, t7, 0x0FFF             # t6 = 00000000
    sll     t8, t6, 12                 
    addiu   t7, t9, 0xFFFF             # t7 = FFFFFFFE
    sll     t6, t7,  2                 
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    or      t7, t8, t9                 # t7 = F7800000
    sw      t7, 0x0004(t4)             # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    lhu     t6, 0x00A6($sp)            
    lh      t1, 0x007E($sp)            
    lh      t4, 0x0082($sp)            
    bne     t6, $zero, lbl_80AEE050    
    or      a0, v0, $zero              # a0 = 00000038
    sw      t5, 0x0000(a0)             # 00000038
    lw      t8, 0x0070($sp)            
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a1, v0, $zero              # a1 = 00000040
    sw      t8, 0x0004(a0)             # 0000003C
    lui     t9, 0xF590                 # t9 = F5900000
    ori     t9, t9, 0x0100             # t9 = F5900100
    sw      t9, 0x0000(a1)             # 00000040
    lhu     a2, 0x00A2($sp)            
    lhu     a3, 0x009E($sp)            
    lui     $at, 0x0701                # $at = 07010000
    andi    a2, a2, 0x000F             # a2 = 00000000
    sll     a2, a2, 10                 
    ori     $at, $at, 0x4000           # $at = 07014000
    or      t7, a2, $at                # t7 = 07014000
    andi    a3, a3, 0x000F             # a3 = 00000000
    or      t6, t7, a3                 # t6 = 07014000
    sw      t6, 0x0004(a1)             # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    sw      v0, 0x003C($sp)            
    lw      t9, 0x003C($sp)            
    lui     t8, 0xE600                 # t8 = E6000000
    addiu   v0, v0, 0x0008             # v0 = 00000050
    sw      t8, 0x0000(t9)             # F5900100
    lw      t7, 0x003C($sp)            
    or      t5, t1, $zero              # t5 = 00000028
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
    sw      $zero, 0x0004(t7)          # 07014004
    multu   t1, t4                     
    or      t0, v0, $zero              # t0 = 00000050
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(t0)             # 00000050
    addiu   v0, v0, 0x0008             # v0 = 00000058
    mflo    v1                         
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     v1, v1,  1                 
    addiu   v1, v1, 0xFFFF             # v1 = 00000000
    slti    $at, v1, 0x07FF            
    beq     $at, $zero, lbl_80AEDEE4   
    nop
    beq     $zero, $zero, lbl_80AEDEE4 
    or      a1, v1, $zero              # a1 = 00000000
lbl_80AEDEE4:
    bgez    t5, lbl_80AEDEF4           
    sra     t8, t5,  3                 
    addiu   $at, t5, 0x0007            # $at = 0000002F
    sra     t8, $at,  3                
lbl_80AEDEF4:
    sw      t8, 0x0000($sp)            
    bgtz    t8, lbl_80AEDF08           
    or      t9, t8, $zero              # t9 = E6000000
    beq     $zero, $zero, lbl_80AEDF0C 
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_80AEDF08:
    lw      a0, 0x0000($sp)            
lbl_80AEDF0C:
    lw      t7, 0x0000($sp)            
    addiu   t6, a0, 0x07FF             # t6 = 00000800
    lw      v1, 0x0000($sp)            
    bgtz    t7, lbl_80AEDF28           
    nop
    beq     $zero, $zero, lbl_80AEDF28 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AEDF28:
    div     $zero, t6, v1              
    mflo    t8                         
    andi    t9, t8, 0x0FFF             # t9 = 00000000
    bne     v1, $zero, lbl_80AEDF40    
    nop
    break   # 0x01C00
lbl_80AEDF40:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80AEDF58      
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80AEDF58      
    nop
    break   # 0x01800
lbl_80AEDF58:
    andi    t6, a1, 0x0FFF             # t6 = 00000000
    sll     t8, t6, 12                 
    or      t7, t9, t3                 # t7 = 07000000
    or      t9, t7, t8                 # t9 = E7000000
    sw      t9, 0x0004(t0)             # 00000054
    sw      v0, 0x0034($sp)            
    lw      t7, 0x0034($sp)            
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t9, t5, 0x0007             # t9 = 0000002F
    sw      t6, 0x0000(t7)             # 07000000
    lw      t8, 0x0034($sp)            
    sra     t6, t9,  3                 
    addiu   v0, v0, 0x0008             # v0 = 00000060
    sw      $zero, 0x0004(t8)          # E6000004
    andi    t7, t6, 0x01FF             # t7 = 00000000
    sll     t8, t7,  9                 
    sw      v0, 0x0030($sp)            
    lw      t7, 0x0030($sp)            
    lui     $at, 0xF588                # $at = F5880000
    or      t9, t8, $at                # t9 = F7880000
    ori     t6, t9, 0x0100             # t6 = F7880100
    lui     $at, 0x0101                # $at = 01010000
    sw      t6, 0x0000(t7)             # 00000000
    lw      t6, 0x0030($sp)            
    ori     $at, $at, 0x4000           # $at = 01014000
    or      t8, a2, $at                # t8 = 01014000
    or      t9, t8, a3                 # t9 = 01014000
    addiu   v0, v0, 0x0008             # v0 = 00000068
    sw      t9, 0x0004(t6)             # F7880104
    sw      v0, 0x002C($sp)            
    lw      t7, 0x002C($sp)            
    addiu   t8, t1, 0xFFFF             # t8 = 00000027
    sll     t9, t8,  2                 
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    sw      t2, 0x0000(t7)             # 00000000
    sll     t7, t6, 12                 
    addiu   t9, t4, 0xFFFF             # t9 = 0000002F
    lui     $at, 0x0100                # $at = 01000000
    or      t8, t7, $at                # t8 = 01000000
    sll     t6, t9,  2                 
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    lw      t6, 0x002C($sp)            
    or      t9, t8, t7                 # t9 = 01000000
    addiu   v0, v0, 0x0008             # v0 = 00000070
    sw      t9, 0x0004(t6)             # 00000004
    lw      a0, 0x00A8($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      v1, v0, $zero              # v1 = 00000070
    addu    a0, a0, $at                
    lh      t7, 0x62FE(a0)             # 000062FF
    lui     $at, 0x0107                # $at = 01070000
    ori     $at, $at, 0xC000           # $at = 0107C000
    andi    t9, t7, 0x007F             # t9 = 00000000
    or      t6, t9, t2                 # t6 = F2000000
    sw      t6, 0x0000(v1)             # 00000070
    lh      t8, 0x62FE(a0)             # 000062FF
    addiu   v0, v0, 0x0008             # v0 = 00000078
    andi    t7, t8, 0x007F             # t7 = 00000000
    addiu   t9, t7, 0x007C             # t9 = 0000007C
    andi    t6, t9, 0x0FFF             # t6 = 0000007C
    or      t8, t6, $at                # t8 = 0107C07C
    sw      t8, 0x0004(v1)             # 00000074
lbl_80AEE050:
    lh      a0, 0x0086($sp)            
    lh      a1, 0x008A($sp)            
    lh      t7, 0x008E($sp)            
    lui     $at, 0xE400                # $at = E4000000
    or      v1, v0, $zero              # v1 = 00000078
    addu    t9, a0, t7                 
    sll     t6, t9,  2                 
    andi    t8, t6, 0x0FFF             # t8 = 0000007C
    lh      t6, 0x0092($sp)            
    sll     t7, t8, 12                 
    or      t9, t7, $at                # t9 = E4000000
    addu    t8, a1, t6                 
    sll     t7, t8,  2                 
    andi    t6, t7, 0x0FFF             # t6 = 00000000
    or      t8, t9, t6                 # t8 = E4000000
    sll     t7, a0,  2                 
    andi    t9, t7, 0x0FFF             # t9 = 00000000
    sw      t8, 0x0000(v1)             # 00000078
    sll     t8, a1,  2                 
    andi    t7, t8, 0x0FFF             # t7 = 00000000
    sll     t6, t9, 12                 
    or      t9, t6, t7                 # t9 = 00000000
    sw      t9, 0x0004(v1)             # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a2, v0, $zero              # a2 = 00000080
    lui     t8, 0xE100                 # t8 = E1000000
    sw      t8, 0x0000(a2)             # 00000080
    sw      $zero, 0x0004(a2)          # 00000084
    addiu   v0, v0, 0x0008             # v0 = 00000088
    or      a3, v0, $zero              # a3 = 00000088
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(a3)             # 00000088
    lhu     t9, 0x0096($sp)            
    lhu     t7, 0x009A($sp)            
    addiu   v0, v0, 0x0008             # v0 = 00000090
    sll     t8, t9, 16                 
    or      t9, t8, t7                 # t9 = E1000000
    sw      t9, 0x0004(a3)             # 0000008C
    lw      t6, 0x0068($sp)            
    sw      v0, 0x0000(t6)             # F1000000
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80AEE0F8:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s5, 0x002C($sp)            
    sw      s1, 0x001C($sp)            
    sll     s1, a2, 16                 
    sll     s5, a1, 16                 
    sw      s0, 0x0018($sp)            
    or      s0, a3, $zero              # s0 = 00000000
    sra     s5, s5, 16                 
    sra     s1, s1, 16                 
    sw      $ra, 0x003C($sp)           
    sw      s8, 0x0038($sp)            
    sw      s7, 0x0034($sp)            
    sw      s6, 0x0030($sp)            
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    sw      a0, 0x00E0($sp)            
    sw      a1, 0x00E4($sp)            
    sw      a2, 0x00E8($sp)            
    lw      t6, 0x00E0($sp)            
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFFC
    lw      t7, 0x0000(t6)             # 00000000
    jal     func_8007E9C8              
    sw      t7, 0x00DC($sp)            
    lw      v0, 0x00F0($sp)            
    addiu   t9, $zero, 0x1000          # t9 = 00001000
    lw      a0, 0x00F4($sp)            
    sll     s4, v0,  2                 
    divu    $zero, t9, s4              
    mflo    t1                         
    sll     s3, v0,  1                 
    srl     t8, a0,  1                 
    multu   v0, a0                     
    lw      t7, 0x00DC($sp)            
    addiu   s3, s3, 0x0007             # s3 = 00000007
    or      t3, s0, $zero              # t3 = 00000000
    subu    t4, s1, t8                 
    bne     s4, $zero, lbl_80AEE198    
    nop
    break   # 0x01C00
lbl_80AEE198:
    mflo    a3                         
    sll     a3, a3,  2                 
    srl     s3, s3,  3                 
    multu   v0, t1                     
    addiu   a0, v0, 0xFFFF             # a0 = FFFFFFFF
    or      t2, t1, $zero              # t2 = 00000000
    lui     s0, 0xE800                 # s0 = E8000000
    sll     a1, a0,  2                 
    andi    s3, s3, 0x01FF             # s3 = 00000007
    lui     t9, 0xE700                 # t9 = E7000000
    or      t5, $zero, $zero           # t5 = 00000000
    addiu   t8, t7, 0x0008             # t8 = 00000008
    mflo    $ra                        
    sll     $ra, $ra,  2               
    subu    t0, a3, $ra                
    div     $zero, a3, $ra             
    bne     $ra, $zero, lbl_80AEE1E4   
    nop
    break   # 0x01C00
lbl_80AEE1E4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     $ra, $at, lbl_80AEE1FC     
    lui     $at, 0x8000                # $at = 80000000
    bne     a3, $at, lbl_80AEE1FC      
    nop
    break   # 0x01800
lbl_80AEE1FC:
    mflo    v1                         
    mfhi    t6                         
    or      s2, v1, $zero              # s2 = 00000000
    beq     t6, $zero, lbl_80AEE214    
    lui     $at, 0xF518                # $at = F5180000
    addiu   s2, v1, 0x0001             # s2 = 00000001
lbl_80AEE214:
    sw      t8, 0x00DC($sp)            
    sw      $zero, 0x0004(t7)          # 00000004
    sw      t9, 0x0000(t7)             # 00000000
    lw      t6, 0x00DC($sp)            
    sll     s3, s3,  9                 
    or      s3, s3, $at                # s3 = F5180007
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x00DC($sp)            
    sw      $zero, 0x0004(t6)          # 00000004
    sw      s0, 0x0000(t6)             # 00000000
    lw      t8, 0x00DC($sp)            
    lui     t6, 0x0708                 # t6 = 07080000
    ori     t6, t6, 0x0200             # t6 = 07080200
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x00DC($sp)            
    sw      t6, 0x0004(t8)             # 0000000C
    sw      s3, 0x0000(t8)             # 00000008
    lw      t7, 0x00DC($sp)            
    andi    a1, a1, 0x0FFF             # a1 = 00000000
    sll     a1, a1, 12                 
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x00DC($sp)            
    sw      $zero, 0x0004(t7)          # 0000000C
    sw      s0, 0x0000(t7)             # 00000008
    lw      t9, 0x00DC($sp)            
    lui     t7, 0x0008                 # t7 = 00080000
    ori     t7, t7, 0x0200             # t7 = 00080200
    addiu   t6, t9, 0x0008             # t6 = 00000018
    sw      t6, 0x00DC($sp)            
    sw      t7, 0x0004(t9)             # 00000014
    sw      s3, 0x0000(t9)             # 00000010
    lw      v1, 0x00DC($sp)            
    addiu   t7, t1, 0xFFFF             # t7 = FFFFFFFF
    sll     t8, t7,  2                 
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x00DC($sp)            
    lui     t6, 0xF200                 # t6 = F2000000
    andi    t9, t8, 0x0FFF             # t9 = 00000010
    sw      t6, 0x0000(v1)             # 00000000
    or      t6, a1, t9                 # t6 = 00000010
    sw      t6, 0x0004(v1)             # 00000004
    sw      a0, 0x0058($sp)            
    sw      a1, 0x0054($sp)            
    sw      s2, 0x00D4($sp)            
    sw      s3, 0x005C($sp)            
    blez    s2, lbl_80AEE4FC           
    sw      s4, 0x0068($sp)            
    srl     t7, v0,  1                 
    subu    v1, s5, t7                 
    andi    s1, a0, 0x0FFF             # s1 = 00000FFF
    lui     $at, 0xFD18                # $at = FD180000
    or      s1, s1, $at                # s1 = FD180FFF
    addu    s4, v0, v1                 
    sll     s4, s4,  2                 
    lui     $at, 0x0700                # $at = 07000000
    or      s2, a1, $at                # s2 = 07000000
    andi    s4, s4, 0x0FFF             # s4 = 00000000
    sll     s3, v1,  2                 
    addiu   t1, t2, 0xFFFF             # t1 = FFFFFFFF
    sll     t1, t1,  2                 
    andi    s3, s3, 0x0FFF             # s3 = 00000007
    sll     s4, s4, 12                 
    lui     $at, 0xE400                # $at = E4000000
    or      s4, s4, $at                # s4 = E4000000
    sll     s3, s3, 12                 
    andi    t1, t1, 0x0FFF             # t1 = 00000FFF
    lui     s5, 0xE600                 # s5 = E6000000
    lui     s8, 0xF100                 # s8 = F1000000
    lui     s7, 0xE100                 # s7 = E1000000
    lui     s6, 0xF400                 # s6 = F4000000
    lw      t8, 0x00DC($sp)            
lbl_80AEE330:
    addu    a3, t4, t2                 
    subu    a1, t0, $ra                
    addiu   t9, t8, 0x0008             # t9 = 00000018
    sw      t9, 0x00DC($sp)            
    sw      t3, 0x0004(t8)             # 00000014
    sw      s1, 0x0000(t8)             # 00000010
    lw      t6, 0x00DC($sp)            
    addiu   t7, t6, 0x0008             # t7 = 00000018
    sw      t7, 0x00DC($sp)            
    sw      $zero, 0x0004(t6)          # 00000014
    sw      s5, 0x0000(t6)             # 00000010
    lw      a0, 0x00DC($sp)            
    or      t6, s2, t1                 # t6 = 07000FFF
    addu    t3, t3, $ra                
    addiu   t9, a0, 0x0008             # t9 = 00000007
    sw      t9, 0x00DC($sp)            
    sw      t6, 0x0004(a0)             # 00000003
    sw      s6, 0x0000(a0)             # FFFFFFFF
    lw      a2, 0x00DC($sp)            
    sll     t9, a3,  2                 
    andi    t6, t9, 0x0FFF             # t6 = 00000007
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x00DC($sp)            
    sll     t8, t4,  2                 
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    or      t7, s4, t6                 # t7 = E4000007
    or      t6, s3, t9                 # t6 = 0000000F
    sw      t6, 0x0004(a2)             # 00000004
    sw      t7, 0x0000(a2)             # 00000000
    lw      v0, 0x00DC($sp)            
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x00DC($sp)            
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s7, 0x0000(v0)             # 00000000
    lw      t9, 0x00DC($sp)            
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x00DC($sp)            
    sw      t7, 0x0004(t9)             # 0000000C
    sw      s8, 0x0000(t9)             # 00000008
    or      v1, t9, $zero              # v1 = 00000008
    bgez    a1, lbl_80AEE4E8           
    or      t4, a3, $zero              # t4 = 00000000
    blez    t0, lbl_80AEE4EC           
    lw      t8, 0x0068($sp)            
    div     $zero, t0, t8              
    mflo    t2                         
    lw      t9, 0x00DC($sp)            
    bne     t8, $zero, lbl_80AEE400    
    nop
    break   # 0x01C00
lbl_80AEE400:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_80AEE418      
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_80AEE418      
    nop
    break   # 0x01800
lbl_80AEE418:
    or      t0, a1, $zero              # t0 = 00000000
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x00DC($sp)            
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(t9)             # 00000008
    sw      $zero, 0x0004(t9)          # 0000000C
    lw      t8, 0x00DC($sp)            
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x00DC($sp)            
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      s0, 0x0000(t8)             # 00000008
    lw      t6, 0x00DC($sp)            
    lw      t8, 0x005C($sp)            
    lui     t9, 0x0708                 # t9 = 07080000
    addiu   t7, t6, 0x0008             # t7 = 00000018
    sw      t7, 0x00DC($sp)            
    ori     t9, t9, 0x0200             # t9 = 07080200
    sw      t9, 0x0004(t6)             # 00000014
    sw      t8, 0x0000(t6)             # 00000010
    lw      t6, 0x00DC($sp)            
    lui     $at, 0xF518                # $at = F5180000
    addiu   t7, t6, 0x0008             # t7 = 00000018
    sw      t7, 0x00DC($sp)            
    sw      s0, 0x0000(t6)             # 00000010
    lw      a3, 0x0058($sp)            
    sw      $zero, 0x0004(t6)          # 00000014
    lw      t8, 0x00DC($sp)            
    sll     a3, a3,  1                 
    addiu   a3, a3, 0x0009             # a3 = 00000009
    srl     a3, a3,  3                 
    andi    a3, a3, 0x01FF             # a3 = 00000009
    sll     a3, a3,  9                 
    or      a3, a3, $at                # a3 = F5180009
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x00DC($sp)            
    lui     t6, 0x0008                 # t6 = 00080000
    ori     t6, t6, 0x0200             # t6 = 00080200
    sw      t6, 0x0004(t8)             # 0000000C
    sw      a3, 0x0000(t8)             # 00000008
    lw      v1, 0x00DC($sp)            
    lui     t9, 0xF200                 # t9 = F2000000
    addiu   t1, t2, 0xFFFF             # t1 = FFFFFFFF
    addiu   t8, v1, 0x0008             # t8 = 00000010
    sw      t8, 0x00DC($sp)            
    sw      t9, 0x0000(v1)             # 00000008
    lw      t6, 0x0054($sp)            
    sll     t1, t1,  2                 
    andi    t1, t1, 0x0FFF             # t1 = 00000FFF
    or      t7, t6, t1                 # t7 = 00080FFF
    sw      t7, 0x0004(v1)             # 0000000C
    beq     $zero, $zero, lbl_80AEE4F0 
    lw      t8, 0x00D4($sp)            
lbl_80AEE4E8:
    or      t0, a1, $zero              # t0 = 00000000
lbl_80AEE4EC:
    lw      t8, 0x00D4($sp)            
lbl_80AEE4F0:
    addiu   t5, t5, 0x0001             # t5 = 00000001
    bnel    t5, t8, lbl_80AEE330       
    lw      t8, 0x00DC($sp)            
lbl_80AEE4FC:
    lw      t9, 0x00DC($sp)            
    lw      t6, 0x00E0($sp)            
    sw      t9, 0x0000(t6)             # 00080200
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    lw      s5, 0x002C($sp)            
    lw      s6, 0x0030($sp)            
    lw      s7, 0x0034($sp)            
    lw      s8, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_80AEE538:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1212(t6)             # 80121212
    beql    t6, $zero, lbl_80AEE77C    
    lw      $ra, 0x0014($sp)           
    jal     func_801C70FC              
    nop
    beq     v0, $zero, lbl_80AEE778    
    lw      t4, 0x0018($sp)            
    lui     t3, 0xE300                 # t3 = E3000000
    ori     t3, t3, 0x0A01             # t3 = E3000A01
    lui     t2, 0xE700                 # t2 = E7000000
    lw      v0, 0x0000(t4)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a0, v0, $zero              # a0 = 00000008
    sw      t3, 0x0000(a0)             # 00000008
    sw      $zero, 0x0004(a0)          # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      a1, v0, $zero              # a1 = 00000010
    lui     t7, 0xE200                 # t7 = E2000000
    lui     t8, 0x0050                 # t8 = 00500000
    ori     t8, t8, 0x4240             # t8 = 00504240
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0000(a1)             # 00000010
    sw      t8, 0x0004(a1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      a2, v0, $zero              # a2 = 00000018
    lui     t9, 0xFC30                 # t9 = FC300000
    lui     t5, 0x552E                 # t5 = 552E0000
    ori     t5, t5, 0xFF7F             # t5 = 552EFF7F
    ori     t9, t9, 0x9661             # t9 = FC309661
    sw      t9, 0x0000(a2)             # 00000018
    sw      t5, 0x0004(a2)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      a3, v0, $zero              # a3 = 00000020
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(a3)             # 00000020
    lw      t7, 0x0024($sp)            
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   v0, v0, 0x0008             # v0 = 00000028
    andi    t8, t7, 0x00FF             # t8 = 0000001C
    or      t9, t8, $at                # t9 = FFFFFF1C
    sw      t9, 0x0004(a3)             # 00000024
    or      v1, v0, $zero              # v1 = 00000028
    lui     t6, 0x3024                 # t6 = 30240000
    ori     t6, t6, 0x92FF             # t6 = 302492FF
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      t5, 0x0000(v1)             # 00000028
    sw      t6, 0x0004(v1)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      a0, v0, $zero              # a0 = 00000030
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0000             # t8 = 06000000
    lui     t7, 0xFD70                 # t7 = FD700000
    sw      t7, 0x0000(a0)             # 00000030
    sw      t8, 0x0004(a0)             # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    or      a1, v0, $zero              # a1 = 00000038
    lui     t9, 0xF570                 # t9 = F5700000
    lui     t5, 0x0700                 # t5 = 07000000
    sw      t5, 0x0004(a1)             # 0000003C
    sw      t9, 0x0000(a1)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a2, v0, $zero              # a2 = 00000040
    lui     t6, 0xE600                 # t6 = E6000000
    sw      t6, 0x0000(a2)             # 00000040
    sw      $zero, 0x0004(a2)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      v1, v0, $zero              # v1 = 00000048
    lui     t8, 0x0717                 # t8 = 07170000
    ori     t8, t8, 0xF156             # t8 = 0717F156
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(v1)             # 00000048
    sw      t8, 0x0004(v1)             # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      a0, v0, $zero              # a0 = 00000050
    sw      t2, 0x0000(a0)             # 00000050
    sw      $zero, 0x0004(a0)          # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      a1, v0, $zero              # a1 = 00000058
    lui     t9, 0xF568                 # t9 = F5680000
    ori     t9, t9, 0x0C00             # t9 = F5680C00
    sw      t9, 0x0000(a1)             # 00000058
    sw      $zero, 0x0004(a1)          # 0000005C
    addiu   v0, v0, 0x0008             # v0 = 00000060
    or      a2, v0, $zero              # a2 = 00000060
    lui     t6, 0x000B                 # t6 = 000B0000
    ori     t6, t6, 0xC03C             # t6 = 000BC03C
    lui     t5, 0xF200                 # t5 = F2000000
    sw      t5, 0x0000(a2)             # 00000060
    sw      t6, 0x0004(a2)             # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    lh      a3, 0x001E($sp)            
    lh      t0, 0x0022($sp)            
    lui     $at, 0xE400                # $at = E4000000
    addiu   a3, a3, 0x0040             # a3 = 00000060
    sll     a3, a3,  2                 
    addiu   t7, a3, 0x00C0             # t7 = 00000120
    andi    t8, t7, 0x0FFF             # t8 = 00000120
    addiu   t0, t0, 0x0005             # t0 = 00000005
    sll     t0, t0,  2                 
    sll     t9, t8, 12                 
    or      t5, t9, $at                # t5 = F5680C00
    addiu   t6, t0, 0x0040             # t6 = 00000045
    andi    t7, t6, 0x0FFF             # t7 = 00000045
    or      t8, t5, t7                 # t8 = F5680C45
    andi    t9, a3, 0x0FFF             # t9 = 00000060
    or      t1, v0, $zero              # t1 = 00000068
    sll     t6, t9, 12                 
    andi    t5, t0, 0x0FFF             # t5 = 00000005
    or      t7, t6, t5                 # t7 = 00000045
    sw      t7, 0x0004(t1)             # 0000006C
    sw      t8, 0x0000(t1)             # 00000068
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      v1, v0, $zero              # v1 = 00000070
    lui     t8, 0xE100                 # t8 = E1000000
    sw      t8, 0x0000(v1)             # 00000070
    sw      $zero, 0x0004(v1)          # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      a0, v0, $zero              # a0 = 00000078
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    lui     t9, 0xF100                 # t9 = F1000000
    sw      t9, 0x0000(a0)             # 00000078
    sw      t6, 0x0004(a0)             # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a1, v0, $zero              # a1 = 00000080
    sw      t2, 0x0000(a1)             # 00000080
    sw      $zero, 0x0004(a1)          # 00000084
    addiu   v0, v0, 0x0008             # v0 = 00000088
    or      a2, v0, $zero              # a2 = 00000088
    lui     t5, 0x0010                 # t5 = 00100000
    sw      t5, 0x0004(a2)             # 0000008C
    sw      t3, 0x0000(a2)             # 00000088
    addiu   v0, v0, 0x0008             # v0 = 00000090
    sw      v0, 0x0000(t4)             # 00000000
lbl_80AEE778:
    lw      $ra, 0x0014($sp)           
lbl_80AEE77C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AEE788:
    lui     $at, 0x42C8                # $at = 42C80000
    lui     t0, 0x8012                 # t0 = 80120000
    mtc1    $at, $f0                   # $f0 = 100.00
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      t1, 0x0000(t0)             # 8011BA00
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f4                   # $f4 = 1024.00
    lh      t6, 0x0496(t1)             # 00000496
    lw      v0, 0x0000(a0)             # 00000000
    lui     $at, 0x4180                # $at = 41800000
    mtc1    t6, $f6                    # $f6 = 0.00
    or      t2, v0, $zero              # t2 = 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    cvt.s.w $f8, $f6                   
    or      t3, v0, $zero              # t3 = 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t4, v0, $zero              # t4 = 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      t5, v0, $zero              # t5 = 00000018
    div.s   $f10, $f8, $f0             
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      v1, v0, $zero              # v1 = 00000020
    lui     t6, 0x0708                 # t6 = 07080000
    ori     t6, t6, 0x0200             # t6 = 07080200
    addiu   v0, v0, 0x0008             # v0 = 00000028
    div.s   $f16, $f4, $f10            
    mtc1    $at, $f10                  # $f10 = 16.00
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    sh      t8, 0x0494(t1)             # 00000494
    lw      t1, 0x0000(t0)             # 8011BA00
    lui     t8, 0xFD90                 # t8 = FD900000
    lh      t9, 0x0496(t1)             # 00000496
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     t9, 0xF590                 # t9 = F5900000
    cvt.s.w $f8, $f6                   
    div.s   $f4, $f8, $f0              
    mul.s   $f16, $f4, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0498(t1)             # 00000498
    sw      t8, 0x0000(t2)             # 00000000
    sw      a1, 0x0004(t2)             # 00000004
    sw      t9, 0x0000(t3)             # 00000008
    sw      t6, 0x0004(t3)             # 0000000C
    lui     t7, 0xE600                 # t7 = E6000000
    sw      t7, 0x0000(t4)             # 00000010
    sw      $zero, 0x0004(t4)          # 00000014
    lui     t9, 0x0703                 # t9 = 07030000
    ori     t9, t9, 0xF800             # t9 = 0703F800
    lui     t8, 0xF300                 # t8 = F3000000
    sw      t8, 0x0000(t5)             # 00000018
    sw      t9, 0x0004(t5)             # 0000001C
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(v1)             # 00000020
    sw      $zero, 0x0004(v1)          # 00000024
    or      a1, v0, $zero              # a1 = 00000028
    lui     t7, 0xF580                 # t7 = F5800000
    lui     t8, 0x0008                 # t8 = 00080000
    ori     t8, t8, 0x0200             # t8 = 00080200
    ori     t7, t7, 0x0200             # t7 = F5800200
    sw      t7, 0x0000(a1)             # 00000028
    sw      t8, 0x0004(a1)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      t1, v0, $zero              # t1 = 00000030
    lui     t6, 0x0003                 # t6 = 00030000
    ori     t6, t6, 0xC03C             # t6 = 0003C03C
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(t1)             # 00000030
    sw      t6, 0x0004(t1)             # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    lw      t7, 0x0000(t0)             # 8011BA00
    lui     $at, 0xE400                # $at = E4000000
    or      t2, v0, $zero              # t2 = 00000038
    lh      t3, 0x0498(t7)             # F5800698
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      t4, v0, $zero              # t4 = 00000040
    addu    t8, t3, a3                 
    sll     t9, t8,  2                 
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    addu    t8, a2, t3                 
    sll     t9, t8,  2                 
    or      t7, t6, $at                # t7 = E4000000
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    sll     t8, t6, 12                 
    or      t9, t7, t8                 # t9 = E4080200
    sll     t6, a2,  2                 
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    sw      t9, 0x0000(t2)             # 00000038
    sll     t9, a3,  2                 
    andi    t6, t9, 0x0FFF             # t6 = 00000200
    sll     t8, t7, 12                 
    or      t7, t8, t6                 # t7 = 00080200
    sw      t7, 0x0004(t2)             # 0000003C
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(t4)             # 00000040
    addiu   v0, v0, 0x0008             # v0 = 00000048
    sw      $zero, 0x0004(t4)          # 00000044
    or      v1, v0, $zero              # v1 = 00000048
    lui     t8, 0xF100                 # t8 = F1000000
    sw      t8, 0x0000(v1)             # 00000048
    lw      t6, 0x0000(t0)             # 8011BA00
    addiu   v0, v0, 0x0008             # v0 = 00000050
    lh      a1, 0x0494(t6)             # 00000694
    andi    a1, a1, 0xFFFF             # a1 = 00000028
    sll     t7, a1, 16                 
    or      t9, a1, t7                 # t9 = 00080228
    sw      t9, 0x0004(v1)             # 0000004C
    sw      v0, 0x0000(a0)             # 00000000
    jr      $ra                        
    nop


func_80AEE94C:
    addiu   $sp, $sp, 0xFE50           # $sp = FFFFFE50
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sw      a0, 0x01B0($sp)            
    sw      a2, 0x01B8($sp)            
    lw      t6, 0x01B8($sp)            
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0018             # t9 = DB060018
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x01A0($sp)            
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x01A0($sp)            
    sw      t9, 0x0000(t7)             # 00000000
    lw      t1, 0x01B0($sp)            
    lui     t5, 0x0001                 # t5 = 00010000
    lb      t2, 0x001E(t1)             # 0000001E
    sll     t3, t2,  4                 
    addu    t3, t3, t2                 
    sll     t3, t3,  2                 
    addu    t4, a1, t3                 
    addu    t5, t5, t4                 
    lw      t5, 0x17B4(t5)             # 000117B4
    sw      t5, 0x0004(t7)             # 00000004
    jal     func_8007E63C              
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    lw      a3, 0x01B0($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     t1, 0xE300                 # t1 = E3000000
    addu    t0, a3, $at                
    lh      t6, 0x62FE(t0)             # 000062FE
    addiu   $at, a3, 0x7FFF            # $at = 00007FFF
    lui     t5, 0xE200                 # t5 = E2000000
    addiu   t7, t6, 0xFFFE             # t7 = FFFFFFFE
    sh      t7, 0x62FF($at)            # 0000E2FE
    lw      t8, 0x01A0($sp)            
    ori     t1, t1, 0x0A01             # t1 = E3000A01
    lui     t2, 0x0010                 # t2 = 00100000
    addiu   t9, t8, 0x0008             # t9 = 00000008
    sw      t9, 0x01A0($sp)            
    sw      t2, 0x0004(t8)             # 00000004
    sw      t1, 0x0000(t8)             # 00000000
    lw      t3, 0x01A0($sp)            
    ori     t5, t5, 0x1E01             # t5 = E2001E01
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t4, t3, 0x0008             # t4 = 00000008
    sw      t4, 0x01A0($sp)            
    sw      t6, 0x0004(t3)             # 00000004
    sw      t5, 0x0000(t3)             # 00000000
    lw      t7, 0x01A0($sp)            
    lui     t9, 0xE200                 # t9 = E2000000
    lui     t1, 0x0C18                 # t1 = 0C180000
    addiu   t8, t7, 0x0008             # t8 = 00000006
    sw      t8, 0x01A0($sp)            
    ori     t1, t1, 0x4340             # t1 = 0C184340
    ori     t9, t9, 0x001C             # t9 = E200001C
    sw      t9, 0x0000(t7)             # FFFFFFFE
    sw      t1, 0x0004(t7)             # 00000002
    lw      t2, 0x01A0($sp)            
    lui     t4, 0xFC27                 # t4 = FC270000
    lui     t5, 0x350C                 # t5 = 350C0000
    addiu   t3, t2, 0x0008             # t3 = 00100008
    sw      t3, 0x01A0($sp)            
    ori     t5, t5, 0xE37F             # t5 = 350CE37F
    ori     t4, t4, 0x2C60             # t4 = FC272C60
    sw      t4, 0x0000(t2)             # 00100000
    sw      t5, 0x0004(t2)             # 00100004
    lw      a2, 0x01A0($sp)            
    lui     $at, 0xFA00                # $at = FA000000
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x01A0($sp)            
    lwc1    $f4, 0x62D0(t0)            # 000062D0
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f6                    
    nop
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FA000000
    sw      t4, 0x0000(a2)             # 00000000
    lwc1    $f8, 0x62DC(t0)            # 000062DC
    lwc1    $f16, 0x62D4(t0)           # 000062D4
    lwc1    $f4, 0x62D8(t0)            # 000062D8
    trunc.w.s $f10, $f8                  
    lwc1    $f8, 0x62EC(t0)            # 000062EC
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f10                   
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f18                   
    andi    t9, t8, 0x00FF             # t9 = 00000006
    trunc.w.s $f10, $f8                  
    mfc1    t4, $f6                    
    sll     t7, t6, 24                 
    sll     t1, t9,  8                 
    mfc1    t3, $f10                   
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sll     t6, t5, 16                 
    or      t8, t1, t7                 # t8 = 0C184348
    or      t1, t8, t6                 # t1 = 0C184349
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t1, t4                 # t5 = 0C184349
    sw      t5, 0x0004(a2)             # 00000004
    lw      v0, 0x01A0($sp)            
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x01A0($sp)            
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x62E0(t0)            # 000062E0
    lwc1    $f16, 0x62E8(t0)           # 000062E8
    lwc1    $f8, 0x62E4(t0)            # 000062E4
    trunc.w.s $f6, $f4                   
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f6                    
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f18                   
    sll     t3, t2, 24                 
    mfc1    t7, $f10                   
    andi    t4, t1, 0x00FF             # t4 = 00000049
    sll     t5, t4,  8                 
    andi    t9, t7, 0x00FF             # t9 = 00000000
    sll     t2, t9, 16                 
    or      t1, t5, t3                 # t1 = 0C184349
    or      t5, t1, t2                 # t5 = 0C184349
    ori     t3, t5, 0x00FF             # t3 = 0C1843FF
    sw      t3, 0x0004(v0)             # 00000004
    sw      t0, 0x007C($sp)            
    lwc1    $f16, 0x62D0(t0)           # 000062D0
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    sll     t6, t8, 16                 
    sra     t7, t6, 16                 
    beq     t7, $zero, lbl_80AEEC5C    
    lui     s8, 0x0602                 # s8 = 06020000
    lui     s5, %hi(var_80AEFBA0)      # s5 = 80AF0000
    addiu   s5, s5, %lo(var_80AEFBA0)  # s5 = 80AEFBA0
    addiu   s8, s8, 0xE300             # s8 = 0601E300
    or      s1, $zero, $zero           # s1 = 00000000
    or      s6, $zero, $zero           # s6 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t0, 0x007C($sp)            
lbl_80AEEB94:
    sll     s3, v0, 16                 
    sra     s3, s3, 16                 
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x0040          # s4 = 00000040
    or      s7, v0, $zero              # s7 = 00000000
lbl_80AEEBA8:
    sll     t9, s1,  2                 
    addu    t1, s5, t9                 
    lw      a1, 0x0000(t1)             # 0C184349
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    sw      t2, 0x0010($sp)            
    lw      t2, 0x01B0($sp)            
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    sw      t7, 0x0030($sp)            
    sw      t6, 0x002C($sp)            
    sw      t8, 0x0028($sp)            
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t9, 0x0034($sp)            
    sw      t1, 0x0038($sp)            
    sw      s1, 0x003C($sp)            
    sw      s3, 0x0020($sp)            
    sw      s4, 0x001C($sp)            
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    or      a2, s8, $zero              # a2 = 0601E300
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    or      s2, s4, $zero              # s2 = 00000040
    jal     func_80AEDC94              
    sw      t2, 0x0040($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0xFFFF             # s0 = 00000001
    slti    $at, s0, 0x0003            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s4, s2, 0x0040             # s4 = 00000080
    andi    s4, s4, 0xFFFF             # s4 = 00000080
    bne     $at, $zero, lbl_80AEEBA8   
    andi    s1, s1, 0xFFFF             # s1 = 00000001
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0xFFFF             # s6 = 00000001
    slti    $at, s6, 0x0003            
    addiu   v0, s7, 0x0040             # v0 = 00000040
    bne     $at, $zero, lbl_80AEEB94   
    andi    v0, v0, 0xFFFF             # v0 = 00000040
lbl_80AEEC5C:
    lui     s8, 0x0602                 # s8 = 06020000
    addiu   s8, s8, 0xE300             # s8 = 0601E300
    lw      t0, 0x007C($sp)            
    lw      t5, 0x01A0($sp)            
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t3, t5, 0x0008             # t3 = 00000008
    sw      t3, 0x01A0($sp)            
    sw      t4, 0x0000(t5)             # 00000000
    lwc1    $f4, 0x62F0(t0)            # 000062F0
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    andi    t1, t9, 0x00FF             # t1 = 00000000
    or      t2, t1, $at                # t2 = FFFFFF00
    sw      t2, 0x0004(t5)             # 00000004
    lwc1    $f8, 0x62F0(t0)            # 000062F0
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    nop
    sll     t4, t3, 16                 
    sra     t8, t4, 16                 
    beq     t8, $zero, lbl_80AEED80    
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x0300             # a3 = 06000300
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_80AEE0F8              
    sw      t0, 0x007C($sp)            
    lw      t9, 0x007C($sp)            
    cfc1    t1, $f31                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    ctc1    a3, $f31                   
    lwc1    $f16, 0x62F0(t9)           # 000062F0
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    cvt.w.s $f18, $f16                 
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_80AEED68    
    mfc1    a3, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_80AEED5C    
    nop
    mfc1    a3, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AEED74 
    or      a3, a3, $at                # a3 = 80000000
lbl_80AEED5C:
    beq     $zero, $zero, lbl_80AEED74 
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f18                   
lbl_80AEED68:
    nop
    bltz    a3, lbl_80AEED5C           
    nop
lbl_80AEED74:
    ctc1    t1, $f31                   
    jal     func_80AEE538              
    nop
lbl_80AEED80:
    jal     func_8007E63C              
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    lw      t0, 0x007C($sp)            
    lw      t2, 0x01A0($sp)            
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t1, 0xFC30                 # t1 = FC300000
    addiu   t5, t2, 0x0008             # t5 = 00000008
    sw      t5, 0x01A0($sp)            
    sw      $zero, 0x0004(t2)          # 00000004
    sw      t3, 0x0000(t2)             # 00000000
    lw      t4, 0x01A0($sp)            
    lui     t6, 0xE200                 # t6 = E2000000
    ori     t6, t6, 0x1E01             # t6 = E2001E01
    addiu   t8, t4, 0x0008             # t8 = 00000008
    sw      t8, 0x01A0($sp)            
    sw      $zero, 0x0004(t4)          # 00000004
    sw      t6, 0x0000(t4)             # 00000000
    lw      t7, 0x01A0($sp)            
    lui     t2, 0x552E                 # t2 = 552E0000
    ori     t2, t2, 0xFF7F             # t2 = 552EFF7F
    addiu   t9, t7, 0x0008             # t9 = 00000008
    sw      t9, 0x01A0($sp)            
    ori     t1, t1, 0x9661             # t1 = FC309661
    sw      t1, 0x0000(t7)             # 00000000
    sw      t2, 0x0004(t7)             # 00000004
    lwc1    $f4, 0x62F0(t0)            # 000062F0
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sll     t4, t3, 16                 
    sra     t8, t4, 16                 
    slti    $at, t8, 0x0064            
    beql    $at, $zero, lbl_80AEEE38   
    lw      t2, 0x01A0($sp)            
    lw      t6, 0x01A0($sp)            
    lui     t9, 0xE200                 # t9 = E2000000
    lui     t1, 0x0050                 # t1 = 00500000
    addiu   t7, t6, 0x0008             # t7 = E2001E09
    sw      t7, 0x01A0($sp)            
    ori     t1, t1, 0x4340             # t1 = 00504340
    ori     t9, t9, 0x001C             # t9 = E200001C
    sw      t9, 0x0000(t6)             # E2001E01
    sw      t1, 0x0004(t6)             # E2001E05
    beq     $zero, $zero, lbl_80AEEE5C 
    lw      t8, 0x01A0($sp)            
    lw      t2, 0x01A0($sp)            
lbl_80AEEE38:
    lui     t3, 0xE200                 # t3 = E2000000
    lui     t4, 0x0050                 # t4 = 00500000
    addiu   t5, t2, 0x0008             # t5 = 552EFF87
    sw      t5, 0x01A0($sp)            
    ori     t4, t4, 0x4240             # t4 = 00504240
    ori     t3, t3, 0x001C             # t3 = E200001C
    sw      t3, 0x0000(t2)             # 552EFF7F
    sw      t4, 0x0004(t2)             # 552EFF83
    lw      t8, 0x01A0($sp)            
lbl_80AEEE5C:
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t6, t8, 0x0008             # t6 = 00000010
    sw      t6, 0x01A0($sp)            
    sw      t7, 0x0000(t8)             # 00000008
    lwc1    $f8, 0x62F0(t0)            # 000062F0
    lui     t6, 0xFB00                 # t6 = FB000000
    trunc.w.s $f10, $f8                  
    mfc1    t5, $f10                   
    nop
    andi    t3, t5, 0x00FF             # t3 = 00000087
    sw      t3, 0x0004(t8)             # 0000000C
    lw      t4, 0x01A0($sp)            
    lui     t7, 0x6400                 # t7 = 64000000
    ori     t7, t7, 0x64FF             # t7 = 640064FF
    addiu   t8, t4, 0x0008             # t8 = 00504248
    sw      t8, 0x01A0($sp)            
    sw      t7, 0x0004(t4)             # 00504244
    sw      t6, 0x0000(t4)             # 00504240
    lwc1    $f16, 0x62F0(t0)           # 000062F0
    lui     s0, 0x0602                 # s0 = 06020000
    addiu   s0, s0, 0xE700             # s0 = 0601E700
    trunc.w.s $f18, $f16                 
    or      a1, s0, $zero              # a1 = 0601E700
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    addiu   a2, $zero, 0x0048          # a2 = 00000048
    mfc1    t1, $f18                   
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    addiu   t3, $zero, 0x009A          # t3 = 0000009A
    sll     t2, t1, 16                 
    sra     t5, t2, 16                 
    beq     t5, $zero, lbl_80AEF050    
    addiu   t4, $zero, 0x0049          # t4 = 00000049
    addiu   t8, $zero, 0x0048          # t8 = 00000048
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    sw      t9, 0x0024($sp)            
    sw      t7, 0x0020($sp)            
    sw      t6, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    sw      t3, 0x0010($sp)            
    jal     func_80AEDA58              
    sw      t4, 0x0014($sp)            
    lui     s1, 0x0602                 # s1 = 06020000
    addiu   s1, s1, 0xE940             # s1 = 0601E940
    addiu   t1, $zero, 0x0098          # t1 = 00000098
    addiu   t2, $zero, 0x007F          # t2 = 0000007F
    addiu   t5, $zero, 0x0060          # t5 = 00000060
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    addiu   t4, $zero, 0x0400          # t4 = 00000400
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    sw      t8, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    sw      t3, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    or      a1, s1, $zero              # a1 = 0601E940
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    addiu   a2, $zero, 0x0060          # a2 = 00000060
    jal     func_80AEDA58              
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      t6, 0x01A0($sp)            
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x01A0($sp)            
    sw      $zero, 0x0004(t6)          # 00000004
    sw      t9, 0x0000(t6)             # 00000000
    lw      v1, 0x01A0($sp)            
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x01A0($sp)            
    sw      t5, 0x0000(v1)             # 00000000
    lw      t3, 0x007C($sp)            
    lui     $at, 0xC8C8                # $at = C8C80000
    ori     $at, $at, 0x9600           # $at = C8C89600
    lwc1    $f4, 0x62F0(t3)            # 000062F0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    trunc.w.s $f6, $f4                   
    or      a1, s0, $zero              # a1 = 0601E700
    addiu   a2, $zero, 0x0048          # a2 = 00000048
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    mfc1    t7, $f6                    
    addiu   t8, $zero, 0x0099          # t8 = 00000099
    addiu   t6, $zero, 0x0048          # t6 = 00000048
    andi    t9, t7, 0x00FF             # t9 = 00000008
    or      t1, t9, $at                # t1 = C8C89608
    sw      t1, 0x0004(v1)             # 00000004
    lw      t2, 0x01A0($sp)            
    lui     t4, 0x6464                 # t4 = 64640000
    ori     t4, t4, 0x32FF             # t4 = 646432FF
    addiu   t5, t2, 0x0008             # t5 = 00000010
    sw      t5, 0x01A0($sp)            
    sw      t4, 0x0004(t2)             # 0000000C
    sw      t3, 0x0000(t2)             # 00000008
    addiu   t7, $zero, 0x0048          # t7 = 00000048
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addiu   t1, $zero, 0x0400          # t1 = 00000400
    addiu   t2, $zero, 0x0400          # t2 = 00000400
    sw      t2, 0x0024($sp)            
    sw      t1, 0x0020($sp)            
    sw      t9, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_80AEDA58              
    sw      t6, 0x0014($sp)            
    addiu   t5, $zero, 0x0097          # t5 = 00000097
    addiu   t3, $zero, 0x007E          # t3 = 0000007E
    addiu   t4, $zero, 0x0060          # t4 = 00000060
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    sw      t7, 0x0024($sp)            
    sw      t6, 0x0020($sp)            
    sw      t8, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 0601E940
    addiu   a2, $zero, 0x0060          # a2 = 00000060
    jal     func_80AEDA58              
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      t0, 0x007C($sp)            
lbl_80AEF050:
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0xA5D0             # s3 = 8011A5D0
    lbu     t9, 0x1409(s3)             # 8011B9D9
    lw      t5, 0x01B0($sp)            
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    bnel    t9, $zero, lbl_80AEF408    
    lui     s0, 0xF200                 # s0 = F2000000
    lh      t1, 0x62FC(t0)             # 000062FC
    addiu   $at, t5, 0x7FFF            # $at = 00007FFF
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x62FD($at)            # 0000E2FC
    lw      t3, 0x01A0($sp)            
    addiu   t4, t3, 0x0008             # t4 = 00000008
    sw      t4, 0x01A0($sp)            
    sw      $zero, 0x0004(t3)          # 00000004
    sw      t8, 0x0000(t3)             # 00000000
    lw      t6, 0x01A0($sp)            
    lui     t9, 0xE300                 # t9 = E3000000
    ori     t9, t9, 0x0A01             # t9 = E3000A01
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x01A0($sp)            
    lui     t1, 0x0010                 # t1 = 00100000
    sw      t1, 0x0004(t6)             # 00000004
    sw      t9, 0x0000(t6)             # 00000000
    lwc1    $f8, 0x62F4(t0)            # 000062F4
    lw      t8, 0x01A0($sp)            
    lw      t1, 0x01A0($sp)            
    trunc.w.s $f10, $f8                  
    lui     t7, 0xE200                 # t7 = E2000000
    ori     t7, t7, 0x001C             # t7 = E200001C
    lui     t9, 0x0C18                 # t9 = 0C180000
    mfc1    t5, $f10                   
    addiu   t6, t8, 0x0008             # t6 = E7000008
    addiu   t2, t1, 0x0008             # t2 = 00100008
    sll     t3, t5, 16                 
    sra     t4, t3, 16                 
    slti    $at, t4, 0x0064            
    beq     $at, $zero, lbl_80AEF108   
    lui     t5, 0xE200                 # t5 = E2000000
    sw      t6, 0x01A0($sp)            
    ori     t9, t9, 0x4340             # t9 = 0C184340
    sw      t9, 0x0004(t8)             # E7000004
    sw      t7, 0x0000(t8)             # E7000000
    beq     $zero, $zero, lbl_80AEF124 
    lw      t4, 0x01A0($sp)            
lbl_80AEF108:
    sw      t2, 0x01A0($sp)            
    lui     t3, 0x0C18                 # t3 = 0C180000
    ori     t3, t3, 0x4240             # t3 = 0C184240
    ori     t5, t5, 0x001C             # t5 = E200001C
    sw      t5, 0x0000(t1)             # 00100000
    sw      t3, 0x0004(t1)             # 00100004
    lw      t4, 0x01A0($sp)            
lbl_80AEF124:
    lui     t6, 0xFC27                 # t6 = FC270000
    lui     t7, 0x350C                 # t7 = 350C0000
    addiu   t8, t4, 0x0008             # t8 = 00000010
    sw      t8, 0x01A0($sp)            
    ori     t7, t7, 0xF37F             # t7 = 350CF37F
    ori     t6, t6, 0x7E60             # t6 = FC277E60
    sw      t6, 0x0000(t4)             # 00000008
    sw      t7, 0x0004(t4)             # 0000000C
    lw      t9, 0x01A0($sp)            
    lui     t2, 0xFA00                 # t2 = FA000000
    ori     t2, t2, 0x0080             # t2 = FA000080
    addiu   t1, t9, 0x0008             # t1 = 0C184348
    sw      t1, 0x01A0($sp)            
    sw      t2, 0x0000(t9)             # 0C184340
    lwc1    $f16, 0x62F4(t0)           # 000062F4
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    lui     t2, 0xFB00                 # t2 = FB000000
    trunc.w.s $f18, $f16                 
    lui     a3, 0xFD90                 # a3 = FD900000
    lui     s1, 0xE600                 # s1 = E6000000
    lui     s2, 0xF300                 # s2 = F3000000
    mfc1    t8, $f18                   
    nop
    andi    t6, t8, 0x00FF             # t6 = 00000010
    or      t7, t6, $at                # t7 = FFFFAA10
    sw      t7, 0x0004(t9)             # 0C184344
    lw      t9, 0x01A0($sp)            
    lui     t5, 0xFF96                 # t5 = FF960000
    ori     t5, t5, 0x00FF             # t5 = FF9600FF
    addiu   t1, t9, 0x0008             # t1 = 0C184348
    sw      t1, 0x01A0($sp)            
    sw      t5, 0x0004(t9)             # 0C184344
    sw      t2, 0x0000(t9)             # 0C184340
    lwc1    $f4, 0x62F4(t0)            # 000062F4
    lw      t7, 0x01A0($sp)            
    lui     t1, 0x0602                 # t1 = 06020000
    trunc.w.s $f6, $f4                   
    addiu   t1, t1, 0xEC40             # t1 = 0601EC40
    addiu   t9, t7, 0x0008             # t9 = FFFFAA18
    mfc1    t4, $f6                    
    nop
    sll     t8, t4, 16                 
    sra     t6, t8, 16                 
    beql    t6, $zero, lbl_80AEF408    
    lui     s0, 0xF200                 # s0 = F2000000
    sw      t9, 0x01A0($sp)            
    sw      t1, 0x0004(t7)             # FFFFAA14
    sw      a3, 0x0000(t7)             # FFFFAA10
    lw      t2, 0x01A0($sp)            
    lui     t3, 0xF590                 # t3 = F5900000
    lui     t4, 0x0700                 # t4 = 07000000
    addiu   t5, t2, 0x0008             # t5 = FB000008
    sw      t5, 0x01A0($sp)            
    sw      t4, 0x0004(t2)             # FB000004
    sw      t3, 0x0000(t2)             # FB000000
    lw      t8, 0x01A0($sp)            
    addiu   t6, t8, 0x0008             # t6 = 00000018
    sw      t6, 0x01A0($sp)            
    sw      $zero, 0x0004(t8)          # 00000014
    sw      s1, 0x0000(t8)             # 00000010
    lw      t7, 0x01A0($sp)            
    lui     t1, 0x073F                 # t1 = 073F0000
    ori     t1, t1, 0xF080             # t1 = 073FF080
    addiu   t9, t7, 0x0008             # t9 = FFFFAA18
    sw      t9, 0x01A0($sp)            
    sw      t1, 0x0004(t7)             # FFFFAA14
    sw      s2, 0x0000(t7)             # FFFFAA10
    lw      t2, 0x01A0($sp)            
    lui     t3, 0xE700                 # t3 = E7000000
    lui     s0, 0xF200                 # s0 = F2000000
    addiu   t5, t2, 0x0008             # t5 = FB000008
    sw      t5, 0x01A0($sp)            
    sw      $zero, 0x0004(t2)          # FB000004
    sw      t3, 0x0000(t2)             # FB000000
    lw      t4, 0x01A0($sp)            
    lui     t6, 0xF588                 # t6 = F5880000
    ori     t6, t6, 0x2000             # t6 = F5882000
    addiu   t8, t4, 0x0008             # t8 = 07000008
    sw      t8, 0x01A0($sp)            
    sw      $zero, 0x0004(t4)          # 07000004
    sw      t6, 0x0000(t4)             # 07000000
    lw      t7, 0x01A0($sp)            
    lui     t1, 0x001F                 # t1 = 001F0000
    ori     t1, t1, 0xC03C             # t1 = 001FC03C
    addiu   t9, t7, 0x0008             # t9 = FFFFAA18
    sw      t9, 0x01A0($sp)            
    sw      t1, 0x0004(t7)             # FFFFAA14
    sw      s0, 0x0000(t7)             # FFFFAA10
    lw      t2, 0x01A0($sp)            
    lui     t8, 0xF590                 # t8 = F5900000
    ori     t8, t8, 0x0100             # t8 = F5900100
    addiu   t5, t2, 0x0008             # t5 = FB000008
    sw      t5, 0x01A0($sp)            
    sw      s8, 0x0004(t2)             # FB000004
    sw      a3, 0x0000(t2)             # FB000000
    lw      t3, 0x01A0($sp)            
    lui     t6, 0x0701                 # t6 = 07010000
    ori     t6, t6, 0x4452             # t6 = 07014452
    addiu   t4, t3, 0x0008             # t4 = E7000008
    sw      t4, 0x01A0($sp)            
    sw      t6, 0x0004(t3)             # E7000004
    sw      t8, 0x0000(t3)             # E7000000
    lw      t7, 0x01A0($sp)            
    addiu   t9, t7, 0x0008             # t9 = FFFFAA18
    sw      t9, 0x01A0($sp)            
    sw      $zero, 0x0004(t7)          # FFFFAA14
    sw      s1, 0x0000(t7)             # FFFFAA10
    lw      a3, 0x007C($sp)            
    lw      t1, 0x01A0($sp)            
    lui     t5, 0x071F                 # t5 = 071F0000
    ori     t5, t5, 0xF200             # t5 = 071FF200
    addiu   t2, t1, 0x0008             # t2 = 001FC044
    sw      t2, 0x01A0($sp)            
    sw      t5, 0x0004(t1)             # 001FC040
    sw      s2, 0x0000(t1)             # 001FC03C
    lw      t3, 0x01A0($sp)            
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t9, 0xF588                 # t9 = F5880000
    addiu   t4, t3, 0x0008             # t4 = E7000008
    sw      t4, 0x01A0($sp)            
    sw      $zero, 0x0004(t3)          # E7000004
    sw      t8, 0x0000(t3)             # E7000000
    lw      t6, 0x01A0($sp)            
    lui     t1, 0x0101                 # t1 = 01010000
    ori     t1, t1, 0x4452             # t1 = 01014452
    addiu   t7, t6, 0x0008             # t7 = 0701445A
    sw      t7, 0x01A0($sp)            
    ori     t9, t9, 0x0900             # t9 = F5880900
    sw      t9, 0x0000(t6)             # 07014452
    sw      t1, 0x0004(t6)             # 07014456
    lw      t2, 0x01A0($sp)            
    lui     t3, 0x0107                 # t3 = 01070000
    ori     t3, t3, 0xC07C             # t3 = 0107C07C
    addiu   t5, t2, 0x0008             # t5 = 001FC04C
    sw      t5, 0x01A0($sp)            
    sw      t3, 0x0004(t2)             # 001FC048
    sw      s0, 0x0000(t2)             # 001FC044
    lw      a2, 0x01A0($sp)            
    lui     $at, 0x0100                # $at = 01000000
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x01A0($sp)            
    lh      t7, 0x62FC(a3)             # FD9062FC
    lh      t3, 0x62FE(a3)             # FD9062FE
    andi    t9, t7, 0x007F             # t9 = 0000005A
    sll     t1, t9, 12                 
    or      t2, t1, s0                 # t2 = F3014452
    andi    t4, t3, 0x007F             # t4 = 0000007C
    or      t8, t2, t4                 # t8 = F301447E
    sw      t8, 0x0000(a2)             # 00000000
    lh      t6, 0x62FC(a3)             # FD9062FC
    lh      t2, 0x62FE(a3)             # FD9062FE
    andi    t7, t6, 0x007F             # t7 = 00000052
    addiu   t9, t7, 0x007C             # t9 = 000000CE
    andi    t1, t9, 0x0FFF             # t1 = 000000CE
    andi    t4, t2, 0x007F             # t4 = 00000052
    addiu   t8, t4, 0x007C             # t8 = 000000CE
    sll     t5, t1, 12                 
    or      t3, t5, $at                # t3 = 011FC04C
    andi    t6, t8, 0x0FFF             # t6 = 000000CE
    or      t7, t3, t6                 # t7 = 011FC0CE
    sw      t7, 0x0004(a2)             # 00000004
    lw      t9, 0x01A0($sp)            
    lui     t5, 0xE43A                 # t5 = E43A0000
    lui     t2, 0x001A                 # t2 = 001A0000
    addiu   t1, t9, 0x0008             # t1 = 000000D6
    sw      t1, 0x01A0($sp)            
    ori     t2, t2, 0x8240             # t2 = 001A8240
    ori     t5, t5, 0x8280             # t5 = E43A8280
    sw      t5, 0x0000(t9)             # 000000CE
    sw      t2, 0x0004(t9)             # 000000D2
    lw      t4, 0x01A0($sp)            
    lui     t3, 0xE100                 # t3 = E1000000
    lui     t9, 0xF100                 # t9 = F1000000
    addiu   t8, t4, 0x0008             # t8 = 0000005A
    sw      t8, 0x01A0($sp)            
    sw      $zero, 0x0004(t4)          # 00000056
    sw      t3, 0x0000(t4)             # 00000052
    lw      t6, 0x01A0($sp)            
    lui     t1, 0x0400                 # t1 = 04000000
    ori     t1, t1, 0x0400             # t1 = 04000400
    addiu   t7, t6, 0x0008             # t7 = 000000D6
    sw      t7, 0x01A0($sp)            
    sw      t1, 0x0004(t6)             # 000000D2
    sw      t9, 0x0000(t6)             # 000000CE
    lui     s0, 0xF200                 # s0 = F2000000
lbl_80AEF408:
    lui     s1, 0xE600                 # s1 = E6000000
    jal     func_8007E63C              
    lui     s2, 0xF300                 # s2 = F3000000
    lw      t5, 0x01A0($sp)            
    lui     t4, 0xE200                 # t4 = E2000000
    ori     t4, t4, 0x1E01             # t4 = E2001E01
    addiu   t2, t5, 0x0008             # t2 = 00000008
    sw      t2, 0x01A0($sp)            
    sw      $zero, 0x0004(t5)          # 00000004
    sw      t4, 0x0000(t5)             # 00000000
    lw      t8, 0x01A0($sp)            
    lui     t6, 0xFC11                 # t6 = FC110000
    lui     t7, 0xFF2F                 # t7 = FF2F0000
    addiu   t3, t8, 0x0008             # t3 = 00000008
    sw      t3, 0x01A0($sp)            
    ori     t7, t7, 0xFFFF             # t7 = FF2FFFFF
    ori     t6, t6, 0x9623             # t6 = FC119623
    sw      t6, 0x0000(t8)             # 00000000
    sw      t7, 0x0004(t8)             # 00000004
    lw      a1, 0x01A0($sp)            
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t1, a1, 0x0008             # t1 = 00000008
    sw      t1, 0x01A0($sp)            
    sw      t5, 0x0000(a1)             # 00000000
    lw      t2, 0x007C($sp)            
    lwc1    $f8, 0x62F8(t2)            # 00006300
    trunc.w.s $f10, $f8                  
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     t8, v0, 24                 
    sll     t3, v0, 16                 
    or      t6, t8, t3                 # t6 = 00000008
    sll     t7, v0,  8                 
    or      t9, t6, t7                 # t9 = FF2FFFFF
    or      t1, t9, v0                 # t1 = FF2FFFFF
    sw      t1, 0x0004(a1)             # 00000004
    lw      t5, 0x007C($sp)            
    lwc1    $f16, 0x62F8(t5)           # FA0062F8
    lw      t6, 0x01A0($sp)            
    lui     t1, 0x0602                 # t1 = 06020000
    trunc.w.s $f18, $f16                 
    addiu   t1, t1, 0x9300             # t1 = 06019300
    lui     t9, 0xFD70                 # t9 = FD700000
    addiu   t7, t6, 0x0008             # t7 = 00000010
    mfc1    t4, $f18                   
    nop
    sll     t8, t4, 16                 
    sra     t3, t8, 16                 
    beq     t3, $zero, lbl_80AEF5E8    
    lui     t4, 0xF570                 # t4 = F5700000
    sw      t7, 0x01A0($sp)            
    sw      t1, 0x0004(t6)             # 0000000C
    sw      t9, 0x0000(t6)             # 00000008
    lw      t5, 0x01A0($sp)            
    lui     t8, 0x0708                 # t8 = 07080000
    ori     t8, t8, 0x0200             # t8 = 07080200
    addiu   t2, t5, 0x0008             # t2 = FA000008
    sw      t2, 0x01A0($sp)            
    sw      t8, 0x0004(t5)             # FA000004
    sw      t4, 0x0000(t5)             # FA000000
    lw      t3, 0x01A0($sp)            
    addiu   t6, t3, 0x0008             # t6 = 00000010
    sw      t6, 0x01A0($sp)            
    sw      $zero, 0x0004(t3)          # 0000000C
    sw      s1, 0x0000(t3)             # 00000008
    lw      t7, 0x01A0($sp)            
    lui     t1, 0x073F                 # t1 = 073F0000
    ori     t1, t1, 0xF080             # t1 = 073FF080
    addiu   t9, t7, 0x0008             # t9 = 00000018
    sw      t9, 0x01A0($sp)            
    sw      t1, 0x0004(t7)             # 00000014
    sw      s2, 0x0000(t7)             # 00000010
    lw      t5, 0x01A0($sp)            
    lui     t4, 0xE700                 # t4 = E7000000
    lui     t6, 0xF568                 # t6 = F5680000
    addiu   t2, t5, 0x0008             # t2 = FA000008
    sw      t2, 0x01A0($sp)            
    sw      $zero, 0x0004(t5)          # FA000004
    sw      t4, 0x0000(t5)             # FA000000
    lw      t8, 0x01A0($sp)            
    lui     t7, 0x0008                 # t7 = 00080000
    ori     t7, t7, 0x0200             # t7 = 00080200
    addiu   t3, t8, 0x0008             # t3 = 07080208
    sw      t3, 0x01A0($sp)            
    ori     t6, t6, 0x2000             # t6 = F5682000
    sw      t6, 0x0000(t8)             # 07080200
    sw      t7, 0x0004(t8)             # 07080204
    lw      t9, 0x01A0($sp)            
    lui     t5, 0x001F                 # t5 = 001F0000
    ori     t5, t5, 0xC03C             # t5 = 001FC03C
    addiu   t1, t9, 0x0008             # t1 = 00000020
    sw      t1, 0x01A0($sp)            
    sw      t5, 0x0004(t9)             # 0000001C
    sw      s0, 0x0000(t9)             # 00000018
    lw      t2, 0x01A0($sp)            
    lui     t8, 0xE437                 # t8 = E4370000
    lui     t3, 0x0017                 # t3 = 00170000
    addiu   t4, t2, 0x0008             # t4 = FA000010
    sw      t4, 0x01A0($sp)            
    ori     t3, t3, 0x8318             # t3 = 00178318
    ori     t8, t8, 0x8358             # t8 = E4378358
    sw      t8, 0x0000(t2)             # FA000008
    sw      t3, 0x0004(t2)             # FA00000C
    lw      t6, 0x01A0($sp)            
    lui     t9, 0xE100                 # t9 = E1000000
    lui     t2, 0xF100                 # t2 = F1000000
    addiu   t7, t6, 0x0008             # t7 = F5682008
    sw      t7, 0x01A0($sp)            
    sw      $zero, 0x0004(t6)          # F5682004
    sw      t9, 0x0000(t6)             # F5682000
    lw      t1, 0x01A0($sp)            
    lui     t4, 0x0400                 # t4 = 04000000
    ori     t4, t4, 0x0400             # t4 = 04000400
    addiu   t5, t1, 0x0008             # t5 = 00000028
    sw      t5, 0x01A0($sp)            
    sw      t4, 0x0004(t1)             # 00000024
    sw      t2, 0x0000(t1)             # 00000020
lbl_80AEF5E8:
    lw      t8, 0x1354(s3)             # 8011B924
    ori     $at, $zero, 0xFEDC         # $at = 0000FEDC
    lui     a1, %hi(var_80AEFB84)      # a1 = 80AF0000
    bne     t8, $at, lbl_80AEF7D4      
    lw      t6, 0x007C($sp)            
    lh      a1, %lo(var_80AEFB84)(a1)  
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0xBA00             # s3 = 8011BA00
    addu    $at, a1, $zero             
    sll     a1, a1,  2                 
    addu    a1, a1, $at                
    sll     a1, a1,  1                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    slti    $at, a1, 0x00FF            
    bne     $at, $zero, lbl_80AEF630   
    lw      t3, 0x01A0($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
lbl_80AEF630:
    addiu   t6, t3, 0x0008             # t6 = 00178320
    sw      t6, 0x01A0($sp)            
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(t3)             # 00178318
    sw      $zero, 0x0004(t3)          # 0017831C
    lw      t9, 0x01A0($sp)            
    lui     t5, 0xFCFF                 # t5 = FCFF0000
    lui     t2, 0xFF2D                 # t2 = FF2D0000
    addiu   t1, t9, 0x0008             # t1 = E1000008
    sw      t1, 0x01A0($sp)            
    ori     t2, t2, 0xFEFF             # t2 = FF2DFEFF
    ori     t5, t5, 0x97FF             # t5 = FCFF97FF
    sw      t5, 0x0000(t9)             # E1000000
    sw      t2, 0x0004(t9)             # E1000004
    lw      t4, 0x01A0($sp)            
    lui     t3, 0xFA00                 # t3 = FA000000
    andi    a2, a1, 0x00FF             # a2 = 000000FF
    addiu   t8, t4, 0x0008             # t8 = 04000408
    sw      t8, 0x01A0($sp)            
    sw      a2, 0x0004(t4)             # 04000404
    sw      t3, 0x0000(t4)             # 04000400
    lw      s0, 0x0000(s3)             # 8011BA00
    lw      s5, 0x01B0($sp)            
    lui     $at, %hi(var_80AEFB7C)     # $at = 80AF0000
    lh      s4, 0x0F3A(s0)             # F2000F3A
    lui     s7, %hi(var_80AEFB88)      # s7 = 80AF0000
    addiu   s7, s7, %lo(var_80AEFB88)  # s7 = 80AEFB88
    addiu   s4, s4, 0x0001             # s4 = 00000081
    andi    s4, s4, 0xFFFF             # s4 = 00000081
    sw      a2, 0x007C($sp)            
    sh      a1, %lo(var_80AEFB7C)($at) 
    or      s6, $zero, $zero           # s6 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   s5, s5, 0x0140             # s5 = 80AEFCE0
lbl_80AEF6BC:
    addu    t6, s7, s6                 
    lbu     t7, 0x0000(t6)             # 00178320
    lh      a3, 0x04A8(s0)             # F20004A8
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    sll     t9, t7,  7                 
    addu    a1, t9, s5                 
    addiu   a1, a1, 0x3C88             # a1 = 00003D87
    or      s2, s4, $zero              # s2 = 00000081
    or      a2, s4, $zero              # a2 = 00000081
    jal     func_80AEE788              
    addiu   a3, a3, 0x00AC             # a3 = 000000AC
    lw      s0, 0x0000(s3)             # 8011BA00
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0xFFFF             # s6 = 00000001
    lh      t1, 0x0F3E(s0)             # F2000F3E
    slti    $at, s6, 0x000C            
    addu    s4, s2, t1                 
    bne     s8, s1, lbl_80AEF714       
    andi    s4, s4, 0xFFFF             # s4 = 00000081
    lh      t5, 0x0F42(s0)             # F2000F42
    addu    s4, s4, t5                 
    andi    s4, s4, 0xFFFF             # s4 = 00000081
lbl_80AEF714:
    bne     $at, $zero, lbl_80AEF6BC   
    or      s1, s6, $zero              # s1 = 00000001
    lw      t2, 0x01A0($sp)            
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t4, t2, 0x0008             # t4 = 00000008
    sw      t4, 0x01A0($sp)            
    sw      $zero, 0x0004(t2)          # 00000004
    sw      t8, 0x0000(t2)             # 00000000
    lw      t3, 0x01A0($sp)            
    addiu   t6, t3, 0x0008             # t6 = 00000008
    sw      t6, 0x01A0($sp)            
    sw      t7, 0x0000(t3)             # 00000000
    lw      t9, 0x007C($sp)            
    lui     $at, 0x64FF                # $at = 64FF0000
    ori     $at, $at, 0xFF00           # $at = 64FFFF00
    or      t1, t9, $at                # t1 = 64FFFF00
    sw      t1, 0x0004(t3)             # 00000004
    lw      s0, 0x0000(s3)             # 8011BA00
    or      s6, $zero, $zero           # s6 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    lhu     s4, 0x0F3A(s0)             # F2000F3A
lbl_80AEF76C:
    addu    t5, s7, s6                 
    lbu     t2, 0x0000(t5)             # 00000000
    lh      a3, 0x04A8(s0)             # F20004A8
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    sll     t4, t2,  7                 
    addu    a1, t4, s5                 
    addiu   a1, a1, 0x3C88             # a1 = 00003C88
    or      s2, s4, $zero              # s2 = 00000081
    or      a2, s4, $zero              # a2 = 00000081
    jal     func_80AEE788              
    addiu   a3, a3, 0x00AB             # a3 = 000000AB
    lw      s0, 0x0000(s3)             # 8011BA00
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0xFFFF             # s6 = 00000001
    lh      t8, 0x0F3E(s0)             # F2000F3E
    slti    $at, s6, 0x000C            
    addu    s4, s2, t8                 
    bne     s8, s1, lbl_80AEF7C4       
    andi    s4, s4, 0xFFFF             # s4 = 00000081
    lh      t3, 0x0F42(s0)             # F2000F42
    addu    s4, s4, t3                 
    andi    s4, s4, 0xFFFF             # s4 = 00000081
lbl_80AEF7C4:
    bne     $at, $zero, lbl_80AEF76C   
    or      s1, s6, $zero              # s1 = 00000001
    beq     $zero, $zero, lbl_80AEF9E0 
    nop
lbl_80AEF7D4:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x62F8(t6)            # 000062F8
    lw      t7, 0x01A0($sp)            
    lui     s3, 0x8012                 # s3 = 80120000
    c.le.s  $f6, $f4                   
    lui     a1, %hi(var_80AEFB84)      # a1 = 80AF0000
    addiu   s3, s3, 0xBA00             # s3 = 8011BA00
    lui     t1, 0xE700                 # t1 = E7000000
    bc1f    lbl_80AEF9E0               
    addiu   t9, t7, 0x0008             # t9 = 00000008
    lh      a1, %lo(var_80AEFB84)(a1)  
    lui     t4, 0xFCFF                 # t4 = FCFF0000
    ori     t4, t4, 0x97FF             # t4 = FCFF97FF
    addu    $at, a1, $zero             
    sll     a1, a1,  2                 
    addu    a1, a1, $at                
    sll     a1, a1,  1                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    slti    $at, a1, 0x00FF            
    bne     $at, $zero, lbl_80AEF834   
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
lbl_80AEF834:
    sw      t9, 0x01A0($sp)            
    sw      $zero, 0x0004(t7)          # 00000004
    sw      t1, 0x0000(t7)             # 00000000
    lw      t5, 0x01A0($sp)            
    lui     t8, 0xFF2D                 # t8 = FF2D0000
    ori     t8, t8, 0xFEFF             # t8 = FF2DFEFF
    addiu   t2, t5, 0x0008             # t2 = 00000008
    sw      t2, 0x01A0($sp)            
    sw      t8, 0x0004(t5)             # 00000004
    sw      t4, 0x0000(t5)             # 00000000
    lw      t3, 0x01A0($sp)            
    lui     t7, 0xFA00                 # t7 = FA000000
    andi    t9, a1, 0x00FF             # t9 = 000000FF
    addiu   t6, t3, 0x0008             # t6 = 00000008
    sw      t6, 0x01A0($sp)            
    sw      t7, 0x0000(t3)             # 00000000
    sw      t9, 0x007C($sp)            
    sw      t9, 0x0004(t3)             # 00000004
    lw      s0, 0x0000(s3)             # 8011BA00
    lw      s5, 0x01B0($sp)            
    lui     $at, %hi(var_80AEFB7C)     # $at = 80AF0000
    lh      s4, 0x04A2(s0)             # F20004A2
    lui     s7, %hi(var_80AEFB94)      # s7 = 80AF0000
    addiu   s7, s7, %lo(var_80AEFB94)  # s7 = 80AEFB94
    addiu   s4, s4, 0x0001             # s4 = 00000082
    andi    s4, s4, 0xFFFF             # s4 = 00000082
    sh      a1, %lo(var_80AEFB7C)($at) 
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s5, s5, 0x0140             # s5 = 80AEFE20
lbl_80AEF8AC:
    addu    t5, s7, s6                 
    lbu     t2, 0x0000(t5)             # 00000000
    lh      a3, 0x04A8(s0)             # F20004A8
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    sll     t4, t2,  7                 
    addu    a1, t4, s5                 
    addiu   a1, a1, 0x3C88             # a1 = 00003D87
    or      s2, s4, $zero              # s2 = 00000082
    or      a2, s4, $zero              # a2 = 00000082
    jal     func_80AEE788              
    addiu   a3, a3, 0x00AC             # a3 = 000000AC
    lw      s0, 0x0000(s3)             # 8011BA00
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0xFFFF             # s6 = 00000001
    lh      t8, 0x04A4(s0)             # F20004A4
    slti    $at, s6, 0x000A            
    addu    s4, s2, t8                 
    bne     s8, s1, lbl_80AEF904       
    andi    s4, s4, 0xFFFF             # s4 = 00000082
    lh      t3, 0x04A6(s0)             # F20004A6
    addu    s4, s4, t3                 
    andi    s4, s4, 0xFFFF             # s4 = 00000082
lbl_80AEF904:
    bne     $at, $zero, lbl_80AEF8AC   
    or      s1, s6, $zero              # s1 = 00000001
    lw      t6, 0x01A0($sp)            
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x01A0($sp)            
    sw      $zero, 0x0004(t6)          # 00000004
    sw      t9, 0x0000(t6)             # 00000000
    lw      v1, 0x01A0($sp)            
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x01A0($sp)            
    sw      t2, 0x0000(v1)             # 00000000
    lw      s0, 0x0000(s3)             # 8011BA00
    lw      t6, 0x007C($sp)            
    lh      t4, 0x04A0(s0)             # F20004A0
    lh      t7, 0x049C(s0)             # F200049C
    lh      t5, 0x049E(s0)             # F200049E
    andi    t8, t4, 0x00FF             # t8 = 00000000
    sll     t3, t8,  8                 
    sll     t9, t7, 24                 
    andi    t2, t5, 0x00FF             # t2 = 00000008
    sll     t4, t2, 16                 
    or      t1, t3, t9                 # t1 = E7000000
    or      t8, t1, t4                 # t8 = E7000000
    or      t7, t8, t6                 # t7 = E7000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      s0, 0x0000(s3)             # 8011BA00
    or      s6, $zero, $zero           # s6 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    lhu     s4, 0x04A2(s0)             # F20004A2
lbl_80AEF980:
    addu    t3, s7, s6                 
    lbu     t9, 0x0000(t3)             # 00000000
    lh      a3, 0x04A8(s0)             # F20004A8
    addiu   a0, $sp, 0x01A0            # a0 = FFFFFFF0
    sll     t5, t9,  7                 
    addu    a1, t5, s5                 
    addiu   a1, a1, 0x3C88             # a1 = 00003C88
    or      s2, s4, $zero              # s2 = 00000082
    or      a2, s4, $zero              # a2 = 00000082
    jal     func_80AEE788              
    addiu   a3, a3, 0x00AB             # a3 = 000000AB
    lw      s0, 0x0000(s3)             # 8011BA00
    addiu   s6, s6, 0x0001             # s6 = 00000001
    andi    s6, s6, 0xFFFF             # s6 = 00000001
    lh      t2, 0x04A4(s0)             # F20004A4
    slti    $at, s6, 0x000A            
    addu    s4, s2, t2                 
    bne     s8, s1, lbl_80AEF9D8       
    andi    s4, s4, 0xFFFF             # s4 = 00000082
    lh      t1, 0x04A6(s0)             # F20004A6
    addu    s4, s4, t1                 
    andi    s4, s4, 0xFFFF             # s4 = 00000082
lbl_80AEF9D8:
    bne     $at, $zero, lbl_80AEF980   
    or      s1, s6, $zero              # s1 = 00000001
lbl_80AEF9E0:
    lui     t4, %hi(var_80AEFB80)      # t4 = 80AF0000
    lh      t4, %lo(var_80AEFB80)(t4)  
    lui     t8, %hi(var_80AEFB84)      # t8 = 80AF0000
    lui     t9, %hi(var_80AEFB84)      # t9 = 80AF0000
    beq     t4, $zero, lbl_80AEFA20    
    nop
    lh      t8, %lo(var_80AEFB84)(t8)  
    lui     $at, %hi(var_80AEFB84)     # $at = 80AF0000
    addiu   t6, t8, 0xFFFF             # t6 = 80AEFFFF
    sll     t7, t6, 16                 
    sra     t3, t7, 16                 
    bne     t3, $zero, lbl_80AEFA4C    
    sh      t6, %lo(var_80AEFB84)($at) 
    lui     $at, %hi(var_80AEFB80)     # $at = 80AF0000
    beq     $zero, $zero, lbl_80AEFA4C 
    sh      $zero, %lo(var_80AEFB80)($at) 
lbl_80AEFA20:
    lh      t9, %lo(var_80AEFB84)(t9)  
    lui     $at, %hi(var_80AEFB84)     # $at = 80AF0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t9, 0x0001             # t5 = 80AF0001
    sll     t2, t5, 16                 
    sra     t1, t2, 16                 
    sh      t5, %lo(var_80AEFB84)($at) 
    slti    $at, t1, 0x001A            
    bne     $at, $zero, lbl_80AEFA4C   
    lui     $at, %hi(var_80AEFB80)     # $at = 80AF0000
    sh      t4, %lo(var_80AEFB80)($at) 
lbl_80AEFA4C:
    lw      t8, 0x01A0($sp)            
    lw      t6, 0x01B8($sp)            
    sw      t8, 0x0000(t6)             # 80AEFFFF
    lw      $ra, 0x0074($sp)           
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
    addiu   $sp, $sp, 0x01B0           # $sp = 00000000


func_80AEFA88:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lw      s0, 0x0000(t6)             # 00000000
    lw      a0, 0x02C0(s0)             # 000002C0
    jal     func_800A1AA0              
    sw      a0, 0x0034($sp)            
    sw      v0, 0x0038($sp)            
    lw      a3, 0x02B0(s0)             # 000002B0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    addiu   t7, a3, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0000(a3)             # 00000000
    lw      t9, 0x0038($sp)            
    sw      t9, 0x0004(a3)             # 00000004
    lw      a0, 0x0040($sp)            
    jal     func_80AEE94C              
    lw      a1, 0x0044($sp)            
    lw      t0, 0x0038($sp)            
    lui     t2, 0xDF00                 # t2 = DF000000
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x0038($sp)            
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      a0, 0x0034($sp)            
    jal     func_800A1AAC              
    lw      a1, 0x0038($sp)            
    lw      t3, 0x0038($sp)            
    sw      t3, 0x02C0(s0)             # 000002C0
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    nop

.section .data

var_80AEFB20: .word 0x01710600, 0x00000030, 0x014A0000, 0x0000E318
.word func_80AECFB8
.word func_80AED240
.word func_80AED37C
.word func_80AEFA88
var_80AEFB40: .word 0x00000000
var_80AEFB44: .word \
0x00000800, 0x00000400, 0x00000200, 0x00000100, \
0x00001000, 0x00004000, 0x00000004, 0x00000020, \
0x00000001, 0x00000002, 0x00008000, 0x00000008, \
0x00000010, 0x00002000
var_80AEFB7C: .word 0x00000000
var_80AEFB80: .word 0x00000000
var_80AEFB84: .word 0x00000000
var_80AEFB88: .word 0xB8B9ADB9, 0xB8BEBCB9, 0xB6B6AFBC
var_80AEFB94: .word 0xBABCAFBD, 0xBDBDBEAB, 0xBCBE0000
var_80AEFBA0: .word \
0x06019B00, 0x0601A300, 0x0601AB00, 0x0601B300, \
0x0601BB00, 0x0601C300, 0x0601CB00, 0x0601D300, \
0x0601DB00, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AEFBD0: .word 0x3F4CCCCD
var_80AEFBD4: .word 0x4019999A, 0x00000000, 0x00000000

.bss

var_80AEFD00: .space 0x2000
