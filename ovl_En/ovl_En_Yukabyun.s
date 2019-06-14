#include <mips.h>
.set noreorder
.set noat

.section .text
func_80918910:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, %hi(var_80918E7C)      ## a1 = 80920000
    addiu   a1, a1, %lo(var_80918E7C)  ## a1 = 80918E7C
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    lui     a3, 0x3ECC                 ## a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             ## a3 = 3ECCCCCD
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    jal     func_8001EC20              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    addiu   a1, s0, 0x0144             ## a1 = 00000144
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x002C($sp)            
    lui     a3, %hi(var_80918E50)      ## a3 = 80920000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80918E50)  ## a3 = 80918E50
    lw      a0, 0x002C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     t1, %hi(func_809189EC)     ## t1 = 80920000
    addiu   t1, t1, %lo(func_809189EC) ## t1 = 809189EC
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    sh      t7, 0x001C(s0)             ## 0000001C
    lbu     t8, 0x001D(s0)             ## 0000001D
    sb      $zero, 0x0142(s0)          ## 00000142
    sw      t1, 0x013C(s0)             ## 0000013C
    sll     t9, t8,  2                 
    addu    t9, t9, t8                 
    sll     t9, t9,  1                 
    addiu   t0, t9, 0x0014             ## t0 = 00000014
    sh      t0, 0x0140(s0)             ## 00000140
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809189C0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0144             ## a1 = 00000144
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809189EC:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x0140(a0)             ## 00000140
    lui     t9, %hi(func_80918A2C)     ## t9 = 80920000
    beq     v0, $zero, lbl_80918A08    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0140(a0)             ## 00000140
    lh      v0, 0x0140(a0)             ## 00000140
lbl_80918A08:
    bne     v0, $zero, lbl_80918A24    
    nop
    lw      t7, 0x0004(a0)             ## 00000004
    addiu   t9, t9, %lo(func_80918A2C) ## t9 = 80918A2C
    sw      t9, 0x013C(a0)             ## 0000013C
    ori     t8, t7, 0x1005             ## t8 = 00001005
    sw      t8, 0x0004(a0)             ## 00000004
lbl_80918A24:
    jr      $ra                        
    nop


func_80918A2C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t6, 0x0140(a3)             ## 00000140
    lh      t8, 0x00B6(a3)             ## 000000B6
    lui     t1, %hi(func_80918AC4)     ## t1 = 80920000
    addiu   t7, t6, 0x00A0             ## t7 = 000000A0
    sh      t7, 0x0140(a3)             ## 00000140
    lh      v0, 0x0140(a3)             ## 00000140
    addiu   t1, t1, %lo(func_80918AC4) ## t1 = 80918AC4
    addu    t9, t8, v0                 
    slti    $at, v0, 0x2000            
    bne     $at, $zero, lbl_80918A80   
    sh      t9, 0x00B6(a3)             ## 000000B6
    lui     $at, 0x4120                ## $at = 41200000
    lh      t0, 0x008A(a3)             ## 0000008A
    mtc1    $at, $f4                   ## $f4 = 10.00
    sw      t1, 0x013C(a3)             ## 0000013C
    sh      t0, 0x0032(a3)             ## 00000032
    swc1    $f4, 0x0068(a3)            ## 00000068
lbl_80918A80:
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f8                   ## $f8 = 30.00
    lwc1    $f6, 0x000C(a3)            ## 0000000C
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             ## a0 = 00000028
    add.s   $f10, $f6, $f8             
    lui     a2, 0x3F80                 ## a2 = 3F800000
    mfc1    a1, $f10                   
    jal     func_8006385C              
    nop
    lw      a0, 0x0018($sp)            
    jal     func_8002313C              
    addiu   a1, $zero, 0x3179          ## a1 = 00003179
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80918AC4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x00B6(a0)             ## 000000B6
    lh      t7, 0x0140(a0)             ## 00000140
    lui     $at, %hi(var_80918E90)     ## $at = 80920000
    lwc1    $f6, 0x0090(a0)            ## 00000090
    addu    t8, t6, t7                 
    sh      t8, 0x00B6(a0)             ## 000000B6
    lwc1    $f4, %lo(var_80918E90)($at) 
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80918B0C               
    nop
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80918B18 
    lw      $ra, 0x0014($sp)           
lbl_80918B0C:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3179          ## a1 = 00003179
    lw      $ra, 0x0014($sp)           
lbl_80918B18:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80918B24:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      a1, 0x0030($sp)            
    lui     t1, 0x0600                 ## t1 = 06000000
    addiu   t1, t1, 0x0A60             ## t1 = 06000A60
    addiu   t6, $zero, 0x0514          ## t6 = 00000514
    addiu   t7, $zero, 0x012C          ## t7 = 0000012C
    addiu   t8, $zero, 0x000F          ## t8 = 0000000F
    addiu   t9, $zero, 0x005F          ## t9 = 0000005F
    addiu   t0, $zero, 0x000A          ## t0 = 0000000A
    sw      t0, 0x0020($sp)            
    sw      t9, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    sw      t1, 0x0024($sp)            
    lw      a0, 0x0034($sp)            
    lui     a2, 0x4100                 ## a2 = 41000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8001D29C              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80020EB4              
    lw      a0, 0x0030($sp)            
    lw      $ra, 0x002C($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80918B98:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     v1, 0x0154(s0)             ## 00000154
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    andi    t6, v1, 0x0002             ## t6 = 00000000
    bne     t6, $zero, lbl_80918C20    
    addiu   a2, $zero, 0x001E          ## a2 = 0000001E
    lbu     t7, 0x0155(s0)             ## 00000155
    andi    t8, t7, 0x0002             ## t8 = 00000000
    bnel    t8, $zero, lbl_80918C24    
    lbu     t7, 0x0155(s0)             ## 00000155
    lbu     t9, 0x0156(s0)             ## 00000156
    andi    t0, t9, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_80918C00    
    lw      v0, 0x013C(s0)             ## 0000013C
    lw      t1, 0x0150(s0)             ## 00000150
    addiu   $at, $zero, 0x006B         ## $at = 0000006B
    lh      t2, 0x0000(t1)             ## 00000000
    bnel    t2, $at, lbl_80918C24      
    lbu     t7, 0x0155(s0)             ## 00000155
    lw      v0, 0x013C(s0)             ## 0000013C
lbl_80918C00:
    lui     t3, %hi(func_80918AC4)     ## t3 = 80920000
    addiu   t3, t3, %lo(func_80918AC4) ## t3 = 80918AC4
    bnel    t3, v0, lbl_80918C68       
    or      a0, s0, $zero              ## a0 = 00000000
    lhu     t4, 0x0088(s0)             ## 00000088
    andi    t5, t4, 0x0008             ## t5 = 00000000
    beql    t5, $zero, lbl_80918C68    
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80918C20:
    lbu     t7, 0x0155(s0)             ## 00000155
lbl_80918C24:
    lbu     t9, 0x0156(s0)             ## 00000156
    lw      t1, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
    andi    t6, v1, 0xFFFD             ## t6 = 00000000
    andi    t8, t7, 0xFFFD             ## t8 = 00000000
    andi    t0, t9, 0xFFFD             ## t0 = 00000000
    and     t2, t1, $at                
    sb      t6, 0x0154(s0)             ## 00000154
    sb      t8, 0x0155(s0)             ## 00000155
    sb      t0, 0x0156(s0)             ## 00000156
    sw      t2, 0x0004(s0)             ## 00000004
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38C0          ## a3 = 000038C0
    lui     t3, %hi(func_80918B24)     ## t3 = 80920000
    addiu   v0, t3, %lo(func_80918B24) ## v0 = 80918B24
    sw      v0, 0x013C(s0)             ## 0000013C
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80918C68:
    jalr    $ra, v0                    
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x013C(s0)             ## 0000013C
    lui     t4, %hi(func_809189EC)     ## t4 = 80920000
    addiu   t4, t4, %lo(func_809189EC) ## t4 = 809189EC
    beq     t4, v0, lbl_80918D18       
    lui     t5, %hi(func_80918B24)     ## t5 = 80920000
    addiu   t5, t5, %lo(func_80918B24) ## t5 = 80918B24
    beq     t5, v0, lbl_80918D18       
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f4                   ## $f4 = 8.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0014($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x40A0                 ## a2 = 40A00000
    lui     a3, 0x41A0                 ## a3 = 41A00000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    addiu   a1, s0, 0x0144             ## a1 = 00000144
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t7, 0x0004(s0)             ## 00000004
    lui     $at, 0x0100                ## $at = 01000000
    or      a0, s1, $zero              ## a0 = 00000000
    or      t8, t7, $at                ## t8 = 01000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    sw      t8, 0x0004(s0)             ## 00000004
    addu    a1, s1, $at                
    sw      a1, 0x002C($sp)            
    jal     func_8004BD50              ## CollisionCheck_setAT
    lw      a2, 0x0028($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
lbl_80918D18:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4080                 ## a1 = 40800000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80918D38:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lw      v1, 0x02C0(a2)             ## 000002C0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(a2)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x0030($sp)            
    lui     a1, %hi(var_80918E84)      ## a1 = 80920000
    lui     t6, 0x8012                 ## t6 = 80120000
    lbu     t0, 0x0142(t9)             ## 00000142
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    lw      a1, %lo(var_80918E84)(a1)  
    sll     t3, a1,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             ## 80120C38
    and     t2, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t7, t2, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             ## 00000004
    lw      v1, 0x02C0(a2)             ## 000002C0
    lui     t0, 0xDA38                 ## t0 = DA380000
    ori     t0, t0, 0x0003             ## t0 = DA380003
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(a2)             ## 000002C0
    sw      t0, 0x0000(v1)             ## 00000000
    lw      t1, 0x0034($sp)            
    lw      a0, 0x0000(t1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a3, 0x001C($sp)            
    lw      a2, 0x0028($sp)            
    lui     t4, 0xDE00                 ## t4 = DE000000
    sw      v0, 0x0004(a3)             ## 00000004
    lw      v1, 0x02C0(a2)             ## 000002C0
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x0970             ## t5 = 06000970
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(a2)             ## 000002C0
    sw      t5, 0x0004(v1)             ## 00000004
    sw      t4, 0x0000(v1)             ## 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80918E30: .word 0x006B0500, 0x00000010, 0x005F0000, 0x00000190
.word func_80918910
.word func_809189C0
.word func_80918B98
.word func_80918D38
var_80918E50: .word \
0x0A11093D, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x09010100, \
0x001C0008, 0x00000000, 0x00000000
var_80918E7C: .word 0xC0500001, 0x304C0010
var_80918E84: .word 0x06000AF0, 0x06000000, 0x00000000

.section .rodata

var_80918E90: .word 0x459C4000, 0x00000000, 0x00000000, 0x00000000

