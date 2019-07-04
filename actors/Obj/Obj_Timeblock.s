.section .text
func_80B7F860:
    lh      v0, 0x001C(a0)             # 0000001C
    sra     t6, v0, 10                 
    andi    t7, t6, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80B7F8F8    
    sra     t4, v0, 15                 
    lbu     v1, 0x0167(a0)             # 00000167
    sra     t8, v0, 15                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     v1, $zero, lbl_80B7F890    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jr      $ra                        
    lbu     v0, 0x0165(a0)             # 00000165
lbl_80B7F890:
    beq     t9, $zero, lbl_80B7F8A0    
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80B7F8A0 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80B7F8A0:
    bne     v1, $at, lbl_80B7F8B4      
    lui     t1, 0x8012                 # t1 = 80120000
    lbu     t0, 0x0164(a0)             # 00000164
    jr      $ra                        
    xor     v0, t0, a1                 
lbl_80B7F8B4:
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v1, $zero, 0x0011          # v1 = 00000011
    beq     t1, $zero, lbl_80B7F8D0    
    nop
    beq     $zero, $zero, lbl_80B7F8D0 
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_80B7F8D0:
    bnel    v1, $at, lbl_80B7F8E4      
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_80B7F8E4 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B7F8E4:
    lbu     t2, 0x0164(a0)             # 00000164
    xor     t3, t2, a1                 
    jr      $ra                        
    xor     v0, t3, v1                 
lbl_80B7F8F4:
    sra     t4, v0, 15                 
lbl_80B7F8F8:
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80B7F910    
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_80B7F910 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B7F910:
    lbu     t6, 0x0164(a0)             # 00000164
    xor     v0, v1, t6                 
    jr      $ra                        
    nop


func_80B7F920:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0030($sp)            
    lw      t6, 0x0030($sp)            
    lui     t1, %hi(var_80B80368)      # t1 = 80B80000
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lwc1    $f4, 0x0028(t6)            # 00000028
    lw      a3, 0x0024(t6)             # 00000024
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(t6)            # 0000002C
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    swc1    $f6, 0x0014($sp)           
    lh      t7, 0x001C(t6)             # 0000001C
    sra     t8, t7,  8                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    t1, t1, t0                 
    lh      t1, %lo(var_80B80368)(t1)  
    jal     func_80025110              # ActorSpawn
    sw      t1, 0x0024($sp)            
    lw      $ra, 0x002C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7F994:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_8002049C              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80B7F9C4    
    lw      a1, 0x001C($sp)            
    jal     func_80020510              
    nop
    beq     $zero, $zero, lbl_80B7F9D0 
    lw      $ra, 0x0014($sp)           
lbl_80B7F9C4:
    jal     func_800204D0              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B7F9D0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7F9DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x00B8(s0)             # 000000B8
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0B30             # a0 = 06000B30
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    jal     func_80033EF4              
    sh      t6, 0x0034(s0)             # 00000034
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, %hi(var_80B80398)      # a1 = 80B80000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(var_80B80398)  # a1 = 80B80398
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B80360)      # a1 = 80B80000
    or      a0, s0, $zero              # a0 = 00000000
    sra     t8, t7,  8                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    a1, a1, t0                 
    jal     func_80020F88              
    lw      a1, %lo(var_80B80360)(a1)  
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t6, %hi(func_80B7FCA4)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7FCA4) # t6 = 80B7FCA4
    sra     t1, v0,  6                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80B7FA94    
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B7FAB4 
    sb      $zero, 0x0167(s0)          # 00000167
lbl_80B7FA94:
    andi    t3, v0, 0x003F             # t3 = 00000000
    slti    $at, t3, 0x0038            
    beq     $at, $zero, lbl_80B7FAB0   
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    beq     $zero, $zero, lbl_80B7FAB4 
    sb      t4, 0x0167(s0)             # 00000167
lbl_80B7FAB0:
    sb      t5, 0x0167(s0)             # 00000167
lbl_80B7FAB4:
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B80364)      # a1 = 80B80000
    sw      t6, 0x0158(s0)             # 00000158
    sra     t8, t7,  8                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    a1, a1, t0                 
    jal     func_80020F04              
    lw      a1, %lo(var_80B80364)(a1)  
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B7FB00    
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_80B7FB04 
    sb      t1, 0x0164(s0)             # 00000164
lbl_80B7FB00:
    sb      $zero, 0x0164(s0)          # 00000164
lbl_80B7FB04:
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sra     t3, t2, 15                 
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80B7FB28    
    sb      $zero, 0x0165(s0)          # 00000165
    beq     $zero, $zero, lbl_80B7FB28 
    sb      t5, 0x0165(s0)             # 00000165
    sb      $zero, 0x0165(s0)          # 00000165
lbl_80B7FB28:
    jal     func_80B7F860              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    sb      v0, 0x0168(s0)             # 00000168
    sra     t7, t6, 10                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_80B7FB5C    
    lbu     t9, 0x0168(s0)             # 00000168
    jal     func_80B7FDC0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B7FB80 
    lw      $ra, 0x001C($sp)           
    lbu     t9, 0x0168(s0)             # 00000168
lbl_80B7FB5C:
    beq     t9, $zero, lbl_80B7FB74    
    nop
    jal     func_80B80000              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B7FB80 
    lw      $ra, 0x001C($sp)           
lbl_80B7FB74:
    jal     func_80B800E0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B7FB80:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7FB90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7FBC4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    lbu     t6, 0x0168(a0)             # 00000168
    beql    t6, $zero, lbl_80B7FBF8    
    lh      t7, 0x001C(a0)             # 0000001C
    jal     func_80035388              
    sw      a0, 0x0028($sp)            
    beq     v0, $zero, lbl_80B7FBF4    
    lw      a0, 0x0028($sp)            
    beq     $zero, $zero, lbl_80B7FC94 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B7FBF4:
    lh      t7, 0x001C(a0)             # 0000001C
lbl_80B7FBF8:
    lui     $at, %hi(var_80B80378)     # $at = 80B80000
    lwc1    $f6, 0x0090(a0)            # 00000090
    sra     t8, t7, 11                 
    andi    t9, t8, 0x0007             # t9 = 00000000
    sll     t0, t9,  2                 
    addu    $at, $at, t0               
    lwc1    $f4, %lo(var_80B80378)($at) 
    lw      t1, 0x002C($sp)            
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80B7FC94               
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a2, 0x1C44(t1)             # 00001C44
    sw      a0, 0x0028($sp)            
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    jal     func_8002154C              
    addiu   a2, a2, 0x0024             # a2 = 00000024
    lw      a0, 0x0028($sp)            
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f8, 0x0050(a0)            # 00000050
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    mul.s   $f16, $f8, $f10            
    lwc1    $f0, 0x001C($sp)           
    abs.s   $f0, $f0                   
    add.s   $f2, $f16, $f18            
    c.lt.s  $f2, $f0                   
    lwc1    $f0, 0x0024($sp)           
    bc1t    lbl_80B7FC88               
    nop
    abs.s   $f0, $f0                   
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B7FC94               
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B7FC88:
    beq     $zero, $zero, lbl_80B7FC94 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B7FC94:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7FCA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      v1, 0x1C44(a2)             # 00001C44
    sw      a2, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80B7FBC4              
    sw      v1, 0x001C($sp)            
    lw      v1, 0x001C($sp)            
    beq     v0, $zero, lbl_80B7FD10    
    lw      a2, 0x0024($sp)            
    lw      v0, 0x0670(v1)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      a0, a2, $zero              # a0 = 00000000
    sll     t6, v0,  7                 
    bgez    t6, lbl_80B7FD0C           
    or      t9, v0, $at                # t9 = 00800000
    jal     func_800DD400              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t8, 0x0020($sp)            
    lui     t7, %hi(func_80B7FD24)     # t7 = 80B80000
    addiu   t7, t7, %lo(func_80B7FD24) # t7 = 80B7FD24
    beq     $zero, $zero, lbl_80B7FD10 
    sw      t7, 0x0158(t8)             # 00000158
lbl_80B7FD0C:
    sw      t9, 0x0670(v1)             # 00000670
lbl_80B7FD10:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7FD24:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a1, $at                
    lhu     t6, 0x04C6(v0)             # 000004C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t7, %hi(func_80B7FCA4)     # t7 = 80B80000
    bne     t6, $at, lbl_80B7FD44      
    addiu   t7, t7, %lo(func_80B7FCA4) # t7 = 80B7FCA4
    sw      t7, 0x0158(a0)             # 00000158
lbl_80B7FD44:
    lhu     t8, 0x04C4(v0)             # 000004C4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t8, $at, lbl_80B7FD94      
    nop
    lhu     t9, 0x0162(a0)             # 00000162
    addiu   $at, $zero, 0x00FE         # $at = 000000FE
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    bnel    t9, $at, lbl_80B7FD78      
    lh      t1, 0x015E(a0)             # 0000015E
    beq     $zero, $zero, lbl_80B7FD94 
    sh      t0, 0x015E(a0)             # 0000015E
    lh      t1, 0x015E(a0)             # 0000015E
lbl_80B7FD78:
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x015E(a0)             # 0000015E
    lh      t3, 0x015E(a0)             # 0000015E
    bne     t3, $zero, lbl_80B7FD94    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B7FD94:
    jr      $ra                        
    nop


func_80B7FD9C:
    lui     t6, %hi(func_80B7FDB0)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7FDB0) # t6 = 80B7FDB0
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80B7FDB0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B7FDC0:
    lui     t6, %hi(func_80B7FDD4)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7FDD4) # t6 = 80B7FDD4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80B7FDD4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t9, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jalr    $ra, t9                    
    nop
    beql    v0, $zero, lbl_80B7FE68    
    lw      a0, 0x002C($sp)            
    lh      t6, 0x015C(s0)             # 0000015C
    or      a0, s0, $zero              # a0 = 00000000
    bgtzl   t6, lbl_80B7FE68           
    lw      a0, 0x002C($sp)            
    jal     func_80B7F920              
    lw      a1, 0x002C($sp)            
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sh      t7, 0x015C(s0)             # 0000015C
    lw      a0, 0x002C($sp)            
    jal     func_8006BA10              
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t0, 0x0167(s0)             # 00000167
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sh      t8, 0x0160(s0)             # 00000160
    bnel    t0, $zero, lbl_80B7FE58    
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    xori    t2, t1, 0x8000             # t2 = FFFF8000
    beq     $zero, $zero, lbl_80B7FE64 
    sh      t2, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B7FE58:
    lw      a0, 0x002C($sp)            
    jal     func_80B7F994              
    andi    a1, a1, 0x003F             # a1 = 00000000
lbl_80B7FE64:
    lw      a0, 0x002C($sp)            
lbl_80B7FE68:
    lui     t3, 0x0001                 # t3 = 00010000
    lh      v0, 0x0160(s0)             # 00000160
    addu    t3, t3, a0                 
    lhu     t3, 0x04C4(t3)             # 000104C4
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    blez    v0, lbl_80B7FEE8           
    sh      t3, 0x0162(s0)             # 00000162
    sh      t4, 0x0160(s0)             # 00000160
    lh      t5, 0x0160(s0)             # 00000160
    bne     t5, $zero, lbl_80B7FEE8    
    nop
    lbu     t9, 0x0167(s0)             # 00000167
    bnel    t9, $zero, lbl_80B7FECC    
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sra     t7, t6, 15                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B7FEC0    
    nop
    beq     $zero, $zero, lbl_80B7FEE8 
    sb      t0, 0x0165(s0)             # 00000165
lbl_80B7FEC0:
    beq     $zero, $zero, lbl_80B7FEE8 
    sb      $zero, 0x0165(s0)          # 00000165
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B7FECC:
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B7FEE4    
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_80B7FEE8 
    sb      t1, 0x0164(s0)             # 00000164
lbl_80B7FEE4:
    sb      $zero, 0x0164(s0)          # 00000164
lbl_80B7FEE8:
    jal     func_80B7F860              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t2, 0x0167(s0)             # 00000167
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      v1, v0, $zero              # v1 = 00000000
    bnel    t2, $at, lbl_80B7FF24      
    lh      t4, 0x015C(s0)             # 0000015C
    lbu     t3, 0x0168(s0)             # 00000168
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, t3, lbl_80B7FF24       
    lh      t4, 0x015C(s0)             # 0000015C
    jal     func_80B7FD9C              
    sw      v0, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    lh      t4, 0x015C(s0)             # 0000015C
lbl_80B7FF24:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    sb      v1, 0x0168(s0)             # 00000168
    bnel    t4, $at, lbl_80B7FF40      
    lw      $ra, 0x001C($sp)           
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lw      $ra, 0x001C($sp)           
lbl_80B7FF40:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7FF50:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lw      t8, 0x002C($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    andi    t7, t6, 0x003F             # t7 = 00000000
    sw      t7, 0x0024($sp)            
    lh      v0, 0x0160(s0)             # 00000160
    addu    t9, t9, t8                 
    lhu     t9, 0x04C4(t9)             # 000104C4
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    blez    v0, lbl_80B7FFC0           
    sh      t9, 0x0162(s0)             # 00000162
    sh      t0, 0x0160(s0)             # 00000160
    lh      t1, 0x0160(s0)             # 00000160
    lw      a0, 0x002C($sp)            
    bne     t1, $zero, lbl_80B7FFC0    
    nop
    jal     func_8002049C              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80B7FFBC    
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_80B7FFC0 
    sb      t2, 0x0164(s0)             # 00000164
lbl_80B7FFBC:
    sb      $zero, 0x0164(s0)          # 00000164
lbl_80B7FFC0:
    jal     func_80B7F860              
    or      a0, s0, $zero              # a0 = 00000000
    sb      v0, 0x0168(s0)             # 00000168
    lw      a1, 0x0024($sp)            
    jal     func_8002049C              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80B7FFE8    
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_80B7FFEC 
    sb      t3, 0x0166(s0)             # 00000166
lbl_80B7FFE8:
    sb      $zero, 0x0166(s0)          # 00000166
lbl_80B7FFEC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B80000:
    lui     t6, %hi(func_80B80014)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B80014) # t6 = 80B80014
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80B80014:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t9, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    beql    v0, $zero, lbl_80B8008C    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x015C(s0)             # 0000015C
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t6, lbl_80B80088           
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B7F920              
    sh      t7, 0x0160(s0)             # 00000160
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    sh      t8, 0x015C(s0)             # 0000015C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006BA10              
    or      a1, s0, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B7F994              
    andi    a1, a1, 0x003F             # a1 = 00000000
lbl_80B80088:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B8008C:
    jal     func_80B7FF50              
    or      a1, s1, $zero              # a1 = 00000000
    lh      t0, 0x015C(s0)             # 0000015C
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t0, $at, lbl_80B800B0      
    lbu     t1, 0x0168(s0)             # 00000168
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lbu     t1, 0x0168(s0)             # 00000168
lbl_80B800B0:
    bnel    t1, $zero, lbl_80B800D0    
    lw      $ra, 0x001C($sp)           
    lh      t2, 0x015C(s0)             # 0000015C
    bgtzl   t2, lbl_80B800D0           
    lw      $ra, 0x001C($sp)           
    jal     func_80B800E0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B800D0:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B800E0:
    lui     t6, %hi(func_80B800F4)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B800F4) # t6 = 80B800F4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80B800F4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B80128    
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_80B80128 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B80128:
    lbu     t6, 0x0166(s0)             # 00000166
    beql    t6, v1, lbl_80B80188       
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
    sra     t9, t8, 15                 
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80B80154    
    nop
    beq     $zero, $zero, lbl_80B80154 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B80154:
    beql    v0, v1, lbl_80B80188       
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x015C(s0)             # 0000015C
    or      a0, s0, $zero              # a0 = 00000000
    bgtzl   t2, lbl_80B80180           
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    jal     func_80B7F920              
    lw      a1, 0x0024($sp)            
    addiu   t3, $zero, 0x00A0          # t3 = 000000A0
    sh      t3, 0x015C(s0)             # 0000015C
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
lbl_80B80180:
    sh      t4, 0x0160(s0)             # 00000160
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B80188:
    jal     func_80B7FF50              
    lw      a1, 0x0024($sp)            
    lbu     t5, 0x0168(s0)             # 00000168
    beql    t5, $zero, lbl_80B801B4    
    lw      $ra, 0x001C($sp)           
    lh      t6, 0x015C(s0)             # 0000015C
    bgtzl   t6, lbl_80B801B4           
    lw      $ra, 0x001C($sp)           
    jal     func_80B80000              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B801B4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B801C4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0020($sp)            
    lw      t9, 0x0154(a3)             # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      a3, 0x0020($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0810             # a1 = 00000810
    lh      v0, 0x015C(a3)             # 0000015C
    blez    v0, lbl_80B8020C           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015C(a3)             # 0000015C
lbl_80B8020C:
    lbu     t7, 0x0168(a3)             # 00000168
    beq     t7, $zero, lbl_80B80230    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0810             # a1 = 00000810
    jal     func_80031530              
    lw      a2, 0x013C(a3)             # 0000013C
    beq     $zero, $zero, lbl_80B8023C 
    lw      $ra, 0x001C($sp)           
lbl_80B80230:
    jal     func_800314D8              
    lw      a2, 0x013C(a3)             # 0000013C
    lw      $ra, 0x001C($sp)           
lbl_80B8023C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B8024C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t6, 0x0168(a2)             # 00000168
    lw      t2, 0x002C($sp)            
    beql    t6, $zero, lbl_80B80334    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x0018(a2)             # 00000018
    lui     t1, %hi(var_80B803A8)      # t1 = 80B80000
    addiu   t1, t1, %lo(var_80B803A8)  # t1 = 80B803A8
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    addu    a3, t9, t1                 
    lw      a0, 0x0000(t2)             # 00000000
    sw      a3, 0x0024($sp)            
    jal     func_8007E298              
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a1)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x002C($sp)            
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0018($sp)            
    lw      t0, 0x0018($sp)            
    lw      a1, 0x0020($sp)            
    lw      a3, 0x0024($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t3, 0x0001(a3)             # 00000001
    lbu     t9, 0x0000(a3)             # 00000000
    lbu     t7, 0x0002(a3)             # 00000002
    sll     t4, t3, 16                 
    sll     t1, t9, 24                 
    or      t5, t1, t4                 # t5 = 00000000
    sll     t8, t7,  8                 
    or      t9, t5, t8                 # t9 = 00000000
    ori     t2, t9, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0980             # t4 = 06000980
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a1)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)           
lbl_80B80334:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B80340: .word 0x01D10700, 0x0A000011, 0x01900000, 0x0000016C
.word func_80B7F9DC
.word func_80B7FB90
.word func_80B801C4
.word func_80B8024C
var_80B80360: .word 0x3F800000
var_80B80364: .word 0x42700000
var_80B80368: .word 0x00180000, 0x3F19999A, 0x42200000, 0x00190000
var_80B80378: .word \
0x42700000, 0x42C80000, 0x430C0000, 0x43340000, \
0x435C0000, 0x43820000, 0x43960000, 0x43960000
var_80B80398: .word 0x801F0002, 0xB0F40708, 0xB0F8012C, 0x30FC05DC
var_80B803A8: .word \
0x64788C50, 0x8CC86496, 0xC864C8F0, 0x506E8C46, \
0xA0E15064, 0x82646EBE

.section .rodata


