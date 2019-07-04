.section .text
func_80AC6980:
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


func_80AC69D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xC4C8             # a2 = 0600C4C8
    lw      a0, 0x0018($sp)            
    jal     func_80AC6980              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80AC6C90)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80AC6C90)  # a1 = 80AC6C90
    jal     func_80063F7C              
    lw      a0, 0x0018($sp)            
    jal     func_80AC6A54              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6A20:
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


func_80AC6A54:
    lui     t6, %hi(func_80AC6A68)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6A68) # t6 = 80AC6A68
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80AC6A68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AC6AB8               
    lw      $ra, 0x0014($sp)           
    lwc1    $f0, 0x0094(a0)            # 00000094
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80AC6AB8               
    lw      $ra, 0x0014($sp)           
    jal     func_80AC6AC4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80AC6AB8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6AC4:
    lui     t6, %hi(func_80AC6AD8)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6AD8) # t6 = 80AC6AD8
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80AC6AD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6              
    lui     a2, 0x4040                 # a2 = 40400000
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80AC6B34    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80AC6B50              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2837          # a1 = 00002837
    beq     $zero, $zero, lbl_80AC6B44 
    lw      $ra, 0x0014($sp)           
lbl_80AC6B34:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2036          # a1 = 00002036
    lw      $ra, 0x0014($sp)           
lbl_80AC6B44:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6B50:
    lui     t6, %hi(func_80AC6B64)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6B64) # t6 = 80AC6B64
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80AC6B64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f6, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AC6B94               
    lw      $ra, 0x0014($sp)           
    jal     func_80AC6BA0              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80AC6B94:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6BA0:
    lui     t6, %hi(func_80AC6BB4)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6BB4) # t6 = 80AC6BB4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80AC6BB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_8006385C              
    lui     a2, 0x4040                 # a2 = 40400000
    beq     v0, $zero, lbl_80AC6BFC    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80AC6A54              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2837          # a1 = 00002837
    beq     $zero, $zero, lbl_80AC6C0C 
    lw      $ra, 0x0014($sp)           
lbl_80AC6BFC:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2036          # a1 = 00002036
    lw      $ra, 0x0014($sp)           
lbl_80AC6C0C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6C18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC6C40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC0A0             # a1 = 0600C0A0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80AC6C70: .word 0x015A0100, 0x00000000, 0x00F10000, 0x00000158
.word func_80AC69D8
.word func_80AC6A20
.word func_80AC6C18
.word func_80AC6C40
var_80AC6C90: .word 0xC8500064, 0xB0F403E8, 0xB0F800C8, 0x30FC03E8

.section .rodata


