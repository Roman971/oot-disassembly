.section .text
func_80B76600:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x001C($sp)           
    lhu     t6, 0x0F0E(v1)             # 8011B4DE
    lw      v0, 0x1C44(a0)             # 00001C44
    andi    t7, t6, 0x0100             # t7 = 00000000
    bnel    t7, $zero, lbl_80B76630    
    lhu     t8, 0x13FA(v1)             # 8011B9CA
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x2000          # v0 = 00002000
    lhu     t8, 0x13FA(v1)             # 8011B9CA
lbl_80B76630:
    andi    t9, t8, 0x0400             # t9 = 00000000
    beql    t9, $zero, lbl_80B766D4    
    lw      t7, 0x066C(v0)             # 0000266C
    lh      t0, 0x13D0(v1)             # 8011B9A0
    lui     $at, 0x0001                # $at = 00010000
    sh      t0, 0x13D0(v1)             # 8011B9A0
    lw      t1, 0x0004(a1)             # 00000004
    or      t2, t1, $at                # t2 = 00010000
    sw      t2, 0x0004(a1)             # 00000004
    lh      v0, 0x13D0(v1)             # 8011B9A0
    slti    $at, v0, 0x00D3            
    bnel    $at, $zero, lbl_80B76670   
    lw      a0, 0x0EC4(v1)             # 8011B494
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x208E          # v0 = 0000208E
    lw      a0, 0x0EC4(v1)             # 8011B494
lbl_80B76670:
    addiu   t3, $zero, 0x00B4          # t3 = 000000B4
    beq     a0, $zero, lbl_80B76684    
    slti    $at, a0, 0x00B4            
    bnel    $at, $zero, lbl_80B76690   
    lhu     t4, 0x0ED6(v1)             # 8011B4A6
lbl_80B76684:
    sw      t3, 0x0EC4(v1)             # 8011B494
    lh      v0, 0x13D0(v1)             # 8011B9A0
    lhu     t4, 0x0ED6(v1)             # 8011B4A6
lbl_80B76690:
    slti    $at, v0, 0x0032            
    andi    t5, t4, 0x4000             # t5 = 00000000
    bnel    t5, $zero, lbl_80B766B4    
    lw      t6, 0x0EC4(v1)             # 8011B494
    beql    $at, $zero, lbl_80B766B4   
    lw      t6, 0x0EC4(v1)             # 8011B494
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x208F          # v0 = 0000208F
    lw      t6, 0x0EC4(v1)             # 8011B494
lbl_80B766B4:
    slt     $at, v0, t6                
    beq     $at, $zero, lbl_80B766C8   
    nop
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x2012          # v0 = 00002012
lbl_80B766C8:
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x2004          # v0 = 00002004
    lw      t7, 0x066C(v0)             # 00002670
lbl_80B766D4:
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lui     $at, 0x4496                # $at = 44960000
    sll     t8, t7,  8                 
    bltzl   t8, lbl_80B76710           
    lhu     t9, 0x0F0E(v1)             # 8011B4DE
    mtc1    $at, $f4                   # $f4 = 1200.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80028158              
    swc1    $f4, 0x0010($sp)           
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_80B7670C    
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x2001          # v0 = 00002001
lbl_80B7670C:
    lhu     t9, 0x0F0E(v1)             # 8011B4DE
lbl_80B76710:
    addiu   v0, $zero, 0x2003          # v0 = 00002003
    andi    t0, t9, 0x0200             # t0 = 00000000
    bne     t0, $zero, lbl_80B76728    
    nop
    beq     $zero, $zero, lbl_80B76728 
    addiu   v0, $zero, 0x2002          # v0 = 00002002
lbl_80B76728:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76738:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x001E($sp)            
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    sw      a1, 0x0024($sp)            
    jal     func_800DD464              
    sw      a2, 0x0020($sp)            
    sltiu   $at, v0, 0x000A            
    lw      a1, 0x0024($sp)            
    beq     $at, $zero, lbl_80B769A4   
    lw      a2, 0x0020($sp)            
    sll     t7, v0,  2                 
    lui     $at, %hi(var_80B77390)     # $at = 80B70000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B77390)($at) 
    jr      t7                         
    nop
var_80B76784:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_80B769A4    
    lw      a2, 0x0020($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2               
    addiu   t8, $zero, 0x0157          # t8 = 00000157
    lui     v0, 0x8012                 # v0 = 80120000
    sh      t8, 0x1E1A($at)            # 00011E1A
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    ori     t9, $zero, 0xFFF0          # t9 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sh      t9, 0x1412(v0)             # 8011B9E2
    addu    $at, $at, a2               
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    sb      t0, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2               
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lhu     t2, 0x13FA(v0)             # 8011B9CA
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    sh      t4, 0x13CE(v0)             # 8011B99E
    ori     t3, t2, 0x0400             # t3 = 00000400
    beq     $zero, $zero, lbl_80B769A4 
    sh      t3, 0x13FA(v0)             # 8011B9CA
var_80B767F0:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_80B769A4    
    lw      a2, 0x0020($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F0E(v0)             # 8011B4DE
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, a2                 
    ori     t6, t5, 0x0200             # t6 = 00000200
    sh      t6, 0x0F0E(v0)             # 8011B4DE
    lbu     t7, 0x04BD(t7)             # 000104BD
    bnel    t7, $zero, lbl_80B769A8    
    lh      v0, 0x001E($sp)            
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    or      a0, a2, $zero              # a0 = 00000000
    andi    t9, t8, 0x4000             # t9 = 00000000
    beql    t9, $zero, lbl_80B76854    
    lw      t0, 0x0EC4(v0)             # 8011B494
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2091          # a1 = 00002091
    beq     $zero, $zero, lbl_80B769A8 
    lh      v0, 0x001E($sp)            
    lw      t0, 0x0EC4(v0)             # 00000EC4
lbl_80B76854:
    addiu   a1, $zero, 0x2092          # a1 = 00002092
    or      a0, a2, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_80B76874    
    nop
    jal     func_800DCE80              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B769A8 
    lh      v0, 0x001E($sp)            
lbl_80B76874:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2090          # a1 = 00002090
    beq     $zero, $zero, lbl_80B769A8 
    lh      v0, 0x001E($sp)            
var_80B76884:
    lhu     v0, 0x010E(a1)             # 0000010E
    slti    $at, v0, 0x208F            
    bne     $at, $zero, lbl_80B768A8   
    addiu   t1, v0, 0xE000             # t1 = FFFFE000
    addiu   $at, $zero, 0x208F         # $at = 0000208F
    beq     v0, $at, lbl_80B76900      
    nop
    beq     $zero, $zero, lbl_80B769A4 
    sh      $zero, 0x001E($sp)         
lbl_80B768A8:
    slti    $at, v0, 0x2013            
    bne     $at, $zero, lbl_80B768C4   
    addiu   $at, $zero, 0x208E         # $at = 0000208E
    beq     v0, $at, lbl_80B76934      
    nop
    beq     $zero, $zero, lbl_80B769A4 
    sh      $zero, 0x001E($sp)         
lbl_80B768C4:
    sltiu   $at, t1, 0x0013            
    beq     $at, $zero, lbl_80B769A0   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80B773B8)     # $at = 80B70000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80B773B8)($at) 
    jr      t1                         
    nop
var_80B768E4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0F0E(v0)             # 8011B4DE
    sh      $zero, 0x001E($sp)         
    ori     t3, t2, 0x0100             # t3 = 00000100
    beq     $zero, $zero, lbl_80B769A4 
    sh      t3, 0x0F0E(v0)             # 8011B4DE
lbl_80B76900:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0ED6(v0)             # 8011B4A6
    ori     t5, t4, 0x4000             # t5 = 00004000
    sh      t5, 0x0ED6(v0)             # 8011B4A6
var_80B76914:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      v1, 0x13D0(v0)             # 8011B9A0
    lw      t6, 0x0EC4(v0)             # 8011B494
    slt     $at, v1, t6                
    beq     $at, $zero, lbl_80B76934   
    nop
    sw      v1, 0x0EC4(v0)             # 8011B494
lbl_80B76934:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    andi    t8, t7, 0xFBFF             # t8 = 00000000
    sh      t8, 0x13FA(v0)             # 8011B9CA
    lw      t9, 0x0004(a1)             # 00000004
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    and     t0, t9, $at                
    sw      t0, 0x0004(a1)             # 00000004
    sh      $zero, 0x001E($sp)         
    beq     $zero, $zero, lbl_80B769A4 
    sh      t1, 0x13CE(v0)             # 8011B99E
var_80B7696C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0F0E(v0)             # 8011B4DE
    ori     t3, t2, 0x0200             # t3 = 00000200
    sh      t3, 0x0F0E(v0)             # 8011B4DE
var_80B76980:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    andi    t5, t4, 0x0400             # t5 = 00000000
    bnel    t5, $zero, lbl_80B769A8    
    lh      v0, 0x001E($sp)            
    beq     $zero, $zero, lbl_80B769A4 
    sh      $zero, 0x001E($sp)         
lbl_80B769A0:
    sh      $zero, 0x001E($sp)         
lbl_80B769A4:
    lh      v0, 0x001E($sp)            
lbl_80B769A8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B769B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01D0(a0)             # 000001D0
    lw      v0, 0x1C44(a1)             # 00001C44
    or      a3, $zero, $zero           # a3 = 00000000
    bne     t6, $zero, lbl_80B769F0    
    nop
    lw      t8, 0x0144(a0)             # 00000144
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x9EE0             # t7 = 06009EE0
    bne     t7, t8, lbl_80B769F0       
    nop
    beq     $zero, $zero, lbl_80B769F0 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80B769F0:
    lw      t0, 0x0024(v0)             # 00000024
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, a0, 0x01D0             # a1 = 000001D0
    sw      t0, 0x01E8(a0)             # 000001E8
    lw      t9, 0x0028(v0)             # 00000028
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x01EC(a0)             # 000001EC
    lw      t0, 0x002C(v0)             # 0000002C
    swc1    $f4, 0x01E4(a0)            # 000001E4
    jal     func_80027854              
    sw      t0, 0x01F0(a0)             # 000001F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76A2C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lw      t6, 0x0004(v0)             # 8011A5D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80B76A58      
    lhu     t7, 0x0ED6(v0)             # 8011B4A6
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B76A54:
    lhu     t7, 0x0ED6(v0)             # 00000ED8
lbl_80B76A58:
    andi    t8, t7, 0x0100             # t8 = 00000000
    bnel    t8, $zero, lbl_80B76A70    
    lhu     t9, 0x13FA(v0)             # 000013FC
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B76A6C:
    lhu     t9, 0x13FA(v0)             # 000013FC
lbl_80B76A70:
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t0, t9, 0x0400             # t0 = 00000000
    beq     t0, $zero, lbl_80B76A88    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B76A88:
    jr      $ra                        
    nop


func_80B76A90:
    lw      t7, 0x0144(a0)             # 00000144
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x9EE0             # t6 = 06009EE0
    beql    t6, t7, lbl_80B76AB0       
    lh      t8, 0x01D0(a0)             # 000001D0
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B76AAC:
    lh      t8, 0x01D0(a0)             # 000001D0
lbl_80B76AB0:
    beql    t8, $zero, lbl_80B76AC4    
    lh      t9, 0x01FE(a0)             # 000001FE
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B76AC0:
    lh      t9, 0x01FE(a0)             # 000001FE
lbl_80B76AC4:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sh      $zero, 0x01FC(a0)          # 000001FC
    beq     v1, t9, lbl_80B76ADC       
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B76ADC:
    sh      v1, 0x0200(a0)             # 00000200
    jr      $ra                        
    nop


func_80B76AE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B76A90              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_80B76B64    
    lw      a2, 0x0018($sp)            
    lh      v0, 0x01FC(a2)             # 000001FC
    bne     v0, $zero, lbl_80B76B1C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B76B24 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B76B1C:
    sh      t6, 0x01FC(a2)             # 000001FC
    lh      v1, 0x01FC(a2)             # 000001FC
lbl_80B76B24:
    bnel    v1, $zero, lbl_80B76B68    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x01FE(a2)             # 000001FE
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01FE(a2)             # 000001FE
    lh      t9, 0x01FE(a2)             # 000001FE
    slti    $at, t9, 0x0003            
    bnel    $at, $zero, lbl_80B76B68   
    lw      $ra, 0x0014($sp)           
    jal     func_80063BF0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x01FC(a2)             # 000001FC
    sh      $zero, 0x01FE(a2)          # 000001FE
lbl_80B76B64:
    lw      $ra, 0x0014($sp)           
lbl_80B76B68:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76B74:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    lui     t7, %hi(var_80B77318)      # t7 = 80B70000
    addiu   t7, t7, %lo(var_80B77318)  # t7 = 80B77318
    sll     t6, a1,  4                 
    addu    v1, t6, t7                 
    lw      a0, 0x0000(v1)             # 00000000
    jal     func_8008A194              
    sw      v1, 0x0028($sp)            
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)            
    lw      a0, 0x0030($sp)            
    cvt.s.w $f6, $f4                   
    lbu     t8, 0x0008(v1)             # 00000008
    lwc1    $f8, 0x000C(v1)            # 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    sw      t8, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76BE4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4190                 # a3 = 41900000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x8D90             # a2 = 06008D90
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80B772E0)      # a3 = 80B70000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B772E0)  # a3 = 80B772E0
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10              
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    lui     a2, %hi(var_80B7730C)      # a2 = 80B70000
    addiu   a2, a2, %lo(var_80B7730C)  # a2 = 80B7730C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B76A2C              
    lw      a1, 0x0044($sp)            
    beq     v0, $zero, lbl_80B76CAC    
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B76CC4      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B76CDC      
    nop
    beq     $zero, $zero, lbl_80B76CF0 
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80B76CAC:
    jal     func_80B76B74              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t6, %hi(func_80B76D78)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B76D78) # t6 = 80B76D78
    beq     $zero, $zero, lbl_80B76CEC 
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B76CC4:
    jal     func_80B76B74              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t7, %hi(func_80B76D78)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B76D78) # t7 = 80B76D78
    beq     $zero, $zero, lbl_80B76CEC 
    sw      t7, 0x0180(s0)             # 00000180
lbl_80B76CDC:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B76D28 
    lw      $ra, 0x002C($sp)           
lbl_80B76CEC:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80B76CF0:
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x01D0(s0)          # 000001D0
    lw      $ra, 0x002C($sp)           
lbl_80B76D28:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76D38:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76D78:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x01D0(a0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_80B76DA4      
    nop
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t8, t7, $at                
    sw      t8, 0x0004(a0)             # 00000004
    sh      $zero, 0x01D0(a0)          # 000001D0
lbl_80B76DA4:
    jr      $ra                        
    nop


func_80B76DAC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80B76AE8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B769B8              
    or      a1, s1, $zero              # a1 = 00000000
    lh      t6, 0x01C4(s0)             # 000001C4
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     t7, %hi(func_80B76600)     # t7 = 80B70000
    lui     t8, %hi(func_80B76738)     # t8 = 80B70000
    cvt.s.w $f6, $f4                   
    addiu   t8, t8, %lo(func_80B76738) # t8 = 80B76738
    addiu   t7, t7, %lo(func_80B76600) # t7 = 80B76600
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8             
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D0             # a2 = 000001D0
    mfc1    a3, $f10                   
    jal     func_800271FC              
    nop
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80B76E7C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a3, 0x0044($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     s0, $at, lbl_80B76EA8      
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    s0, $at, lbl_80B76EB0      
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_80B76EA8:
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_80B76EB0:
    bnel    s0, $at, lbl_80B76F6C      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f12                  # $f12 = 1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x004C($sp)            
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x01D8(t7)             # 000001D8
    lwr     t9, 0x01DB(t7)             # 000001DB
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80B77404)     # $at = 80B70000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x01DC(t7)             # 000001DC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x002E($sp)            
    lwc1    $f16, %lo(var_80B77404)($at) 
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lh      t1, 0x002C($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B77408)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B77408)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAD4C              
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f12                  # $f12 = -1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_80B76F6C:
    bne     s0, $at, lbl_80B76FF8      
    lw      t3, 0x004C($sp)            
    lwl     t5, 0x01DE(t3)             # 000001DE
    lwr     t5, 0x01E1(t3)             # 000001E1
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x01E2(t3)             # 000001E2
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80B7740C)     # $at = 80B70000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x002E($sp)            
    lwc1    $f8, %lo(var_80B7740C)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t7, $zero, t6              
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lh      t8, 0x002C($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    subu    t9, $zero, t8              
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B77410)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B77410)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AA9E0              
    nop
lbl_80B76FF8:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     s0, $at, lbl_80B77014      
    lw      t0, 0x004C($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     s0, $at, lbl_80B77014      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     s0, $at, lbl_80B770A4      
lbl_80B77014:
    sll     t1, s0,  2                 
    subu    t1, t1, s0                 
    sll     t1, t1,  1                 
    addu    v1, t0, t1                 
    lh      a0, 0x0204(v1)             # 00000204
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)            
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t2, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)            
    mul.s   $f18, $f0, $f16            
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x0206(v1)             # 00000206
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t5, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10            
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0004(v0)             # 00000004
lbl_80B770A4:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B770BC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a3, 0x0044($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x003C($sp)            
    sw      a2, 0x0040($sp)            
    lui     t7, %hi(var_80B77368)      # t7 = 80B70000
    addiu   t7, t7, %lo(var_80B77368)  # t7 = 80B77368
    lw      t9, 0x0000(t7)             # 80B77368
    addiu   t6, $sp, 0x0028            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B7736C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B77370
    addiu   $at, $zero, 0x0012         # $at = 00000012
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    bne     a3, $at, lbl_80B77124      
    lw      a2, 0x0000(a0)             # 00000000
    lw      a1, 0x0048($sp)            
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    sw      a2, 0x0024($sp)            
    sw      a3, 0x003C($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a2, 0x0024($sp)            
    lw      a3, 0x003C($sp)            
lbl_80B77124:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a3, $at, lbl_80B77160      
    lw      t1, 0x0048($sp)            
    lw      t2, 0x0144(t1)             # 00000144
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x93BC             # t0 = 060093BC
    bne     t0, t2, lbl_80B77160       
    lui     t4, 0xDE00                 # t4 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x5420             # t5 = 06005420
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
lbl_80B77160:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B77170:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x07A0(s1)             # 000007A0
    lw      t3, 0x0000(s1)             # 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sll     t7, t6,  2                 
    addu    t8, s1, t7                 
    lw      v0, 0x0790(t8)             # 00000790
    sw      t3, 0x0034($sp)            
    jal     func_80063EB8              
    addiu   a1, v0, 0x005C             # a1 = 0000005C
    mov.s   $f12, $f0                  
    jal     func_800C6F9C              
    addiu   a1, $zero, 0x002F          # a1 = 0000002F
    jal     func_8007E298              
    lw      a0, 0x0000(s1)             # 00000000
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0034($sp)            
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x0200(s0)             # 00000200
    lui     t1, %hi(var_80B77374)      # t1 = 80B70000
    or      a0, s1, $zero              # a0 = 00000000
    sll     t8, t7,  2                 
    addu    t1, t1, t8                 
    lw      t1, %lo(var_80B77374)(t1)  
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t6, t5, t8                 
    lw      t7, 0x0000(t6)             # DB060024
    and     t9, t1, t4                 
    addu    t8, t9, t7                 
    addu    t6, t8, $ra                
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x01FE(s0)             # 000001FE
    lui     t2, %hi(var_80B77380)      # t2 = 80B70000
    sll     t6, t8,  2                 
    addu    t2, t2, t6                 
    lw      t2, %lo(var_80B77380)(t2)  
    sll     t7, t2,  4                 
    srl     t8, t7, 28                 
    sll     t6, t8,  2                 
    addu    t7, t5, t6                 
    lw      t8, 0x0000(t7)             # DB060020
    and     t9, t2, t4                 
    addu    t6, t9, t8                 
    addu    t7, t6, $ra                
    sw      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_80B76E7C)     # t9 = 80B70000
    lui     t8, %hi(func_80B770BC)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B770BC) # t8 = 80B770BC
    addiu   t9, t9, %lo(func_80B76E7C) # t9 = 80B76E7C
    sw      t9, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    jal     func_80089D8C              
    sw      s0, 0x0018($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop

.section .data

var_80B772C0: .word 0x01C50400, 0x00000039, 0x00D00000, 0x00000274
.word func_80B76BE4
.word func_80B76D38
.word func_80B76DAC
.word func_80B77170
var_80B772E0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012002E, 0x00000000, 0x00000000
var_80B7730C: .word 0x00000000, 0x00000000, 0xFF000000
var_80B77318: .word \
0x060007D4, 0x3F800000, 0x00000000, 0x00000000, \
0x060007D4, 0x3F800000, 0x00000000, 0xC1200000, \
0x060093BC, 0x3F800000, 0x00000000, 0x00000000, \
0x06009EE0, 0x3F800000, 0x00000000, 0x00000000, \
0x06009EE0, 0x3F800000, 0x00000000, 0xC1200000
var_80B77368: .word 0x44610000, 0x00000000, 0x00000000
var_80B77374: .word 0x06002970, 0x06003570, 0x06003770
var_80B77380: .word 0x06002570, 0x06002C70, 0x06003070, 0x00000000

.section .rodata

var_80B77390: .word lbl_80B769A4
.word lbl_80B769A4
.word var_80B76884
.word lbl_80B769A4
.word var_80B767F0
.word var_80B76784
.word lbl_80B769A4
.word lbl_80B769A4
.word lbl_80B769A4
.word lbl_80B769A4
var_80B773B8: .word var_80B768E4
.word lbl_80B769A0
.word var_80B7696C
.word var_80B76980
.word var_80B76914
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word lbl_80B769A0
.word var_80B76914
var_80B77404: .word 0x40490FDB
var_80B77408: .word 0x40490FDB
var_80B7740C: .word 0x40490FDB
var_80B77410: .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000

