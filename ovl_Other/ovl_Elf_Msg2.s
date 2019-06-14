#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AF22F0:
    sw      a1, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80AF22FC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      v0, 0x0032(a2)             ## 00000032
    blez    v0, lbl_80AF2374           
    slti    $at, v0, 0x0041            
    beq     $at, $zero, lbl_80AF2374   
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, v0, 0xFFFF             ## a1 = FFFFFFFF
    sw      a2, 0x0018($sp)            
    jal     func_8002049C              
    sw      a3, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80AF2374    
    lw      a3, 0x001C($sp)            
    lh      a1, 0x001C(a2)             ## 0000001C
    addiu   $at, $zero, 0x003F         ## $at = 0000003F
    or      a0, a3, $zero              ## a0 = 00000000
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beq     a1, $at, lbl_80AF2364      
    nop
    jal     func_800204D0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
lbl_80AF2364:
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AF2424 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AF2374:
    lh      t6, 0x0032(a2)             ## 00000032
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    or      a0, a3, $zero              ## a0 = 00000000
    bnel    t6, $at, lbl_80AF23E0      
    lh      a1, 0x001C(a2)             ## 0000001C
    lb      a1, 0x0003(a2)             ## 00000003
    sw      a3, 0x001C($sp)            
    jal     func_80020640              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80AF23DC    
    lw      a3, 0x001C($sp)            
    lh      a1, 0x001C(a2)             ## 0000001C
    addiu   $at, $zero, 0x003F         ## $at = 0000003F
    or      a0, a3, $zero              ## a0 = 00000000
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beq     a1, $at, lbl_80AF23CC      
    nop
    jal     func_800204D0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
lbl_80AF23CC:
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AF2424 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AF23DC:
    lh      a1, 0x001C(a2)             ## 0000001C
lbl_80AF23E0:
    addiu   $at, $zero, 0x003F         ## $at = 0000003F
    or      a0, a3, $zero              ## a0 = 00000000
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             ## a1 = 00000000
    bne     a1, $at, lbl_80AF2400      
    nop
    beq     $zero, $zero, lbl_80AF2424 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AF2400:
    jal     func_8002049C              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80AF2420    
    lw      a2, 0x0018($sp)            
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AF2424 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AF2420:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AF2424:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AF2434:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80AF22FC              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80AF24E0    
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x0030(s0)             ## 00000030
    lui     a1, %hi(var_80AF26B0)      ## a1 = 80AF0000
    blez    v0, lbl_80AF2470           
    slti    $at, v0, 0x0008            
    beq     $at, $zero, lbl_80AF2470   
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sb      t6, 0x001F(s0)             ## 0000001F
lbl_80AF2470:
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80AF26B0)  ## a1 = 80AF26B0
    lh      t7, 0x0032(s0)             ## 00000032
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80AF2598)     ## a1 = 80AF0000
    slti    $at, t7, 0x0041            
    bne     $at, $zero, lbl_80AF24A8   
    nop
    lui     a1, %hi(func_80AF25D0)     ## a1 = 80AF0000
    addiu   a1, a1, %lo(func_80AF25D0) ## a1 = 80AF25D0
    jal     func_80AF22F0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AF24D4 
    sh      $zero, 0x00B8(s0)          ## 000000B8
lbl_80AF24A8:
    jal     func_80AF22F0              
    addiu   a1, a1, %lo(func_80AF2598) ## a1 = 00002598
    lw      t8, 0x0004(s0)             ## 00000004
    lui     $at, 0x0004                ## $at = 00040000
    ori     $at, $at, 0x0001           ## $at = 00040001
    or      t9, t8, $at                ## t9 = 00040001
    sw      t9, 0x0004(s0)             ## 00000004
    jal     func_80AF2504              
    or      a0, s0, $zero              ## a0 = 00000000
    sh      v0, 0x010E(s0)             ## 0000010E
    sh      $zero, 0x00B8(s0)          ## 000000B8
lbl_80AF24D4:
    lh      v0, 0x00B8(s0)             ## 000000B8
    sh      v0, 0x00B6(s0)             ## 000000B6
    sh      v0, 0x00B4(s0)             ## 000000B4
lbl_80AF24E0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AF24F4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AF2504:
    lh      v0, 0x001C(a0)             ## 0000001C
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    addiu   v0, v0, 0x0100             ## v0 = 00000100
    jr      $ra                        
    nop


func_80AF2518:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022AD0              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AF2588    
    lw      a0, 0x0018($sp)            
    lh      t6, 0x0034(a0)             ## 00000034
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     a1, %hi(func_80AF2598)     ## a1 = 80AF0000
    beq     t6, $at, lbl_80AF2580      
    nop
    jal     func_80020EB4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0x003F         ## $at = 0000003F
    lh      a1, 0x001C(a0)             ## 0000001C
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beql    a1, $at, lbl_80AF258C      
    lw      $ra, 0x0014($sp)           
    jal     func_800204D0              
    lw      a0, 0x001C($sp)            
    beq     $zero, $zero, lbl_80AF258C 
    lw      $ra, 0x0014($sp)           
lbl_80AF2580:
    jal     func_80AF22F0              
    addiu   a1, a1, %lo(func_80AF2598) ## a1 = 00002598
lbl_80AF2588:
    lw      $ra, 0x0014($sp)           
lbl_80AF258C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AF2598:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022930              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AF25C0    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AF2518)     ## a1 = 80AF0000
    jal     func_80AF22F0              
    addiu   a1, a1, %lo(func_80AF2518) ## a1 = 80AF2518
lbl_80AF25C0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AF25D0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lh      v0, 0x0032(s0)             ## 00000032
    slti    $at, v0, 0x0041            
    bne     $at, $zero, lbl_80AF2638   
    slti    $at, v0, 0x0081            
    beq     $at, $zero, lbl_80AF2638   
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_8002049C              
    addiu   a1, v0, 0xFFBF             ## a1 = FFFFFFBF
    beq     v0, $zero, lbl_80AF2638    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80AF2598)     ## a1 = 80AF0000
    jal     func_80AF22F0              
    addiu   a1, a1, %lo(func_80AF2598) ## a1 = 80AF2598
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, 0x0004                ## $at = 00040000
    ori     $at, $at, 0x0001           ## $at = 00040001
    or      t7, t6, $at                ## t7 = 00040001
    sw      t7, 0x0004(s0)             ## 00000004
    jal     func_80AF2504              
    or      a0, s0, $zero              ## a0 = 00000000
    sh      v0, 0x010E(s0)             ## 0000010E
lbl_80AF2638:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AF264C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80AF22FC              
    sw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_80AF267C    
    lw      a0, 0x0018($sp)            
    lw      t9, 0x013C(a0)             ## 0000013C
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
lbl_80AF267C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80AF2690: .word 0x01730100, 0x00000010, 0x00010000, 0x00000140
.word func_80AF2434
.word func_80AF24F4
.word func_80AF264C
.word 0x00000000
var_80AF26B0: .word 0xC85000C8, 0x30F403E8, 0x00000000, 0x00000000

.section .rodata

.word \
0xB6A6C5DD, 0xA4EC0000, 0xB6A6C5DD, 0xA4ECA3B2, \
0x00000000, 0xB6A6C5DD, 0xA4EC0000, 0x00000000

