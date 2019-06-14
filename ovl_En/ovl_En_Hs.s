#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA0C70:
    sw      a1, 0x029C(a0)             # 0000029C
    jr      $ra                        
    nop


func_80AA0C7C:
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
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x022C             # t7 = 0000022C
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x05C0             # a3 = 060005C0
    addiu   a2, a2, 0x6260             # a2 = 06006260
    sw      a1, 0x0034($sp)            
    jal     func_8008C788              
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C0             # a1 = 060005C0
    jal     func_8008D2D4              
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80AA16A0)      # a3 = 80AA0000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80AA16A0)  # a3 = 80AA16A0
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, $zero, lbl_80AA0D50    
    lui     a1, %hi(func_80AA1268)     # a1 = 80AA0000
    beq     $zero, $zero, lbl_80AA0D54 
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_80AA0D50:
    sh      t1, 0x001C(s0)             # 0000001C
lbl_80AA0D54:
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_80AA0D98      
    nop
    lui     a1, %hi(func_80AA1268)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA1268) # a1 = 80AA1268
    jal     func_80AA0C70              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x4B3A(t3)            # 8011B4C6
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80AA0DA4    
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA0DA4 
    addiu   t5, $zero, 0x0006          # t5 = 00000006
lbl_80AA0D98:
    jal     func_80AA0C70              
    addiu   a1, a1, %lo(func_80AA1268) # a1 = 00001268
    addiu   t5, $zero, 0x0006          # t5 = 00000006
lbl_80AA0DA4:
    sh      $zero, 0x0298(s0)          # 00000298
    sb      t5, 0x001F(s0)             # 0000001F
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA0DC0:
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


func_80AA0DEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA0E24    
    lw      a0, 0x0018($sp)            
    jal     func_80AA0C70              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80AA0E90 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AA0E24:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lhu     t6, 0x0022($sp)            
    subu    v0, t7, t8                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AA0E4C           
    sh      t6, 0x010E(a0)             # 0000010E
    beq     $zero, $zero, lbl_80AA0E50 
    or      v1, v0, $zero              # v1 = 00000001
lbl_80AA0E4C:
    subu    v1, $zero, v0              
lbl_80AA0E50:
    slti    $at, v1, 0x2151            
    beq     $at, $zero, lbl_80AA0E8C   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AA0E90               
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t9, 0x0298(a0)             # 00000298
    mfc1    a2, $f0                    
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0298(a0)             # 00000298
    jal     func_80022A68              
    lw      a1, 0x001C($sp)            
lbl_80AA0E8C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA0E90:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA0EA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA0EC8    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AA0F64)     # a1 = 80AA0000
    jal     func_80AA0C70              
    addiu   a1, a1, %lo(func_80AA0F64) # a1 = 80AA0F64
lbl_80AA0EC8:
    lw      t6, 0x0018($sp)            
    lhu     t7, 0x0298(t6)             # 00000298
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0298(t6)             # 00000298
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AA0EE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80AA0F4C      
    lw      t8, 0x0018($sp)            
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beql    v0, $zero, lbl_80AA0F4C    
    lw      t8, 0x0018($sp)            
    jal     func_800738E8              
    addiu   a0, $zero, 0x00B4          # a0 = 000000B4
    lui     a1, %hi(func_80AA0F64)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA0F64) # a1 = 80AA0F64
    jal     func_80AA0C70              
    lw      a0, 0x0018($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x13FC(v0)             # 8011B9CC
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sh      t7, 0x13FC(v0)             # 8011B9CC
    lw      t8, 0x0018($sp)            
lbl_80AA0F4C:
    lhu     t9, 0x0298(t8)             # 00000298
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0298(t8)             # 00000298
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AA0F64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a3, %hi(func_80AA0EA0)     # a3 = 80AA0000
    addiu   a3, a3, %lo(func_80AA0EA0) # a3 = 80AA0EA0
    jal     func_80AA0DEC              
    addiu   a2, $zero, 0x10B6          # a2 = 000010B6
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA0F8C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA0FB4    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AA1268)     # a1 = 80AA0000
    jal     func_80AA0C70              
    addiu   a1, a1, %lo(func_80AA1268) # a1 = 80AA1268
lbl_80AA0FB4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA0FC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AA0FEC    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AA1268)     # a1 = 80AA0000
    jal     func_80AA0C70              
    addiu   a1, a1, %lo(func_80AA1268) # a1 = 80AA1268
lbl_80AA0FEC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA0FFC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80AA1040    
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80AA0EE4)     # a1 = 80AA0000
    sw      $zero, 0x0118(s0)          # 00000118
    addiu   a1, a1, %lo(func_80AA0EE4) # a1 = 80AA0EE4
    jal     func_80AA0C70              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA1064 
    lhu     t6, 0x0298(s0)             # 00000298
lbl_80AA1040:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x001F          # a2 = 0000001F
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lhu     t6, 0x0298(s0)             # 00000298
lbl_80AA1064:
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0298(s0)             # 00000298
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80AA107C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80AA1170      
    lhu     t6, 0x0298(s1)             # 00000298
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AA116C    
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AA10E0    
    lui     a1, %hi(func_80AA0FFC)     # a1 = 80AA0000
    beq     v0, $at, lbl_80AA1114      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA112C 
    nop
lbl_80AA10E0:
    jal     func_80AA0C70              
    addiu   a1, a1, %lo(func_80AA0FFC) # a1 = 80AA0FFC
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x001F          # a2 = 0000001F
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_80AA112C 
    nop
lbl_80AA1114:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10B4          # a1 = 000010B4
    lui     a1, %hi(func_80AA0FC4)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA0FC4) # a1 = 80AA0FC4
    jal     func_80AA0C70              
    or      a0, s1, $zero              # a0 = 00000000
lbl_80AA112C:
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x05C0             # s0 = 060005C0
    jal     func_8008A194              
    or      a0, s0, $zero              # a0 = 060005C0
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    cvt.s.w $f8, $f6                   
    addiu   a0, s1, 0x0188             # a0 = 00000188
    or      a1, s0, $zero              # a1 = 060005C0
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
lbl_80AA116C:
    lhu     t6, 0x0298(s1)             # 00000298
lbl_80AA1170:
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0298(s1)             # 00000298
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AA118C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x003C($sp)            
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      t6, 0x0034($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AA1228      
    lh      v0, 0x029A(s0)             # 0000029A
    jal     func_800D6110              
    lw      a0, 0x003C($sp)            
    beq     v0, $zero, lbl_80AA1224    
    lw      a0, 0x003C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10B3          # a1 = 000010B3
    lui     a1, %hi(func_80AA107C)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA107C) # a1 = 80AA107C
    jal     func_80AA0C70              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0528             # a0 = 06000528
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0528             # a1 = 06000528
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
lbl_80AA1224:
    lh      v0, 0x029A(s0)             # 0000029A
lbl_80AA1228:
    blez    v0, lbl_80AA124C           
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x029A(s0)             # 0000029A
    lh      t8, 0x029A(s0)             # 0000029A
    lw      a0, 0x0034($sp)            
    bnel    t8, $zero, lbl_80AA1250    
    lhu     t9, 0x0298(s0)             # 00000298
    jal     func_80022F84              
    addiu   a1, $zero, 0x2813          # a1 = 00002813
lbl_80AA124C:
    lhu     t9, 0x0298(s0)             # 00000298
lbl_80AA1250:
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0298(s0)             # 00000298
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AA1268:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930              
    sw      t6, 0x0034($sp)            
    beq     v0, $zero, lbl_80AA133C    
    lw      a1, 0x003C($sp)            
    jal     func_80022B04              
    or      a0, a1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80AA131C      
    addiu   t0, $zero, 0x10B1          # t0 = 000010B1
    lw      t8, 0x0034($sp)            
    addiu   t7, $zero, 0x10B2          # t7 = 000010B2
    lui     a1, %hi(func_80AA118C)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA118C) # a1 = 80AA118C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA0C70              
    sh      t7, 0x010E(t8)             # 0000010E
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0304             # a0 = 06000304
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0304             # a1 = 06000304
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sh      t9, 0x029A(s0)             # 0000029A
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    beq     $zero, $zero, lbl_80AA13A0 
    lw      $ra, 0x002C($sp)           
lbl_80AA131C:
    lw      t1, 0x0034($sp)            
    lui     a1, %hi(func_80AA0F8C)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA0F8C) # a1 = 80AA0F8C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA0C70              
    sh      t0, 0x010E(t1)             # 0000010E
    beq     $zero, $zero, lbl_80AA13A0 
    lw      $ra, 0x002C($sp)           
lbl_80AA133C:
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t3, 0x00B6(s0)             # 000000B6
    addiu   t4, $zero, 0x10B1          # t4 = 000010B1
    sh      t4, 0x010E(s0)             # 0000010E
    subu    v0, t2, t3                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AA1368           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80AA1368 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80AA1368:
    slti    $at, v1, 0x2151            
    beq     $at, $zero, lbl_80AA139C   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AA13A0               
    lw      $ra, 0x002C($sp)           
    mfc1    a2, $f0                    
    jal     func_80022A34              
    addiu   a3, $zero, 0x0007          # a3 = 00000007
lbl_80AA139C:
    lw      $ra, 0x002C($sp)           
lbl_80AA13A0:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA13B0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x0034($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0034($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80AA1440    
    lw      t9, 0x029C(s0)             # 0000029C
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01A0(s0)            # 000001A0
    lw      t9, 0x029C(s0)             # 0000029C
lbl_80AA1440:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lhu     t7, 0x0298(s0)             # 00000298
    addiu   a0, s0, 0x028C             # a0 = 0000028C
    addiu   a1, $zero, 0x3200          # a1 = 00003200
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80AA14A4    
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t1, 0x0038(s0)             # 00000038
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t1, 0x0010($sp)            
    lw      t0, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    addiu   a3, s0, 0x0292             # a3 = 00000292
    sw      t0, 0x0014($sp)            
    lw      t1, 0x0040(s0)             # 00000040
    jal     func_8002B024              
    sw      t1, 0x0018($sp)            
    lhu     t2, 0x0298(s0)             # 00000298
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    beq     $zero, $zero, lbl_80AA1508 
    sh      t3, 0x0298(s0)             # 00000298
lbl_80AA14A4:
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sw      t4, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)            
    addiu   a0, s0, 0x028E             # a0 = 0000028E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x0292             # a0 = 00000292
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0010($sp)            
    addiu   a0, s0, 0x0294             # a0 = 00000294
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
lbl_80AA1508:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80AA151C:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   t6, a1, 0xFFF7             # t6 = FFFFFFF7
    sltiu   $at, t6, 0x0005            
    beq     $at, $zero, lbl_80AA15CC   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80AA16E0)     # $at = 80AA0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80AA16E0)($at) 
    jr      t6                         
    nop
var_80AA1548:
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t8, 0x028E(v0)             # 0000028E
    lh      t7, 0x0000(v1)             # 00000000
    lh      t0, 0x0004(v1)             # 00000004
    addu    t9, t7, t8                 
    sh      t9, 0x0000(v1)             # 00000000
    lh      t1, 0x028C(v0)             # 0000028C
    addu    t2, t0, t1                 
    beq     $zero, $zero, lbl_80AA15CC 
    sh      t2, 0x0004(v1)             # 00000004
var_80AA1574:
    sw      $zero, 0x0000(a2)          # 00000000
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000


func_80AA1580:
    sw      $zero, 0x0000(a2)          # 00000000
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000


func_80AA158C:
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t3, 0x001C(v0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    t3, $at, lbl_80AA15D0      
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sw      $zero, 0x0000(a2)          # 00000000


func_80AA15AC:
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t4, 0x001C(v0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    t4, $at, lbl_80AA15D0      
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80AA15CC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA15D0:
    jr      $ra                        
    nop


func_80AA15D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80AA1608      
    lui     a0, %hi(var_80AA16CC)      # a0 = 80AA0000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80AA16CC)  # a0 = 80AA16CC
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AA1608:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA1618:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E56C              
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_80AA151C)     # t7 = 80AA0000
    lui     t8, %hi(func_80AA15D8)     # t8 = 80AA0000
    lw      a1, 0x018C(v0)             # 0000018C
    lw      a2, 0x01A8(v0)             # 000001A8
    lbu     a3, 0x018A(v0)             # 0000018A
    addiu   t8, t8, %lo(func_80AA15D8) # t8 = 80AA15D8
    addiu   t7, t7, %lo(func_80AA151C) # t7 = 80AA151C
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80AA1680: .word 0x013F0400, 0x00000009, 0x01280000, 0x000002A0
.word func_80AA0C7C
.word func_80AA0DC0
.word func_80AA13B0
.word func_80AA1618
var_80AA16A0: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00280028, 0x00000000, 0x00000000
var_80AA16CC: .word \
0x43960000, 0x447A0000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80AA16E0: .word var_80AA1548
.word var_80AA1574
.word func_80AA1580
.word func_80AA158C
.word func_80AA15AC
.word 0x00000000, 0x00000000, 0x00000000

