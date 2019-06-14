#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A66F40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f4                   # $f4 = 8000.00
    lw      a0, 0x0024($sp)            
    lw      a1, 0x0020($sp)            
    addiu   a2, $zero, 0x0113          # a2 = 00000113
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80028158              
    swc1    $f4, 0x0010($sp)           
    bnel    v0, $zero, lbl_80A66F84    
    lw      a1, 0x0020($sp)            
    jal     func_800C6894              
    nop
    lw      a1, 0x0020($sp)            
lbl_80A66F84:
    lw      a0, 0x0024($sp)            
    jal     func_8004B148              
    addiu   a1, a1, 0x03DC             # a1 = 000003DC
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0310             # a1 = 00000310
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x035C             # a1 = 0000035C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A66FC0:
    sw      a1, 0x02F4(a0)             # 000002F4
    jr      $ra                        
    nop


func_80A66FCC:
    addiu   $sp, $sp, 0xFE20           # $sp = FFFFFE20
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t8, 0x0004(s0)             # 00000004
    lui     t6, %hi(func_80A68BE0)     # t6 = 80A70000
    lui     t7, %hi(func_80A6935C)     # t7 = 80A70000
    addiu   t6, t6, %lo(func_80A68BE0) # t6 = 80A68BE0
    addiu   t7, t7, %lo(func_80A6935C) # t7 = 80A6935C
    ori     t9, t8, 0x0400             # t9 = 00000400
    sw      t6, 0x0130(s0)             # 00000130
    sw      t7, 0x0134(s0)             # 00000134
    sw      t9, 0x0004(s0)             # 00000004
    addiu   a1, s0, 0x0310             # a1 = 00000310
    sw      a1, 0x002C($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A6ADA0)      # a3 = 80A70000
    lw      a1, 0x002C($sp)            
    addiu   a3, a3, %lo(var_80A6ADA0)  # a3 = 80A6ADA0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x03DC             # a1 = 000003DC
    sw      a1, 0x002C($sp)            
    jal     func_8004B064              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A6AE44)      # a3 = 80A70000
    addiu   t2, s0, 0x03FC             # t2 = 000003FC
    lw      a1, 0x002C($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A6AE44)  # a3 = 80A6AE44
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B3EC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    sw      a1, 0x002C($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A6AE54)      # a3 = 80A70000
    lw      a1, 0x002C($sp)            
    addiu   a3, a3, %lo(var_80A6AE54)  # a3 = 80A6AE54
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t3, %hi(var_80A6AEA4)      # t3 = 80A70000
    addiu   t3, t3, %lo(var_80A6AEA4)  # t3 = 80A6AEA4
    andi    t2, t9, 0x00FF             # t2 = 00000000
    sw      t3, 0x0098(s0)             # 00000098
    sh      t2, 0x001C(s0)             # 0000001C
    lh      t3, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    sra     t7, t6,  8                 
    addiu   t4, $zero, 0x00FE          # t4 = 000000FE
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sb      t4, 0x00AE(s0)             # 000000AE
    sb      $zero, 0x02EC(s0)          # 000002EC
    sb      t5, 0x00AF(s0)             # 000000AF
    sh      t8, 0x02F2(s0)             # 000002F2
    bne     t3, $zero, lbl_80A670F0    
    swc1    $f4, 0x006C(s0)            # 0000006C
    or      t4, t5, $zero              # t4 = 0000001E
    addiu   t5, t4, 0x0014             # t5 = 00000032
    addiu   t6, $zero, 0x0034          # t6 = 00000034
    sb      t5, 0x00AF(s0)             # 000000AF
    beq     $zero, $zero, lbl_80A6711C 
    sb      t6, 0x0117(s0)             # 00000117
lbl_80A670F0:
    lui     a1, 0x3C44                 # a1 = 3C440000
    ori     a1, a1, 0x9BA6             # a1 = 3C449BA6
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0035          # t7 = 00000035
    sb      t7, 0x0117(s0)             # 00000117
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0005          # a3 = 00000005
lbl_80A6711C:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $sp, 0x0038            # t4 = FFFFFE58
    sb      v0, 0x01C9($sp)            
    sb      v0, 0x01C8($sp)            
    sb      v0, 0x01C5($sp)            
    sb      v0, 0x01C4($sp)            
    sb      v0, 0x01C2($sp)            
    sb      v0, 0x01C1($sp)            
    sb      v0, 0x01C0($sp)            
    sb      v0, 0x01BD($sp)            
    sb      v0, 0x01BC($sp)            
    sb      t8, 0x01C3($sp)            
    sb      t9, 0x01BF($sp)            
    sb      t0, 0x01BE($sp)            
    sb      $zero, 0x01C7($sp)         
    sw      t2, 0x01CC($sp)            
    sw      $zero, 0x01D0($sp)         
    sw      t3, 0x01D4($sp)            
    sw      t4, 0x0014($sp)            
    sb      t0, 0x01C6($sp)            
    sb      v0, 0x01CA($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x04B4             # a1 = 000004B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8001AA5C              
    sb      $zero, 0x01CB($sp)         
    jal     func_80A67348              
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x02F2(s0)             # 000002F2
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    a1, $at, lbl_80A671DC      
    lh      t5, 0x001C(s0)             # 0000001C
    jal     func_8002049C              
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A67208    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A67208 
    lw      $ra, 0x0024($sp)           
    lh      t5, 0x001C(s0)             # 0000001C
lbl_80A671DC:
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s1                 
    beq     t5, $zero, lbl_80A67204    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020640              
    lb      a1, 0x1CBC(a1)             # 00011CBC
    beql    v0, $zero, lbl_80A67208    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A67204:
    lw      $ra, 0x0024($sp)           
lbl_80A67208:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01E0           # $sp = 00000000


func_80A67218:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     t6, 0x02EB(s0)             # 000002EB
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    bne     t6, $zero, lbl_80A67248    
    lui     a2, 0x42C8                 # a2 = 42C80000
    lh      t7, 0x001C(s0)             # 0000001C
    bne     t7, $zero, lbl_80A67290    
lbl_80A67248:
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    sw      t8, 0x0010($sp)            
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    jal     func_8002821C              
    sw      t9, 0x0014($sp)            
    beq     v0, $zero, lbl_80A67290    
    lw      t0, 0x002C($sp)            
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0                 
    lw      t1, 0x1DE4(t1)             # 00011DE4
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80A67294    
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80A68230              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A67294 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A67290:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A67294:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A672A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0024($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lw      s0, 0x1C64(a0)             # 00001C64
    lui     $at, 0x42A0                # $at = 42A00000
    beql    s0, $zero, lbl_80A6732C    
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f20                  # $f20 = 80.00
    addiu   s2, $zero, 0x0169          # s2 = 00000169
lbl_80A672DC:
    beq     s0, s1, lbl_80A672F8       
    nop
    lh      t6, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    beql    s2, t6, lbl_80A67304       
    mfc1    a2, $f20                   
lbl_80A672F8:
    beq     $zero, $zero, lbl_80A67320 
    lw      s0, 0x0124(s0)             # 00000124
    mfc1    a2, $f20                   
lbl_80A67304:
    jal     func_80021B54              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    beql    v0, $zero, lbl_80A67320    
    lw      s0, 0x0124(s0)             # 00000124
    beq     $zero, $zero, lbl_80A6732C 
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A67320:
    bne     s0, $zero, lbl_80A672DC    
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6732C:
    lw      $ra, 0x002C($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A67348:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xCD70             # a0 = 0600CD70
    mtc1    v0, $f4                    # $f4 = 0.00
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f0, $f4                   
    slti    $at, t6, 0x0002            
    addiu   a1, a1, 0xCD70             # a1 = 0600CD70
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    bne     $at, $zero, lbl_80A6739C   
    mov.s   $f12, $f0                  
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    beq     $zero, $zero, lbl_80A673A4 
    sub.s   $f2, $f0, $f6              
lbl_80A6739C:
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
lbl_80A673A4:
    mtc1    $zero, $f0                 # $f0 = 0.00
    mfc1    a3, $f2                    
    swc1    $f12, 0x0010($sp)          
    mfc1    a2, $f0                    
    sw      t7, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     a1, %hi(func_80A673F4)     # a1 = 80A60000
    sb      t8, 0x02E8(s0)             # 000002E8
    addiu   a1, a1, %lo(func_80A673F4) # a1 = 80A673F4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A66FC0              
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A673F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lbu     t6, 0x0321(s0)             # 00000321
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80A67478    
    lui     $at, 0x40A0                # $at = 40A00000
    lw      t0, 0x0024(s0)             # 00000024
    addiu   t8, $sp, 0x0024            # t8 = FFFFFFF4
    or      a0, s0, $zero              # a0 = 00000000
    sw      t0, 0x0000(t8)             # FFFFFFF4
    lw      t9, 0x0028(s0)             # 00000028
    addiu   a1, $zero, 0x393A          # a1 = 0000393A
    sw      t9, 0x0004(t8)             # FFFFFFF8
    lw      t0, 0x002C(s0)             # 0000002C
    jal     func_80022FD0              
    sw      t0, 0x0008(t8)             # FFFFFFFC
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0028($sp)           
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    add.s   $f8, $f4, $f6              
    jal     func_80027070              
    swc1    $f8, 0x0028($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    jal     func_800C6820              
    swc1    $f10, 0x0158(s0)           # 00000158
    lui     $at, 0x40A0                # $at = 40A00000
lbl_80A67478:
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f18, 0x0154(s0)           # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f16, $f18                 
    nop
    bc1f    lbl_80A6749C               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C2          # a1 = 000039C2
lbl_80A6749C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A674C4    
    lw      $ra, 0x001C($sp)           
    lw      t1, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    ori     t2, t1, 0x0005             # t2 = 00000005
    jal     func_80A676E4              
    sw      t2, 0x0004(s0)             # 00000004
    lw      $ra, 0x001C($sp)           
lbl_80A674C4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A674D4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xDD50             # a0 = 0600DD50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t6, 0x0004(s0)             # 00000004
    cvt.s.w $f6, $f4                   
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lui     $at, 0x4080                # $at = 40800000
    ori     t7, t6, 0x0005             # t7 = 00000005
    mtc1    $at, $f8                   # $f8 = 4.00
    sw      t7, 0x0004(s0)             # 00000004
    sb      t8, 0x02E8(s0)             # 000002E8
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   a1, a1, 0xDD50             # a1 = 0600DD50
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_80A67564)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A67564) # a1 = 80A67564
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67564:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     t6, 0x02EB(s0)             # 000002EB
    addiu   a0, $zero, 0x3FFC          # a0 = 00003FFC
    bne     t6, $zero, lbl_80A67590    
    nop
    beq     $zero, $zero, lbl_80A67590 
    addiu   a0, $zero, 0x0AAA          # a0 = 00000AAA
lbl_80A67590:
    lh      t7, 0x008A(s0)             # 0000008A
    lh      t8, 0x00B6(s0)             # 000000B6
    subu    v1, t7, t8                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A675B4           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80A675B4 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A675B4:
    slt     $at, a0, v0                
    bne     $at, $zero, lbl_80A6764C   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A6764C               
    nop
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t9, 0x0024($sp)            
    mtc1    $at, $f10                  # $f10 = 150.00
    c.le.s  $f8, $f0                   
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t9                 
    bc1fl   lbl_80A6760C               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80A6760C 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80A6760C:
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_80A6764C               
    nop
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A6763C    
    nop
    jal     func_80A67A64              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A676C0 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A6763C:
    jal     func_80A67E04              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A676C0 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A6764C:
    bltz    v1, lbl_80A6765C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80A6765C 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A6765C:
    slti    $at, v0, 0x4001            
    beq     $at, $zero, lbl_80A676B4   
    nop
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80A67694               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80A67694 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80A67694:
    c.lt.s  $f2, $f18                  
    nop
    bc1f    lbl_80A676B4               
    nop
    jal     func_80A676E4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A676C0 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A676B4:
    jal     func_80A676E4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A676C0:
    jal     func_80A67218              
    lw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A676E4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lbu     t7, 0x02EB(s0)             # 000002EB
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sb      t6, 0x02E8(s0)             # 000002E8
    bne     t7, $zero, lbl_80A67758    
    lui     a0, 0x0600                 # a0 = 06000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xED24             # a0 = 0600ED24
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xED24             # a1 = 0600ED24
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, %hi(var_80A6B0B0)     # $at = 80A70000
    lwc1    $f10, %lo(var_80A6B0B0)($at) 
    beq     $zero, $zero, lbl_80A677B0 
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80A67758:
    jal     func_8008A194              
    addiu   a0, a0, 0x6734             # a0 = 00006734
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    cvt.s.w $f18, $f16                 
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6734             # a1 = 06006734
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39BF          # a1 = 000039BF
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f6                   # $f6 = 2.50
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80A677B0:
    lh      t8, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_80A677DC)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A677DC) # a1 = 80A677DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A66FC0              
    sh      t8, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A677DC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lbu     t6, 0x02EB(s0)             # 000002EB
    addiu   t0, $zero, 0x3FFC          # t0 = 00003FFC
    addiu   a3, $zero, 0x04B0          # a3 = 000004B0
    bne     t6, $zero, lbl_80A6781C    
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t0, $zero, 0x0AAA          # t0 = 00000AAA
    addiu   a3, $zero, 0x0320          # a3 = 00000320
    sh      $zero, 0x0030($sp)         
    beq     $zero, $zero, lbl_80A67828 
    sh      t7, 0x002E($sp)            
lbl_80A6781C:
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    sh      t8, 0x0030($sp)            
    sh      t9, 0x002E($sp)            
lbl_80A67828:
    lh      v1, 0x007E(s0)             # 0000007E
    lh      t1, 0x00B6(s0)             # 000000B6
    lhu     t2, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0032             # a0 = 00000032
    subu    a1, v1, t1                 
    sll     a1, a1, 16                 
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_80A678A4    
    sra     a1, a1, 16                 
    bltz    a1, lbl_80A6785C           
    subu    v0, $zero, a1              
    beq     $zero, $zero, lbl_80A6785C 
    or      v0, a1, $zero              # v0 = 00000000
lbl_80A6785C:
    slti    $at, v0, 0x4000            
    bne     $at, $zero, lbl_80A678A4   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t4, 0x008A(s0)             # 0000008A
    addiu   a1, v1, 0x4000             # a1 = 00004000
    sll     a1, a1, 16                 
    blez    t4, lbl_80A6788C           
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a1, v1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16                 
    beq     $zero, $zero, lbl_80A67890 
    sra     a1, a1, 16                 
lbl_80A6788C:
    sra     a1, a1, 16                 
lbl_80A67890:
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    sh      t0, 0x0036($sp)            
    beq     $zero, $zero, lbl_80A678BC 
    lh      t0, 0x0036($sp)            
lbl_80A678A4:
    lh      a1, 0x008A(s0)             # 0000008A
    sh      t0, 0x0036($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t0, 0x0036($sp)            
lbl_80A678BC:
    lh      t5, 0x0032(s0)             # 00000032
    lh      t6, 0x008A(s0)             # 0000008A
    sh      t5, 0x00B6(s0)             # 000000B6
    lh      t7, 0x00B6(s0)             # 000000B6
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A678E8           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80A678E8 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A678E8:
    slt     $at, t0, v0                
    bne     $at, $zero, lbl_80A67978   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A6797C               
    lw      a0, 0x003C($sp)            
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t8, 0x003C($sp)            
    mtc1    $at, $f10                  # $f10 = 150.00
    c.le.s  $f8, $f0                   
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, t8                 
    bc1fl   lbl_80A67940               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80A67940 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80A67940:
    c.lt.s  $f2, $f10                  
    nop
    bc1fl   lbl_80A6797C               
    lw      a0, 0x003C($sp)            
    lw      t9, 0x1DE4(t9)             # 00011DE4
    andi    t1, t9, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A67970    
    nop
    jal     func_80A67A64              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6797C 
    lw      a0, 0x003C($sp)            
lbl_80A67970:
    jal     func_80A67E04              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A67978:
    lw      a0, 0x003C($sp)            
lbl_80A6797C:
    jal     func_80A672A8              
    or      a1, s0, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A679A4    
    lh      t3, 0x008A(s0)             # 0000008A
    jal     func_80A67E04              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_80A67A00 
    sb      t2, 0x02EC(s0)             # 000002EC
    lh      t3, 0x008A(s0)             # 0000008A
lbl_80A679A4:
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    subu    t0, t3, t4                 
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    bltz    t0, lbl_80A679C8           
    subu    v0, $zero, t0              
    beq     $zero, $zero, lbl_80A679C8 
    or      v0, t0, $zero              # v0 = 00000000
lbl_80A679C8:
    slti    $at, v0, 0x4001            
    bnel    $at, $zero, lbl_80A67A00   
    sh      t8, 0x02F0(s0)             # 000002F0
    lh      t5, 0x02F0(s0)             # 000002F0
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x02F0(s0)             # 000002F0
    lh      t7, 0x02F0(s0)             # 000002F0
    bnel    t7, $zero, lbl_80A67A04    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A680E0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A67A04 
    or      a0, s0, $zero              # a0 = 00000000
    sh      t8, 0x02F0(s0)             # 000002F0
lbl_80A67A00:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A67A04:
    jal     func_80A67218              
    lw      a1, 0x003C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lwc1    $f16, 0x0154(s0)           # 00000154
    lh      t1, 0x0030($sp)            
    lh      t2, 0x002E($sp)            
    trunc.w.s $f18, $f16                 
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    v1, $f18                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    beq     t1, v1, lbl_80A67A48       
    nop
    bnel    t2, v1, lbl_80A67A54       
    lw      $ra, 0x0024($sp)           
lbl_80A67A48:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3928          # a1 = 00003928
    lw      $ra, 0x0024($sp)           
lbl_80A67A54:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67A64:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1C28             # a0 = 06001C28
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cvt.s.w $f6, $f4                   
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    sb      t6, 0x02EF(s0)             # 000002EF
    sb      t7, 0x02E8(s0)             # 000002E8
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x1C28             # a1 = 06001C28
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_80A67AF4)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A67AF4) # a1 = 80A67AF4
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67AF4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A8                # $at = 41A80000
    c.eq.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A67B40               
    mtc1    $at, $f6                   # $f6 = 21.00
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3929          # a1 = 00003929
    beq     $zero, $zero, lbl_80A67BFC 
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_80A67B40:
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A67C00               
    lui     $at, 0x4188                # $at = 41880000
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x06A4             # a0 = 000006A4
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x002C($sp)          
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x06A4             # a0 = 000006A4
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4              
    addiu   a1, $zero, 0x39AE          # a1 = 000039AE
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0034($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    jal     func_80022FD0              
    swc1    $f16, 0x0030($sp)          
    lw      a0, 0x003C($sp)            
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x0019          # a2 = 00000019
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_800497A4              
    addiu   a0, a0, 0x01E0             # a0 = 000001E0
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    lw      a0, 0x003C($sp)            
    jal     func_80051124              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lwc1    $f0, 0x0154(s0)            # 00000154
lbl_80A67BFC:
    lui     $at, 0x4188                # $at = 41880000
lbl_80A67C00:
    mtc1    $at, $f18                  # $f18 = 17.00
    lui     $at, 0x41B8                # $at = 41B80000
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80A67C3C               
    lbu     t7, 0x02EB(s0)             # 000002EB
    mtc1    $at, $f4                   # $f4 = 23.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A67C3C               
    lbu     t7, 0x02EB(s0)             # 000002EB
    beq     $zero, $zero, lbl_80A67C7C 
    sb      t6, 0x02EE(s0)             # 000002EE
    lbu     t7, 0x02EB(s0)             # 000002EB
lbl_80A67C3C:
    lui     $at, 0x4120                # $at = 41200000
    beql    t7, $zero, lbl_80A67C7C    
    sb      $zero, 0x02EE(s0)          # 000002EE
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.lt.s  $f0, $f6                   
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    bc1fl   lbl_80A67C7C               
    sb      $zero, 0x02EE(s0)          # 000002EE
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t8, 0x0032(s0)             # 00000032
    sh      t8, 0x00B6(s0)             # 000000B6
    sb      $zero, 0x02EE(s0)          # 000002EE
lbl_80A67C7C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A67C98    
    lw      $ra, 0x0024($sp)           
    jal     func_80A67CA8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A67C98:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67CA8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x29FC             # a0 = 060029FC
    mtc1    v0, $f4                    # $f4 = 0.00
    sb      $zero, 0x02EE(s0)          # 000002EE
    lb      t9, 0x02EE(s0)             # 000002EE
    cvt.s.w $f0, $f4                   
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    sb      t8, 0x02E8(s0)             # 000002E8
    sb      t9, 0x02EF(s0)             # 000002EF
    trunc.w.s $f6, $f0                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x29FC             # a1 = 060029FC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f6                    
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sb      t7, 0x02E9(s0)             # 000002E9
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C1          # a1 = 000039C1
    lui     a1, %hi(func_80A67D48)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A67D48) # a1 = 80A67D48
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67D48:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    bnel    v0, $zero, lbl_80A67D88    
    lbu     t9, 0x02E8(s0)             # 000002E8
    lbu     t6, 0x02E9(s0)             # 000002E9
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    bne     t8, $zero, lbl_80A67DF0    
    sb      t7, 0x02E9(s0)             # 000002E9
    lbu     t9, 0x02E8(s0)             # 000002E8
lbl_80A67D88:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t9, $at, lbl_80A67DA8      
    nop
    jal     func_80A674D4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A67DF4 
    lw      $ra, 0x002C($sp)           
lbl_80A67DA8:
    jal     func_8008A194              
    addiu   a0, a0, 0x2538             # a0 = 00002538
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sb      t0, 0x02E8(s0)             # 000002E8
    cvt.s.w $f6, $f4                   
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sw      t1, 0x0014($sp)            
    addiu   a1, a1, 0x2538             # a1 = 06002538
    swc1    $f6, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
lbl_80A67DF0:
    lw      $ra, 0x002C($sp)           
lbl_80A67DF4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67E04:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x33C4             # a0 = 060033C4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4                   
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    sb      t6, 0x02EF(s0)             # 000002EF
    sh      $zero, 0x02F0(s0)          # 000002F0
    sb      t7, 0x02E8(s0)             # 000002E8
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x33C4             # a1 = 060033C4
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_80A67E9C)     # a1 = 80A60000
    sb      $zero, 0x02EC(s0)          # 000002EC
    addiu   a1, a1, %lo(func_80A67E9C) # a1 = 80A67E9C
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A67E9C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x02F0(s0)             # 000002F0
    addiu   t7, t6, 0x01C2             # t7 = 000001C2
    sh      t7, 0x02F0(s0)             # 000002F0
    jal     func_800636C4              # sins?
    lh      a0, 0x02F0(s0)             # 000002F0
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f8                   # $f8 = 11.00
    c.le.s  $f4, $f0                   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bc1f    lbl_80A67EF0               
    lui     $at, 0x4110                # $at = 41100000
    beq     $zero, $zero, lbl_80A67EF8 
    swc1    $f0, 0x0158(s0)            # 00000158
lbl_80A67EF0:
    neg.s   $f6, $f0                   
    swc1    $f6, 0x0158(s0)            # 00000158
lbl_80A67EF8:
    lwc1    $f0, 0x0154(s0)            # 00000154
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A67F18               
    c.lt.s  $f10, $f0                  
    sb      t8, 0x02EF(s0)             # 000002EF
    lwc1    $f0, 0x0154(s0)            # 00000154
    c.lt.s  $f10, $f0                  
lbl_80A67F18:
    nop
    bc1fl   lbl_80A67F3C               
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f16                  # $f16 = 13.00
    nop
    c.lt.s  $f0, $f16                  
    nop
    bc1t    lbl_80A67F6C               
    lui     $at, 0x4150                # $at = 41500000
lbl_80A67F3C:
    mtc1    $at, $f18                  # $f18 = 13.00
    lui     $at, 0x4190                # $at = 41900000
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80A67FE0               
    sb      $zero, 0x02EE(s0)          # 000002EE
    mtc1    $at, $f4                   # $f4 = 18.00
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A67FE0               
    sb      $zero, 0x02EE(s0)          # 000002EE
lbl_80A67F6C:
    lbu     t9, 0x02EC(s0)             # 000002EC
    bnel    t9, $zero, lbl_80A67FBC    
    lb      t2, 0x02EE(s0)             # 000002EE
    lbu     t0, 0x02EB(s0)             # 000002EB
    lui     $at, 0x4120                # $at = 41200000
    beql    t0, $zero, lbl_80A67FBC    
    lb      t2, 0x02EE(s0)             # 000002EE
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.lt.s  $f0, $f6                   
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    bc1fl   lbl_80A67FBC               
    lb      t2, 0x02EE(s0)             # 000002EE
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t1, 0x0032(s0)             # 00000032
    sh      t1, 0x00B6(s0)             # 000000B6
    lb      t2, 0x02EE(s0)             # 000002EE
lbl_80A67FBC:
    or      a0, s0, $zero              # a0 = 00000000
    bgezl   t2, lbl_80A67FD4           
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3929          # a1 = 00003929
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80A67FD4:
    beq     $zero, $zero, lbl_80A67FE0 
    sb      t3, 0x02EE(s0)             # 000002EE
    sb      $zero, 0x02EE(s0)          # 000002EE
lbl_80A67FE0:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A67FFC    
    lw      $ra, 0x0024($sp)           
    jal     func_80A6800C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A67FFC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6800C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3DBC             # a0 = 06003DBC
    mtc1    v0, $f4                    # $f4 = 0.00
    sb      $zero, 0x02EE(s0)          # 000002EE
    lb      t6, 0x02EE(s0)             # 000002EE
    cvt.s.w $f6, $f4                   
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    sb      t7, 0x02E8(s0)             # 000002E8
    sb      t6, 0x02EF(s0)             # 000002EF
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x3DBC             # a1 = 06003DBC
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_80A68098)     # a1 = 80A70000
    addiu   a1, a1, %lo(func_80A68098) # a1 = 80A68098
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A68098:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A680D4    
    lw      $ra, 0x0014($sp)           
    jal     func_80A674D4              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A67218              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A680D4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A680E0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x33C4             # a0 = 060033C4
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cvt.s.w $f8, $f6                   
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f10                  # $f10 = -4.00
    sb      t6, 0x02E8(s0)             # 000002E8
    sb      t7, 0x02EF(s0)             # 000002EF
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x33C4             # a1 = 060033C4
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4150                 # a3 = 41500000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lui     a1, %hi(func_80A68170)     # a1 = 80A70000
    addiu   a1, a1, %lo(func_80A68170) # a1 = 80A68170
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A68170:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063958              
    addiu   a2, $zero, 0x07D0          # a2 = 000007D0
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f4                   # $f4 = 13.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lh      t6, 0x0032(s0)             # 00000032
    lui     $at, 0x4190                # $at = 41900000
    c.lt.s  $f4, $f0                   
    sh      t6, 0x00B6(s0)             # 000000B6
    bc1fl   lbl_80A681F8               
    sb      $zero, 0x02EE(s0)          # 000002EE
    mtc1    $at, $f6                   # $f6 = 18.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A681F8               
    sb      $zero, 0x02EE(s0)          # 000002EE
    lb      t7, 0x02EE(s0)             # 000002EE
    or      a0, s0, $zero              # a0 = 00000000
    bgezl   t7, lbl_80A681EC           
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3929          # a1 = 00003929
    addiu   t8, $zero, 0x0001          # t8 = 00000001
lbl_80A681EC:
    beq     $zero, $zero, lbl_80A681F8 
    sb      t8, 0x02EE(s0)             # 000002EE
    sb      $zero, 0x02EE(s0)          # 000002EE
lbl_80A681F8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A68220    
    lw      $ra, 0x001C($sp)           
    jal     func_80A6800C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A67218              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_80A68220:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A68230:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x485C             # a0 = 0600485C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    cvt.s.w $f6, $f4                   
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    sb      $zero, 0x02EE(s0)          # 000002EE
    sb      t6, 0x02E8(s0)             # 000002E8
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x485C             # a1 = 0600485C
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_80A682BC)     # a1 = 80A70000
    addiu   a1, a1, %lo(func_80A682BC) # a1 = 80A682BC
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A682BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, a3, 0x03DC             # a2 = 000003DC
    sw      a3, 0x0018($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
    lw      a3, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80A683C0    
    lw      a3, 0x0018($sp)            
    lh      t7, 0x008A(a3)             # 0000008A
    lh      t8, 0x00B6(a3)             # 000000B6
    subu    v0, t7, t8                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A68320           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80A68320 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A68320:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80A683B8   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A683B8               
    nop
    lwc1    $f0, 0x0094(a3)            # 00000094
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t9, 0x001C($sp)            
    mtc1    $at, $f10                  # $f10 = 150.00
    c.le.s  $f8, $f0                   
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t9                 
    bc1fl   lbl_80A68378               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80A68378 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80A68378:
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_80A683B8               
    nop
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A683A8    
    nop
    jal     func_80A67A64              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A683C4 
    lw      $ra, 0x0014($sp)           
lbl_80A683A8:
    jal     func_80A67E04              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A683C4 
    lw      $ra, 0x0014($sp)           
lbl_80A683B8:
    jal     func_80A674D4              
    or      a0, a3, $zero              # a0 = 00000000
lbl_80A683C0:
    lw      $ra, 0x0014($sp)           
lbl_80A683C4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A683D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      a1, 0x0318(s0)             # 00000318
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063F00              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lh      t6, 0x00B6(s0)             # 000000B6
    sb      $zero, 0x02E8(s0)          # 000002E8
    lui     a0, 0x0600                 # a0 = 06000000
    subu    v1, v0, t6                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80A68418           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80A68418 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A68418:
    slti    $at, v0, 0x4001            
    beq     $at, $zero, lbl_80A68478   
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x6194             # a0 = 06006194
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x6194             # a1 = 06006194
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f10                  # $f10 = -6.00
    beq     $zero, $zero, lbl_80A684C8 
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80A68478:
    jal     func_8008A194              
    addiu   a0, a0, 0x45BC             # a0 = 000045BC
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    cvt.s.w $f18, $f16                 
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x45BC             # a1 = 060045BC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0010($sp)          
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80A684C8:
    lui     a1, %hi(func_80A684F0)     # a1 = 80A70000
    sb      $zero, 0x02EE(s0)          # 000002EE
    addiu   a1, a1, %lo(func_80A684F0) # a1 = 80A684F0
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A684F0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0020($sp)            
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mfc1    a1, $f0                    
    mfc1    a2, $f2                    
    mfc1    a3, $f2                    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lh      a3, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02F8             # a1 = 000002F8
    addiu   a3, a3, 0x0004             # a3 = 00000004
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    jal     func_80025F04              
    lw      a2, 0x002C($sp)            
    beq     v0, $zero, lbl_80A68554    
    nop
    sw      $zero, 0x0308(s0)          # 00000308
lbl_80A68554:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A685BC    
    lw      $ra, 0x0024($sp)           
    lh      t6, 0x008A(s0)             # 0000008A
    lh      t7, 0x00B6(s0)             # 000000B6
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A68588           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80A68588 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A68588:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80A685B0   
    nop
    jal     func_80A674D4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A67218              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80A685BC 
    lw      $ra, 0x0024($sp)           
lbl_80A685B0:
    jal     func_80A680E0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A685BC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A685CC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5944             # a0 = 06005944
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4                   
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    sb      $zero, 0x02EE(s0)          # 000002EE
    sb      t6, 0x02E8(s0)             # 000002E8
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x5944             # a1 = 06005944
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    sb      t8, 0x02E9(s0)             # 000002E9
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C0          # a1 = 000039C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393B          # a1 = 0000393B
    lui     a1, %hi(func_80A68678)     # a1 = 80A70000
    addiu   a1, a1, %lo(func_80A68678) # a1 = 80A68678
    jal     func_80A66FC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A68678:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x0070($sp)            
    sw      s1, 0x0064($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    jal     func_8008C9C0              
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80A68824    
    lui     $at, 0x41B8                # $at = 41B80000
    lbu     t6, 0x00AF(s1)             # 000000AF
    bnel    t6, $zero, lbl_80A6884C    
    lw      $ra, 0x0074($sp)           
    lbu     t7, 0x02E9(s1)             # 000002E9
    lui     t8, %hi(var_80A6AEC4)      # t8 = 80A70000
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFE4
    beq     t7, $zero, lbl_80A68848    
    addiu   t8, t8, %lo(var_80A6AEC4)  # t8 = 80A6AEC4
    lw      t0, 0x0000(t8)             # 80A6AEC4
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t0, 0x0000(s2)             # FFFFFFE4
    lw      t9, 0x0004(t8)             # 80A6AEC8
    sw      t9, 0x0004(s2)             # FFFFFFE8
    lw      t0, 0x0008(t8)             # 80A6AECC
    sw      t0, 0x0008(s2)             # FFFFFFEC
    lbu     t1, 0x02E9(s1)             # 000002E9
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    andi    v0, t2, 0x00FF             # v0 = 000000FF
    sra     t3, v0,  1                 
    subu    s0, t4, t3                 
    bltz    s0, lbl_80A687E4           
    sb      t2, 0x02E9(s1)             # 000002E9
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f20                  # $f20 = 120.00
    addiu   s3, $sp, 0x0088            # s3 = FFFFFFF0
lbl_80A6872C:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0088($sp)           
    lwc1    $f8, 0x002C(s1)            # 0000002C
    mov.s   $f12, $f22                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0090($sp)          
    lwc1    $f16, 0x0028(s1)           # 00000028
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    add.s   $f18, $f16, $f24           
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    add.s   $f4, $f0, $f18             
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f4, 0x008C($sp)           
    sw      t4, 0x003C($sp)            
    sw      t2, 0x0038($sp)            
    sw      t1, 0x0034($sp)            
    sw      t0, 0x0030($sp)            
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0020($sp)            
    sw      t7, 0x001C($sp)            
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0010($sp)            
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0028($sp)         
    sw      $zero, 0x0014($sp)         
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s2, $zero              # a2 = FFFFFFE4
    jal     func_8001E1D4              
    or      a3, s2, $zero              # a3 = FFFFFFE4
    addiu   s0, s0, 0xFFFF             # s0 = FFFFFFFF
    bgez    s0, lbl_80A6872C           
    nop
    lbu     v0, 0x02E9(s1)             # 000002E9
lbl_80A687E4:
    bne     v0, $zero, lbl_80A68848    
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, s1, 0x0024             # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x00B0          # a3 = 000000B0
    lh      a1, 0x02F2(s1)             # 000002F2
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     a1, $at, lbl_80A68814      
    nop
    jal     func_800204D0              
    or      a0, s4, $zero              # a0 = 00000000
lbl_80A68814:
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6884C 
    lw      $ra, 0x0074($sp)           
lbl_80A68824:
    mtc1    $at, $f6                   # $f6 = 0.00
    lwc1    $f8, 0x0154(s1)            # 00000154
    or      a0, s1, $zero              # a0 = 00000000
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_80A6884C               
    lw      $ra, 0x0074($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3928          # a1 = 00003928
lbl_80A68848:
    lw      $ra, 0x0074($sp)           
lbl_80A6884C:
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80A68874:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lbu     v0, 0x02E8(s0)             # 000002E8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A68BCC      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80A68BD0      
    lw      $ra, 0x0024($sp)           
    lbu     t6, 0x03ED(s0)             # 000003ED
    lui     a0, 0x0600                 # a0 = 06000000
    andi    t7, t6, 0x0080             # t7 = 00000000
    beql    t7, $zero, lbl_80A6890C    
    lbu     t2, 0x0321(s0)             # 00000321
    jal     func_8008A194              
    addiu   a0, a0, 0x485C             # a0 = 0600485C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    cvt.s.w $f6, $f4                   
    lwc1    $f10, 0x0154(s0)           # 00000154
    sub.s   $f0, $f6, $f8              
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80A688EC               
    lbu     t8, 0x03ED(s0)             # 000003ED
    swc1    $f0, 0x0154(s0)            # 00000154
    lbu     t8, 0x03ED(s0)             # 000003ED
lbl_80A688EC:
    lbu     t0, 0x0321(s0)             # 00000321
    andi    t9, t8, 0xFF7F             # t9 = 00000000
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    sb      t9, 0x03ED(s0)             # 000003ED
    sb      t1, 0x0321(s0)             # 00000321
    beq     $zero, $zero, lbl_80A68BD0 
    lw      $ra, 0x0024($sp)           
    lbu     t2, 0x0321(s0)             # 00000321
lbl_80A6890C:
    addiu   v0, s0, 0x0024             # v0 = 00000024
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80A68BD0    
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x0000(v0)             # 00000024
    addiu   t4, $sp, 0x0038            # t4 = FFFFFFE8
    lui     $at, 0x4248                # $at = 42480000
    sw      t6, 0x0000(t4)             # FFFFFFE8
    lw      t5, 0x0004(v0)             # 00000028
    mtc1    $at, $f18                  # $f18 = 50.00
    or      a0, s0, $zero              # a0 = 00000000
    sw      t5, 0x0004(t4)             # FFFFFFEC
    lw      t6, 0x0008(v0)             # 0000002C
    addiu   a1, s0, 0x0328             # a1 = 00000328
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      t6, 0x0008(t4)             # FFFFFFF0
    lwc1    $f16, 0x003C($sp)          
    sw      v0, 0x0030($sp)            
    add.s   $f4, $f16, $f18            
    jal     func_800283BC              
    swc1    $f4, 0x003C($sp)           
    lbu     t7, 0x00B1(s0)             # 000000B1
    lbu     t8, 0x0321(s0)             # 00000321
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    andi    v0, t7, 0x00FF             # v0 = 00000000
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x0321(s0)             # 00000321
    beq     v0, $zero, lbl_80A689A4    
    sb      t7, 0x02ED(s0)             # 000002ED
    beq     v0, $at, lbl_80A689A4      
    nop
    lbu     t0, 0x02EB(s0)             # 000002EB
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_80A689BC    
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bnel    v0, $at, lbl_80A689C0      
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
lbl_80A689A4:
    beq     v0, $zero, lbl_80A68BCC    
    lw      a0, 0x0054($sp)            
    jal     func_800511B8              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    beq     $zero, $zero, lbl_80A68BD0 
    lw      $ra, 0x0024($sp)           
lbl_80A689BC:
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
lbl_80A689C0:
    sw      t1, 0x0010($sp)            
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     v1, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80028390              
    sb      v1, 0x0049($sp)            
    lh      t2, 0x001C(s0)             # 0000001C
    lbu     v1, 0x0049($sp)            
    beq     t2, $zero, lbl_80A68A24    
    slti    $at, v1, 0x000B            
    bne     $at, $zero, lbl_80A68A1C   
    sw      v1, 0x0030($sp)            
    lbu     t4, 0x00AF(s0)             # 000000AF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a0, s0, 0x02F8             # a0 = 000002F8
    slti    $at, t4, 0x000B            
    beq     $at, $zero, lbl_80A68A1C   
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sb      t5, 0x02EB(s0)             # 000002EB
    jal     func_80025D04              
    lw      a2, 0x0054($sp)            
lbl_80A68A1C:
    beq     $zero, $zero, lbl_80A68A9C 
    lbu     v0, 0x00AF(s0)             # 000000AF
lbl_80A68A24:
    lbu     v0, 0x00AF(s0)             # 000000AF
    lw      a0, 0x0054($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    slti    $at, v0, 0x000B            
    beq     $at, $zero, lbl_80A68A78   
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    jal     func_800265D4              
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    lw      a0, 0x0054($sp)            
    lw      a1, 0x0030($sp)            
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x388B          # a3 = 0000388B
    lh      a1, 0x02F2(s0)             # 000002F2
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    a1, $at, lbl_80A68BD0      
    lw      $ra, 0x0024($sp)           
    jal     func_800204D0              
    lw      a0, 0x0054($sp)            
    beq     $zero, $zero, lbl_80A68BD0 
    lw      $ra, 0x0024($sp)           
lbl_80A68A78:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_80A68A9C      
    sw      v1, 0x0030($sp)            
    lw      a0, 0x0054($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lbu     v0, 0x00AF(s0)             # 000000AF
lbl_80A68A9C:
    bne     v0, $zero, lbl_80A68AC0    
    addiu   a0, s0, 0x0032             # a0 = 00000032
    jal     func_80A685CC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0054($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A68BD0 
    lw      $ra, 0x0024($sp)           
lbl_80A68AC0:
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t8, 0x001C(s0)             # 0000001C
    bnel    t8, $zero, lbl_80A68B40    
    lh      t1, 0x001C(s0)             # 0000001C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A68B40               
    lh      t1, 0x001C(s0)             # 0000001C
    lh      t9, 0x008A(s0)             # 0000008A
    lh      t0, 0x00B6(s0)             # 000000B6
    subu    v0, t9, t0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A68B28           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80A68B28 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A68B28:
    slti    $at, v1, 0x4001            
    bnel    $at, $zero, lbl_80A68B40   
    lh      t1, 0x001C(s0)             # 0000001C
    jal     func_80A680E0              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80A68B40:
    or      a0, s0, $zero              # a0 = 00000000
    beq     t1, $zero, lbl_80A68BAC    
    nop
    lbu     t2, 0x02EB(s0)             # 000002EB
    lw      t3, 0x0030($sp)            
    beq     t2, $zero, lbl_80A68BAC    
    slti    $at, t3, 0x000B            
    bne     $at, $zero, lbl_80A68B88   
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t4, 0x00AF(s0)             # 000000AF
    addiu   a1, $zero, 0x392C          # a1 = 0000392C
    slti    $at, t4, 0x000B            
    beq     $at, $zero, lbl_80A68B88   
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A68B9C 
    nop
lbl_80A68B88:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39BE          # a1 = 000039BE
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393B          # a1 = 0000393B
lbl_80A68B9C:
    jal     func_80A683D0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A68BD0 
    lw      $ra, 0x0024($sp)           
lbl_80A68BAC:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393A          # a1 = 0000393A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39BE          # a1 = 000039BE
    lw      a0, 0x0054($sp)            
    jal     func_80051124              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
lbl_80A68BCC:
    lw      $ra, 0x0024($sp)           
lbl_80A68BD0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80A68BE0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t6, 0x0034($sp)            
    lbu     t7, 0x02EB(s0)             # 000002EB
    jal     func_80A68874              
    sb      t7, 0x02EA(s0)             # 000002EA
    lh      t8, 0x001C(s0)             # 0000001C
    bnel    t8, $zero, lbl_80A68C48    
    lw      t9, 0x02F4(s0)             # 000002F4
    lbu     t9, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0x000B            
    beql    $at, $zero, lbl_80A68C48   
    lw      t9, 0x02F4(s0)             # 000002F4
    jal     func_80A6AC30              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A68DE8 
    lw      $ra, 0x0024($sp)           
    lw      t9, 0x02F4(s0)             # 000002F4
lbl_80A68C48:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     v0, 0x036C(s0)             # 0000036C
    lw      v1, 0x0034($sp)            
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80A68CEC    
    nop
    lw      t2, 0x0360(s0)             # 00000360
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    sb      t1, 0x036C(s0)             # 0000036C
    bne     v1, t2, lbl_80A68CEC       
    nop
    lb      v0, 0x0A68(v1)             # 00000A68
    bgtz    v0, lbl_80A68CC0           
    sb      v0, 0x0033($sp)            
    slti    $at, v0, 0xFFD9            
    beq     $at, $zero, lbl_80A68CA0   
    lui     t9, 0x0001                 # t9 = 00010000
    beq     $zero, $zero, lbl_80A68CC0 
    sb      $zero, 0x0A68(v1)          # 00000A68
lbl_80A68CA0:
    sb      $zero, 0x0A68(v1)          # 00000A68
    addu    t9, t9, s1                 
    lw      t9, 0x1D58(t9)             # 00011D58
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0xFFC0          # a1 = FFFFFFC0
    jalr    $ra, t9                    
    nop
    sb      $zero, 0x02EE(s0)          # 000002EE
lbl_80A68CC0:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    a2, $f0                    
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lbu     t3, 0x0033($sp)            
    lw      t4, 0x0034($sp)            
    sb      t3, 0x0A68(t4)             # 00000A68
lbl_80A68CEC:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   t5, $zero, 0x001D          # t5 = 0000001D
    sw      t5, 0x0014($sp)            
    mfc1    a3, $f0                    
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t6, 0x0028(s0)             # 00000028
    lui     $at, 0x4234                # $at = 42340000
    lw      t7, 0x0024(s0)             # 00000024
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    mtc1    $at, $f6                   # $f6 = 45.00
    sw      t7, 0x0038(s0)             # 00000038
    lw      t7, 0x002C(s0)             # 0000002C
    add.s   $f8, $f4, $f6              
    addiu   a1, s0, 0x0310             # a1 = 00000310
    sw      t7, 0x0040(s0)             # 00000040
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x003C(s0)            # 0000003C
    jal     func_80050B00              
    sw      a1, 0x0028($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x002C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    lbu     t8, 0x00AF(s0)             # 000000AF
    blezl   t8, lbl_80A68DB0           
    lb      t2, 0x02EE(s0)             # 000002EE
    lbu     t0, 0x0114(s0)             # 00000114
    bnel    t0, $zero, lbl_80A68DB0    
    lb      t2, 0x02EE(s0)             # 000002EE
    lbu     t1, 0x02E8(s0)             # 000002E8
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    slti    $at, t1, 0x0002            
    bnel    $at, $zero, lbl_80A68DB0   
    lb      t2, 0x02EE(s0)             # 000002EE
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    lb      t2, 0x02EE(s0)             # 000002EE
lbl_80A68DB0:
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    blezl   t2, lbl_80A68DCC           
    lbu     t9, 0x02E8(s0)             # 000002E8
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x035C             # a2 = 0000035C
    lbu     t9, 0x02E8(s0)             # 000002E8
lbl_80A68DCC:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      a0, s1, $zero              # a0 = 00000000
    bne     t9, $at, lbl_80A68DE4      
    lw      a1, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x03DC             # a2 = 000003DC
lbl_80A68DE4:
    lw      $ra, 0x0024($sp)           
lbl_80A68DE8:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A68DF8:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    andi    t0, a2, 0x00FF             # t0 = 00000000
    sll     t1, t0, 16                 
    sll     t9, a1, 24                 
    andi    t3, a3, 0x00FF             # t3 = 00000000
    sll     t4, t3,  8                 
    or      t2, t9, t1                 # t2 = 00000000
    or      t5, t2, t4                 # t5 = 00000000
    ori     t6, t5, 0x00FF             # t6 = 000000FF
    sw      t6, 0x000C(v1)             # FFFFFFEC
    sw      t7, 0x0008(v1)             # FFFFFFE8
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0010(v1)             # FFFFFFF0
    lbu     t3, 0x0017($sp)            
    lbu     t0, 0x0013($sp)            
    lbu     t6, 0x001B($sp)            
    sll     t2, t3, 16                 
    sll     t9, t0, 24                 
    or      t4, t9, t2                 # t4 = 00000000
    sll     t7, t6,  8                 
    or      t8, t4, t7                 # t8 = FB000000
    ori     t0, t8, 0x00FF             # t0 = FB0000FF
    sw      t0, 0x0014(v1)             # FFFFFFF4
    lui     t1, 0xDF00                 # t1 = DF000000
    sw      t1, 0x0018(v1)             # FFFFFFF8
    sw      $zero, 0x001C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra                        
    nop


func_80A68E9C:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a1, $at, lbl_80A68ED0      
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t6, 0x0014($sp)            
    lui     t8, 0x0602                 # t8 = 06020000
    addiu   t8, t8, 0x8E78             # t8 = 06018E78
    lh      t7, 0x001C(t6)             # 0000001C
    beq     t7, $zero, lbl_80A68F54    
    nop
    beq     $zero, $zero, lbl_80A68F54 
    sw      t8, 0x0000(a2)             # 00000000
lbl_80A68ED0:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a1, $at, lbl_80A68EF8      
    lw      t9, 0x0014($sp)            
    lh      t0, 0x001C(t9)             # 0000001C
    lui     t1, 0x0602                 # t1 = 06020000
    addiu   t1, t1, 0x9100             # t1 = 06019100
    beq     t0, $zero, lbl_80A68F54    
    nop
    beq     $zero, $zero, lbl_80A68F54 
    sw      t1, 0x0000(a2)             # 00000000
lbl_80A68EF8:
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     a1, $at, lbl_80A68F10      
    lw      t2, 0x0014($sp)            
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bnel    a1, $at, lbl_80A68F2C      
    addiu   $at, $zero, 0x001C         # $at = 0000001C
lbl_80A68F10:
    lbu     t3, 0x02EA(t2)             # 000002EA
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80A68F54    
    nop
    beq     $zero, $zero, lbl_80A68F54 
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x001C         # $at = 0000001C
lbl_80A68F2C:
    beq     a1, $at, lbl_80A68F40      
    lw      t5, 0x0014($sp)            
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     a1, $at, lbl_80A68F54      
    nop
lbl_80A68F40:
    lbu     t6, 0x02EA(t5)             # 000002EA
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_80A68F54    
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80A68F54:
    jr      $ra                        
    nop


func_80A68F5C:
    addiu   $sp, $sp, 0xFF10           # $sp = FFFFFF10
    sw      s4, 0x0034($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    lw      s4, 0x0100($sp)            
    sw      $ra, 0x003C($sp)           
    sw      s5, 0x0038($sp)            
    sw      s3, 0x0030($sp)            
    sw      s2, 0x002C($sp)            
    sw      s1, 0x0028($sp)            
    sw      a0, 0x00F0($sp)            
    sw      a1, 0x00F4($sp)            
    sw      a3, 0x00FC($sp)            
    lbu     t7, 0x02EB(s4)             # 000002EB
    lw      t6, 0x00F0($sp)            
    addiu   a0, s4, 0x02F8             # a0 = 000002F8
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80A68FCC    
    lw      s5, 0x0000(t6)             # 00000000
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0010($sp)            
    lw      a1, 0x00F4($sp)            
    addiu   a2, $zero, 0x001A          # a2 = 0000001A
    addiu   a3, $zero, 0x001B          # a3 = 0000001B
    jal     func_80025DFC              
    sw      s0, 0x0014($sp)            
lbl_80A68FCC:
    lw      t1, 0x00F4($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     s2, 0xDA38                 # s2 = DA380000
    bne     t1, $at, lbl_80A69060      
    lw      t9, 0x00F4($sp)            
    ori     s2, s2, 0x0003             # s2 = DA380003
    lw      s1, 0x02D0(s5)             # 000002D0
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s5)             # 000002D0
    sw      s2, 0x0000(s1)             # 00000000
    lw      t3, 0x00F0($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lh      t4, 0x001C(s4)             # 0000001C
    lui     s3, 0xDE00                 # s3 = DE000000
    beq     t4, $zero, lbl_80A6903C    
    nop
    lui     s3, 0xDE00                 # s3 = DE000000
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t6, 0x0602                 # t6 = 06020000
    addiu   t6, t6, 0x9E08             # t6 = 06019E08
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      s3, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A691D8 
    lw      t5, 0x00F4($sp)            
lbl_80A6903C:
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0x6D88             # t8 = 06016D88
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s5)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s3, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A691D8 
    lw      t5, 0x00F4($sp)            
lbl_80A69060:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     t9, $at, lbl_80A691D4      
    lui     a0, %hi(var_80A6AEDC)      # a0 = 80A70000
    addiu   s1, s4, 0x03A8             # s1 = 000003A8
    or      a1, s1, $zero              # a1 = 000003A8
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80A6AEDC)  # a0 = 80A6AEDC
    lui     a0, %hi(var_80A6AEE8)      # a0 = 80A70000
    addiu   s0, s4, 0x039C             # s0 = 0000039C
    or      a1, s0, $zero              # a1 = 0000039C
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80A6AEE8)  # a0 = 80A6AEE8
    lui     a0, %hi(var_80A6AEF4)      # a0 = 80A70000
    addiu   s3, s4, 0x03C0             # s3 = 000003C0
    or      a1, s3, $zero              # a1 = 000003C0
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80A6AEF4)  # a0 = 80A6AEF4
    lui     a0, %hi(var_80A6AF00)      # a0 = 80A70000
    addiu   s2, s4, 0x03B4             # s2 = 000003B4
    or      a1, s2, $zero              # a1 = 000003B4
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80A6AF00)  # a0 = 80A6AF00
    addiu   a0, s4, 0x035C             # a0 = 0000035C
    or      a1, s0, $zero              # a1 = 0000039C
    or      a2, s1, $zero              # a2 = 000003A8
    or      a3, s2, $zero              # a3 = 000003B4
    jal     func_80050B64              
    sw      s3, 0x0010($sp)            
    addiu   s0, $sp, 0x00E4            # s0 = FFFFFFF4
    lui     a0, %hi(var_80A6AEDC)      # a0 = 80A70000
    addiu   a0, a0, %lo(var_80A6AEDC)  # a0 = 80A6AEDC
    jal     func_800AB958              
    or      a1, s0, $zero              # a1 = FFFFFFF4
    addiu   s1, $sp, 0x00D8            # s1 = FFFFFFE8
    lui     a0, %hi(var_80A6AEE8)      # a0 = 80A70000
    addiu   a0, a0, %lo(var_80A6AEE8)  # a0 = 80A6AEE8
    jal     func_800AB958              
    or      a1, s1, $zero              # a1 = FFFFFFE8
    lb      v0, 0x02EE(s4)             # 000002EE
    blez    v0, lbl_80A69124           
    nop
    jal     func_8001A890              
    lw      a0, 0x04B4(s4)             # 000004B4
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = FFFFFFF4
    jal     func_80013F30              
    or      a2, s1, $zero              # a2 = FFFFFFE8
    beq     $zero, $zero, lbl_80A69148 
    lbu     t1, 0x02E8(s4)             # 000002E8
lbl_80A69124:
    bnel    v0, $zero, lbl_80A69148    
    lbu     t1, 0x02E8(s4)             # 000002E8
    jal     func_8001A890              
    lw      a0, 0x04B4(s4)             # 000004B4
    jal     func_80014254              
    or      a0, v0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sb      t0, 0x02EE(s4)             # 000002EE
    lbu     t1, 0x02E8(s4)             # 000002E8
lbl_80A69148:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lui     s1, %hi(var_80A6AF0C)      # s1 = 80A70000
    bne     t1, $at, lbl_80A691D4      
    addiu   s1, s1, %lo(var_80A6AF0C)  # s1 = 80A6AF0C
    lui     s3, %hi(var_80A6AF30)      # s3 = 80A70000
    addiu   s3, s3, %lo(var_80A6AF30)  # s3 = 80A6AF30
    addiu   s2, $sp, 0x0098            # s2 = FFFFFFA8
    addiu   s0, $sp, 0x0074            # s0 = FFFFFF84
lbl_80A69168:
    or      a0, s1, $zero              # a0 = 80A6AF0C
    jal     func_800AB958              
    or      a1, s2, $zero              # a1 = FFFFFFA8
    or      a0, s3, $zero              # a0 = 80A6AF30
    jal     func_800AB958              
    or      a1, s0, $zero              # a1 = FFFFFF84
    addiu   s0, s0, 0x000C             # s0 = FFFFFF90
    addiu   t2, $sp, 0x0098            # t2 = FFFFFFA8
    addiu   s1, s1, 0x000C             # s1 = 80A6AF18
    addiu   s2, s2, 0x000C             # s2 = FFFFFFB4
    bne     s0, t2, lbl_80A69168       
    addiu   s3, s3, 0x000C             # s3 = 80A6AF3C
    addiu   s0, s4, 0x03DC             # s0 = 000003DC
    addiu   t3, $sp, 0x00B0            # t3 = FFFFFFC0
    sw      t3, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 000003DC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x0098            # a2 = FFFFFFA8
    jal     func_80050BD4              
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFB4
    addiu   t4, $sp, 0x008C            # t4 = FFFFFF9C
    sw      t4, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 000003DC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0074            # a2 = FFFFFF84
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0080            # a3 = FFFFFF90
lbl_80A691D4:
    lw      t5, 0x00F4($sp)            
lbl_80A691D8:
    lui     s2, 0xDA38                 # s2 = DA380000
    addiu   $at, $zero, 0x0016         # $at = 00000016
    ori     s2, s2, 0x0003             # s2 = DA380003
    beq     t5, $at, lbl_80A69210      
    lui     s3, 0xDE00                 # s3 = DE000000
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     t5, $at, lbl_80A69254      
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     t5, $at, lbl_80A69298      
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    beql    t5, $at, lbl_80A692F0      
    lbu     t0, 0x02EA(s4)             # 000002EA
    beq     $zero, $zero, lbl_80A6933C 
    lw      $ra, 0x003C($sp)           
lbl_80A69210:
    lw      s1, 0x02D0(s5)             # 000002D0
    addiu   t6, s1, 0x0008             # t6 = 80A6AF20
    sw      t6, 0x02D0(s5)             # 000002D0
    sw      s2, 0x0000(s1)             # 80A6AF18
    lw      t7, 0x00F0($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t7)             # 00000000
    sw      v0, 0x0004(s1)             # 80A6AF1C
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x6F88             # t9 = 06016F88
    addiu   t8, s0, 0x0008             # t8 = 000003E4
    sw      t8, 0x02D0(s5)             # 000002D0
    sw      t9, 0x0004(s0)             # 000003E0
    sw      s3, 0x0000(s0)             # 000003DC
    beq     $zero, $zero, lbl_80A6933C 
    lw      $ra, 0x003C($sp)           
lbl_80A69254:
    lw      s1, 0x02D0(s5)             # 000002D0
    addiu   t0, s1, 0x0008             # t0 = 80A6AF20
    sw      t0, 0x02D0(s5)             # 000002D0
    sw      s2, 0x0000(s1)             # 80A6AF18
    lw      t1, 0x00F0($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t1)             # 00000000
    sw      v0, 0x0004(s1)             # 80A6AF1C
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0x6EE8             # t3 = 06016EE8
    addiu   t2, s0, 0x0008             # t2 = 000003E4
    sw      t2, 0x02D0(s5)             # 000002D0
    sw      t3, 0x0004(s0)             # 000003E0
    sw      s3, 0x0000(s0)             # 000003DC
    beq     $zero, $zero, lbl_80A6933C 
    lw      $ra, 0x003C($sp)           
lbl_80A69298:
    lbu     t4, 0x02EA(s4)             # 000002EA
    andi    t5, t4, 0x0001             # t5 = 00000000
    bnel    t5, $zero, lbl_80A6933C    
    lw      $ra, 0x003C($sp)           
    lw      s1, 0x02D0(s5)             # 000002D0
    addiu   t6, s1, 0x0008             # t6 = 80A6AF20
    sw      t6, 0x02D0(s5)             # 000002D0
    sw      s2, 0x0000(s1)             # 80A6AF18
    lw      t7, 0x00F0($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t7)             # 00000000
    sw      v0, 0x0004(s1)             # 80A6AF1C
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x6BE0             # t9 = 06016BE0
    addiu   t8, s0, 0x0008             # t8 = 000003E4
    sw      t8, 0x02D0(s5)             # 000002D0
    sw      t9, 0x0004(s0)             # 000003E0
    sw      s3, 0x0000(s0)             # 000003DC
    beq     $zero, $zero, lbl_80A6933C 
    lw      $ra, 0x003C($sp)           
    lbu     t0, 0x02EA(s4)             # 000002EA
lbl_80A692F0:
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_80A6933C    
    lw      $ra, 0x003C($sp)           
    lw      s1, 0x02D0(s5)             # 000002D0
    addiu   t2, s1, 0x0008             # t2 = 80A6AF20
    sw      t2, 0x02D0(s5)             # 000002D0
    sw      s2, 0x0000(s1)             # 80A6AF18
    lw      t3, 0x00F0($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s1)             # 80A6AF1C
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x6CD8             # t5 = 06016CD8
    addiu   t4, s0, 0x0008             # t4 = 000003E4
    sw      t4, 0x02D0(s5)             # 000002D0
    sw      t5, 0x0004(s0)             # 000003E0
    sw      s3, 0x0000(s0)             # 000003DC
    lw      $ra, 0x003C($sp)           
lbl_80A6933C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    lw      s4, 0x0034($sp)            
    lw      s5, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00F0           # $sp = 00000000


func_80A6935C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s3, 0x0030($sp)            
    sw      s2, 0x002C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lh      v0, 0x001C(s3)             # 0000001C
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    bne     v0, $zero, lbl_80A69488    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a1, $zero, 0x00F5          # a1 = 000000F5
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    addiu   a3, $zero, 0x009B          # a3 = 0000009B
    jal     func_80A68DF8              
    sw      s0, 0x0068($sp)            
    lw      v1, 0x0068($sp)            
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0024             # t2 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      t3, 0x0010($sp)            
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80A68DF8              
    sw      s0, 0x0064($sp)            
    lw      t0, 0x0064($sp)            
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0028             # t5 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80A68DF8              
    sw      s0, 0x0060($sp)            
    lw      v1, 0x0060($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80A69754 
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A69488:
    bne     v0, $at, lbl_80A6957C      
    lui     t1, 0xDB06                 # t1 = DB060000
    lw      s0, 0x02C0(s1)             # 000002C0
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t3, $zero, 0x0023          # t3 = 00000023
    sw      t3, 0x0014($sp)            
    sw      $zero, 0x0018($sp)         
    sw      t2, 0x0010($sp)            
    addiu   a1, $zero, 0x00F5          # a1 = 000000F5
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00CD          # a3 = 000000CD
    jal     func_80A68DF8              
    sw      s0, 0x005C($sp)            
    lw      v1, 0x005C($sp)            
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a1, $zero, 0x00B9          # a1 = 000000B9
    addiu   a2, $zero, 0x0087          # a2 = 00000087
    addiu   a3, $zero, 0x0019          # a3 = 00000019
    jal     func_80A68DF8              
    sw      s0, 0x0058($sp)            
    lw      t0, 0x0058($sp)            
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80A68DF8              
    sw      s0, 0x0054($sp)            
    lw      v1, 0x0054($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80A69754 
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A6957C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A6966C      
    lui     t6, 0xDB06                 # t6 = DB060000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    addiu   a2, $zero, 0x0041          # a2 = 00000041
    addiu   a3, $zero, 0x0037          # a3 = 00000037
    jal     func_80A68DF8              
    sw      s0, 0x0050($sp)            
    lw      v1, 0x0050($sp)            
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a1, $zero, 0x00CD          # a1 = 000000CD
    addiu   a2, $zero, 0x00A5          # a2 = 000000A5
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    jal     func_80A68DF8              
    sw      s0, 0x004C($sp)            
    lw      t0, 0x004C($sp)            
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0028             # t2 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t3, $zero, 0x0019          # t3 = 00000019
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a1, $zero, 0x00CD          # a1 = 000000CD
    addiu   a2, $zero, 0x00A5          # a2 = 000000A5
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    jal     func_80A68DF8              
    sw      s0, 0x0048($sp)            
    lw      v1, 0x0048($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80A69754 
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A6966C:
    lw      s0, 0x02C0(s1)             # 000002C0
    ori     t6, t6, 0x0020             # t6 = 00000020
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x00B4          # t8 = 000000B4
    addiu   t9, $zero, 0x00B4          # t9 = 000000B4
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80A68DF8              
    sw      s0, 0x0044($sp)            
    lw      v1, 0x0044($sp)            
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0024             # t2 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t3, $zero, 0x0019          # t3 = 00000019
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    addiu   a3, $zero, 0x0073          # a3 = 00000073
    jal     func_80A68DF8              
    sw      s0, 0x0040($sp)            
    lw      t0, 0x0040($sp)            
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x0019          # t7 = 00000019
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    addiu   a3, $zero, 0x0073          # a3 = 00000073
    jal     func_80A68DF8              
    sw      s0, 0x003C($sp)            
    lw      v1, 0x003C($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A69754:
    lw      a2, 0x015C(s3)             # 0000015C
    lbu     a3, 0x013E(s3)             # 0000013E
    lui     t9, %hi(func_80A68E9C)     # t9 = 80A70000
    lui     t1, %hi(func_80A68F5C)     # t1 = 80A70000
    addiu   t1, t1, %lo(func_80A68F5C) # t1 = 80A68F5C
    addiu   t9, t9, %lo(func_80A68E9C) # t9 = 80A68E9C
    sw      t9, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    sw      s3, 0x0018($sp)            
    jal     func_80089D8C              
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80A6979C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_800C6820              
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A697BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x0020($sp)            
    sw      a0, 0x0028($sp)            
    lw      s0, 0x0028($sp)            
    lui     a1, 0x3F80                 # a1 = 3F800000
    addiu   s0, s0, 0x013C             # s0 = 0000013C
    jal     func_8008D6A8              
    or      a0, s0, $zero              # a0 = 0000013C
    beq     v0, $zero, lbl_80A6981C    
    or      a0, s0, $zero              # a0 = 0000013C
    lw      a1, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x39C2          # a0 = 000039C2
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    beq     $zero, $zero, lbl_80A69978 
    lw      $ra, 0x0024($sp)           
lbl_80A6981C:
    jal     func_8008D6A8              
    lui     a1, 0x4204                 # a1 = 42040000
    beq     v0, $zero, lbl_80A69860    
    or      a0, s0, $zero              # a0 = 0000013C
    lw      a1, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x3928          # a0 = 00003928
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    beq     $zero, $zero, lbl_80A69978 
    lw      $ra, 0x0024($sp)           
lbl_80A69860:
    jal     func_8008D6A8              
    lui     a1, 0x4288                 # a1 = 42880000
    bne     v0, $zero, lbl_80A69880    
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x42A0                 # a1 = 42A00000
    beq     v0, $zero, lbl_80A698B4    
    or      a0, s0, $zero              # a0 = 0000013C
lbl_80A69880:
    lw      a1, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x392A          # a0 = 0000392A
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    beq     $zero, $zero, lbl_80A69978 
    lw      $ra, 0x0024($sp)           
lbl_80A698B4:
    jal     func_8008D6A8              
    lui     a1, 0x42D6                 # a1 = 42D60000
    beq     v0, $zero, lbl_80A698F8    
    or      a0, s0, $zero              # a0 = 0000013C
    lw      a1, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x3939          # a0 = 00003939
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    beq     $zero, $zero, lbl_80A69978 
    lw      $ra, 0x0024($sp)           
lbl_80A698F8:
    jal     func_8008D6A8              
    lui     a1, 0x431C                 # a1 = 431C0000
    beq     v0, $zero, lbl_80A6993C    
    or      a0, s0, $zero              # a0 = 0000013C
    lw      a1, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x392A          # a0 = 0000392A
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    beq     $zero, $zero, lbl_80A69978 
    lw      $ra, 0x0024($sp)           
lbl_80A6993C:
    jal     func_8008D6A8              
    lui     a1, 0x433C                 # a1 = 433C0000
    beq     v0, $zero, lbl_80A69974    
    lui     a3, 0x8010                 # a3 = 80100000
    lw      a1, 0x0028($sp)            
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x3938          # a0 = 00003938
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
lbl_80A69974:
    lw      $ra, 0x0024($sp)           
lbl_80A69978:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69988:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    lw      a1, 0x0020($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    addiu   a0, $zero, 0x390D          # a0 = 0000390D
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A699D8:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s7, 0x0064($sp)            
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a0, 0x00B8($sp)            
    sw      a2, 0x00C0($sp)            
    lw      t6, 0x00B8($sp)            
    lui     t8, %hi(var_80A6AF54)      # t8 = 80A70000
    addiu   s8, $sp, 0x00A8            # s8 = FFFFFFF0
    lw      t7, 0x04C4(t6)             # 000004C4
    addiu   t8, t8, %lo(var_80A6AF54)  # t8 = 80A6AF54
    addiu   t1, $sp, 0x009C            # t1 = FFFFFFE4
    bne     t7, $zero, lbl_80A69BA4    
    lui     t2, %hi(var_80A6AF60)      # t2 = 80A70000
    lw      t0, 0x0000(t8)             # 80A6AF54
    addiu   t2, t2, %lo(var_80A6AF60)  # t2 = 80A6AF60
    lui     $at, 0x4396                # $at = 43960000
    sw      t0, 0x0000(s8)             # FFFFFFF0
    lw      t9, 0x0004(t8)             # 80A6AF58
    mtc1    $at, $f26                  # $f26 = 300.00
    lui     $at, 0x4270                # $at = 42700000
    sw      t9, 0x0004(s8)             # FFFFFFF4
    lw      t0, 0x0008(t8)             # 80A6AF5C
    mtc1    $at, $f24                  # $f24 = 60.00
    lui     $at, 0x4120                # $at = 41200000
    sw      t0, 0x0008(s8)             # FFFFFFF8
    lw      t4, 0x0000(t2)             # 80A6AF60
    lw      t3, 0x0004(t2)             # 80A6AF64
    mtc1    $at, $f22                  # $f22 = 10.00
    sw      t4, 0x0000(t1)             # FFFFFFE4
    lw      t4, 0x0008(t2)             # 80A6AF68
    lui     $at, 0x41A0                # $at = 41A00000
    lui     s0, %hi(var_80A6B058)      # s0 = 80A70000
    lui     s6, %hi(var_80A6AF74)      # s6 = 80A70000
    lui     s5, %hi(var_80A6AF70)      # s5 = 80A70000
    lui     s4, %hi(var_80A6AF6C)      # s4 = 80A70000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s4, s4, %lo(var_80A6AF6C)  # s4 = 80A6AF6C
    addiu   s5, s5, %lo(var_80A6AF70)  # s5 = 80A6AF70
    addiu   s6, s6, %lo(var_80A6AF74)  # s6 = 80A6AF74
    addiu   s0, s0, %lo(var_80A6B058)  # s0 = 80A6B058
    addiu   s3, $sp, 0x0080            # s3 = FFFFFFC8
    addiu   s2, $sp, 0x0090            # s2 = FFFFFFD8
    addiu   s1, $sp, 0x0094            # s1 = FFFFFFDC
    sw      t3, 0x0004(t1)             # FFFFFFE8
    sw      t4, 0x0008(t1)             # FFFFFFEC
    lw      t6, 0x0000(s4)             # 80A6AF6C
lbl_80A69AC4:
    lw      t8, 0x0000(s5)             # 80A6AF70
    or      a0, s0, $zero              # a0 = 80A6B058
    or      a1, s3, $zero              # a1 = FFFFFFC8
    sw      t6, 0x0000(s1)             # FFFFFFDC
    jal     func_800AB958              
    sw      t8, 0x0000(s2)             # FFFFFFD8
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20             
    lbu     t0, 0x0094($sp)            
    lbu     t2, 0x0095($sp)            
    lbu     t4, 0x0096($sp)            
    lbu     t6, 0x0090($sp)            
    lbu     t8, 0x0091($sp)            
    sub.s   $f6, $f4, $f22             
    trunc.w.s $f8, $f6                   
    mfc1    v0, $f8                    
    nop
    addu    t1, t0, v0                 
    lbu     t0, 0x0092($sp)            
    sb      t1, 0x0094($sp)            
    addu    t3, t2, v0                 
    addu    t5, t4, v0                 
    addu    t7, t6, v0                 
    addu    t9, t8, v0                 
    addu    t1, t0, v0                 
    sb      t3, 0x0095($sp)            
    sb      t5, 0x0096($sp)            
    sb      t7, 0x0090($sp)            
    sb      t9, 0x0091($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sb      t1, 0x0092($sp)            
    mul.s   $f10, $f0, $f24            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFC8
    or      a2, s8, $zero              # a2 = FFFFFFF0
    addiu   a3, $sp, 0x009C            # a3 = FFFFFFE4
    sw      s1, 0x0010($sp)            
    sw      s2, 0x0014($sp)            
    add.s   $f16, $f10, $f26           
    sw      $zero, 0x001C($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    jal     func_8001BD94              
    sw      t3, 0x0018($sp)            
    addiu   s0, s0, 0xFFF4             # s0 = 80A6B04C
    sltu    $at, s0, s6                
    beql    $at, $zero, lbl_80A69AC4   
    lw      t6, 0x0000(s4)             # 80A6AF6C
    lw      t5, 0x00B8($sp)            
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    or      a1, s7, $zero              # a1 = 00000000
    sw      t4, 0x04C4(t5)             # 000004C4
    lw      a2, 0x00C0($sp)            
    jal     func_80A69988              
    lw      a0, 0x00B8($sp)            
lbl_80A69BA4:
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
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
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_80A69BE4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69C2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69C50:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_80A69C70    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             # 00001D8C
lbl_80A69C6C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A69C70:
    jr      $ra                        
    nop


func_80A69C78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80A69C50              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80A69CE8    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
lbl_80A69CE8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69CF8:
    lwc1    $f0, 0x0154(a0)            # 00000154
    jr      $ra                        
    nop


func_80A69D04:
    sw      $zero, 0x04B8(a0)          # 000004B8
    sw      $zero, 0x04BC(a0)          # 000004BC
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_80A69D18:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xC114             # a0 = 0600C114
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xC114             # a1 = 0600C114
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_80A69C78              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      v0, 0x04B8(s0)             # 000004B8
    sw      v0, 0x04BC(s0)             # 000004BC
    sb      t7, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69DA4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xC114             # a0 = 0600C114
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xC114             # a1 = 0600C114
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t7, 0x04B8(s0)             # 000004B8
    sw      t8, 0x04BC(s0)             # 000004BC
    sw      $zero, 0x04C4(s0)          # 000004C4
    sb      t9, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69E24:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    beq     a2, $zero, lbl_80A69E54    
    lw      a0, 0x001C($sp)            
    jal     func_80A69C50              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80A69E54    
    lw      a0, 0x0018($sp)            
    jal     func_80A6ABC4              
    lw      a1, 0x001C($sp)            
lbl_80A69E54:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69E64:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    addiu   a0, $zero, 0x392B          # a0 = 0000392B
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69EAC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0030($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a2, %hi(var_80A6B570)      # a2 = 80A70000
    addiu   a2, a2, %lo(var_80A6B570)  # a2 = 80A6B570
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFF4
    addu    a0, a0, $at                
    jal     func_8008EC20              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, %hi(var_80A6B570)      # a1 = 80A70000
    addiu   a1, a1, %lo(var_80A6B570)  # a1 = 80A6B570
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x39C0          # a0 = 000039C0
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69F20:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194              
    addiu   a0, a0, 0x03D8             # a0 = 060203D8
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0602                 # a2 = 06020000
    cvt.s.w $f6, $f4                   
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x0234             # t7 = 00000234
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    swc1    $f6, 0x0038($sp)           
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x05C0             # a2 = 060205C0
    sw      a1, 0x0034($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0038($sp)           
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    mfc1    a3, $f0                    
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0x03D8             # a1 = 060203D8
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t0, 0x04B8(s0)             # 000004B8
    sw      t1, 0x04BC(s0)             # 000004BC
    lw      a1, 0x004C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69C78              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69EAC              
    lw      a1, 0x004C($sp)            
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sb      t2, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80A69FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x04B8(a0)             # 000004B8
    sw      t7, 0x04BC(a0)             # 000004BC
    jal     func_80A69E64              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A6A034:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x04B8(a0)             # 000004B8
    sw      $zero, 0x04BC(a0)          # 000004BC
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_80A6A050:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A69BE4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A6A524              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A088:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80A69C2C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A69BE4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A6A524              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A0C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80A69C50              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    bnel    v0, $zero, lbl_80A6A0F8    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A6A0F8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A104:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a1, $at, lbl_80A6A134      
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     a1, $at, lbl_80A6A134      
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bnel    a1, $at, lbl_80A6A160      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6A134:
    jal     func_80A69CF8              
    lw      a0, 0x002C($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      t6, 0x0020($sp)            
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A6A160               
    or      v0, $zero, $zero           # v0 = 00000000
    sw      $zero, 0x0000(t6)          # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6A160:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A170:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    sw      a2, 0x0068($sp)            
    sw      a3, 0x006C($sp)            
    lw      s1, 0x0000(a0)             # 00000000
    addiu   t6, a1, 0xFFF3             # t6 = FFFFFFF3
    sltiu   $at, t6, 0x000F            
    beq     $at, $zero, lbl_80A6A3AC   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80A6B0B4)     # $at = 80A70000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80A6B0B4)($at) 
    jr      t6                         
    nop
var_80A6A1B0:
    jal     func_80A69CF8              
    lw      a0, 0x0070($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     t8, 0xDA38                 # t8 = DA380000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A6A3B0               
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t8, t8, 0x0003             # t8 = DA380003
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x004C($sp)            
    lw      a1, 0x004C($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6D88             # t1 = 06016D88
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A3B0 
    lw      $ra, 0x001C($sp)           
var_80A6A224:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x6F88             # t6 = 06016F88
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A3B0 
    lw      $ra, 0x001C($sp)           
var_80A6A278:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x003C($sp)            
    lw      a1, 0x003C($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6EE8             # t1 = 06016EE8
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A3B0 
    lw      $ra, 0x001C($sp)           
var_80A6A2CC:
    jal     func_80A69CF8              
    lw      a0, 0x0070($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     t3, 0xDA38                 # t3 = DA380000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A6A3B0               
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t3, t3, 0x0003             # t3 = DA380003
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x6BE0             # t6 = 06016BE0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A3B0 
    lw      $ra, 0x001C($sp)           
var_80A6A340:
    jal     func_80A69CF8              
    lw      a0, 0x0070($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     t8, 0xDA38                 # t8 = DA380000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80A6A3B0               
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t8, t8, 0x0003             # t8 = DA380003
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6CD8             # t1 = 06016CD8
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
lbl_80A6A3AC:
    lw      $ra, 0x001C($sp)           
lbl_80A6A3B0:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80A6A3C0:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x0058($sp)            
    lw      s0, 0x0000(a1)             # 00000000
    lw      a0, 0x0058($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80022438              
    sw      a1, 0x005C($sp)            
    jal     func_8007E298              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007E2C0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x0018($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x00F5          # a1 = 000000F5
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    addiu   a3, $zero, 0x009B          # a3 = 0000009B
    jal     func_80A68DF8              
    sw      v1, 0x003C($sp)            
    lw      t0, 0x003C($sp)            
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      t4, 0x0010($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80A68DF8              
    sw      v1, 0x0038($sp)            
    lw      t1, 0x0038($sp)            
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80A68DF8              
    sw      v1, 0x0034($sp)            
    lw      t0, 0x0034($sp)            
    lw      t1, 0x0058($sp)            
    lui     t2, %hi(func_80A6A104)     # t2 = 80A70000
    sw      v0, 0x0004(t0)             # 00000004
    addiu   v1, t1, 0x013C             # v1 = 0000013C
    lw      a1, 0x0004(v1)             # 00000140
    lw      a2, 0x0020(v1)             # 0000015C
    lbu     a3, 0x0002(v1)             # 0000013E
    lui     t3, %hi(func_80A6A170)     # t3 = 80A70000
    addiu   t3, t3, %lo(func_80A6A170) # t3 = 80A6A170
    addiu   t2, t2, %lo(func_80A6A104) # t2 = 80A6A104
    sw      t2, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x005C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A524:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80A69C50              
    sw      a2, 0x002C($sp)            
    beq     v0, $zero, lbl_80A6A60C    
    lw      a2, 0x002C($sp)            
    lhu     t6, 0x0000(v0)             # 00000000
    sw      t6, 0x0020($sp)            
    lw      v1, 0x04C0(s0)             # 000004C0
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0007            
    beql    t6, v1, lbl_80A6A610       
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_80A6A604   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80A6B0F0)     # $at = 80A70000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80A6B0F0)($at) 
    jr      t8                         
    nop
var_80A6A588:
    jal     func_80A69D04              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A598:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69D18              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A5AC:
    jal     func_80A69DA4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A5BC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6ABC4              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A5D0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69F20              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A5E4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69FF8              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A6A608 
    lw      t9, 0x0020($sp)            
var_80A6A5F8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6A034              
    or      a1, a2, $zero              # a1 = 00000000
lbl_80A6A604:
    lw      t9, 0x0020($sp)            
lbl_80A6A608:
    sw      t9, 0x04C0(s0)             # 000004C0
lbl_80A6A60C:
    lw      $ra, 0x001C($sp)           
lbl_80A6A610:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A620:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80A6A524              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A640:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A69BE4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A6A524              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A678:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80A69C2C              
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80A697BC              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A69BE4              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6A524              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_80A69E24              
    lw      a2, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A6DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x04B8(a0)             # 000004B8
    bltz    v0, lbl_80A6A714           
    slti    $at, v0, 0x0006            
    beq     $at, $zero, lbl_80A6A714   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80A6B064)      # v1 = 80A70000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80A6B064)(v1)  
    beql    v1, $zero, lbl_80A6A718    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80A6A714:
    lw      $ra, 0x0014($sp)           
lbl_80A6A718:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A724:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     a1, $at, lbl_80A6A758      
    lw      a0, 0x002C($sp)            
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    beq     a1, $at, lbl_80A6A790      
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beql    a1, $at, lbl_80A6A794      
    sw      $zero, 0x0000(a2)          # 00000000
    beq     $zero, $zero, lbl_80A6A798 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6A758:
    lui     $at, 0x42F0                # $at = 42F00000
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 120.00
    lw      a1, 0x0018($sp)            
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A6A780               
    nop
    beq     $zero, $zero, lbl_80A6A794 
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80A6A780:
    jal     func_80A699D8              
    or      a2, a3, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_80A6A798 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6A790:
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80A6A794:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6A798:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6A7A8:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    sw      a2, 0x0058($sp)            
    sw      a3, 0x005C($sp)            
    lw      s1, 0x0000(a0)             # 00000000
    addiu   t6, a1, 0xFFF4             # t6 = FFFFFFF4
    sltiu   $at, t6, 0x0010            
    beq     $at, $zero, lbl_80A6A984   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80A6B10C)     # $at = 80A70000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80A6B10C)($at) 
    jr      t6                         
    nop
var_80A6A7E8:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0040($sp)            
    lw      a1, 0x0040($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6D88             # t1 = 06016D88
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A988 
    lw      $ra, 0x001C($sp)           
var_80A6A83C:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0038($sp)            
    lw      a1, 0x0038($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x6F88             # t6 = 06016F88
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A988 
    lw      $ra, 0x001C($sp)           
var_80A6A890:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6EE8             # t1 = 06016EE8
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A988 
    lw      $ra, 0x001C($sp)           
var_80A6A8E4:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0028($sp)            
    lw      a1, 0x0028($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x6BE0             # t6 = 06016BE0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80A6A988 
    lw      $ra, 0x001C($sp)           
var_80A6A938:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      s0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x6CD8             # t1 = 06016CD8
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
lbl_80A6A984:
    lw      $ra, 0x001C($sp)           
lbl_80A6A988:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80A6A998:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A6A9A8:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x0058($sp)            
    lw      s0, 0x0000(a1)             # 00000000
    lw      a0, 0x0058($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80022438              
    sw      a1, 0x005C($sp)            
    jal     func_8007E298              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007E2C0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x0018($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x00F5          # a1 = 000000F5
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    addiu   a3, $zero, 0x009B          # a3 = 0000009B
    jal     func_80A68DF8              
    sw      v1, 0x003C($sp)            
    lw      t0, 0x003C($sp)            
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      t4, 0x0010($sp)            
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80A68DF8              
    sw      v1, 0x0038($sp)            
    lw      t1, 0x0038($sp)            
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80A68DF8              
    sw      v1, 0x0034($sp)            
    lw      t0, 0x0034($sp)            
    lw      t1, 0x0058($sp)            
    lui     t2, %hi(func_80A6A724)     # t2 = 80A70000
    sw      v0, 0x0004(t0)             # 00000004
    addiu   v1, t1, 0x013C             # v1 = 0000013C
    lw      a1, 0x0004(v1)             # 00000140
    lw      a2, 0x0020(v1)             # 0000015C
    lbu     a3, 0x0002(v1)             # 0000013E
    lui     t3, %hi(func_80A6A7A8)     # t3 = 80A70000
    addiu   t3, t3, %lo(func_80A6A7A8) # t3 = 80A6A7A8
    addiu   t2, t2, %lo(func_80A6A724) # t2 = 80A6A724
    sw      t2, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x005C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6AB0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x04BC(a0)             # 000004BC
    bltz    v0, lbl_80A6AB44           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_80A6AB44   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80A6B07C)      # v1 = 80A70000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80A6B07C)(v1)  
    beql    v1, $zero, lbl_80A6AB48    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80A6AB44:
    lw      $ra, 0x0014($sp)           
lbl_80A6AB48:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6AB54:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             # 0000001C
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    t6, $zero, lbl_80A6ABB8    
    lw      $ra, 0x0014($sp)           
    lhu     t7, -0x4B56(t7)            # 8011B4AA
    lui     t9, %hi(func_80A6A6DC)     # t9 = 80A70000
    addiu   t9, t9, %lo(func_80A6A6DC) # t9 = 80A6A6DC
    andi    t8, t7, 0x0800             # t8 = 00000000
    bne     t8, $zero, lbl_80A6ABA4    
    lui     t0, %hi(func_80A6AB0C)     # t0 = 80A70000
    addiu   t0, t0, %lo(func_80A6AB0C) # t0 = 80A6AB0C
    lui     a1, 0x3C23                 # a1 = 3C230000
    sw      t9, 0x0130(a0)             # 00000130
    sw      t0, 0x0134(a0)             # 00000134
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    beq     $zero, $zero, lbl_80A6ABB8 
    lw      $ra, 0x0014($sp)           
lbl_80A6ABA4:
    jal     func_80A6ABC4              
    nop
    jal     func_80A6979C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A6ABB8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6ABC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t8, 0x0004(a0)             # 00000004
    lui     t6, %hi(func_80A68BE0)     # t6 = 80A70000
    lui     t7, %hi(func_80A6935C)     # t7 = 80A70000
    addiu   t6, t6, %lo(func_80A68BE0) # t6 = 80A68BE0
    addiu   t7, t7, %lo(func_80A6935C) # t7 = 80A6935C
    ori     t9, t8, 0x0005             # t9 = 00000005
    sw      t6, 0x0130(a0)             # 00000130
    sw      t7, 0x0134(a0)             # 00000134
    sw      t9, 0x0004(a0)             # 00000004
    lhu     t0, 0x0EDA(v0)             # 8011B4AA
    lui     a1, 0x3C44                 # a1 = 3C440000
    ori     a1, a1, 0x9BA6             # a1 = 3C449BA6
    ori     t1, t0, 0x0800             # t1 = 00000800
    sh      t1, 0x0EDA(v0)             # 8011B4AA
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    jal     func_80A674D4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6AC30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_8009CB08              
    lw      a0, 0x001C($sp)            
    bne     v0, $zero, lbl_80A6ACB4    
    lui     t6, %hi(func_80A6A6DC)     # t6 = 80A70000
    lw      v0, 0x0018($sp)            
    lui     t7, %hi(func_80A6AB0C)     # t7 = 80A70000
    addiu   t6, t6, %lo(func_80A6A6DC) # t6 = 80A6A6DC
    addiu   t7, t7, %lo(func_80A6AB0C) # t7 = 80A6AB0C
    lui     a1, 0x0200                 # a1 = 02000000
    sw      t6, 0x0130(v0)             # 00000130
    sw      t7, 0x0134(v0)             # 00000134
    lw      a0, 0x001C($sp)            
    jal     func_80056F98              
    addiu   a1, a1, 0x3F80             # a1 = 02003F80
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t8, -0x461C($at)           # 8011B9E4
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    lw      a0, 0x0018($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EDA(v0)             # 8011B4AA
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    ori     t0, t9, 0x1000             # t0 = 00001000
    jal     func_80A69F20              
    sh      t0, 0x0EDA(v0)             # 8011B4AA
lbl_80A6ACB4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A6ACC4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t7, 0x8012                 # t7 = 80120000
    andi    t6, v0, 0x00FF             # t6 = 00000000
    bne     t6, $zero, lbl_80A6ACFC    
    andi    v1, v0, 0xFF00             # v1 = 00000000
    lhu     t7, -0x4B56(t7)            # 8011B4AA
    andi    t8, t7, 0x1000             # t8 = 00000000
    bne     t8, $zero, lbl_80A6AD14    
    nop
lbl_80A6ACFC:
    beq     v1, $zero, lbl_80A6AD24    
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    sra     a1, v1,  8                 
    beq     v0, $zero, lbl_80A6AD24    
    nop
lbl_80A6AD14:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6AD8C 
    lw      $ra, 0x002C($sp)           
lbl_80A6AD24:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x0602                 # a2 = 06020000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t9, s0, 0x0180             # t9 = 00000180
    addiu   t0, s0, 0x0234             # t0 = 00000234
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0xC114             # a3 = 0600C114
    addiu   a2, a2, 0xE178             # a2 = 0601E178
    lw      a0, 0x0034($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A66FCC              
    lw      a1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6AB54              
    lw      a1, 0x0034($sp)            
    lw      $ra, 0x002C($sp)           
lbl_80A6AD8C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A6ADA0: .word \
0x0A000939, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, \
0x00190050, 0x00000000, 0x00000000
var_80A6ADCC: .word \
0x02000000, 0x00000000, 0x00000000, 0xFFC3FFFF, \
0x00000000, 0x00090000, 0xC1200000, 0x41600000, \
0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0x41600000, 0x40000000, 0x02000000, \
0x00000000, 0x00000000, 0xFFC3FFFF, 0x00000000, \
0x00090000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0xC0C00000, 0x40000000, 0x41100000, \
0x41600000, 0x40000000
var_80A6AE44: .word 0x09000D00, 0x00020000, 0x00000002
.word var_80A6ADCC
var_80A6AE54: .word \
0x0A110000, 0x00030000, 0x00000000, 0x20000000, \
0x00400000, 0x00000000, 0x00000000, 0x81000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A6AEA4: .word \
0xD0F2E1F2, 0xD0E2F2D0, 0xF1F2F4E2, 0xE2E2E2E2, \
0xEF606060, 0x0000F1F4, 0xF2F2F8F4, 0xFA00F400
var_80A6AEC4: .word \
0x00000000, 0x3F000000, 0x00000000, 0x43960000, \
0x00000000, 0x00000000
var_80A6AEDC: .word 0x44480000, 0xC3480000, 0xC5A28000
var_80A6AEE8: .word 0x00000000, 0x00000000, 0x00000000
var_80A6AEF4: .word 0xC3480000, 0xC5098000, 0xC3480000
var_80A6AF00: .word 0xC5BB8000, 0x44FA0000, 0xC53B8000
var_80A6AF0C: .word \
0xC53B8000, 0xC42F0000, 0xC59C4000, 0xC53B8000, \
0xC42F0000, 0x44FA0000, 0x457A0000, 0xC42F0000, \
0x44FA0000
var_80A6AF30: .word \
0x457A0000, 0xC42F0000, 0x44FA0000, 0x457A0000, \
0xC42F0000, 0xC59C4000, 0xC53B8000, 0xC42F0000, \
0xC59C4000
var_80A6AF54: .word 0x00000000, 0x00000000, 0x00000000
var_80A6AF60: .word 0x00000000, 0x3E99999A, 0x00000000
var_80A6AF6C: .word 0xC8C8C8FF
var_80A6AF70: .word 0x96969600
var_80A6AF74: .word \
0x447A0000, 0xC47A0000, 0x447A0000, 0x00000000, \
0xC47A0000, 0x00000000, 0xC47A0000, 0xC59C4000, \
0xC57A0000, 0x447A0000, 0xC59C4000, 0xC53B8000, \
0xC47A0000, 0x447A0000, 0xC5BB8000, 0xC47A0000, \
0x453B8000, 0xC59C4000, 0xC4480000, 0x447A0000, \
0xC53B8000, 0x00000000, 0xC57A0000, 0xC4FA0000, \
0xC47A0000, 0xC4FA0000, 0xC5BB8000, 0x447A0000, \
0xC53B8000, 0x00000000, 0x44FA0000, 0xC4FA0000, \
0xC57A0000, 0xC47A0000, 0x00000000, 0xC5BB8000, \
0x447A0000, 0xC4FA0000, 0xC4FA0000, 0x00000000, \
0xC4FA0000, 0x45034000, 0x00000000, 0x00000000, \
0x00000000, 0x447A0000, 0xC47A0000, 0xC5BB8000, \
0x44FA0000, 0x00000000, 0xC53B8000, 0xC47A0000, \
0xC47A0000, 0xC57A0000, 0x44610000, 0xC4480000, \
0x4528C000
var_80A6B058: .word 0x44340000, 0x44610000, 0x451C4000
var_80A6B064: .word func_80A6A620
.word func_80A6A640
.word func_80A6A678
.word func_80A6A050
.word func_80A6A088
.word func_80A6A0C8
var_80A6B07C: .word func_80A6A998
.word func_80A6A9A8
.word func_80A6A3C0
var_80A6B088: .word 0x01130900, 0x00000010, 0x01060000, 0x000004CC
.word func_80A6ACC4
.word func_80A66F40
.word func_80A6A6DC
.word func_80A6AB0C
.word 0x00000000, 0x00000000

.section .rodata

var_80A6B0B0: .word 0x3F666666
var_80A6B0B4: .word var_80A6A1B0
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word lbl_80A6A3AC
.word var_80A6A224
.word lbl_80A6A3AC
.word var_80A6A278
.word lbl_80A6A3AC
.word var_80A6A2CC
.word var_80A6A340
var_80A6B0F0: .word var_80A6A588
.word var_80A6A598
.word var_80A6A5AC
.word var_80A6A5BC
.word var_80A6A5D0
.word var_80A6A5E4
.word var_80A6A5F8
var_80A6B10C: .word var_80A6A7E8
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word lbl_80A6A984
.word var_80A6A83C
.word lbl_80A6A984
.word var_80A6A890
.word lbl_80A6A984
.word var_80A6A8E4
.word var_80A6A938
.word 0x00000000

.bss

var_80A6B570: .space 0x10
