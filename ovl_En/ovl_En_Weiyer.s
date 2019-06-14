#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B3AA10:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_80B3C274)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B3C274)  # a1 = 80B3C274
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_8001EC20              
    lui     a3, 0x4282                 # a3 = 42820000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0188             # t6 = 00000188
    addiu   t7, s0, 0x01FA             # t7 = 000001FA
    addiu   t8, $zero, 0x0013          # t8 = 00000013
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x12AC             # a3 = 060012AC
    addiu   a2, a2, 0x3410             # a2 = 06003410
    lw      a0, 0x003C($sp)            
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0274             # a1 = 00000274
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80B3C220)      # a3 = 80B40000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B3C220)  # a3 = 80B3C220
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80B3C254)      # a1 = 80B40000
    lui     a2, %hi(var_80B3C24C)      # a2 = 80B40000
    addiu   a2, a2, %lo(var_80B3C24C)  # a2 = 80B3C24C
    addiu   a1, a1, %lo(var_80B3C254)  # a1 = 80B3C254
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     t9, %hi(func_80B3AFA0)     # t9 = 80B40000
    addiu   t9, t9, %lo(func_80B3AFA0) # t9 = 80B3AFA0
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AAE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0274             # a1 = 00000274
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AB0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x00B6(a3)             # 000000B6
    lui     $at, %hi(var_80B3C280)     # $at = 80B40000
    sh      t6, 0x0186(a3)             # 00000186
    sw      a3, 0x0018($sp)            
    jal     func_800D2CD0              
    lwc1    $f12, %lo(var_80B3C280)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lw      a3, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0028(a3)            # 00000028
    addiu   a1, a1, 0x0FC0             # a1 = 06000FC0
    lui     a2, 0xC0A0                 # a2 = C0A00000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    add.s   $f10, $f6, $f8             
    jal     func_8008D328              
    swc1    $f10, 0x026C(a3)           # 0000026C
    lw      a3, 0x0018($sp)            
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f2                   # $f2 = 2.50
    lwc1    $f0, 0x0068(a3)            # 00000068
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    lui     t0, %hi(func_80B3B084)     # t0 = 80B40000
    c.lt.s  $f2, $f0                   
    addiu   t0, t0, %lo(func_80B3B084) # t0 = 80B3B084
    sh      t7, 0x0184(a3)             # 00000184
    bc1fl   lbl_80B3AB98               
    swc1    $f0, 0x0068(a3)            # 00000068
    beq     $zero, $zero, lbl_80B3AB98 
    swc1    $f2, 0x0068(a3)            # 00000068
    swc1    $f0, 0x0068(a3)            # 00000068
lbl_80B3AB98:
    lbu     t8, 0x0284(a3)             # 00000284
    lwc1    $f16, 0x0080(a3)           # 00000080
    sw      t0, 0x0180(a3)             # 00000180
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t9, 0x0284(a3)             # 00000284
    swc1    $f16, 0x0270(a3)           # 00000270
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3ABC0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0FC0             # a1 = 06000FC0
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lbu     t6, 0x0284(a3)             # 00000284
    lui     t8, %hi(func_80B3B3C8)     # t8 = 80B40000
    addiu   t8, t8, %lo(func_80B3B3C8) # t8 = 80B3B3C8
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0284(a3)             # 00000284
    sh      $zero, 0x0184(a3)          # 00000184
    sw      t8, 0x0180(a3)             # 00000180
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AC20:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f4                   # $f4 = -8.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0288             # a1 = 06000288
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f0, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    lbu     t7, 0x0284(s0)             # 00000284
    lui     t9, %hi(func_80B3B4CC)     # t9 = 80B40000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t9, t9, %lo(func_80B3B4CC) # t9 = 80B3B4CC
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x0184(s0)             # 00000184
    sb      t8, 0x0284(s0)             # 00000284
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AC94:
    lbu     t7, 0x0284(a0)             # 00000284
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     t9, %hi(func_80B3B5D4)     # t9 = 80B40000
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t9, t9, %lo(func_80B3B5D4) # t9 = 80B3B5D4
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x0184(a0)             # 00000184
    sb      t8, 0x0284(a0)             # 00000284
    sw      t9, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0158(a0)            # 00000158
    jr      $ra                        
    nop


func_80B3ACC8:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f2                   # $f2 = 4.00
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    lwc1    $f0, 0x0068(a0)            # 00000068
    lh      t7, 0x008A(a0)             # 0000008A
    lwc1    $f4, 0x0028(a0)            # 00000028
    c.lt.s  $f2, $f0                   
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, t7, $at                
    sh      t6, 0x0184(a0)             # 00000184
    sh      t8, 0x0186(a0)             # 00000186
    bc1f    lbl_80B3AD04               
    swc1    $f4, 0x026C(a0)            # 0000026C
    beq     $zero, $zero, lbl_80B3AD08 
    swc1    $f2, 0x0068(a0)            # 00000068
lbl_80B3AD04:
    swc1    $f0, 0x0068(a0)            # 00000068
lbl_80B3AD08:
    lbu     t9, 0x0284(a0)             # 00000284
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     t1, %hi(func_80B3B7BC)     # t1 = 80B40000
    addiu   t1, t1, %lo(func_80B3B7BC) # t1 = 80B3B7BC
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sb      t0, 0x0284(a0)             # 00000284
    sw      t1, 0x0180(a0)             # 00000180
    swc1    $f6, 0x0158(a0)            # 00000158
    jr      $ra                        
    nop


func_80B3AD34:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0FC0             # a1 = 06000FC0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f0, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lbu     t7, 0x0284(s0)             # 00000284
    lbu     t9, 0x0285(s0)             # 00000285
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sh      t6, 0x0184(s0)             # 00000184
    sb      t8, 0x0284(s0)             # 00000284
    sb      t0, 0x0285(s0)             # 00000285
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0068(s0)            # 00000068
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t2, %hi(var_80B3C242)      # t2 = 80B40000
    lh      t2, %lo(var_80B3C242)(t2)  
    lui     t3, %hi(func_80B3B970)     # t3 = 80B40000
    addiu   t3, t3, %lo(func_80B3B970) # t3 = 80B3B970
    sw      t3, 0x0180(s0)             # 00000180
    sh      t2, 0x02B6(s0)             # 000002B6
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3ADF4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f4                   # $f4 = -8.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0288             # a1 = 06000288
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f0, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x0184(s0)             # 00000184
    lui     t7, %hi(var_80B3C242)      # t7 = 80B40000
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f6, 0x006C(s0)            # 0000006C
    lh      t7, %lo(var_80B3C242)(t7)  
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, t7, 0x000F             # t8 = 80B4000F
    sh      t8, 0x02B6(s0)             # 000002B6
    sw      t9, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t0, 0x0284(s0)             # 00000284
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    jal     func_80022FD0              
    sb      t1, 0x0284(s0)             # 00000284
    lui     t2, %hi(func_80B3BB5C)     # t2 = 80B40000
    addiu   t2, t2, %lo(func_80B3BB5C) # t2 = 80B3BB5C
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AEB8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0FC0             # a1 = 06000FC0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D328              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t6, 0x0184(s0)             # 00000184
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t8, 0x0284(s0)             # 00000284
    lbu     t0, 0x0285(s0)             # 00000285
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     t2, %hi(func_80B3BA58)     # t2 = 80B40000
    addiu   t2, t2, %lo(func_80B3BA58) # t2 = 80B3BA58
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sb      t9, 0x0284(s0)             # 00000284
    sb      t1, 0x0285(s0)             # 00000285
    sw      t2, 0x0180(s0)             # 00000180
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3AF44:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t8, %hi(func_80B3BADC)     # t8 = 80B40000
    lhu     t6, 0x0112(a0)             # 00000112
    addiu   t8, t8, %lo(func_80B3BADC) # t8 = 80B3BADC
    swc1    $f0, 0x0068(a0)            # 00000068
    ori     t7, t6, 0x2000             # t7 = 00002000
    swc1    $f0, 0x0060(a0)            # 00000060
    sh      t7, 0x0112(a0)             # 00000112
    sw      t8, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80B3AF70:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     t8, %hi(func_80B3BC40)     # t8 = 80B40000
    addiu   t6, $zero, 0xE000          # t6 = FFFFE000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, t8, %lo(func_80B3BC40) # t8 = 80B3BC40
    sh      t6, 0x00B4(a0)             # 000000B4
    sh      t7, 0x0184(a0)             # 00000184
    sw      t8, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra                        
    nop


func_80B3AFA0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0028(s0)            # 00000028
    addiu   t6, s0, 0x0024             # t6 = 00000024
    addiu   a1, s0, 0x0078             # a1 = 00000078
    add.s   $f8, $f4, $f6              
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF8
    or      a3, s0, $zero              # a3 = 00000000
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      a0, 0x003C($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_8002F4B8              # Raycast
    sw      a0, 0x002C($sp)            
    swc1    $f0, 0x0080(s0)            # 00000080
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t7, s0, 0x000C             # t7 = 0000000C
    addiu   t8, $sp, 0x0034            # t8 = FFFFFFFC
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a1, 0x002C($sp)            
    jal     func_80034908              
    lw      a0, 0x003C($sp)            
    beq     v0, $zero, lbl_80B3B03C    
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f0, 0x0080(s0)            # 00000080
    sub.s   $f2, $f10, $f16            
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B3B050               
    swc1    $f2, 0x000C(s0)            # 0000000C
lbl_80B3B03C:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B074 
    lw      $ra, 0x0024($sp)           
    swc1    $f2, 0x000C(s0)            # 0000000C
lbl_80B3B050:
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    add.s   $f4, $f18, $f0             
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f4, $f6              
    jal     func_80B3AB0C              
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      $ra, 0x0024($sp)           
lbl_80B3B074:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B084:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sw      v0, 0x0034($sp)            
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f4, 0x0030($sp)           
    jal     func_8006385C              
    lw      a1, 0x0270(s0)             # 00000270
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f6, 0x0030($sp)           
    lui     $at, %hi(var_80B3C284)     # $at = 80B40000
    lwc1    $f16, %lo(var_80B3C284)($at) 
    sub.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800D2CD0              
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f18, 0x026C(s0)           # 0000026C
    lui     $at, 0x4234                # $at = 42340000
    mul.s   $f6, $f0, $f4              
    mtc1    $at, $f10                  # $f10 = 45.00
    lui     a1, 0x3FA6                 # a1 = 3FA60000
    ori     a1, a1, 0x6666             # a1 = 3FA66666
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    sub.s   $f8, $f18, $f6             
    swc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x0030($sp)          
    c.le.s  $f16, $f10                 
    nop
    bc1f    lbl_80B3B160               
    nop
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80B3B16C 
    lhu     t6, 0x0088(s0)             # 00000088
lbl_80B3B160:
    jal     func_8006385C              
    ori     a2, a2, 0xC28F             # a2 = 0000C28F
    lhu     t6, 0x0088(s0)             # 00000088
lbl_80B3B16C:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x00B6          # a2 = 000000B6
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80B3B190    
    nop
    lh      t8, 0x007E(s0)             # 0000007E
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sh      t9, 0x0184(s0)             # 00000184
    sh      t8, 0x0186(s0)             # 00000186
lbl_80B3B190:
    jal     func_80063704              
    lh      a1, 0x0186(s0)             # 00000186
    beql    v0, $zero, lbl_80B3B240    
    lwc1    $f2, 0x000C(s0)            # 0000000C
    lh      v0, 0x0184(s0)             # 00000184
    addiu   a0, $zero, 0x2000          # a0 = 00002000
    beq     v0, $zero, lbl_80B3B1B8    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0184(s0)             # 00000184
    lh      v0, 0x0184(s0)             # 00000184
lbl_80B3B1B8:
    bnel    v0, $zero, lbl_80B3B240    
    lwc1    $f2, 0x000C(s0)            # 0000000C
    jal     func_80063BF0              
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0026($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lh      t1, 0x0026($sp)            
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80B3B1F8               
    nop
    beq     $zero, $zero, lbl_80B3B1F8 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80B3B1F8:
    multu   v0, t1                     
    lh      t3, 0x00B6(s0)             # 000000B6
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      t5, 0x0184(s0)             # 00000184
    mflo    t2                         
    addu    t4, t2, t3                 
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x0186(s0)             # 00000186
    lui     $at, %hi(var_80B3C288)     # $at = 80B40000
    lwc1    $f18, %lo(var_80B3C288)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B3B240               
    lwc1    $f2, 0x000C(s0)            # 0000000C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A3          # a1 = 000039A3
    lwc1    $f2, 0x000C(s0)            # 0000000C
lbl_80B3B240:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      t6, 0x003C($sp)            
    c.lt.s  $f2, $f6                   
    nop
    bc1fl   lbl_80B3B2B4               
    lw      t7, 0x1C44(t6)             # 00001C44
    lwc1    $f8, 0x0080(s0)            # 00000080
    c.lt.s  $f2, $f8                   
    nop
    bc1f    lbl_80B3B27C               
    nop
    jal     func_80B3ABC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B3B8 
    lw      $ra, 0x001C($sp)           
lbl_80B3B27C:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0028(s0)            # 00000028
    lwc1    $f2, 0x0080(s0)            # 00000080
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    sub.s   $f16, $f10, $f2            
    mul.s   $f18, $f16, $f4            
    nop
    mul.s   $f6, $f0, $f18             
    add.s   $f8, $f6, $f2              
    beq     $zero, $zero, lbl_80B3B3B4 
    swc1    $f8, 0x0270(s0)            # 00000270
    lw      t7, 0x1C44(t6)             # 00001C44
lbl_80B3B2B4:
    lw      t0, 0x0034($sp)            
    sw      t7, 0x002C($sp)            
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B3B300    
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f2, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x0080(s0)           # 00000080
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    sub.s   $f16, $f2, $f10            
    mul.s   $f18, $f16, $f4            
    nop
    mul.s   $f6, $f0, $f18             
    sub.s   $f8, $f2, $f6              
    beq     $zero, $zero, lbl_80B3B348 
    swc1    $f8, 0x0270(s0)            # 00000270
lbl_80B3B300:
    beql    t0, $zero, lbl_80B3B34C    
    lui     $at, 0x43C8                # $at = 43C80000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B3C28C)     # $at = 80B40000
    lwc1    $f10, %lo(var_80B3C28C)($at) 
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80B3B34C               
    lui     $at, 0x43C8                # $at = 43C80000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f2, 0x0080(s0)            # 00000080
    lwc1    $f16, 0x000C(s0)           # 0000000C
    sub.s   $f4, $f16, $f2             
    mul.s   $f18, $f0, $f4             
    add.s   $f6, $f18, $f2             
    swc1    $f6, 0x0270(s0)            # 00000270
lbl_80B3B348:
    lui     $at, 0x43C8                # $at = 43C80000
lbl_80B3B34C:
    mtc1    $at, $f10                  # $f10 = 400.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80B3B3B8               
    lw      $ra, 0x001C($sp)           
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f16                  # $f16 = 250.00
    abs.s   $f0, $f0                   
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80B3B3B8               
    lw      $ra, 0x001C($sp)           
    lwc1    $f18, 0x000C(s0)           # 0000000C
    mtc1    $at, $f6                   # $f6 = 20.00
    lw      t1, 0x002C($sp)            
    add.s   $f8, $f18, $f6             
    lwc1    $f4, 0x0028(t1)            # 00000028
    c.lt.s  $f4, $f8                   
    nop
    bc1fl   lbl_80B3B3B8               
    lw      $ra, 0x001C($sp)           
    jal     func_80B3AC94              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B3B3B4:
    lw      $ra, 0x001C($sp)           
lbl_80B3B3B8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B3C8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x0184(s0)             # 00000184
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    bne     t6, $zero, lbl_80B3B438    
    addiu   a1, $zero, 0x1800          # a1 = 00001800
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_80063704              
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    beq     v0, $zero, lbl_80B3B428    
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      $zero, 0x00B8(s0)          # 000000B8
    addu    t8, t7, $at                
    sh      t8, 0x00B6(s0)             # 000000B6
    beq     $zero, $zero, lbl_80B3B4B8 
    sh      t9, 0x0184(s0)             # 00000184
lbl_80B3B428:
    lh      t0, 0x00B4(s0)             # 000000B4
    sll     t1, t0,  1                 
    beq     $zero, $zero, lbl_80B3B4B8 
    sh      t1, 0x00B8(s0)             # 000000B8
lbl_80B3B438:
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x000C(s0)            # 0000000C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B3B4A4               
    lhu     t5, 0x0088(s0)             # 00000088
    lh      t2, 0x00B4(s0)             # 000000B4
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    blez    t2, lbl_80B3B490           
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0190          # t4 = 00000190
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    jal     func_8001CF94              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C4          # a1 = 000038C4
lbl_80B3B490:
    jal     func_80B3ACC8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B4BC 
    lw      $ra, 0x0024($sp)           
    lhu     t5, 0x0088(s0)             # 00000088
lbl_80B3B4A4:
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80B3B4BC    
    lw      $ra, 0x0024($sp)           
    jal     func_80B3AC20              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B3B4B8:
    lw      $ra, 0x0024($sp)           
lbl_80B3B4BC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B4CC:
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
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80B3B508    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394E          # a1 = 0000394E
lbl_80B3B508:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0184(s0)             # 00000184
    beq     v1, $zero, lbl_80B3B53C    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
    lh      v1, 0x0184(s0)             # 00000184
lbl_80B3B53C:
    bnel    v1, $zero, lbl_80B3B558    
    lwc1    $f4, 0x0028(s0)            # 00000028
    jal     func_80B3ABC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B578 
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x0028(s0)            # 00000028
lbl_80B3B558:
    lwc1    $f6, 0x000C(s0)            # 0000000C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B3B578               
    lw      $ra, 0x001C($sp)           
    jal     func_80B3AB0C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B3B578:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B588:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    swc1    $f4, 0x0018($sp)           
    lwc1    $f6, 0x0028(v0)            # 00000028
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x001C($sp)          
    lwc1    $f16, 0x002C(v0)           # 0000002C
    jal     func_80021488              
    swc1    $f16, 0x0020($sp)          
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B5D4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x002C($sp)            
    lh      v1, 0x0184(s0)             # 00000184
    lui     $at, 0x41A0                # $at = 41A00000
    beq     v1, $zero, lbl_80B3B614    
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0184(s0)             # 00000184
    lh      v1, 0x0184(s0)             # 00000184
lbl_80B3B614:
    beq     v1, $zero, lbl_80B3B654    
    nop
    lwc1    $f6, 0x000C(s0)            # 0000000C
    mtc1    $at, $f8                   # $f8 = 20.00
    lw      t9, 0x002C($sp)            
    add.s   $f10, $f6, $f8             
    lwc1    $f4, 0x0028(t9)            # 00000028
    c.le.s  $f10, $f4                  
    nop
    bc1t    lbl_80B3B654               
    nop
    lbu     t0, 0x0284(s0)             # 00000284
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80B3B664    
    nop
lbl_80B3B654:
    jal     func_80B3ACC8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B7AC 
    lw      $ra, 0x0024($sp)           
lbl_80B3B664:
    jal     func_80021A28              
    addiu   a1, $zero, 0x2800          # a1 = 00002800
    beq     v0, $zero, lbl_80B3B690    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x4080                 # a1 = 40800000
    beq     $zero, $zero, lbl_80B3B6A8 
    lwc1    $f0, 0x000C(s0)            # 0000000C
lbl_80B3B690:
    lui     a1, 0x3FA6                 # a1 = 3FA60000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_8006385C              
    ori     a1, a1, 0x6666             # a1 = 3FA66666
    lwc1    $f0, 0x000C(s0)            # 0000000C
lbl_80B3B6A8:
    lwc1    $f16, 0x0028(s0)           # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80B3B70C               
    nop
    lwc1    $f18, 0x0080(s0)           # 00000080
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    c.lt.s  $f0, $f18                  
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    bc1fl   lbl_80B3B6FC               
    swc1    $f0, 0x0028(s0)            # 00000028
    sh      $zero, 0x00B4(s0)          # 000000B4
    jal     func_80B3ABC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B7AC 
    lw      $ra, 0x0024($sp)           
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_80B3B6FC:
    jal     func_80064508              
    sw      t2, 0x0010($sp)            
    beq     $zero, $zero, lbl_80B3B738 
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B3B70C:
    jal     func_80B3B588              
    lw      a1, 0x0034($sp)            
    sll     a1, v0, 16                 
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sw      t3, 0x0010($sp)            
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B3B738:
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    sw      t4, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x0200          # a3 = 00000200
    lw      t5, 0x002C($sp)            
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0084(t5)            # 00000084
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80B3B7AC               
    lw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0084(s0)            # 00000084
    mtc1    $at, $f10                  # $f10 = 20.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80B3B7AC               
    lw      $ra, 0x0024($sp)           
    jal     func_80021A28              
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    beql    v0, $zero, lbl_80B3B7AC    
    lw      $ra, 0x0024($sp)           
    jal     func_80B3AF70              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B3B7AC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B7BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lwc1    $f4, 0x0154(s0)            # 00000154
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0080(s0)            # 00000080
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sub.s   $f8, $f6, $f0              
    mul.s   $f16, $f8, $f10            
    add.s   $f18, $f16, $f0            
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x002C($sp)           
    lui     $at, %hi(var_80B3C290)     # $at = 80B40000
    lwc1    $f10, %lo(var_80B3C290)($at) 
    sub.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800D2CD0              
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f16, 0x026C(s0)           # 0000026C
    lui     $at, 0x4234                # $at = 42340000
    mul.s   $f4, $f0, $f18             
    mtc1    $at, $f8                   # $f8 = 45.00
    lui     a1, 0x3FA6                 # a1 = 3FA60000
    ori     a1, a1, 0x6666             # a1 = 3FA66666
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    sub.s   $f6, $f16, $f4             
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C($sp)          
    c.le.s  $f10, $f8                  
    nop
    bc1f    lbl_80B3B8A4               
    nop
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80B3B8B0 
    lh      v0, 0x0184(s0)             # 00000184
lbl_80B3B8A4:
    jal     func_8006385C              
    ori     a2, a2, 0xC28F             # a2 = 0000C28F
    lh      v0, 0x0184(s0)             # 00000184
lbl_80B3B8B0:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     v0, $zero, lbl_80B3B8C8    
    addiu   a3, $zero, 0x0200          # a3 = 00000200
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80B3B8C8:
    lhu     t7, 0x0088(s0)             # 00000088
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    andi    t8, t7, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_80B3B8E8    
    lh      a1, 0x0186(s0)             # 00000186
    lh      t9, 0x007E(s0)             # 0000007E
    sh      t9, 0x0186(s0)             # 00000186
    lh      a1, 0x0186(s0)             # 00000186
lbl_80B3B8E8:
    jal     func_80064508              
    sw      t0, 0x0010($sp)            
    bnel    v0, $zero, lbl_80B3B90C    
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lh      t1, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, t1, $at                
    sh      t2, 0x0186(s0)             # 00000186
    lwc1    $f0, 0x000C(s0)            # 0000000C
lbl_80B3B90C:
    lwc1    $f18, 0x0028(s0)           # 00000028
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B3B94C               
    lh      t3, 0x0184(s0)             # 00000184
    lwc1    $f16, 0x0080(s0)           # 00000080
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80B3B948               
    swc1    $f0, 0x0028(s0)            # 00000028
    jal     func_80B3ABC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3B94C 
    lh      t3, 0x0184(s0)             # 00000184
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_80B3B948:
    lh      t3, 0x0184(s0)             # 00000184
lbl_80B3B94C:
    bnel    t3, $zero, lbl_80B3B960    
    lw      $ra, 0x0024($sp)           
    jal     func_80B3AB0C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B3B960:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3B970:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0184(s0)             # 00000184
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x038E          # a2 = 0000038E
    beq     v0, $zero, lbl_80B3B9A4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80B3B9A4:
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_80B3B9C4    
    lh      t0, 0x008A(s0)             # 0000008A
    lh      t9, 0x007E(s0)             # 0000007E
    beq     $zero, $zero, lbl_80B3B9D0 
    sh      t9, 0x0186(s0)             # 00000186
    lh      t0, 0x008A(s0)             # 0000008A
lbl_80B3B9C4:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, t0, $at                
    sh      t1, 0x0186(s0)             # 00000186
lbl_80B3B9D0:
    jal     func_80063704              
    lh      a1, 0x0186(s0)             # 00000186
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lh      t2, 0x0184(s0)             # 00000184
    lui     $at, %hi(var_80B3C294)     # $at = 80B40000
    lwc1    $f8, %lo(var_80B3C294)($at) 
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, 0x45A0                # $at = 45A00000
    mtc1    $at, $f10                  # $f10 = 5120.00
    lh      t5, 0x0184(s0)             # 00000184
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    bne     t5, $zero, lbl_80B3BA44    
    sh      t4, 0x00B8(s0)             # 000000B8
    lbu     t6, 0x0285(s0)             # 00000285
    sh      $zero, 0x00B8(s0)          # 000000B8
    or      a0, s0, $zero              # a0 = 00000000
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_80B3AB0C              
    sb      t7, 0x0285(s0)             # 00000285
lbl_80B3BA44:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BA58:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    jal     func_80063704              
    addiu   a0, a3, 0x00B4             # a0 = 000000B4
    lw      a3, 0x0018($sp)            
    lh      t6, 0x00B8(a3)             # 000000B8
    lh      v0, 0x0184(a3)             # 00000184
    addiu   t7, t6, 0x1000             # t7 = 00001000
    beq     v0, $zero, lbl_80B3BAAC    
    sh      t7, 0x00B8(a3)             # 000000B8
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0184(a3)             # 00000184
    lh      v0, 0x0184(a3)             # 00000184
lbl_80B3BAAC:
    beq     v0, $zero, lbl_80B3BAC4    
    nop
    lhu     t9, 0x0088(a3)             # 00000088
    andi    t0, t9, 0x0010             # t0 = 00000000
    beql    t0, $zero, lbl_80B3BAD0    
    lw      $ra, 0x0014($sp)           
lbl_80B3BAC4:
    jal     func_80B3AF44              
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80B3BAD0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BADC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x00C8(s0)             # 000000C8
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    addiu   v0, v0, 0xFFFB             # v0 = FFFFFFFB
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgez    v0, lbl_80B3BB18           
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80B3BB1C 
    sb      $zero, 0x00C8(s0)          # 000000C8
lbl_80B3BB18:
    sb      v0, 0x00C8(s0)             # 000000C8
lbl_80B3BB1C:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lbu     t6, 0x00C8(s0)             # 000000C8
    addiu   a2, s0, 0x0024             # a2 = 00000024
    sub.s   $f8, $f4, $f6              
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    bne     t6, $zero, lbl_80B3BB48    
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_80013A84              
    lw      a0, 0x0024($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B3BB48:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BB5C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0184(s0)             # 00000184
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_80B3BB88    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80B3BB88:
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0080(s0)            # 00000080
    lw      a0, 0x0024($sp)            
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B3BC00               
    lh      t9, 0x0184(s0)             # 00000184
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80B3BBE0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394E          # a1 = 0000394E
lbl_80B3BBE0:
    lhu     t7, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80B3BC00    
    lh      t9, 0x0184(s0)             # 00000184
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lh      t9, 0x0184(s0)             # 00000184
lbl_80B3BC00:
    bnel    t9, $zero, lbl_80B3BC30    
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     t0, %hi(var_80B3C242)      # t0 = 80B40000
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f10, 0x0060(s0)           # 00000060
    lh      t0, %lo(var_80B3C242)(t0)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B3AB0C              
    sh      t0, 0x02B6(s0)             # 000002B6
    lw      $ra, 0x001C($sp)           
lbl_80B3BC30:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BC40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x002C($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lw      t8, 0x002C($sp)            
    or      a0, $zero, $zero           # a0 = 00000000
    add.s   $f8, $f4, $f6              
    lwc1    $f10, 0x0028(t8)           # 00000028
    c.le.s  $f8, $f10                  
    nop
    bc1fl   lbl_80B3BC9C               
    lh      v1, 0x0184(s0)             # 00000184
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lh      v1, 0x0184(s0)             # 00000184
lbl_80B3BC9C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80B3BD20      
    nop
    bne     a0, $zero, lbl_80B3BCC0    
    nop
    lbu     t9, 0x0284(s0)             # 00000284
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80B3BCD4    
    lwc1    $f16, 0x0084(s0)           # 00000084
lbl_80B3BCC0:
    jal     func_80B3ACC8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BE24 
    lw      $ra, 0x0024($sp)           
    lwc1    $f16, 0x0084(s0)           # 00000084
lbl_80B3BCD4:
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.lt.s  $f16, $f18                 
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bc1f    lbl_80B3BE20               
    addiu   t3, $zero, 0x0190          # t3 = 00000190
    sh      t1, 0x0184(s0)             # 00000184
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    jal     func_8001CF94              
    lw      a0, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C2          # a1 = 000038C2
    beq     $zero, $zero, lbl_80B3BE24 
    lw      $ra, 0x0024($sp)           
lbl_80B3BD20:
    bnel    a0, $zero, lbl_80B3BD3C    
    sh      $zero, 0x0184(s0)          # 00000184
    lbu     t4, 0x0284(s0)             # 00000284
    andi    t5, t4, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_80B3BD44    
    nop
    sh      $zero, 0x0184(s0)          # 00000184
lbl_80B3BD3C:
    beq     $zero, $zero, lbl_80B3BD54 
    lh      v1, 0x0184(s0)             # 00000184
lbl_80B3BD44:
    beq     v1, $zero, lbl_80B3BD54    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
    lh      v1, 0x0184(s0)             # 00000184
lbl_80B3BD54:
    bne     v1, $zero, lbl_80B3BD64    
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BD7C 
    addiu   a1, $zero, 0x1800          # a1 = 00001800
lbl_80B3BD64:
    jal     func_80B3B588              
    lw      a1, 0x0034($sp)            
    sll     a1, v0, 16                 
    bgez    v0, lbl_80B3BD7C           
    sra     a1, a1, 16                 
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80B3BD7C:
    lh      t7, 0x00B4(s0)             # 000000B4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    slt     $at, t7, a1                
    beql    $at, $zero, lbl_80B3BD9C   
    lhu     v0, 0x0088(s0)             # 00000088
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80B3BD9C:
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B3BDB8    
    andi    t9, v0, 0x0020             # t9 = 00000000
    jal     func_80B3ABC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BE24 
    lw      $ra, 0x0024($sp)           
lbl_80B3BDB8:
    beq     t9, $zero, lbl_80B3BE08    
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      t0, 0x00B4(s0)             # 000000B4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    or      a2, $zero, $zero           # a2 = 00000000
    blez    t0, lbl_80B3BE08           
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0190          # t2 = 00000190
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    jal     func_8001CF94              
    lw      a0, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C4          # a1 = 000038C4
    jal     func_80B3ACC8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BE24 
    lw      $ra, 0x0024($sp)           
lbl_80B3BE08:
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    sw      t3, 0x0010($sp)            
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_80064508              
    addiu   a3, $zero, 0x0100          # a3 = 00000100
lbl_80B3BE20:
    lw      $ra, 0x0024($sp)           
lbl_80B3BE24:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BE34:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x0285(s0)             # 00000285
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x028C             # a1 = 0000028C
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B3BF00    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0285(s0)             # 00000285
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B3BE88    
    nop
    lbu     t8, 0x00B0(s0)             # 000000B0
    beql    t8, $zero, lbl_80B3BF04    
    lw      $ra, 0x001C($sp)           
lbl_80B3BE88:
    bne     v0, $at, lbl_80B3BEB4      
    nop
    lw      t0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_80B3BB5C)     # t9 = 80B40000
    addiu   t9, t9, %lo(func_80B3BB5C) # t9 = 80B3BB5C
    beql    t9, t0, lbl_80B3BF04       
    lw      $ra, 0x001C($sp)           
    jal     func_80B3ADF4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BF04 
    lw      $ra, 0x001C($sp)           
lbl_80B3BEB4:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B3BEF8    
    lw      a0, 0x0024($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394D          # a1 = 0000394D
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s0, $zero              # a0 = 00000000
    and     t2, t1, $at                
    jal     func_80B3AEB8              
    sw      t2, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80B3BF04 
    lw      $ra, 0x001C($sp)           
lbl_80B3BEF8:
    jal     func_80B3AD34              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B3BF00:
    lw      $ra, 0x001C($sp)           
lbl_80B3BF04:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3BF14:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0084(s0)            # 00000084
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    add.s   $f8, $f4, $f6              
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sub.s   $f16, $f8, $f10            
    jal     func_80B3BE34              
    swc1    $f16, 0x000C(s0)           # 0000000C
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t7, 0x00B4(s0)             # 000000B4
    lh      t6, 0x00B6(s0)             # 000000B6
    subu    t8, $zero, t7              
    sh      t8, 0x0030(s0)             # 00000030
    lh      t0, 0x0030(s0)             # 00000030
    sh      t6, 0x0032(s0)             # 00000032
    beq     t0, $zero, lbl_80B3BF9C    
    nop
    lw      t2, 0x0180(s0)             # 00000180
    lui     t1, %hi(func_80B3BB5C)     # t1 = 80B40000
    addiu   t1, t1, %lo(func_80B3BB5C) # t1 = 80B3BB5C
    bne     t1, t2, lbl_80B3BFAC       
    nop
lbl_80B3BF9C:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3BFB8 
    lui     $at, 0x4234                # $at = 42340000
lbl_80B3BFAC:
    jal     func_800212B8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4234                # $at = 42340000
lbl_80B3BFB8:
    mtc1    $at, $f18                  # $f18 = 45.00
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    sw      t3, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80021E6C              
    swc1    $f18, 0x0010($sp)          
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lbu     v0, 0x0284(s0)             # 00000284
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39A2          # a1 = 000039A2
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80B3C008    
    andi    t5, v0, 0xFFFC             # t5 = 00000000
    jal     func_80022FD0              
    sb      t5, 0x0284(s0)             # 00000284
lbl_80B3C008:
    addiu   a1, s0, 0x0274             # a1 = 00000274
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t9, 0x0284(s0)             # 00000284
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t6, t9, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80B3C03C    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)            
lbl_80B3C03C:
    lbu     t7, 0x0285(s0)             # 00000285
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B3C068    
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0028($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
lbl_80B3C068:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80B3C088:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80B3C0B0      
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f6                   # $f6 = 2000.00
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(a3)            # 00000008
lbl_80B3C0B0:
    jr      $ra                        
    nop


func_80B3C0B8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0024($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t8, 0x0180(s1)             # 00000180
    lui     t7, %hi(func_80B3BADC)     # t7 = 80B40000
    lw      a2, 0x0000(t6)             # 00000000
    addiu   t7, t7, %lo(func_80B3BADC) # t7 = 80B3BADC
    beq     t7, t8, lbl_80B3C164       
    or      s0, a2, $zero              # s0 = 00000000
    jal     func_8007E298              
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    lui     t2, 0x800F                 # t2 = 800F0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    addiu   t2, t2, 0x8520             # t2 = 800E8520
    ori     t1, t1, 0x0020             # t1 = DB060020
    sw      t1, 0x0000(v0)             # 00000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    sw      s1, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02C0(s0)             # 000002C0
    lui     a3, %hi(func_80B3C088)     # a3 = 80B40000
    addiu   a3, a3, %lo(func_80B3C088) # a3 = 80B3C088
    lw      a0, 0x0034($sp)            
    jal     func_8008A414              
    sw      t6, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B3C1E0 
    sw      v0, 0x02C0(s0)             # 000002C0
lbl_80B3C164:
    jal     func_8007E2C0              
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    addiu   t9, t9, 0x8510             # t9 = 800E8510
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lbu     t4, 0x00C8(s1)             # 000000C8
    lui     a3, %hi(func_80B3C088)     # a3 = 80B40000
    addiu   a3, a3, %lo(func_80B3C088) # a3 = 80B3C088
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    sw      s1, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(s0)             # 000002D0
    lw      a0, 0x0034($sp)            
    jal     func_8008A414              
    sw      t6, 0x0018($sp)            
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_80B3C1E0:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80B3C200: .word 0x018C0500, 0x00000005, 0x00260000, 0x000002C0
.word func_80B3AA10
.word func_80B3AAE0
.word func_80B3BF14
.word func_80B3C0B8
var_80B3C220: .byte \
0x00, 0x10, 0x09, 0x39, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, \
0x00, 0x08, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x09, 0x01, 0x01, 0x00, \
0x00, 0x10
var_80B3C242: .byte 0x00, 0x0A, 0xFF, 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80B3C24C: .word 0x0200002D, 0x000F6400
var_80B3C254: .word \
0x10020102, 0x10020202, 0x01020402, 0x02020200, \
0x00000000, 0x00000104, 0x02020804, 0x00000400
var_80B3C274: .word 0x89170019, 0xC8500003, 0x304C09C4

.section .rodata

var_80B3C280: .word 0xBEC90FDB
var_80B3C284: .word 0x3DA0D97C
var_80B3C288: .word 0x3EAAA64C
var_80B3C28C: .word 0x3DCCCCCD
var_80B3C290: .word 0x3DA0D97C
var_80B3C294: .word 0x3F20D97C, 0x00000000, 0x00000000

