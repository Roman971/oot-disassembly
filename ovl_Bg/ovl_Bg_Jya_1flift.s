.section .text
func_80B3C730:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x0020($sp)            
    jal     func_80035260              
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0018($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)            
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B3C788:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a1, a1, 0x0154             # a1 = 00000154
    jal     func_8004AB7C              
    sw      a1, 0x0018($sp)            
    lui     a3, %hi(var_80B3CC94)      # a3 = 80B40000
    lw      a1, 0x0018($sp)            
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80B3CC94)  # a3 = 80B3CC94
    jal     func_8004ACEC              
    lw      a0, 0x0024($sp)            
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x00AE(t7)             # 000000AE
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B3C7DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    sb      $zero, 0x01A7(s0)          # 000001A7
    lui     t6, %hi(var_80B3CC70)      # t6 = 80B40000
    lbu     t6, %lo(var_80B3CC70)(t6)  
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80B3C81C    
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3C8C4 
    lw      $ra, 0x001C($sp)           
lbl_80B3C81C:
    addiu   a2, a2, 0x04A8             # a2 = 000004A8
    jal     func_80B3C730              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80B3CCC8)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B3CCC8)  # a1 = 80B3CCC8
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B3C788              
    lw      a1, 0x0024($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B3C8A0    
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t7, $zero, lbl_80B3C878    
    nop
    beq     $zero, $zero, lbl_80B3C878 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80B3C878:
    bne     v0, $at, lbl_80B3C890      
    nop
    jal     func_80B3C9C0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3C8AC 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80B3C890:
    jal     func_80B3C990              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3C8AC 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80B3C8A0:
    jal     func_80B3C92C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80B3C8AC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t8, 0x0003(s0)             # 00000003
    lui     $at, %hi(var_80B3CC70)     # $at = 80B40000
    sb      v0, %lo(var_80B3CC70)($at) 
    sb      v0, 0x01A7(s0)             # 000001A7
    lw      $ra, 0x001C($sp)           
lbl_80B3C8C4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3C8D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x01A7(a3)             # 000001A7
    lui     $at, %hi(var_80B3CC70)     # $at = 80B40000
    addiu   a1, a3, 0x0154             # a1 = 00000154
    beql    t6, $zero, lbl_80B3C920    
    lw      $ra, 0x0014($sp)           
    sb      $zero, %lo(var_80B3CC70)($at) 
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lw      a3, 0x0018($sp)            
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80B3C920:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3C92C:
    lui     t6, %hi(func_80B3C94C)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3C94C) # t6 = 80B3C94C
    sw      t6, 0x01A0(a0)             # 000001A0
    lui     $at, %hi(var_80B3CCC0)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3CCC0)($at) 
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_80B3C94C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80B3C984    
    lw      $ra, 0x0014($sp)           
    jal     func_80B3C9C0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80B3C984:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3C990:
    lui     t6, %hi(func_80B3C9B0)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3C9B0) # t6 = 80B3C9B0
    sw      t6, 0x01A0(a0)             # 000001A0
    lui     $at, %hi(var_80B3CCC0)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3CCC0)($at) 
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_80B3C9B0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B3C9C0:
    lbu     t7, 0x01A6(a0)             # 000001A6
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80B3C9E8)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3C9E8) # t6 = 80B3C9E8
    xori    t8, t7, 0x0001             # t8 = 00000001
    sw      t6, 0x01A0(a0)             # 000001A0
    sb      t8, 0x01A6(a0)             # 000001A6
    swc1    $f4, 0x0060(a0)            # 00000060
    jr      $ra                        
    nop


func_80B3C9E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    jal     func_8006385C              
    lui     a1, 0x40C0                 # a1 = 40C00000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, %hi(var_80B3CCC0)      # a1 = 80B40000
    c.lt.s  $f0, $f12                  
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1fl   lbl_80B3CA40               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B3CA40 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80B3CA40:
    lbu     t6, 0x01A6(s0)             # 000001A6
    mfc1    a3, $f2                    
    swc1    $f12, 0x0010($sp)          
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    jal     func_80064178              
    lw      a1, %lo(var_80B3CCC0)(a1)  
    lui     $at, %hi(var_80B3CCE0)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3CCE0)($at) 
    abs.s   $f0, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80B3CAB0               
    nop
    lbu     t8, 0x01A6(s0)             # 000001A6
    lui     $at, %hi(var_80B3CCC0)     # $at = 80B40000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t9, t8,  2                 
    addu    $at, $at, t9               
    lwc1    $f6, %lo(var_80B3CCC0)($at) 
    jal     func_80B3CACC              
    swc1    $f6, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    beq     $zero, $zero, lbl_80B3CABC 
    lw      $ra, 0x0024($sp)           
lbl_80B3CAB0:
    jal     func_8002313C              
    addiu   a1, $zero, 0x20B9          # a1 = 000020B9
    lw      $ra, 0x0024($sp)           
lbl_80B3CABC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3CACC:
    lui     t6, %hi(func_80B3CAE4)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3CAE4) # t6 = 80B3CAE4
    sw      t6, 0x01A0(a0)             # 000001A0
    sh      $zero, 0x01A4(a0)          # 000001A4
    jr      $ra                        
    nop


func_80B3CAE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x01A4(a0)             # 000001A4
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01A4(a0)             # 000001A4
    lh      t8, 0x01A4(a0)             # 000001A4
    slti    $at, t8, 0x0015            
    bnel    $at, $zero, lbl_80B3CB18   
    lw      $ra, 0x0014($sp)           
    jal     func_80B3C9C0              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B3CB18:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3CB24:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1                 
    lb      v0, 0x1CBC(v0)             # 00011CBC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v0, $at, lbl_80B3CB60      
    lw      t9, 0x01A0(s0)             # 000001A0
    bne     v0, $zero, lbl_80B3CC24    
    nop
    lw      t9, 0x01A0(s0)             # 000001A0
lbl_80B3CB60:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B3CB88    
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_80B3CB88 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B3CB88:
    lw      v0, 0x01A0(s0)             # 000001A0
    lui     t6, %hi(func_80B3C9E8)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3C9E8) # t6 = 80B3C9E8
    beq     t6, v0, lbl_80B3CBA8       
    lui     t7, %hi(func_80B3CAE4)     # t7 = 80B40000
    addiu   t7, t7, %lo(func_80B3CAE4) # t7 = 80B3CAE4
    bnel    t7, v0, lbl_80B3CBF0       
    sb      v1, 0x01A8(s0)             # 000001A8
lbl_80B3CBA8:
    beq     v1, $zero, lbl_80B3CBC4    
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    lw      a0, 0x0790(s1)             # 00000790
    jal     func_800495BC              
    sw      v1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80B3CBEC 
    lw      v1, 0x0024($sp)            
lbl_80B3CBC4:
    bnel    v1, $zero, lbl_80B3CBF0    
    sb      v1, 0x01A8(s0)             # 000001A8
    lbu     t8, 0x01A8(s0)             # 000001A8
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    t8, $zero, lbl_80B3CBF0    
    sb      v1, 0x01A8(s0)             # 000001A8
    lw      a0, 0x0790(s1)             # 00000790
    jal     func_800495BC              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
lbl_80B3CBEC:
    sb      v1, 0x01A8(s0)             # 000001A8
lbl_80B3CBF0:
    addiu   a2, s0, 0x0154             # a2 = 00000154
    or      a1, a2, $zero              # a1 = 00000154
    sw      a2, 0x0020($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0020($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3CC30 
    lw      $ra, 0x001C($sp)           
lbl_80B3CC24:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B3CC30:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B3CC40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01F0             # a1 = 060001F0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B3CC70: .word 0x00000000
var_80B3CC74: .word 0x018E0100, 0x00000010, 0x00F10000, 0x000001AC
.word func_80B3C7DC
.word func_80B3C8D4
.word func_80B3CB24
.word func_80B3CC40
var_80B3CC94: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00460050, 0xFFAE0000, 0x00000000
var_80B3CCC0: .word 0x43DD8000, 0xC2480000
var_80B3CCC8: .word \
0xC8500064, 0xB0F404B0, 0xB0F80190, 0x30FC04B0, \
0x00000000, 0x00000000

.section .rodata

var_80B3CCE0: .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000

