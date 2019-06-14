#include <mips.h>
.set noreorder
.set noat

.section .text
func_808EB2F0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    lui     $at, %hi(var_808EB9A0)     # $at = 808F0000
    lwc1    $f0, %lo(var_808EB9A0)($at) 
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_808EB9A4)     # $at = 808F0000
    lwc1    $f4, %lo(var_808EB9A4)($at) 
    sh      $zero, 0x0140(s0)          # 00000140
    addiu   a1, s0, 0x0144             # a1 = 00000144
    swc1    $f4, 0x0054(s0)            # 00000054
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x002C($sp)            
    lui     a3, %hi(var_808EB940)      # a3 = 808F0000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_808EB940)  # a3 = 808EB940
    lw      a0, 0x002C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     a2, %hi(var_808EB96C)      # a2 = 808F0000
    addiu   a2, a2, %lo(var_808EB96C)  # a2 = 808EB96C
    trunc.w.s $f8, $f6                   
    addiu   a0, s0, 0x0098             # a0 = 00000098
    or      a1, $zero, $zero           # a1 = 00000000
    mfc1    t7, $f8                    
    jal     func_80050344              
    sh      t7, 0x018C(s0)             # 0000018C
    lui     t8, %hi(func_808EB42C)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808EB42C) # t8 = 808EB42C
    sw      t8, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808EB390:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0144             # a1 = 00000144
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EB3BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    jal     func_8002154C              
    addiu   a2, v0, 0x0024             # a2 = 00000024
    lwc1    $f0, 0x0018($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    abs.s   $f0, $f0                   
    lui     $at, 0x42F0                # $at = 42F00000
    c.lt.s  $f0, $f4                   
    lwc1    $f0, 0x0020($sp)           
    lw      $ra, 0x0014($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
    bc1f    lbl_808EB424               
    nop
    mtc1    $at, $f6                   # $f6 = 120.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_808EB424               
    nop
    beq     $zero, $zero, lbl_808EB424 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808EB424:
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_808EB42C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_808EB3BC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_808EB464    
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_808EB7DC)     # t6 = 808F0000
    lui     t8, %hi(func_808EB474)     # t8 = 808F0000
    addiu   t6, t6, %lo(func_808EB7DC) # t6 = 808EB7DC
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, t8, %lo(func_808EB474) # t8 = 808EB474
    sw      t6, 0x0134(a0)             # 00000134
    sh      t7, 0x001C(a0)             # 0000001C
    sw      t8, 0x013C(a0)             # 0000013C
lbl_808EB464:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EB474:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t7, %hi(func_808EB4A8)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808EB4A8) # t7 = 808EB4A8
    beq     v0, $zero, lbl_808EB494    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x001C(a0)             # 0000001C
    lh      v0, 0x001C(a0)             # 0000001C
lbl_808EB494:
    bne     v0, $zero, lbl_808EB4A0    
    nop
    sw      t7, 0x013C(a0)             # 0000013C
lbl_808EB4A0:
    jr      $ra                        
    nop


func_808EB4A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_808EB3BC              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_808EB4E8    
    lw      a3, 0x0018($sp)            
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a2, 0x3CCC                 # a2 = 3CCC0000
    ori     a2, a2, 0xCCCC             # a2 = 3CCCCCCC
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_8006385C              
    addiu   a0, a3, 0x0054             # a0 = 00000054
    beq     $zero, $zero, lbl_808EB52C 
    lw      $ra, 0x0014($sp)           
lbl_808EB4E8:
    lui     $at, %hi(var_808EB9A8)     # $at = 808F0000
    lwc1    $f0, %lo(var_808EB9A8)($at) 
    addiu   a0, a3, 0x0054             # a0 = 00000054
    sw      a3, 0x0018($sp)            
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_808EB524    
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_808EB42C)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808EB42C) # t6 = 808EB42C
    sw      $zero, 0x0134(a3)          # 00000134
    beq     $zero, $zero, lbl_808EB528 
    sw      t6, 0x013C(a3)             # 0000013C
lbl_808EB524:
    sh      $zero, 0x001C(a3)          # 0000001C
lbl_808EB528:
    lw      $ra, 0x0014($sp)           
lbl_808EB52C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EB538:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    beq     v0, $zero, lbl_808EB564    
    lw      a1, 0x0020($sp)            
    beq     $zero, $zero, lbl_808EB578 
    lh      a3, 0x00B6(a1)             # 000000B6
lbl_808EB564:
    lh      a3, 0x00B6(a1)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a3, a3, $at                
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
lbl_808EB578:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      a0, 0x0024($sp)            
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808EB5A0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    jal     func_8002154C              
    addiu   a2, v0, 0x0024             # a2 = 00000024
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f0                   # $f0 = -70.00
    lwc1    $f2, 0x0030($sp)           
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808EB5F4               
    mtc1    $at, $f12                  # $f12 = 70.00
    beq     $zero, $zero, lbl_808EB618 
    swc1    $f0, 0x0030($sp)           
    mtc1    $at, $f12                  # $f12 = 70.00
lbl_808EB5F4:
    nop
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_808EB614               
    mov.s   $f0, $f2                   
    beq     $zero, $zero, lbl_808EB614 
    mov.s   $f0, $f12                  
    mov.s   $f0, $f2                   
lbl_808EB614:
    swc1    $f0, 0x0030($sp)           
lbl_808EB618:
    lh      v0, 0x001C(s0)             # 0000001C
    lwc1    $f6, 0x0038($sp)           
    bnel    v0, $zero, lbl_808EB670    
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_808EB65C               
    mtc1    $at, $f10                  # $f10 = 25.00
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f8                   # $f8 = -25.00
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    swc1    $f8, 0x0038($sp)           
    beq     $zero, $zero, lbl_808EB684 
    sh      t6, 0x001C(s0)             # 0000001C
    mtc1    $at, $f10                  # $f10 = -25.00
lbl_808EB65C:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    swc1    $f10, 0x0038($sp)          
    beq     $zero, $zero, lbl_808EB684 
    sh      t7, 0x001C(s0)             # 0000001C
    mtc1    v0, $f16                   # $f16 = 0.00
lbl_808EB670:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    swc1    $f6, 0x0038($sp)           
lbl_808EB684:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0028($sp)           
    lwc1    $f10, 0x0030($sp)          
    lwc1    $f2, 0x0028($sp)           
    lwc1    $f4, 0x0038($sp)           
    mul.s   $f16, $f10, $f0            
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f4, $f2              
    add.s   $f18, $f8, $f16            
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f10, $f18, $f6            
    trunc.w.s $f8, $f10                  
    mfc1    t9, $f8                    
    nop
    sh      t9, 0x018A(s0)             # 0000018A
    lwc1    $f4, 0x0030($sp)           
    lwc1    $f10, 0x0038($sp)          
    mul.s   $f18, $f4, $f2             
    sub.s   $f6, $f16, $f18            
    mul.s   $f8, $f10, $f0             
    add.s   $f4, $f6, $f8              
    trunc.w.s $f16, $f4                  
    mfc1    t1, $f16                   
    nop
    sh      t1, 0x018E(s0)             # 0000018E
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808EB704:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x0140(s0)             # 00000140
    lbu     v0, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bgez    t7, lbl_808EB740           
    andi    t8, t7, 0x0007             # t8 = 00000001
    beq     t8, $zero, lbl_808EB740    
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF9
lbl_808EB740:
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_808EB75C    
    sh      t8, 0x0140(s0)             # 00000140
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x0154(s0)             # 00000154
    jal     func_808EB538              
    or      a1, s1, $zero              # a1 = 00000000
lbl_808EB75C:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t2, 0x013C(s0)             # 0000013C
    lui     t1, %hi(func_808EB4A8)     # t1 = 808F0000
    addiu   t1, t1, %lo(func_808EB4A8) # t1 = 808EB4A8
    bne     t1, t2, lbl_808EB7C8       
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EB5A0              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0144             # a2 = 00000144
    sw      a2, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2034          # a1 = 00002034
lbl_808EB7C8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808EB7DC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lw      a2, 0x0000(t6)             # 00000000
    lw      a0, 0x02D0(a2)             # 000002D0
    jal     func_8007DFBC              
    sw      a2, 0x0030($sp)            
    lw      a2, 0x0030($sp)            
    addiu   t7, v0, 0x0008             # t7 = 00000008
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0038($sp)            
    lui     a3, %hi(var_808EB974)      # a3 = 808F0000
    lui     t7, 0x8012                 # t7 = 80120000
    lh      t1, 0x0140(t9)             # 00000140
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, t1,  2                 
    addu    a3, a3, t2                 
    lw      a3, %lo(var_808EB974)(a3)  
    lui     t2, 0xFA00                 # t2 = FA000000
    ori     t2, t2, 0x0001             # t2 = FA000001
    sll     t4, a3,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, a3, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t4, 0xFFFF                 # t4 = FFFF0000
    ori     t4, t4, 0x0096             # t4 = FFFF0096
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t3, 0xFF00                 # t3 = FF000000
    ori     t3, t3, 0x00FF             # t3 = FF0000FF
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a2)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x003C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    sw      a2, 0x0030($sp)            
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      t0, 0x001C($sp)            
    lw      a2, 0x0030($sp)            
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0xDA80             # t4 = 0600DA80
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_808EB920: .word 0x000C0100, 0x00000000, 0x002C0000, 0x00000190
.word func_808EB2F0
.word func_808EB390
.word func_808EB704
.word 0x00000000
var_808EB940: .word \
0x0A110009, 0x20010000, 0x00000000, 0x20000000, \
0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, \
0x001E0053, 0x00000000, 0x00000000
var_808EB96C: .word 0x01000050, 0x0064FF00
var_808EB974: .word \
0x06015D20, 0x06016120, 0x06016520, 0x06016920, \
0x06016D20, 0x06017120, 0x06017520, 0x06017920, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808EB9A0: .word 0x3DF5C28F
var_808EB9A4: .word 0x3C23D70A
var_808EB9A8: .word 0x3C23D70A, 0x00000000

