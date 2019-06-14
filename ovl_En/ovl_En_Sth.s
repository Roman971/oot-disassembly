#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B27B80:
    sw      a1, 0x02A8(a0)             # 000002A8
    jr      $ra                        
    nop


func_80B27B8C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    bne     v0, $zero, lbl_80B27BD4    
    or      v1, v0, $zero              # v1 = 00000000
    lh      t6, -0x5960(t6)            # 8011A6A0
    slti    $at, t6, 0x0064            
    beql    $at, $zero, lbl_80B27C04   
    sll     t9, v1,  1                 
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B27C78 
    lw      $ra, 0x001C($sp)           
lbl_80B27BD4:
    lh      t7, -0x5960(t7)            # FFFFA6A0
    sll     t8, v0,  2                 
    addu    t8, t8, v0                 
    sll     t8, t8,  1                 
    slt     $at, t7, t8                
    beql    $at, $zero, lbl_80B27C04   
    sll     t9, v1,  1                 
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B27C78 
    lw      $ra, 0x001C($sp)           
    sll     t9, v1,  1                 
lbl_80B27C04:
    lui     a1, %hi(var_80B2B9E0)      # a1 = 80B30000
    addu    a1, a1, t9                 
    lh      a1, %lo(var_80B2B9E0)(a1)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
    beq     a1, $at, lbl_80B27C34      
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    jal     func_80081628              # ObjectIndex
    addu    a0, a2, $at                
    beq     $zero, $zero, lbl_80B27C34 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B27C34:
    lui     t0, %hi(func_80B28834)     # t0 = 80B30000
    addiu   t0, t0, %lo(func_80B28834) # t0 = 80B28834
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      v1, 0x0294(s0)             # 00000294
    sw      t0, 0x0290(s0)             # 00000290
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B27E5C)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B27E5C) # a1 = 80B27E5C
    jal     func_80B27B80              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sw      $zero, 0x0134(s0)          # 00000134
    sh      $zero, 0x02A2(s0)          # 000002A2
    sb      t1, 0x001F(s0)             # 0000001F
    lw      $ra, 0x001C($sp)           
lbl_80B27C78:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27C88:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x002C($sp)            
    lui     a3, %hi(var_80B2B9B4)      # a3 = 80B30000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80B2B9B4)  # a3 = 80B2B9B4
    lw      a0, 0x002C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lw      t8, 0x0290(s0)             # 00000290
    lui     t7, %hi(func_80B284F0)     # t7 = 80B30000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, t7, %lo(func_80B284F0) # t7 = 80B284F0
    sb      t6, 0x00AE(s0)             # 000000AE
    sw      t7, 0x0130(s0)             # 00000130
    sw      t8, 0x0134(s0)             # 00000134
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27D0C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B27C88              
    lw      a1, 0x0044($sp)            
    lbu     t6, 0x0294(s0)             # 00000294
    lw      a0, 0x0044($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, a0, t7                 
    addu    t9, t9, t8                 
    lw      t9, 0x17B4(t9)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a2, %hi(var_80B2B9EC)      # a2 = 80B30000
    addu    t0, t9, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x0188             # a1 = 00000188
    addiu   t3, s0, 0x01CC             # t3 = 000001CC
    sll     t2, t1,  2                 
    addu    a2, a2, t2                 
    addiu   t4, s0, 0x022C             # t4 = 0000022C
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    lw      a2, %lo(var_80B2B9EC)(a2)  
    sw      t3, 0x0010($sp)            
    sw      a1, 0x0034($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B2BA04)      # a1 = 80B30000
    lw      a0, 0x0034($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    jal     func_8008D2D4              
    lw      a1, %lo(var_80B2BA04)(a1)  
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_80B2BA34)      # t0 = 80B30000
    lui     t1, 0x8012                 # t1 = 80120000
    sll     t9, t8,  1                 
    addu    t0, t0, t9                 
    lhu     t0, %lo(var_80B2BA34)(t0)  
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B2837C)     # a1 = 80B30000
    sh      t0, 0x028C(s0)             # 0000028C
    lhu     t1, -0x4B42(t1)            # 8011B4BE
    andi    t2, t0, 0xFFFF             # t2 = 00000000
    and     t3, t1, t2                 
    beq     t3, $zero, lbl_80B27E14    
    nop
    lh      t4, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B2BA1C)      # a1 = 80B30000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t5, t4,  2                 
    addu    a1, a1, t5                 
    jal     func_80B27B80              
    lw      a1, %lo(var_80B2BA1C)(a1)  
    beq     $zero, $zero, lbl_80B27E20 
    lw      $ra, 0x002C($sp)           
lbl_80B27E14:
    jal     func_80B27B80              
    addiu   a1, a1, %lo(func_80B2837C) # a1 = FFFF837C
    lw      $ra, 0x002C($sp)           
lbl_80B27E20:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27E30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27E5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x0294(a2)             # 00000294
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_80B27EA0    
    lw      a2, 0x0018($sp)            
    lbu     t6, 0x0294(a2)             # 00000294
    lui     t7, %hi(func_80B27D0C)     # t7 = 80B20000
    addiu   t7, t7, %lo(func_80B27D0C) # t7 = 80B27D0C
    sw      t7, 0x02A8(a2)             # 000002A8
    sb      t6, 0x001E(a2)             # 0000001E
lbl_80B27EA0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27EB0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    sw      t6, 0x0030($sp)            
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      a1, 0x0032($sp)            
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    subu    v0, t6, t8                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B27EFC           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B27EFC 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B27EFC:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80B27F4C   
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    jal     func_80064508              
    sw      t9, 0x0010($sp)            
    lh      t0, 0x00B6(s0)             # 000000B6
    lw      t2, 0x0038(s0)             # 00000038
    or      a1, s0, $zero              # a1 = 00000000
    sh      t0, 0x0032(s0)             # 00000032
    sw      t2, 0x0010($sp)            
    lw      t1, 0x003C(s0)             # 0000003C
    lw      a0, 0x0044($sp)            
    addiu   a2, s0, 0x0296             # a2 = 00000296
    sw      t1, 0x0014($sp)            
    lw      t2, 0x0040(s0)             # 00000040
    addiu   a3, s0, 0x029C             # a3 = 0000029C
    jal     func_8002B024              
    sw      t2, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B27FB8 
    lw      $ra, 0x002C($sp)           
lbl_80B27F4C:
    bgez    v0, lbl_80B27F78           
    addiu   a0, s0, 0x0298             # a0 = 00000298
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)            
    addiu   a0, s0, 0x0298             # a0 = 00000298
    addiu   a1, $zero, 0xE000          # a1 = FFFFE000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    beq     $zero, $zero, lbl_80B27F94 
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B27F78:
    addiu   t4, $zero, 0x0100          # t4 = 00000100
    sw      t4, 0x0010($sp)            
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B27F94:
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t6, 0x00B6(s0)             # 000000B6
    sh      t6, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)           
lbl_80B27FB8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B27FC8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x008A(s0)             # 0000008A
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0296             # a0 = 00000296
    or      a1, $zero, $zero           # a1 = 00000000
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B28008           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B28008 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B28008:
    slti    $at, v1, 0x4301            
    beq     $at, $zero, lbl_80B28064   
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B28068               
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    lw      t9, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    sw      t9, 0x0010($sp)            
    lw      t8, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0296             # a2 = 00000296
    addiu   a3, s0, 0x029C             # a3 = 0000029C
    sw      t8, 0x0014($sp)            
    lw      t9, 0x0040(s0)             # 00000040
    jal     func_8002B024              
    sw      t9, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B280CC 
    lw      $ra, 0x002C($sp)           
lbl_80B28064:
    addiu   t0, $zero, 0x0064          # t0 = 00000064
lbl_80B28068:
    sw      t0, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0010($sp)            
    addiu   a0, s0, 0x0298             # a0 = 00000298
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t2, 0x0010($sp)            
    addiu   a0, s0, 0x029C             # a0 = 0000029C
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sw      t3, 0x0010($sp)            
    addiu   a0, s0, 0x029E             # a0 = 0000029E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      $ra, 0x002C($sp)           
lbl_80B280CC:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B280DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022AD0              
    lw      a1, 0x0024($sp)            
    beql    v0, $zero, lbl_80B2813C    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B28420)     # a1 = 80B30000
    bne     t6, $zero, lbl_80B28130    
    nop
    lui     a1, %hi(func_80B28158)     # a1 = 80B30000
    addiu   a1, a1, %lo(func_80B28158) # a1 = 80B28158
    jal     func_80B27B80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B2813C 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B28130:
    jal     func_80B27B80              
    addiu   a1, a1, %lo(func_80B28420) # a1 = FFFF8420
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B2813C:
    jal     func_80B27EB0              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B28158:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80B28198    
    lui     $at, 0x42C8                # $at = 42C80000
    lui     a1, %hi(func_80B280DC)     # a1 = 80B30000
    addiu   a1, a1, %lo(func_80B280DC) # a1 = 80B280DC
    jal     func_80B27B80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B281C8 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B28198:
    mtc1    $at, $f0                   # $f0 = 0.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    addiu   t6, $zero, 0x0023          # t6 = 00000023
    sh      t6, 0x010E(s0)             # 0000010E
    c.lt.s  $f4, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_80B281C8               
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022A68              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B281C8:
    jal     func_80B27FC8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B281E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t0, %hi(var_80B2BA40)      # t0 = 80B30000
    lui     a3, 0x461C                 # a3 = 461C0000
    sll     t6, v0,  1                 
    addu    t0, t0, t6                 
    beq     a2, v0, lbl_80B28214       
    lhu     t0, %lo(var_80B2BA40)(t0)  
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80B28258      
lbl_80B28214:
    lui     t7, 0x8012                 # t7 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t8, -0x7370(t8)            # 800F8C90
    lw      t7, -0x5990(t7)            # 8011A670
    lui     t1, 0x8010                 # t1 = 80100000
    lbu     t1, -0x7338(t1)            # 800F8CC8
    and     t9, t7, t8                 
    srav    v1, t9, t1                 
    beq     v1, $zero, lbl_80B2824C    
    nop
    beql    v1, a2, lbl_80B28258       
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    beq     $zero, $zero, lbl_80B2825C 
    lui     $at, 0x4248                # $at = 42480000
lbl_80B2824C:
    beq     $zero, $zero, lbl_80B28258 
    addiu   t0, $zero, 0x0045          # t0 = 00000045
    addiu   t0, $zero, 0x0046          # t0 = 00000046
lbl_80B28258:
    lui     $at, 0x4248                # $at = 42480000
lbl_80B2825C:
    mtc1    $at, $f4                   # $f4 = 50.00
    or      a2, t0, $zero              # a2 = 00000046
    ori     a3, a3, 0x4000             # a3 = 461C4000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B28280:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80B282D4    
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B280DC)     # a1 = 80B30000
    sw      $zero, 0x0118(s0)          # 00000118
    jal     func_80B27B80              
    addiu   a1, a1, %lo(func_80B280DC) # a1 = 80B280DC
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EEE(v0)             # 8011B4BE
    lhu     t7, 0x028C(s0)             # 0000028C
    or      t8, t6, t7                 # t8 = 00000000
    beq     $zero, $zero, lbl_80B282E0 
    sh      t8, 0x0EEE(v0)             # 8011B4BE
lbl_80B282D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B281E4              
    lw      a1, 0x0024($sp)            
lbl_80B282E0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B27EB0              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B28300:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B28360      
    lw      a0, 0x0020($sp)            
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B28360    
    lw      a0, 0x0020($sp)            
    jal     func_800D6218              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B28280)     # a1 = 80B30000
    addiu   a1, a1, %lo(func_80B28280) # a1 = 80B28280
    jal     func_80B27B80              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80B281E4              
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0020($sp)            
lbl_80B28360:
    jal     func_80B27EB0              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B2837C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80B283BC    
    lui     $at, 0x42C8                # $at = 42C80000
    lui     a1, %hi(func_80B28300)     # a1 = 80B30000
    addiu   a1, a1, %lo(func_80B28300) # a1 = 80B28300
    jal     func_80B27B80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B28404 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B283BC:
    lh      t6, 0x001C(s0)             # 0000001C
    mtc1    $at, $f0                   # $f0 = 0.00
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    bne     t6, $zero, lbl_80B283D8    
    addiu   t8, $zero, 0x0021          # t8 = 00000021
    beq     $zero, $zero, lbl_80B283DC 
    sh      t7, 0x010E(s0)             # 0000010E
lbl_80B283D8:
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80B283DC:
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B28404               
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022A68              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B28404:
    jal     func_80B27FC8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B28420:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80B28460    
    lui     t6, 0x8012                 # t6 = 80120000
    lui     a1, %hi(func_80B280DC)     # a1 = 80B30000
    addiu   a1, a1, %lo(func_80B280DC) # a1 = 80B280DC
    jal     func_80B27B80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B284B0 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B28460:
    lh      t6, -0x5960(t6)            # FFFFA6A0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x001F          # t8 = 0000001F
    slti    $at, t6, 0x0032            
    beq     $at, $zero, lbl_80B28480   
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B28484 
    sh      t7, 0x010E(s0)             # 0000010E
lbl_80B28480:
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80B28484:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B284B0               
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022A68              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B284B0:
    jal     func_80B27FC8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B284CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x02A8(a0)             # 000002A8
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B284F0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80B2857C    
    lw      t9, 0x02A8(s0)             # 000002A8
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01A0(s0)            # 000001A0
    lw      t9, 0x02A8(s0)             # 000002A8
lbl_80B2857C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lh      v1, 0x02A6(s0)             # 000002A6
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    bne     v1, $zero, lbl_80B285A4    
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B285B0 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B285A4:
    sh      t7, 0x02A6(s0)             # 000002A6
    lh      v1, 0x02A6(s0)             # 000002A6
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B285B0:
    bnel    v0, $zero, lbl_80B285CC    
    sh      v1, 0x02A4(s0)             # 000002A4
    jal     func_80063BF0              
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sh      v0, 0x02A6(s0)             # 000002A6
    lh      v1, 0x02A6(s0)             # 000002A6
    sh      v1, 0x02A4(s0)             # 000002A4
lbl_80B285CC:
    lh      t8, 0x02A4(s0)             # 000002A4
    slti    $at, t8, 0x0003            
    bnel    $at, $zero, lbl_80B285E4   
    lw      $ra, 0x0024($sp)           
    sh      $zero, 0x02A4(s0)          # 000002A4
    lw      $ra, 0x0024($sp)           
lbl_80B285E4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B285F4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a3, 0x0034($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80B28640      
    lw      v0, 0x0038($sp)            
    lw      v1, 0x003C($sp)            
    lh      t6, 0x0000(v0)             # 00000000
    lh      t9, 0x0004(v0)             # 00000004
    lh      t7, 0x0298(v1)             # 00000298
    lui     t2, %hi(var_80B2A600)      # t2 = 80B30000
    addiu   t2, t2, %lo(var_80B2A600)  # t2 = 80B2A600
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v0)             # 00000000
    lh      t0, 0x0296(v1)             # 00000296
    addu    t1, t9, t0                 
    sh      t1, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(a2)             # 00000000
lbl_80B28640:
    lw      v1, 0x003C($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lhu     a0, 0x02A2(v1)             # 000002A2
    andi    t3, a0, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_80B28664    
    andi    t4, a0, 0xFFFD             # t4 = 00000000
    beq     $zero, $zero, lbl_80B28740 
    sh      t4, 0x02A2(v1)             # 000002A2
lbl_80B28664:
    beq     a1, $at, lbl_80B28680      
    sll     v1, a1,  2                 
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a1, $at, lbl_80B28680      
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    a1, $at, lbl_80B28740      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B28680:
    lw      t5, 0x0028($sp)            
    subu    v1, v1, a1                 
    sll     v1, v1,  3                 
    lw      t6, 0x009C(t5)             # 0000009C
    addu    v1, v1, a1                 
    sll     v1, v1,  1                 
    addiu   t7, v1, 0x0814             # t7 = 00000814
    multu   t6, t7                     
    sw      v1, 0x0018($sp)            
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lw      v0, 0x0038($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t8, 0x0002(v0)             # 00000002
    lw      v1, 0x0018($sp)            
    mul.s   $f10, $f0, $f8             
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   t3, v1, 0x0940             # t3 = 00000940
    cvt.s.w $f6, $f4                   
    add.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x0002(v0)             # 00000002
    lw      t1, 0x0028($sp)            
    lw      t2, 0x009C(t1)             # 0000009C
    multu   t2, t3                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lw      v0, 0x0038($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lh      t4, 0x0004(v0)             # 00000004
    mul.s   $f10, $f0, $f6             
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    nop
    sh      t6, 0x0004(v0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B28740:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B28750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80B287B8      
    lui     a0, %hi(var_80B2BA4C)      # a0 = 80B30000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80B2BA4C)  # a0 = 80B2BA4C
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      t6, 0x0028($sp)            
    lw      t8, 0x0018($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    lh      t7, 0x001C(t6)             # 0000001C
    beql    t7, $zero, lbl_80B287BC    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x0000(t8)             # 00000000
    lw      a0, 0x02C0(v0)             # 000002C0
    lui     t1, %hi(var_80B2A970)      # t1 = 80B30000
    addiu   t1, t1, %lo(var_80B2A970)  # t1 = 80B2A970
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v0)             # 000002C0
    sw      t1, 0x0004(a0)             # 00000004
    sw      t0, 0x0000(a0)             # 00000000
lbl_80B287B8:
    lw      $ra, 0x0014($sp)           
lbl_80B287BC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B287C8:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24                 
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    andi    t9, a2, 0x00FF             # t9 = 00000000
    lbu     t6, 0x0013($sp)            
    sll     t0, t9, 16                 
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8                 
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = FB000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80B28834:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lbu     t6, 0x0294(s0)             # 00000294
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, s1, t7                 
    addu    t9, t9, t8                 
    lw      t9, 0x17B4(t9)             # 000117B4
    lw      t0, 0x0000(s1)             # 00000000
    addu    t2, t9, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E56C              
    sw      t0, 0x0044($sp)            
    lw      t0, 0x0044($sp)            
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t0)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lh      t5, 0x001C(s0)             # 0000001C
    lui     t7, %hi(var_80B2BA58)      # t7 = 80B30000
    addiu   t7, t7, %lo(var_80B2BA58)  # t7 = 80B2BA58
    sll     t6, t5,  2                 
    subu    t6, t6, t5                 
    addu    v1, t6, t7                 
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0010($sp)            
    lbu     a1, 0x0000(v1)             # 00000000
    lbu     a2, 0x0001(v1)             # 00000001
    lbu     a3, 0x0002(v1)             # 00000002
    jal     func_80B287C8              
    sw      v0, 0x003C($sp)            
    lw      t1, 0x003C($sp)            
    lw      t0, 0x0044($sp)            
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lh      t9, 0x001C(s0)             # 0000001C
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    bne     t9, $zero, lbl_80B2894C    
    addiu   a2, $zero, 0x006E          # a2 = 0000006E
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0010($sp)            
    addiu   a1, $zero, 0x00BE          # a1 = 000000BE
    addiu   a2, $zero, 0x006E          # a2 = 0000006E
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80B287C8              
    sw      v0, 0x0038($sp)            
    lw      v1, 0x0038($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80B28980 
    lw      a1, 0x018C(s0)             # 0000018C
lbl_80B2894C:
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   a3, $zero, 0x0082          # a3 = 00000082
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sw      t7, 0x0010($sp)            
    jal     func_80B287C8              
    sw      v0, 0x0034($sp)            
    lw      v1, 0x0034($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    lw      a1, 0x018C(s0)             # 0000018C
lbl_80B28980:
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    lui     t8, %hi(func_80B285F4)     # t8 = 80B30000
    lui     t9, %hi(func_80B28750)     # t9 = 80B30000
    addiu   t9, t9, %lo(func_80B28750) # t9 = 80B28750
    addiu   t8, t8, %lo(func_80B285F4) # t8 = 80B285F4
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000

.section .data

var_80B289C0: .word 0x01890400, 0x00000019, 0x00010000, 0x000002AC
.word func_80B27B8C
.word func_80B27E30
.word func_80B284CC
.word 0x00000000
var_80B289E0: .word \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767DEE5, 0xD6A3C5DF, 0xC5DFD6A3, 0xDEE5E767, \
0xE767CE61, 0xBDDDACD7, 0xACD7BDDD, 0xD6A3E767, \
0xE767C5DF, 0xACD7ACD7, 0xACD7ACD7, 0xC5DFE767, \
0xE767C5DF, 0xACD7ACD7, 0xACD7ACD7, 0xC5DFE767, \
0xE767CE61, 0xBDDDACD7, 0xACD7BDDD, 0xD6A3E767, \
0xE767DEE5, 0xD6A3C5DF, 0xC5DFD6A3, 0xDEE5E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767
var_80B28A60: .word \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xCE61E767, 0xCE61C661, 0xC5DFE767, 0xCE61E767, \
0x48019415, 0x69C98C15, 0x71898BD3, 0x59C96ACF, \
0x380150C5, 0x504140C5, 0x68015905, 0x50413001, \
0x48015001, 0x58416185, 0x70015843, 0x70814801, \
0x88017001, 0x78418205, 0x98017001, 0x99418041, \
0xA0018801, 0x9881A283, 0xA8019001, 0xA9C19881, \
0xC801B001, 0xB0C1CB43, 0xB8018801, 0xBA83A941, \
0xD981D901, 0xC981CB43, 0xB8C1A8C1, 0xCB43C2C3, \
0xDB41ED59, 0xEE1BDB01, 0xC9C1CAC1, 0xFFFFDD59, \
0xB101E671, 0xDDDDC1C1, 0xB001A101, 0xEE2FAA87, \
0x80017881, 0x71418801, 0x58016801, 0x98416001, \
0x58013801, 0x20014801, 0x20014801, 0x70015001, \
0x30011801, 0x18014001, 0x20012001, 0x60013801, \
0x00010001, 0x00011001, 0x08010001, 0x28012001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001
var_80B28B60: .word \
0xEFA7EFA7, 0xEFA7EFA7, 0xEFA7EFA7, 0xEFA7EFA7, \
0xEFA77B4F, 0x7289834D, 0xACD3D5D9, 0xE6A1EFA7, \
0xEFA740C1, 0x830BBD15, 0xFF65EFA9, 0xEFA7EFA7, \
0xEFA74903, 0x51856209, 0xC599F767, 0xEFA7EFA7, \
0xEFA759C7, 0x51859C11, 0xACD3D5D9, 0xF723EF67, \
0xEFA77B0D, 0x6207DE9F, 0xE6E1CDD9, 0xDE9BF725, \
0xEFA7C599, 0x830BCD9B, 0xF7A7E767, 0xE723EF67, \
0xEFA7EFA7, 0xEFA7EFA7, 0xEFA7EFA7, 0xEFA7EFA7
var_80B28BE0: .word \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xC59DB4D9, 0x7ACB6183, \
0x7247830D, 0x9391A455, 0xBD1BD661, 0xD6A3E727, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xB4D7A413, 0x59836183, \
0x61836183, 0x61836183, 0x618369C5, 0x7247938F, \
0xA495AC97, 0xBD1BDEA3, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767CDDF, 0xB4D9B4D7, 0x7ACB69C5, \
0x61836183, 0x61836183, 0x61836183, 0x61836183, \
0x61836183, 0x69C57ACB, 0x9391BD1B, 0xE6E5E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3C55B, 0xBD1BB4D7, 0x9BD19BD1, \
0xA3CF9B8F, 0x8B4D82C9, 0x724769C5, 0x69C56183, \
0x61836183, 0x61836183, 0x618369C3, 0x9BD1E6E5, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3C55B, 0xBD1BB4D7, 0xB4D7B4D7, \
0xB4D7B4D7, 0xB4D7B4D7, 0xBD1BBD1B, 0xB4D79391, \
0x7A897207, 0x69C56183, 0x61836183, 0x61838B4D, \
0xD6A3E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3C59D, 0xBD1BB4D9, 0xB4D9BD1B, \
0xC55BC59D, 0xC55BC55B, 0xCD9DD621, 0xDEA1DEA3, \
0xD661CDDF, 0xC59DB4D9, 0xA4558B4F, 0x724769C5, \
0x7ACBDEA3, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3C59D, 0xBD1BB4D9, 0xBD1BC59D, \
0xCDDFD621, 0xDEA1DEA3, 0xE6E5E6E5, 0xE727E767, \
0xE767E767, 0xE767E767, 0xE767E727, 0xD621AC11, \
0x72478B4D, 0xE6E5E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE6E5CD9D, 0xC55BBD1B, 0xCD9DD621, \
0xDEA3E6E5, 0xE6E5E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E6E5, \
0xCD9D9BD1, 0xA495E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE727D621, 0xCD9DCD9D, 0xD661DEA3, \
0xE6E5E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E6E5, 0xCD9DCD9D, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767DEA1, 0xDE61DE61, 0xDEA3E6E5, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767DE61, 0xE6E5E767, 0xE767E767, \
0xE767E767, 0xE767E727, 0xDEA3DEA3, 0xE6E5E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE6E5E6E5, 0xE727E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E725, 0xD6A3C5E1, 0xB59FBD9D, \
0xCE61E6E5, 0xE6E5E727, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767CE21, 0x7351520B, 0x49CB3989, 0x31493949, \
0x418949CB, 0x5A4B7B51, 0xBD5BE6E5, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E6E5, 0xE767E767, 0xD6A5B59F, \
0x73533147, 0x20C51885, 0x18851885, 0x18851885, \
0x18851885, 0x188520C5, 0x31496B51, 0xC5DFE727, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE727E727, 0xE767B59F, 0x5ACF3149, \
0x20C51885, 0x188520C5, 0x3149520D, 0x5A4D520B, \
0x49CB3149, 0x20C720C5, 0x18851885, 0x39499C97, \
0xE6E5E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE6E5E6E5, 0xCE21524F, 0x20C520C5, \
0x20C52907, 0x49CB6AD1, 0x9C15B4D9, 0xBD1BB51B, \
0xB4D99C57, 0x7B534A0D, 0x20C720C5, 0x188520C5, \
0x7353D661, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3D621, 0x94573149, 0x20C52907, \
0x5A4D8BD5, 0xACD9BD1B, 0xBD1BBD1B, 0xC55DC55B, \
0xBD1BBD1B, 0xBD1BACD9, 0x8353520D, 0x290720C5, \
0x20C55A8F, 0xC61FE767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xDEA3C55B, 0x8C174A0D, 0x6AD1A499, \
0xC59DD621, 0xDEA3DEA3, 0xD663D6A5, 0xDEE5DEA5, \
0xE6E5E6E5, 0xD663D661, 0xD621BD5D, 0x8BD55A8F, \
0x290720C7, 0x5A4DA51D, 0xDF25E767, 0xE767E767, \
0xE767E767, 0xE725CE1F, 0xCE21D621, 0xE6A3E6E5, \
0xEF27E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767EF27, 0xE6E5D663, \
0xAD1B5A8F, 0x314941CB, 0xAD5DE767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xEF27DEA3, 0x9C996B11, 0xB55DEF27, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xEF27E725, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767
var_80B293E0: .word \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xEF21D65D, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xD65DEF21, 0xE767E767, \
0xE767EF21, 0xDE1BCD99, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xCD99DE1B, 0xEF21E767, \
0xE767E65D, 0xA411C517, 0xEF21E767, 0xEF61EF21, \
0xDEDFD65D, 0xD65DDE5D, 0xEF21E767, 0xE767E767, \
0xE767E767, 0xE767EF21, 0xDE5DD65D, 0xD65DDEDF, \
0xEF21EF61, 0xE767EF21, 0xC517A411, 0xE65DE767, \
0xE767D599, 0x938FACD5, 0xB559C61B, 0xB559A4D7, \
0x94958C13, 0x8BD383D1, 0x83D19455, 0xACD7B519, \
0xB519ACD7, 0x945583D1, 0x83D18BD3, 0x8C139495, \
0xA4D7B559, 0xC61BB559, 0xACD5938F, 0xD599E767, \
0xE767DDDB, 0x61C561C5, 0x410528C5, 0x31053945, \
0x418751C7, 0x41873945, 0x31053105, 0x31053105, \
0x31053105, 0x31053105, 0x39454187, 0x51C74187, \
0x39453105, 0x28C54105, 0x61C561C5, 0xDDDBE767, \
0xE767EE5F, 0x62496207, 0x418720C3, 0x41897359, \
0xCE71DEF7, 0xAD274189, 0x839B9C63, 0x735949CB, \
0x62937357, 0x9C63839B, 0x4189AD27, 0xDEF7CE71, \
0x73594189, 0x20C34187, 0x62076249, 0xEE5FE767, \
0xE767E767, 0x83916249, 0x6A8B83D1, 0x524B7399, \
0x9461E739, 0xE739524F, 0xE739FFFF, 0xFFFF7317, \
0xAD29FFFF, 0xFFFFE739, 0x524FE739, 0xE7399461, \
0x7399524B, 0x83D16A8B, 0x62498391, 0xE767E767, \
0xE767E767, 0xACD77ACD, 0xCD99D65D, 0x8C116B0D, \
0x7BDD9CE5, 0xCE7162D3, 0xDEF7FFFF, 0xFFFF9461, \
0xD673FFFF, 0xFFFFDEF7, 0x62D3CE71, 0x9CE57BDD, \
0x6B0D8C11, 0xD65DCD99, 0x7ACDACD7, 0xE767E767, \
0xE767E767, 0xE7219413, 0xDE9FEF21, 0xE7679C95, \
0x734F5251, 0x63156B15, 0xB5ABCE71, 0xEF7B83DD, \
0xBDEDEF7B, 0xCE71B5AB, 0x6B156315, 0x5251734F, \
0x9C95E767, 0xEF21DE9F, 0x9413E721, 0xE767E767, \
0xE767E767, 0xE767B517, 0xDEDFE767, 0xE767EF63, \
0xAD19734F, 0x520B49CD, 0x6B577BDD, 0x94A36293, \
0x946194A3, 0x7BDD6B57, 0x49CD520B, 0x734FAD19, \
0xEF63E767, 0xE767DEDF, 0xB517E767, 0xE767E767, \
0xE767E767, 0xE767CE1D, 0xDE9FE767, 0xE767E767, \
0xE767E6A1, 0xACD7734F, 0x4A093145, 0x290328C5, \
0x28C52903, 0x31454A09, 0x734FACD7, 0xE6A1E767, \
0xE767E767, 0xE767DE9F, 0xCE1DE767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xCE5DE767, 0xE767E767, \
0xE767E767, 0xE6A1DE5F, 0xCD9DA495, 0x94179C59, \
0x9C599417, 0xA495CD9D, 0xDE5FE6A1, 0xE767E767, \
0xE767E767, 0xE767CE5D, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767D65D, 0xD597D555, 0xE61DEEA3, \
0xEEA3E61D, 0xD555D597, 0xD65DE767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE6A1CC91, 0xBBCBBBCB, \
0xBBCBBBCB, 0xCC91E6A1, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767
var_80B297E0: .word \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767, \
0xE767C621, 0x83D5CE61, 0xF7E9E767, 0xE767E767, \
0xE7674147, 0x49876249, 0xD61FF7E9, 0xE767E767, \
0xE7674105, 0x410530C5, 0x730DEFA7, 0xE767E767, \
0xE76751C9, 0x39056ACD, 0x730DBD5B, 0xE767E767, \
0xE76793D7, 0x4105B599, 0xCE1B9C51, 0xE767E767, \
0xE767E767, 0x61C7B517, 0xF7E9D6DF, 0xE767E767, \
0xE767E767, 0xE767E767, 0xE767E767, 0xE767E767
var_80B29860: .word \
0x48413801, 0x38014841, 0x48413001, 0x30013001, \
0x48414841, 0x48414841, 0x48414841, 0x48414841, \
0x68C16081, 0x48414841, 0x48414841, 0x68C16081, \
0x91418141, 0x60816081, 0x68C16081, 0x70C170C1, \
0x99819141, 0x68C18141, 0x998170C1, 0x814170C1, \
0xA9C19981, 0x81419981, 0xA9C18141, 0x81419141, \
0xBA41B281, 0xA9C1B281, 0xB2819981, 0x99C1A241, \
0xBB45C307, 0xBB49BAC3, 0xB2C1AAC5, 0xBC11AC11, \
0xC40FCD1D, 0xCDA1C40F, 0xBB45BC11, 0xD6B5C563, \
0xAB4BD6B5, 0xCDE5C40F, 0xB281AB4B, 0xD6B5B459, \
0x99C1AB4B, 0x9BD1A241, 0x81418A01, 0xAAC58A01, \
0x81418141, 0x68C18141, 0x68C170C1, 0x914170C1, \
0x70C168C1, 0x608170C1, 0x608170C1, 0x814170C1, \
0x60816081, 0x608170C1, 0x60816081, 0x70C168C1, \
0x48414841, 0x38014841, 0x48414841, 0x60816081, \
0x38013801, 0x30013801, 0x38013801, 0x48414841
var_80B29960: .word \
0x014CFF96, 0x022A0000, 0x021A0087, 0xEA0375FF, \
0x017C0048, 0x01D40000, 0x01800080, 0xE11671FF, \
0xFFB6FF17, 0x00000000, 0x03FF00F3, 0x8AEC00FF, \
0x017C0048, 0xFE2C0000, 0x067F0080, 0xE1168FFF, \
0x014CFF96, 0xFDD60000, 0x05E50087, 0xEA038BFF, \
0x01A8FF72, 0xFD170000, 0x02390272, 0xA6EFB4FF, \
0x0177FFBA, 0xFECD0000, 0x0216028A, 0xD1930CFF, \
0xFFFB0062, 0xFEE10000, 0x01C90340, 0xA6EFB4FF, \
0x01250309, 0x00000000, 0x008302B7, 0x187500FF, \
0x019D028A, 0x00000000, 0x00BF027D, 0x1B7400FF, \
0x009002A1, 0xFF6A0000, 0x00B602FD, 0xF76ACAFF, \
0xFFFB0062, 0x011F0000, 0x01C90340, 0xA6EF4CFF, \
0x0177FFBA, 0x01330000, 0x0216028A, 0xD193F4FF, \
0x01A8FF72, 0x02E90000, 0x02390272, 0xA6EF4CFF, \
0x03430224, 0x012F0000, 0x00F3018A, 0x1F455CFF, \
0x04AC002D, 0x00000000, 0x01A0010E, 0x761200FF, \
0x03AD026B, 0x00000000, 0x00CA0181, 0x426300FF, \
0xFEF20246, 0x00000000, 0x010103C2, 0xAF5800FF, \
0xFF3200D0, 0xFED70000, 0x019603A1, 0xA405B4FF, \
0xFF3200D0, 0x01290000, 0x019603A1, 0xA4054CFF, \
0xFF3200D0, 0xFED70000, 0xFFE201E7, 0xA405B4FF, \
0xFFB6FF17, 0x00000000, 0x008001C2, 0x8AEC00FF, \
0xFF3200D0, 0x01290000, 0x011E01E7, 0xA4054CFF, \
0x03430224, 0xFED10000, 0x00F3018A, 0x1F45A4FF, \
0x03C5FE5F, 0xFE620000, 0x02B8016E, 0x40C2B1FF, \
0x03C5FE5F, 0x019E0000, 0x02B8016E, 0x40C24FFF, \
0x03C5FE5F, 0xFE620000, 0x02B8016E, 0x48C9B2FF, \
0x04AC002D, 0x00000000, 0x01A0010E, 0x770400FF, \
0x03C5FE5F, 0x019E0000, 0x02B8016E, 0x4ACA4CFF, \
0x009002A1, 0x00960000, 0x00B602FD, 0xF76A36FF
var_80B29B40: .word \
0xFFB6FF17, 0x00000000, 0x0014FE90, 0x8AEC00FF, \
0x017C0048, 0x01D40000, 0xFF9300E8, 0xE11671FF, \
0x0056008C, 0x01C70000, 0x009C00D1, 0xDCEF71FF, \
0xFF3200D0, 0x01290000, 0x01860053, 0xA4054CFF, \
0x009B0255, 0x00F80000, 0xFE36FFC8, 0xF04163FF, \
0x0056008C, 0x01C70000, 0xFF9D00EC, 0xDCEF71FF, \
0x017C0048, 0x01D40000, 0x007800CF, 0xE11671FF, \
0xFF3200D0, 0x01290000, 0xFEC10108, 0xA4054CFF, \
0x017C0048, 0x01D40000, 0x007800CF, 0xE11671FF, \
0x01850140, 0x01A10000, 0xFFA10035, 0xFA346BFF, \
0x009B0255, 0x00F80000, 0xFE36FFC8, 0xF04163FF, \
0x03430224, 0x012F0000, 0x036AFFB5, 0x1F455CFF, \
0x01850140, 0x01A10000, 0x00AE0016, 0xFA346BFF, \
0x017C0048, 0x01D40000, 0x0067015A, 0xE11671FF, \
0x014CFF96, 0x022A0000, 0x026E00F7, 0xEA0375FF, \
0x03C5FE5F, 0x019E0000, 0x0445002B, 0x40C24FFF, \
0x03430224, 0x012F0000, 0x00DAFFE3, 0x1F455CFF, \
0x017C0048, 0x01D40000, 0x01D700CD, 0xE11671FF, \
0x014CFF96, 0xFDD60000, 0x099100F7, 0xEA038BFF, \
0xFECFFE9F, 0xFDFF0000, 0x0980020B, 0xC39DE5FF, \
0xFFB6FF17, 0x00000000, 0x0C0001A3, 0x8AEC00FF, \
0x03430224, 0xFED10000, 0x0B25FFE3, 0x1F45A4FF, \
0x03C5FE5F, 0xFE620000, 0x07BA002B, 0x40C2B1FF, \
0x017C0048, 0xFE2C0000, 0x0A2800CD, 0xE1168FFF, \
0xFFB6FF17, 0x00000000, 0x000001A3, 0x8AEC00FF, \
0xFECFFE9F, 0x02010000, 0x027F020B, 0xC39D1BFF, \
0xFF9EFE86, 0xFE960000, 0x094101BF, 0xD3A1C9FF, \
0xFF9EFE86, 0x016A0000, 0x02BE01BF, 0xD3A137FF, \
0xFF42FDC9, 0x00000000, 0x060001FA, 0xAEA900FF, \
0x017C0048, 0xFE2C0000, 0x0067015A, 0xE1168FFF, \
0x01850140, 0xFE5F0000, 0x00AE0016, 0xFA3495FF, \
0x03430224, 0xFED10000, 0x036AFFB5, 0x1F45A4FF
var_80B29D40: .word \
0x009B0255, 0xFF080000, 0xFE36FFC8, 0xF0419DFF, \
0x01850140, 0xFE5F0000, 0xFFA10035, 0xFA3495FF, \
0x017C0048, 0xFE2C0000, 0x007800CF, 0xE1168FFF, \
0x017C0048, 0xFE2C0000, 0x007800CF, 0xE1168FFF, \
0x0056008C, 0xFE390000, 0xFF9D00EC, 0xDCEF8FFF, \
0x009B0255, 0xFF080000, 0xFE36FFC8, 0xF0419DFF, \
0xFF3200D0, 0xFED70000, 0xFEC10108, 0xA405B4FF, \
0x0056008C, 0xFE390000, 0x009C00D1, 0xDCEF8FFF, \
0xFFB6FF17, 0x00000000, 0x0014FE90, 0x8AEC00FF, \
0xFF3200D0, 0xFED70000, 0x01860053, 0xA405B4FF, \
0x017C0048, 0xFE2C0000, 0xFF9300E8, 0xE1168FFF, \
0x014CFE12, 0x01480000, 0x04080128, 0xF5A850FF, \
0x03C5FE5F, 0x019E0000, 0x0445002B, 0x40C24FFF, \
0x014CFF96, 0x022A0000, 0x026E00F7, 0xEA0375FF, \
0xFECFFE9F, 0x02010000, 0x027F020B, 0xC39D1BFF, \
0xFF9EFE86, 0x016A0000, 0x02BE01BF, 0xD3A137FF, \
0x03C5FE5F, 0xFE620000, 0x07BA002B, 0x40C2B1FF, \
0x01E2FD45, 0x00000000, 0x06000109, 0x068900FF, \
0xFF42FDC9, 0x00000000, 0x060001FA, 0xAEA900FF, \
0x014CFE12, 0xFEB80000, 0x07F70128, 0xF5A8B0FF, \
0xFF9EFE86, 0xFE960000, 0x094101BF, 0xD3A1C9FF, \
0x014CFF96, 0xFDD60000, 0x099100F7, 0xEA038BFF, \
0xFECFFE9F, 0xFDFF0000, 0x0980020B, 0xC39DE5FF, \
0xFFFB0062, 0x011F0000, 0x000A0157, 0xA6EF4CFF, \
0x01A8FF72, 0x02E90000, 0x00FC0014, 0xA6EF4CFF, \
0x019C0084, 0x01630000, 0xFFACFFEB, 0xED6044FF, \
0x019C0084, 0xFE9D0000, 0xFFACFFEB, 0xED60BCFF, \
0x01A8FF72, 0xFD170000, 0x00FC0014, 0xA6EFB4FF, \
0xFFFB0062, 0xFEE10000, 0x000A0157, 0xA6EFB4FF
var_80B29F10: .word \
0x03430224, 0x012F0000, 0x0387FB93, 0x1F455CFF, \
0x019D028A, 0x00000000, 0xFF370270, 0x1B7400FF, \
0x018E0238, 0x00D20000, 0x01E702A2, 0x0C6046FF, \
0x009002A1, 0x00960000, 0x00E30604, 0xF76A36FF, \
0x009B0255, 0x00F80000, 0x024E05E3, 0xF04163FF, \
0x01850140, 0x01A10000, 0x04CB02D8, 0xFA346BFF, \
0x018E0238, 0x00D20000, 0x01E702A2, 0x0C6046FF, \
0x009B0255, 0x00F80000, 0x024E05E3, 0xF04163FF, \
0x03430224, 0x012F0000, 0x0387FB93, 0x1F455CFF, \
0x009002A1, 0xFF6A0000, 0x00E30604, 0xF76ACAFF, \
0x018E0238, 0xFF2E0000, 0x01E702A2, 0x0C60BAFF, \
0x009B0255, 0xFF080000, 0x024E05E3, 0xF0419DFF, \
0x009B0255, 0xFF080000, 0x024E05E3, 0xF0419DFF, \
0x018E0238, 0xFF2E0000, 0x01E702A2, 0x0C60BAFF, \
0x01850140, 0xFE5F0000, 0x04CB02D8, 0xFA3495FF, \
0x03430224, 0xFED10000, 0x0387FB93, 0x1F45A4FF, \
0x03430224, 0xFED10000, 0x0387FB93, 0x1F45A4FF, \
0x03AD026B, 0x00000000, 0xFF22FB55, 0x426300FF, \
0xFEF20246, 0x00000000, 0x020003AA, 0xAF5800FF, \
0xFFC7022F, 0x00BE0000, 0x039501F8, 0xD14951FF, \
0x009002A1, 0x00960000, 0x0340001E, 0xF76A36FF, \
0x009B0255, 0x00F80000, 0x0413002B, 0xF04163FF, \
0x009002A1, 0xFF6A0000, 0x00BF001E, 0xF76ACAFF, \
0xFFC7022F, 0xFF420000, 0x006A01F8, 0xD149AFFF, \
0x009B0255, 0xFF080000, 0xFFED002B, 0xF0419DFF, \
0xFF3200D0, 0xFED70000, 0xFF8703CE, 0xA405B4FF, \
0xFF3200D0, 0x01290000, 0x047903CE, 0xA4054CFF, \
0x009002A1, 0xFF6A0000, 0xFEC000DE, 0xF76ACAFF, \
0x009002A1, 0x00960000, 0x014000DE, 0xF76A36FF, \
0x01250309, 0x00000000, 0x0000FF93, 0x187500FF
var_80B2A0F0: .word \
0x03BC0253, 0x01750000, 0xFFCB00BF, 0x3D5933FF, \
0x0392003A, 0x01DC0000, 0x018A00CA, 0x3C0767FF, \
0x042F01B3, 0x00DC0000, 0x0050FFC4, 0x663323FF, \
0x03BC0253, 0x01750000, 0xFF2A0050, 0x3D5933FF, \
0x01FB0273, 0x01C00000, 0x00A901DF, 0x0E7125FF, \
0x02E5018B, 0x01E90000, 0x00A0010A, 0x062B6FFF, \
0x03BC0253, 0x01750000, 0x01180090, 0x3D5933FF, \
0x03430224, 0x012F0000, 0xFFEE0093, 0x117415FF, \
0x01FB0273, 0x01C00000, 0x0082024E, 0x0E7125FF, \
0x042F01B3, 0x00DC0000, 0xFFDDFF55, 0x663323FF, \
0x02E5018B, 0x01E90000, 0x00A0010A, 0x062B6FFF, \
0x0392003A, 0x01DC0000, 0x00C90014, 0x3C0767FF, \
0x03AD026B, 0x00000000, 0x00130071, 0x4561FBFF, \
0x023202ED, 0x006D0000, 0x00D301EB, 0xF57709FF, \
0x03B7030E, 0x00A20000, 0x018000B8, 0x405F20FF, \
0x042F01B3, 0x00DC0000, 0x007AFFA9, 0x663323FF, \
0x03430224, 0x012F0000, 0x01F800DA, 0x117415FF, \
0x042F01B3, 0x00DC0000, 0x019CFFF8, 0x663323FF, \
0x03B7030E, 0x00A20000, 0xFFD40081, 0x405F20FF, \
0x023202ED, 0x006D0000, 0x008901ED, 0xF57709FF, \
0x035F02EA, 0xFF3A0000, 0x00C8010E, 0x375FD1FF, \
0x046701B5, 0xFFA20000, 0x01BB0059, 0x6839F3FF, \
0x03E401B3, 0xFEA70000, 0xFF39FF97, 0x542DB9FF, \
0x03E401B3, 0xFEA70000, 0xFE46FF9B, 0x542DB9FF, \
0x03430224, 0xFED10000, 0xFF3A00A6, 0x2B6DE8FF, \
0x035F02EA, 0xFF3A0000, 0x00E300DA, 0x375FD1FF, \
0x023D02EA, 0xFEDB0000, 0x00CA0218, 0x0874E6FF, \
0x03AD026B, 0x00000000, 0x00D600D6, 0x4561FBFF, \
0x035F02EA, 0xFF3A0000, 0xFF510136, 0x375FD1FF, \
0x023D02EA, 0xFEDB0000, 0x002A01D6, 0x0874E6FF, \
0x03AD026B, 0x00000000, 0xFF39FF97, 0x4561FBFF
var_80B2A2E0: .word \
0x03E401B3, 0xFEA70000, 0x000FFF91, 0x542DB9FF, \
0x02E5018B, 0xFE170000, 0x01630070, 0x1A2090FF, \
0x03AC0253, 0xFE780000, 0xFF84007B, 0x445CDFFF, \
0x03E401B3, 0xFEA70000, 0x00C9000B, 0x542DB9FF, \
0x03AC0253, 0xFE780000, 0x000600B7, 0x445CDFFF, \
0x03430224, 0xFED10000, 0x00EC00A0, 0x2B6DE8FF, \
0x01EA0273, 0xFE3D0000, 0x00CA01E9, 0x0D6FD5FF, \
0x01EA0273, 0xFE3D0000, 0x009F024A, 0x0D6FD5FF, \
0x042AFD7F, 0x00000000, 0x077F00C6, 0x57AE02FF, \
0x03C5FE5F, 0xFE620000, 0x090D00DC, 0x42D3A8FF, \
0x0490FFE0, 0xFEBC0000, 0x09D80054, 0x6003B9FF, \
0x04DB0033, 0x00440000, 0x067B0028, 0x76060EFF, \
0x04DB0033, 0x00440000, 0x157B0028, 0x76060EFF, \
0x046701B5, 0xFFA20000, 0x0E220033, 0x6839F3FF, \
0x042F01B3, 0x00DC0000, 0x10AD004D, 0x663323FF, \
0x042F01B3, 0x00DC0000, 0x01AD004D, 0x663323FF, \
0x0486FFE0, 0x010C0000, 0x055B0058, 0x64FC41FF, \
0x03C5FE5F, 0x019E0000, 0x05F200DC, 0x48D455FF, \
0x037B003A, 0xFE260000, 0x0AEE00CA, 0x2E0492FF, \
0x02E5018B, 0xFE170000, 0x0C8E00EA, 0x1A2090FF, \
0x03AD026B, 0x00000000, 0x0F000075, 0x4561FBFF, \
0x03E401B3, 0xFEA70000, 0x0CDE0070, 0x542DB9FF, \
0x01850140, 0x01A10000, 0x023C0195, 0xDB3664FF, \
0x024A0009, 0x02330000, 0x03EC015C, 0xF81775FF, \
0x02E5018B, 0x01E90000, 0x027100EA, 0x062B6FFF, \
0x0392003A, 0x01DC0000, 0x041700BF, 0x3C0767FF, \
0x0240FE3B, 0x02440000, 0x056B0194, 0xFBC869FF, \
0x024A0009, 0xFDCD0000, 0x0B13015C, 0xF9168BFF, \
0x0240FE3B, 0xFDBC0000, 0x09940194, 0xFBC996FF, \
0x01850140, 0xFE5F0000, 0x0CC30195, 0xDB369CFF, \
0x03430224, 0x012F0000, 0x017A00AE, 0xDF603EFF, \
0x03430224, 0xFED10000, 0x0D8500AE, 0xDF60C2FF
var_80B2A4E0: .word \
0x024A0009, 0xFDCD0000, 0x0B13015C, 0xF9168BFF, \
0x017C0048, 0xFE2C0000, 0x0B9801B4, 0xDC2896FF, \
0x01850140, 0xFE5F0000, 0x0CC30195, 0xDB369CFF, \
0x01850140, 0x01A10000, 0x023C0195, 0xDB3664FF, \
0x017C0048, 0x01D40000, 0x036701B4, 0xDC286AFF, \
0x024A0009, 0x02330000, 0x03EC015C, 0xF81775FF, \
0x014CFF96, 0x022A0000, 0x042701DE, 0xD70570FF, \
0x014CFF96, 0xFDD60000, 0x0AD801DE, 0xD70590FF, \
0x01E2FD45, 0x00000000, 0x078001DA, 0xEA8B00FF, \
0x042AFD7F, 0x00000000, 0x077F00C6, 0x57AE02FF, \
0x02D3FDA0, 0x017E0000, 0x06440160, 0x149A3BFF, \
0x03C5FE5F, 0x019E0000, 0x05F200DC, 0x48D455FF, \
0x02D3FDA0, 0xFE820000, 0x08BB0160, 0x149AC5FF, \
0x03C5FE5F, 0xFE620000, 0x090D00DC, 0x42D3A8FF, \
0x0240FE3B, 0x02440000, 0x056B0194, 0xFBC869FF, \
0x0240FE3B, 0xFDBC0000, 0x09940194, 0xFBC996FF, \
0x014CFE12, 0x01480000, 0x065D0208, 0xC7B144FF, \
0x014CFE12, 0xFEB80000, 0x08A20208, 0xC7B1BCFF
var_80B2A600: .word \
0xD7000002, 0xFFFFFFFF, 0xE7000000, 0x00000000, \
0xE200001C, 0xC8112078, 0xFC127E60, 0xFFFFF3F8, \
0xE3001001, 0x00000000, 0xFD100000
.word var_80B289E0
.word \
0xF5100000, 0x0708C230, 0xE6000000, 0x00000000, \
0xF3000000, 0x0703F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x0008C230, 0xF2000000, 0x0001C01C, \
0xF2000000, 0x0001C01C, 0xFA000080, 0xFFFFFFFF, \
0xD9FFFFFF, 0x00020000, 0xD9FFFFFF, 0x00000400, \
0xD9F3FFFF, 0x00000000, 0x0101E03C
.word var_80B29960
.word \
0x06000204, 0x00040608, 0x060A0C0E, 0x00101214, \
0x0616181A, 0x001C1E20, 0x06222426, 0x00282A2C, \
0x06201E2E, 0x001E302E, 0x06301E32, 0x001C321E, \
0x06343638, 0x003A1210, 0xE7000000, 0x00000000, \
0xE3001001, 0x00000000, 0xFD100000
.word var_80B28A60
.word \
0xF5100000, 0x07090030, 0xE6000000, 0x00000000, \
0xF3000000, 0x0707F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x00090030, 0xF2000000, 0x0001C03C, \
0xF2000000, 0x0001C03C, 0x01020040
.word var_80B29B40
.word \
0x06000204, 0x00060004, 0x06080A0C, 0x00080E0A, \
0x06101214, 0x0016181A, 0x061C1E20, 0x0020221C, \
0x06242628, 0x002A2C24, 0x06242E2A, 0x0030321C, \
0x06263428, 0x00303632, 0x06283438, 0x00383630, \
0x053A3C3E, 0x00000000, 0x0101D03A
.word var_80B29D40
.word \
0x06000204, 0x0006080A, 0x06080C0A, 0x000E1012, \
0x060E1410, 0x0016181A, 0x061C1E1A, 0x001E161A, \
0x06201822, 0x00221816, 0x0624161E, 0x00242216, \
0x06262022, 0x00282624, 0x06262224, 0x0020262A, \
0x0626282A, 0x00282C2A, 0xE7000000, 0x00000000, \
0xE3001001, 0x00000000, 0xFD100000
.word var_80B28B60
.word \
0xF5100000, 0x0708C230, 0xE6000000, 0x00000000, \
0xF3000000, 0x0703F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x0008C230, 0xF2000000, 0x0001C01C, \
0xF2000000, 0x0001C01C, 0x062E3032, 0x00343638, \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xFD100000
.word var_80B28BE0
.word \
0xF5100000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00094250, 0xF2000000, 0x0007C07C, \
0xF2000000, 0x0007C07C, 0x0101E03C
.word var_80B29F10
.word \
0x06000204, 0x00040608, 0x060A0C0E, 0x00100C0A, \
0x06120214, 0x00161214, 0x06181A1C, 0x001C1A1E, \
0x06140220, 0x00200222, 0x06220200, 0x00040206, \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xFD100000
.word var_80B293E0
.word \
0xF5100000, 0x07090250, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00090250, 0xF2000000, 0x0007C03C, \
0xF2000000, 0x0007C03C, 0x06242628, 0x00262A28, \
0x06282C24, 0x002C2E24, 0x062C302E, 0x00242E32, \
0x062E3032, 0x00342624, 0x05342A26, 0x00000000, \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xFD100000
.word var_80B297E0
.word \
0xF5100000, 0x0708C130, 0xE6000000, 0x00000000, \
0xF3000000, 0x0703F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x0008C130, 0xF2000000, 0x0001C01C, \
0xF2000000, 0x0001C01C, 0x0536383A, 0x00000000, \
0xDF000000, 0x00000000
var_80B2A970: .word \
0xD7000002, 0xFFFFFFFF, 0xE7000000, 0x00000000, \
0xE200001C, 0xC8112078, 0xFC127E60, 0xFFFFF3F8, \
0xE3001001, 0x00000000, 0xFD100000
.word var_80B29860
.word \
0xF5100000, 0x07010030, 0xE6000000, 0x00000000, \
0xF3000000, 0x0707F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x00010030, 0xF2000000, 0x0001C03C, \
0xF2000000, 0x0001C03C, 0xFA000080, 0xFFFFFFFF, \
0xD9FFFFFF, 0x00020000, 0xD9FFFFFF, 0x00000400, \
0xD9F3FFFF, 0x00000000, 0x01020040
.word var_80B2A0F0
.word \
0x06000204, 0x0006080A, 0x060C0E10, 0x00120E0C, \
0x06141606, 0x00181A1C, 0x061E181C, 0x00202224, \
0x06202426, 0x00282A2C, 0x062E3032, 0x00323034, \
0x0636383A, 0x003C2A28, 0x01020040
.word var_80B2A2E0
.word \
0x06000204, 0x0006080A, 0x060A080C, 0x00020E04, \
0x06101214, 0x00161014, 0x0618141A, 0x001A1C18, \
0x061E2016, 0x00201016, 0x06202210, 0x00142426, \
0x06281C1A, 0x00142A1A, 0x06262A14, 0x002C2E30, \
0x06302E32, 0x00223234, 0x06322E34, 0x00322220, \
0x06201E32, 0x00141224, 0x06362438, 0x00241238, \
0x0626363A, 0x00243626, 0x062C303C, 0x003E263A, \
0x01012024
.word var_80B2A4E0
.word \
0x06000204, 0x0006080A, 0x060C0A08, 0x000E0200, \
0x06101214, 0x00121614, 0x0612181A, 0x00121018, \
0x0610141C, 0x0014161C, 0x061E1810, 0x001E1A18, \
0x061C2010, 0x0010221E, 0x060A0C1C, 0x00201C0C, \
0x060E1E22, 0x001E0E00, 0xDF000000, 0x00000000
var_80B2AB08: .word \
0x000008FF, 0xC00008FF, 0x09DD0B7C, 0x0C620B95, \
0x0A10094C, 0x09E60B1E, 0x0C600D1C, 0x0D530D6D, \
0x0D6E0D5C, 0x0D3A0D0C, 0x0CD70CA0, 0x0C5C0C05, \
0x0B9E0B2F, 0x0ABC0A4B, 0x09E30988, 0x093F0910, \
0x08FF0000, 0x002F0087, 0x00B70087, 0x002F0000, \
0x001D005B, 0x009A00B7, 0x00B0009E, 0x00840065, \
0x00450027, 0x000F0000, 0xFFF8FFF3, 0xFFF1FFF0, \
0xFFF2FFF4, 0xFFF7FFFA, 0xFFFDFFFF, 0x00000C81, \
0x0506F8FC, 0xF308F854, 0x037409DD, 0x04CEFB9E, \
0xF32FEE40, 0xEC9CEBBE, 0xEBC7EC8C, 0xEDBBEF1E, \
0xF095F20A, 0xF3C1F5F6, 0xF891FB7D, 0xFE9F01DA, \
0x050407E9, 0x0A4C0BEA, 0x0C81DD2B, 0xDE1CE1B2, \
0xE4E4E200, 0xDE75DD7B, 0xDE3AE0B3, 0xE4D8E8AC, \
0xEA53EB50, 0xEB53EA8A, 0xE966E82F, 0xE706E5F8, \
0xE4D8E391, 0xE245E10D, 0xDFF7DF0D, 0xDE54DDCB, \
0xDD70DD3C, 0xDD2BCC69, 0xD5FAE662, 0xEF82E741, \
0xD7CFCF65, 0xD5D7E233, 0xEED7F75C, 0xFA5CFBDB, \
0xFB74F97F, 0xF6CBF3DD, 0xF0FEEE5E, 0xEB8EE82C, \
0xE470E07F, 0xDC7CD889, 0xD4D0D181, 0xCED6CD0E, \
0xCC69471F, 0x4037303A, 0x24502F13, 0x3E8044D4, \
0x3FED345D, 0x248D16E4, 0x110F0D94, 0x0D8D1062, \
0x147C18DD, 0x1D1620EF, 0x251529DF, 0x2EDA33BB, \
0x38503C74, 0x400B42FE, 0x4536469F, 0x471FE9BF, \
0xEABEECA4, 0xEDD2ED52, 0xEC19EB60, 0xEBE3ECE6, \
0xED69ED52, 0xED32ED09, 0xECD9ECA4, 0xEC69EC2B, \
0xEBEBEBA9, 0xEB67EB25, 0xEAE6EAAA, 0xEA73EA40, \
0xEA15E9F1, 0xE9D6E9C5, 0xE9BFFD3D, 0xFB20F869, \
0xF761F84E, 0xFAC2FC81, 0xFB22F903, 0xF77CF6D7, \
0xF6B8F6B4, 0xF6C6F6E6, 0xF712F746, 0xF77DF7B4, \
0xF7F5F84D, 0xF8BDF944, 0xF9E1FA91, 0xFB4BFC01, \
0xFCA1FD12, 0xFD3DB14B, 0xB21BB631, 0xBA68B6A1, \
0xB293B1BB, 0xB275B53A, 0xBA9FC043, 0xC2FFC4CD, \
0xC514C413, 0xC288C0E3, 0xBF4FBDD8, 0xBC3BBA63, \
0xB88AB6D0, 0xB549B401, 0xB2FCB239, 0xB1B3B165, \
0xB14BF374, 0xFAF20701, 0x0CF607A9, 0xFC85F61A, \
0xFB2B045E, 0x0CCF11C0, 0x13661443, 0x143B1375, \
0x124510E2, 0x0F6B0DF5, 0x0C3D0A07, 0x076B047F, \
0x015CFE20, 0xFAF5F80E, 0xF5ABF40C, 0xF37422D8, \
0x21E71E52, 0x1B1F1E04, 0x218F2288, 0x21C91F51, \
0x1B2B1756, 0x15AE14B2, 0x14AE1578, 0x169D17D4, \
0x18FD1A0B, 0x1B2B1C73, 0x1DBE1EF7, 0x200D20F6, \
0x21B02238, 0x229322C7, 0x22D8CC5E, 0xD5F3E660, \
0xEF82E73E, 0xD7C8CF5B, 0xD5CFE230, 0xEED6F75E, \
0xFA5EFBDE, 0xFB77F981, 0xF6CCF3DE, 0xF0FEEE5E, \
0xEB8CE82A, 0xE46CE07B, 0xDC77D883, 0xD4C8D178, \
0xCECCCD04, 0xCC5E4721, 0x4039303B, 0x24502F13, \
0x3E8244D7, 0x3FEF345E, 0x248D16E2, 0x110B0D8E, \
0x0D87105E, 0x147918DB, 0x1D1420EF, 0x251529DF, \
0x2EDB33BD, 0x38523C76, 0x400D4300, 0x453946A2, \
0x47211525, 0x144912B3, 0x11E312DA, 0x1496158D, \
0x14BE1329, 0x124B124C, 0x1258126D, 0x128B12B0, \
0x12DB130B, 0x133F1375, 0x13AD13E4, 0x141B1450, \
0x148214AF, 0x14D614F7, 0x15101520, 0x15250133, \
0x034905F3, 0x06F4060D, 0x03A401EB, 0x0345055A, \
0x06D70777, 0x07940795, 0x07820760, 0x073306FF, \
0x06C80692, 0x065305FD, 0x0591050E, 0x047603CC, \
0x03180266, 0x01CB015D, 0x0133AFF7, 0xB0CEB4F3, \
0xB933B565, 0xB14AB06C, 0xB12CB3FC, 0xB96EBF1A, \
0xC1DAC3AC, 0xC3F6C2F7, 0xC16DBFC8, 0xBE34BCBB, \
0xBB1BB940, 0xB761B5A1, 0xB413B2C4, 0xB1B8B0EE, \
0xB064B012, 0xAFF785B4, 0x82A47CF4, 0x79E37CE3, \
0x828385B4, 0x858E84AE, 0x834F81AC, 0x80007E86, \
0x7D787D11, 0x7D2D7D7C, 0x7DF77E94, 0x7F4E801B, \
0x80F481D1, 0x82AA8377, 0x843084CE, 0x85498598, \
0x85B40000, 0x00008000, 0x80008000, 0x00000000, \
0x00000000, 0x80008000, 0x80008000, 0x80008000, \
0x80008000, 0x80008000, 0x80008000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000E4AB, \
0xD131D321, 0xE71DD4D8, 0xCDC2E021, 0xD7CCC4D1, \
0xD19BE444, 0xEBF5EB10, 0xE8E1E593, 0xE14EDC3C, \
0xD687D058, 0xC9D9C333, 0xC370C9E7, 0xD008D5A9, \
0xDAA1DEC7, 0xE1F1E3F6, 0xE4AB8000, 0x80000000, \
0x00000000, 0x80008000, 0x80008000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x80008000, 0x80008000, 0x80008000, \
0x80008000, 0x80000000, 0x00008000, 0x80008000, \
0x00000000, 0x00000000, 0x80008000, 0x80008000, \
0x80008000, 0x80008000, 0x80008000, 0x80008000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00001B55, 0x2ECF2CDF, 0x18E32B28, 0x323E1FDF, \
0x28343B2F, 0x2E651BBC, 0x140B14F0, 0x171F1A6D, \
0x1EB223C4, 0x29792FA8, 0x36273CCD, 0x3C903619, \
0x2FF82A57, 0x255F2139, 0x1E0F1C0A, 0x1B558000, \
0x80000000, 0x00000000, 0x80008000, 0x80008000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x80008000, 0x80008000, \
0x80008000, 0x80008000, 0x80000000, 0x0289073E, \
0x09C7089B, 0x05D50297, 0x0000FE01, 0xFBE4F9D2, \
0xF7F1F669, 0xF561F500, 0xF524F589, 0xF625F6EE, \
0xF7DAF8DF, 0xF9F3FB0D, 0xFC21FD26, 0xFE12FEDB, \
0xFF77FFDC, 0x00000000
var_80B2B0B0: .word \
0x00000003, 0x00210002, 0x00000002, 0x003F005D, \
0x007B0000, 0x00000099, 0x00B700D5, 0x00F30111, \
0x012F014D, 0x00000000, 0x016B0189, 0x01A701C5, \
0x00000000, 0x01E30201, 0x021F023D, 0x00000000, \
0x00000000, 0x00000000, 0x025B0279, 0x02970000, \
0x00000000, 0x00000000, 0x00000000, 0x000002B5
var_80B2B110: .word 0x001E0000
.word var_80B2AB08
.word var_80B2B0B0
.word 0x00030000
var_80B2B120: .word \
0xFF730E5D, 0x0032C000, 0x00008000, 0xFF73FF47, \
0xFF1DFEF6, 0xFED6FEBD, 0xFEAFFEAE, 0xFEBBFEE8, \
0xFF39FF9E, 0x00060062, 0x00A200CA, 0x00ED010A, \
0x011F012C, 0x0130012B, 0x011B00F2, 0x00AD0057, \
0xFFFEFFAD, 0x0E5D0E59, 0x0E4D0E3D, 0x0E2B0E18, \
0x0E080DFD, 0x0DF80E00, 0x0E120E2B, 0x0E430E56, \
0x0E5D0E59, 0x0E4D0E3D, 0x0E2B0E18, 0x0E080DFD, \
0x0DF80E00, 0x0E120E2B, 0x0E430E56, 0x024A023C, \
0x023E024E, 0x0266027E, 0x028C0285, 0x0260020F, \
0x01960107, 0x007D0000, 0x00010000, 0x000D0017, \
0x00140010, 0x000F0015, 0x00240043, 0x00A7013F, \
0x01D9023B, 0xF514F47F, 0xF407F3B0, 0xF381F37E, \
0xF3ACF412, 0xF4B3F5C9, 0xF75FF934, 0xFB08FC9F, \
0xFDBEFE4F, 0xFECCFF32, 0xFF7EFFAD, 0xFFBCFFA8, \
0xFF6EFEDC, 0xFD3EFAF2, 0xF878F655, 0xFDD5FE67, \
0xFE9CFE7F, 0xFE26FDAB, 0xFD2AFCC0, 0xFC8CFC9F, \
0xFD13FE1B, 0x000703D2, 0x039303AF, 0x020BFF2B, \
0xFD5BFBFA, 0xFAF5FA4E, 0xFA15FA8A, 0xFAB0FAED, \
0xFBA5FCC8, 0x11050FC4, 0x0F2B0F23, 0x0F831018, \
0x10AE1113, 0x11081071, 0x0F1A0C91, 0x08340000, \
0x00370000, 0x036E096C, 0x0D3C1026, 0x124F13B0, \
0x142B1331, 0x139A1450, 0x141B12C8, 0x02250131, \
0xFF48FD50, 0xFC34FBE4, 0xFBB5FBA2, 0xFBA6FBBF, \
0xFBE8FC1C, 0xFC59FC99, 0xFCD9FD4E, 0xFE0DFEDE, \
0xFF8BFFDD, 0xFF9FFEF6, 0xFE31FD9C, 0xFD84FE6A, \
0x000A018F, 0xE79BE7A3, 0xE7B7E7CC, 0xE7D5E7D4, \
0xE7CFE7C9, 0xE7C1E7B8, 0xE7B0E7A8, 0xE7A1E79D, \
0xE79BE7A1, 0xE7ADE7BD, 0xE7CCE7D7, 0xE7DEE7E4, \
0xE7E8E7E8, 0xE7E4E7D5, 0xE7BDE7A7, 0xBE3EC0F2, \
0xC400C67F, 0xC787C762, 0xC6F9C654, 0xC57CC47B, \
0xC359C220, 0xC0D7BF89, 0xBE3EBC8A, 0xBA44B7DD, \
0xB5C2B465, 0xB3D0B3B9, 0xB40FB4BF, 0xB5B9B740, \
0xB96ABBDD, 0xFFE6FFDA, 0xFFD6FFDF, 0xFFEE0000, \
0x000C000F, 0x0002FFD7, 0xFF5FFEB4, 0xFE13FDC0, \
0xFDC2FDD2, 0xFDC8FDA8, 0xFD7DFD55, 0xFD3EFD40, \
0xFD64FDB8, 0xFE35FEC2, 0xFF46FFAB, 0x028E01F2, \
0x015A00CF, 0x005A0001, 0xFFCEFFC9, 0xFFF9009B, \
0x026304E6, 0x079709E4, 0x0B370BC2, 0x0C200C51, \
0x0C560C2E, 0x0BDA0B5A, 0x0AB009AC, 0x084106A4, \
0x0507039A, 0x020F0091, 0xFED6FD40, 0xFBDEFAB8, \
0xF9D5F941, 0xF90AF96C, 0xF9B4FA3E, 0xFB5AFCE5, \
0xFE33FEC0, 0xFEC6FE5E, 0xFDB0FCE7, 0xFC27FB90, \
0xFB3FFB4C, 0xFBC4FCB6, 0xFE2C001D, 0x03660682, \
0x0A1F0D75, 0x106112D0, 0x14B215EE, 0x16631591, \
0x15B415C6, 0x14BA1288, 0x10410F0D, 0x0ED40F66, \
0x107311AA, 0x12C6138C, 0x13C01336, 0x11D50F7A, \
0x0C1207B3, 0x034A032F, 0x02F602B2, 0x0273024C, \
0x023F0241, 0x024D025D, 0x026E0283, 0x02A002BD, \
0x02D102DE, 0x02EB02F9, 0x03070315, 0x0323032F, \
0x033A0343, 0x034A034F, 0x0351034F, 0x102E1025, \
0x10171008, 0x0FFC0FF4, 0x0FF00FEF, 0x0FF00FF6, \
0x10011019, 0x103D105E, 0x106E1070, 0x1070106E, \
0x106C1068, 0x1063105E, 0x10581051, 0x104A1043, \
0x103C1035, 0xBAF6B9F8, 0xB852B66C, 0xB4AFB383, \
0xB2D9B26C, 0xB251B2A2, 0xB376B595, 0xB8D8BBEE, \
0xBD88BDE3, 0xBE21BE44, 0xBE4DBE3F, 0xBE1CBDE6, \
0xBD9EBD47, 0xBCE3BC74, 0xBBFBBB7B, 0xFBEDFB2F, \
0xFA9CFA56, 0xFA7DFB30, 0xFC80FE4C, 0x006802A8, \
0x04E206EA, 0x089609B9, 0x0A2A0A09, 0x099D08F1, \
0x080D06FC, 0x05C8047B, 0x031F01BE, 0x0062FF15, \
0xFDE1FCD1, 0x03420349, 0x031002B0, 0x024201DE, \
0x017A0102, 0x007FFFFA, 0xFF7CFF0E, 0xFEB9FE86, \
0xFE7DFE99, 0xFECCFF13, 0xFF69FFCD, 0x003900AB, \
0x011F0192, 0x02000266, 0x02C0030A, 0x80008001, \
0x7FF57FDF, 0x7FC77FB0, 0x7F9A7F7F, 0x7F627F44, \
0x7F287F10, 0x7EFD7EF1, 0x7EEF7EF6, 0x7F017F11, \
0x7F247F3A, 0x7F527F6C, 0x7F867F9F, 0x7FB87FCF, \
0x7FE37FF3, 0x0000FFF2, 0xFFCBFF8E, 0xFF3DFEDB, \
0xFE6AFDEF, 0xFD6BFCE2, 0xFC55FBC9, 0xFB3FFABC, \
0xFA40F9D0, 0xF96EF91D, 0xF8DFF8B8, 0xF8ABF8FB, \
0xF9D0FAFD, 0xFC55FDAE, 0xFEDBFFAF, 0xF3BFF3AF, \
0xF384F340, 0xF2E6F279, 0xF1FCF173, 0xF0E0F047, \
0xEFACEF10, 0xEE77EDE4, 0xED5BECDE, 0xEC71EC17, \
0xEBD3EBA8, 0xEB99EBF2, 0xECDEEE2D, 0xEFACF12B, \
0xF279F365, 0xF3E6F40E, 0xF4EBF650, 0xF813FA09, \
0xFC06FDE0, 0xFF6A00F5, 0x02AE0436, 0x052B0530, \
0x047C038B, 0x0268011D, 0xFFB5FE39, 0xFCB3FB2D, \
0xF9B3F84D, 0xF705F5E7, 0xF4FCF44D, 0x0D480E07, \
0x0F6B113C, 0x13421546, 0x17101868, 0x19171883, \
0x16B2145B, 0x123110EB, 0x10560FC6, 0x0F3C0EBB, \
0x0E450DDA, 0x0D7D0D2F, 0x0CF20CC7, 0x0CB10CB1, \
0x0CC90CFB, 0xBAAABAA8, 0xBAAABAAE, 0xBAB5BABD, \
0xBAC6BAD0, 0xBAD9BAE8, 0xBAFDBB12, 0xBB23BB28, \
0xBB24BB1F, 0xBB18BB0F, 0xBB06BAFB, 0xBAF0BAE5, \
0xBADABAD0, 0xBAC6BABD, 0xBAB5BAAE, 0x0F8A0F68, \
0x0F090E72, 0x0DAD0CC1, 0x0BB70A94, 0x09630829, \
0x06EF05BE, 0x049B0390, 0x02A501E0, 0x014900E9, \
0x00C80132, 0x025103F8, 0x05FA0829, 0x0A580C5A, \
0x0E010F20, 0x036803AC, 0x046E059E, 0x072C090A, \
0x0B260D71, 0x0FDC1256, 0x14D1173B, 0x19861BA3, \
0x1D801F0E, 0x203E2100, 0x2145206E, 0x1E291AD1, \
0x16C11256, 0x0DEB09DB, 0x0683043E, 0x015D0134, \
0x00BE0006, 0xFF14FDF3, 0xFCACFB48, 0xF9D1F850, \
0xF6CFF558, 0xF3F4F2AD, 0xF18CF09A, 0xEFE2EF6C, \
0xEF43EFC5, 0xF125F32C, 0xF5A2F850, 0xFAFEFD74, \
0xFF7B00DB, 0x0AA00B8D, 0x0CEA0E7D, 0x100C115D, \
0x1236125E, 0x11C810A8, 0x0F250D65, 0x0B8F09C9, \
0x083A0709, 0x065B0615, 0x05FC060C, 0x063F0691, \
0x06FD077F, 0x081108AF, 0x095409FC, 0xFCE2FCDA, \
0xFCCEFCC1, 0xFCB2FCA3, 0xFC95FC8A, 0xFC82FC7F, \
0xFC80FC84, 0xFC8BFC93, 0xFC9CFCA6, 0xFCB1FCBC, \
0xFCC6FCCF, 0xFCD7FCDE, 0xFCE2FCE6, 0xFCE9FCEA, \
0xFCE9FCE7, 0x022F01BA, 0x0107002A, 0xFF37FE41, \
0xFD5CFC9C, 0xFC13FBD7, 0xFBDCFC07, 0xFC53FCBA, \
0xFD35FDBE, 0xFE50FEE5, 0xFF76FFFD, 0x007500D7, \
0x01330193, 0x01ED0235, 0x025F0261, 0xCC20CB32, \
0xCA17C8E4, 0xC7AFC68D, 0xC595C4DB, 0xC477C47C, \
0xC4ECC5B1, 0xC6B9C7F4, 0xC953CAC5, 0xCC3ACDA3, \
0xCEEED00B, 0xD0ECD17F, 0xD198D12C, 0xD060CF55, \
0xCE2FCD12, 0x06B30681, 0x05F5051B, 0x040102B3, \
0x013FFFB0, 0xFE15FC79, 0xFAEBF976, 0xF828F70E, \
0xF634F5A8, 0xF577F5CE, 0xF6BEF828, 0xF9EFFBF2, \
0xFE150037, 0x023B0401, 0x056C065C, 0x01C6018B, \
0x00E4FFE1, 0xFE91FD04, 0xFB48F96D, 0xF783F59A, \
0xF3BFF203, 0xF076EF26, 0xEE23ED7C, 0xED41EDA8, \
0xEEC6F076, 0xF293F4F9, 0xF783FA0E, 0xFC74FE91, \
0x0041015E, 0xF58DF579, 0xF541F4E9, 0xF477F3F0, \
0xF35AF2B9, 0xF213F16D, 0xF0CCF035, 0xEFAEEF3C, \
0xEEE4EEAC, 0xEE98EEBB, 0xEF1CEFAE, 0xF066F136, \
0xF213F2EF, 0xF3C0F477, 0xF50AF56A, 0x0000FFD3, \
0xFF57FE97, 0xFDA2FC85, 0xFB4DFA07, 0xF8C2F78A, \
0xF66DF578, 0xF4B8F43B, 0xF40FF43B, 0xF4B8F578, \
0xF66DF78A, 0xF8C2FA07, 0xFB4DFC85, 0xFDA2FE97, \
0xFF57FFD3, 0x00000016, 0x005300B1, 0x012901B5, \
0x024E02ED, 0x038D0426, 0x04B2052A, 0x058805C5, \
0x05DB05C5, 0x0588052A, 0x04B20426, 0x038D02ED, \
0x024E01B5, 0x012900B1, 0x00530016, 0x0000FFF9, \
0xFFE7FFCB, 0xFFA7FF7D, 0xFF4FFF1F, 0xFEEFFEC1, \
0xFE97FE73, 0xFE56FE44, 0xFE3EFE44, 0xFE56FE73, \
0xFE97FEC1, 0xFEEFFF1F, 0xFF4FFF7D, 0xFFA7FFCB, \
0xFFE7FFF9
var_80B2B944: .word \
0x00060022, 0x00020003, 0x00040003, 0x003E005A, \
0x00760004, 0x00040092, 0x00AE00CA, 0x00E60102, \
0x011E013A, 0x00040004, 0x01560172, 0x018E01AA, \
0x01C601E2, 0x01FE021A, 0x02360005, 0x0252026E, \
0x028A02A6, 0x02C202DE, 0x000402FA, 0x00050316, \
0x0332034E, 0x036A0386, 0x03A203BE, 0x03DA03F6
var_80B2B9A4: .word 0x001C0000
.word var_80B2B120
.word var_80B2B944
.word 0x00060000
var_80B2B9B4: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80B2B9E0: .word 0x01070111, 0x01110111, 0x01110111
var_80B2B9EC: .word \
0x060000F0, 0x060000F0, 0x060000F0, 0x060000F0, \
0x060000F0, 0x060000F0
var_80B2BA04: .word var_80B2B9A4
.word var_80B2B110
.word var_80B2B110
.word var_80B2B110
.word var_80B2B110
.word var_80B2B110
var_80B2BA1C: .word func_80B28158
.word func_80B28420
.word func_80B28420
.word func_80B28420
.word func_80B28420
.word func_80B28420
var_80B2BA34: .word 0x00000400, 0x08001000, 0x20004000
var_80B2BA40: .word 0x00560045, 0x00390046, 0x0003003E
var_80B2BA4C: .word 0x442F0000, 0x43C80000, 0x00000000
var_80B2BA58: .word \
0xBE6E0000, 0xB46E00FF, 0x50FFA03C, 0xBEE6FAF0, \
0xE6780000, 0x00000000

.section .rodata


