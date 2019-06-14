#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B55920:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_800597C0              
    addiu   a1, $zero, 0x0024          ## a1 = 00000024
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80B55950    
    andi    v1, v0, 0xFFFF             ## v1 = 00000000
    beq     $zero, $zero, lbl_80B559AC 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B55950:
    lw      t6, 0x0018($sp)            
    addiu   $at, $zero, 0x0052         ## $at = 00000052
    lh      t7, 0x00A4(t6)             ## 000000A4
    bnel    t7, $at, lbl_80B55990      
    lbu     t0, 0x01F8(a0)             ## 000001F8
    lbu     t8, 0x01F8(a0)             ## 000001F8
    addiu   v1, $zero, 0x508A          ## v1 = 0000508A
    andi    t9, t8, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80B55984    
    nop
    addiu   v1, $zero, 0x5089          ## v1 = 00005089
    beq     $zero, $zero, lbl_80B559AC 
    andi    v0, v1, 0xFFFF             ## v0 = 00005089
lbl_80B55984:
    beq     $zero, $zero, lbl_80B559AC 
    andi    v0, v1, 0xFFFF             ## v0 = 00005089
    lbu     t0, 0x01F8(a0)             ## 000001F8
lbl_80B55990:
    addiu   v1, $zero, 0x7026          ## v1 = 00007026
    andi    t1, t0, 0x0001             ## t1 = 00000000
    beq     t1, $zero, lbl_80B559A8    
    nop
    beq     $zero, $zero, lbl_80B559A8 
    addiu   v1, $zero, 0x7025          ## v1 = 00007025
lbl_80B559A8:
    andi    v0, v1, 0xFFFF             ## v0 = 00007025
lbl_80B559AC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B559BC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a1, 0x001C($sp)            
    sltiu   $at, v0, 0x000A            
    beq     $at, $zero, lbl_80B55A64   
    lw      a1, 0x001C($sp)            
    sll     t6, v0,  2                 
    lui     $at, %hi(var_80B55F20)     ## $at = 80B50000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80B55F20)($at) 
    jr      t6                         
    nop
var_80B559F8:
    beq     $zero, $zero, lbl_80B55A68 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
var_80B55A00:
    lhu     v0, 0x010E(a1)             ## 0000010E
    addiu   $at, $zero, 0x5089         ## $at = 00005089
    beq     v0, $at, lbl_80B55A30      
    addiu   $at, $zero, 0x508A         ## $at = 0000508A
    beq     v0, $at, lbl_80B55A30      
    addiu   $at, $zero, 0x7025         ## $at = 00007025
    beq     v0, $at, lbl_80B55A44      
    addiu   $at, $zero, 0x7026         ## $at = 00007026
    beql    v0, $at, lbl_80B55A48      
    lh      t9, 0x001C(a1)             ## 0000001C
    beq     $zero, $zero, lbl_80B55A68 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B55A30:
    lbu     t7, 0x01F8(a1)             ## 000001F8
    or      v0, $zero, $zero           ## v0 = 00000000
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    beq     $zero, $zero, lbl_80B55A68 
    sb      t8, 0x01F8(a1)             ## 000001F8
lbl_80B55A44:
    lh      t9, 0x001C(a1)             ## 0000001C
lbl_80B55A48:
    lbu     t1, 0x01F8(a1)             ## 000001F8
    xori    t0, t9, 0x0001             ## t0 = 00000001
    addiu   t2, t1, 0x0001             ## t2 = 00000001
    sh      t0, 0x001C(a1)             ## 0000001C
    sb      t2, 0x01F8(a1)             ## 000001F8
    beq     $zero, $zero, lbl_80B55A68 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B55A64:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B55A68:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B55A78:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41E0                 ## a3 = 41E00000
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x5040             ## a3 = 06005040
    addiu   a2, a2, 0xAE40             ## a2 = 0600AE40
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    addiu   a1, s0, 0x0184             ## a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80B55EB0)      ## a3 = 80B50000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B55EB0)  ## a3 = 80B55EB0
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a2, %hi(var_80B55EDC)      ## a2 = 80B50000
    addiu   a2, a2, %lo(var_80B55EDC)  ## a2 = 80B55EDC
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    jal     func_80050370              
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    lui     a1, 0x3C23                 ## a1 = 3C230000
    sb      t6, 0x001F(s0)             ## 0000001F
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t7, 0x003C($sp)            
    lui     t0, %hi(func_80B55B8C)     ## t0 = 80B50000
    addiu   t0, t0, %lo(func_80B55B8C) ## t0 = 80B55B8C
    lw      t8, 0x009C(t7)             ## 0000009C
    sw      t0, 0x0180(s0)             ## 00000180
    andi    t9, t8, 0x0001             ## t9 = 00000000
    sb      t9, 0x01F8(s0)             ## 000001F8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B55B4C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0184             ## a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B55B8C:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x01D0(a0)             ## 000001D0
    bne     t6, $zero, lbl_80B55BA8    
    nop
    lh      t7, 0x00B6(a0)             ## 000000B6
    addiu   t8, t7, 0x0800             ## t8 = 00000800
    sh      t8, 0x00B6(a0)             ## 000000B6
lbl_80B55BA8:
    jr      $ra                        
    nop


func_80B55BB0:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0024(s0)            ## 00000024
    addiu   t5, $sp, 0x002C            ## t5 = FFFFFFEC
    lui     $at, 0x0001                ## $at = 00010000
    trunc.w.s $f6, $f4                   
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              ## a0 = 00000000
    mfc1    t7, $f6                    
    addiu   a2, s0, 0x0184             ## a2 = 00000184
    sh      t7, 0x002C($sp)            
    lwc1    $f8, 0x0028(s0)            ## 00000028
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    sh      t9, 0x002E($sp)            
    lwc1    $f16, 0x002C(s0)           ## 0000002C
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    addiu   t4, t3, 0x0003             ## t4 = 00000003
    sh      t4, 0x0030($sp)            
    lw      t7, 0x0000(t5)             ## FFFFFFEC
    swl     t7, 0x01CA(s0)             ## 000001CA
    swr     t7, 0x01CD(s0)             ## 000001CD
    lhu     t7, 0x0004(t5)             ## FFFFFFF0
    jal     func_8004C130              ## CollisionCheck_setOT
    sh      t7, 0x01CE(s0)             ## 000001CE
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    sw      t8, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t9, 0x0180(s0)             ## 00000180
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t0, 0x01C4(s0)             ## 000001C4
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f8                   ## $f8 = 30.00
    mtc1    t0, $f4                    ## $f4 = 0.00
    lui     t1, %hi(func_80B55920)     ## t1 = 80B50000
    lui     t2, %hi(func_80B559BC)     ## t2 = 80B50000
    cvt.s.w $f6, $f4                   
    addiu   t2, t2, %lo(func_80B559BC) ## t2 = 80B559BC
    addiu   t1, t1, %lo(func_80B55920) ## t1 = 80B55920
    sw      t1, 0x0010($sp)            
    sw      t2, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    add.s   $f0, $f6, $f8              
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x01D0             ## a2 = 000001D0
    mfc1    a3, $f0                    
    jal     func_800271FC              
    nop
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B55CD0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    nop


func_80B55CEC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      a0, 0x0028($sp)            
    addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lui     t6, %hi(var_80B55F08)      ## t6 = 80B50000
    addiu   t6, t6, %lo(var_80B55F08)  ## t6 = 80B55F08
    lw      t8, 0x0000(t6)             ## 80B55F08
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    sw      t8, 0x0000(a0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 80B55F0C
    sw      t7, 0x0004(a0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 80B55F10
    bne     a1, $at, lbl_80B55D38      
    sw      t8, 0x0008(a0)             ## FFFFFFF8
    lw      a1, 0x0038($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80B55D38:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B55D48:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    andi    a3, a3, 0x00FF             ## a3 = 00000000
    andi    a2, a2, 0x00FF             ## a2 = 00000000
    andi    a1, a1, 0x00FF             ## a1 = 00000000
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xFB00                 ## t6 = FB000000
    sll     t8, a1, 24                 
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    andi    t9, a2, 0x00FF             ## t9 = 00000000
    lbu     t6, 0x0013($sp)            
    sll     t0, t9, 16                 
    andi    t2, a3, 0x00FF             ## t2 = 00000000
    sll     t3, t2,  8                 
    or      t1, t8, t0                 ## t1 = 00000000
    or      t4, t1, t3                 ## t4 = 00000000
    or      t7, t4, t6                 ## t7 = FB000000
    sw      t7, 0x0004(v1)             ## FFFFFFF4
    lui     t9, 0xDF00                 ## t9 = DF000000
    sw      t9, 0x0008(v1)             ## FFFFFFF8
    sw      $zero, 0x000C(v1)          ## FFFFFFFC
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80B55DB4:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    mtc1    $zero, $f12                ## $f12 = 0.00
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    mov.s   $f14, $f12                 
    lui     a2, 0xC40C                 ## a2 = C40C0000
    lw      t0, 0x0000(t6)             ## 00000000
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AA7F4              
    sw      t0, 0x0038($sp)            
    lw      t0, 0x0038($sp)            
    lw      v1, 0x02C0(t0)             ## 000002C0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(t0)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x0044($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0032          ## a2 = 00000032
    lw      a0, 0x0000(t9)             ## 00000000
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x00A0          ## a3 = 000000A0
    jal     func_80B55D48              
    sw      v1, 0x0030($sp)            
    lw      t1, 0x0030($sp)            
    lw      t0, 0x0038($sp)            
    lui     t4, 0xDB06                 ## t4 = DB060000
    sw      v0, 0x0004(t1)             ## 00000004
    lw      v1, 0x02C0(t0)             ## 000002C0
    ori     t4, t4, 0x0024             ## t4 = DB060024
    addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(t0)             ## 000002C0
    sw      t4, 0x0000(v1)             ## 00000000
    lw      t5, 0x0044($sp)            
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
    lw      a0, 0x0000(t5)             ## 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B55D48              
    sw      v1, 0x002C($sp)            
    lw      t2, 0x002C($sp)            
    lw      v1, 0x0040($sp)            
    lui     t6, %hi(func_80B55CD0)     ## t6 = 80B50000
    sw      v0, 0x0004(t2)             ## 00000004
    lw      a1, 0x0140(v1)             ## 00000140
    lw      a2, 0x015C(v1)             ## 0000015C
    lbu     a3, 0x013E(v1)             ## 0000013E
    lui     t7, %hi(func_80B55CEC)     ## t7 = 80B50000
    addiu   t7, t7, %lo(func_80B55CEC) ## t7 = 80B55CEC
    addiu   t6, t6, %lo(func_80B55CD0) ## t6 = 80B55CD0
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    sw      v1, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B55EB0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00140040, 0x00000000, 0x00000000
var_80B55EDC: .word 0x00000000, 0x00000000, 0xFF000000
var_80B55EE8: .word 0x01AC0400, 0x00000009, 0x01820000, 0x000001FC
.word func_80B55A78
.word func_80B55B4C
.word func_80B55BB0
.word func_80B55DB4
var_80B55F08: .word \
0x00000000, 0x44480000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B55F20: .word var_80B559F8
.word var_80B559F8
.word var_80B55A00
.word var_80B559F8
.word var_80B559F8
.word var_80B559F8
.word var_80B559F8
.word var_80B559F8
.word var_80B559F8
.word var_80B559F8
.word 0x00000000, 0x00000000

