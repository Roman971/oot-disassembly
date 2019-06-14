#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A5DFC0:
    sw      a1, 0x014C(a0)             # 0000014C
    jr      $ra                        
    nop


func_80A5DFCC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(var_80A5E680)      # a1 = 80A60000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     v1, v0,  1                 
    addu    a1, a1, v1                 
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at                
    lh      a1, %lo(var_80A5E680)(a1)  
    sw      v1, 0x0024($sp)            
    jal     func_80081628              # ObjectIndex
    sw      v0, 0x002C($sp)            
    bltz    v0, lbl_80A5E01C           
    lw      v1, 0x0024($sp)            
    sb      v0, 0x0144(s0)             # 00000144
lbl_80A5E01C:
    lui     t6, %hi(var_80A5E69C)      # t6 = 80A60000
    addu    t6, t6, v1                 
    lh      t6, %lo(var_80A5E69C)(t6)  
    lui     t7, %hi(var_80A5E6B8)      # t7 = 80A60000
    addu    t7, t7, v1                 
    sh      t6, 0x0140(s0)             # 00000140
    lh      t7, %lo(var_80A5E6B8)(t7)  
    lui     t8, %hi(func_80A5E1B4)     # t8 = 80A60000
    lui     t9, %hi(func_80A5E610)     # t9 = 80A60000
    addiu   t8, t8, %lo(func_80A5E1B4) # t8 = 80A5E1B4
    addiu   t9, t9, %lo(func_80A5E610) # t9 = 80A5E610
    sw      t8, 0x013C(s0)             # 0000013C
    sw      t9, 0x0148(s0)             # 00000148
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3E80                 # a1 = 3E800000
    jal     func_80020F88              
    sh      t7, 0x0142(s0)             # 00000142
    lui     a1, %hi(func_80A5E15C)     # a1 = 80A60000
    addiu   a1, a1, %lo(func_80A5E15C) # a1 = 80A5E15C
    jal     func_80A5DFC0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x002C($sp)            
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sltiu   $at, t1, 0x000D            
    beq     $at, $zero, lbl_80A5E138   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80A5E700)     # $at = 80A60000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80A5E700)($at) 
    jr      t1                         
    nop
var_80A5E098:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     t2, %hi(func_80A5E24C)     # t2 = 80A60000
    addiu   t2, t2, %lo(func_80A5E24C) # t2 = 80A5E24C
    sw      t2, 0x013C(s0)             # 0000013C
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x4B56(t3)            # 8011B4AA
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_80A5E13C    
    lw      $ra, 0x001C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A5E13C 
    lw      $ra, 0x001C($sp)           
var_80A5E0D4:
    lui     t5, %hi(func_80A5E514)     # t5 = 80A60000
    addiu   t5, t5, %lo(func_80A5E514) # t5 = 80A5E514
    sw      t5, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_80A5E138 
    swc1    $f4, 0x00BC(s0)            # 000000BC
var_80A5E100:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     t6, %hi(func_80A5E4CC)     # t6 = 80A60000
    lui     t7, %hi(func_80A5E5B8)     # t7 = 80A60000
    add.s   $f10, $f6, $f8             
    addiu   t6, t6, %lo(func_80A5E4CC) # t6 = 80A5E4CC
    addiu   t7, t7, %lo(func_80A5E5B8) # t7 = 80A5E5B8
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0148(s0)             # 00000148
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_80A5E138:
    lw      $ra, 0x001C($sp)           
lbl_80A5E13C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E14C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A5E15C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x0144(a2)             # 00000144
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a3, $at                
    beq     v0, $zero, lbl_80A5E1A4    
    lw      a2, 0x0018($sp)            
    lbu     t6, 0x0144(a2)             # 00000144
    lw      t7, 0x0148(a2)             # 00000148
    lw      t8, 0x013C(a2)             # 0000013C
    sb      t6, 0x001E(a2)             # 0000001E
    sw      t7, 0x0134(a2)             # 00000134
    sw      t8, 0x014C(a2)             # 0000014C
lbl_80A5E1A4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E1B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A5E21C    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bne     t7, $at, lbl_80A5E20C      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EDA(v0)             # 8011B4AA
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    ori     t9, t8, 0x0002             # t9 = 00000002
    jal     func_800204D0              
    sh      t9, 0x0EDA(v0)             # 8011B4AA
lbl_80A5E20C:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A5E23C 
    lw      $ra, 0x0024($sp)           
lbl_80A5E21C:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lh      a2, 0x0142(s0)             # 00000142
    lw      a1, 0x002C($sp)            
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x0024($sp)           
lbl_80A5E23C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E24C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022BB0              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A5E2B8    
    or      a0, s1, $zero              # a0 = 00000000
    lh      t6, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bne     t7, $at, lbl_80A5E2A8      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EDA(v0)             # 8011B4AA
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    ori     t9, t8, 0x0002             # t9 = 00000002
    jal     func_800204D0              
    sh      t9, 0x0EDA(v0)             # 8011B4AA
lbl_80A5E2A8:
    jal     func_80020EB4              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A5E31C 
    lw      $ra, 0x0024($sp)           
lbl_80A5E2B8:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lh      a2, 0x0142(s1)             # 00000142
    or      a1, s0, $zero              # a1 = 00000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s0                 
    lw      t0, 0x1DE4(t0)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    andi    t1, t0, 0x000D             # t1 = 00000000
    bne     t1, $zero, lbl_80A5E318    
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, %hi(var_80A5E734)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A5E734)($at) 
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    swc1    $f6, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f8, 0x0014($sp)           
lbl_80A5E318:
    lw      $ra, 0x0024($sp)           
lbl_80A5E31C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A5E32C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90              
    nop
    lui     $at, %hi(var_80A5E6D4)     # $at = 80A60000
    swc1    $f0, %lo(var_80A5E6D4)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90              
    nop
    lui     $at, %hi(var_80A5E6DC)     # $at = 80A60000
    swc1    $f0, %lo(var_80A5E6DC)($at) 
    lui     $at, %hi(var_80A5E738)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A5E738)($at) 
    lui     $at, %hi(var_80A5E6D8)     # $at = 80A60000
    swc1    $f4, %lo(var_80A5E6D8)($at) 
    lui     $at, %hi(var_80A5E73C)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5E73C)($at) 
    lui     $at, %hi(var_80A5E6E4)     # $at = 80A60000
    swc1    $f6, %lo(var_80A5E6E4)($at) 
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f12                  # $f12 = 12.00
    jal     func_80026D90              
    nop
    lw      t6, 0x0038($sp)            
    lwc1    $f8, 0x0024(t6)            # 00000024
    add.s   $f10, $f0, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x002C($sp)          
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lw      t7, 0x0038($sp)            
    lui     $at, 0x4140                # $at = 41400000
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0028(t7)            # 00000028
    mtc1    $at, $f12                  # $f12 = 12.00
    add.s   $f6, $f18, $f4             
    jal     func_80026D90              
    swc1    $f6, 0x0030($sp)           
    lw      t8, 0x0038($sp)            
    lui     t9, %hi(var_80A5E6EC)      # t9 = 80A60000
    lui     t0, %hi(var_80A5E6F0)      # t0 = 80A60000
    lwc1    $f8, 0x002C(t8)            # 0000002C
    addiu   t0, t0, %lo(var_80A5E6F0)  # t0 = 80A5E6F0
    addiu   t9, t9, %lo(var_80A5E6EC)  # t9 = 80A5E6EC
    add.s   $f10, $f0, $f8             
    lui     a2, %hi(var_80A5E6D4)      # a2 = 80A60000
    lui     a3, %hi(var_80A5E6E0)      # a3 = 80A60000
    addiu   t1, $zero, 0x1388          # t1 = 00001388
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    swc1    $f10, 0x0034($sp)          
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    addiu   a3, a3, %lo(var_80A5E6E0)  # a3 = 80A5E6E0
    addiu   a2, a2, %lo(var_80A5E6D4)  # a2 = 80A5E6D4
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_8001C6A8              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E43C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x4120                # $at = 41200000
    sw      s0, 0x0020($sp)            
    mtc1    $at, $f0                   # $f0 = 10.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t7, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_80A5E4A4    
    lh      t9, 0x00B6(s0)             # 000000B6
    jal     func_80A5E32C              
    lw      a1, 0x002C($sp)            
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_80A5E4A4:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, t9, 0x0400             # t0 = 00000400
    sh      t0, 0x00B6(s0)             # 000000B6
    jal     func_80A5E1B4              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E4CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8                 
    jal     func_8002060C              
    andi    a1, a1, 0x001F             # a1 = 00000000
    beql    v0, $zero, lbl_80A5E508    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A5E508:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E514:
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    lui     t0, %hi(func_80A5E43C)     # t0 = 80A60000
    lui     $at, %hi(var_80A5E744)     # $at = 80A60000
    beq     t6, $zero, lbl_80A5E574    
    addiu   t0, t0, %lo(func_80A5E43C) # t0 = 80A5E43C
    lw      v0, 0x1D8C(a1)             # 00001D8C
    beq     v0, $zero, lbl_80A5E574    
    nop
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t8, %hi(func_80A5E610)     # t8 = 80A60000
    bne     t7, $at, lbl_80A5E58C      
    addiu   t8, t8, %lo(func_80A5E610) # t8 = 80A5E610
    sw      t8, 0x0134(a0)             # 00000134
    lui     $at, %hi(var_80A5E740)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A5E740)($at) 
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    lui     t9, %hi(func_80A5E43C)     # t9 = 80A60000
    addiu   t9, t9, %lo(func_80A5E43C) # t9 = 80A5E43C
    sw      t9, 0x014C(a0)             # 0000014C
    swc1    $f4, 0x006C(a0)            # 0000006C
    jr      $ra                        
    swc1    $f6, 0x0070(a0)            # 00000070
lbl_80A5E574:
    lwc1    $f8, %lo(var_80A5E744)($at) 
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f10                  # $f10 = -4.00
    sw      t0, 0x014C(a0)             # 0000014C
    swc1    $f8, 0x006C(a0)            # 0000006C
    swc1    $f10, 0x0070(a0)           # 00000070
lbl_80A5E58C:
    jr      $ra                        
    nop


func_80A5E594:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x014C(a0)             # 0000014C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E5B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lbu     t6, 0x1C27(a1)             # 00001C27
    lw      a0, 0x0018($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    beql    t6, $zero, lbl_80A5E604    
    lw      $ra, 0x0014($sp)           
    jal     func_80022438              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t7, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    lh      a1, 0x0140(t7)             # 00000140
    lw      $ra, 0x0014($sp)           
lbl_80A5E604:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A5E610:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    lh      a1, 0x0140(t6)             # 00000140
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80A5E660: .word 0x010F0600, 0x00000010, 0x00010000, 0x00000150
.word func_80A5DFCC
.word func_80A5E14C
.word func_80A5E594
.word 0x00000000
var_80A5E680: .word \
0x00C6010B, 0x00DC00BE, 0x00DB00DB, 0x00AA0158, \
0x017F017F, 0x017F017F, 0x00BD00AA
var_80A5E69C: .word \
0x00000044, 0x002B0015, 0x0029002A, 0x0001005F, \
0x006C006D, 0x006E0070, 0x00130001
var_80A5E6B8: .word \
0x000F0015, 0x002A0030, 0x00370038, 0x00420058, \
0x00000000, 0x00000000, 0x00000000
var_80A5E6D4: .word 0x00000000
var_80A5E6D8: .word 0x3E4CCCCD
var_80A5E6DC: .word 0x00000000
var_80A5E6E0: .word 0x00000000
var_80A5E6E4: .word 0x3D4CCCCD, 0x00000000
var_80A5E6EC: .word 0xFFFFFF00
var_80A5E6F0: .word 0xFF323200, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A5E700: .word var_80A5E098
.word lbl_80A5E138
.word lbl_80A5E138
.word lbl_80A5E138
.word lbl_80A5E138
.word lbl_80A5E138
.word var_80A5E0D4
.word var_80A5E100
.word var_80A5E100
.word var_80A5E100
.word var_80A5E100
.word var_80A5E100
.word var_80A5E100
var_80A5E734: .word 0x3E051EB8
var_80A5E738: .word 0xBD4CCCCD
var_80A5E73C: .word 0xBCCCCCCD
var_80A5E740: .word 0xBDCCCCCD
var_80A5E744: .word 0xBDCCCCCD, 0x00000000, 0x00000000

