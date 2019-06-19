.section .text
func_809351A0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     a1, %hi(var_80938134)      # a1 = 80940000
    addiu   a1, a1, %lo(var_80938134)  # a1 = 80938134
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4248                 # a3 = 42480000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t6, s0, 0x018C             # t6 = 0000018C
    addiu   t7, s0, 0x0222             # t7 = 00000222
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x9DB0             # a3 = 06009DB0
    addiu   a2, a2, 0x8FB0             # a2 = 06008FB0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x003C($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809380E0)      # a3 = 80940000
    lw      a1, 0x003C($sp)            
    addiu   a3, a3, %lo(var_809380E0)  # a3 = 809380E0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80938114)      # a1 = 80940000
    lui     a2, %hi(var_8093810C)      # a2 = 80940000
    addiu   a2, a2, %lo(var_8093810C)  # a2 = 8093810C
    addiu   a1, a1, %lo(var_80938114)  # a1 = 80938114
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t9, $zero, 0xF9C0          # t9 = FFFFF9C0
    sh      t9, 0x0188(s0)             # 00000188
    andi    v1, v0, 0x8000             # v1 = 00000000
    andi    t1, v0, 0x7FFF             # t1 = 00000000
    beq     v1, $zero, lbl_80935288    
    sh      t1, 0x001C(s0)             # 0000001C
    lw      t2, 0x0004(s0)             # 00000004
    lui     t4, %hi(func_80937FEC)     # t4 = 80930000
    addiu   t4, t4, %lo(func_80937FEC) # t4 = 80937FEC
    ori     t3, t2, 0x0080             # t3 = 00000080
    sw      t3, 0x0004(s0)             # 00000004
    sw      t4, 0x0134(s0)             # 00000134
lbl_80935288:
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    bne     t5, $at, lbl_809352C0      
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t8, %hi(func_80937858)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80937858) # t8 = 80937858
    and     t7, t6, $at                
    sw      $zero, 0x0134(s0)          # 00000134
    sw      t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809353A0 
    sw      t8, 0x0180(s0)             # 00000180
lbl_809352C0:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t0, v1, 0x0010             # t0 = 00000010
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    sw      t0, 0x0024($sp)            
    sw      t0, 0x003C($sp)            
    sw      a0, 0x0038($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x008E          # a2 = 0000008E
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    lw      a0, 0x0038($sp)            
    lw      t0, 0x003C($sp)            
    bne     v0, $zero, lbl_80935320    
    sw      v0, 0x0118(s0)             # 00000118
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809353A4 
    lw      $ra, 0x0034($sp)           
lbl_80935320:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t0, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x008E          # a2 = 0000008E
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)          
    bne     v0, $zero, lbl_80935370    
    sw      v0, 0x011C(s0)             # 0000011C
    jal     func_80020EB4              
    lw      a0, 0x0118(s0)             # 00000118
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809353A4 
    lw      $ra, 0x0034($sp)           
lbl_80935370:
    lw      t9, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    sw      s0, 0x011C(t9)             # 0000011C
    lw      t1, 0x011C(s0)             # 0000011C
    lw      t2, 0x0118(s0)             # 00000118
    sw      t1, 0x0118(t2)             # 00000118
    lw      t3, 0x011C(s0)             # 0000011C
    sw      s0, 0x0118(t3)             # 00000118
    lw      t5, 0x011C(s0)             # 0000011C
    lw      t4, 0x0118(s0)             # 00000118
    jal     func_80935420              
    sw      t4, 0x011C(t5)             # 0000011C
lbl_809353A0:
    lw      $ra, 0x0034($sp)           
lbl_809353A4:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809353B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x02B8             # a1 = 000002B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809353E0:
    lbu     t7, 0x02C9(a0)             # 000002C9
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    ori     t8, t7, 0x0004             # t8 = 00000004
    sb      t6, 0x02CC(a0)             # 000002CC
    sb      t8, 0x02C9(a0)             # 000002C9
    sh      t9, 0x0186(a0)             # 00000186
    jr      $ra                        
    nop


func_80935404:
    lbu     t6, 0x02C9(a0)             # 000002C9
    sb      $zero, 0x02CC(a0)          # 000002CC
    sh      $zero, 0x0186(a0)          # 00000186
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    sb      t7, 0x02C9(a0)             # 000002C9
    jr      $ra                        
    nop


func_80935420:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9DB0             # a1 = 06009DB0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_809361B4)     # t6 = 80930000
    addiu   t6, t6, %lo(func_809361B4) # t6 = 809361B4
    sw      t6, 0x0180(a2)             # 00000180
    swc1    $f4, 0x0068(a2)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935468:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA054             # a1 = 0600A054
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80936278)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80936278) # t6 = 80936278
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809354AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      t7, 0x0180(a3)             # 00000180
    lui     t6, %hi(func_8093649C)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8093649C) # t6 = 8093649C
    beq     t6, t7, lbl_809354EC       
    lui     $at, 0x3FC0                # $at = 3FC00000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x41F4             # a1 = 060041F4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    jal     func_8008D360              
    sw      a3, 0x0018($sp)            
    beq     $zero, $zero, lbl_809354F8 
    lw      a3, 0x0018($sp)            
lbl_809354EC:
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    swc1    $f4, 0x0158(a3)            # 00000158
lbl_809354F8:
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80063BF0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     t8, %hi(func_80936304)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80936304) # t8 = 80936304
    sh      v0, 0x0184(a3)             # 00000184
    sw      t8, 0x0180(a3)             # 00000180
    swc1    $f6, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935538:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9244             # a1 = 06009244
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80936460)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80936460) # t6 = 80936460
    sw      t6, 0x0180(a2)             # 00000180
    swc1    $f4, 0x0068(a2)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935580:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lui     t6, %hi(func_8093649C)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8093649C) # t6 = 8093649C
    sh      $zero, 0x0184(a0)          # 00000184
    sw      t6, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f6, 0x0158(a0)            # 00000158
    jr      $ra                        
    nop


func_809355B0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x0186(s0)             # 00000186
    lh      t7, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a0, 0x0600                 # a0 = 06000000
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    blez    v1, lbl_80935604           
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2158             # a1 = 06002158
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C              
    sh      v1, 0x0036($sp)            
    beq     $zero, $zero, lbl_80935650 
    lh      v1, 0x0036($sp)            
lbl_80935604:
    addiu   a0, a0, 0x2158             # a0 = 00002158
    jal     func_8008A194              
    sh      v1, 0x0036($sp)            
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f10                  # $f10 = -3.00
    cvt.s.w $f6, $f6                   
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x2158             # a1 = 06002158
    mfc1    a3, $f6                    
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f10, 0x0018($sp)          
    jal     func_8008D17C              
    swc1    $f8, 0x0010($sp)           
    lh      v1, 0x0036($sp)            
lbl_80935650:
    lui     $at, %hi(var_80938170)     # $at = 80940000
    lwc1    $f16, %lo(var_80938170)($at) 
    lwc1    $f18, 0x0050(s0)           # 00000050
    lui     t3, %hi(func_809365A8)     # t3 = 80930000
    addiu   t3, t3, %lo(func_809365A8) # t3 = 809365A8
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_8093569C               
    lwc1    $f0, 0x0158(s0)            # 00000158
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80938174)     # $at = 80940000
    lwc1    $f8, %lo(var_80938174)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    beq     $zero, $zero, lbl_809356C8 
    sh      t0, 0x0186(s0)             # 00000186
    lwc1    $f0, 0x0158(s0)            # 00000158
lbl_8093569C:
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80938178)     # $at = 80940000
    add.s   $f18, $f0, $f0             
    cvt.s.w $f6, $f4                   
    swc1    $f18, 0x0158(s0)           # 00000158
    lwc1    $f8, %lo(var_80938178)($at) 
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x0186(s0)             # 00000186
lbl_809356C8:
    sw      t3, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809356E0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x9520             # a0 = 06009520
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x9520             # a1 = 06009520
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x4040                 # a2 = 40400000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_809353E0              
    swc1    $f0, 0x006C(s0)            # 0000006C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, $zero, 0x012C          # t8 = 0000012C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0020($sp)            
    sw      t9, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_800260E8              
    swc1    $f10, 0x0014($sp)          
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3930          # a1 = 00003930
    lui     t1, %hi(func_8093676C)     # t1 = 80930000
    addiu   t1, t1, %lo(func_8093676C) # t1 = 8093676C
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809357B8:
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    sh      t6, 0x0184(a0)             # 00000184
    lui     $at, %hi(var_8093817C)     # $at = 80940000
    lwc1    $f4, %lo(var_8093817C)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     t7, %hi(func_80936930)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80936930) # t7 = 80936930
    sw      t7, 0x0180(a0)             # 00000180
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0068(a0)            # 00000068
    jr      $ra                        
    nop


func_809357EC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f4                   # $f4 = 42.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4224                 # a3 = 42240000
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lwc1    $f8, 0x0068(s0)            # 00000068
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    c.lt.s  $f8, $f10                  
    lui     t1, %hi(func_80936A20)     # t1 = 80930000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t1, t1, %lo(func_80936A20) # t1 = 80936A20
    bc1t    lbl_80935870               
    nop
    lw      t8, 0x0180(s0)             # 00000180
    lui     t7, %hi(func_80936930)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80936930) # t7 = 80936930
    beq     t7, t8, lbl_80935878       
    addiu   t0, $zero, 0x002D          # t0 = 0000002D
lbl_80935870:
    beq     $zero, $zero, lbl_8093587C 
    sh      t9, 0x0184(s0)             # 00000184
lbl_80935878:
    sh      t0, 0x0184(s0)             # 00000184
lbl_8093587C:
    swc1    $f16, 0x006C(s0)           # 0000006C
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80935898:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a1, 0x3B83                 # a1 = 3B830000
    ori     a1, a1, 0x126F             # a1 = 3B83126F
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lui     t1, %hi(func_80937F20)     # t1 = 80930000
    ori     t7, t6, 0x0010             # t7 = 00000010
    andi    t9, t7, 0x0080             # t9 = 00000000
    bne     t9, $at, lbl_809358E4      
    sw      t7, 0x0004(s0)             # 00000004
    lui     t0, %hi(func_80937FEC)     # t0 = 80930000
    addiu   t0, t0, %lo(func_80937FEC) # t0 = 80937FEC
    beq     $zero, $zero, lbl_809358EC 
    sw      t0, 0x0134(s0)             # 00000134
lbl_809358E4:
    addiu   t1, t1, %lo(func_80937F20) # t1 = 80937F20
    sw      t1, 0x0134(s0)             # 00000134
lbl_809358EC:
    lw      v0, 0x0118(s0)             # 00000118
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    lui     a0, 0x0600                 # a0 = 06000000
    lh      t2, 0x00B6(v0)             # 000000B6
    addiu   a0, a0, 0x19CC             # a0 = 060019CC
    addiu   t3, t2, 0x5555             # t3 = 00005555
    sh      t3, 0x00B6(s0)             # 000000B6
    lw      t5, 0x0024(v0)             # 00000024
    sw      t5, 0x0024(s0)             # 00000024
    lw      t4, 0x0028(v0)             # 00000028
    sw      t4, 0x0028(s0)             # 00000028
    lw      t5, 0x002C(v0)             # 0000002C
    sh      t6, 0x001C(s0)             # 0000001C
    jal     func_8008A194              
    sw      t5, 0x002C(s0)             # 0000002C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    lui     a3, 0x4224                 # a3 = 42240000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     v0, %hi(var_809380E0)      # v0 = 80940000
    addiu   v0, v0, %lo(var_809380E0)  # v0 = 809380E0
    lh      t8, 0x0020(v0)             # 80938100
    lui     $at, %hi(var_80938180)     # $at = 80940000
    lwc1    $f0, %lo(var_80938180)($at) 
    mtc1    t8, $f10                   # $f10 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    lbu     t4, 0x02E6(s0)             # 000002E6
    cvt.s.w $f16, $f10                 
    lui     t6, %hi(var_8093810C)      # t6 = 80940000
    andi    t5, t4, 0xFFFB             # t5 = 00000000
    lui     t8, %hi(func_80936C08)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80936C08) # t8 = 80936C08
    mul.s   $f18, $f16, $f0            
    trunc.w.s $f4, $f18                  
    mtc1    $at, $f18                  # $f18 = 4.00
    lui     $at, 0x40E0                # $at = 40E00000
    mfc1    t0, $f4                    
    mtc1    $at, $f4                   # $f4 = 7.00
    sh      t0, 0x02F8(s0)             # 000002F8
    lh      t1, 0x0022(v0)             # 80938102
    sb      t5, 0x02E6(s0)             # 000002E6
    swc1    $f18, 0x0068(s0)           # 00000068
    mtc1    t1, $f6                    # $f6 = 0.00
    swc1    $f4, 0x0060(s0)            # 00000060
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    sh      t3, 0x02FA(s0)             # 000002FA
    lbu     t6, %lo(var_8093810C)(t6)  
    sw      t8, 0x0180(s0)             # 00000180
    sra     t7, t6,  1                 
    sb      t7, 0x00AF(s0)             # 000000AF
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809359F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x41F4             # a1 = 060041F4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0x4090                 # a2 = 40900000
    jal     func_8008D360              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     t6, %hi(func_80936C90)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80936C90) # t6 = 80936C90
    sw      t6, 0x0180(a3)             # 00000180
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935A48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      t7, 0x0180(a3)             # 00000180
    lui     t6, %hi(func_80936C90)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80936C90) # t6 = 80936C90
    beq     t6, t7, lbl_80935A80       
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x41F4             # a1 = 060041F4
    lui     a2, 0x4090                 # a2 = 40900000
    jal     func_8008D360              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80935A80:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     t8, %hi(func_80936D80)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80936D80) # t8 = 80936D80
    sw      t8, 0x0180(a3)             # 00000180
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935AA8:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0048($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      a1, 0x0064($sp)            
    lwc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x4170                # $at = 41700000
    swc1    $f4, 0x0054($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     a2, %hi(var_80938140)      # a2 = 80940000
    lui     a3, %hi(var_8093814C)      # a3 = 80940000
    add.s   $f10, $f6, $f8             
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    addiu   t7, $zero, 0xFFF6          # t7 = FFFFFFF6
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    swc1    $f10, 0x0058($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x003C($sp)            
    sw      t4, 0x0038($sp)            
    sw      t3, 0x0034($sp)            
    sw      t2, 0x0030($sp)            
    sw      t1, 0x0024($sp)            
    sw      t0, 0x0020($sp)            
    sw      t9, 0x001C($sp)            
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0028($sp)         
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_8093814C)  # a3 = 8093814C
    addiu   a2, a2, %lo(var_80938140)  # a2 = 80938140
    lw      a0, 0x0064($sp)            
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    jal     func_8001E1D4              
    swc1    $f16, 0x005C($sp)          
    lui     t6, %hi(func_80936EE8)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80936EE8) # t6 = 80936EE8
    sw      t6, 0x0180(s0)             # 00000180
    lw      $ra, 0x004C($sp)           
    lw      s0, 0x0048($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_80935B80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     $at, 0x4224                # $at = 42240000
    mtc1    $at, $f4                   # $f4 = 41.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f4, 0x0010($sp)           
    lw      v0, 0x0028($sp)            
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     t7, %hi(func_80937398)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80937398) # t7 = 80937398
    sw      t7, 0x0180(v0)             # 00000180
    swc1    $f6, 0x0068(v0)            # 00000068
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80935BEC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     $at, 0x4224                # $at = 42240000
    mtc1    $at, $f4                   # $f4 = 41.00
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f4, 0x0010($sp)           
    lw      v0, 0x0028($sp)            
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     t7, %hi(func_80936F40)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80936F40) # t7 = 80936F40
    sw      t7, 0x0180(v0)             # 00000180
    swc1    $f6, 0x0068(v0)            # 00000068
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80935C58:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f6                   # $f6 = -3.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4210                 # a3 = 42100000
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lw      t7, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t8, t7, $at                
    sw      t8, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_809353E0              
    swc1    $f0, 0x0060(s0)            # 00000060
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    lw      t0, 0x0044($sp)            
    beql    t9, $zero, lbl_80935D4C    
    lwc1    $f0, 0x0094(s0)            # 00000094
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    neg.s   $f0, $f0                   
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80935D18               
    mtc1    $at, $f12                  # $f12 = 30.00
    mov.s   $f0, $f2                   
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f2                   # $f2 = -10.00
    beq     $zero, $zero, lbl_80935DAC 
    lwc1    $f8, 0x0028(t0)            # 00000028
    mtc1    $at, $f12                  # $f12 = -10.00
lbl_80935D18:
    lui     $at, 0xC120                # $at = C1200000
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80935D38               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80935D38 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80935D38:
    mov.s   $f0, $f2                   
    mtc1    $at, $f2                   # $f2 = -10.00
    beq     $zero, $zero, lbl_80935DAC 
    lwc1    $f8, 0x0028(t0)            # 00000028
    lwc1    $f0, 0x0094(s0)            # 00000094
lbl_80935D4C:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f2                   # $f2 = 25.00
    neg.s   $f0, $f0                   
    lui     $at, 0x4234                # $at = 42340000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80935D78               
    mtc1    $at, $f12                  # $f12 = 45.00
    beq     $zero, $zero, lbl_80935D9C 
    mov.s   $f0, $f2                   
    mtc1    $at, $f12                  # $f12 = 45.00
lbl_80935D78:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80935D98               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80935D98 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80935D98:
    mov.s   $f0, $f2                   
lbl_80935D9C:
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f2                   # $f2 = -70.00
    nop
    lwc1    $f8, 0x0028(t0)            # 00000028
lbl_80935DAC:
    lh      a0, 0x00B6(s0)             # 000000B6
    add.s   $f10, $f8, $f0             
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_800636C4              # sins?
    swc1    $f2, 0x0038($sp)           
    lui     $at, %hi(var_80938184)     # $at = 80940000
    lwc1    $f16, %lo(var_80938184)($at) 
    lwc1    $f2, 0x0038($sp)           
    lw      t1, 0x0044($sp)            
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f12, $f2, $f16            
    lwc1    $f4, 0x0024(t1)            # 00000024
    mul.s   $f18, $f0, $f12            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0024(s0)            # 00000024
    jal     func_80063684              # coss?
    swc1    $f12, 0x0030($sp)          
    lwc1    $f12, 0x0030($sp)          
    lw      t2, 0x0044($sp)            
    lui     t4, %hi(func_8093707C)     # t4 = 80930000
    mul.s   $f8, $f0, $f12             
    lwc1    $f10, 0x002C(t2)           # 0000002C
    addiu   t3, $zero, 0xB320          # t3 = FFFFB320
    addiu   t4, t4, %lo(func_8093707C) # t4 = 8093707C
    sh      t3, 0x00B4(s0)             # 000000B4
    sw      t4, 0x0180(s0)             # 00000180
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x002C(s0)           # 0000002C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80935E2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9DB0             # a1 = 06009DB0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t6, 0x018A(a0)             # 0000018A
    sh      $zero, 0x0184(a0)          # 00000184
    addiu   t7, t6, 0x05DC             # t7 = 000005DC
    jal     func_809353E0              
    sh      t7, 0x018A(a0)             # 0000018A
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_809375A8)     # t8 = 80930000
    addiu   t8, t8, %lo(func_809375A8) # t8 = 809375A8
    sw      t8, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80935E84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lw      a2, 0x0118(a1)             # 00000118
    lui     v0, %hi(func_80937858)     # v0 = 80930000
    addiu   v0, v0, %lo(func_80937858) # v0 = 80937858
    lw      t6, 0x0180(a2)             # 00000180
    lw      a3, 0x011C(a1)             # 0000011C
    addiu   $at, $zero, 0xFFEE         # $at = FFFFFFEE
    bnel    v0, t6, lbl_80935EE8       
    lw      t8, 0x0004(a1)             # 00000004
    lw      t7, 0x0180(a3)             # 00000180
    or      a0, a2, $zero              # a0 = 00000000
    bnel    v0, t7, lbl_80935EE8       
    lw      t8, 0x0004(a1)             # 00000004
    sw      a1, 0x0020($sp)            
    jal     func_80020EB4              
    sw      a3, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0020($sp)            
    beq     $zero, $zero, lbl_80935EFC 
    lw      $ra, 0x0014($sp)           
    lw      t8, 0x0004(a1)             # 00000004
lbl_80935EE8:
    sw      $zero, 0x0134(a1)          # 00000134
    sw      v0, 0x0180(a1)             # 00000180
    and     t9, t8, $at                
    sw      t9, 0x0004(a1)             # 00000004
    lw      $ra, 0x0014($sp)           
lbl_80935EFC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80935F08:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0590             # a1 = 06000590
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC040                 # a2 = C0400000
    lw      t6, 0x02F4(s0)             # 000002F4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF824           # $at = 0001F824
    lw      t7, 0x0000(t6)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    and     t8, t7, $at                
    beq     t8, $zero, lbl_80935F5C    
    nop
    lw      t9, 0x02C0(s0)             # 000002C0
    lh      t0, 0x0032(t9)             # 00000032
    beq     $zero, $zero, lbl_80935F70 
    sh      t0, 0x0032(s0)             # 00000032
lbl_80935F5C:
    jal     func_800213B4              
    lw      a1, 0x02C0(s0)             # 000002C0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, v0, $at                
    sh      t1, 0x0032(s0)             # 00000032
lbl_80935F70:
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sw      t2, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x40B0                # $at = 40B00000
    mtc1    $at, $f6                   # $f6 = 5.50
    lui     t3, %hi(func_80937868)     # t3 = 80930000
    addiu   t3, t3, %lo(func_80937868) # t3 = 80937868
    sw      t3, 0x0180(s0)             # 00000180
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0060(s0)            # 00000060
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80935FC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0EA4             # a1 = 06000EA4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t7, %hi(func_8093792C)     # t7 = 80930000
    lh      t6, 0x00B6(a2)             # 000000B6
    addiu   t7, t7, %lo(func_8093792C) # t7 = 8093792C
    sw      t7, 0x0180(a2)             # 00000180
    swc1    $f0, 0x0068(a2)            # 00000068
    swc1    $f0, 0x0060(a2)            # 00000060
    sh      t6, 0x0032(a2)             # 00000032
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80936018:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f6                   # $f6 = -3.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x19CC             # a1 = 060019CC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lbu     t7, 0x00B1(s0)             # 000000B1
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t7, $at, lbl_80936098      
    swc1    $f8, 0x0068(s0)            # 00000068
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_809360F0 
    nop
lbl_80936098:
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sw      t9, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80938188)     # $at = 80940000
    lwc1    $f10, %lo(var_80938188)($at) 
    lwc1    $f16, 0x0050(s0)           # 00000050
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_809360E8               
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809360F0 
    nop
lbl_809360E8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
lbl_809360F0:
    lui     t1, %hi(func_80937968)     # t1 = 80930000
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    addiu   t1, t1, %lo(func_80937968) # t1 = 80937968
    sh      t0, 0x0184(s0)             # 00000184
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80936118:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     $at, %hi(var_8093818C)     # $at = 80940000
    lwc1    $f4, %lo(var_8093818C)($at) 
    lwc1    $f6, 0x0050(s0)            # 00000050
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f4, $f6                   
    addiu   a2, s0, 0x0024             # a2 = 00000024
    bc1f    lbl_8093618C               
    nop
    lh      t6, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      a0, 0x011C(s0)             # 0000011C
    addu    t7, t6, $at                
    jal     func_80935898              
    sh      t7, 0x00B6(s0)             # 000000B6
    jal     func_80935898              
    lw      a0, 0x0118(s0)             # 00000118
    jal     func_80935898              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3935          # a1 = 00003935
    beq     $zero, $zero, lbl_809361A4 
    lw      $ra, 0x001C($sp)           
lbl_8093618C:
    jal     func_80013A84              
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80935AA8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_809361A4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809361B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80936264    
    lui     $at, 0x43C8                # $at = 43C80000
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 400.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80936220               
    lui     $at, 0x438C                # $at = 438C0000
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bnel    v0, $zero, lbl_80936220    
    lui     $at, 0x438C                # $at = 438C0000
    lh      t6, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809355B0              
    sh      t6, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_80936268 
    lw      $ra, 0x001C($sp)           
    lui     $at, 0x438C                # $at = 438C0000
lbl_80936220:
    mtc1    $at, $f10                  # $f10 = 280.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_8093625C               
    nop
    jal     func_80021A28              
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    beq     v0, $zero, lbl_8093625C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809356E0              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80936268 
    lw      $ra, 0x001C($sp)           
lbl_8093625C:
    jal     func_80935468              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80936264:
    lw      $ra, 0x001C($sp)           
lbl_80936268:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80936278:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_809362F4    
    lw      a1, 0x0018($sp)            
    lui     $at, %hi(var_80938190)     # $at = 80940000
    lwc1    $f4, %lo(var_80938190)($at) 
    lwc1    $f6, 0x0050(a1)            # 00000050
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809362D0               
    lh      t6, 0x001C(a1)             # 0000001C
    jal     func_809354AC              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809362F8 
    lw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a1)             # 0000001C
lbl_809362D0:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     t6, $at, lbl_809362EC      
    nop
    jal     func_80935A48              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809362F8 
    lw      $ra, 0x0014($sp)           
lbl_809362EC:
    jal     func_809359F8              
    or      a0, a1, $zero              # a0 = 00000000
lbl_809362F4:
    lw      $ra, 0x0014($sp)           
lbl_809362F8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80936304:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80936348    
    lui     a1, 0x4140                 # a1 = 41400000
    lh      v1, 0x0184(s0)             # 00000184
    beq     v1, $zero, lbl_80936348    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80936348:
    bnel    v0, $zero, lbl_80936380    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008D6A8              
    lw      a0, 0x0020($sp)            
    bne     v0, $zero, lbl_8093637C    
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x41C0                 # a1 = 41C00000
    bne     v0, $zero, lbl_8093637C    
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4210                 # a1 = 42100000
    beq     v0, $zero, lbl_80936388    
lbl_8093637C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80936380:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3894          # a1 = 00003894
lbl_80936388:
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f6                   # $f6 = 320.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809363CC               
    lhu     t7, 0x0088(s0)             # 00000088
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    beql    v0, $zero, lbl_809363CC    
    lhu     t7, 0x0088(s0)             # 00000088
    jal     func_80935580              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80936450 
    lw      $ra, 0x001C($sp)           
    lhu     t7, 0x0088(s0)             # 00000088
lbl_809363CC:
    lui     $at, 0x43C8                # $at = 43C80000
    andi    t8, t7, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_809363F8    
    lwc1    $f8, 0x0090(s0)            # 00000090
    lh      t9, 0x007E(s0)             # 0000007E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809355B0              
    sh      t9, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_80936450 
    lw      $ra, 0x001C($sp)           
    lwc1    $f8, 0x0090(s0)            # 00000090
lbl_809363F8:
    mtc1    $at, $f10                  # $f10 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_8093643C               
    lh      t1, 0x0184(s0)             # 00000184
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bnel    v0, $zero, lbl_8093643C    
    lh      t1, 0x0184(s0)             # 00000184
    lh      t0, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809355B0              
    sh      t0, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_80936450 
    lw      $ra, 0x001C($sp)           
    lh      t1, 0x0184(s0)             # 00000184
lbl_8093643C:
    bnel    t1, $zero, lbl_80936450    
    lw      $ra, 0x001C($sp)           
    jal     func_80935538              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80936450:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80936460:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80936490    
    lw      $ra, 0x0014($sp)           
    jal     func_80935420              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80936490:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8093649C:
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
    bne     v0, $zero, lbl_809364FC    
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4140                 # a1 = 41400000
    bne     v0, $zero, lbl_809364FC    
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x41C0                 # a1 = 41C00000
    bne     v0, $zero, lbl_809364FC    
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4210                 # a1 = 42100000
    beq     v0, $zero, lbl_80936508    
lbl_809364FC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3894          # a1 = 00003894
lbl_80936508:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624              
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f6                   # $f6 = 280.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80936574               
    lui     $at, 0x43C8                # $at = 43C80000
    jal     func_80021A28              
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    beql    v0, $zero, lbl_80936574    
    lui     $at, 0x43C8                # $at = 43C80000
    lhu     t6, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0008             # t7 = 00000000
    bnel    t7, $zero, lbl_80936574    
    lui     $at, 0x43C8                # $at = 43C80000
    jal     func_809356E0              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80936598 
    lw      $ra, 0x001C($sp)           
    lui     $at, 0x43C8                # $at = 43C80000
lbl_80936574:
    mtc1    $at, $f8                   # $f8 = 400.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80936598               
    lw      $ra, 0x001C($sp)           
    jal     func_809354AC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80936598:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809365A8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beql    v0, $zero, lbl_809365DC    
    lwc1    $f0, 0x0158(s0)            # 00000158
    jal     func_80935468              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0158(s0)            # 00000158
lbl_809365DC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a0, 0x0024($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_8093660C               
    mtc1    $zero, $f6                 # $f6 = 0.00
    jal     func_8008D6A8              
    lui     a1, 0x41A8                 # a1 = 41A80000
    bne     v0, $zero, lbl_8093662C    
    nop
    lwc1    $f0, 0x0158(s0)            # 00000158
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8093660C:
    lw      a0, 0x0024($sp)            
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8093666C               
    lui     $at, 0x40E0                # $at = 40E00000
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     v0, $zero, lbl_80936668    
lbl_8093662C:
    lui     $at, %hi(var_80938194)     # $at = 80940000
    lwc1    $f8, %lo(var_80938194)($at) 
    lwc1    $f10, 0x0050(s0)           # 00000050
    addiu   a1, $zero, 0x3894          # a1 = 00003894
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80936660               
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8093666C 
    lui     $at, 0x40E0                # $at = 40E00000
lbl_80936660:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3931          # a1 = 00003931
lbl_80936668:
    lui     $at, 0x40E0                # $at = 40E00000
lbl_8093666C:
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f16                  # $f16 = 7.00
    lui     $at, 0x41B0                # $at = 41B00000
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_8093675C               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f18                  # $f18 = 22.00
    nop
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_8093675C               
    lw      $ra, 0x001C($sp)           
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4268             # a0 = 00004268
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    swc1    $f0, 0x0030($sp)           
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4268             # a0 = 00004268
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    swc1    $f0, 0x002C($sp)           
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t7, 0x0186(s0)             # 00000186
    addu    t8, t6, t7                 
    sh      t8, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4268             # a0 = 00004268
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80938198)     # $at = 80940000
    lwc1    $f6, %lo(var_80938198)($at) 
    lwc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f10, 0x0030($sp)          
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f8, $f4, $f6              
    sub.s   $f16, $f0, $f10            
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   a0, a0, 0x4268             # a0 = 00004268
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f18, $f8, $f16            
    sub.s   $f6, $f4, $f18             
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_8093819C)     # $at = 80940000
    lwc1    $f8, %lo(var_8093819C)($at) 
    lwc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f4, 0x002C($sp)           
    mul.s   $f16, $f10, $f8            
    sub.s   $f18, $f0, $f4             
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f6, $f16, $f18            
    sub.s   $f8, $f10, $f6             
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      $ra, 0x001C($sp)           
lbl_8093675C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8093676C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8093679C    
    lui     $at, 0x4120                # $at = 41200000
    jal     func_809357B8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_8093679C:
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      t6, 0x00B4(s0)             # 000000B4
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    add.s   $f8, $f4, $f6              
    addiu   t7, t6, 0x0140             # t7 = 00000140
    sh      t7, 0x00B4(s0)             # 000000B4
    lh      a1, 0x008A(s0)             # 0000008A
    swc1    $f8, 0x0028(s0)            # 00000028
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624              
    addiu   a3, $zero, 0x0AAA          # a3 = 00000AAA
    addiu   a0, s0, 0x0188             # a0 = 00000188
    addiu   a1, $zero, 0x04B0          # a1 = 000004B0
    jal     func_800637D4              
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809367F0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    swc1    $f4, 0x0034($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    swc1    $f6, 0x003C($sp)           
    lwc1    $f8, 0x0080(s0)            # 00000080
    swc1    $f10, 0x002C($sp)          
    swc1    $f8, 0x0038($sp)           
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x6000             # a0 = 00006000
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    nop
    mul.s   $f18, $f0, $f16            
    swc1    $f18, 0x0028($sp)          
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x6000             # a0 = 00006000
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lui     a3, %hi(var_80938158)      # a3 = 80940000
    addiu   t6, $zero, 0x01C2          # t6 = 000001C2
    mul.s   $f6, $f0, $f4              
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80938158)  # a3 = 80938158
    lw      a0, 0x0044($sp)            
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    swc1    $f6, 0x0030($sp)           
    jal     func_8001C1C4              
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFE8
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0xA000             # a0 = FFFFA000
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    nop
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x0028($sp)          
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0xA000             # a0 = FFFFA000
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    lui     a3, %hi(var_80938158)      # a3 = 80940000
    addiu   t8, $zero, 0x01C2          # t8 = 000001C2
    mul.s   $f18, $f0, $f16            
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80938158)  # a3 = 80938158
    lw      a0, 0x0044($sp)            
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    swc1    $f18, 0x0030($sp)          
    jal     func_8001C1C4              
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x3034          # a1 = 00003034
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80936930:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80936954    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80936954:
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_809381A0)     # $at = 80940000
    lwc1    $f6, %lo(var_809381A0)($at) 
    mul.s   $f4, $f0, $f0              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4170                 # a1 = 41700000
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_8006385C              
    nop
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xE980          # a1 = FFFFE980
    jal     func_80063704              
    addiu   a2, $zero, 0x0140          # a2 = 00000140
    lwc1    $f2, 0x0080(s0)            # 00000080
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    sub.s   $f0, $f10, $f2             
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f18                  # $f18 = 12.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_809369D4               
    c.lt.s  $f0, $f18                  
    add.s   $f16, $f2, $f14            
    mtc1    $zero, $f12                # $f12 = 0.00
    swc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f12, 0x006C(s0)           # 0000006C
    swc1    $f12, 0x0060(s0)           # 00000060
    c.lt.s  $f0, $f18                  
lbl_809369D4:
    nop
    bc1fl   lbl_809369EC               
    lhu     t7, 0x0088(s0)             # 00000088
    jal     func_809367F0              
    lw      a1, 0x0024($sp)            
    lhu     t7, 0x0088(s0)             # 00000088
lbl_809369EC:
    andi    t8, t7, 0x0008             # t8 = 00000000
    bne     t8, $zero, lbl_80936A04    
    nop
    lh      t9, 0x0184(s0)             # 00000184
    bnel    t9, $zero, lbl_80936A10    
    lw      $ra, 0x001C($sp)           
lbl_80936A04:
    jal     func_809357EC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80936A10:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80936A20:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0001             # t6 = 00000000
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80936AB8    
    sw      t6, 0x0024($sp)            
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    beql    t8, $at, lbl_80936A64      
    lui     $at, 0xC080                # $at = C0800000
    jal     func_80935404              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC080                # $at = C0800000
lbl_80936A64:
    mtc1    $at, $f6                   # $f6 = -4.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_809381A4)     # $at = 80940000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80936ABC               
    lhu     t9, 0x0088(s0)             # 00000088
    lwc1    $f8, %lo(var_809381A4)($at) 
    lwc1    $f10, 0x0050(s0)           # 00000050
    addiu   a1, $zero, 0x3893          # a1 = 00003893
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80936AB0               
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80936ABC 
    lhu     t9, 0x0088(s0)             # 00000088
lbl_80936AB0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3937          # a1 = 00003937
lbl_80936AB8:
    lhu     t9, 0x0088(s0)             # 00000088
lbl_80936ABC:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    andi    t0, t9, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_80936AE0    
    lw      t1, 0x0024($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0068(s0)           # 00000068
    lw      t1, 0x0024($sp)            
lbl_80936AE0:
    beql    t1, $zero, lbl_80936AF4    
    mtc1    $zero, $f18                # $f18 = 0.00
    jal     func_8006385C              
    lui     a2, 0x4000                 # a2 = 40000000
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_80936AF4:
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_80936B38               
    nop
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0080(s0)            # 00000080
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    sub.s   $f10, $f6, $f8             
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_80936B38               
    nop
    jal     func_809367F0              
    lw      a1, 0x002C($sp)            
lbl_80936B38:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80936BD8    
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80936B5C    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0184(s0)             # 00000184
    lh      v0, 0x0184(s0)             # 00000184
lbl_80936B5C:
    bne     v0, $zero, lbl_80936BD4    
    lw      t3, 0x0024($sp)            
    beq     t3, $zero, lbl_80936BD4    
    lui     $at, 0x4234                # $at = 42340000
    lwc1    $f18, 0x014C(s0)           # 0000014C
    mtc1    $at, $f4                   # $f4 = 45.00
    lui     a0, 0x0600                 # a0 = 06000000
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80936BA8               
    lh      t4, 0x001C(s0)             # 0000001C
    jal     func_8008A194              
    addiu   a0, a0, 0x19CC             # a0 = 060019CC
    mtc1    v0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    beq     $zero, $zero, lbl_80936BD4 
    swc1    $f8, 0x014C(s0)            # 0000014C
    lh      t4, 0x001C(s0)             # 0000001C
lbl_80936BA8:
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bne     t4, $at, lbl_80936BC4      
    nop
    jal     func_80935E2C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80936BD8 
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80936BC4:
    jal     func_80935468              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    sh      t5, 0x018A(s0)             # 0000018A
lbl_80936BD4:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80936BD8:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0140          # a2 = 00000140
    addiu   a0, s0, 0x0188             # a0 = 00000188
    addiu   a1, $zero, 0xF9C0          # a1 = FFFFF9C0
    jal     func_800637D4              
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80936C08:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lhu     v1, 0x0088(s0)             # 00000088
    andi    t6, v1, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80936C6C    
    andi    t0, v1, 0x0002             # t0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80936C54    
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    lw      t7, 0x0004(s0)             # 00000004
    sh      t9, 0x018A(s0)             # 0000018A
    or      a0, s0, $zero              # a0 = 00000000
    ori     t8, t7, 0x0001             # t8 = 00000001
    jal     func_80935468              
    sw      t8, 0x0004(s0)             # 00000004
lbl_80936C54:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lhu     v1, 0x0088(s0)             # 00000088
    andi    t0, v1, 0x0002             # t0 = 00000000
lbl_80936C6C:
    beq     t0, $zero, lbl_80936C7C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3937          # a1 = 00003937
lbl_80936C7C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80936C90:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lh      v1, 0x018A(s0)             # 0000018A
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v1, $zero, lbl_80936CC4    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x018A(s0)             # 0000018A
lbl_80936CC4:
    jal     func_8008D6A8              
    lw      a0, 0x0024($sp)            
    bne     v0, $zero, lbl_80936CE0    
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4190                 # a1 = 41900000
    beq     v0, $zero, lbl_80936CEC    
lbl_80936CE0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3931          # a1 = 00003931
lbl_80936CEC:
    lh      t7, 0x018A(s0)             # 0000018A
    bnel    t7, $zero, lbl_80936D0C    
    lhu     t8, 0x0088(s0)             # 00000088
    jal     func_80935A48              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80936D70 
    lw      $ra, 0x001C($sp)           
    lhu     t8, 0x0088(s0)             # 00000088
lbl_80936D0C:
    lui     $at, 0x42F0                # $at = 42F00000
    andi    t9, t8, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_80936D38    
    lwc1    $f4, 0x0090(s0)            # 00000090
    lh      t0, 0x007E(s0)             # 0000007E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809355B0              
    sh      t0, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_80936D70 
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x0090(s0)            # 00000090
lbl_80936D38:
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80936D70               
    lw      $ra, 0x001C($sp)           
    lh      a1, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a2, $zero, 0x038E          # a2 = 0000038E
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    jal     func_80063704              
    sra     a1, a1, 16                 
    lw      $ra, 0x001C($sp)           
lbl_80936D70:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80936D80:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    bne     v0, $zero, lbl_80936DC0    
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4190                 # a1 = 41900000
    beq     v0, $zero, lbl_80936DCC    
lbl_80936DC0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3931          # a1 = 00003931
lbl_80936DCC:
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
    beql    v0, $zero, lbl_80936DF8    
    lh      t7, 0x001C(s0)             # 0000001C
    lh      t6, 0x007E(s0)             # 0000007E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809355B0              
    sh      t6, 0x0186(s0)             # 00000186
    beq     $zero, $zero, lbl_80936ED8 
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
lbl_80936DF8:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    bne     t7, $at, lbl_80936EA4      
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      v0, 0x0118(s0)             # 00000118
    addiu   v1, $zero, 0x0040          # v1 = 00000040
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(v0)             # 0000001C
    bnel    v1, t8, lbl_80936E2C       
    lw      v0, 0x011C(s0)             # 0000011C
    beq     $zero, $zero, lbl_80936E4C 
    or      a3, v0, $zero              # a3 = 00000000
    lw      v0, 0x011C(s0)             # 0000011C
lbl_80936E2C:
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    lh      t9, 0x001C(v0)             # 0000001C
    bne     v1, t9, lbl_80936E44       
    nop
    beq     $zero, $zero, lbl_80936E4C 
    or      a3, v0, $zero              # a3 = 00000000
lbl_80936E44:
    beq     $zero, $zero, lbl_80936ED4 
    sh      t0, 0x001C(s0)             # 0000001C
lbl_80936E4C:
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_800213B4              
    sw      a3, 0x002C($sp)            
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          # a2 = 0000038E
    lw      a1, 0x002C($sp)            
    jal     func_800214FC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80936ED8               
    lw      $ra, 0x001C($sp)           
    jal     func_80935B80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80936ED8 
    lw      $ra, 0x001C($sp)           
lbl_80936EA4:
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064624              
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80936ED8               
    lw      $ra, 0x001C($sp)           
    jal     func_80935BEC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80936ED4:
    lw      $ra, 0x001C($sp)           
lbl_80936ED8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80936EE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     a2, 0x3AC4                 # a2 = 3AC40000
    ori     a2, a2, 0x9BA6             # a2 = 3AC49BA6
    addiu   a0, a3, 0x0050             # a0 = 00000050
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80936F28    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80935E84              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80936F28:
    lwc1    $f0, 0x0050(a3)            # 00000050
    swc1    $f0, 0x0058(a3)            # 00000058
    swc1    $f0, 0x0054(a3)            # 00000054
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80936F40:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    sw      t7, 0x0024($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lwc1    $f4, 0x0154(s0)            # 00000154
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    c.lt.s  $f4, $f0                   
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    bc1fl   lbl_80936FA8               
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80064624              
    lh      a1, 0x008A(s0)             # 0000008A
    beq     $zero, $zero, lbl_8093706C 
    lw      $ra, 0x001C($sp)           
    mfc1    a1, $f0                    
lbl_80936FA8:
    jal     func_8008D6A8              
    nop
    beq     v0, $zero, lbl_80936FD0    
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    swc1    $f6, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80937068 
    swc1    $f8, 0x0060(s0)            # 00000060
lbl_80936FD0:
    lhu     t8, 0x0088(s0)             # 00000088
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_8093700C    
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t0, 0x0184(s0)             # 00000184
    addiu   a1, $zero, 0x3937          # a1 = 00003937
    jal     func_80022FD0              
    swc1    $f10, 0x0068(s0)           # 00000068
    jal     func_809357EC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8093706C 
    lw      $ra, 0x001C($sp)           
lbl_8093700C:
    lwc1    $f16, 0x0094(s0)           # 00000094
    mtc1    $at, $f18                  # $f18 = 0.00
    nop
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_8093706C               
    lw      $ra, 0x001C($sp)           
    lbu     t1, 0x02CA(s0)             # 000002CA
    lw      a1, 0x0024($sp)            
    andi    t2, t1, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_8093706C    
    lw      $ra, 0x001C($sp)           
    lw      t3, 0x02C4(s0)             # 000002C4
    lw      a0, 0x002C($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    bne     a1, t3, lbl_80937068       
    addu    t9, t9, a0                 
    lw      t9, 0x1D4C(t9)             # 00011D4C
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80935C58              
    lw      a1, 0x0024($sp)            
lbl_80937068:
    lw      $ra, 0x001C($sp)           
lbl_8093706C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8093707C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x003C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x003C($sp)            
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      a3, 0x1C44(t6)             # 00001C44
    sw      a2, 0x0038($sp)            
    jal     func_8008C9C0              
    sw      a3, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    beq     v0, $zero, lbl_80937114    
    lw      a3, 0x0034($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(a2)            # 00000158
    lui     $at, 0x4234                # $at = 42340000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809370F8               
    mtc1    $at, $f12                  # $f12 = 45.00
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f12                  # $f12 = 45.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    lui     $at, 0x4210                # $at = 42100000
    mtc1    $at, $f10                  # $f10 = 36.00
    swc1    $f12, 0x0148(a2)           # 00000148
    swc1    $f8, 0x0158(a2)            # 00000158
    beq     $zero, $zero, lbl_80937114 
    swc1    $f10, 0x014C(a2)           # 0000014C
    mtc1    $at, $f12                  # $f12 = 36.00
lbl_809370F8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x4210                # $at = 42100000
    mtc1    $at, $f18                  # $f18 = 36.00
    swc1    $f12, 0x014C(a2)           # 0000014C
    swc1    $f16, 0x0158(a2)           # 00000158
    swc1    $f18, 0x0148(a2)           # 00000148
lbl_80937114:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f12                  # $f12 = 45.00
    beql    t7, $zero, lbl_8093719C    
    lwc1    $f0, 0x0094(a2)            # 00000094
    lwc1    $f0, 0x0094(a2)            # 00000094
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    neg.s   $f0, $f0                   
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80937168               
    mtc1    $at, $f12                  # $f12 = 30.00
    mov.s   $f0, $f2                   
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f2                   # $f2 = -10.00
    beq     $zero, $zero, lbl_809371F0 
    lwc1    $f4, 0x0028(a3)            # 00000028
    mtc1    $at, $f12                  # $f12 = -10.00
lbl_80937168:
    lui     $at, 0xC120                # $at = C1200000
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80937188               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80937188 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80937188:
    mov.s   $f0, $f2                   
    mtc1    $at, $f2                   # $f2 = -10.00
    beq     $zero, $zero, lbl_809371F0 
    lwc1    $f4, 0x0028(a3)            # 00000028
    lwc1    $f0, 0x0094(a2)            # 00000094
lbl_8093719C:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f2                   # $f2 = 25.00
    neg.s   $f0, $f0                   
    lui     $at, 0xC1F0                # $at = C1F00000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809371C8               
    c.lt.s  $f12, $f0                  
    beq     $zero, $zero, lbl_809371E4 
    mov.s   $f0, $f2                   
    c.lt.s  $f12, $f0                  
lbl_809371C8:
    nop
    bc1fl   lbl_809371E0               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_809371E0 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_809371E0:
    mov.s   $f0, $f2                   
lbl_809371E4:
    mtc1    $at, $f2                   # $f2 = -30.00
    nop
    lwc1    $f4, 0x0028(a3)            # 00000028
lbl_809371F0:
    lh      a0, 0x00B6(a2)             # 000000B6
    add.s   $f6, $f4, $f0              
    swc1    $f6, 0x0028(a2)            # 00000028
    swc1    $f2, 0x0024($sp)           
    sw      a3, 0x0034($sp)            
    jal     func_800636C4              # sins?
    sw      a2, 0x0038($sp)            
    lui     $at, %hi(var_809381A8)     # $at = 80940000
    lwc1    $f8, %lo(var_809381A8)($at) 
    lwc1    $f2, 0x0024($sp)           
    lw      a3, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    mul.s   $f12, $f2, $f8             
    lwc1    $f16, 0x0024(a3)           # 00000024
    lh      a0, 0x00B6(a2)             # 000000B6
    mul.s   $f10, $f0, $f12            
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0024(a2)           # 00000024
    jal     func_80063684              # coss?
    swc1    $f12, 0x001C($sp)          
    lwc1    $f12, 0x001C($sp)          
    lw      a3, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    mul.s   $f4, $f0, $f12             
    lwc1    $f6, 0x002C(a3)            # 0000002C
    lui     $at, 0x40C0                # $at = 40C00000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x002C(a2)            # 0000002C
    lw      t8, 0x0670(a3)             # 00000670
    andi    t9, t8, 0x0080             # t9 = 00000000
    beql    t9, $zero, lbl_80937280    
    lw      a0, 0x0118(a2)             # 00000118
    lb      t0, 0x0A68(a3)             # 00000A68
    bgezl   t0, lbl_80937308           
    lh      t6, 0x0186(a2)             # 00000186
    lw      a0, 0x0118(a2)             # 00000118
lbl_80937280:
    lui     v0, %hi(func_8093707C)     # v0 = 80930000
    addiu   v0, v0, %lo(func_8093707C) # v0 = 8093707C
    lw      v1, 0x0180(a0)             # 00000180
    mtc1    $at, $f10                  # $f10 = 6.00
    lw      a1, 0x011C(a2)             # 0000011C
    beq     v0, v1, lbl_809372AC       
    lui     $at, 0xC040                # $at = C0400000
    lui     t1, %hi(func_80937858)     # t1 = 80930000
    addiu   t1, t1, %lo(func_80937858) # t1 = 80937858
    bnel    t1, v1, lbl_809372D8       
    lw      t4, 0x0004(a2)             # 00000004
lbl_809372AC:
    lw      v1, 0x0180(a1)             # 00000180
    lui     t2, %hi(func_80937858)     # t2 = 80930000
    addiu   t2, t2, %lo(func_80937858) # t2 = 80937858
    beq     v0, v1, lbl_809372C4       
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    bne     t2, v1, lbl_809372D4       
lbl_809372C4:
    addiu   v0, $zero, 0x0020          # v0 = 00000020
    sh      v0, 0x001C(a0)             # 0000001C
    sh      v0, 0x001C(a1)             # 0000001C
    sh      t3, 0x001C(a2)             # 0000001C
lbl_809372D4:
    lw      t4, 0x0004(a2)             # 00000004
lbl_809372D8:
    mtc1    $at, $f16                  # $f16 = -3.00
    sh      $zero, 0x00B4(a2)          # 000000B4
    ori     t5, t4, 0x0001             # t5 = 00000001
    swc1    $f10, 0x0060(a2)           # 00000060
    sw      t5, 0x0004(a2)             # 00000004
    swc1    $f16, 0x0068(a2)           # 00000068
    sw      a2, 0x0038($sp)            
    jal     func_809357EC              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8093737C 
    lw      a2, 0x0038($sp)            
    lh      t6, 0x0186(a2)             # 00000186
lbl_80937308:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     t8, 0x8012                 # t8 = 80120000
    div     $zero, t6, $at             
    mfhi    t7                         
    bnel    t7, $zero, lbl_80937380    
    or      a0, a2, $zero              # a0 = 00000000
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6805          # a1 = 00006805
    beq     t8, $zero, lbl_8093734C    
    nop
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6825          # a1 = 00006825
    jal     func_80022F84              
    sw      a2, 0x0038($sp)            
    beq     $zero, $zero, lbl_80937358 
    lw      a2, 0x0038($sp)            
lbl_8093734C:
    jal     func_80022F84              
    sw      a2, 0x0038($sp)            
    lw      a2, 0x0038($sp)            
lbl_80937358:
    lw      a0, 0x003C($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    sw      a2, 0x0038($sp)            
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             # 00011D58
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    jalr    $ra, t9                    
    nop
    lw      a2, 0x0038($sp)            
lbl_8093737C:
    or      a0, a2, $zero              # a0 = 00000000
lbl_80937380:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3136          # a1 = 00003136
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80937398:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lw      v1, 0x0118(s0)             # 00000118
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    lw      a0, 0x0024($sp)            
    lh      t6, 0x001C(v1)             # 0000001C
    bnel    a1, t6, lbl_809373E0       
    lw      v0, 0x011C(s0)             # 0000011C
    beq     $zero, $zero, lbl_8093741C 
    or      s1, v1, $zero              # s1 = 00000000
    lw      v0, 0x011C(s0)             # 0000011C
lbl_809373E0:
    lh      t7, 0x001C(v0)             # 0000001C
    bnel    a1, t7, lbl_809373F8       
    lhu     t8, 0x0088(s0)             # 00000088
    beq     $zero, $zero, lbl_8093741C 
    or      s1, v0, $zero              # s1 = 00000000
    lhu     t8, 0x0088(s0)             # 00000088
lbl_809373F8:
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80937598    
    lw      $ra, 0x001C($sp)           
    jal     func_809357EC              
    sh      t0, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_80937598 
    lw      $ra, 0x001C($sp)           
lbl_8093741C:
    jal     func_8008D6A8              
    lui     a1, 0x41A0                 # a1 = 41A00000
    beq     v0, $zero, lbl_80937448    
    lui     $at, 0x41A0                # $at = 41A00000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    swc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8093753C 
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80937448:
    lwc1    $f6, 0x0154(s0)            # 00000154
    mtc1    $at, $f8                   # $f8 = 7.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80937490               
    lwc1    $f10, 0x0028(s1)           # 00000028
    jal     func_800213B4              
    or      a1, s1, $zero              # a1 = 00000000
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    beq     $zero, $zero, lbl_80937540 
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0028(s1)           # 00000028
lbl_80937490:
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    sub.s   $f18, $f10, $f16           
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80937514               
    lhu     t3, 0x0088(s0)             # 00000088
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0024(s1)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80937514               
    lhu     t3, 0x0088(s0)             # 00000088
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x002C(s1)           # 0000002C
    sub.s   $f0, $f10, $f16            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80937514               
    lhu     t3, 0x0088(s0)             # 00000088
    jal     func_80935E84              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x02CA(s0)             # 000002CA
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_8093753C 
    sb      t2, 0x02CA(s0)             # 000002CA
    lhu     t3, 0x0088(s0)             # 00000088
lbl_80937514:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_80937540    
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a1, $zero, 0x3937          # a1 = 00003937
    jal     func_80022FD0              
    swc1    $f18, 0x0068(s0)           # 00000068
    jal     func_809357EC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8093753C:
    lwc1    $f4, 0x0024(s0)            # 00000024
lbl_80937540:
    lwc1    $f6, 0x0024(s1)            # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    sub.s   $f0, $f4, $f6              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80937598               
    lw      $ra, 0x001C($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f10, 0x002C(s1)           # 0000002C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sub.s   $f0, $f8, $f10             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80937598               
    lw      $ra, 0x001C($sp)           
    jal     func_8006385C              
    lui     a2, 0x4000                 # a2 = 40000000
    lw      $ra, 0x001C($sp)           
lbl_80937598:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809375A8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lh      v0, 0x018A(s0)             # 0000018A
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_809375D4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x018A(s0)             # 0000018A
    lh      v0, 0x018A(s0)             # 0000018A
lbl_809375D4:
    lw      a0, 0x0118(s0)             # 00000118
    bne     v0, $zero, lbl_80937634    
    lw      a3, 0x011C(s0)             # 0000011C
    lw      t7, 0x0180(a0)             # 00000180
    lui     v0, %hi(func_80937858)     # v0 = 80930000
    addiu   v0, v0, %lo(func_80937858) # v0 = 80937858
    beq     v0, t7, lbl_80937610       
    lw      a1, 0x0044($sp)            
    sw      v0, 0x0028($sp)            
    sw      a2, 0x0034($sp)            
    jal     func_80935AA8              
    sw      a3, 0x0038($sp)            
    lw      v0, 0x0028($sp)            
    lw      a2, 0x0034($sp)            
    lw      a3, 0x0038($sp)            
lbl_80937610:
    lw      t8, 0x0180(a3)             # 00000180
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    beql    v0, t8, lbl_8093767C       
    lwc1    $f2, 0x0050(s0)            # 00000050
    jal     func_80935AA8              
    sw      a2, 0x0034($sp)            
    beq     $zero, $zero, lbl_80937678 
    lw      a2, 0x0034($sp)            
lbl_80937634:
    lw      v1, 0x0180(a0)             # 00000180
    lui     v0, %hi(func_80937858)     # v0 = 80930000
    addiu   v0, v0, %lo(func_80937858) # v0 = 80937858
    beq     v0, v1, lbl_80937658       
    lui     t9, %hi(func_80936EE8)     # t9 = 80930000
    addiu   t9, t9, %lo(func_80936EE8) # t9 = 80936EE8
    beql    t9, v1, lbl_8093765C       
    lw      v1, 0x0180(a3)             # 00000180
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80937658:
    lw      v1, 0x0180(a3)             # 00000180
lbl_8093765C:
    lui     t0, %hi(func_80936EE8)     # t0 = 80930000
    addiu   t0, t0, %lo(func_80936EE8) # t0 = 80936EE8
    beql    v0, v1, lbl_8093767C       
    lwc1    $f2, 0x0050(s0)            # 00000050
    beql    t0, v1, lbl_8093767C       
    lwc1    $f2, 0x0050(s0)            # 00000050
    addiu   a2, a2, 0x0001             # a2 = 00000002
lbl_80937678:
    lwc1    $f2, 0x0050(s0)            # 00000050
lbl_8093767C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a2, $at, lbl_809376B0      
    mov.s   $f12, $f2                  
    lui     a1, 0x3BE5                 # a1 = 3BE50000
    lui     a2, 0x3A03                 # a2 = 3A030000
    ori     a2, a2, 0x126F             # a2 = 3A03126F
    ori     a1, a1, 0x6042             # a1 = 3BE56042
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_8006385C              
    swc1    $f12, 0x0030($sp)          
    lwc1    $f12, 0x0030($sp)          
    beq     $zero, $zero, lbl_809376D8 
    lwc1    $f2, 0x0050(s0)            # 00000050
lbl_809376B0:
    bne     a2, $zero, lbl_809376D8    
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a2, 0x3A03                 # a2 = 3A030000
    ori     a2, a2, 0x126F             # a2 = 3A03126F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_8006385C              
    swc1    $f12, 0x0030($sp)          
    lwc1    $f12, 0x0030($sp)          
    lwc1    $f2, 0x0050(s0)            # 00000050
lbl_809376D8:
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f2, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_809381AC)     # $at = 80940000
    lwc1    $f4, %lo(var_809381AC)($at) 
    lui     $at, %hi(var_809381B0)     # $at = 80940000
    c.eq.s  $f12, $f4                  
    nop
    bc1tl   lbl_80937714               
    c.eq.s  $f12, $f2                  
    lwc1    $f6, %lo(var_809381B0)($at) 
    c.eq.s  $f12, $f6                  
    nop
    bc1f    lbl_8093772C               
    nop
    c.eq.s  $f12, $f2                  
lbl_80937714:
    or      a0, s0, $zero              # a0 = 00000000
    bc1t    lbl_8093772C               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3934          # a1 = 00003934
    lwc1    $f2, 0x0050(s0)            # 00000050
lbl_8093772C:
    lui     v0, %hi(var_809380E0)      # v0 = 80940000
    addiu   v0, v0, %lo(var_809380E0)  # v0 = 809380E0
    lh      t1, 0x0020(v0)             # 80938100
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    mtc1    t1, $f8                    # $f8 = 0.00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    cvt.s.w $f10, $f8                  
    mul.s   $f16, $f10, $f0            
    nop
    mul.s   $f18, $f16, $f2            
    trunc.w.s $f4, $f18                  
    mfc1    t3, $f4                    
    nop
    sh      t3, 0x02F8(s0)             # 000002F8
    lh      t4, 0x0022(v0)             # 80938102
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f16, $f10, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    nop
    sh      t6, 0x02FA(s0)             # 000002FA
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80937838    
    lw      a0, 0x0024($sp)            
    lui     $at, %hi(var_809381B4)     # $at = 80940000
    lwc1    $f6, %lo(var_809381B4)($at) 
    lwc1    $f4, 0x0050(s0)            # 00000050
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80937808               
    lh      t2, 0x0184(s0)             # 00000184
    lw      t7, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    or      a0, s0, $zero              # a0 = 00000000
    and     t8, t7, $at                
    jal     func_80935404              
    sw      t8, 0x0004(s0)             # 00000004
    lbu     t9, 0x02E6(s0)             # 000002E6
    sh      $zero, 0x001C(s0)          # 0000001C
    lui     t1, %hi(var_8093810C)      # t1 = 80940000
    ori     t0, t9, 0x0004             # t0 = 00000004
    sb      t0, 0x02E6(s0)             # 000002E6
    lbu     t1, %lo(var_8093810C)(t1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80935468              
    sb      t1, 0x00AF(s0)             # 000000AF
    beq     $zero, $zero, lbl_8093783C 
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x0184(s0)             # 00000184
lbl_80937808:
    lui     a1, 0x0601                 # a1 = 06010000
    bne     t2, $zero, lbl_8093782C    
    nop
    lui     a1, 0x0600                 # a1 = 06000000
    jal     func_8008D1C4              
    addiu   a1, a1, 0x39B0             # a1 = 060039B0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_80937838 
    sh      t3, 0x0184(s0)             # 00000184
lbl_8093782C:
    jal     func_8008D1C4              
    addiu   a1, a1, 0x9DB0             # a1 = FFFF9DB0
    sh      $zero, 0x0184(s0)          # 00000184
lbl_80937838:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8093783C:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3133          # a1 = 00003133
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80937858:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80937868:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beql    v0, $zero, lbl_809378BC    
    lw      a0, 0x0024($sp)            
    lbu     t6, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_809378B0    
    nop
    jal     func_80936118              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_809378BC 
    lw      a0, 0x0024($sp)            
lbl_809378B0:
    jal     func_80935FC4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)            
lbl_809378BC:
    jal     func_8008D6A8              
    lui     a1, 0x4150                 # a1 = 41500000
    beq     v0, $zero, lbl_80937904    
    lui     $at, %hi(var_809381B8)     # $at = 80940000
    lwc1    $f4, %lo(var_809381B8)($at) 
    lwc1    $f6, 0x0050(s0)            # 00000050
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_809378FC               
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80937908 
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_809378FC:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
lbl_80937904:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_80937908:
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8093792C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8093795C    
    lw      $ra, 0x0014($sp)           
    jal     func_80935468              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_8093795C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80937968:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lh      v0, 0x0184(a2)             # 00000184
    beq     v0, $zero, lbl_8093799C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(a2)             # 00000184
    lh      v0, 0x0184(a2)             # 00000184
lbl_8093799C:
    bnel    v0, $zero, lbl_809379D0    
    lw      $ra, 0x0014($sp)           
    lbu     t7, 0x00AF(a2)             # 000000AF
    or      a0, a2, $zero              # a0 = 00000000
    bne     t7, $zero, lbl_809379C4    
    nop
    jal     func_80936118              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_809379D0 
    lw      $ra, 0x0014($sp)           
lbl_809379C4:
    jal     func_80935468              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_809379D0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809379DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lbu     v0, 0x02C9(s0)             # 000002C9
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80937B78    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x02C9(s0)             # 000002C9
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t8, 0x00B1(s0)             # 000000B1
    bnel    t8, $zero, lbl_80937A30    
    lbu     t0, 0x02CC(s0)             # 000002CC
    lbu     t9, 0x00B0(s0)             # 000000B0
    beql    t9, $zero, lbl_80937B7C    
    lw      $ra, 0x0024($sp)           
    lbu     t0, 0x02CC(s0)             # 000002CC
lbl_80937A30:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, $at, lbl_80937B78      
    lui     $at, %hi(var_809381BC)     # $at = 80940000
    lwc1    $f6, %lo(var_809381BC)($at) 
    lwc1    $f4, 0x0050(s0)            # 00000050
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80937A60               
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80937A60:
    beq     v1, $zero, lbl_80937A88    
    nop
    lw      t1, 0x02F4(s0)             # 000002F4
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    lw      t2, 0x0000(t1)             # 00000000
    andi    t3, t2, 0x0080             # t3 = 00000000
    beq     t3, $zero, lbl_80937A88    
    nop
    sb      t4, 0x00B0(s0)             # 000000B0
    sb      $zero, 0x00B1(s0)          # 000000B1
lbl_80937A88:
    jal     func_80028390              
    sw      v1, 0x0028($sp)            
    bne     v0, $zero, lbl_80937ADC    
    lw      v1, 0x0028($sp)            
    beq     v1, $zero, lbl_80937AB4    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3932          # a1 = 00003932
    beq     $zero, $zero, lbl_80937AC0 
    lw      a0, 0x0034($sp)            
lbl_80937AB4:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3896          # a1 = 00003896
    lw      a0, 0x0034($sp)            
lbl_80937AC0:
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    lw      t5, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t6, t5, $at                
    beq     $zero, $zero, lbl_80937AF4 
    sw      t6, 0x0004(s0)             # 00000004
lbl_80937ADC:
    lbu     t7, 0x00B0(s0)             # 000000B0
    or      a0, s0, $zero              # a0 = 00000000
    beql    t7, $zero, lbl_80937AF8    
    lbu     v0, 0x00B1(s0)             # 000000B1
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3895          # a1 = 00003895
lbl_80937AF4:
    lbu     v0, 0x00B1(s0)             # 000000B1
lbl_80937AF8:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80937B0C      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80937B34      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80937B0C:
    lw      t9, 0x0180(s0)             # 00000180
    lui     t8, %hi(func_80937968)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80937968) # t8 = 80937968
    beql    t8, t9, lbl_80937B7C       
    lw      $ra, 0x0024($sp)           
    jal     func_80936018              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80937B7C 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80937B34:
    bne     v0, $at, lbl_80937B70      
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f10                  # $f10 = 4000.00
    lwc1    $f8, 0x0050(s0)            # 00000050
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    mul.s   $f16, $f8, $f10            
    addiu   a2, s0, 0x0024             # a2 = 00000024
    trunc.w.s $f18, $f16                 
    mfc1    a3, $f18                   
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    jal     func_8001E178              
    sw      a3, 0x0010($sp)            
lbl_80937B70:
    jal     func_80935F08              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80937B78:
    lw      $ra, 0x0024($sp)           
lbl_80937B7C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80937B8C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      t7, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80937858)     # t6 = 80930000
    addiu   t6, t6, %lo(func_80937858) # t6 = 80937858
    beql    t6, t7, lbl_80937DE4       
    lw      $ra, 0x0024($sp)           
    lbu     v0, 0x02C8(s0)             # 000002C8
    lui     $at, 0xC0A0                # $at = C0A00000
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80937C20    
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f2                   # $f2 = -5.00
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f6                   # $f6 = -0.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x40A0                # $at = 40A00000
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    mul.s   $f8, $f4, $f6              
    mtc1    $at, $f10                  # $f10 = 5.00
    sb      t9, 0x02C8(s0)             # 000002C8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80937C14               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80937C14 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80937C14:
    jal     func_809357EC              
    swc1    $f10, 0x0060(s0)           # 00000060
    or      a0, s0, $zero              # a0 = 00000000
lbl_80937C20:
    jal     func_809379DC              
    lw      a1, 0x0044($sp)            
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    jalr    $ra, t9                    
    nop
    lui     t0, %hi(func_80937868)     # t0 = 80930000
    addiu   t0, t0, %lo(func_80937868) # t0 = 80937868
    sw      t0, 0x0030($sp)            
    lw      v0, 0x0180(s0)             # 00000180
    lui     t2, %hi(func_8093707C)     # t2 = 80930000
    addiu   t2, t2, %lo(func_8093707C) # t2 = 8093707C
    beq     t0, v0, lbl_80937C68       
    nop
    lh      t1, 0x00B6(s0)             # 000000B6
    lw      v0, 0x0180(s0)             # 00000180
    sh      t1, 0x0032(s0)             # 00000032
lbl_80937C68:
    beq     t2, v0, lbl_80937C78       
    sw      t2, 0x002C($sp)            
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80937C78:
    lui     $at, %hi(var_809381C0)     # $at = 80940000
    lwc1    $f18, %lo(var_809381C0)($at) 
    lwc1    $f16, 0x0050(s0)           # 00000050
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    mul.s   $f4, $f16, $f18            
    sw      t3, 0x0014($sp)            
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    swc1    $f6, 0x0010($sp)           
    mfc1    a3, $f4                    
    jal     func_80021E6C              
    nop
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x0180(s0)             # 00000180
    lui     t4, %hi(func_80936930)     # t4 = 80930000
    addiu   t4, t4, %lo(func_80936930) # t4 = 80936930
    bnel    t4, v0, lbl_80937D04       
    lw      t7, 0x002C($sp)            
    lw      t5, 0x0004(s0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    lw      a0, 0x0044($sp)            
    or      t6, t5, $at                # t6 = 01000000
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x0004(s0)             # 00000004
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
    lw      v0, 0x0180(s0)             # 00000180
    lw      t7, 0x002C($sp)            
lbl_80937D04:
    lui     t8, %hi(func_80936C08)     # t8 = 80930000
    addiu   t8, t8, %lo(func_80936C08) # t8 = 80936C08
    beq     t7, v0, lbl_80937D8C       
    nop
    beq     t8, v0, lbl_80937D48       
    lw      t9, 0x0030($sp)            
    beq     t9, v0, lbl_80937D48       
    nop
    lhu     t0, 0x0110(s0)             # 00000110
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t0, $zero, lbl_80937D48    
    lw      a0, 0x0044($sp)            
    addu    a1, a0, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    lw      v0, 0x0180(s0)             # 00000180
lbl_80937D48:
    lui     t2, %hi(func_80937398)     # t2 = 80930000
    addiu   t2, t2, %lo(func_80937398) # t2 = 80937398
    bne     t2, v0, lbl_80937D74       
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f8, 0x0154(s0)            # 00000154
    mtc1    $at, $f10                  # $f10 = 20.00
    nop
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80937D8C               
    nop
lbl_80937D74:
    lw      a0, 0x0044($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
lbl_80937D8C:
    lui     $at, %hi(var_809381C4)     # $at = 80940000
    lwc1    $f18, %lo(var_809381C4)($at) 
    lwc1    $f16, 0x0050(s0)           # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F04              
    nop
    lbu     t4, 0x02CC(s0)             # 000002CC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    t4, $at, lbl_80937DE4      
    lw      $ra, 0x0024($sp)           
    lh      v0, 0x0186(s0)             # 00000186
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    beq     v0, $zero, lbl_80937DD4    
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_80937DD4:
    bnel    v0, $zero, lbl_80937DE4    
    lw      $ra, 0x0024($sp)           
    sh      t6, 0x0186(s0)             # 00000186
    lw      $ra, 0x0024($sp)           
lbl_80937DE4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80937DF4:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80937E28      
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t6, 0x0014($sp)            
    lwc1    $f4, 0x0008(a3)            # 00000008
    lh      t7, 0x0188(t6)             # 00000188
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0008(a3)           # 00000008
lbl_80937E28:
    jr      $ra                        
    nop


func_80937E30:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a2, 0x0028($sp)            
    sw      a3, 0x002C($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a1, $at, lbl_80937F14      
    lw      $ra, 0x0014($sp)           
    jal     func_800AA6EC              
    nop
    lui     $at, 0x44C8                # $at = 44C80000
    mtc1    $at, $f12                  # $f12 = 1600.00
    lui     $at, 0xC42F                # $at = C42F0000
    mtc1    $at, $f14                  # $f14 = -700.00
    lui     a2, 0xC4D4                 # a2 = C4D40000
    ori     a2, a2, 0x8000             # a2 = C4D48000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_809381C8)     # $at = 80940000
    lwc1    $f12, %lo(var_809381C8)($at) 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_809381CC)     # $at = 80940000
    lwc1    $f12, %lo(var_809381CC)($at) 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      a2, 0x0034($sp)            
    lw      v1, 0x0000(a2)             # 00000000
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x0000(a2)             # 00000000
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0020($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0034($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x0000(a2)             # 00000000
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x8688             # t1 = 06008688
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a2)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    jal     func_800AA724              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80937F14:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80937F20:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0030($sp)            
    lbu     t7, 0x02CC(s0)             # 000002CC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lw      a0, 0x003C($sp)            
    bne     t7, $at, lbl_80937F7C      
    lui     a1, %hi(var_80938164)      # a1 = 80940000
    lh      a2, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0028         # $at = 00000028
    addiu   a1, a1, %lo(var_80938164)  # a1 = 80938164
    div     $zero, a2, $at             
    mfhi    a2                         
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_8001A0E0              
    addiu   a3, $zero, 0x0028          # a3 = 00000028
lbl_80937F7C:
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lw      t0, 0x0030($sp)            
    lui     t8, %hi(func_80937DF4)     # t8 = 80930000
    lui     t9, %hi(func_80937E30)     # t9 = 80930000
    addiu   t9, t9, %lo(func_80937E30) # t9 = 80937E30
    addiu   t8, t8, %lo(func_80937DF4) # t8 = 80937DF4
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    lw      t1, 0x02C0(t0)             # 000002C0
    lw      a0, 0x003C($sp)            
    jal     func_8008A88C              
    sw      t1, 0x001C($sp)            
    lw      t2, 0x0030($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    sw      v0, 0x02C0(t2)             # 000002C0
    lbu     t3, 0x02CC(s0)             # 000002CC
    bnel    t3, $at, lbl_80937FDC      
    lw      $ra, 0x002C($sp)           
    jal     func_8001A468              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x002C($sp)           
lbl_80937FDC:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80937FEC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    sw      a0, 0x0030($sp)            
    lbu     t7, 0x02CC(s0)             # 000002CC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lw      a0, 0x003C($sp)            
    bne     t7, $at, lbl_80938048      
    lui     a1, %hi(var_80938164)      # a1 = 80940000
    lh      a2, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0028         # $at = 00000028
    addiu   a1, a1, %lo(var_80938164)  # a1 = 80938164
    div     $zero, a2, $at             
    mfhi    a2                         
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_8001A4AC              
    addiu   a3, $zero, 0x0028          # a3 = 00000028
lbl_80938048:
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lw      t0, 0x0030($sp)            
    lui     t8, %hi(func_80937DF4)     # t8 = 80930000
    lui     t9, %hi(func_80937E30)     # t9 = 80930000
    addiu   t9, t9, %lo(func_80937E30) # t9 = 80937E30
    addiu   t8, t8, %lo(func_80937DF4) # t8 = 80937DF4
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    lw      t1, 0x02D0(t0)             # 000002D0
    lw      a0, 0x003C($sp)            
    jal     func_8008A88C              
    sw      t1, 0x001C($sp)            
    lw      t2, 0x0030($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    sw      v0, 0x02D0(t2)             # 000002D0
    lbu     t3, 0x02CC(s0)             # 000002CC
    bnel    t3, $at, lbl_809380A8      
    lw      $ra, 0x002C($sp)           
    jal     func_8001A83C              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x002C($sp)           
lbl_809380A8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_809380C0: .word 0x008E0500, 0x00000405, 0x000B0000, 0x00000304
.word func_809351A0
.word func_809353B4
.word func_80937B8C
.word func_80937F20
var_809380E0: .word \
0x00110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x04100000, 0xFFCFFFFF, 0x00000000, 0x09050100, \
0x00190028, 0x00000000, 0x00000000
var_8093810C: .word 0x0400001E, 0x00289600
var_80938114: .word \
0x10020102, 0x10020210, 0x01020424, 0x02440402, \
0x02240044, 0x00000104, 0x02020804, 0x00000400
var_80938134: .word 0x89170031, 0xB04C157C, 0x386CFC18
var_80938140: .word 0x00000000, 0x00000000, 0x00000000
var_8093814C: .word 0x00000000, 0x00000000, 0x00000000
var_80938158: .word 0x00000000, 0x00000000, 0x00000000
var_80938164: .word 0x00FF0000, 0x00000000, 0x00000000

.section .rodata

var_80938170: .word 0x3B83126F
var_80938174: .word 0x3D888889
var_80938178: .word 0x3E088889
var_8093817C: .word 0xBE19999A
var_80938180: .word 0x3F19999A
var_80938184: .word 0x3DCCCCCD
var_80938188: .word 0x3B83126F
var_8093818C: .word 0x3B83126F
var_80938190: .word 0x3B83126F
var_80938194: .word 0x3B83126F
var_80938198: .word 0x4528C000
var_8093819C: .word 0x4528C000
var_809381A0: .word 0x3EAAAAAB
var_809381A4: .word 0x3B83126F
var_809381A8: .word 0x3DCCCCCD
var_809381AC: .word 0x3BE56042
var_809381B0: .word 0x3B83126F
var_809381B4: .word 0x3C23D70A
var_809381B8: .word 0x3B83126F
var_809381BC: .word 0x3C23D70A
var_809381C0: .word 0x453B8000
var_809381C4: .word 0x451C4000
var_809381C8: .word 0x3F860A92
var_809381CC: .word 0x3E860A92

