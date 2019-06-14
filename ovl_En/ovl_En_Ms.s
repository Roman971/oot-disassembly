#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA0580:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x001B          ## a1 = 0000001B
    jal     func_800597C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    andi    t6, v0, 0xFFFF             ## t6 = 00000000
    bne     t6, $zero, lbl_80AA05EC    
    sh      v0, 0x010E(a2)             ## 0000010E
    lui     t7, 0x8010                 ## t7 = 80100000
    lbu     t7, -0x70BB(t7)            ## 800F8F45
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t8, $zero, 0x406B          ## t8 = 0000406B
    addu    v0, v0, t7                 
    lb      v0, -0x59A4(v0)            ## 8011A65C
    lui     t0, %hi(var_80AA0BC0)      ## t0 = 80AA0000
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_80AA05E0   
    sll     t9, v0,  1                 
    beq     $zero, $zero, lbl_80AA05EC 
    sh      t8, 0x010E(a2)             ## 0000010E
lbl_80AA05E0:
    addu    t0, t0, t9                 
    lhu     t0, %lo(var_80AA0BC0)(t0)  
    sh      t0, 0x010E(a2)             ## 0000010E
lbl_80AA05EC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA05FC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A2C(t6)            ## 8011A5D4
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    addiu   v0, $zero, 0x0011          ## v0 = 00000011
    beq     t6, $zero, lbl_80AA0630    
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AA0630 
    addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80AA0630:
    beq     v0, $at, lbl_80AA0648      
    lui     a1, %hi(var_80AA0BD4)      ## a1 = 80AA0000
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AA0710 
    lw      $ra, 0x002C($sp)           
lbl_80AA0648:
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80AA0BD4)  ## a1 = 00000BD4
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t7, s0, 0x0180             ## t7 = 00000180
    addiu   t8, s0, 0x01B6             ## t8 = 000001B6
    addiu   t9, $zero, 0x0009          ## t9 = 00000009
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x05EC             ## a3 = 060005EC
    addiu   a2, a2, 0x3DC0             ## a2 = 06003DC0
    lw      a0, 0x0044($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    addiu   a1, s0, 0x01F0             ## a1 = 000001F0
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80AA0B80)      ## a3 = 80AA0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80AA0B80)  ## a3 = 80AA0B80
    lw      a0, 0x0044($sp)            
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x420C                 ## a3 = 420C0000
    lui     a1, 0x3C75                 ## a1 = 3C750000
    ori     a1, a1, 0xC28F             ## a1 = 3C75C28F
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
    sb      t0, 0x00AE(s0)             ## 000000AE
    swc1    $f0, 0x0068(s0)            ## 00000068
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f4, 0x006C(s0)            ## 0000006C
    lw      a1, 0x0044($sp)            
    jal     func_80AA0580              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t1, %hi(func_80AA074C)     ## t1 = 80AA0000
    addiu   t1, t1, %lo(func_80AA074C) ## t1 = 80AA074C
    sw      t1, 0x01EC(s0)             ## 000001EC
    lw      $ra, 0x002C($sp)           
lbl_80AA0710:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA0720:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x01F0             ## a1 = 000001F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA074C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x008A(a0)             ## 0000008A
    lh      t7, 0x00B6(a0)             ## 000000B6
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_80AA0580              
    sh      v1, 0x001E($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80022930              
    lw      a1, 0x0024($sp)            
    lh      v1, 0x001E($sp)            
    beq     v0, $zero, lbl_80AA07A4    
    lw      a0, 0x0020($sp)            
    lui     t8, %hi(func_80AA07F8)     ## t8 = 80AA0000
    addiu   t8, t8, %lo(func_80AA07F8) ## t8 = 80AA07F8
    beq     $zero, $zero, lbl_80AA07E8 
    sw      t8, 0x01EC(a0)             ## 000001EC
lbl_80AA07A4:
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f0                   ## $f0 = 90.00
    lwc1    $f4, 0x0090(a0)            ## 00000090
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AA07EC               
    lw      $ra, 0x0014($sp)           
    bltz    v1, lbl_80AA07D0           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80AA07D0 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AA07D0:
    slti    $at, v0, 0x2000            
    beql    $at, $zero, lbl_80AA07EC   
    lw      $ra, 0x0014($sp)           
    mfc1    a2, $f0                    
    jal     func_80022A68              
    lw      a1, 0x0024($sp)            
lbl_80AA07E8:
    lw      $ra, 0x0014($sp)           
lbl_80AA07EC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA07F8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     v0, $at, lbl_80AA0848      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80AA0904      
    lw      $ra, 0x0024($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AA0900    
    lui     t6, %hi(func_80AA074C)     ## t6 = 80AA0000
    lw      t7, 0x0028($sp)            
    addiu   t6, t6, %lo(func_80AA074C) ## t6 = 80AA074C
    beq     $zero, $zero, lbl_80AA0900 
    sw      t6, 0x01EC(t7)             ## 000001EC
lbl_80AA0848:
    jal     func_800D6110              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AA0900    
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, s0                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     t9, 0x8010                 ## t9 = 80100000
    beq     v0, $zero, lbl_80AA0880    
    nop
    beq     v0, $at, lbl_80AA08F8      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AA0904 
    lw      $ra, 0x0024($sp)           
lbl_80AA0880:
    lbu     t9, -0x70BB(t9)            ## 800F8F45
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    addu    t0, v0, t9                 
    lb      t1, 0x008C(t0)             ## 0000008C
    lui     t3, %hi(var_80AA0BAC)      ## t3 = 80AA0000
    lh      t8, 0x0034(v0)             ## 8011A604
    sll     t2, t1,  1                 
    addu    t3, t3, t2                 
    lh      t3, %lo(var_80AA0BAC)(t3)  
    lw      a0, 0x0028($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    slt     $at, t8, t3                
    beq     $at, $zero, lbl_80AA08D0   
    addiu   a2, $zero, 0x0016          ## a2 = 00000016
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4069          ## a1 = 00004069
    beq     $zero, $zero, lbl_80AA0904 
    lw      $ra, 0x0024($sp)           
lbl_80AA08D0:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lui     a3, 0x42B4                 ## a3 = 42B40000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      t5, 0x0028($sp)            
    lui     t4, %hi(func_80AA0914)     ## t4 = 80AA0000
    addiu   t4, t4, %lo(func_80AA0914) ## t4 = 80AA0914
    beq     $zero, $zero, lbl_80AA0900 
    sw      t4, 0x01EC(t5)             ## 000001EC
lbl_80AA08F8:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x4068          ## a1 = 00004068
lbl_80AA0900:
    lw      $ra, 0x0024($sp)           
lbl_80AA0904:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA0914:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80022BB0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AA0984    
    lw      a0, 0x0020($sp)            
    lui     t6, 0x8010                 ## t6 = 80100000
    lbu     t6, -0x70BB(t6)            ## 800F8F45
    lui     t7, 0x8012                 ## t7 = 80120000
    lui     a0, %hi(var_80AA0BAC)      ## a0 = 80AA0000
    addu    t7, t7, t6                 
    lb      t7, -0x59A4(t7)            ## 8011A65C
    sll     t8, t7,  1                 
    addu    a0, a0, t8                 
    lh      a0, %lo(var_80AA0BAC)(a0)  
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800721CC              
    sra     a0, a0, 16                 
    lw      v0, 0x0020($sp)            
    lui     t9, %hi(func_80AA09B0)     ## t9 = 80AA0000
    addiu   t9, t9, %lo(func_80AA09B0) ## t9 = 80AA09B0
    sw      $zero, 0x0118(v0)          ## 00000118
    beq     $zero, $zero, lbl_80AA09A0 
    sw      t9, 0x01EC(v0)             ## 000001EC
lbl_80AA0984:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x0016          ## a2 = 00000016
    lui     a3, 0x42B4                 ## a3 = 42B40000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80AA09A0:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA09B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80AA0A04      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AA0A00    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x406C          ## a1 = 0000406C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AA07F8)     ## t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA07F8) ## t6 = 80AA07F8
    sw      t6, 0x01EC(t7)             ## 000001EC
lbl_80AA0A00:
    lw      $ra, 0x0014($sp)           
lbl_80AA0A04:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA0A10:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x023C(s0)             ## 0000023C
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x41A0                 ## a1 = 41A00000
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    jal     func_80020F04              
    sh      t7, 0x023C(s0)             ## 0000023C
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f4                   ## $f4 = 500.00
    lui     a1, 0x3C75                 ## a1 = 3C750000
    ori     a1, a1, 0xC28F             ## a1 = 3C75C28F
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    swc1    $f4, 0x004C(s0)            ## 0000004C
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lw      t9, 0x01EC(s0)             ## 000001EC
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t8, 0x0000(v0)             ## 8011A5D0
    addiu   $at, $zero, 0x0157         ## $at = 00000157
    bnel    t8, $at, lbl_80AA0ACC      
    addiu   a2, s0, 0x01F0             ## a2 = 000001F0
    lw      t0, 0x1360(v0)             ## 8011B930
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bnel    t0, $at, lbl_80AA0ACC      
    addiu   a2, s0, 0x01F0             ## a2 = 000001F0
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t1, $zero, 0x0004          ## t1 = 00000004
    sw      t1, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    addiu   a2, s0, 0x01F0             ## a2 = 000001F0
lbl_80AA0ACC:
    or      a1, a2, $zero              ## a1 = 000001F0
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AA0B08:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lw      v0, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0140(v0)             ## 00000140
    lw      a2, 0x015C(v0)             ## 0000015C
    lbu     a3, 0x013E(v0)             ## 0000013E
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80AA0B60: .word 0x013E0400, 0x00000009, 0x01270000, 0x00000240
.word func_80AA05FC
.word func_80AA0720
.word func_80AA0A10
.word func_80AA0B08
var_80AA0B80: .word \
0x0A000939, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00160025, 0x00000000, 0x00000000
var_80AA0BAC: .word \
0x000A0014, 0x001E0028, 0x0032003C, 0x00460050, \
0x005A0064
var_80AA0BC0: .word \
0x405E405F, 0x40604061, 0x40624063, 0x40644065, \
0x40664067
var_80AA0BD4: .word 0x801F0002, 0x304C01F4, 0x00000000

.section .rodata


