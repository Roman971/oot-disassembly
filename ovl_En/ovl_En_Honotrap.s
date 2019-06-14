#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A765E0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x003C($sp)            
    addiu   s1, s0, 0x0140             # s1 = 00000140
    or      a1, s1, $zero              # a1 = 00000140
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x0024($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s1, $zero              # a2 = 00000140
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 00000140
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s1, $zero              # a2 = 00000140
    lbu     t6, 0x0230(s0)             # 00000230
    ori     t8, t6, 0x0001             # t8 = 00000001
    ori     t0, t8, 0x0002             # t0 = 00000003
    sb      t8, 0x0230(s0)             # 00000230
    sb      t0, 0x0230(s0)             # 00000230
    ori     t1, t0, 0x0004             # t1 = 00000007
    sb      t1, 0x0230(s0)             # 00000230
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A76674:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a1, $zero              # a0 = 00000000
    sw      a1, 0x001C($sp)            
    jal     func_800A5510              
    sw      a2, 0x0018($sp)            
    lui     $at, %hi(var_80A779A0)     # $at = 80A70000
    lwc1    $f4, %lo(var_80A779A0)($at) 
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    c.lt.s  $f0, $f4                   
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_80A766D0               
    mtc1    $at, $f8                   # $f8 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f0, 0x0004(a2)            # 00000004
    swc1    $f0, 0x0000(a2)            # 00000000
    beq     $zero, $zero, lbl_80A766F8 
    swc1    $f6, 0x0008(a2)            # 00000008
    mtc1    $at, $f8                   # $f8 = 1.00
lbl_80A766D0:
    lwc1    $f10, 0x0000(a1)           # 00000000
    div.s   $f2, $f8, $f0              
    mul.s   $f16, $f10, $f2            
    swc1    $f16, 0x0000(a2)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    mul.s   $f4, $f18, $f2             
    swc1    $f4, 0x0004(a2)            # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    mul.s   $f8, $f6, $f2              
    swc1    $f8, 0x0008(a2)            # 00000008
lbl_80A766F8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76708:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s8, 0x0050($sp)            
    sw      s0, 0x0030($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s8, $zero              # a0 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x0016(s8)             # 00000016
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0016(s8)             # 00000016
    addiu   s7, s8, 0x0140             # s7 = 00000140
    mov.s   $f20, $f0                  
    or      a1, s7, $zero              # a1 = 00000140
    jal     func_8004B064              
    or      a0, s0, $zero              # a0 = 00000000
    lui     s4, %hi(var_80A77928)      # s4 = 80A70000
    addiu   s4, s4, %lo(var_80A77928)  # s4 = 80A77928
    addiu   t6, s8, 0x0160             # t6 = 00000160
    sw      t6, 0x0010($sp)            
    or      a3, s4, $zero              # a3 = 80A77928
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s7, $zero              # a1 = 00000140
    jal     func_8004B3EC              
    or      a2, s8, $zero              # a2 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, s8, 0x0024             # s3 = 00000024
    addiu   s6, $sp, 0x0070            # s6 = FFFFFFC8
    addiu   s5, $zero, 0x0024          # s5 = 00000024
    or      s0, s6, $zero              # s0 = FFFFFFC8
lbl_80A767B4:
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80A767B8:
    lw      t7, 0x000C(s4)             # 80A77934
    sll     t8, s2,  4                 
    subu    t8, t8, s2                 
    sll     t8, t8,  2                 
    addu    t9, t7, t8                 
    addu    v0, t9, s1                 
    lwc1    $f4, 0x0020(v0)            # 00000020
    lwc1    $f8, 0x0018(v0)            # 00000018
    addiu   v0, v0, 0x0018             # v0 = 00000018
    mul.s   $f6, $f4, $f22             
    or      a0, s0, $zero              # a0 = FFFFFFC8
    or      a1, s3, $zero              # a1 = 00000024
    mul.s   $f10, $f8, $f20            
    or      a2, s0, $zero              # a2 = FFFFFFC8
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0000(s0)           # FFFFFFC8
    lwc1    $f18, 0x0004(v0)           # 0000001C
    swc1    $f18, 0x0004(s0)           # FFFFFFCC
    lwc1    $f4, 0x0008(v0)            # 00000020
    lwc1    $f6, 0x0000(v0)            # 00000018
    mul.s   $f8, $f4, $f20             
    nop
    mul.s   $f10, $f6, $f22            
    sub.s   $f16, $f8, $f10            
    jal     func_80063D10              # Vec3f_Add
    swc1    $f16, 0x0008(s0)           # FFFFFFD0
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    bne     s1, s5, lbl_80A767B8       
    addiu   s0, s0, 0x000C             # s0 = FFFFFFD4
    addiu   t0, $sp, 0x0088            # t0 = FFFFFFE0
    sw      t0, 0x0010($sp)            
    or      a0, s7, $zero              # a0 = 00000140
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = FFFFFFC8
    jal     func_80050BD4              
    addiu   a3, $sp, 0x007C            # a3 = FFFFFFD4
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    s2, $at, lbl_80A767B4      
    or      s0, s6, $zero              # s0 = FFFFFFC8
    jal     func_80A76A88              
    or      a0, s8, $zero              # a0 = 00000000
    or      a0, s8, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
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
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80A768A4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, 0x38D1                 # a1 = 38D10000
    ori     a1, a1, 0xB717             # a1 = 38D1B717
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80A77938)      # a3 = 80A70000
    addiu   a3, a3, %lo(var_80A77938)  # a3 = 80A77938
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0024($sp)            
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     a2, %hi(var_80A77964)      # a2 = 80A70000
    addiu   a2, a2, %lo(var_80A77964)  # a2 = 80A77964
    addiu   a0, s0, 0x0098             # a0 = 00000098
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80050344              
    swc1    $f4, 0x0070(s0)            # 00000070
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    sb      t6, 0x00C8(s0)             # 000000C8
    lw      t7, 0x0034($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lw      t8, 0x1C44(t7)             # 00001C44
    lw      t0, 0x0024(t8)             # 00000024
    sw      t0, 0x021C(s0)             # 0000021C
    lw      t9, 0x0028(t8)             # 00000028
    sw      t9, 0x0220(s0)             # 00000220
    lwc1    $f6, 0x0220(s0)            # 00000220
    lw      t0, 0x002C(t8)             # 0000002C
    add.s   $f10, $f6, $f8             
    sw      t0, 0x0224(s0)             # 00000224
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0220(s0)           # 00000220
    lui     $at, %hi(var_80A779A4)     # $at = 80A70000
    lwc1    $f16, %lo(var_80A779A4)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t2, $f4                    
    jal     func_80A76D28              
    sh      t2, 0x022E(s0)             # 0000022E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2822          # a1 = 00002822
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    bne     t3, $at, lbl_80A769D0      
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f6                   # $f6 = -1000.00
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sb      t4, 0x0003(s0)             # 00000003
    sh      t5, 0x0180(s0)             # 00000180
    sh      t6, 0x0182(s0)             # 00000182
    swc1    $f6, 0x00BC(s0)            # 000000BC
lbl_80A769D0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A769E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(var_80A7796C)      # a1 = 80A70000
    addiu   a1, a1, %lo(var_80A7796C)  # a1 = 80A7796C
    jal     func_80063F7C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lh      t6, 0x001C(a0)             # 0000001C
    bne     t6, $zero, lbl_80A76A24    
    nop
    jal     func_80A76708              
    nop
    beq     $zero, $zero, lbl_80A76A30 
    lw      $ra, 0x0014($sp)           
lbl_80A76A24:
    jal     func_80A768A4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A76A30:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76A3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   a1, a2, 0x0140             # a1 = 00000140
    or      a0, a3, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80A76A70    
    nop
    jal     func_8004B148              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76A7C 
    lw      $ra, 0x0014($sp)           
lbl_80A76A70:
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)           
lbl_80A76A7C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76A88:
    lui     t6, %hi(func_80A76AA4)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A76AA4) # t6 = 80A76AA4
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x021A(a0)             # 0000021A
    jr      $ra                        
    nop


func_80A76AA4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x011C(a0)             # 0000011C
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    beql    t6, $zero, lbl_80A76ACC    
    lh      t8, 0x0218(a0)             # 00000218
    beq     $zero, $zero, lbl_80A76B4C 
    sh      t7, 0x0218(a0)             # 00000218
    lh      t8, 0x0218(a0)             # 00000218
lbl_80A76ACC:
    lui     $at, %hi(var_80A779A8)     # $at = 80A70000
    bgtzl   t8, lbl_80A76B50           
    lw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x0090(a0)            # 00000090
    lwc1    $f6, %lo(var_80A779A8)($at) 
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A76B50               
    lw      $ra, 0x0014($sp)           
    lwc1    $f0, 0x0094(a0)            # 00000094
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0xC42F                # $at = C42F0000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80A76B50               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f10                  # $f10 = -700.00
    nop
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80A76B50               
    lw      $ra, 0x0014($sp)           
    lh      t9, 0x008A(a0)             # 0000008A
    lh      t0, 0x00B6(a0)             # 000000B6
    subu    v0, t9, t0                 
    slti    $at, v0, 0xC001            
    bne     $at, $zero, lbl_80A76B4C   
    slti    $at, v0, 0x4000            
    beql    $at, $zero, lbl_80A76B50   
    lw      $ra, 0x0014($sp)           
    jal     func_80A76B5C              
    nop
lbl_80A76B4C:
    lw      $ra, 0x0014($sp)           
lbl_80A76B50:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76B5C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     t6, %hi(func_80A76BB0)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A76BB0) # t6 = 80A76BB0
    sw      t6, 0x013C(a0)             # 0000013C
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t7, 0x0010($sp)            
    sw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)            
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   a1, $zero, 0x2881          # a1 = 00002881
    jal     func_80022FD0              
    sh      t8, 0x0218(a0)             # 00000218
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76BB0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x004C($sp)            
    lh      t6, 0x021A(s0)             # 0000021A
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x021A(s0)             # 0000021A
    lh      t8, 0x021A(s0)             # 0000021A
    bgtzl   t8, lbl_80A76C70           
    lw      $ra, 0x003C($sp)           
    jal     func_80A76C80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f2                   # $f2 = 12.00
    lwc1    $f4, 0x0040($sp)           
    lwc1    $f8, 0x0008(s0)            # 00000008
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f6, $f4, $f2              
    mtc1    $at, $f18                  # $f18 = 10.00
    lw      a2, 0x004C($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x011C          # a3 = 0000011C
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f10, $f6, $f8             
    mul.s   $f6, $f0, $f2              
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x000C(s0)           # 0000000C
    sub.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f8, 0x0010(s0)            # 00000010
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0018($sp)          
    lh      t9, 0x0014(s0)             # 00000014
    sw      t9, 0x001C($sp)            
    lh      t0, 0x0016(s0)             # 00000016
    sw      t0, 0x0020($sp)            
    lh      t1, 0x0018(s0)             # 00000018
    sw      t2, 0x0028($sp)            
    jal     func_800253F0              
    sw      t1, 0x0024($sp)            
    lw      $ra, 0x003C($sp)           
lbl_80A76C70:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76C80:
    lui     t6, %hi(func_80A76C98)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A76C98) # t6 = 80A76C98
    sw      t6, 0x013C(a0)             # 0000013C
    sh      $zero, 0x021A(a0)          # 0000021A
    jr      $ra                        
    nop


func_80A76C98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0218(a0)             # 00000218
    bgtzl   t6, lbl_80A76CBC           
    lw      $ra, 0x0014($sp)           
    jal     func_80A76CC8              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A76CBC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76CC8:
    lui     t6, %hi(func_80A76CDC)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A76CDC) # t6 = 80A76CDC
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A76CDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x021A(a0)             # 0000021A
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x021A(a0)             # 0000021A
    lh      t8, 0x021A(a0)             # 0000021A
    slti    $at, t8, 0x0003            
    bnel    $at, $zero, lbl_80A76D1C   
    lw      $ra, 0x0014($sp)           
    jal     func_80A76A88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    sh      t9, 0x0218(a0)             # 00000218
    lw      $ra, 0x0014($sp)           
lbl_80A76D1C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76D28:
    lui     t6, %hi(func_80A76D3C)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A76D3C) # t6 = 80A76D3C
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A76D3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, a3, 0x0050             # a0 = 00000050
    bne     t6, $at, lbl_80A76D6C      
    lui     a2, 0x3A1D                 # a2 = 3A1D0000
    lui     $at, %hi(var_80A779AC)     # $at = 80A70000
    beq     $zero, $zero, lbl_80A76D74 
    lwc1    $f0, %lo(var_80A779AC)($at) 
lbl_80A76D6C:
    lui     $at, %hi(var_80A779B0)     # $at = 80A70000
    lwc1    $f0, %lo(var_80A779B0)($at) 
lbl_80A76D74:
    mfc1    a1, $f0                    
    ori     a2, a2, 0x4952             # a2 = 3A1D4952
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lwc1    $f0, 0x0050(a3)            # 00000050
    swc1    $f0, 0x0054(a3)            # 00000054
    beq     v0, $zero, lbl_80A76DC0    
    swc1    $f0, 0x0058(a3)            # 00000058
    lh      t7, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t7, $at, lbl_80A76DB8      
    nop
    jal     func_80A76F7C              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76DC4 
    lw      $ra, 0x0014($sp)           
lbl_80A76DB8:
    jal     func_80A76DD0              
    or      a0, a3, $zero              # a0 = 00000000
lbl_80A76DC0:
    lw      $ra, 0x0014($sp)           
lbl_80A76DC4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76DD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sh      t6, 0x0218(a1)             # 00000218
    lh      a0, 0x0032(a1)             # 00000032
    swc1    $f4, 0x0060(a1)            # 00000060
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)            
    add.s   $f6, $f0, $f0              
    lw      a1, 0x0018($sp)            
    swc1    $f6, 0x005C(a1)            # 0000005C
    jal     func_80063684              # coss?
    lh      a0, 0x0032(a1)             # 00000032
    add.s   $f8, $f0, $f0              
    lw      a1, 0x0018($sp)            
    lui     t7, %hi(func_80A76E38)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A76E38) # t7 = 80A76E38
    swc1    $f8, 0x0064(a1)            # 00000064
    sw      t7, 0x013C(a1)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76E38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0150(s0)             # 00000150
    andi    v1, v0, 0x0002             # v1 = 00000000
    bne     v1, $zero, lbl_80A76E68    
    nop
    lh      t6, 0x0218(s0)             # 00000218
    bgtzl   t6, lbl_80A76EB4           
    lwc1    $f0, 0x0060(s0)            # 00000060
lbl_80A76E68:
    beq     v1, $zero, lbl_80A76E90    
    andi    t7, v0, 0x0004             # t7 = 00000000
    bne     t7, $zero, lbl_80A76E90    
    lw      a0, 0x002C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
lbl_80A76E90:
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_80A773C8              
    swc1    $f0, 0x005C(s0)            # 0000005C
    beq     $zero, $zero, lbl_80A76F6C 
    lw      $ra, 0x0024($sp)           
    lwc1    $f0, 0x0060(s0)            # 00000060
lbl_80A76EB4:
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A76F14               
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x005C(s0)           # 0000005C
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0064(s0)            # 00000064
    add.s   $f16, $f8, $f10            
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    add.s   $f6, $f18, $f4             
    swc1    $f16, 0x0024(s0)           # 00000024
    lui     a2, 0x40E0                 # a2 = 40E00000
    lui     a3, 0x4140                 # a3 = 41400000
    swc1    $f6, 0x002C(s0)            # 0000002C
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80A76F14:
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x0080(s0)           # 00000080
    mfc1    a2, $f0                    
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f18, $f10, $f16           
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    bne     v0, $zero, lbl_80A76F54    
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80A76F60 
    swc1    $f8, 0x0060(s0)            # 00000060
lbl_80A76F54:
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_80A76F60:
    jal     func_80A765E0              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80A76F6C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A76F7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A77008)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A77008) # t6 = 80A77008
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_800214D8              
    addiu   a1, a0, 0x021C             # a1 = 0000021C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    add.s   $f4, $f0, $f12             
    lwc1    $f6, 0x021C(a0)            # 0000021C
    lwc1    $f8, 0x0024(a0)            # 00000024
    lwc1    $f18, 0x0220(a0)           # 00000220
    div.s   $f2, $f12, $f4             
    lwc1    $f4, 0x0028(a0)            # 00000028
    sh      t7, 0x0218(a0)             # 00000218
    sub.s   $f10, $f6, $f8             
    sub.s   $f6, $f18, $f4             
    mul.s   $f16, $f10, $f2            
    lwc1    $f10, 0x0224(a0)           # 00000224
    mul.s   $f8, $f6, $f2              
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f16, 0x005C(a0)           # 0000005C
    lwc1    $f16, 0x002C(a0)           # 0000002C
    swc1    $f6, 0x0228(a0)            # 00000228
    swc1    $f8, 0x0060(a0)            # 00000060
    sub.s   $f18, $f10, $f16           
    mul.s   $f4, $f18, $f2             
    swc1    $f4, 0x0064(a0)            # 00000064
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A77008:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x0074($sp)            
    addiu   a0, s0, 0x0228             # a0 = 00000228
    lui     a1, 0x4150                 # a1 = 41500000
    jal     func_8006385C              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lwc1    $f2, 0x0228(s0)            # 00000228
    lwc1    $f4, 0x005C(s0)            # 0000005C
    lwc1    $f6, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mul.s   $f0, $f2, $f4              
    abs.s   $f12, $f0                  
    mul.s   $f0, $f2, $f6              
    mfc1    a2, $f12                   
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0064($sp)           
    lwc1    $f8, 0x0064(s0)            # 00000064
    mul.s   $f0, $f2, $f8              
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0068($sp)           
    jal     func_8006385C              
    lw      a1, 0x021C(s0)             # 0000021C
    andi    s1, v0, 0x0001             # s1 = 00000000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0220(s0)             # 00000220
    jal     func_8006385C              
    lw      a2, 0x0064($sp)            
    and     s1, s1, v0                 
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0224(s0)             # 00000224
    jal     func_8006385C              
    lw      a2, 0x0068($sp)            
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    and     s1, s1, v0                 
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0074($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40E0                 # a2 = 40E00000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C              
    swc1    $f10, 0x0010($sp)          
    lbu     v0, 0x0150(s0)             # 00000150
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t8, 0x0074($sp)            
    andi    t7, v0, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80A7716C    
    andi    t1, v0, 0x0002             # t1 = 00000000
    addiu   s1, $sp, 0x004C            # s1 = FFFFFFDC
    lw      v0, 0x1C44(t8)             # 00001C44
    or      a0, s1, $zero              # a0 = FFFFFFDC
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFC4
    lwc1    $f16, 0x0A30(v0)           # 00000A30
    neg.s   $f18, $f16                 
    swc1    $f18, 0x0034($sp)          
    lwc1    $f4, 0x0A34(v0)            # 00000A34
    neg.s   $f6, $f4                   
    swc1    $f6, 0x0038($sp)           
    lwc1    $f8, 0x0A38(v0)            # 00000A38
    neg.s   $f10, $f8                  
    jal     func_80A76674              
    swc1    $f10, 0x003C($sp)          
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    lw      t0, 0x0000(a2)             # 0000005C
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFD0
    or      a1, s1, $zero              # a1 = FFFFFFDC
    sw      t0, 0x0000(a0)             # FFFFFFD0
    lw      t9, 0x0004(a2)             # 00000060
    sw      t9, 0x0004(a0)             # FFFFFFD4
    lw      t0, 0x0008(a2)             # 00000064
    jal     func_800A4F98              
    sw      t0, 0x0008(a0)             # FFFFFFD8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lwc1    $f16, 0x0228(s0)           # 00000228
    lwc1    $f12, 0x0064(s0)           # 00000064
    lwc1    $f14, 0x005C(s0)           # 0000005C
    mul.s   $f4, $f16, $f18            
    jal     func_800AA4F8              
    swc1    $f4, 0x0068(s0)            # 00000068
    sh      v0, 0x0032(s0)             # 00000032
    jal     func_80A773C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A771C4 
    lw      $ra, 0x0024($sp)           
lbl_80A7716C:
    beq     t1, $zero, lbl_80A77188    
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_80A773C8              
    swc1    $f0, 0x0060(s0)            # 00000060
    beq     $zero, $zero, lbl_80A771C4 
    lw      $ra, 0x0024($sp)           
lbl_80A77188:
    lh      t2, 0x0218(s0)             # 00000218
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t2, lbl_80A771A8           
    nop
    jal     func_80A773C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A771C4 
    lw      $ra, 0x0024($sp)           
lbl_80A771A8:
    jal     func_80A765E0              
    lw      a1, 0x0074($sp)            
    beql    s1, $zero, lbl_80A771C4    
    lw      $ra, 0x0024($sp)           
    jal     func_80A771D4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A771C4:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80A771D4:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(func_80A77214)     # t6 = 80A70000
    sh      $zero, 0x0034(a0)          # 00000034
    lh      v0, 0x0034(a0)             # 00000034
    addiu   t6, t6, %lo(func_80A77214) # t6 = 80A77214
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x013C(a0)             # 0000013C
    swc1    $f0, 0x0068(a0)            # 00000068
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    sh      t7, 0x0218(a0)             # 00000218
    sh      v0, 0x0032(a0)             # 00000032
    sh      v0, 0x0030(a0)             # 00000030
    jr      $ra                        
    nop


func_80A77214:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063704              
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x4040                 # a1 = 40400000
    lwc1    $f4, 0x0094(s0)            # 00000094
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    neg.s   $f6, $f4                   
    lui     $at, %hi(var_80A779B8)     # $at = 80A70000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80A77280               
    nop
    lui     $at, %hi(var_80A779B4)     # $at = 80A70000
    lwc1    $f10, %lo(var_80A779B4)($at) 
    beq     $zero, $zero, lbl_80A77288 
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_80A77280:
    lwc1    $f16, %lo(var_80A779B8)($at) 
    swc1    $f16, 0x006C(s0)           # 0000006C
lbl_80A77288:
    jal     func_800211A4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_80A779BC)     # $at = 80A70000
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_80A772B8               
    nop
    swc1    $f2, 0x0060(s0)            # 00000060
    lwc1    $f0, 0x0060(s0)            # 00000060
lbl_80A772B8:
    lwc1    $f18, %lo(var_80A779BC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f0, $f18             
    jal     func_80021124              
    swc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40E0                 # a2 = 40E00000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C              
    swc1    $f6, 0x0010($sp)           
    lbu     v0, 0x0150(s0)             # 00000150
    lw      t8, 0x0044($sp)            
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    andi    t7, v0, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80A77344    
    andi    t4, v0, 0x0002             # t4 = 00000000
    lw      v0, 0x1C44(t8)             # 00001C44
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800ABF50              
    addiu   a0, v0, 0x0A10             # a0 = 00000A10
    lh      t9, 0x0032($sp)            
    lh      t1, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    sll     t0, t9,  1                 
    subu    t2, t0, t1                 
    addu    t3, t2, $at                
    sh      t3, 0x0032(s0)             # 00000032
    jal     func_80A773C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A773B8 
    lw      $ra, 0x0024($sp)           
lbl_80A77344:
    beq     t4, $zero, lbl_80A7737C    
    lui     $at, %hi(var_80A779C0)     # $at = 80A70000
    lwc1    $f0, %lo(var_80A779C0)($at) 
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f16, 0x0060(s0)           # 00000060
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f18, $f16, $f0            
    swc1    $f10, 0x0068(s0)           # 00000068
    jal     func_80A773C8              
    swc1    $f18, 0x0060(s0)           # 00000060
    beq     $zero, $zero, lbl_80A773B8 
    lw      $ra, 0x0024($sp)           
lbl_80A7737C:
    lhu     t5, 0x0088(s0)             # 00000088
    andi    t6, t5, 0x0008             # t6 = 00000000
    bne     t6, $zero, lbl_80A7739C    
    nop
    lh      t7, 0x0218(s0)             # 00000218
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t7, lbl_80A773AC           
    nop
lbl_80A7739C:
    jal     func_80A773C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A773B8 
    lw      $ra, 0x0024($sp)           
lbl_80A773AC:
    jal     func_80A765E0              
    lw      a1, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80A773B8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A773C8:
    lui     t6, %hi(func_80A773DC)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A773DC) # t6 = 80A773DC
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80A773DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, 0x38D1                 # a1 = 38D10000
    lui     a2, 0x391D                 # a2 = 391D0000
    ori     a2, a2, 0x4952             # a2 = 391D4952
    ori     a1, a1, 0xB717             # a1 = 38D1B717
    jal     func_8006385C              
    addiu   a0, s0, 0x0050             # a0 = 00000050
    sw      v0, 0x0028($sp)            
    lwc1    $f0, 0x0050(s0)            # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0054(s0)            # 00000054
    jal     func_8002121C              
    swc1    $f0, 0x0058(s0)            # 00000058
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40E0                 # a2 = 40E00000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      t7, 0x0028($sp)            
    beql    t7, $zero, lbl_80A7745C    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A7745C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7746C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0218(s0)             # 00000218
    blez    v0, lbl_80A77490           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0218(s0)             # 00000218
lbl_80A77490:
    lh      t7, 0x001C(s0)             # 0000001C
    bnel    t7, $zero, lbl_80A774C0    
    lh      t9, 0x022C(s0)             # 0000022C
    lw      v0, 0x011C(s0)             # 0000011C
    beql    v0, $zero, lbl_80A7750C    
    lw      t9, 0x013C(s0)             # 0000013C
    lw      t8, 0x0130(v0)             # 00000130
    bnel    t8, $zero, lbl_80A7750C    
    lw      t9, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_80A77508 
    sw      $zero, 0x011C(s0)          # 0000011C
    lh      t9, 0x022C(s0)             # 0000022C
lbl_80A774C0:
    sb      $zero, 0x0230(s0)          # 00000230
    addiu   t0, t9, 0x0640             # t0 = 00000640
    sh      t0, 0x022C(s0)             # 0000022C
    jal     func_800636C4              # sins?
    lh      a0, 0x022C(s0)             # 0000022C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f8                   # $f8 = 600.00
    mul.s   $f6, $f0, $f4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x40A0                 # a1 = 40A00000
    add.s   $f10, $f6, $f8             
    jal     func_80020F04              
    swc1    $f10, 0x00BC(s0)           # 000000BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x205B          # a1 = 0000205B
lbl_80A77508:
    lw      t9, 0x013C(s0)             # 0000013C
lbl_80A7750C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jalr    $ra, t9                    
    nop
    lh      t1, 0x001C(s0)             # 0000001C
    bnel    t1, $zero, lbl_80A775A4    
    lw      $ra, 0x0024($sp)           
    lbu     v0, 0x0151(s0)             # 00000151
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80A77570    
    lui     a2, %hi(var_80A77978)      # a2 = 80A70000
    lui     a3, %hi(var_80A77984)      # a3 = 80A70000
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A77984)  # a3 = 80A77984
    jal     func_8001C97C              
    addiu   a2, a2, %lo(var_80A77978)  # a2 = 80A77978
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A775A4 
    lw      $ra, 0x0024($sp)           
lbl_80A77570:
    lh      t5, 0x021A(s0)             # 0000021A
    andi    t6, v0, 0xFFFD             # t6 = 00000000
    addiu   a2, s0, 0x0140             # a2 = 00000140
    slti    $at, t5, 0x0003            
    beql    $at, $zero, lbl_80A775A4   
    lw      $ra, 0x0024($sp)           
    sb      t6, 0x0151(s0)             # 00000151
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
lbl_80A775A4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A775B4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0030($sp)            
    lui     a1, %hi(var_80A77990)      # a1 = 80A70000
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t0, 0x021A(t9)             # 0000021A
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    lw      a1, %lo(var_80A77990)(a1)  
    sll     t3, a1,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x0034($sp)            
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a3, 0x001C($sp)            
    lw      a2, 0x0028($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t5, 0x0500                 # t5 = 05000000
    addiu   t5, t5, 0x6810             # t5 = 05006810
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A776A0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lh      t6, 0x022E(s1)             # 0000022E
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t7, t6, 0xFFEC             # t7 = FFFFFFEC
    sh      t7, 0x022E(s1)             # 0000022E
    lh      t8, 0x022E(s1)             # 0000022E
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    andi    t9, t8, 0x01FF             # t9 = 00000000
    sh      t9, 0x022E(s1)             # 0000022E
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lh      t6, 0x022E(s1)             # 0000022E
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    sw      t8, 0x0028($sp)            
    sw      t7, 0x0024($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x004C($sp)            
    jal     func_8007EB84              
    sw      t6, 0x0020($sp)            
    lw      t0, 0x004C($sp)            
    lui     t1, 0xFA00                 # t1 = FA000000
    ori     t1, t1, 0x8080             # t1 = FA008080
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFFC8                 # t2 = FFC80000
    ori     t2, t2, 0x00FF             # t2 = FFC800FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    lui     t5, 0xFF00                 # t5 = FF000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lh      t6, 0x07A0(s2)             # 000007A0
    sll     t7, t6,  2                 
    addu    t8, s2, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             # 00000790
    lh      t9, 0x00B6(s1)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t1, v0, t9                 
    addu    t2, t1, $at                
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A779C4)     # $at = 80A70000
    lwc1    $f8, %lo(var_80A779C4)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0405                 # t9 = 04050000
    addiu   t9, t9, 0x2A10             # t9 = 04052A10
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80A77834:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80A77864    
    nop
    beq     v0, $at, lbl_80A77874      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A77874      
    nop
    beq     $zero, $zero, lbl_80A77880 
    lw      $ra, 0x0014($sp)           
lbl_80A77864:
    jal     func_80A775B4              
    nop
    beq     $zero, $zero, lbl_80A77880 
    lw      $ra, 0x0014($sp)           
lbl_80A77874:
    jal     func_80A776A0              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A77880:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A77890: .word 0x011C0600, 0x00000010, 0x00030000, 0x00000234
.word func_80A769E4
.word func_80A76A3C
.word func_80A7746C
.word func_80A77834
var_80A778B0: .word \
0x04000000, 0x00000000, 0x00000000, 0x0001F824, \
0x00000000, 0x00010000, 0x00000000, 0x41B80000, \
0x41080000, 0xC1B80000, 0x00000000, 0x41080000, \
0x00000000, 0xC1B80000, 0x41080000, 0x00000000, \
0x00000000, 0x00000000, 0x0001F824, 0x00000000, \
0x00010000, 0x00000000, 0x41B80000, 0x41080000, \
0x00000000, 0xC1B80000, 0x41080000, 0x41B80000, \
0x00000000, 0x41080000
var_80A77928: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80A778B0
var_80A77938: .word \
0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x01040000, 0x00100000, 0x00000000, 0x19010100, \
0x000A0019, 0x00000000, 0x00000000
var_80A77964: .word 0x00000009, 0x00170100
var_80A7796C: .word 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
var_80A77978: .word 0x00000000, 0x00000000, 0x00000000
var_80A77984: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80A77990: .word 0x0500B0A0, 0x0500B8A0, 0x0500C0A0, 0x0500C0A0

.section .rodata

var_80A779A0: .word 0x3A83126F
var_80A779A4: .word 0x43FF8000
var_80A779A8: .word 0x443B8000
var_80A779AC: .word 0x3B83126F
var_80A779B0: .word 0x3B9D4952
var_80A779B4: .word 0x3DA3D70A
var_80A779B8: .word 0xBDA3D70A
var_80A779BC: .word 0x3F733333
var_80A779C0: .word 0x3DCCCCCD
var_80A779C4: .word 0x38C90FDB, 0x00000000, 0x00000000

