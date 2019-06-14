#include <mips.h>
.set noreorder
.set noat

.section .text
func_8097AEE0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_8097B200)      # a1 = 80980000
    addiu   a1, a1, %lo(var_8097B200)  # a1 = 8097B200
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0069          # a1 = 00000069
    slti    $at, t6, 0x0003            
    beql    $at, $zero, lbl_8097AF4C   
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x008D          # a1 = 0000008D
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at                
    beq     $zero, $zero, lbl_8097AF5C 
    sb      v0, 0x0159(s0)             # 00000159
    lui     $at, 0x0001                # $at = 00010000
lbl_8097AF4C:
    ori     $at, $at, 0x17A4           # $at = 000117A4
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at                
    sb      v0, 0x0159(s0)             # 00000159
lbl_8097AF5C:
    lb      t7, 0x0159(s0)             # 00000159
    lui     t8, %hi(func_8097AFCC)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097AFCC) # t8 = 8097AFCC
    bgezl   t7, lbl_8097AF84           
    sw      t8, 0x0154(s0)             # 00000154
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8097AF88 
    lw      $ra, 0x001C($sp)           
    sw      t8, 0x0154(s0)             # 00000154
lbl_8097AF84:
    lw      $ra, 0x001C($sp)           
lbl_8097AF88:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8097AF98:
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


func_8097AFCC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at                
    jal     func_80081688              
    lb      a1, 0x0159(s0)             # 00000159
    beq     v0, $zero, lbl_8097B088    
    lui     t7, %hi(func_8097B144)     # t7 = 80980000
    lb      t6, 0x0159(s0)             # 00000159
    addiu   t7, t7, %lo(func_8097B144) # t7 = 8097B144
    sw      t7, 0x0134(s0)             # 00000134
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80020FA4              
    sb      t6, 0x001E(s0)             # 0000001E
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s1                 
    lbu     t8, 0x1CC1(t8)             # 00011CC1
    lui     t2, %hi(func_8097B110)     # t2 = 80980000
    lui     t9, %hi(func_8097B09C)     # t9 = 80980000
    beq     t8, $zero, lbl_8097B084    
    addiu   t2, t2, %lo(func_8097B110) # t2 = 8097B110
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   t9, t9, %lo(func_8097B09C) # t9 = 8097B09C
    lui     a0, %hi(var_8097B204)      # a0 = 80980000
    sll     t1, t0,  2                 
    sw      t9, 0x0154(s0)             # 00000154
    addu    a0, a0, t1                 
    lw      a0, %lo(var_8097B204)(a0)  
    beql    a0, $zero, lbl_8097B08C    
    lw      $ra, 0x001C($sp)           
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0024($sp)            
    sw      v0, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_8097B08C 
    lw      $ra, 0x001C($sp)           
lbl_8097B084:
    sw      t2, 0x0154(s0)             # 00000154
lbl_8097B088:
    lw      $ra, 0x001C($sp)           
lbl_8097B08C:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8097B09C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x1C27(s0)             # 00001C27
    addiu   a1, s0, 0x0810             # a1 = 00000810
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    beq     t6, $zero, lbl_8097B0E4    
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0004(a3)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x013C(a3)             # 0000013C
    ori     t8, t7, 0x0080             # t8 = 00000080
    jal     func_800314D8              
    sw      t8, 0x0004(a3)             # 00000004
    beq     $zero, $zero, lbl_8097B100 
    lw      $ra, 0x001C($sp)           
lbl_8097B0E4:
    lw      t9, 0x0004(a3)             # 00000004
    addiu   a1, s0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    and     t0, t9, $at                
    jal     func_80031530              
    sw      t0, 0x0004(a3)             # 00000004
    lw      $ra, 0x001C($sp)           
lbl_8097B100:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8097B110:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8097B120:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8097B144:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lui     a1, %hi(var_8097B238)      # a1 = 80980000
    andi    t7, t6, 0x0080             # t7 = 00000000
    bne     t7, $at, lbl_8097B190      
    lw      a0, 0x001C($sp)            
    lh      t8, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    jal     func_800280C8              
    lw      a1, %lo(var_8097B238)(a1)  
    beq     $zero, $zero, lbl_8097B1B0 
    lw      t2, 0x0018($sp)            
lbl_8097B190:
    lh      t0, 0x001C(a2)             # 0000001C
    lui     a1, %hi(var_8097B238)      # a1 = 80980000
    sw      a2, 0x0018($sp)            
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    jal     func_80028048              
    lw      a1, %lo(var_8097B238)(a1)  
    lw      t2, 0x0018($sp)            
lbl_8097B1B0:
    lw      a0, 0x001C($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    lh      t3, 0x001C(t2)             # 0000001C
    bnel    t3, $zero, lbl_8097B1D0    
    lw      $ra, 0x0014($sp)           
    jal     func_800280C8              
    addiu   a1, a1, 0x1250             # a1 = 06001250
    lw      $ra, 0x0014($sp)           
lbl_8097B1D0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_8097B1E0: .word 0x00AE0600, 0x000000B0, 0x00010000, 0x0000015C
.word func_8097AEE0
.word func_8097AF98
.word func_8097B120
.word 0x00000000
var_8097B200: .word 0x48500064
var_8097B204: .word \
0x06001830, 0x06001AB8, 0x00000000, 0x06004330, \
0x060044D0, 0x00000000, 0x06004780, 0x06004940, \
0x00000000, 0x06004B00, 0x00000000, 0x06004CC0, \
0x00000000
var_8097B238: .word \
0x06001060, 0x06001920, 0x060003F0, 0x060040F0, \
0x060043B0, 0x06001120, 0x060045A0, 0x060047F0, \
0x060018F0, 0x060049B0, 0x06003CF0, 0x06004B70, \
0x06002ED0, 0x00000000

.section .rodata


