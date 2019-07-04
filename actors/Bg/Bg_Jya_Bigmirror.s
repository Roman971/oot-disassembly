.section .text
func_80AC5610:
    lbu     t6, 0x014C(a0)             # 0000014C
    addiu   $at, $zero, 0xFFC7         # $at = FFFFFFC7
    lui     v0, 0x0001                 # v0 = 00010000
    and     t7, t6, $at                
    sb      t7, 0x014C(a0)             # 0000014C
    addu    v0, v0, a1                 
    lb      v0, 0x1CBC(v0)             # 00011CBC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    ori     t9, t7, 0x0008             # t9 = 00000008
    bnel    v0, $at, lbl_80AC5648      
    addiu   $at, $zero, 0x0019         # $at = 00000019
    jr      $ra                        
    sb      t9, 0x014C(a0)             # 0000014C
lbl_80AC5644:
    addiu   $at, $zero, 0x0019         # $at = 00000019
lbl_80AC5648:
    bnel    v0, $at, lbl_80AC5664      
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    lbu     t0, 0x014C(a0)             # 0000014C
    ori     t1, t0, 0x0010             # t1 = 00000010
    jr      $ra                        
    sb      t1, 0x014C(a0)             # 0000014C
lbl_80AC5660:
    addiu   $at, $zero, 0x001A         # $at = 0000001A
lbl_80AC5664:
    bne     v0, $at, lbl_80AC5678      
    nop
    lbu     t2, 0x014C(a0)             # 0000014C
    ori     t3, t2, 0x0020             # t3 = 00000020
    sb      t3, 0x014C(a0)             # 0000014C
lbl_80AC5678:
    jr      $ra                        
    nop


func_80AC5680:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s5, 0x004C($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s6, 0x0050($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    lbu     t6, 0x014C(s0)             # 0000014C
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, s0, $zero              # s3 = 00000000
    andi    t7, t6, 0x0030             # t7 = 00000000
    beq     t7, $zero, lbl_80AC57A4    
    addiu   s4, $zero, 0x0010          # s4 = 00000010
    lui     s2, %hi(var_80AC5D24)      # s2 = 80AC0000
    addiu   s2, s2, %lo(var_80AC5D24)  # s2 = 80AC5D24
    or      s4, $zero, $zero           # s4 = 00000000
    or      s3, s0, $zero              # s3 = 00000000
    addiu   s1, s0, 0x013C             # s1 = 0000013C
    addiu   s6, $zero, 0x0002          # s6 = 00000002
lbl_80AC56DC:
    lw      t8, 0x013C(s3)             # 0000013C
    beql    t8, $zero, lbl_80AC5740    
    lwc1    $f4, 0x0000(s2)            # 80AC5D24
    lw      t9, 0x0000(s1)             # 0000013C
    lui     t1, %hi(var_80AC5D4C)      # t1 = 80AC0000
    addiu   t1, t1, %lo(var_80AC5D4C)  # t1 = 80AC5D4C
    lh      t0, 0x00B6(t9)             # 000000B6
    addu    v0, s4, t1                 
    sh      t0, 0x0004(s1)             # 00000140
    lh      t3, 0x0004(s1)             # 00000140
    lh      t2, 0x000E(s2)             # 80AC5D32
    bnel    t2, t3, lbl_80AC5728       
    lbu     t8, 0x0000(v0)             # 00000000
    lbu     t4, 0x014C(s0)             # 0000014C
    lbu     t5, 0x0000(v0)             # 00000000
    or      t6, t4, t5                 # t6 = 00000000
    beq     $zero, $zero, lbl_80AC5788 
    sb      t6, 0x014C(s0)             # 0000014C
    lbu     t8, 0x0000(v0)             # 00000000
lbl_80AC5728:
    lbu     t7, 0x014C(s0)             # 0000014C
    nor     t9, t8, $zero              
    and     t0, t7, t9                 
    beq     $zero, $zero, lbl_80AC5788 
    sb      t0, 0x014C(s0)             # 0000014C
    lwc1    $f4, 0x0000(s2)            # 80AC5D24
lbl_80AC5740:
    addiu   a0, s5, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0004(s2)            # 80AC5D28
    or      a2, s5, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00FC          # a3 = 000000FC
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x0008(s2)            # 80AC5D2C
    sw      $zero, 0x001C($sp)         
    swc1    $f8, 0x0018($sp)           
    lh      t1, 0x0004(s1)             # 00000140
    sw      $zero, 0x0024($sp)         
    sw      t1, 0x0020($sp)            
    lh      t2, 0x000C(s2)             # 80AC5D30
    jal     func_800253F0              
    sw      t2, 0x0028($sp)            
    sw      v0, 0x0000(s1)             # 0000013C
    sw      $zero, 0x011C(s0)          # 0000011C
lbl_80AC5788:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   s2, s2, 0x0014             # s2 = 80AC5D38
    addiu   s3, s3, 0x0008             # s3 = 00000008
    bne     s4, s6, lbl_80AC56DC       
    addiu   s1, s1, 0x0008             # s1 = 00000144
    beq     $zero, $zero, lbl_80AC57F4 
    lw      $ra, 0x0054($sp)           
lbl_80AC57A4:
    lw      t3, 0x013C(s3)             # 00000144
    addiu   s1, s3, 0x013C             # s1 = 00000144
    beql    t3, $zero, lbl_80AC57E8    
    addiu   s2, s2, 0x0008             # s2 = 80AC5D40
    lw      a0, 0x0000(s1)             # 00000144
    lw      a1, 0x011C(a0)             # 0000011C
    beq     a1, $zero, lbl_80AC57D8    
    nop
    jal     func_80020EB4              
    or      a0, a1, $zero              # a0 = 00000000
    lw      t4, 0x0000(s1)             # 00000144
    sw      $zero, 0x011C(t4)          # 0000011C
    lw      a0, 0x0000(s1)             # 00000144
lbl_80AC57D8:
    jal     func_80020EB4              
    nop
    sw      $zero, 0x0000(s1)          # 00000144
    addiu   s2, s2, 0x0008             # s2 = 80AC5D48
lbl_80AC57E8:
    bne     s2, s4, lbl_80AC57A4       
    addiu   s3, s3, 0x0008             # s3 = 00000010
    lw      $ra, 0x0054($sp)           
lbl_80AC57F4:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80AC5818:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0029          # a1 = 00000029
    jal     func_8002049C              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80AC5850    
    lw      a2, 0x0018($sp)            
    lbu     t6, 0x014C(a2)             # 0000014C
    ori     t7, t6, 0x0004             # t7 = 00000004
    beq     $zero, $zero, lbl_80AC585C 
    sb      t7, 0x014C(a2)             # 0000014C
lbl_80AC5850:
    lbu     t8, 0x014C(a2)             # 0000014C
    andi    t9, t8, 0xFFFB             # t9 = 00000000
    sb      t9, 0x014C(a2)             # 0000014C
lbl_80AC585C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC586C:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s4, 0x0040($sp)            
    sw      s2, 0x0038($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s8, 0x0050($sp)            
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s3, 0x003C($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s4, $at                
    sw      a0, 0x0064($sp)            
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x00AB          # a1 = 000000AB
    bltz    v0, lbl_80AC58D4           
    sw      v0, 0x006C($sp)            
    lw      t6, 0x015C(s2)             # 0000015C
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFEC
    beq     v0, t6, lbl_80AC58E4       
    or      s0, s2, $zero              # s0 = 00000000
lbl_80AC58D4:
    sw      $zero, 0x0158(s2)          # 00000158
    sw      $zero, 0x0154(s2)          # 00000154
    beq     $zero, $zero, lbl_80AC59DC 
    sw      $zero, 0x0150(s2)          # 00000150
lbl_80AC58E4:
    lbu     v1, 0x014C(s2)             # 0000014C
    lui     s7, %hi(var_80AC5D50)      # s7 = 80AC0000
    addiu   s7, s7, %lo(var_80AC5D50)  # s7 = 80AC5D50
    andi    v0, v1, 0x0018             # v0 = 00000000
    sltu    v0, $zero, v0              
    beq     v0, $zero, lbl_80AC5918    
    addiu   s8, $zero, 0x0003          # s8 = 00000003
    andi    v0, v1, 0x0002             # v0 = 00000000
    sltu    v0, $zero, v0              
    beql    v0, $zero, lbl_80AC591C    
    sw      v0, 0x0074($sp)            
    andi    v0, v1, 0x0001             # v0 = 00000000
    sltu    v0, $zero, v0              
lbl_80AC5918:
    sw      v0, 0x0074($sp)            
lbl_80AC591C:
    lbu     v0, 0x014C(s2)             # 0000014C
    lui     s5, %hi(var_80AC5D58)      # s5 = 80AC0000
    addiu   s5, s5, %lo(var_80AC5D58)  # s5 = 80AC5D58
    andi    v0, v0, 0x0030             # v0 = 00000000
    sw      v0, 0x007C($sp)            
    sw      v0, 0x0078($sp)            
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
lbl_80AC5938:
    lw      t7, 0x0000(s3)             # FFFFFFEC
    beql    t7, $zero, lbl_80AC59B8    
    lw      a0, 0x0150(s0)             # 00000150
    lw      t8, 0x0150(s0)             # 00000150
    lw      a0, 0x0064($sp)            
    bnel    t8, $zero, lbl_80AC59D0    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    jal     func_80081688              
    lw      a1, 0x006C($sp)            
    beq     v0, $zero, lbl_80AC59CC    
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    multu   s1, s6                     
    sll     t0, s1,  1                 
    addu    t1, s7, t0                 
    lh      t2, 0x0000(t1)             # 00000000
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00B7          # a2 = 000000B7
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      t2, 0x0024($sp)            
    mflo    t9                         
    addu    v0, s5, t9                 
    lwc1    $f4, 0x0004(v0)            # 00000004
    lwc1    $f6, 0x0008(v0)            # 00000008
    lw      a3, 0x0000(v0)             # 00000000
    swc1    $f4, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    beq     $zero, $zero, lbl_80AC59CC 
    sw      v0, 0x0150(s0)             # 00000150
    lw      a0, 0x0150(s0)             # 00000150
lbl_80AC59B8:
    beql    a0, $zero, lbl_80AC59D0    
    addiu   s1, s1, 0x0001             # s1 = 00000002
    jal     func_80020EB4              
    nop
    sw      $zero, 0x0150(s0)          # 00000150
lbl_80AC59CC:
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_80AC59D0:
    addiu   s3, s3, 0x0004             # s3 = FFFFFFF0
    bne     s1, s8, lbl_80AC5938       
    addiu   s0, s0, 0x0004             # s0 = 00000004
lbl_80AC59DC:
    lw      t3, 0x006C($sp)            
    sw      t3, 0x015C(s2)             # 0000015C
    lw      $ra, 0x0054($sp)           
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
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80AC5A14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     t6, %hi(var_80AC5D00)      # t6 = 80AC0000
    lbu     t6, %lo(var_80AC5D00)(t6)  
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    beq     t6, $zero, lbl_80AC5A48    
    nop
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80AC5A8C 
    lw      $ra, 0x0014($sp)           
lbl_80AC5A48:
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lui     v0, %hi(var_80AC5D24)      # v0 = 80AC0000
    addiu   v0, v0, %lo(var_80AC5D24)  # v0 = 80AC5D24
    lw      a0, 0x0018($sp)            
    lh      t7, 0x0010(v0)             # 80AC5D34
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t7, 0x0140(a0)             # 00000140
    lh      t8, 0x0024(v0)             # 80AC5D48
    lui     $at, %hi(var_80AC5D00)     # $at = 80AC0000
    sb      v1, 0x0003(a0)             # 00000003
    sh      t8, 0x0148(a0)             # 00000148
    sb      a1, %lo(var_80AC5D00)($at) 
    sb      a1, 0x014D(a0)             # 0000014D
    sw      v1, 0x015C(a0)             # 0000015C
    lw      $ra, 0x0014($sp)           
lbl_80AC5A8C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC5A98:
    sw      a1, 0x0004($sp)            
    lbu     t6, 0x014D(a0)             # 0000014D
    lui     $at, %hi(var_80AC5D00)     # $at = 80AC0000
    beq     t6, $zero, lbl_80AC5AB0    
    nop
    sb      $zero, %lo(var_80AC5D00)($at) 
lbl_80AC5AB0:
    jr      $ra                        
    nop


func_80AC5AB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80AC5610              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80AC5680              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80AC5818              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80AC586C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC5B08:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x0157          # a1 = 00000157
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80025B0C              
    addiu   a0, a0, 0x1C24             # a0 = 00001C24
    beq     v0, $zero, lbl_80AC5B54    
    or      a1, v0, $zero              # a1 = 00000000
    lwc1    $f4, 0x0028(v0)            # 00000028
    swc1    $f4, 0x0160(s1)            # 00000160
lbl_80AC5B54:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0028(s1)            # 00000028
    lwc1    $f12, 0x0024(s1)           # 00000024
    lw      a2, 0x002C(s1)             # 0000002C
    sw      a1, 0x0020($sp)            
    addiu   a3, s1, 0x00B4             # a3 = 000000B4
    jal     func_800AB510              
    add.s   $f14, $f6, $f8             
    lui     $at, %hi(var_80AC5D90)     # $at = 80AC0000
    lwc1    $f12, %lo(var_80AC5D90)($at) 
    lui     $at, %hi(var_80AC5D94)     # $at = 80AC0000
    lwc1    $f16, %lo(var_80AC5D94)($at) 
    lwc1    $f10, 0x0160(s1)           # 00000160
    lui     $at, %hi(var_80AC5D98)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC5D98)($at) 
    mul.s   $f18, $f10, $f16           
    mfc1    a2, $f12                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    add.s   $f14, $f18, $f4            
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x002C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t9)             # 00000000
    lw      a1, 0x0020($sp)            
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xBC70             # t2 = 0600BC70
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    beq     a1, $zero, lbl_80AC5C70    
    lui     a3, %hi(var_80AC5D7C)      # a3 = 80AC0000
    lwc1    $f12, 0x0024(a1)           # 00000024
    lwc1    $f14, 0x0028(a1)           # 00000028
    lw      a2, 0x002C(a1)             # 0000002C
    jal     func_800AB510              
    addiu   a3, a3, %lo(var_80AC5D7C)  # a3 = 80AC5D7C
    lui     $at, %hi(var_80AC5D9C)     # $at = 80AC0000
    lwc1    $f12, %lo(var_80AC5D9C)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lw      t5, 0x002C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t5)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xBD80             # t8 = 0600BD80
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
lbl_80AC5C70:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80AC5C84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x014C(a2)             # 0000014C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE1B0             # a1 = 0600E1B0
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_80AC5CCC    
    lw      a0, 0x001C($sp)            
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE2D0             # a1 = 0600E2D0
    jal     func_800280C8              
    lw      a0, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    lbu     v0, 0x014C(a2)             # 0000014C
lbl_80AC5CCC:
    andi    t7, v0, 0x0038             # t7 = 00000000
    beq     t7, $zero, lbl_80AC5CF0    
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80AC5CF0    
    andi    t9, v0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80AC5CF0    
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80AC5B08              
    lw      a1, 0x001C($sp)            
lbl_80AC5CF0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80AC5D00: .word 0x00000000
var_80AC5D04: .word 0x01580100, 0x00000030, 0x00F10000, 0x00000164
.word func_80AC5A14
.word func_80AC5A98
.word func_80AC5AB8
.word func_80AC5C84
var_80AC5D24: .word \
0xC40C0000, 0x44D9E000, 0xC39B0000, 0xFF014000, \
0x80000000, 0x42700000, 0x44D9E000, 0xC39B0000, \
0xFF028000, 0xA0000000
var_80AC5D4C: .word 0x01020000
var_80AC5D50: .word 0x00050007, 0x00080000
var_80AC5D58: .word \
0x42700000, 0x44E14000, 0xC489C000, 0xC40C0000, \
0x44E10000, 0xC39B0000, 0x42700000, 0x44E10000, \
0xC39B0000
var_80AC5D7C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80AC5D90: .word 0x3DCCCCCD
var_80AC5D94: .word 0xBA4CCCCD
var_80AC5D98: .word 0x3FB1F0A4
var_80AC5D9C: .word 0x3DCCCCCD

