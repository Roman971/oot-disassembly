#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B680D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80B68D44)      # a1 = 80B70000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80B68D44)  # a1 = 80B68D44
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x4618             # a0 = 06004618
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      t7, 0x0008(s0)             # 00000008
    lw      a0, 0x0034($sp)            
    lw      t6, 0x000C(s0)             # 0000000C
    sw      t7, 0x0158(s0)             # 00000158
    lw      t7, 0x0010(s0)             # 00000010
    lui     t8, %hi(func_80B686B4)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B686B4) # t8 = 80B686B4
    sw      t8, 0x0154(s0)             # 00000154
    sw      t6, 0x015C(s0)             # 0000015C
    sw      t7, 0x0160(s0)             # 00000160
    lw      a3, 0x0024($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lui     $at, %hi(var_80B68D80)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B68D80)($at) 
    lwc1    $f0, 0x0024(s0)            # 00000024
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    lui     $at, %hi(var_80B68D84)     # $at = 80B70000
    c.eq.s  $f4, $f0                   
    nop
    bc1f    lbl_80B68184               
    nop
    sh      $zero, 0x001C(s0)          # 0000001C
    lui     $at, %hi(var_80B691C0)     # $at = 80B70000
    beq     $zero, $zero, lbl_80B681A8 
    sb      t9, %lo(var_80B691C0)($at) 
lbl_80B68184:
    lwc1    $f6, %lo(var_80B68D84)($at) 
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, %hi(var_80B691C1)     # $at = 80B70000
    c.eq.s  $f6, $f0                   
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    bc1fl   lbl_80B681AC               
    lw      $ra, 0x001C($sp)           
    sh      t0, 0x001C(s0)             # 0000001C
    sb      t1, %lo(var_80B691C1)($at) 
lbl_80B681A8:
    lw      $ra, 0x001C($sp)           
lbl_80B681AC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B681BC:
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


func_80B681F0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f0                   # $f0 = 120.00
    addiu   v0, $sp, 0x001C            # v0 = FFFFFFE4
    addiu   v1, $sp, 0x0004            # v1 = FFFFFFCC
    lui     t6, %hi(var_80B68D48)      # t6 = 80B70000
    addiu   t6, t6, %lo(var_80B68D48)  # t6 = 80B68D48
    lw      t8, 0x0000(t6)             # 80B68D48
    lui     t9, %hi(var_80B68D60)      # t9 = 80B70000
    addiu   t9, t9, %lo(var_80B68D60)  # t9 = 80B68D60
    sw      t8, 0x0000(v0)             # FFFFFFE4
    lw      t7, 0x0004(t6)             # 80B68D4C
    lui     $at, %hi(var_80B691C0)     # $at = 80B70000
    addu    t3, v0, a1                 
    sw      t7, 0x0004(v0)             # FFFFFFE8
    lw      t8, 0x0008(t6)             # 80B68D50
    sw      t8, 0x0008(v0)             # FFFFFFEC
    lw      t7, 0x000C(t6)             # 80B68D54
    sw      t7, 0x000C(v0)             # FFFFFFF0
    lw      t8, 0x0010(t6)             # 80B68D58
    sw      t8, 0x0010(v0)             # FFFFFFF4
    lhu     t8, 0x0014(t6)             # 80B68D5C
    sh      t8, 0x0014(v0)             # FFFFFFF8
    lw      t1, 0x0000(t9)             # 80B68D60
    sw      t1, 0x0000(v1)             # FFFFFFCC
    lw      t0, 0x0004(t9)             # 80B68D64
    sw      t0, 0x0004(v1)             # FFFFFFD0
    lw      t1, 0x0008(t9)             # 80B68D68
    sw      t1, 0x0008(v1)             # FFFFFFD4
    lw      t0, 0x000C(t9)             # 80B68D6C
    sw      t0, 0x000C(v1)             # FFFFFFD8
    lw      t1, 0x0010(t9)             # 80B68D70
    sw      t1, 0x0010(v1)             # FFFFFFDC
    lhu     t1, 0x0014(t9)             # 80B68D74
    sh      t1, 0x0014(v1)             # FFFFFFE0
    lh      t2, 0x001C(a0)             # 0000001C
    addu    $at, $at, t2               
    sb      a1, %lo(var_80B691C0)($at) 
    lbu     t4, 0x0000(t3)             # 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80B682A8           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80B682A8:
    mul.s   $f10, $f6, $f0             
    lui     $at, %hi(var_80B68D88)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B68D88)($at) 
    addu    t5, v1, a1                 
    lui     $at, 0xC407                # $at = C4070000
    mtc1    $at, $f4                   # $f4 = -540.00
    lui     $at, 0x4F80                # $at = 4F800000
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0158(a0)           # 00000158
    lbu     t6, 0x0000(t5)             # 00000000
    mtc1    t6, $f8                    # $f8 = 0.00
    bgez    t6, lbl_80B682E8           
    cvt.s.w $f6, $f8                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10             
lbl_80B682E8:
    mul.s   $f16, $f6, $f0             
    sub.s   $f18, $f4, $f16            
    swc1    $f18, 0x0160(a0)           # 00000160
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80B682FC:
    lui     v1, %hi(var_80B691C0)      # v1 = 80B70000
    lui     v0, %hi(var_80B691C2)      # v0 = 80B70000
    addiu   v0, v0, %lo(var_80B691C2)  # v0 = 80B691C2
    addiu   v1, v1, %lo(var_80B691C0)  # v1 = 80B691C0
    lbu     t6, 0x0000(v1)             # 80B691C0
lbl_80B68310:
    addiu   v1, v1, 0x0001             # v1 = 80B691C1
    bne     a0, t6, lbl_80B68324       
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B68324:
    bnel    v1, v0, lbl_80B68310       
    lbu     t6, 0x0000(v1)             # 80B691C1
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80B68338:
    lh      t6, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80B691C0)      # t7 = 80B70000
    addu    t7, t7, t6                 
    lbu     t7, %lo(var_80B691C0)(t7)  
    sltiu   $at, t7, 0x0016            
    beq     $at, $zero, lbl_80B68378   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80B68D8C)     # $at = 80B70000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B68D8C)($at) 
    jr      t7                         
    nop
var_80B68368:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80B68370:
    jr      $ra                        
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B68378:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80B68384:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0148(a2)             # 00000148
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    bne     v0, $zero, lbl_80B68460    
    nop
    lh      t6, 0x001C(a2)             # 0000001C
    lui     t7, %hi(var_80B691C0)      # t7 = 80B70000
    addu    t7, t7, t6                 
    lbu     t7, %lo(var_80B691C0)(t7)  
    addiu   t8, t7, 0xFFFD             # t8 = 80B6FFFD
    sltiu   $at, t8, 0x0011            
    beq     $at, $zero, lbl_80B686A4   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80B68DE4)     # $at = 80B70000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80B68DE4)($at) 
    jr      t8                         
    nop
var_80B683D4:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B683E8:
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    jal     func_80B682FC              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80B68410    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
lbl_80B68410:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68424:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68438:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B6844C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
lbl_80B68460:
    bnel    v0, $at, lbl_80B6852C      
    addiu   $at, $zero, 0x4000         # $at = 00004000
    lh      t9, 0x001C(a2)             # 0000001C
    lui     t0, %hi(var_80B691C0)      # t0 = 80B70000
    addu    t0, t0, t9                 
    lbu     t0, %lo(var_80B691C0)(t0)  
    addiu   t1, t0, 0xFFFE             # t1 = 80B6FFFE
    sltiu   $at, t1, 0x0011            
    beq     $at, $zero, lbl_80B686A4   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80B68E28)     # $at = 80B70000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80B68E28)($at) 
    jr      t1                         
    nop
var_80B6849C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B684B0:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B684C4:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B684D8:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B684EC:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68500:
    addiu   a0, $zero, 0x0011          # a0 = 00000011
    jal     func_80B682FC              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_80B686A4    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x4000         # $at = 00004000
lbl_80B6852C:
    bnel    v0, $at, lbl_80B685E4      
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    lh      t2, 0x001C(a2)             # 0000001C
    lui     t3, %hi(var_80B691C0)      # t3 = 80B70000
    addu    t3, t3, t2                 
    lbu     t3, %lo(var_80B691C0)(t3)  
    addiu   t4, t3, 0xFFFA             # t4 = 80B6FFFA
    sltiu   $at, t4, 0x000A            
    beq     $at, $zero, lbl_80B686A4   
    sll     t4, t4,  2                 
    lui     $at, %hi(var_80B68E6C)     # $at = 80B70000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80B68E6C)($at) 
    jr      t4                         
    nop
var_80B68568:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B6857C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0011          # a1 = 00000011
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68590:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B685A4:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B685B8:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B685CC:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0013          # a1 = 00000013
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
lbl_80B685E4:
    bnel    v0, $at, lbl_80B686A8      
    lw      $ra, 0x0014($sp)           
    lh      t5, 0x001C(a2)             # 0000001C
    lui     t6, %hi(var_80B691C0)      # t6 = 80B70000
    addu    t6, t6, t5                 
    lbu     t6, %lo(var_80B691C0)(t6)  
    addiu   t7, t6, 0xFFFA             # t7 = 80B6FFFA
    sltiu   $at, t7, 0x000A            
    beq     $at, $zero, lbl_80B686A4   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80B68E94)     # $at = 80B70000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B68E94)($at) 
    jr      t7                         
    nop
var_80B68620:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68634:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68648:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B6865C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
var_80B68670:
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    jal     func_80B682FC              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80B68698    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_80B686A8 
    lw      $ra, 0x0014($sp)           
lbl_80B68698:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B681F0              
    addiu   a1, $zero, 0x0008          # a1 = 00000008
lbl_80B686A4:
    lw      $ra, 0x0014($sp)           
lbl_80B686A8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B686B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lwc1    $f4, 0x0140(s0)            # 00000140
    lw      t6, 0x0024($sp)            
    c.eq.s  $f0, $f4                   
    lw      v0, 0x1C44(t6)             # 00001C44
    bc1tl   lbl_80B68760               
    lw      $ra, 0x001C($sp)           
    lw      t7, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t8, t7, $at                
    sw      t8, 0x0670(v0)             # 00000670
    lwc1    $f6, 0x0140(s0)            # 00000140
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B68754               
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80B68384              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528              
    addiu   a1, s0, 0x0158             # a1 = 00000158
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80B68754               
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t9, %hi(func_80B68988)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B68988) # t9 = 80B68988
    sw      t9, 0x0154(s0)             # 00000154
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80B68754:
    nop
    swc1    $f0, 0x0140(s0)            # 00000140
    lw      $ra, 0x001C($sp)           
lbl_80B68760:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B68770:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0140(a3)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   a0, a3, 0x0028             # a0 = 00000028
    c.eq.s  $f0, $f4                   
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1tl   lbl_80B687B4               
    lw      a1, 0x000C(a3)             # 0000000C
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at                
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f0, 0x0140(a3)            # 00000140
    lw      a1, 0x000C(a3)             # 0000000C
lbl_80B687B4:
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $zero, lbl_80B68824    
    lw      a3, 0x0018($sp)            
    lw      t9, 0x0008(a3)             # 00000008
    lh      v0, 0x001C(a3)             # 0000001C
    lw      t8, 0x000C(a3)             # 0000000C
    sw      t9, 0x0158(a3)             # 00000158
    lw      t9, 0x0010(a3)             # 00000010
    lui     t0, %hi(func_80B686B4)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B686B4) # t0 = 80B686B4
    swc1    $f0, 0x0068(a3)            # 00000068
    sw      t0, 0x0154(a3)             # 00000154
    sw      t8, 0x015C(a3)             # 0000015C
    beq     v0, $zero, lbl_80B6880C    
    sw      t9, 0x0160(a3)             # 00000160
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B6881C      
    addiu   t2, $zero, 0x000E          # t2 = 0000000E
    beq     $zero, $zero, lbl_80B68828 
    lw      $ra, 0x0014($sp)           
lbl_80B6880C:
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    lui     $at, %hi(var_80B691C0)     # $at = 80B70000
    beq     $zero, $zero, lbl_80B68824 
    sb      t1, %lo(var_80B691C0)($at) 
lbl_80B6881C:
    lui     $at, %hi(var_80B691C1)     # $at = 80B70000
    sb      t2, %lo(var_80B691C1)($at) 
lbl_80B68824:
    lw      $ra, 0x0014($sp)           
lbl_80B68828:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B68834:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x4396                # $at = 43960000
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $at, $f16                  # $f16 = 300.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    add.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x0028             # a0 = 00000028
    sub.s   $f18, $f10, $f16           
    swc1    $f8, 0x0060(s0)            # 00000060
    lw      a2, 0x0060(s0)             # 00000060
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80B688D8    
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f8, 0x000C(s0)            # 0000000C
    mtc1    $at, $f10                  # $f10 = 100.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0008(s0)            # 00000008
    sub.s   $f16, $f8, $f10            
    lwc1    $f18, 0x0010(s0)           # 00000010
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f18, 0x002C(s0)           # 0000002C
    jal     func_8007943C              
    lw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80B688CC    
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80B688CC:
    lui     t6, %hi(func_80B68770)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B68770) # t6 = 80B68770
    sw      t6, 0x0154(s0)             # 00000154
lbl_80B688D8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B688EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    add.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x0028             # a0 = 00000028
    sub.s   $f18, $f10, $f16           
    swc1    $f8, 0x0060(s0)            # 00000060
    lw      a2, 0x0060(s0)             # 00000060
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    beql    v0, $zero, lbl_80B68978    
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0060(s0)            # 00000060
    jal     func_8007943C              
    lw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80B68968    
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80B68968:
    lui     t6, %hi(func_80B686B4)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B686B4) # t6 = 80B686B4
    sw      t6, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)           
lbl_80B68978:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B68988:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x006C($sp)            
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_8006385C              
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0158(s0)             # 00000158
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             # 00000068
    lw      a1, 0x0160(s0)             # 00000160
    lw      a2, 0x0068(s0)             # 00000068
    sw      v0, 0x0064($sp)            
    jal     func_8006385C              
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      v1, 0x0064($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    and     v1, v1, v0                 
    beq     v1, $zero, lbl_80B68A70    
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0158(s0)            # 00000158
    jal     func_80022FD0              
    swc1    $f8, 0x0160(s0)            # 00000160
    jal     func_80B68338              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B68A38    
    lui     t6, %hi(func_80B686B4)     # t6 = 80B70000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B68A58      
    lui     t7, %hi(func_80B68834)     # t7 = 80B70000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B68A64      
    lui     t8, %hi(func_80B688EC)     # t8 = 80B70000
    beq     $zero, $zero, lbl_80B68CA8 
    lw      $ra, 0x0034($sp)           
lbl_80B68A38:
    addiu   t6, t6, %lo(func_80B686B4) # t6 = 80B686B4
    sw      t6, 0x0154(s0)             # 00000154
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    beq     $zero, $zero, lbl_80B68CA8 
    lw      $ra, 0x0034($sp)           
lbl_80B68A58:
    addiu   t7, t7, %lo(func_80B68834) # t7 = FFFF8834
    beq     $zero, $zero, lbl_80B68CA4 
    sw      t7, 0x0154(s0)             # 00000154
lbl_80B68A64:
    addiu   t8, t8, %lo(func_80B688EC) # t8 = FFFF88EC
    beq     $zero, $zero, lbl_80B68CA4 
    sw      t8, 0x0154(s0)             # 00000154
lbl_80B68A70:
    mtc1    $at, $f10                  # $f10 = 0.00
    lwc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x42F0                # $at = 42F00000
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B68CA8               
    lw      $ra, 0x0034($sp)           
    mtc1    $at, $f12                  # $f12 = 120.00
    jal     func_80026D90              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0048($sp)           
    mov.s   $f20, $f0                  
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f18                  # $f18 = 1.50
    nop
    add.s   $f4, $f18, $f20            
    neg.s   $f6, $f4                   
    mul.s   $f8, $f0, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x004C($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    add.s   $f16, $f0, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0050($sp)          
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f18                  # $f18 = 1.50
    nop
    add.s   $f4, $f18, $f20            
    neg.s   $f6, $f4                   
    mul.s   $f8, $f0, $f6              
    swc1    $f8, 0x0054($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lwc1    $f6, 0x0048($sp)           
    lwc1    $f10, 0x0024(s0)           # 00000024
    mul.s   $f18, $f16, $f20           
    sub.s   $f4, $f10, $f18            
    mul.s   $f8, $f0, $f6              
    sub.s   $f16, $f4, $f8             
    swc1    $f16, 0x0058($sp)          
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0                  
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f18                  # $f18 = 60.00
    lwc1    $f8, 0x0048($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f6, $f18, $f20            
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    mul.s   $f16, $f0, $f8             
    sub.s   $f4, $f10, $f6             
    add.s   $f18, $f16, $f4            
    swc1    $f18, 0x0060($sp)          
    lwc1    $f10, 0x0028(s0)           # 00000028
    jal     func_80063BF0              
    swc1    $f10, 0x005C($sp)          
    lui     t9, %hi(var_80B68D30)      # t9 = 80B70000
    lui     t0, %hi(var_80B68D34)      # t0 = 80B70000
    addiu   t0, t0, %lo(var_80B68D34)  # t0 = 80B68D34
    addiu   t9, t9, %lo(var_80B68D30)  # t9 = 80B68D30
    lui     a3, %hi(var_80B68D38)      # a3 = 80B70000
    addiu   t1, $zero, 0x00FA          # t1 = 000000FA
    sw      t1, 0x0018($sp)            
    addiu   a3, a3, %lo(var_80B68D38)  # a3 = 80B68D38
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    lw      a0, 0x006C($sp)            
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFE4
    jal     func_8001BD94              
    sw      v0, 0x001C($sp)            
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    jal     func_80026D90              
    nop
    swc1    $f0, 0x0048($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f18, 0x0048($sp)          
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f16, $f8, $f20            
    sub.s   $f4, $f6, $f16             
    mul.s   $f10, $f0, $f18            
    add.s   $f8, $f10, $f4             
    swc1    $f8, 0x0058($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0                  
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lwc1    $f4, 0x0048($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f18, $f16, $f20           
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    mul.s   $f8, $f0, $f4              
    sub.s   $f10, $f6, $f18            
    sub.s   $f16, $f10, $f8            
    jal     func_80063BF0              
    swc1    $f16, 0x0060($sp)          
    lui     t2, %hi(var_80B68D30)      # t2 = 80B70000
    lui     t3, %hi(var_80B68D34)      # t3 = 80B70000
    addiu   t3, t3, %lo(var_80B68D34)  # t3 = 80B68D34
    addiu   t2, t2, %lo(var_80B68D30)  # t2 = 80B68D30
    lui     a3, %hi(var_80B68D38)      # a3 = 80B70000
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    sw      t4, 0x0018($sp)            
    addiu   a3, a3, %lo(var_80B68D38)  # a3 = 80B68D38
    sw      t2, 0x0010($sp)            
    sw      t3, 0x0014($sp)            
    lw      a0, 0x006C($sp)            
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFE4
    jal     func_8001BD94              
    sw      v0, 0x001C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x00DF          # a1 = 000000DF
lbl_80B68CA4:
    lw      $ra, 0x0034($sp)           
lbl_80B68CA8:
    ldc1    $f20, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80B68CB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B68CDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4420             # a1 = 06004420
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B68D10: .word 0x01B70600, 0x00000030, 0x01790000, 0x00000164
.word func_80B680D0
.word func_80B681BC
.word func_80B68CB8
.word func_80B68CDC
var_80B68D30: .word 0xFAFAFAFF
var_80B68D34: .word 0xB4B4B4FF
var_80B68D38: .word 0x00000000, 0x00000000, 0x00000000
var_80B68D44: .word 0x48500064
var_80B68D48: .word \
0x00000000, 0x00000202, 0x02020303, 0x03040404, \
0x06060606, 0x06060000
var_80B68D60: .word \
0x05040302, 0x01000504, 0x02010601, 0x00050302, \
0x05040302, 0x01000000, 0x00000000, 0x00000000

.section .rodata

var_80B68D80: .word 0x452E8000
var_80B68D84: .word 0x453D8000
var_80B68D88: .word 0x451F8000
var_80B68D8C: .word var_80B68368
.word var_80B68368
.word lbl_80B68378
.word lbl_80B68378
.word lbl_80B68378
.word var_80B68368
.word lbl_80B68378
.word lbl_80B68378
.word var_80B68370
.word lbl_80B68378
.word lbl_80B68378
.word lbl_80B68378
.word lbl_80B68378
.word var_80B68368
.word lbl_80B68378
.word lbl_80B68378
.word var_80B68368
.word lbl_80B68378
.word lbl_80B68378
.word lbl_80B68378
.word var_80B68368
.word var_80B68368
var_80B68DE4: .word var_80B683D4
.word var_80B683D4
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B683E8
.word lbl_80B686A4
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B68424
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B68438
.word lbl_80B686A4
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B6844C
.word var_80B6844C
var_80B68E28: .word var_80B6849C
.word var_80B6849C
.word lbl_80B686A4
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B684B0
.word lbl_80B686A4
.word var_80B684B0
.word lbl_80B686A4
.word var_80B684C4
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B684D8
.word var_80B684D8
.word lbl_80B686A4
.word var_80B684EC
.word var_80B68500
var_80B68E6C: .word var_80B68568
.word var_80B6857C
.word lbl_80B686A4
.word var_80B68590
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B685A4
.word lbl_80B686A4
.word var_80B685B8
.word var_80B685CC
var_80B68E94: .word var_80B68620
.word var_80B68634
.word lbl_80B686A4
.word var_80B68648
.word lbl_80B686A4
.word var_80B68648
.word lbl_80B686A4
.word lbl_80B686A4
.word var_80B6865C
.word var_80B68670
.word 0x00000000

.bss

var_80B691C0: .space 0x01
var_80B691C1: .space 0x01
var_80B691C2: .space 0x0E
