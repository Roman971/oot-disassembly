.section .text
func_80862C00:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80862C0C:
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   t7, t6, 0xFFEF             # t7 = FFFFFFEF
    sltiu   $at, t7, 0x000C            
    beq     $at, $zero, lbl_80862D78   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80865040)     # $at = 80860000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80865040)($at) 
    jr      t7                         
    nop
var_80862C34:
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t8, -0x4B40(t8)            # 8011B4C0
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t9, t8, 0x0004             # t9 = 00000000
    beql    t9, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t0, 0x001C(a0)             # 0000001C


func_80862C58:
    lui     t1, 0x8012                 # t1 = 80120000
    lhu     t1, -0x4B40(t1)            # 8011B4C0
    addiu   t3, $zero, 0x0026          # t3 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t2, t1, 0x0040             # t2 = 00000000
    beql    t2, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t3, 0x001C(a0)             # 0000001C


func_80862C7C:
    lui     t4, 0x8012                 # t4 = 80120000
    lhu     t4, -0x4B40(t4)            # 8011B4C0
    addiu   t6, $zero, 0x0026          # t6 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t5, t4, 0x0080             # t5 = 00000000
    beql    t5, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t6, 0x001C(a0)             # 0000001C


func_80862CA0:
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B40(t7)            # 8011B4C0
    addiu   t9, $zero, 0x0026          # t9 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t8, t7, 0x0100             # t8 = 00000000
    beql    t8, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t9, 0x001C(a0)             # 0000001C


func_80862CC4:
    lui     t0, 0x8012                 # t0 = 80120000
    lhu     t0, -0x4B40(t0)            # 8011B4C0
    addiu   t2, $zero, 0x0026          # t2 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t1, t0, 0x0200             # t1 = 00000000
    beql    t1, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t2, 0x001C(a0)             # 0000001C


func_80862CE8:
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x4B40(t3)            # 8011B4C0
    addiu   t5, $zero, 0x0026          # t5 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t4, t3, 0x0400             # t4 = 00000000
    beql    t4, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t5, 0x001C(a0)             # 0000001C


func_80862D0C:
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B40(t6)            # 8011B4C0
    addiu   t8, $zero, 0x0026          # t8 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t7, t6, 0x0008             # t7 = 00000000
    beql    t7, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t8, 0x001C(a0)             # 0000001C


func_80862D30:
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B40(t9)            # 8011B4C0
    addiu   t1, $zero, 0x0026          # t1 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t0, t9, 0x0010             # t0 = 00000000
    beql    t0, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t1, 0x001C(a0)             # 0000001C


func_80862D54:
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B40(t2)            # 8011B4C0
    addiu   t4, $zero, 0x0026          # t4 = 00000026
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t3, t2, 0x0020             # t3 = 00000000
    beql    t3, $zero, lbl_80862D7C    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sh      t4, 0x001C(a0)             # 0000001C
lbl_80862D78:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80862D7C:
    jr      $ra                        
    nop


func_80862D84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v1, 0x001C(a2)             # 0000001C
    lui     a1, %hi(var_808649EC)      # a1 = 80860000
    slti    $at, v1, 0x0032            
    bne     $at, $zero, lbl_80862DC0   
    sll     t6, v1,  5                 
    bgezl   v1, lbl_80862DC4           
    lui     $at, 0x0001                # $at = 00010000
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862E1C 
    lw      $ra, 0x0014($sp)           
lbl_80862DC0:
    lui     $at, 0x0001                # $at = 00010000
lbl_80862DC4:
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a1, a1, t6                 
    lh      a1, %lo(var_808649EC)(a1)  
    addu    a0, a3, $at                
    sh      v1, 0x001E($sp)            
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lh      v1, 0x001E($sp)            
    lui     t8, %hi(func_8086443C)     # t8 = 80860000
    sb      v0, 0x0184(a2)             # 00000184
    lb      t7, 0x0184(a2)             # 00000184
    addiu   t8, t8, %lo(func_8086443C) # t8 = 8086443C
    bgezl   t7, lbl_80862E14           
    sh      v1, 0x001C(a2)             # 0000001C
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862E1C 
    lw      $ra, 0x0014($sp)           
    sh      v1, 0x001C(a2)             # 0000001C
lbl_80862E14:
    sw      t8, 0x0188(a2)             # 00000188
    lw      $ra, 0x0014($sp)           
lbl_80862E1C:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80862E28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80862C0C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80862D84              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80862E5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x018C(a2)             # 0000018C
    beql    t6, $zero, lbl_80862E80    
    lw      $ra, 0x0014($sp)           
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80862E80:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80862E8C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071420              
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     v0, $at, lbl_80862EB8      
    lw      $ra, 0x0014($sp)           
    beq     $zero, $zero, lbl_80862F34 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80862EB8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x7380(t0)            # 800F8C80
    lw      t9, 0x00A0(v0)             # 8011A670
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x733C(t2)            # 800F8CC4
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70C9(t6)            # 800F8F37
    and     t1, t9, t0                 
    srav    t3, t1, t2                 
    sll     t4, t3,  1                 
    lui     t5, 0x8010                 # t5 = 80100000
    addu    t5, t5, t4                 
    addu    t7, v0, t6                 
    lb      t8, 0x008C(t7)             # 0000008C
    lhu     t5, -0x7334(t5)            # 800F8CCC
    lw      t7, 0x001C($sp)            
    slt     $at, t8, t5                
    bnel    $at, $zero, lbl_80862F18   
    lh      t6, 0x0034(v0)             # 8011A604
    beq     $zero, $zero, lbl_80862F34 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t6, 0x0034(v0)             # 00000036
lbl_80862F18:
    lh      t9, 0x01B8(t7)             # 000001B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slt     $at, t6, t9                
    beq     $at, $zero, lbl_80862F34   
    nop
    beq     $zero, $zero, lbl_80862F34 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80862F34:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80862F3C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C4(t6)            # 800F8C3C
    lw      t7, 0x00A4(v0)             # 8011A674
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    and     t8, t6, t7                 
    bne     t8, $zero, lbl_80862F70    
    lui     t5, 0x8010                 # t5 = 80100000
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80862F70:
    lw      t2, 0x00A0(v0)             # 000000A2
    lw      t3, -0x737C(t3)            # 800F8C84
    lbu     t5, -0x733B(t5)            # 800F8CC5
    lbu     t9, -0x70CA(t9)            # 800F8F36
    and     t4, t2, t3                 
    srav    t6, t4, t5                 
    sll     t7, t6,  1                 
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7                 
    addu    t0, v0, t9                 
    lb      t1, 0x008C(t0)             # 0000008C
    lhu     t8, -0x732C(t8)            # 800F8CD4
    slt     $at, t1, t8                
    bnel    $at, $zero, lbl_80862FB8   
    lh      t9, 0x0034(v0)             # 00000036
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80862FB4:
    lh      t9, 0x0034(v0)             # 00000036
lbl_80862FB8:
    lh      t0, 0x01B8(a1)             # 000001B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slt     $at, t9, t0                
    beq     $at, $zero, lbl_80862FD4   
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80862FD4:
    jr      $ra                        
    nop


func_80862FDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7364(t7)            # 800F8C9C
    lw      t6, 0x00A0(v1)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7335(t9)            # 800F8CCB
    and     t8, t6, t7                 
    lui     v0, 0x8010                 # v0 = 80100000
    srav    t0, t8, t9                 
    sll     t1, t0,  1                 
    addu    v0, v0, t1                 
    lhu     v0, -0x72FC(v0)            # 800F8D04
    lui     t2, 0x8010                 # t2 = 80100000
    beql    v0, $zero, lbl_8086304C    
    lh      t5, 0x0034(v1)             # 8011A604
    lbu     t2, -0x70CB(t2)            # 800F8F35
    addu    t3, v1, t2                 
    lb      t4, 0x008C(t3)             # 0000008C
    slt     $at, t4, v0                
    bnel    $at, $zero, lbl_8086304C   
    lh      t5, 0x0034(v1)             # 8011A604
    beq     $zero, $zero, lbl_80863084 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t5, 0x0034(v1)             # 8011A604
lbl_8086304C:
    lh      t6, 0x01B8(a1)             # 000001B8
    slt     $at, t5, t6                
    beq     $at, $zero, lbl_80863064   
    nop
    beq     $zero, $zero, lbl_80863084 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863064:
    jal     func_80071420              
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863084      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863084 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863084:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863094:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7368(t7)            # 800F8C98
    lw      t6, 0x00A0(v1)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7336(t9)            # 800F8CCA
    and     t8, t6, t7                 
    lui     v0, 0x8010                 # v0 = 80100000
    srav    t0, t8, t9                 
    sll     t1, t0,  1                 
    addu    v0, v0, t1                 
    lhu     v0, -0x7304(v0)            # 800F8CFC
    lui     t2, 0x8010                 # t2 = 80100000
    beql    v0, $zero, lbl_80863104    
    lh      t5, 0x0034(v1)             # 8011A604
    lbu     t2, -0x70CC(t2)            # 800F8F34
    addu    t3, v1, t2                 
    lb      t4, 0x008C(t3)             # 0000008C
    slt     $at, t4, v0                
    bnel    $at, $zero, lbl_80863104   
    lh      t5, 0x0034(v1)             # 8011A604
    beq     $zero, $zero, lbl_8086313C 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t5, 0x0034(v1)             # 8011A604
lbl_80863104:
    lh      t6, 0x01B8(a1)             # 000001B8
    slt     $at, t5, t6                
    beq     $at, $zero, lbl_8086311C   
    nop
    beq     $zero, $zero, lbl_8086313C 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_8086311C:
    jal     func_80071420              
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_8086313C      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_8086313C 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8086313C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086314C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_80863174    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_808631B4 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80863174:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_80863194   
    nop
    beq     $zero, $zero, lbl_808631B4 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863194:
    jal     func_80071420              
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808631B4      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808631B4 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808631B4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808631C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_808631EC    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_8086322C 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_808631EC:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_8086320C   
    nop
    beq     $zero, $zero, lbl_8086322C 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_8086320C:
    jal     func_80071420              
    addiu   a0, $zero, 0x0015          # a0 = 00000015
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_8086322C      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_8086322C 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8086322C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086323C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_80863264    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_808632A4 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80863264:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_80863284   
    nop
    beq     $zero, $zero, lbl_808632A4 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863284:
    jal     func_80071420              
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808632A4      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808632A4 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808632A4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808632B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_808632DC    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_8086331C 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_808632DC:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_808632FC   
    nop
    beq     $zero, $zero, lbl_8086331C 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808632FC:
    jal     func_80071420              
    addiu   a0, $zero, 0x0017          # a0 = 00000017
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_8086331C      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_8086331C 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8086331C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086332C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a0, 0x0018($sp)            
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    lhu     v0, 0x009C(a0)             # 8011A66C
    lw      t6, 0x0008(v1)             # 800F8BF8
    and     t7, t6, v0                 
    beql    t7, $zero, lbl_80863378    
    lh      t0, 0x0034(a0)             # 8011A604
    lw      t8, 0x000C(v1)             # 800F8BFC
    and     t9, t8, v0                 
    bnel    t9, $zero, lbl_80863378    
    lh      t0, 0x0034(a0)             # 8011A604
    beq     $zero, $zero, lbl_808633B0 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t0, 0x0034(a0)             # 8011A604
lbl_80863378:
    lh      t1, 0x01B8(a1)             # 000001B8
    slt     $at, t0, t1                
    beq     $at, $zero, lbl_80863390   
    nop
    beq     $zero, $zero, lbl_808633B0 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863390:
    jal     func_80071420              
    addiu   a0, $zero, 0x003D          # a0 = 0000003D
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808633B0      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808633B0 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808633B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808633C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73FC(t6)            # 800F8C04
    lhu     t7, 0x009C(v0)             # 8011A66C
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_808633F8    
    lh      t9, 0x0034(v0)             # 8011A604
    beq     $zero, $zero, lbl_80863430 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t9, 0x0034(v0)             # 00000036
lbl_808633F8:
    lh      t0, 0x01B8(a1)             # 000001B8
    slt     $at, t9, t0                
    beq     $at, $zero, lbl_80863410   
    nop
    beq     $zero, $zero, lbl_80863430 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863410:
    jal     func_80071420              
    addiu   a0, $zero, 0x003F          # a0 = 0000003F
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863430      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863430 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863430:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863440:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x7400(t6)            # 800F8C00
    lhu     t7, 0x009C(v0)             # 8011A66C
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_80863478    
    lh      t9, 0x0034(v0)             # 8011A604
    beq     $zero, $zero, lbl_808634B0 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t9, 0x0034(v0)             # 00000036
lbl_80863478:
    lh      t0, 0x01B8(a1)             # 000001B8
    slt     $at, t9, t0                
    beq     $at, $zero, lbl_80863490   
    nop
    beq     $zero, $zero, lbl_808634B0 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863490:
    jal     func_80071420              
    addiu   a0, $zero, 0x003E          # a0 = 0000003E
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808634B0      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808634B0 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808634B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808634C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_808634F0    
    lui     t7, 0x8010                 # t7 = 80100000
    beq     $zero, $zero, lbl_808634F0 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808634F0:
    bne     v0, $at, lbl_80863500      
    nop
    beq     $zero, $zero, lbl_80863558 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80863500:
    lw      t7, -0x73EC(t7)            # 800F8C14
    lhu     t8, 0x009C(v1)             # 8011A66C
    and     t9, t7, t8                 
    beql    t9, $zero, lbl_80863520    
    lh      t0, 0x0034(v1)             # 8011A604
    beq     $zero, $zero, lbl_80863558 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t0, 0x0034(v1)             # 8011A604
lbl_80863520:
    lh      t1, 0x01B8(a1)             # 000001B8
    slt     $at, t0, t1                
    beq     $at, $zero, lbl_80863538   
    nop
    beq     $zero, $zero, lbl_80863558 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863538:
    jal     func_80071420              
    addiu   a0, $zero, 0x0042          # a0 = 00000042
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863558      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863558 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863558:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863568:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_80863598    
    lui     t7, 0x8010                 # t7 = 80100000
    beq     $zero, $zero, lbl_80863598 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80863598:
    bne     v0, $at, lbl_808635A8      
    nop
    beq     $zero, $zero, lbl_80863600 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_808635A8:
    lw      t7, -0x73E8(t7)            # 800F8C18
    lhu     t8, 0x009C(v1)             # 8011A66C
    and     t9, t7, t8                 
    beql    t9, $zero, lbl_808635C8    
    lh      t0, 0x0034(v1)             # 8011A604
    beq     $zero, $zero, lbl_80863600 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t0, 0x0034(v1)             # 8011A604
lbl_808635C8:
    lh      t1, 0x01B8(a1)             # 000001B8
    slt     $at, t0, t1                
    beq     $at, $zero, lbl_808635E0   
    nop
    beq     $zero, $zero, lbl_80863600 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808635E0:
    jal     func_80071420              
    addiu   a0, $zero, 0x0043          # a0 = 00000043
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863600      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863600 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863600:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863610:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)            
    lh      t6, 0x0030(v0)             # 8011A600
    lh      t7, 0x002E(v0)             # 8011A5FE
    bnel    t6, t7, lbl_80863638       
    lh      t8, 0x0034(v0)             # 8011A604
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80863634:
    lh      t8, 0x0034(v0)             # 00000036
lbl_80863638:
    lh      t9, 0x01B8(a1)             # 000001B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slt     $at, t8, t9                
    beq     $at, $zero, lbl_80863654   
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863654:
    jr      $ra                        
    nop


func_8086365C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t7, 0x01B8(a1)             # 000001B8
    slt     $at, t6, t7                
    beq     $at, $zero, lbl_80863688   
    nop
    beq     $zero, $zero, lbl_808636A8 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863688:
    jal     func_80071420              
    addiu   a0, $zero, 0x001A          # a0 = 0000001A
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808636A8      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808636A8 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808636A8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808636B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t7, 0x01B8(a1)             # 000001B8
    slt     $at, t6, t7                
    beq     $at, $zero, lbl_808636E4   
    nop
    beq     $zero, $zero, lbl_80863704 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808636E4:
    jal     func_80071420              
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863704      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863704 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863704:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863714:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    jr      $ra                        
    nop


func_80863728:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    jr      $ra                        
    nop


func_8086373C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70C3(t6)            # 800F8F3D
    addu    t7, v0, t6                 
    lb      t8, 0x008C(t7)             # 0000008C
    slti    $at, t8, 0x0032            
    bnel    $at, $zero, lbl_80863778   
    lh      t9, 0x0034(v0)             # 8011A604
    beq     $zero, $zero, lbl_808637B0 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t9, 0x0034(v0)             # 00000036
lbl_80863778:
    lh      t0, 0x01B8(a1)             # 000001B8
    slt     $at, t9, t0                
    beq     $at, $zero, lbl_80863790   
    nop
    beq     $zero, $zero, lbl_808637B0 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863790:
    jal     func_80071420              
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808637B0      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808637B0 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808637B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808637C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x736C(t0)            # 800F8C94
    lw      t9, 0x00A0(v0)             # 8011A670
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x7337(t2)            # 800F8CC9
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70C6(t6)            # 800F8F3A
    and     t1, t9, t0                 
    srav    t3, t1, t2                 
    sll     t4, t3,  1                 
    lui     t5, 0x8010                 # t5 = 80100000
    addu    t5, t5, t4                 
    addu    t7, v0, t6                 
    lb      t8, 0x008C(t7)             # 0000008C
    lhu     t5, -0x730C(t5)            # 800F8CF4
    slt     $at, t8, t5                
    bnel    $at, $zero, lbl_80863828   
    lh      t6, 0x0034(v0)             # 8011A604
    beq     $zero, $zero, lbl_80863860 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lh      t6, 0x0034(v0)             # 00000036
lbl_80863828:
    lh      t7, 0x01B8(a1)             # 000001B8
    slt     $at, t6, t7                
    beq     $at, $zero, lbl_80863840   
    nop
    beq     $zero, $zero, lbl_80863860 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863840:
    jal     func_80071420              
    addiu   a0, $zero, 0x0058          # a0 = 00000058
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863860      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863860 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863860:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863870:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    jr      $ra                        
    nop


func_80863884:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_808638AC    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_808638EC 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_808638AC:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_808638CC   
    nop
    beq     $zero, $zero, lbl_808638EC 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808638CC:
    jal     func_80071420              
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808638EC      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808638EC 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808638EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808638FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_80863924    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_80863964 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80863924:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_80863944   
    nop
    beq     $zero, $zero, lbl_80863964 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863944:
    jal     func_80071420              
    addiu   a0, $zero, 0x001D          # a0 = 0000001D
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863964      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863964 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863964:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863974:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_8086399C    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_808639DC 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_8086399C:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_808639BC   
    nop
    beq     $zero, $zero, lbl_808639DC 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808639BC:
    jal     func_80071420              
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_808639DC      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808639DC 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808639DC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808639EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80071A94              
    nop
    bne     v0, $zero, lbl_80863A14    
    lw      t7, 0x001C($sp)            
    beq     $zero, $zero, lbl_80863A54 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80863A14:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x01B8(t7)             # 000001B8
    slt     $at, t6, t8                
    beq     $at, $zero, lbl_80863A34   
    nop
    beq     $zero, $zero, lbl_80863A54 
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80863A34:
    jal     func_80071420              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80863A54      
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80863A54 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80863A54:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863A64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    jal     func_800721F4              
    lh      a1, 0x01BA(t6)             # 000001BA
    lw      t7, 0x001C($sp)            
    lh      a0, 0x01B8(t7)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863AAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lh      v0, 0x01BA(t6)             # 000001BA
    beq     v0, $at, lbl_80863AEC      
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80863AFC      
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_80863B0C      
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beq     v0, $at, lbl_80863B1C      
    nop
    beq     $zero, $zero, lbl_80863B28 
    lw      t7, 0x001C($sp)            
lbl_80863AEC:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x008E          # a1 = 0000008E
    beq     $zero, $zero, lbl_80863B28 
    lw      t7, 0x001C($sp)            
lbl_80863AFC:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x008F          # a1 = 0000008F
    beq     $zero, $zero, lbl_80863B28 
    lw      t7, 0x001C($sp)            
lbl_80863B0C:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0090          # a1 = 00000090
    beq     $zero, $zero, lbl_80863B28 
    lw      t7, 0x001C($sp)            
lbl_80863B1C:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0091          # a1 = 00000091
    lw      t7, 0x001C($sp)            
lbl_80863B28:
    lh      a0, 0x01B8(t7)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863B4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lh      v0, 0x01BA(t6)             # 000001BA
    beq     v0, $at, lbl_80863B7C      
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80863B8C      
    nop
    beq     $zero, $zero, lbl_80863B98 
    lw      t7, 0x001C($sp)            
lbl_80863B7C:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x008C          # a1 = 0000008C
    beq     $zero, $zero, lbl_80863B98 
    lw      t7, 0x001C($sp)            
lbl_80863B8C:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x008D          # a1 = 0000008D
    lw      t7, 0x001C($sp)            
lbl_80863B98:
    lh      a0, 0x01B8(t7)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863BBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863BF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FAD0              
    nop
    lw      t7, 0x001C($sp)            
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    lui     $at, 0x8012                # $at = 80120000
    sh      t6, -0x59FA($at)           # 8011A606
    lh      a0, 0x01B8(t7)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863C40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863C7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x003E          # a1 = 0000003E
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863CB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0042          # a1 = 00000042
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863CF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0043          # a1 = 00000043
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863D30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    jal     func_800720BC              
    lh      a1, 0x01BA(t6)             # 000001BA
    lw      t7, 0x001C($sp)            
    lh      a0, 0x01B8(t7)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863D70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863DAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863DE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      a0, 0x01B8(a1)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863E18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      a0, 0x01B8(a1)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863E48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0095          # a1 = 00000095
    lw      t6, 0x001C($sp)            
    lh      a0, 0x01B8(t6)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863E84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lh      v0, 0x001C(t6)             # 0000001C
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_80863EE0   
    addiu   t7, v0, 0xFFD9             # t7 = FFFFFFD9
    slti    $at, v0, 0x000B            
    bne     $at, $zero, lbl_80863ECC   
    sltiu   $at, t7, 0x0005            
    beq     $at, $zero, lbl_80863F8C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80865070)     # $at = 80860000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80865070)($at) 
    jr      t7                         
    nop
lbl_80863ECC:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80863F34      
    nop
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
lbl_80863EE0:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80863F04      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80863F14      
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80863F24      
    nop
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
lbl_80863F04:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
lbl_80863F14:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
lbl_80863F24:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
lbl_80863F34:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0017          # a1 = 00000017
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
var_80863F44:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
var_80863F54:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
var_80863F64:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
var_80863F74:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    beq     $zero, $zero, lbl_80863F90 
    lw      t8, 0x001C($sp)            
var_80863F84:
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0018          # a1 = 00000018
lbl_80863F8C:
    lw      t8, 0x001C($sp)            
lbl_80863F90:
    lh      a0, 0x01B8(t8)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80863FB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      t6, 0x001C(a1)             # 0000001C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    t6, $at, lbl_80864034      
    lh      a0, 0x01B8(a1)             # 000001B8
    lhu     t7, -0x4B2A(t7)            # 8011B4D6
    lui     $at, %hi(var_80865084)     # $at = 80860000
    andi    t8, t7, 0x0040             # t8 = 00000000
    beql    t8, $zero, lbl_80864034    
    lh      a0, 0x01B8(a1)             # 000001B8
    lwc1    $f12, %lo(var_80865084)($at) 
    jal     func_80026D64              
    sw      a1, 0x001C($sp)            
    trunc.w.s $f4, $f0                   
    lw      a1, 0x001C($sp)            
    lui     t3, %hi(var_8086502C)      # t3 = 80860000
    mfc1    t1, $f4                    
    lh      t9, 0x01B8(a1)             # 000001B8
    sll     t2, t1,  1                 
    addu    t3, t3, t2                 
    lh      t3, %lo(var_8086502C)(t3)  
    subu    a0, t9, t3                 
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    beq     $zero, $zero, lbl_80864048 
    lw      $ra, 0x0014($sp)           
    lh      a0, 0x01B8(a1)             # 000001B8
lbl_80864034:
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
lbl_80864048:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80864054:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      a0, 0x01B8(a1)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80864084:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      a0, 0x01B8(a1)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808640B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      t6, 0x001C(a1)             # 0000001C
    addiu   t7, t6, 0xFFEB             # t7 = FFFFFFEB
    sltiu   $at, t7, 0x0008            
    beq     $at, $zero, lbl_808641A4   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80865088)     # $at = 80860000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80865088)($at) 
    jr      t7                         
    nop
var_808640E8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EF0(v0)             # 8011B4C0
    ori     t9, t8, 0x0040             # t9 = 00000040
    beq     $zero, $zero, lbl_808641A4 
    sh      t9, 0x0EF0(v0)             # 8011B4C0
var_80864100:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EF0(v0)             # 8011B4C0
    ori     t1, t0, 0x0080             # t1 = 00000080
    beq     $zero, $zero, lbl_808641A4 
    sh      t1, 0x0EF0(v0)             # 8011B4C0
var_80864118:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EF0(v0)             # 8011B4C0
    ori     t3, t2, 0x0100             # t3 = 00000100
    beq     $zero, $zero, lbl_808641A4 
    sh      t3, 0x0EF0(v0)             # 8011B4C0
var_80864130:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0EF0(v0)             # 8011B4C0
    ori     t5, t4, 0x0200             # t5 = 00000200
    beq     $zero, $zero, lbl_808641A4 
    sh      t5, 0x0EF0(v0)             # 8011B4C0
var_80864148:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EF0(v0)             # 8011B4C0
    ori     t7, t6, 0x0400             # t7 = 00000400
    beq     $zero, $zero, lbl_808641A4 
    sh      t7, 0x0EF0(v0)             # 8011B4C0
var_80864160:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EF0(v0)             # 8011B4C0
    ori     t9, t8, 0x0008             # t9 = 00000008
    beq     $zero, $zero, lbl_808641A4 
    sh      t9, 0x0EF0(v0)             # 8011B4C0
var_80864178:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EF0(v0)             # 8011B4C0
    ori     t1, t0, 0x0010             # t1 = 00000010
    beq     $zero, $zero, lbl_808641A4 
    sh      t1, 0x0EF0(v0)             # 8011B4C0
var_80864190:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EF0(v0)             # 8011B4C0
    ori     t3, t2, 0x0020             # t3 = 00000020
    sh      t3, 0x0EF0(v0)             # 8011B4C0
lbl_808641A4:
    lh      a0, 0x01B8(a1)             # 000001B8
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808641C8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808641D8:
    sw      a0, 0x0000($sp)            
    lh      v1, 0x001C(a1)             # 0000001C
    lui     t7, %hi(var_808649EC)      # t7 = 80860000
    addiu   t7, t7, %lo(var_808649EC)  # t7 = 808649EC
    sll     t6, v1,  5                 
    slti    $at, v1, 0x001E            
    bne     $at, $zero, lbl_808642E0   
    addu    v0, t6, t7                 
    slti    $at, v1, 0x0023            
    beq     $at, $zero, lbl_808642E0   
    addiu   a0, v1, 0xFFE2             # a0 = FFFFFFE2
    addiu   t8, v1, 0xFFE2             # t8 = FFFFFFE2
    sltiu   $at, t8, 0x0005            
    beq     $at, $zero, lbl_808642B4   
    or      a2, $zero, $zero           # a2 = 00000000
    sll     t8, t8,  2                 
    lui     $at, %hi(var_808650A8)     # $at = 80860000
    addu    $at, $at, t8               
    lw      t8, %lo(var_808650A8)($at) 
    jr      t8                         
    nop
var_8086422C:
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B3A(t9)            # 8011B4C6
    andi    t0, t9, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_808642B4    
    nop
    beq     $zero, $zero, lbl_808642B4 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
var_80864248:
    lui     t1, 0x8012                 # t1 = 80120000
    lhu     t1, -0x4B3A(t1)            # 8011B4C6
    andi    t2, t1, 0x0400             # t2 = 00000000
    beq     t2, $zero, lbl_808642B4    
    nop
    beq     $zero, $zero, lbl_808642B4 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
var_80864264:
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x4B3A(t3)            # 8011B4C6
    andi    t4, t3, 0x0200             # t4 = 00000000
    beq     t4, $zero, lbl_808642B4    
    nop
    beq     $zero, $zero, lbl_808642B4 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
var_80864280:
    lui     t5, 0x8012                 # t5 = 80120000
    lhu     t5, -0x4B3A(t5)            # 8011B4C6
    andi    t6, t5, 0x0800             # t6 = 00000000
    beq     t6, $zero, lbl_808642B4    
    nop
    beq     $zero, $zero, lbl_808642B4 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
var_8086429C:
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B3A(t7)            # 8011B4C6
    andi    t8, t7, 0x0800             # t8 = 00000000
    beq     t8, $zero, lbl_808642B4    
    nop
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_808642B4:
    beq     a2, $zero, lbl_808642D0    
    sll     t9, a0,  1                 
    lui     t0, %hi(var_808649E0)      # t0 = 80860000
    addu    t0, t0, t9                 
    lhu     t0, %lo(var_808649E0)(t0)  
    beq     $zero, $zero, lbl_808642E8 
    sh      t0, 0x010E(a1)             # 0000010E
lbl_808642D0:
    lhu     t1, 0x000C(v0)             # 0000000C
    sh      t1, 0x010E(a1)             # 0000010E
    beq     $zero, $zero, lbl_808642E8 
    nop
lbl_808642E0:
    lhu     t2, 0x000C(v0)             # 0000000C
    sh      t2, 0x010E(a1)             # 0000010E
lbl_808642E8:
    lui     t3, %hi(func_80864910)     # t3 = 80860000
    addiu   t3, t3, %lo(func_80864910) # t3 = 80864910
    sh      $zero, 0x0198(a1)          # 00000198
    sw      t3, 0x0134(a1)             # 00000134
    jr      $ra                        
    nop


func_80864300:
    sw      a0, 0x0000($sp)            
    lh      v0, 0x001C(a1)             # 0000001C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0198(a1)             # 00000198
    slti    $at, v0, 0x001E            
    bne     $at, $zero, lbl_8086432C   
    sw      $zero, 0x0134(a1)          # 00000134
    slti    $at, v0, 0x0026            
    beq     $at, $zero, lbl_8086432C   
    addiu   t7, $zero, 0x00BD          # t7 = 000000BD
    sh      t7, 0x010E(a1)             # 0000010E
lbl_8086432C:
    jr      $ra                        
    nop


func_80864334:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80862C0C              
    sw      a2, 0x001C($sp)            
    beq     v0, $zero, lbl_8086438C    
    lw      a2, 0x001C($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x0018($sp)            
    jal     func_80862D84              
    sw      a2, 0x001C($sp)            
    lw      a2, 0x001C($sp)            
    lui     t8, %hi(var_808649EC)      # t8 = 80860000
    addiu   t8, t8, %lo(var_808649EC)  # t8 = 808649EC
    lh      t6, 0x001C(a2)             # 0000001C
    sll     t7, t6,  5                 
    addu    v0, t7, t8                 
    lhu     t9, 0x000C(v0)             # 0000000C
    beq     $zero, $zero, lbl_8086439C 
    sh      t9, 0x010E(a2)             # 0000010E
lbl_8086438C:
    lui     t0, %hi(func_80864910)     # t0 = 80860000
    addiu   t0, t0, %lo(func_80864910) # t0 = 80864910
    sh      $zero, 0x0198(a2)          # 00000198
    sw      t0, 0x0134(a2)             # 00000134
lbl_8086439C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808643AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    slti    $at, v0, 0x001E            
    bne     $at, $zero, lbl_80864428   
    slti    $at, v0, 0x0026            
    beq     $at, $zero, lbl_80864428   
    addiu   v1, v0, 0xFFE2             # v1 = FFFFFFE2
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70AB(t6)            # 800F8F55
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t8, v1,  1                 
    lui     t9, %hi(var_808649D0)      # t9 = 80860000
    addu    t9, t9, t8                 
    addu    t7, t7, t6                 
    lbu     t7, -0x59BC(t7)            # 8011A644
    lh      t9, %lo(var_808649D0)(t9)  
    or      a1, a2, $zero              # a1 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    bne     t7, t9, lbl_80864418       
    nop
    jal     func_80864300              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086442C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80864418:
    jal     func_808641D8              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8086442C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80864428:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8086442C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8086443C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lh      a2, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0184(s0)             # 00000184
    sh      a2, 0x002E($sp)            
    jal     func_80081688              
    addu    a0, a0, $at                
    beq     v0, $zero, lbl_808647D8    
    lh      a2, 0x002E($sp)            
    lw      t6, 0x0004(s0)             # 00000004
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lb      t8, 0x0184(s0)             # 00000184
    and     t7, t6, $at                
    addiu   t0, t9, 0xFFE2             # t0 = FFFFFFE2
    sltiu   $at, t0, 0x0008            
    sw      t7, 0x0004(s0)             # 00000004
    beq     $at, $zero, lbl_808646BC   
    sb      t8, 0x001E(s0)             # 0000001E
    sll     t0, t0,  2                 
    lui     $at, %hi(var_808650BC)     # $at = 80860000
    addu    $at, $at, t0               
    lw      t0, %lo(var_808650BC)($at) 
    jr      t0                         
    nop
var_808644B8:
    lui     t1, 0x8012                 # t1 = 80120000
    lhu     t1, -0x4B3A(t1)            # 8011B4C6
    lui     t7, %hi(var_808649EC)      # t7 = 80860000
    addiu   t7, t7, %lo(var_808649EC)  # t7 = 808649EC
    andi    t2, t1, 0x0100             # t2 = 00000000
    beq     t2, $zero, lbl_808644F0    
    sll     t6, a2,  5                 
    lui     t5, %hi(var_808649EC)      # t5 = 80860000
    addiu   t5, t5, %lo(var_808649EC)  # t5 = 808649EC
    addiu   t3, $zero, 0x70B6          # t3 = 000070B6
    sll     t4, a2,  5                 
    addu    v1, t4, t5                 
    beq     $zero, $zero, lbl_808644FC 
    sh      t3, 0x010E(s0)             # 0000010E
lbl_808644F0:
    addu    v1, t6, t7                 
    lhu     t8, 0x000C(v1)             # 0000000C
    sh      t8, 0x010E(s0)             # 0000010E
lbl_808644FC:
    lhu     t9, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t9, 0x0190(s0)             # 00000190
var_80864508:
    lui     t0, 0x8012                 # t0 = 80120000
    lhu     t0, -0x4B3A(t0)            # 8011B4C6
    lui     t6, %hi(var_808649EC)      # t6 = 80860000
    addiu   t6, t6, %lo(var_808649EC)  # t6 = 808649EC
    andi    t1, t0, 0x0400             # t1 = 00000000
    beq     t1, $zero, lbl_80864540    
    sll     t5, a2,  5                 
    lui     t4, %hi(var_808649EC)      # t4 = 80860000
    addiu   t4, t4, %lo(var_808649EC)  # t4 = 808649EC
    addiu   t2, $zero, 0x70B5          # t2 = 000070B5
    sll     t3, a2,  5                 
    addu    v1, t3, t4                 
    beq     $zero, $zero, lbl_8086454C 
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80864540:
    addu    v1, t5, t6                 
    lhu     t7, 0x000C(v1)             # 0000000C
    sh      t7, 0x010E(s0)             # 0000010E
lbl_8086454C:
    lhu     t8, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t8, 0x0190(s0)             # 00000190
var_80864558:
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B3A(t9)            # 8011B4C6
    lui     t5, %hi(var_808649EC)      # t5 = 80860000
    addiu   t5, t5, %lo(var_808649EC)  # t5 = 808649EC
    andi    t0, t9, 0x0200             # t0 = 00000000
    beq     t0, $zero, lbl_80864590    
    sll     t4, a2,  5                 
    lui     t3, %hi(var_808649EC)      # t3 = 80860000
    addiu   t3, t3, %lo(var_808649EC)  # t3 = 808649EC
    addiu   t1, $zero, 0x70B4          # t1 = 000070B4
    sll     t2, a2,  5                 
    addu    v1, t2, t3                 
    beq     $zero, $zero, lbl_8086459C 
    sh      t1, 0x010E(s0)             # 0000010E
lbl_80864590:
    addu    v1, t4, t5                 
    lhu     t6, 0x000C(v1)             # 0000000C
    sh      t6, 0x010E(s0)             # 0000010E
lbl_8086459C:
    lhu     t7, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t7, 0x0190(s0)             # 00000190
var_808645A8:
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t8, -0x4B3A(t8)            # 8011B4C6
    lui     t4, %hi(var_808649EC)      # t4 = 80860000
    addiu   t4, t4, %lo(var_808649EC)  # t4 = 808649EC
    andi    t9, t8, 0x0800             # t9 = 00000000
    beq     t9, $zero, lbl_808645E0    
    sll     t3, a2,  5                 
    lui     t2, %hi(var_808649EC)      # t2 = 80860000
    addiu   t2, t2, %lo(var_808649EC)  # t2 = 808649EC
    addiu   t0, $zero, 0x70B7          # t0 = 000070B7
    sll     t1, a2,  5                 
    addu    v1, t1, t2                 
    beq     $zero, $zero, lbl_808645EC 
    sh      t0, 0x010E(s0)             # 0000010E
lbl_808645E0:
    addu    v1, t3, t4                 
    lhu     t5, 0x000C(v1)             # 0000000C
    sh      t5, 0x010E(s0)             # 0000010E
lbl_808645EC:
    lhu     t6, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t6, 0x0190(s0)             # 00000190
var_808645F8:
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B3A(t7)            # 8011B4C6
    lui     t4, %hi(var_808649EC)      # t4 = 80860000
    addiu   t4, t4, %lo(var_808649EC)  # t4 = 808649EC
    andi    t8, t7, 0x0800             # t8 = 00000000
    beq     t8, $zero, lbl_80864638    
    sll     t3, a2,  5                 
    lui     t1, %hi(var_808649EC)      # t1 = 80860000
    addiu   t9, $zero, 0x70BB          # t9 = 000070BB
    addiu   t1, t1, %lo(var_808649EC)  # t1 = 808649EC
    sll     t0, a2,  5                 
    sh      t9, 0x010E(s0)             # 0000010E
    addu    v1, t0, t1                 
    lhu     t2, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t2, 0x0190(s0)             # 00000190
lbl_80864638:
    addu    v1, t3, t4                 
    lhu     t5, 0x000C(v1)             # 0000000C
    addiu   t6, $zero, 0x00EB          # t6 = 000000EB
    sh      t6, 0x0190(s0)             # 00000190
    beq     $zero, $zero, lbl_808646DC 
    sh      t5, 0x010E(s0)             # 0000010E
var_80864650:
    lui     t8, %hi(var_808649EC)      # t8 = 80860000
    addiu   t8, t8, %lo(var_808649EC)  # t8 = 808649EC
    sll     t7, a2,  5                 
    addu    v1, t7, t8                 
    lhu     t9, 0x000C(v1)             # 0000000C
    sh      t9, 0x010E(s0)             # 0000010E
    lhu     t0, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t0, 0x0190(s0)             # 00000190
var_80864674:
    lui     t2, %hi(var_808649EC)      # t2 = 80860000
    addiu   t2, t2, %lo(var_808649EC)  # t2 = 808649EC
    sll     t1, a2,  5                 
    addu    v1, t1, t2                 
    lhu     t3, 0x000C(v1)             # 0000000C
    sh      t3, 0x010E(s0)             # 0000010E
    lhu     t4, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t4, 0x0190(s0)             # 00000190
var_80864698:
    lui     t6, %hi(var_808649EC)      # t6 = 80860000
    addiu   t6, t6, %lo(var_808649EC)  # t6 = 808649EC
    sll     t5, a2,  5                 
    addu    v1, t5, t6                 
    lhu     t7, 0x000C(v1)             # 0000000C
    sh      t7, 0x010E(s0)             # 0000010E
    lhu     t8, 0x000E(v1)             # 0000000E
    beq     $zero, $zero, lbl_808646DC 
    sh      t8, 0x0190(s0)             # 00000190
lbl_808646BC:
    lui     t0, %hi(var_808649EC)      # t0 = 80860000
    addiu   t0, t0, %lo(var_808649EC)  # t0 = 808649EC
    sll     t9, a2,  5                 
    addu    v1, t9, t0                 
    lhu     t1, 0x000C(v1)             # 0000000C
    sh      t1, 0x010E(s0)             # 0000010E
    lhu     t2, 0x000E(v1)             # 0000000E
    sh      t2, 0x0190(s0)             # 00000190
lbl_808646DC:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_808643AC              
    sw      v1, 0x0024($sp)            
    bne     v0, $zero, lbl_80864708    
    lw      v1, 0x0024($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808641D8              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
lbl_80864708:
    lui     t3, %hi(func_80864300)     # t3 = 80860000
    lui     t4, %hi(func_80864334)     # t4 = 80860000
    addiu   t3, t3, %lo(func_80864300) # t3 = 80864300
    addiu   t4, t4, %lo(func_80864334) # t4 = 80864334
    sw      t3, 0x019C(s0)             # 0000019C
    sw      t4, 0x01A0(s0)             # 000001A0
    lw      t5, 0x0010(v1)             # 00000010
    lw      t3, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t5, 0x0194(s0)             # 00000194
    lw      t6, 0x0014(v1)             # 00000014
    and     t4, t3, $at                
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x01AC(s0)             # 000001AC
    lw      t7, 0x0018(v1)             # 00000018
    lui     a1, 0x3E80                 # a1 = 3E800000
    sw      t7, 0x01B0(s0)             # 000001B0
    lw      t8, 0x001C(v1)             # 0000001C
    sw      t8, 0x01B4(s0)             # 000001B4
    lh      t9, 0x0008(v1)             # 00000008
    sh      t9, 0x01B8(s0)             # 000001B8
    lh      t0, 0x000A(v1)             # 0000000A
    sh      t0, 0x01BA(s0)             # 000001BA
    lw      t1, 0x0004(v1)             # 00000004
    sw      t1, 0x01C0(s0)             # 000001C0
    lh      t2, 0x0002(v1)             # 00000002
    sw      t4, 0x0004(s0)             # 00000004
    jal     func_80020F88              
    sh      t2, 0x01BC(s0)             # 000001BC
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f4                   # $f4 = 24.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a1, %hi(func_808641C8)     # a1 = 80860000
    addiu   a1, a1, %lo(func_808641C8) # a1 = 808641C8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x00BC(s0)            # 000000BC
    swc1    $f6, 0x00C4(s0)            # 000000C4
    swc1    $f8, 0x0080(s0)            # 00000080
    jal     func_80862C00              
    swc1    $f10, 0x006C(s0)           # 0000006C
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     t6, %hi(func_808647EC)     # t6 = 80860000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, t6, %lo(func_808647EC) # t6 = 808647EC
    sw      t5, 0x018C(s0)             # 0000018C
    sw      t6, 0x0188(s0)             # 00000188
    sh      $zero, 0x01A4(s0)          # 000001A4
    sh      $zero, 0x01A8(s0)          # 000001A8
    sh      t7, 0x01A6(s0)             # 000001A6
lbl_808647D8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808647EC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lui     a1, 0x3E80                 # a1 = 3E800000
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f4                   # $f4 = 24.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    swc1    $f4, 0x00BC(s0)            # 000000BC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x00C4(s0)            # 000000C4
    jal     func_808643AC              
    lw      a1, 0x002C($sp)            
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x40A0                 # a1 = 40A00000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0026         # $at = 00000026
    sh      $zero, 0x00B4(s0)          # 000000B4
    beql    t6, $at, lbl_80864898      
    lw      $ra, 0x0024($sp)           
    lh      t7, 0x01A4(s0)             # 000001A4
    addiu   a0, s0, 0x01A8             # a0 = 000001A8
    or      a1, $zero, $zero           # a1 = 00000000
    beq     t7, $zero, lbl_80864888    
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lh      t8, 0x01A8(s0)             # 000001A8
    addiu   t0, t8, 0x01F4             # t0 = 000001F4
    beq     $zero, $zero, lbl_80864894 
    sh      t0, 0x01A8(s0)             # 000001A8
lbl_80864888:
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80864894:
    lw      $ra, 0x0024($sp)           
lbl_80864898:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808648A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0188(a0)             # 00000188
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808648CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80864910:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x01A8(a3)             # 000001A8
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f8                   # $f8 = 360.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f16                  # $f16 = 65536.00
    cvt.s.w $f6, $f4                   
    lui     $at, %hi(var_808650DC)     # $at = 80860000
    lwc1    $f4, %lo(var_808650DC)($at) 
    sw      a3, 0x0018($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f10, $f6, $f8             
    div.s   $f18, $f10, $f16           
    mul.s   $f12, $f18, $f4            
    jal     func_800AAB94              
    nop
    lw      a3, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v0, 0x01C0(a3)             # 000001C0
    or      a0, a3, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_8086498C    
    lw      a0, 0x001C($sp)            
    jalr    $ra, v0                    
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
lbl_8086498C:
    jal     func_800570C0              
    lh      a1, 0x01BC(a3)             # 000001BC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_808649B0: .word 0x00040600, 0x00000019, 0x00010000, 0x000001C4
.word func_80862E28
.word func_80862E5C
.word func_808648A8
.word 0x00000000
var_808649D0: .word 0x00240026, 0x00250027, 0x002B0029, 0x0028002A
var_808649E0: .word 0x70B670B5, 0x70B470B7, 0x70BB0000
var_808649EC: .word \
0x00BB0011, 0x80022554, 0x000F0005, 0x00B2007F, \
0x00000063
.word func_80862FDC
.word func_80863B4C
.word func_80863FB4
.word \
0x00D80025, 0x80022438, 0x003C001E, 0x00C1009B, \
0x0000004A
.word func_80862E8C
.word func_80863A64
.word func_80863FB4
.word \
0x00D80026, 0x80022438, 0x005A0032, 0x00B0007D, \
0x0000004B
.word func_80862E8C
.word func_80863A64
.word func_80863FB4
.word \
0x00CE001F, 0x80022438, 0x00190005, 0x00A3008B, \
0x00000001
.word func_80862F3C
.word func_80863AAC
.word func_80863FB4
.word \
0x00BB0011, 0x80022554, 0x001E000A, 0x00A20087, \
0x00000064
.word func_80862FDC
.word func_80863B4C
.word func_80863FB4
.word \
0x00C7001A, 0x00000000, 0x000A0001, 0x00A10088, \
0x00000007
.word func_80863094
.word func_80863BBC
.word func_80863FB4
.word \
0x00CE001F, 0x80022438, 0x0032000A, 0x00B1007C, \
0x00000066
.word func_80862F3C
.word func_80863AAC
.word func_80863FB4
.word \
0x00F4003E, 0x80022554, 0x00C80001, 0x00B3007E, \
0x0000006C
.word func_8086314C
.word 0x00000000
.word func_80863FB4
.word \
0x00EB0037, 0x80022438, 0x001E0001, 0x00A5008E, \
0x00000010
.word func_808631C4
.word func_80863E84
.word func_80863FB4
.word \
0x00EB0036, 0x80022438, 0x001E0001, 0x00A6008F, \
0x00000011
.word func_8086323C
.word func_80863E84
.word func_80863FB4
.word \
0x00EB0038, 0x80022438, 0x003C0001, 0x00A70090, \
0x00000012
.word func_808632B4
.word func_80863E84
.word func_80863FB4
.word \
0x00F80042, 0x80022438, 0x03E80001, 0x00A80091, \
0x00000028
.word func_8086332C
.word func_80863BF8
.word func_80863FB4
.word \
0x00DC002B, 0x80022438, 0x00500001, 0x00A90092, \
0x0000002A
.word func_808633C0
.word func_80863C40
.word func_80863FB4
.word \
0x00CB001C, 0x80022438, 0x00280001, 0x009F0089, \
0x00000029
.word func_80863440
.word func_80863C7C
.word func_80863FB4
.word \
0x00F2003B, 0x00000000, 0x00C80001, 0x00AA0093, \
0x0000002C
.word func_808634C0
.word func_80863CB8
.word func_80864054
.word \
0x00F2003C, 0x00000000, 0x012C0001, 0x00AB0094, \
0x0000002D
.word func_80863568
.word func_80863CF4
.word func_80864084
.word \
0x00B70008, 0x00000000, 0x000A0010, 0x00AC0095, \
0x00000048
.word func_80863610
.word func_80863D30
.word func_80863FB4
.word 0x00DF002F
.word func_808648CC
.word 0x00640001, 0x00AD0097, 0x00000014
.word func_8086365C
.word func_80863D70
.word func_80863FB4
.word \
0x00DA0028, 0x80022438, 0x00640001, 0x00AE0099, \
0x00000047
.word func_808636B8
.word func_80863DAC
.word func_80863FB4
.word 0x00DF002F
.word func_808648CC
.word 0x27100001, 0x00B40085, 0x00000000
.word func_80863714
.word func_80863DE8
.word func_80863FB4
.word \
0x00DA0028, 0x80022438, 0x27100001, 0x00B50085, \
0x00000000
.word func_80863728
.word func_80863E18
.word func_80863FB4
.word \
0x00D90027, 0x80022438, 0x0064000A, 0x00BC008C, \
0x00000003
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x00B40014, 0x0061002A, \
0x0000006B
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x00B40014, 0x0061002A, \
0x0000006B
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x0064000A, 0x00BC008C, \
0x00000003
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x0064000A, 0x00BC008C, \
0x00000003
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x00B40014, 0x0061002A, \
0x0000006B
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x00B40014, 0x0061002A, \
0x0000006B
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x00D90027, 0x80022438, 0x0064000A, 0x00BC008C, \
0x00000003
.word func_8086373C
.word 0x00000000
.word func_808640B4
.word \
0x01190047, 0x80022438, 0x001E001E, 0x00DF00DE, \
0x00000069
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x01340030, 0x80022438, 0x00000001, 0x70B270BE, \
0x0000001A
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x01350031, 0x80022438, 0x00000001, 0x70B170BD, \
0x00000018
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x0136004E, 0x80022438, 0x00000001, 0x70B070BC, \
0x00000017
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x0137004F, 0x80022438, 0x00000001, 0x70B370BF, \
0x0000001B
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word 0x01380050
.word func_808648CC
.word 0x00000001, 0x70AF70C3, 0x0000001C
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x0151005B, 0x00000000, 0x00000001, 0x70B970C1, \
0x00000052
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x0150005A, 0x00000000, 0x00000001, 0x70B870C0, \
0x00000051
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x0152005C, 0x00000000, 0x00000001, 0x70BA70C2, \
0x00000053
.word func_808637C0
.word func_80863E48
.word func_80863FB4
.word \
0x01480058, 0x80022438, 0x00000000, 0x00BD70C2, \
0x00000053
.word func_80863870
.word \
0x00000000, 0x00000000, 0x01730066, 0x80022438, \
0x012C0001, 0x00B900B8, 0x0000006E
.word func_80863884
.word func_80863E84
.word func_80863FB4
.word 0x01740067
.word func_808648CC
.word 0x00320001, 0x00BB00BA, 0x0000006D
.word func_808638FC
.word func_80863E84
.word func_80863FB4
.word 0x0176006F
.word func_808648CC
.word 0x00320001, 0x506F5070, 0x00000070
.word func_80863974
.word func_80863E84
.word func_80863FB4
.word 0x01760069
.word func_808648CC
.word 0x001E0001, 0x506D506E, 0x0000006F
.word func_80863974
.word func_80863E84
.word func_80863FB4
.word 0x0177006A
.word func_808648CC
.word 0x00320001, 0x00B700B6, 0x00000013
.word func_808639EC
.word func_80863E84
.word func_80863FB4
.word \
0x00D80024, 0x80022438, 0x0014000A, 0x00A0008A, \
0x00000049
.word func_80862E8C
.word func_80863A64
.word func_80863FB4
.word \
0x00CE001F, 0x80022438, 0x00500014, 0x001C0006, \
0x00000067
.word func_80862F3C
.word func_80863AAC
.word func_80863FB4
.word \
0x00CE001F, 0x80022438, 0x0078001E, 0x001D001E, \
0x00000068
.word func_80862F3C
.word func_80863AAC
.word func_80863FB4
.word \
0x00CE001F, 0x80022438, 0x00230005, 0x00CB00CA, \
0x00000001
.word func_80862F3C
.word func_80863AAC
.word func_80863FB4
.word \
0x00EB0037, 0x80022438, 0x00280001, 0x00640062, \
0x00000010
.word func_808631C4
.word func_80863E84
.word func_80863FB4
.word \
0x00EB0037, 0x80022438, 0x00320001, 0x00650063, \
0x00000010
.word func_808631C4
.word func_80863E84
.word func_80863FB4
var_8086502C: .word \
0x0005000A, 0x000F0014, 0x0019001E, 0x00230028, \
0x00000000

.section .rodata

var_80865040: .word var_80862C34
.word lbl_80862D78
.word lbl_80862D78
.word lbl_80862D78
.word func_80862D0C
.word func_80862D30
.word func_80862D54
.word func_80862C58
.word func_80862C7C
.word func_80862CA0
.word func_80862CC4
.word func_80862CE8
var_80865070: .word var_80863F44
.word var_80863F54
.word var_80863F64
.word var_80863F74
.word var_80863F84
var_80865084: .word 0x40FCCCCD
var_80865088: .word var_80864160
.word var_80864178
.word var_80864190
.word var_808640E8
.word var_80864100
.word var_80864118
.word var_80864130
.word var_80864148
var_808650A8: .word var_8086422C
.word var_80864248
.word var_80864264
.word var_80864280
.word var_8086429C
var_808650BC: .word var_808644B8
.word var_80864508
.word var_80864558
.word var_808645A8
.word var_808645F8
.word var_80864650
.word var_80864674
.word var_80864698
var_808650DC: .word 0x3C8EFA35

