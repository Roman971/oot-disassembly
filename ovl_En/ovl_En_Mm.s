.section .text
func_80AD0600:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    lw      t6, 0x0040($sp)            
    lui     t8, %hi(var_80AD1978)      # t8 = 80AD0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      v0, 0x0000(t6)             # 00000000
    addiu   t8, t8, %lo(var_80AD1978)  # t8 = 80AD1978
    sll     t7, a1,  4                 
    bltzl   v0, lbl_80AD063C           
    mtc1    $zero, $f0                 # $f0 = 0.00
    bne     a1, v0, lbl_80AD0644       
    sll     t9, a1,  4                 
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AD063C:
    beq     $zero, $zero, lbl_80AD0654 
    addu    v1, t7, t8                 
lbl_80AD0644:
    lui     t0, %hi(var_80AD1978)      # t0 = 80AD0000
    addiu   t0, t0, %lo(var_80AD1978)  # t0 = 80AD1978
    addu    v1, t9, t0                 
    lwc1    $f0, 0x000C(v1)            # 0000000C
lbl_80AD0654:
    lwc1    $f4, 0x0004(v1)            # 00000004
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80AD06C0               
    lw      a0, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(v1)             # 00000000
    sw      v1, 0x002C($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_8008A194              
    swc1    $f0, 0x0034($sp)           
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      v1, 0x002C($sp)            
    lwc1    $f0, 0x0034($sp)           
    cvt.s.w $f10, $f8                  
    lw      a0, 0x0038($sp)            
    lbu     t1, 0x0008(v1)             # 00000008
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    lw      a2, 0x0004(v1)             # 00000004
    swc1    $f10, 0x0010($sp)          
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    sw      t1, 0x0014($sp)            
    beq     $zero, $zero, lbl_80AD0710 
    lw      t3, 0x003C($sp)            
    lw      a0, 0x0000(v1)             # 00000000
lbl_80AD06C0:
    sw      v1, 0x002C($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_8008A194              
    swc1    $f0, 0x0034($sp)           
    mtc1    v0, $f16                   # $f16 = 0.00
    lw      v1, 0x002C($sp)            
    lwc1    $f0, 0x0034($sp)           
    cvt.s.w $f16, $f16                 
    lw      a0, 0x0038($sp)            
    mtc1    $zero, $f18                # $f18 = 0.00
    lbu     t2, 0x0008(v1)             # 00000008
    lw      a1, 0x0000(v1)             # 00000000
    lw      a2, 0x0004(v1)             # 00000004
    mfc1    a3, $f16                   
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    sw      t2, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f18, 0x0010($sp)          
    lw      t3, 0x003C($sp)            
lbl_80AD0710:
    lw      t4, 0x0040($sp)            
    sw      t3, 0x0000(t4)             # 00000000
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AD0724:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lui     a1, %hi(var_80AD1A28)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD1A28)  # a1 = 80AD1A28
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41A8                 # a3 = 41A80000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x0250             # t6 = 00000250
    addiu   t7, s0, 0x02B0             # t7 = 000002B0
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x5E18             # a2 = 06005E18
    sw      a1, 0x0038($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x004C($sp)            
    lui     a3, %hi(var_80AD1920)      # a3 = 80AD0000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80AD1920)  # a3 = 80AD1920
    lw      a0, 0x004C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80AD1958)      # a1 = 80AD0000
    lui     a2, %hi(var_80AD194C)      # a2 = 80AD0000
    addiu   a2, a2, %lo(var_80AD194C)  # a2 = 80AD194C
    addiu   a1, a1, %lo(var_80AD1958)  # a1 = 80AD1958
    jal     func_80050370              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t9, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     v1, %hi(var_80AD1978)      # v1 = 80AD0000
    addiu   v1, v1, %lo(var_80AD1978)  # v1 = 80AD1978
    jal     func_8008A194              
    lw      a0, 0x0000(v1)             # 80AD1978
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, %hi(var_80AD1978)      # v1 = 80AD0000
    addiu   v1, v1, %lo(var_80AD1978)  # v1 = 80AD1978
    cvt.s.w $f6, $f4                   
    lbu     t0, 0x0008(v1)             # 80AD1980
    lwc1    $f8, 0x000C(v1)            # 80AD1984
    lw      a1, 0x0000(v1)             # 80AD1978
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t0, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, 0xBF80                # $at = BF800000
    lh      t1, 0x001C(s0)             # 0000001C
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    lb      t3, 0x001E(s0)             # 0000001E
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    andi    t2, t1, 0x00FF             # t2 = 00000000
    sw      t2, 0x01DC(s0)             # 000001DC
    sw      v0, 0x01E0(s0)             # 000001E0
    sw      $zero, 0x01D8(s0)          # 000001D8
    sb      v0, 0x001F(s0)             # 0000001F
    swc1    $f10, 0x006C(s0)           # 0000006C
    swc1    $f16, 0x01F0(s0)           # 000001F0
    jal     func_80AD090C              
    sw      t3, 0x01F4(s0)             # 000001F4
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v0, v1, lbl_80AD08B0       
    or      a0, s0, $zero              # a0 = 00000000
    sw      v1, 0x01D4(s0)             # 000001D4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
    lui     t4, %hi(func_80AD1420)     # t4 = 80AD0000
    addiu   t4, t4, %lo(func_80AD1420) # t4 = 80AD1420
    beq     $zero, $zero, lbl_80AD08CC 
    sw      t4, 0x0180(s0)             # 00000180
lbl_80AD08B0:
    sw      $zero, 0x01D4(s0)          # 000001D4
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
    lui     t5, %hi(func_80AD111C)     # t5 = 80AD0000
    addiu   t5, t5, %lo(func_80AD111C) # t5 = 80AD111C
    sw      t5, 0x0180(s0)             # 00000180
lbl_80AD08CC:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD08E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD090C:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    or      v1, $zero, $zero           # v1 = 00000000
    slti    $at, v0, 0x3556            
    bne     $at, $zero, lbl_80AD0934   
    ori     $at, $zero, 0xD557         # $at = 0000D557
    slt     $at, v0, $at               
    beql    $at, $zero, lbl_80AD0938   
    or      v0, v1, $zero              # v0 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AD0934:
    or      v0, v1, $zero              # v0 = 00000001
lbl_80AD0938:
    jr      $ra                        
    nop


func_80AD0940:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x001C($sp)            
    sw      a3, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      t6, 0x0020($sp)            
    sltiu   $at, v0, 0x0007            
    beq     $at, $zero, lbl_80AD0AC0   
    lw      a3, 0x0028($sp)            
    sll     t8, v0,  2                 
    lui     $at, %hi(var_80AD1A40)     # $at = 80AD0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80AD1A40)($at) 
    jr      t8                         
    nop
var_80AD0990:
    lw      a0, 0x002C($sp)            
    jal     func_800D6110              
    sw      a3, 0x0028($sp)            
    beq     v0, $zero, lbl_80AD0AC0    
    lw      a3, 0x0028($sp)            
    lw      t9, 0x002C($sp)            
    lui     t0, 0x0001                 # t0 = 00010000
    addiu   t1, $zero, 0x202D          # t1 = 0000202D
    addu    t0, t0, t9                 
    lbu     t0, 0x04BD(t0)             # 000104BD
    lw      t2, 0x0020($sp)            
    lui     v1, 0x8012                 # v1 = 80120000
    bne     t0, $zero, lbl_80AD09F4    
    lw      t6, 0x0020($sp)            
    sh      t1, 0x010E(t2)             # 0000010E
    lw      t3, 0x0244(a3)             # 00000244
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, a3, $zero              # a0 = 00000000
    and     t4, t3, $at                
    sw      t4, 0x0244(a3)             # 00000244
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    jal     func_80AD0600              
    addiu   a2, a3, 0x0248             # a2 = 00000248
    beq     $zero, $zero, lbl_80AD0A10 
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_80AD09F4:
    addiu   t5, $zero, 0x202C          # t5 = 0000202C
    addiu   v1, v1, 0xA5D0             # v1 = FFFFA5D0
    sh      t5, 0x010E(t6)             # 0000010E
    lhu     t7, 0x0F26(v1)             # FFFFB4F6
    ori     t8, t7, 0x1000             # t8 = 00001000
    sh      t8, 0x0F26(v1)             # FFFFB4F6
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_80AD0A10:
    beq     $zero, $zero, lbl_80AD0AC0 
    sw      t9, 0x001C($sp)            
var_80AD0A18:
    jal     func_800D6110              
    lw      a0, 0x002C($sp)            
    beql    v0, $zero, lbl_80AD0AC4    
    lw      v0, 0x001C($sp)            
    jal     func_80079B54              
    lw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t0, 0x0EF6(v1)             # 8011B4C6
    addiu   a0, $zero, 0x01F4          # a0 = 000001F4
    ori     t1, t0, 0x0800             # t1 = 00000800
    jal     func_800721CC              
    sh      t1, 0x0EF6(v1)             # 8011B4C6
    lw      t3, 0x0020($sp)            
    addiu   t2, $zero, 0x202E          # t2 = 0000202E
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t2, 0x010E(t3)             # 0000010E
    beq     $zero, $zero, lbl_80AD0AC0 
    sw      t4, 0x001C($sp)            
var_80AD0A70:
    lw      a0, 0x002C($sp)            
    jal     func_800D6110              
    sw      a3, 0x0028($sp)            
    beq     v0, $zero, lbl_80AD0AC0    
    lw      a3, 0x0028($sp)            
    lw      t5, 0x0020($sp)            
    addiu   $at, $zero, 0x202E         # $at = 0000202E
    or      a0, a3, $zero              # a0 = 00000000
    lhu     v0, 0x010E(t5)             # 0000010E
    beq     v0, $at, lbl_80AD0AA4      
    addiu   $at, $zero, 0x202C         # $at = 0000202C
    bnel    v0, $at, lbl_80AD0AC0      
    sw      $zero, 0x001C($sp)         
lbl_80AD0AA4:
    lw      t6, 0x0244(a3)             # 00000244
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, a3, 0x0248             # a2 = 00000248
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_80AD0600              
    sw      t7, 0x0244(a3)             # 00000244
    sw      $zero, 0x001C($sp)         
lbl_80AD0AC0:
    lw      v0, 0x001C($sp)            
lbl_80AD0AC4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD0AD4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x1C44(a2)             # 00001C44
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    jal     func_800597C0              
    sw      t6, 0x001C($sp)            
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lhu     t7, 0x0EF6(a1)             # 8011B4C6
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0800             # t8 = 00000000
    beq     t8, $zero, lbl_80AD0B28    
    lw      $ra, 0x0014($sp)           
    bnel    v0, $zero, lbl_80AD0B6C    
    or      v0, a0, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_80AD0B68 
    addiu   a0, $zero, 0x204D          # a0 = 0000204D
lbl_80AD0B28:
    lw      t9, 0x001C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t0, 0x014F(t9)             # 0000014F
    bne     t0, $at, lbl_80AD0B5C      
    nop
    lhu     t1, 0x0F26(a1)             # 8011B4F6
    andi    t2, t1, 0x1000             # t2 = 00000000
    beq     t2, $zero, lbl_80AD0B54    
    nop
    beq     $zero, $zero, lbl_80AD0B68 
    addiu   a0, $zero, 0x202B          # a0 = 0000202B
lbl_80AD0B54:
    beq     $zero, $zero, lbl_80AD0B68 
    addiu   a0, $zero, 0x202A          # a0 = 0000202A
lbl_80AD0B5C:
    bnel    v1, $zero, lbl_80AD0B6C    
    or      v0, a0, $zero              # v0 = 0000202A
    addiu   a0, $zero, 0x2029          # a0 = 00002029
lbl_80AD0B68:
    or      v0, a0, $zero              # v0 = 00002029
lbl_80AD0B6C:
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80AD0B74:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v1, 0x1C44(a2)             # 00001C44
    bne     v0, $at, lbl_80AD0BB0      
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80              
    lhu     a1, 0x010E(v1)             # 0000010E
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     $zero, $zero, lbl_80AD0CE0 
    sw      t6, 0x01D0(s0)             # 000001D0
lbl_80AD0BB0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80AD0BD0      
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD0940              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80AD0CE0 
    sw      v0, 0x01D0(s0)             # 000001D0
lbl_80AD0BD0:
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80022930              
    sw      a2, 0x0034($sp)            
    beq     v0, $zero, lbl_80AD0C30    
    lw      a0, 0x0034($sp)            
    lw      t8, 0x0248(s0)             # 00000248
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     t8, $at, lbl_80AD0CE0      
    sw      t7, 0x01D0(s0)             # 000001D0
    lhu     v0, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x202A         # $at = 0000202A
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80AD0C18      
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    addiu   $at, $zero, 0x202B         # $at = 0000202B
    bnel    v0, $at, lbl_80AD0CE4      
    lw      $ra, 0x001C($sp)           
lbl_80AD0C18:
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    beq     $zero, $zero, lbl_80AD0CE4 
    lw      $ra, 0x001C($sp)           
lbl_80AD0C30:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0026            # a2 = FFFFFFF6
    jal     func_80022B14              
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFF4
    lh      t9, 0x008A(s0)             # 0000008A
    lh      t0, 0x00B6(s0)             # 000000B6
    subu    v0, t9, t0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AD0C68           
    subu    t1, $zero, v0              
    mtc1    v0, $f4                    # $f4 = 0.00
    beq     $zero, $zero, lbl_80AD0C74 
    cvt.s.w $f0, $f4                   
lbl_80AD0C68:
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6                   
lbl_80AD0C74:
    lh      v0, 0x0026($sp)            
    bltz    v0, lbl_80AD0CE0           
    slti    $at, v0, 0x0141            
    beq     $at, $zero, lbl_80AD0CE0   
    lh      v0, 0x0024($sp)            
    bltz    v0, lbl_80AD0CE0           
    slti    $at, v0, 0x00F1            
    beq     $at, $zero, lbl_80AD0CE0   
    lui     $at, 0x4686                # $at = 46860000
    mtc1    $at, $f8                   # $f8 = 17152.00
    nop
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_80AD0CE4               
    lw      $ra, 0x001C($sp)           
    lw      t2, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    beq     t2, $at, lbl_80AD0CE0      
    lw      a1, 0x0034($sp)            
    jal     func_80022A68              
    lui     a2, 0x42C8                 # a2 = 42C80000
    beq     v0, $zero, lbl_80AD0CE0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD0AD4              
    lw      a1, 0x0034($sp)            
    sh      v0, 0x010E(s0)             # 0000010E
lbl_80AD0CE0:
    lw      $ra, 0x001C($sp)           
lbl_80AD0CE4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD0CF4:
    sll     t6, a1,  3                 
    addu    t7, t6, a0                 
    lbu     v0, 0x0000(t7)             # 00000000
    jr      $ra                        
    nop


func_80AD0D08:
    sll     t6, a2,  3                 
    addu    t7, a0, t6                 
    lw      t0, 0x0004(t7)             # 00000004
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t8, t0,  4                 
    srl     t9, t8, 28                 
    sll     t1, t9,  2                 
    addu    t2, t2, t1                 
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, a3,  2                 
    subu    t5, t5, a3                 
    and     t3, t0, $at                
    sll     t5, t5,  1                 
    addu    t4, t2, t3                 
    addu    v1, t4, t5                 
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, v1, $at                
    lh      t6, 0x0000(v1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a1)            # 00000000
    lh      t7, 0x0002(v1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a1)           # 00000008
    jr      $ra                        
    nop


func_80AD0D9C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a1, 0x007C($sp)            
    lw      s1, 0x007C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFEC
    addu    s1, s1, $at                
    lw      a0, 0x1E08(s1)             # 00001E08
    lw      a2, 0x01DC(s0)             # 000001DC
    jal     func_80AD0D08              
    lw      a3, 0x01E4(s0)             # 000001E4
    lwc1    $f4, 0x0064($sp)           
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x006C($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f20, $f4, $f6             
    sub.s   $f22, $f8, $f10            
    mov.s   $f12, $f20                 
    jal     func_800CD76C              
    mov.s   $f14, $f22                 
    lui     $at, %hi(var_80AD1A5C)     # $at = 80AD0000
    lwc1    $f16, %lo(var_80AD1A5C)($at) 
    lui     $at, %hi(var_80AD1A60)     # $at = 80AD0000
    mul.s   $f18, $f0, $f16            
    nop
    mul.s   $f4, $f20, $f20            
    nop
    mul.s   $f6, $f22, $f22            
    swc1    $f18, 0x01E8(s0)           # 000001E8
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    swc1    $f0, 0x01EC(s0)            # 000001EC
    lwc1    $f8, %lo(var_80AD1A60)($at) 
    c.le.s  $f0, $f8                   
    nop
    bc1f    lbl_80AD1004               
    nop
    lw      v0, 0x01D8(s0)             # 000001D8
    addiu   s4, $zero, 0x0002          # s4 = 00000002
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    beq     v0, $zero, lbl_80AD1004    
    lui     s2, %hi(var_80AD19E8)      # s2 = 80AD0000
    addiu   s2, s2, %lo(var_80AD19E8)  # s2 = 80AD19E8
    sll     t6, v0,  4                 
lbl_80AD0E6C:
    addu    a0, s2, t6                 
    lw      t8, 0x0000(a0)             # 00000000
    lw      t7, 0x01E4(s0)             # 000001E4
    addu    t9, t7, t8                 
    sw      t9, 0x01E4(s0)             # 000001E4
    lw      a2, 0x0008(a0)             # 00000008
    beq     a2, $zero, lbl_80AD0EA4    
    nop
    beql    a2, s3, lbl_80AD0EB0       
    lw      a0, 0x1E08(s1)             # 00001E08
    beql    a2, s4, lbl_80AD0ED0       
    lw      a2, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80AD0ED4 
    lw      v1, 0x000C(a0)             # 0000000C
lbl_80AD0EA4:
    beq     $zero, $zero, lbl_80AD0ED0 
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x1E08(s1)             # 00001E08
lbl_80AD0EB0:
    jal     func_80AD0CF4              
    lw      a1, 0x01DC(s0)             # 000001DC
    lw      t0, 0x01D8(s0)             # 000001D8
    addiu   a2, v0, 0xFFFF             # a2 = FFFFFFFF
    sll     t1, t0,  4                 
    beq     $zero, $zero, lbl_80AD0ED0 
    addu    a0, s2, t1                 
    lw      a2, 0x01E0(s0)             # 000001E0
lbl_80AD0ED0:
    lw      v1, 0x000C(a0)             # 0000000C
lbl_80AD0ED4:
    beq     v1, $zero, lbl_80AD0EF4    
    nop
    beql    v1, s3, lbl_80AD0F00       
    lw      a0, 0x1E08(s1)             # 00001E08
    beql    v1, s4, lbl_80AD0F28       
    lw      v1, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80AD0F2C 
    lw      v0, 0x0000(a0)             # 00000000
lbl_80AD0EF4:
    beq     $zero, $zero, lbl_80AD0F28 
    or      v1, $zero, $zero           # v1 = 00000000
    lw      a0, 0x1E08(s1)             # 00001E08
lbl_80AD0F00:
    lw      a1, 0x01DC(s0)             # 000001DC
    jal     func_80AD0CF4              
    sw      a2, 0x0060($sp)            
    lw      t2, 0x01D8(s0)             # 000001D8
    lw      a2, 0x0060($sp)            
    addiu   v1, v0, 0xFFFF             # v1 = FFFFFFFF
    sll     t3, t2,  4                 
    beq     $zero, $zero, lbl_80AD0F28 
    addu    a0, s2, t3                 
    lw      v1, 0x01E0(s0)             # 000001E0
lbl_80AD0F28:
    lw      v0, 0x0000(a0)             # 00000000
lbl_80AD0F2C:
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFEC
    bltz    v0, lbl_80AD0F50           
    nop
    lw      a3, 0x01E4(s0)             # 000001E4
    slt     $at, a3, a2                
    bne     $at, $zero, lbl_80AD0F6C   
    slt     $at, v1, a3                
    bnel    $at, $zero, lbl_80AD0F70   
    lw      t4, 0x0004(a0)             # 00000004
lbl_80AD0F50:
    bgez    v0, lbl_80AD0F84           
    lw      a3, 0x01E4(s0)             # 000001E4
    slt     $at, a2, a3                
    bne     $at, $zero, lbl_80AD0F6C   
    slt     $at, a3, v1                
    beql    $at, $zero, lbl_80AD0F88   
    lw      a0, 0x1E08(s1)             # 00001E08
lbl_80AD0F6C:
    lw      t4, 0x0004(a0)             # 00000004
lbl_80AD0F70:
    sll     t6, t4,  4                 
    addu    t7, s2, t6                 
    sw      t4, 0x01D8(s0)             # 000001D8
    lw      a3, 0x0008(t7)             # 00000008
    sw      a3, 0x01E4(s0)             # 000001E4
lbl_80AD0F84:
    lw      a0, 0x1E08(s1)             # 00001E08
lbl_80AD0F88:
    jal     func_80AD0D08              
    lw      a2, 0x01DC(s0)             # 000001DC
    lwc1    $f10, 0x0064($sp)          
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x006C($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sub.s   $f20, $f10, $f16           
    sub.s   $f22, $f18, $f4            
    mov.s   $f12, $f20                 
    jal     func_800CD76C              
    mov.s   $f14, $f22                 
    lui     $at, %hi(var_80AD1A64)     # $at = 80AD0000
    lwc1    $f6, %lo(var_80AD1A64)($at) 
    lui     $at, %hi(var_80AD1A68)     # $at = 80AD0000
    mul.s   $f8, $f0, $f6              
    nop
    mul.s   $f10, $f20, $f20           
    nop
    mul.s   $f16, $f22, $f22           
    swc1    $f8, 0x01E8(s0)            # 000001E8
    add.s   $f0, $f10, $f16            
    sqrt.s  $f0, $f0                   
    swc1    $f0, 0x01EC(s0)            # 000001EC
    lwc1    $f18, %lo(var_80AD1A68)($at) 
    c.le.s  $f0, $f18                  
    nop
    bc1f    lbl_80AD1004               
    nop
    lw      v0, 0x01D8(s0)             # 000001D8
    bnel    v0, $zero, lbl_80AD0E6C    
    sll     t6, v0,  4                 
lbl_80AD1004:
    lwc1    $f4, 0x01E8(s0)            # 000001E8
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    trunc.w.s $f6, $f4                   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x09C4          # a3 = 000009C4
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lh      t0, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f20                # $f20 = 0.00
    lw      a1, 0x01F0(s0)             # 000001F0
    lui     a2, 0x3F19                 # a2 = 3F190000
    lw      a3, 0x01EC(s0)             # 000001EC
    sh      t0, 0x0032(s0)             # 00000032
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sw      t1, 0x0014($sp)            
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f20, 0x0010($sp)          
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80AD10AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80AD110C    
    lw      a3, 0x0018($sp)            
    lw      t7, 0x0244(a3)             # 00000244
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80AD1420)     # t6 = 80AD0000
    addiu   t6, t6, %lo(func_80AD1420) # t6 = 80AD1420
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t6, 0x0180(a3)             # 00000180
    sw      $zero, 0x01D8(a3)          # 000001D8
    sw      $zero, 0x01D4(a3)          # 000001D4
    sw      t8, 0x0244(a3)             # 00000244
    sw      $zero, 0x01D0(a3)          # 000001D0
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, a3, 0x0248             # a2 = 00000248
    jal     func_80AD0600              
    swc1    $f4, 0x0068(a3)            # 00000068
lbl_80AD110C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD111C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    jal     func_8007943C              
    lw      a0, 0x004C($sp)            
    bnel    v0, $zero, lbl_80AD1384    
    lw      $ra, 0x002C($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      v1, 0x0248(s0)             # 00000248
    bnel    v1, $zero, lbl_80AD118C    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    beq     v0, $at, lbl_80AD117C      
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80AD118C      
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80AD117C:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x0800          # a1 = 00000800
    lw      v1, 0x0248(s0)             # 00000248
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80AD118C:
    bne     v1, $at, lbl_80AD11FC      
    nop
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f8, 0x0158(s0)            # 00000158
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    sub.s   $f2, $f0, $f8              
    lui     $at, 0x4198                # $at = 41980000
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_80AD11D0               
    mtc1    $at, $f12                  # $f12 = 19.00
    c.le.s  $f12, $f0                  
    nop
    bc1tl   lbl_80AD11F4               
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f12                  # $f12 = 19.00
lbl_80AD11D0:
    nop
    c.lt.s  $f2, $f12                  
    nop
    bc1f    lbl_80AD11FC               
    nop
    c.le.s  $f12, $f0                  
    nop
    bc1f    lbl_80AD11FC               
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AD11F4:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
lbl_80AD11FC:
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B3A(t7)            # 8011B4C6
    lui     $at, 0x4040                # $at = 40400000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0800             # t8 = 00000000
    beql    t8, $zero, lbl_80AD1238    
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    swc1    $f10, 0x01F0(s0)           # 000001F0
    beq     $zero, $zero, lbl_80AD1248 
    swc1    $f16, 0x0158(s0)           # 00000158
    mtc1    $at, $f18                  # $f18 = 2.00
lbl_80AD1238:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f18, 0x01F0(s0)           # 000001F0
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80AD1248:
    jal     func_80AD0D9C              
    lw      a1, 0x004C($sp)            
    jal     func_80AD090C              
    nop
    bne     v0, $zero, lbl_80AD12F0    
    nop
    lw      v0, 0x0078(s0)             # 00000078
    beq     v0, $zero, lbl_80AD12F0    
    nop
    lh      t9, 0x000A(v0)             # 0000000A
    lui     $at, %hi(var_80AD1A6C)     # $at = 80AD0000
    lwc1    $f10, %lo(var_80AD1A6C)($at) 
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80AD1A70)     # $at = 80AD0000
    lwc1    $f16, %lo(var_80AD1A70)($at) 
    cvt.s.w $f8, $f6                   
    lui     $at, %hi(var_80AD1A74)     # $at = 80AD0000
    mul.s   $f0, $f8, $f10             
    c.lt.s  $f16, $f0                  
    nop
    bc1tl   lbl_80AD12B8               
    lw      v0, 0x024C(s0)             # 0000024C
    lwc1    $f18, %lo(var_80AD1A74)($at) 
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80AD12F0               
    sw      $zero, 0x024C(s0)          # 0000024C
    lw      v0, 0x024C(s0)             # 0000024C
lbl_80AD12B8:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    slti    $at, v0, 0x001F            
    bne     $at, $zero, lbl_80AD12E4   
    addiu   t1, v0, 0x0001             # t1 = 00000001
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
    lui     t0, %hi(func_80AD10AC)     # t0 = 80AD0000
    addiu   t0, t0, %lo(func_80AD10AC) # t0 = 80AD10AC
    beq     $zero, $zero, lbl_80AD12F0 
    sw      t0, 0x0180(s0)             # 00000180
lbl_80AD12E4:
    beq     $zero, $zero, lbl_80AD12F0 
    sw      t1, 0x024C(s0)             # 0000024C
    sw      $zero, 0x024C(s0)          # 0000024C
lbl_80AD12F0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EF6(v0)             # 8011B4C6
    andi    t3, t2, 0x0800             # t3 = 00000000
    beql    t3, $zero, lbl_80AD1384    
    lw      $ra, 0x002C($sp)           
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      t4, 0x135C(v0)             # 8011B92C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    swc1    $f4, 0x0038($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    swc1    $f6, 0x003C($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     a2, 0x4248                 # a2 = 42480000
    beq     t4, $at, lbl_80AD1354      
    swc1    $f8, 0x0040($sp)           
    addiu   t5, $zero, 0x015E          # t5 = 0000015E
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80026308              
    sw      $zero, 0x0018($sp)         
lbl_80AD1354:
    lbu     t7, 0x0197(s0)             # 00000197
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80AD1380    
    lui     a2, 0x4040                 # a2 = 40400000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lh      a3, 0x008A(s0)             # 0000008A
    jal     func_80022EC4              
    swc1    $f10, 0x0010($sp)          
lbl_80AD1380:
    lw      $ra, 0x002C($sp)           
lbl_80AD1384:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD1394:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80AD140C    
    lui     t6, %hi(func_80AD111C)     # t6 = 80AD0000
    addiu   t6, t6, %lo(func_80AD111C) # t6 = 80AD111C
    sw      $zero, 0x024C(s0)          # 0000024C
    sw      t6, 0x0180(s0)             # 00000180
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B3A(t7)            # 8011B4C6
    addiu   a2, s0, 0x0248             # a2 = 00000248
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0800             # t8 = 00000000
    beq     t8, $zero, lbl_80AD13F4    
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD0600              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     $zero, $zero, lbl_80AD1404 
    sw      $zero, 0x01D4(s0)          # 000001D4
lbl_80AD13F4:
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x01D4(s0)             # 000001D4
lbl_80AD1404:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x01D8(s0)             # 000001D8
lbl_80AD140C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD1420:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t7, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    sw      t7, 0x0010($sp)            
    lw      t6, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0238             # a2 = 00000238
    addiu   a3, s0, 0x023E             # a3 = 0000023E
    sw      t6, 0x0014($sp)            
    lw      t7, 0x0040(s0)             # 00000040
    jal     func_8002B024              
    sw      t7, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80AD090C              
    nop
    beql    v0, $zero, lbl_80AD14B8    
    lw      $ra, 0x002C($sp)           
    lw      t8, 0x01D0(s0)             # 000001D0
    lui     t0, %hi(func_80AD1394)     # t0 = 80AD0000
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    bne     t8, $zero, lbl_80AD14B4    
    addiu   t0, t0, %lo(func_80AD1394) # t0 = 80AD1394
    lw      t1, 0x0244(s0)             # 00000244
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t9, 0x01D0(s0)             # 000001D0
    and     t2, t1, $at                
    sw      t0, 0x0180(s0)             # 00000180
    sw      t2, 0x0244(s0)             # 00000244
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80AD0600              
    addiu   a2, s0, 0x0248             # a2 = 00000248
lbl_80AD14B4:
    lw      $ra, 0x002C($sp)           
lbl_80AD14B8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD14C8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD0B74              
    lw      a1, 0x0034($sp)            
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x0024($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0024($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AD153C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s3, 0x0030($sp)            
    sw      s2, 0x002C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x01D4(s2)             # 000001D4
    lui     t0, %hi(var_80AD1A2C)      # t0 = 80AD0000
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80AD1A2C)(t0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, t0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t1, t0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s2)             # 00000140
    lw      a2, 0x015C(s2)             # 0000015C
    lbu     a3, 0x013E(s2)             # 0000013E
    lui     t8, %hi(func_80AD17B4)     # t8 = 80AD0000
    lui     t9, %hi(func_80AD1848)     # t9 = 80AD0000
    addiu   t9, t9, %lo(func_80AD1848) # t9 = 80AD1848
    addiu   t8, t8, %lo(func_80AD17B4) # t8 = 80AD17B4
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s2, 0x0018($sp)            
    jal     func_80089D8C              
    or      a0, s3, $zero              # a0 = 00000000
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B3A(t2)            # 8011B4C6
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    andi    t3, t2, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80AD1798    
    addu    a0, s3, $at                
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    bltz    v0, lbl_80AD1798           
    sw      v0, 0x0068($sp)            
    lw      a2, 0x0000(s3)             # 00000000
    addiu   a0, s2, 0x01F8             # a0 = 000001F8
    lw      s1, 0x02C4(a2)             # 000002C4
    addiu   s1, s1, 0xFF80             # s1 = FFFFFF80
    jal     func_800AA764              
    sw      s1, 0x02C4(a2)             # 000002C4
    jal     func_800AB900              
    lw      a0, 0x0000(s3)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0018             # t1 = DB060018
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t5, 0x0068($sp)            
    lui     t8, 0x0001                 # t8 = 00010000
    lui     t4, 0xDB06                 # t4 = DB060000
    sll     t6, t5,  4                 
    addu    t6, t6, t5                 
    sll     t6, t6,  2                 
    addu    t7, s3, t6                 
    addu    t8, t8, t7                 
    lw      t8, 0x17B4(t8)             # 000117B4
    addiu   t5, $zero, 0x03E2          # t5 = 000003E2
    addiu   t6, $zero, 0x0DBE          # t6 = 00000DBE
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x002C             # t2 = DB06002C
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      s1, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t4, t4, 0x0034             # t4 = DB060034
    addiu   t1, v0, 0xFE40             # t1 = FFFFFE40
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lui     $at, 0x42C2                # $at = 42C20000
    mtc1    $at, $f12                  # $f12 = 97.00
    addiu   t7, $zero, 0xCB76          # t7 = FFFFCB76
    lui     $at, %hi(var_80AD1A78)     # $at = 80AD0000
    sh      t5, 0x005C($sp)            
    sh      t6, 0x005E($sp)            
    sh      t7, 0x0060($sp)            
    lwc1    $f14, %lo(var_80AD1A78)($at) 
    lui     a2, 0xC370                 # a2 = C3700000
    jal     func_800AB510              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFDC
    addiu   t8, s1, 0x0040             # t8 = FFFFFFC0
    sw      t8, 0x0064($sp)            
    jal     func_800AB8D8              
    or      a0, s1, $zero              # a0 = FFFFFF80
    lui     $at, 0x42C2                # $at = 42C20000
    mtc1    $at, $f12                  # $f12 = 97.00
    addiu   t9, $zero, 0xFC1E          # t9 = FFFFFC1E
    addiu   t2, $zero, 0xF242          # t2 = FFFFF242
    addiu   t3, $zero, 0xCB76          # t3 = FFFFCB76
    lui     $at, %hi(var_80AD1A7C)     # $at = 80AD0000
    sh      t9, 0x005C($sp)            
    sh      t2, 0x005E($sp)            
    sh      t3, 0x0060($sp)            
    lwc1    $f14, %lo(var_80AD1A7C)($at) 
    lui     a2, 0x4370                 # a2 = 43700000
    jal     func_800AB510              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFDC
    jal     func_800AB8D8              
    lw      a0, 0x0064($sp)            
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0603                 # t5 = 06030000
    addiu   t5, t5, 0xCA38             # t5 = 0602CA38
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0018             # t7 = DB060018
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lb      t8, 0x001E(s2)             # 0000001E
    lui     t3, 0x0001                 # t3 = 00010000
    sll     t9, t8,  4                 
    addu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addu    t2, s3, t9                 
    addu    t3, t3, t2                 
    lw      t3, 0x17B4(t3)             # 000117B4
    sw      t3, 0x0004(v1)             # 00000004
lbl_80AD1798:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    lw      s2, 0x002C($sp)            
    lw      s3, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80AD17B4:
    sw      a0, 0x0000($sp)            
    lw      a0, 0x0014($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    lw      t6, 0x0244(a0)             # 00000244
    addiu   $at, $zero, 0x0008         # $at = 00000008
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80AD1840    
    or      v0, $zero, $zero           # v0 = 00000000
    beq     a1, $at, lbl_80AD17F4      
    lw      v0, 0x0010($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a1, $at, lbl_80AD1818      
    lw      v0, 0x0010($sp)            
    beq     $zero, $zero, lbl_80AD1840 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD17F4:
    lh      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x0240(a0)             # 00000240
    lh      t1, 0x0002(v0)             # 00000002
    addu    t0, t8, t9                 
    sh      t0, 0x0000(v0)             # 00000000
    lh      t2, 0x023E(a0)             # 0000023E
    subu    t3, t1, t2                 
    beq     $zero, $zero, lbl_80AD183C 
    sh      t3, 0x0002(v0)             # 00000002
lbl_80AD1818:
    lh      t4, 0x0000(v0)             # 00000000
    lh      t5, 0x023A(a0)             # 0000023A
    lh      t7, 0x0004(v0)             # 00000004
    addu    t6, t4, t5                 
    sh      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x0238(a0)             # 00000238
    addu    t9, t7, t8                 
    addiu   t0, t9, 0x0FA0             # t0 = 00000FA0
    sh      t0, 0x0004(v0)             # 00000004
lbl_80AD183C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD1840:
    jr      $ra                        
    nop


func_80AD1848:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80AD18E4      
    lui     a0, %hi(var_80AD1A34)      # a0 = 80AD0000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80AD1A34)  # a0 = 80AD1A34
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f12                  # $f12 = 260.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f14                  # $f14 = 20.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80AD1A80)     # $at = 80AD0000
    lwc1    $f12, %lo(var_80AD1A80)($at) 
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f12                  # $f12 = -260.00
    lui     $at, 0x4268                # $at = 42680000
    mtc1    $at, $f14                  # $f14 = 58.00
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)            
    jal     func_800AA740              
    addiu   a0, a0, 0x01F8             # a0 = 000001F8
lbl_80AD18E4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80AD1900: .word 0x01620400, 0x00000019, 0x013C0000, 0x00000310
.word func_80AD0724
.word func_80AD08E0
.word func_80AD14C8
.word func_80AD153C
var_80AD1920: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012003F, 0x00000000, 0x00000000
var_80AD194C: .word 0x00000000, 0x00000000, 0xFF000000
var_80AD1958: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80AD1978: .word \
0x06000718, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06006940, 0xBF800000, 0x02000000, 0xC0E00000, \
0x06006C50, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06006940, 0x3F800000, 0x02000000, 0xC0E00000, \
0x06000468, 0x3F800000, 0x00000000, 0xC0E00000, \
0x060073A0, 0x3F800000, 0x00000000, 0xC1400000, \
0x06008060, 0x3F800000, 0x00000000, 0xC1400000
var_80AD19E8: .word \
0x00000000, 0x00000001, 0x00000000, 0x00000000, \
0x00000001, 0x00000001, 0x00000000, 0x00000001, \
0x00000001, 0x00000003, 0x00000002, 0x00000001, \
0xFFFFFFFF, 0x00000000, 0x00000002, 0x00000000
var_80AD1A28: .word 0x30F40FA0
var_80AD1A2C: .word 0x06000E30, 0x06000C30
var_80AD1A34: .word 0x43480000, 0x44480000, 0x00000000

.section .rodata

var_80AD1A40: .word lbl_80AD0AC0
.word lbl_80AD0AC0
.word lbl_80AD0AC0
.word lbl_80AD0AC0
.word var_80AD0990
.word var_80AD0A18
.word var_80AD0A70
var_80AD1A5C: .word 0x4622F983
var_80AD1A60: .word 0x41270A3D
var_80AD1A64: .word 0x4622F983
var_80AD1A68: .word 0x41270A3D
var_80AD1A6C: .word 0x38000100
var_80AD1A70: .word 0x3F7C1BDA
var_80AD1A74: .word 0xBF7C1BDA
var_80AD1A78: .word 0xC4966000
var_80AD1A7C: .word 0xC4966000
var_80AD1A80: .word 0x4020D97C, 0x00000000, 0x00000000, 0x00000000

