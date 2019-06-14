#include <mips.h>
.set noreorder
.set noat

.section .text
func_80ABC010:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a1, %hi(var_80ABC294)      ## a1 = 80AC0000
    addiu   a1, a1, %lo(var_80ABC294)  ## a1 = 80ABC294
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sh      t7, 0x0032($sp)            
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t8, 0x0032($sp)            
    lui     t0, %hi(var_80ABC264)      ## t0 = 80AC0000
    addiu   t0, t0, %lo(var_80ABC264)  ## t0 = 80ABC264
    sll     t9, t8,  4                 
    addu    s1, t9, t0                 
    lw      a1, 0x0004(s1)             ## 00000004
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lwc1    $f4, 0x0008(s1)            ## 00000008
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    swc1    $f4, 0x00BC(s0)            ## 000000BC
    lh      t1, 0x000C(s1)             ## 0000000C
    lw      a0, 0x003C($sp)            
    bltz    t1, lbl_80ABC0D0           
    nop
    jal     func_8004AB7C              
    sw      a1, 0x0024($sp)            
    lui     a3, %hi(var_80ABC230)      ## a3 = 80AC0000
    addiu   a3, a3, %lo(var_80ABC230)  ## a3 = 80ABC230
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0024($sp)            
    lh      t2, 0x000C(s1)             ## 0000000C
    lui     a2, %hi(var_80ABC25C)      ## a2 = 80AC0000
    addiu   a2, a2, %lo(var_80ABC25C)  ## a2 = 80ABC25C
    sh      t2, 0x017C(s0)             ## 0000017C
    lh      t3, 0x000E(s1)             ## 0000000E
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_80050344              
    sh      t3, 0x017E(s0)             ## 0000017E
lbl_80ABC0D0:
    lui     t4, %hi(var_80ABC284)      ## t4 = 80AC0000
    addiu   t4, t4, %lo(var_80ABC284)  ## t4 = 80ABC284
    bne     s1, t4, lbl_80ABC0F8       
    lui     t5, 0x8012                 ## t5 = 80120000
    lhu     t5, -0x4B54(t5)            ## 8011B4AC
    andi    t6, t5, 0x0001             ## t6 = 00000000
    beql    t6, $zero, lbl_80ABC0FC    
    lw      $ra, 0x001C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80ABC0F8:
    lw      $ra, 0x001C($sp)           
lbl_80ABC0FC:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80ABC10C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a2)             ## 0000001C
    lui     t9, %hi(var_80ABC270)      ## t9 = 80AC0000
    or      a0, a3, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sll     t8, t7,  4                 
    addu    t9, t9, t8                 
    lh      t9, %lo(var_80ABC270)(t9)  
    bltzl   t9, lbl_80ABC14C           
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80ABC14C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ABC158:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a3)             ## 0000001C
    lui     t9, %hi(var_80ABC270)      ## t9 = 80AC0000
    lui     $at, 0x43C8                ## $at = 43C80000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sll     t8, t7,  4                 
    addu    t9, t9, t8                 
    lh      t9, %lo(var_80ABC270)(t9)  
    bltzl   t9, lbl_80ABC1BC           
    lw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x0090(a3)            ## 00000090
    mtc1    $at, $f6                   ## $f6 = 400.00
    lw      a0, 0x001C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    c.lt.s  $f4, $f6                   
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    bc1fl   lbl_80ABC1BC               
    lw      $ra, 0x0014($sp)           
    jal     func_8004C130              ## CollisionCheck_setOT
    addiu   a2, a3, 0x013C             ## a2 = 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80ABC1BC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80ABC1C8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    or      a2, a1, $zero              ## a2 = 00000000
    lh      t6, 0x001C(a3)             ## 0000001C
    lui     a1, %hi(var_80ABC264)      ## a1 = 80AC0000
    or      a0, a2, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sll     t8, t7,  4                 
    addu    a1, a1, t8                 
    jal     func_80028048              
    lw      a1, %lo(var_80ABC264)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80ABC210: .word 0x014F0600, 0x00000000, 0x00020000, 0x00000188
.word func_80ABC010
.word func_80ABC10C
.word func_80ABC158
.word func_80ABC1C8
var_80ABC230: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0008000A, 0x00000000, 0x00000000
var_80ABC25C: .word 0x0000000C, 0x003CFF00
var_80ABC264: .word 0x05000500, 0x3C23D70A, 0x00000000
var_80ABC270: .word \
0xFFFF0000, 0x0500A880, 0x3DCCCCCD, 0x42680000, \
0x000A0012
var_80ABC284: .word 0x0500B9D0, 0x3ECCCCCD, 0x00000000, 0x000C002C
var_80ABC294: .word \
0xC850000A, 0xB0F40384, 0xB0F8003C, 0x30FC0320, \
0x00000000, 0x00000000, 0x00000000

.section .rodata


