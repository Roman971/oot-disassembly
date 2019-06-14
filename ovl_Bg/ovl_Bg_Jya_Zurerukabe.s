#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A31D90:
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


func_80A31DE8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lui     $at, 0x0020                # $at = 00200000
    lw      a2, 0x1C44(t6)             # 00001C44
    lw      t7, 0x066C(a2)             # 0000066C
    bnel    t7, $at, lbl_80A31F78      
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x0074(a2)             # 00000074
    lui     v0, %hi(var_80A32308)      # v0 = 80A30000
    addiu   v0, v0, %lo(var_80A32308)  # v0 = 80A32308
    beq     t8, $zero, lbl_80A31F74    
    or      v1, $zero, $zero           # v1 = 00000000
    lwc1    $f0, 0x0028(a2)            # 00000028
    addiu   a0, $zero, 0x0006          # a0 = 00000006
lbl_80A31E2C:
    lh      t9, 0x0000(v0)             # 80A32308
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A31E70               
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lh      t0, 0x0002(v0)             # 80A3230A
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f0, $f10                  
    nop
    bc1tl   lbl_80A31E7C               
    sltiu   $at, v1, 0x0006            
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_80A31E70:
    bne     v1, a0, lbl_80A31E2C       
    addiu   v0, v0, 0x0004             # v0 = 80A3230C
    sltiu   $at, v1, 0x0006            
lbl_80A31E7C:
    beq     $at, $zero, lbl_80A31F74   
    sll     t1, v1,  2                 
    lui     $at, %hi(var_80A32340)     # $at = 80A30000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80A32340)($at) 
    jr      t1                         
    nop
var_80A31E98:
    sll     t2, v1,  1                 
    lui     t3, %hi(var_80A32320)      # t3 = 80A30000
    addu    t3, t3, t2                 
    lh      t3, %lo(var_80A32320)(t3)  
    lui     a0, %hi(var_80A322B0)      # a0 = 80A30000
    addiu   a0, a0, %lo(var_80A322B0)  # a0 = 80A322B0
    sll     t4, t3,  2                 
    addu    t5, a0, t4                 
    lwc1    $f0, 0x0000(t5)            # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    abs.s   $f0, $f0                   
    lw      a0, 0x0024($sp)            
    c.lt.s  $f16, $f0                  
    lw      a1, 0x0020($sp)            
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    bc1fl   lbl_80A31F78               
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f18                # $f18 = 0.00
    lh      a3, 0x00B6(a1)             # 000000B6
    sw      $zero, 0x0014($sp)         
    jal     func_80022E7C              
    swc1    $f18, 0x0010($sp)          
    beq     $zero, $zero, lbl_80A31F78 
    lw      $ra, 0x001C($sp)           
var_80A31EFC:
    lui     t8, %hi(var_80A32320)      # t8 = 80A30000
    addiu   t8, t8, %lo(var_80A32320)  # t8 = 80A32320
    sll     t7, v1,  1                 
    addu    v0, t7, t8                 
    lh      t9, 0x0000(v0)             # 00000000
    lh      t2, 0x0002(v0)             # 00000002
    lui     a0, %hi(var_80A322B0)      # a0 = 80A30000
    addiu   a0, a0, %lo(var_80A322B0)  # a0 = 80A322B0
    sll     t0, t9,  2                 
    sll     t3, t2,  2                 
    addu    t4, a0, t3                 
    addu    t1, a0, t0                 
    lwc1    $f4, 0x0000(t1)            # 00000000
    lwc1    $f6, 0x0000(t4)            # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sub.s   $f0, $f4, $f6              
    lw      a0, 0x0024($sp)            
    lw      a1, 0x0020($sp)            
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    abs.s   $f0, $f0                   
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A31F78               
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      a3, 0x00B6(a1)             # 000000B6
    sw      $zero, 0x0014($sp)         
    jal     func_80022E7C              
    swc1    $f10, 0x0010($sp)          
lbl_80A31F74:
    lw      $ra, 0x001C($sp)           
lbl_80A31F78:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A31F84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x2508             # a2 = 06012508
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A31D90              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80A3232C)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A3232C)  # a1 = 80A3232C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v1, %hi(var_80A322E0)      # v1 = 80A30000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   v1, v1, %lo(var_80A322E0)  # v1 = 80A322E0
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f2, 0x000C(s0)            # 0000000C
    addiu   a0, $zero, 0x0004          # a0 = 00000004
lbl_80A31FD4:
    lh      t6, 0x0000(v1)             # 80A322E0
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    sub.s   $f0, $f6, $f2              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80A32008               
    addiu   v0, v0, 0x0001             # v0 = 00000001
    beq     $zero, $zero, lbl_80A32010 
    sh      v0, 0x0158(s0)             # 00000158
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_80A32008:
    bne     v0, a0, lbl_80A31FD4       
    addiu   v1, v1, 0x0002             # v1 = 80A322E2
lbl_80A32010:
    lh      t7, 0x0158(s0)             # 00000158
    lui     t9, %hi(var_80A322E8)      # t9 = 80A30000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  1                 
    addu    t9, t9, t8                 
    lh      t9, %lo(var_80A322E8)(t9)  
    jal     func_80A32090              
    sh      t9, 0x015E(s0)             # 0000015E
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A32044:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      t7, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A322B0)     # $at = 80A30000
    lh      t8, 0x0158(t7)             # 00000158
    lw      $ra, 0x0014($sp)           
    sll     t9, t8,  2                 
    addu    $at, $at, t9               
    swc1    $f4, %lo(var_80A322B0)($at) 
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A32090:
    lui     t6, %hi(func_80A320A4)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A320A4) # t6 = 80A320A4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80A320A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x015A(a0)             # 0000015A
    bgtzl   t6, lbl_80A320CC           
    lh      t7, 0x0158(a0)             # 00000158
    jal     func_80A320F0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t7, 0x0158(a0)             # 00000158
lbl_80A320CC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A322B0)     # $at = 80A30000
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    swc1    $f4, %lo(var_80A322B0)($at) 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A320F0:
    lh      t7, 0x0158(a0)             # 00000158
    lui     t6, %hi(func_80A32158)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A32158) # t6 = 80A32158
    lui     t9, %hi(var_80A322F0)      # t9 = 80A30000
    sll     t8, t7,  1                 
    lh      v0, 0x015C(a0)             # 0000015C
    sw      t6, 0x0154(a0)             # 00000154
    addu    t9, t9, t8                 
    lh      t9, %lo(var_80A322F0)(t9)  
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bltz    v0, lbl_80A32128           
    sh      t9, 0x015A(a0)             # 0000015A
    beq     $zero, $zero, lbl_80A3212C 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A32128:
    subu    v1, $zero, v0              
lbl_80A3212C:
    bnel    v1, $at, lbl_80A32148      
    lh      t2, 0x015E(a0)             # 0000015E
    lh      t0, 0x015E(a0)             # 0000015E
    lh      v0, 0x015C(a0)             # 0000015C
    subu    t1, $zero, t0              
    sh      t1, 0x015E(a0)             # 0000015E
    lh      t2, 0x015E(a0)             # 0000015E
lbl_80A32148:
    addu    t3, v0, t2                 
    sh      t3, 0x015C(a0)             # 0000015C
    jr      $ra                        
    nop


func_80A32158:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x015C(a3)             # 0000015C
    lwc1    $f4, 0x0008(a3)            # 00000008
    lh      t8, 0x0158(a3)             # 00000158
    sll     t7, t6,  2                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    subu    t7, t7, t6                 
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     a2, %hi(var_80A322F8)      # a2 = 80A30000
    sll     t9, t8,  2                 
    cvt.s.w $f8, $f6                   
    addu    a2, a2, t9                 
    lw      a2, %lo(var_80A322F8)(a2)  
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0024             # a0 = 00000024
    add.s   $f10, $f4, $f8             
    mfc1    a1, $f10                   
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80A321D4    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A32090              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80A321D4:
    lh      t0, 0x015E(a3)             # 0000015E
    lh      v0, 0x0158(a3)             # 00000158
    lui     $at, %hi(var_80A322F8)     # $at = 80A30000
    mtc1    t0, $f18                   # $f18 = 0.00
    sll     v0, v0,  2                 
    addu    $at, $at, v0               
    cvt.s.w $f6, $f18                  
    lwc1    $f16, %lo(var_80A322F8)($at) 
    lui     $at, %hi(var_80A322B0)     # $at = 80A30000
    addu    $at, $at, v0               
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    mul.s   $f4, $f16, $f6             
    jal     func_8002313C              
    swc1    $f4, %lo(var_80A322B0)($at) 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A32220:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x015A(a0)             # 0000015A
    blez    v0, lbl_80A3223C           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
lbl_80A3223C:
    sw      a0, 0x0018($sp)            
    lw      t9, 0x0154(a0)             # 00000154
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lh      t7, 0x0158(a0)             # 00000158
    bnel    t7, $zero, lbl_80A3226C    
    lw      $ra, 0x0014($sp)           
    jal     func_80A31DE8              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A3226C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A32278:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x2340             # a1 = 06012340
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80A322B0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A322C0: .word 0x00FA0100, 0x00000010, 0x00F10000, 0x00000160
.word func_80A31F84
.word func_80A32044
.word func_80A32220
.word func_80A32278
var_80A322E0: .word 0x03AF0413, 0x04DB053F
var_80A322E8: .word 0xFFFF0001, 0xFFFF0001
var_80A322F0: .word 0x00300030, 0x00240024
var_80A322F8: .word 0x41000000, 0x41000000, 0x41200000, 0x41200000
var_80A32308: .word \
0x03880395, 0x03EA03FF, 0x04540467, 0x04B404C1, \
0x05180528, 0x05810590
var_80A32320: .word 0x00000000, 0x00010002, 0x00020003
var_80A3232C: .word \
0xC8500064, 0xB0F403E8, 0xB0F804B0, 0x30FC03E8, \
0x00000000

.section .rodata

var_80A32340: .word var_80A31E98
.word var_80A31EFC
.word var_80A31E98
.word var_80A31E98
.word var_80A31EFC
.word var_80A31E98
.word 0x00000000, 0x00000000

