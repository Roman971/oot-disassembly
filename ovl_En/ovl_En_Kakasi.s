.section .text
func_80B18280:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x01AC             # a1 = 000001AC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B182AC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a1, s0, 0x01AC             # a1 = 000001AC
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80B18E80)      # a3 = 80B20000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B18E80)  # a3 = 80B18E80
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sb      t6, 0x001F(s0)             # 0000001F
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0214             # a3 = 06000214
    addiu   a2, a2, 0x65B0             # a2 = 060065B0
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x003C($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x0140             # a1 = 00000140
    lwl     t8, 0x0030(s0)             # 00000030
    lwr     t8, 0x0033(s0)             # 00000033
    lw      t9, 0x0004(s0)             # 00000004
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    swl     t8, 0x019E(s0)             # 0000019E
    swr     t8, 0x01A1(s0)             # 000001A1
    lhu     t8, 0x0034(s0)             # 00000034
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     t0, t9, 0x0400             # t0 = 00000400
    sw      t0, 0x0004(s0)             # 00000004
    sb      t1, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    sh      t8, 0x01A2(s0)             # 000001A2
    lui     t2, %hi(func_80B18748)     # t2 = 80B20000
    addiu   t2, t2, %lo(func_80B18748) # t2 = 80B18748
    sw      t2, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18374:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sh      $zero, 0x019C(s0)          # 0000019C
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t6, 0x019C(s0)             # 0000019C
    sh      $zero, 0x0194(s0)          # 00000194
    addiu   a0, s0, 0x0158             # a0 = 00000158
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f4, 0x015C(s0)            # 0000015C
    jal     func_800642F0              
    sh      t6, 0x0198(s0)             # 00000198
    lh      a1, 0x019E(s0)             # 0000019E
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      a1, 0x01A0(s0)             # 000001A0
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      a1, 0x01A2(s0)             # 000001A2
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18408:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)            
    sll     a2, a2, 16                 
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16                 
    sw      $ra, 0x0024($sp)           
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1                 
    beq     a2, $zero, lbl_80B184A0    
    lbu     v0, 0x04E8(v0)             # 000104E8
    lh      t6, 0x0192(s0)             # 00000192
    lui     $at, %hi(var_80B18ED0)     # $at = 80B20000
    bne     t6, $zero, lbl_80B1847C    
    nop
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80B18ED0)($at) 
    trunc.w.s $f4, $f0                   
    lui     $at, %hi(var_80B18ED4)     # $at = 80B20000
    mfc1    t0, $f4                    
    nop
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    sh      t1, 0x0192(s0)             # 00000192
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80B18ED4)($at) 
    trunc.w.s $f6, $f0                   
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x0196(s0)             # 00000196
lbl_80B1847C:
    lui     $at, %hi(var_80B18ED8)     # $at = 80B20000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80B18ED8)($at) 
    trunc.w.s $f8, $f0                   
    lh      v0, 0x0196(s0)             # 00000196
    mfc1    t7, $f8                    
    nop
    addiu   t8, t7, 0x0005             # t8 = 00000005
    sh      t8, 0x018A(s0)             # 0000018A
lbl_80B184A0:
    sltiu   $at, v0, 0x0005            
    beq     $at, $zero, lbl_80B18564   
    sll     t9, v0,  2                 
    lui     $at, %hi(var_80B18EDC)     # $at = 80B20000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80B18EDC)($at) 
    jr      t9                         
    nop
var_80B184C0:
    lh      t0, 0x018A(s0)             # 0000018A
    lh      t2, 0x0194(s0)             # 00000194
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t1, t0, 0x0001             # t1 = 00000001
    bne     t2, $zero, lbl_80B18564    
    sh      t1, 0x018A(s0)             # 0000018A
    sh      t3, 0x0194(s0)             # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x286B          # a1 = 0000286B
    beq     $zero, $zero, lbl_80B18568 
    lh      v0, 0x018A(s0)             # 0000018A
var_80B184F0:
    lh      t4, 0x018A(s0)             # 0000018A
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80B18564 
    swc1    $f10, 0x01A8(s0)           # 000001A8
var_80B1850C:
    lh      t6, 0x018A(s0)             # 0000018A
    lh      t8, 0x019C(s0)             # 0000019C
    addiu   t9, $zero, 0x1388          # t9 = 00001388
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bne     t8, $zero, lbl_80B18564    
    sh      t7, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80B18564 
    sh      t9, 0x019C(s0)             # 0000019C
var_80B1852C:
    lh      t0, 0x018A(s0)             # 0000018A
    lh      t2, 0x0198(s0)             # 00000198
    addiu   t3, $zero, 0x1388          # t3 = 00001388
    addiu   t1, t0, 0x0001             # t1 = 00000001
    bne     t2, $zero, lbl_80B18564    
    sh      t1, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80B18564 
    sh      t3, 0x0198(s0)             # 00000198
var_80B1854C:
    lh      t4, 0x018A(s0)             # 0000018A
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x018A(s0)             # 0000018A
    swc1    $f16, 0x01A8(s0)           # 000001A8
lbl_80B18564:
    lh      v0, 0x018A(s0)             # 0000018A
lbl_80B18568:
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    slti    $at, v0, 0x0009            
    bne     $at, $zero, lbl_80B18580   
    nop
    sh      t6, 0x018A(s0)             # 0000018A
    lh      v0, 0x018A(s0)             # 0000018A
lbl_80B18580:
    beq     v0, $zero, lbl_80B18734    
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80B185C0      
    swc1    $f18, 0x006C(s0)           # 0000006C
    lhu     t7, 0x0088(s0)             # 00000088
    lui     $at, 0x4040                # $at = 40400000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0001             # t8 = 00000001
    beql    t8, $zero, lbl_80B185C4    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mtc1    $at, $f4                   # $f4 = 3.00
    addiu   a1, $zero, 0x1847          # a1 = 00001847
    jal     func_80022FD0              
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80B185C0:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
lbl_80B185C4:
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    jal     func_80064280              
    lw      a1, 0x01A8(s0)             # 000001A8
    lh      a1, 0x0198(s0)             # 00000198
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      a1, 0x019C(s0)             # 0000019C
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      v0, 0x0198(s0)             # 00000198
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B18674    
    lh      v0, 0x019C(s0)             # 0000019C
    lh      t9, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    subu    t0, t9, v0                 
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80B18674               
    lh      v0, 0x019C(s0)             # 0000019C
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f6                    
    nop
    sh      t2, 0x0198(s0)             # 00000198
    lh      v0, 0x019C(s0)             # 0000019C
lbl_80B18674:
    beql    v0, $zero, lbl_80B186D4    
    lh      t7, 0x0194(s0)             # 00000194
    lh      t3, 0x00B8(s0)             # 000000B8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    subu    t4, t3, v0                 
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80B186D4               
    lh      t7, 0x0194(s0)             # 00000194
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t6, $f8                    
    nop
    sh      t6, 0x019C(s0)             # 0000019C
    lh      t7, 0x0194(s0)             # 00000194
lbl_80B186D4:
    beql    t7, $zero, lbl_80B186FC    
    lwc1    $f10, 0x0158(s0)           # 00000158
    lh      t8, 0x00B6(s0)             # 000000B6
    addiu   t9, t8, 0x1000             # t9 = 00001000
    sh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x00B6(s0)             # 000000B6
    bnel    t0, $zero, lbl_80B186FC    
    lwc1    $f10, 0x0158(s0)           # 00000158
    sh      $zero, 0x0194(s0)          # 00000194
    lwc1    $f10, 0x0158(s0)           # 00000158
lbl_80B186FC:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    beq     v0, $at, lbl_80B18724      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v0, $at, lbl_80B1872C      
    nop
lbl_80B18724:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x286A          # a1 = 0000286A
lbl_80B1872C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
lbl_80B18734:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18748:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0214             # a0 = 06000214
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0214             # a1 = 06000214
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t0, $zero, 0x4076          # t0 = 00004076
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sh      t0, 0x010E(s0)             # 0000010E
    sh      t1, 0x0186(s0)             # 00000186
    lw      t2, 0x0004(v0)             # 8011A5D4
    lui     t0, %hi(func_80B18844)     # t0 = 80B20000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     t2, $zero, lbl_80B1880C    
    addiu   t0, t0, %lo(func_80B18844) # t0 = 80B18844
    sb      $zero, 0x0184(s0)          # 00000184
    lbu     t3, 0x0F40(v0)             # 8011B510
    addiu   t4, $zero, 0x407A          # t4 = 0000407A
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    beql    t3, $zero, lbl_80B18830    
    sw      t0, 0x013C(s0)             # 0000013C
    sh      t4, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80B1882C 
    sh      t5, 0x0186(s0)             # 00000186
lbl_80B1880C:
    sb      t6, 0x0184(s0)             # 00000184
    lbu     t7, 0x0F40(v0)             # 8011B510
    addiu   t8, $zero, 0x4079          # t8 = 00004079
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    beql    t7, $zero, lbl_80B18830    
    sw      t0, 0x013C(s0)             # 0000013C
    sh      t8, 0x010E(s0)             # 0000010E
    sh      t9, 0x0186(s0)             # 00000186
lbl_80B1882C:
    sw      t0, 0x013C(s0)             # 0000013C
lbl_80B18830:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18844:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_80B18374              
    sw      t7, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      t8, 0x01F8(s0)             # 000001F8
    lw      a1, 0x0034($sp)            
    jal     func_80022930              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B188BC    
    lui     $at, 0x42F0                # $at = 42F00000
    lh      t9, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t1, %hi(func_80B18748)     # t1 = 80B20000
    bne     t9, $at, lbl_80B188B4      
    addiu   t1, t1, %lo(func_80B18748) # t1 = 80B18748
    lui     t0, %hi(func_80B18AAC)     # t0 = 80B20000
    addiu   t0, t0, %lo(func_80B18AAC) # t0 = 80B18AAC
    beq     $zero, $zero, lbl_80B189AC 
    sw      t0, 0x013C(s0)             # 0000013C
lbl_80B188B4:
    beq     $zero, $zero, lbl_80B189AC 
    sw      t1, 0x013C(s0)             # 0000013C
lbl_80B188BC:
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f4                   # $f4 = 0.00
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t3, 0x00B6(s0)             # 000000B6
    c.lt.s  $f4, $f0                   
    subu    v0, t2, t3                 
    sll     v0, v0, 16                 
    bc1t    lbl_80B189AC               
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B188F4           
    subu    v1, $zero, v0              
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_80B188FC 
    sra     v1, v1, 16                 
lbl_80B188F4:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80B188FC:
    slti    $at, v1, 0x4300            
    beql    $at, $zero, lbl_80B189B0   
    lw      $ra, 0x0024($sp)           
    lbu     t4, 0x0184(s0)             # 00000184
    lw      v1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    bne     t4, $zero, lbl_80B189A4    
    lui     a2, 0x42C8                 # a2 = 42C80000
    lw      v0, 0x0670(v1)             # 00000670
    addiu   a1, $zero, 0x08D4          # a1 = 000008D4
    or      a3, s0, $zero              # a3 = 00000000
    sll     t5, v0,  7                 
    bgez    t5, lbl_80B18984           
    lui     $at, 0x42A0                # $at = 42A00000
    lw      a0, 0x0034($sp)            
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    sh      v0, 0x01F8(s0)             # 000001F8
    lw      a0, 0x0034($sp)            
    jal     func_800DD400              
    addiu   a1, $zero, 0x002A          # a1 = 0000002A
    mtc1    $zero, $f6                 # $f6 = 0.00
    sh      $zero, 0x018A(s0)          # 0000018A
    lui     $at, 0x0080                # $at = 00800000
    swc1    $f6, 0x01A8(s0)            # 000001A8
    lw      t6, 0x002C($sp)            
    lui     t9, %hi(func_80B189C0)     # t9 = 80B20000
    addiu   t9, t9, %lo(func_80B189C0) # t9 = 80B189C0
    lw      t7, 0x0670(t6)             # 00000670
    or      t8, t7, $at                # t8 = 00800000
    sw      t8, 0x0670(t6)             # 00000670
    beq     $zero, $zero, lbl_80B189AC 
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80B18984:
    mtc1    $at, $f8                   # $f8 = 0.00
    lui     $at, 0x0080                # $at = 00800000
    or      t0, v0, $at                # t0 = 00800000
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80B189A4               
    nop
    sw      t0, 0x0670(v1)             # 00000670
lbl_80B189A4:
    jal     func_80022A68              
    lw      a1, 0x0034($sp)            
lbl_80B189AC:
    lw      $ra, 0x0024($sp)           
lbl_80B189B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B189C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a3, $at                
    lhu     a2, 0x04C6(v1)             # 000004C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      v0, 0x1C44(a3)             # 00001C44
    bnel    a2, $at, lbl_80B18A6C      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     t6, 0x03DC(v1)             # 000003DC
    bnel    t6, $zero, lbl_80B18A6C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t7, 0x018A(s0)             # 0000018A
    or      a0, a3, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_80B18A48    
    nop
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800D6218              
    sw      a3, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    addiu   t8, $zero, 0x4077          # t8 = 00004077
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t8, 0x010E(s0)             # 0000010E
    sh      t9, 0x0186(s0)             # 00000186
    andi    a1, t8, 0xFFFF             # a1 = 00004077
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t0, %hi(func_80B18AAC)     # t0 = 80B20000
    addiu   t0, t0, %lo(func_80B18AAC) # t0 = 80B18AAC
    beq     $zero, $zero, lbl_80B18A98 
    sw      t0, 0x013C(s0)             # 0000013C
lbl_80B18A48:
    jal     func_8006B9B4              
    lh      a1, 0x01F8(s0)             # 000001F8
    lui     t2, %hi(func_80B18748)     # t2 = 80B20000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, t2, %lo(func_80B18748) # t2 = 80B18748
    sh      t1, 0x01F8(s0)             # 000001F8
    beq     $zero, $zero, lbl_80B18A98 
    sw      t2, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80B18A6C:
    bne     a2, $at, lbl_80B18A98      
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80B18408              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    lui     $at, 0x0080                # $at = 00800000
    lw      t3, 0x0670(v0)             # 00000670
    or      t4, t3, $at                # t4 = 00800000
    sw      t4, 0x0670(v0)             # 00000670
lbl_80B18A98:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18AAC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_80B18374              
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s1, 0x0140             # a0 = 00000140
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x0186(s1)             # 00000186
    bnel    t6, v0, lbl_80B18B7C       
    lw      $ra, 0x0024($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B18B7C    
    lw      $ra, 0x0024($sp)           
    lh      v0, 0x01F8(s1)             # 000001F8
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_80B18B24      
    sll     t7, v0,  2                 
    addu    t8, s0, t7                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t8)             # 00000790
lbl_80B18B24:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x08DE          # a1 = 000008DE
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x0001                # $at = 00010000
    sh      v0, 0x01F8(s1)             # 000001F8
    addu    $at, $at, s0               
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DD400              
    addiu   a1, $zero, 0x002B          # a1 = 0000002B
    lui     t0, %hi(func_80B18B8C)     # t0 = 80B20000
    addiu   t0, t0, %lo(func_80B18B8C) # t0 = 80B18B8C
    sw      t0, 0x013C(s1)             # 0000013C
    lw      $ra, 0x0024($sp)           
lbl_80B18B7C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B18B8C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at                
    lhu     t6, 0x04C6(v0)             # 000004C6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_80B18BD0      
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B18408              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_80B18C80 
    lw      $ra, 0x0024($sp)           
lbl_80B18BD0:
    lbu     t7, 0x03DC(v0)             # 000003DC
    bnel    t7, $zero, lbl_80B18C80    
    lw      $ra, 0x0024($sp)           
    lbu     t8, 0x0184(s0)             # 00000184
    addiu   t1, $zero, 0x4078          # t1 = 00004078
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    beq     t8, $zero, lbl_80B18C18    
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x4077          # t9 = 00004077
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sh      t9, 0x010E(s0)             # 0000010E
    sh      t0, 0x0186(s0)             # 00000186
    andi    a1, t9, 0xFFFF             # a1 = 00004077
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80B18C2C 
    nop
lbl_80B18C18:
    sh      t1, 0x010E(s0)             # 0000010E
    sh      t2, 0x0186(s0)             # 00000186
    andi    a1, t1, 0xFFFF             # a1 = 00000000
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B18C2C:
    lui     t3, %hi(func_80B18C90)     # t3 = 80B20000
    addiu   t3, t3, %lo(func_80B18C90) # t3 = 80B18C90
    sw      t3, 0x013C(s0)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006B9B4              
    lh      a1, 0x01F8(s0)             # 000001F8
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sh      t4, 0x01F8(s0)             # 000001F8
    sw      $zero, 0x0010($sp)         
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x08D4          # a1 = 000008D4
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC              
    or      a3, s0, $zero              # a3 = 00000000
    sh      v0, 0x01F8(s0)             # 000001F8
    lh      t5, 0x01F8(s0)             # 000001F8
    sll     t6, t5,  2                 
    addu    t7, s1, t6                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t7)             # 00000790
    lw      $ra, 0x0024($sp)           
lbl_80B18C80:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B18C90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80B18374              
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s1, 0x0140             # a0 = 00000140
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x0186(s1)             # 00000186
    bnel    t6, v0, lbl_80B18D18       
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B18D18    
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x01F8(s1)             # 000001F8
    sll     t8, t7,  2                 
    addu    t9, s0, t8                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t9)             # 00000790
    jal     func_800D6218              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t0, %hi(func_80B18748)     # t0 = 80B20000
    addiu   t0, t0, %lo(func_80B18748) # t0 = 80B18748
    sw      t0, 0x013C(s1)             # 0000013C
    lw      $ra, 0x001C($sp)           
lbl_80B18D18:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B18D28:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lwl     t9, 0x00B4(s0)             # 000000B4
    lwr     t9, 0x00B7(s0)             # 000000B7
    lh      t6, 0x0188(s0)             # 00000188
    or      v1, $zero, $zero           # v1 = 00000000
    swl     t9, 0x0030(s0)             # 00000030
    swr     t9, 0x0033(s0)             # 00000033
    lhu     t9, 0x00B8(s0)             # 000000B8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0188(s0)             # 00000188
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    sh      t9, 0x0034(s0)             # 00000034
lbl_80B18D6C:
    lh      a0, 0x018C(v0)             # 0000018C
    addiu   v1, v1, 0x0002             # v1 = 00000002
    beq     a0, $zero, lbl_80B18D80    
    addiu   t0, a0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x018C(v0)             # 0000018C
lbl_80B18D80:
    bne     v1, a1, lbl_80B18D6C       
    addiu   v0, v0, 0x0002             # v0 = 00000002
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0                    
    jal     func_80020F04              
    swc1    $f0, 0x01A4(s0)            # 000001A4
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t1, $zero, 0x001C          # t1 = 0000001C
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    addiu   a2, s0, 0x01AC             # a2 = 000001AC
    or      a1, a2, $zero              # a1 = 000001AC
    sw      a2, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B18E2C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0144(v0)             # 00000144
    lw      a2, 0x0160(v0)             # 00000160
    lbu     a3, 0x0142(v0)             # 00000142
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B18E80: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00040100, \
0x00140046, 0x00000000, 0x00000000
var_80B18EAC: .word 0x017B0400, 0x02000009, 0x01540000, 0x000001FC
.word func_80B182AC
.word func_80B18280
.word func_80B18D28
.word func_80B18E2C
.word 0x00000000

.section .rodata

var_80B18ED0: .word 0x412FD70A
var_80B18ED4: .word 0x409FAE14
var_80B18ED8: .word 0x403F5C29
var_80B18EDC: .word var_80B184C0
.word var_80B184F0
.word var_80B1850C
.word var_80B1852C
.word var_80B1854C

