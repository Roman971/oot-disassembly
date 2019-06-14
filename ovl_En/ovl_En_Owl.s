#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AAF320:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    lui     a1, %hi(var_80AB296C)      ## a1 = 80AB0000
    addiu   a1, a1, %lo(var_80AB296C)  ## a1 = 80AB296C
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4210                 ## a3 = 42100000
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s0, 0x01CC             ## t6 = 000001CC
    addiu   t7, s0, 0x024A             ## t7 = 0000024A
    addiu   t8, $zero, 0x0015          ## t8 = 00000015
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x15CC             ## a3 = 060015CC
    addiu   a2, a2, 0xC0E8             ## a2 = 0600C0E8
    lw      a0, 0x0054($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x0188             ## a1 = 00000188
    addiu   a1, s0, 0x02C8             ## a1 = 000002C8
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0601                 ## a3 = 06010000
    addiu   t9, s0, 0x030C             ## t9 = 0000030C
    addiu   t0, s0, 0x036C             ## t0 = 0000036C
    addiu   t1, $zero, 0x0010          ## t1 = 00000010
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0xC8A0             ## a3 = 0600C8A0
    addiu   a2, a2, 0x00B0             ## a2 = 060100B0
    sw      a1, 0x0034($sp)            
    jal     func_8008C788              
    lw      a0, 0x0054($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0038($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0054($sp)            
    lui     a3, %hi(var_80AB2940)      ## a3 = 80AB0000
    lw      a1, 0x0038($sp)            
    addiu   a3, a3, %lo(var_80AB2940)  ## a3 = 80AB2940
    lw      a0, 0x0054($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f4                   ## $f4 = -10.00
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f6                   ## $f6 = 500.00
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    sb      t2, 0x00AE(s0)             ## 000000AE
    swc1    $f4, 0x0070(s0)            ## 00000070
    swc1    $f6, 0x004C(s0)            ## 0000004C
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lui     a1, %hi(func_80AB0E30)     ## a1 = 80AB0000
    lui     t3, 0x0601                 ## t3 = 06010000
    addiu   t3, t3, 0xC8A0             ## t3 = 0600C8A0
    addiu   a1, a1, %lo(func_80AB0E30) ## a1 = 80AB0E30
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    sw      a1, 0x0038($sp)            
    sw      t3, 0x0010($sp)            
    lw      a3, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AB2404              
    swc1    $f8, 0x0014($sp)           
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   a0, $zero, 0x0004          ## a0 = 00000004
    andi    v1, $zero, 0x00FF          ## v1 = 00000000
    addiu   $at, $zero, 0x0FFF         ## $at = 00000FFF
    andi    a2, v0, 0x0FC0             ## a2 = 00000000
    sb      v1, 0x03F6(s0)             ## 000003F6
    sh      v1, 0x03EC(s0)             ## 000003EC
    sb      $zero, 0x03F9(s0)          ## 000003F9
    sb      a0, 0x03F5(s0)             ## 000003F5
    sb      $zero, 0x03F7(s0)          ## 000003F7
    sb      $zero, 0x03F4(s0)          ## 000003F4
    sb      a0, 0x03F8(s0)             ## 000003F8
    sra     a2, a2,  6                 
    bne     v0, $at, lbl_80AAF488      
    andi    a1, v0, 0x003F             ## a1 = 00000000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a1, $zero, 0x0020          ## a1 = 00000020
lbl_80AAF488:
    beq     a2, $zero, lbl_80AAF4BC    
    slti    $at, a1, 0x0020            
    beql    $at, $zero, lbl_80AAF4C0   
    lh      t5, 0x0032(s0)             ## 00000032
    lw      a0, 0x0054($sp)            
    jal     func_8002049C              
    sw      a2, 0x0044($sp)            
    beq     v0, $zero, lbl_80AAF4BC    
    lw      a2, 0x0044($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF4BC:
    lh      t5, 0x0032(s0)             ## 00000032
lbl_80AAF4C0:
    sltiu   $at, a2, 0x000D            
    sh      $zero, 0x03DE(s0)          ## 000003DE
    beq     $at, $zero, lbl_80AAF6D0   
    sh      t5, 0x03F0(s0)             ## 000003F0
    sll     t6, a2,  2                 
    lui     $at, %hi(var_80AB29A0)     ## $at = 80AB0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80AB29A0)($at) 
    jr      t6                         
    nop
var_80AAF4E8:
    lui     $at, 0x457A                ## $at = 457A0000
    lw      t7, 0x0038($sp)            
    mtc1    $at, $f10                  ## $f10 = 4000.00
    sb      $zero, 0x03FA(s0)          ## 000003FA
    sw      t7, 0x03FC(s0)             ## 000003FC
    beq     $zero, $zero, lbl_80AAF6F0 
    swc1    $f10, 0x00F4(s0)           ## 000000F4
var_80AAF504:
    lui     t8, %hi(func_80AAFC90)     ## t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AAFC90) ## t8 = 80AAFC90
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t8, 0x03FC(s0)             ## 000003FC
var_80AAF514:
    lhu     t9, 0x03EC(s0)             ## 000003EC
    lui     t2, %hi(func_80AAFEA8)     ## t2 = 80AB0000
    addiu   t1, $zero, 0x0020          ## t1 = 00000020
    addiu   t2, t2, %lo(func_80AAFEA8) ## t2 = 80AAFEA8
    ori     t0, t9, 0x0002             ## t0 = 00000002
    sh      t0, 0x03EC(s0)             ## 000003EC
    sh      t1, 0x03DE(s0)             ## 000003DE
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t2, 0x03FC(s0)             ## 000003FC
var_80AAF538:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t3, 0x0EDC(v0)             ## 8011B4AC
    lui     t5, %hi(func_80AB0064)     ## t5 = 80AB0000
    addiu   t5, t5, %lo(func_80AB0064) ## t5 = 80AB0064
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beq     t4, $zero, lbl_80AAF568    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF568:
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t5, 0x03FC(s0)             ## 000003FC
var_80AAF570:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EDC(v0)             ## 8011B4AC
    lui     t8, %hi(func_80AB01F8)     ## t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AB01F8) ## t8 = 80AB01F8
    andi    t7, t6, 0x0008             ## t7 = 00000000
    beq     t7, $zero, lbl_80AAF5A0    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF5A0:
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t8, 0x03FC(s0)             ## 000003FC
var_80AAF5A8:
    lui     t9, %hi(func_80AB038C)     ## t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AB038C) ## t9 = 80AB038C
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t9, 0x03FC(s0)             ## 000003FC
var_80AAF5B8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t0, 0x0EDA(v0)             ## 8011B4AA
    andi    t1, t0, 0x0200             ## t1 = 00000000
    bne     t1, $zero, lbl_80AAF5E8    
    nop
    lhu     t2, 0x0EDC(v0)             ## 8011B4AC
    lui     t4, %hi(func_80AB0464)     ## t4 = 80AB0000
    addiu   t4, t4, %lo(func_80AB0464) ## t4 = 80AB0464
    andi    t3, t2, 0x0001             ## t3 = 00000000
    bne     t3, $zero, lbl_80AAF5F8    
    nop
lbl_80AAF5E8:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF5F8:
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t4, 0x03FC(s0)             ## 000003FC
var_80AAF600:
    lui     t5, %hi(func_80AB0564)     ## t5 = 80AB0000
    addiu   t5, t5, %lo(func_80AB0564) ## t5 = 80AB0564
    sw      t5, 0x03FC(s0)             ## 000003FC
    lw      a0, 0x0054($sp)            
    jal     func_80020510              
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
var_80AAF620:
    lui     t6, %hi(func_80AB0680)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0680) ## t6 = 80AB0680
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t6, 0x03FC(s0)             ## 000003FC
var_80AAF630:
    lui     t7, %hi(func_80AB0680)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AB0680) ## t7 = 80AB0680
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t7, 0x03FC(s0)             ## 000003FC
var_80AAF640:
    lui     t8, %hi(func_80AB07B4)     ## t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AB07B4) ## t8 = 80AB07B4
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t8, 0x03FC(s0)             ## 000003FC
var_80AAF650:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t9, 0x8010                 ## t9 = 80100000
    lw      t9, -0x73E0(t9)            ## 800F8C20
    lw      t0, 0x00A4(v0)             ## 8011A674
    lui     t2, %hi(func_80AB094C)     ## t2 = 80AB0000
    addiu   t2, t2, %lo(func_80AB094C) ## t2 = 80AB094C
    and     t1, t9, t0                 
    bne     t1, $zero, lbl_80AAF688    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF688:
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t2, 0x03FC(s0)             ## 000003FC
var_80AAF690:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t3, 0x8010                 ## t3 = 80100000
    lw      t3, -0x73D8(t3)            ## 800F8C28
    lw      t4, 0x00A4(v0)             ## 8011A674
    lui     t6, %hi(func_80AB0AE0)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0AE0) ## t6 = 80AB0AE0
    and     t5, t3, t4                 
    bne     t5, $zero, lbl_80AAF6C8    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAF6F4 
    lw      $ra, 0x002C($sp)           
lbl_80AAF6C8:
    beq     $zero, $zero, lbl_80AAF6F0 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AAF6D0:
    lhu     t7, 0x03EC(s0)             ## 000003EC
    lui     t0, %hi(func_80AAFC90)     ## t0 = 80AB0000
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    addiu   t0, t0, %lo(func_80AAFC90) ## t0 = 80AAFC90
    ori     t8, t7, 0x0002             ## t8 = 00000002
    sh      t8, 0x03EC(s0)             ## 000003EC
    sh      t9, 0x03DE(s0)             ## 000003DE
    sw      t0, 0x03FC(s0)             ## 000003FC
lbl_80AAF6F0:
    lw      $ra, 0x002C($sp)           
lbl_80AAF6F4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAF704:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAF730:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lw      v0, 0x1C44(a3)             ## 00001C44
    sw      a2, 0x0018($sp)            
    addiu   a0, a2, 0x0024             ## a0 = 00000024
    jal     func_80063F00              
    addiu   a1, v0, 0x0024             ## a1 = 00000024
    lw      a2, 0x0018($sp)            
    sh      v0, 0x0032(a2)             ## 00000032
    sh      v0, 0x00B6(a2)             ## 000000B6
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AAF76C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80AAF850    
    lwc1    $f2, 0x0034($sp)           
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0FFF         ## $at = 00000FFF
    bne     t6, $at, lbl_80AAF7C0      
    nop
    lhu     t7, 0x03EC(s0)             ## 000003EC
    addiu   v0, $zero, 0xFF9C          ## v0 = FFFFFF9C
    ori     t8, t7, 0x0040             ## t8 = 00000040
    beq     $zero, $zero, lbl_80AAF828 
    sh      t8, 0x03EC(s0)             ## 000003EC
lbl_80AAF7C0:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lhu     t9, 0x003A($sp)            
    lhu     t3, 0x003A($sp)            
    c.lt.s  $f0, $f4                   
    andi    t0, t9, 0x0001             ## t0 = 00000000
    andi    t4, t3, 0x0001             ## t4 = 00000000
    bc1f    lbl_80AAF80C               
    nop
    beq     t0, $zero, lbl_80AAF7FC    
    addiu   v0, $zero, 0xFF9D          ## v0 = FFFFFF9D
    beq     $zero, $zero, lbl_80AAF7FC 
    addiu   v0, $zero, 0xFF9F          ## v0 = FFFFFF9F
lbl_80AAF7FC:
    lhu     t1, 0x03EC(s0)             ## 000003EC
    ori     t2, t1, 0x0040             ## t2 = 00000040
    beq     $zero, $zero, lbl_80AAF828 
    sh      t2, 0x03EC(s0)             ## 000003EC
lbl_80AAF80C:
    beq     t4, $zero, lbl_80AAF81C    
    addiu   v0, $zero, 0xFF9E          ## v0 = FFFFFF9E
    beq     $zero, $zero, lbl_80AAF81C 
    addiu   v0, $zero, 0xFFA0          ## v0 = FFFFFFA0
lbl_80AAF81C:
    lhu     t5, 0x03EC(s0)             ## 000003EC
    andi    t6, t5, 0xFFBF             ## t6 = 00000000
    sh      t6, 0x03EC(s0)             ## 000003EC
lbl_80AAF828:
    sll     a2, v0, 16                 
    sra     a2, a2, 16                 
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x21FC          ## a1 = 000021FC
    or      a3, s0, $zero              ## a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    sh      v0, 0x03F2(s0)             ## 000003F2
    beq     $zero, $zero, lbl_80AAF8C4 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AAF850:
    lhu     t7, 0x0032($sp)            
    lui     $at, 0x447A                ## $at = 447A0000
    or      a0, s0, $zero              ## a0 = 00000000
    sh      t7, 0x010E(s0)             ## 0000010E
    lhu     t8, 0x003A($sp)            
    andi    t9, t8, 0x0002             ## t9 = 00000000
    beql    t9, $zero, lbl_80AAF884    
    mtc1    $at, $f0                   ## $f0 = 1000.00
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f0                   ## $f0 = 200.00
    beq     $zero, $zero, lbl_80AAF88C 
    lwc1    $f6, 0x0090(s0)            ## 00000090
    mtc1    $at, $f0                   ## $f0 = 200.00
lbl_80AAF884:
    nop
    lwc1    $f6, 0x0090(s0)            ## 00000090
lbl_80AAF88C:
    lui     $at, 0x0001                ## $at = 00010000
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_80AAF8C4               
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      t0, 0x0004(s0)             ## 00000004
    mfc1    a2, $f2                    
    mfc1    a3, $f0                    
    or      t1, t0, $at                ## t1 = 00010000
    sw      t1, 0x0004(s0)             ## 00000004
    sw      $zero, 0x0010($sp)         
    jal     func_80022960              
    lw      a1, 0x002C($sp)            
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AAF8C4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAF8D8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022930              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80AAF904    
    lw      a0, 0x0020($sp)            
    beq     $zero, $zero, lbl_80AAF93C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AAF904:
    lui     $at, 0x42F0                ## $at = 42F00000
    mtc1    $at, $f6                   ## $f6 = 120.00
    lwc1    $f4, 0x0090(a0)            ## 00000090
    lhu     t6, 0x002A($sp)            
    lui     a2, 0x43AF                 ## a2 = 43AF0000
    c.lt.s  $f4, $f6                   
    sh      t6, 0x010E(a0)             ## 0000010E
    lw      a1, 0x0024($sp)            
    lui     a3, 0x447A                 ## a3 = 447A0000
    bc1fl   lbl_80AAF93C               
    or      v0, $zero, $zero           ## v0 = 00000000
    jal     func_80022960              
    sw      $zero, 0x0010($sp)         
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AAF93C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAF94C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     t6, 0x0601                 ## t6 = 06010000
    addiu   t6, t6, 0xC684             ## t6 = 0600C684
    lui     a1, %hi(func_80AB12A8)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    addiu   a1, a1, %lo(func_80AB12A8) ## a1 = 80AB12A8
    sw      t6, 0x0010($sp)            
    addiu   a3, a0, 0x0188             ## a3 = 00000188
    sw      a0, 0x0020($sp)            
    jal     func_80AB2404              
    swc1    $f4, 0x0014($sp)           
    lw      t7, 0x0020($sp)            
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    jal     func_80063BF0              
    sh      $zero, 0x03E4(t7)          ## 000003E4
    lw      t8, 0x0020($sp)            
    sh      v0, 0x03E6(t8)             ## 000003E6
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AAF9AC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      a2, 0x001C(a3)             ## 0000001C
    lw      a0, 0x001C($sp)            
    andi    a2, a2, 0x003F             ## a2 = 00000000
    slti    $at, a2, 0x0020            
    beq     $at, $zero, lbl_80AAF9E0   
    or      a1, a2, $zero              ## a1 = 00000000
    jal     func_800204D0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80AAF9E0:
    jal     func_80AAF94C              
    or      a0, a3, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAF9F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x03DE(a0)             ## 000003DE
    andi    t7, t6, 0x003F             ## t7 = 00000000
    bnel    t7, $zero, lbl_80AAFA1C    
    lw      $ra, 0x0014($sp)           
    jal     func_80AAF9AC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80AAFA1C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFA28:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    jal     func_80026D90              
    sw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lw      a0, 0x0018($sp)            
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80AAFA6C               
    lhu     t8, 0x03EC(a0)             ## 000003EC
    lhu     t6, 0x03EC(a0)             ## 000003EC
    ori     t7, t6, 0x0020             ## t7 = 00000020
    beq     $zero, $zero, lbl_80AAFA74 
    sh      t7, 0x03EC(a0)             ## 000003EC
    lhu     t8, 0x03EC(a0)             ## 000003EC
lbl_80AAFA6C:
    andi    t9, t8, 0xFFDF             ## t9 = 00000000
    sh      t9, 0x03EC(a0)             ## 000003EC
lbl_80AAFA74:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFA84:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80AAFA28              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   v0, $zero, 0x0004          ## v0 = 00000004
    lhu     t6, 0x03EC(a0)             ## 000003EC
    sh      $zero, 0x03E2(a0)          ## 000003E2
    lh      t8, 0x03E2(a0)             ## 000003E2
    ori     t7, t6, 0x0010             ## t7 = 00000010
    sh      t7, 0x03EC(a0)             ## 000003EC
    sb      v0, 0x03F8(a0)             ## 000003F8
    sb      $zero, 0x03F4(a0)          ## 000003F4
    sb      $zero, 0x03F6(a0)          ## 000003F6
    sb      v0, 0x03F5(a0)             ## 000003F5
    sb      t8, 0x03F7(a0)             ## 000003F7
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AAFAD0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022AD0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AAFB30    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AAF9AC              
    lw      a1, 0x0024($sp)            
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
lbl_80AAFB30:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFB44:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022AD0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AAFBDC    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    lh      t6, 0x03DE(s0)             ## 000003DE
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t7, t6, 0x003F             ## t7 = 00000000
    bnel    t7, $zero, lbl_80AAFBAC    
    lhu     t8, 0x03EC(s0)             ## 000003EC
    jal     func_80AAF9AC              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80AAFBCC 
    lw      t1, 0x0004(s0)             ## 00000004
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AAFBAC:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
    lui     t0, %hi(func_80AAF9F8)     ## t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AAF9F8) ## t0 = 80AAF9F8
    sw      t0, 0x03FC(s0)             ## 000003FC
    lw      t1, 0x0004(s0)             ## 00000004
lbl_80AAFBCC:
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    and     t2, t1, $at                
    sw      t2, 0x0004(s0)             ## 00000004
lbl_80AAFBDC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFBF0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x001C($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AAFC80      
    lw      a2, 0x001C($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x001C($sp)            
    beq     v0, $zero, lbl_80AAFC80    
    lw      a2, 0x001C($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AAFC58    
    nop
    beq     v0, $at, lbl_80AAFC68      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAFC84 
    lw      $ra, 0x0014($sp)           
lbl_80AAFC58:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2065          ## a1 = 00002065
    beq     $zero, $zero, lbl_80AAFC84 
    lw      $ra, 0x0014($sp)           
lbl_80AAFC68:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2067          ## a1 = 00002067
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AAFAD0)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFAD0) ## t6 = 80AAFAD0
    sw      t6, 0x03FC(t7)             ## 000003FC
lbl_80AAFC80:
    lw      $ra, 0x0014($sp)           
lbl_80AAFC84:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFC90:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x2064          ## a2 = 00002064
    lui     a3, 0x43B4                 ## a3 = 43B40000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AAFCFC    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AAFBF0)     ## t6 = 80AB0000
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t6, t6, %lo(func_80AAFBF0) ## t6 = 80AAFBF0
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      t6, 0x03FC(t7)             ## 000003FC
    lhu     t8, 0x0EE0(v0)             ## 8011B4B0
    ori     t9, t8, 0x8000             ## t9 = 00008000
    sh      t9, 0x0EE0(v0)             ## 8011B4B0
    lw      $ra, 0x001C($sp)           
lbl_80AAFCFC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFD08:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AAFDB4      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AAFDB4    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AAFD74    
    nop
    beq     v0, $at, lbl_80AAFD8C      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAFDA4 
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AAFD74:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2069          ## a1 = 00002069
    lui     t6, %hi(func_80AAFDC8)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFDC8) ## t6 = 80AAFDC8
    beq     $zero, $zero, lbl_80AAFDA0 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AAFD8C:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206B          ## a1 = 0000206B
    lui     t7, %hi(func_80AAFB44)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAFB44) ## t7 = 80AAFB44
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AAFDA0:
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AAFDA4:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
lbl_80AAFDB4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFDC8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AAFE2C      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AAFE28    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206A          ## a1 = 0000206A
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AAFD08)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFD08) ## t6 = 80AAFD08
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AAFE28:
    lw      $ra, 0x0014($sp)           
lbl_80AAFE2C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFE38:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AAFE9C      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AAFE98    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2069          ## a1 = 00002069
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AAFDC8)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFDC8) ## t6 = 80AAFDC8
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    andi    t8, t7, 0xFFFD             ## t8 = 00000000
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AAFE98:
    lw      $ra, 0x0014($sp)           
lbl_80AAFE9C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFEA8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x2068          ## a2 = 00002068
    lui     a3, 0x4407                 ## a3 = 44070000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AAFF00    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AAFE38)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFE38) ## t6 = 80AAFE38
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AAFF00:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFF0C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AAFFE0      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AAFFE0    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     t6, 0x8012                 ## t6 = 80120000
    beq     v0, $zero, lbl_80AAFF78    
    nop
    beq     v0, $at, lbl_80AAFFB8      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAFFD0 
    lhu     t0, 0x03EC(s0)             ## 000003EC
lbl_80AAFF78:
    lhu     t6, -0x4B54(t6)            ## 8011B4AC
    addiu   a1, $zero, 0x206D          ## a1 = 0000206D
    or      a0, a2, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80AAFFA0    
    nop
    jal     func_800DCE80              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AAFFA8 
    nop
lbl_80AAFFA0:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206C          ## a1 = 0000206C
lbl_80AAFFA8:
    lui     t8, %hi(func_80AAFFF4)     ## t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AAFFF4) ## t8 = 80AAFFF4
    beq     $zero, $zero, lbl_80AAFFCC 
    sw      t8, 0x03FC(s0)             ## 000003FC
lbl_80AAFFB8:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206E          ## a1 = 0000206E
    lui     t9, %hi(func_80AAFB44)     ## t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AAFB44) ## t9 = 80AAFB44
    sw      t9, 0x03FC(s0)             ## 000003FC
lbl_80AAFFCC:
    lhu     t0, 0x03EC(s0)             ## 000003EC
lbl_80AAFFD0:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t1, t0, 0xFFFD             ## t1 = 00000000
    jal     func_80AAFA84              
    sh      t1, 0x03EC(s0)             ## 000003EC
lbl_80AAFFE0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AAFFF4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AB0058      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB0054    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206A          ## a1 = 0000206A
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AAFF0C)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFF0C) ## t6 = 80AAFF0C
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AB0054:
    lw      $ra, 0x0014($sp)           
lbl_80AB0058:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0064:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x206C          ## a2 = 0000206C
    lui     a3, 0x43F0                 ## a3 = 43F00000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB00BC    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AAFFF4)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFFF4) ## t6 = 80AAFFF4
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB00BC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB00C8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AB0174      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB0174    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AB0134    
    nop
    beq     v0, $at, lbl_80AB014C      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB0164 
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB0134:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206F          ## a1 = 0000206F
    lui     t6, %hi(func_80AB0188)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0188) ## t6 = 80AB0188
    beq     $zero, $zero, lbl_80AB0160 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AB014C:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2070          ## a1 = 00002070
    lui     t7, %hi(func_80AAFB44)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAFB44) ## t7 = 80AAFB44
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AB0160:
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB0164:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
lbl_80AB0174:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0188:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AB01EC      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB01E8    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206A          ## a1 = 0000206A
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AB00C8)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB00C8) ## t6 = 80AB00C8
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AB01E8:
    lw      $ra, 0x0014($sp)           
lbl_80AB01EC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB01F8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x206F          ## a2 = 0000206F
    lui     a3, 0x43B4                 ## a3 = 43B40000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB0250    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AB0188)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0188) ## t6 = 80AB0188
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB0250:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB025C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AB0308      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB0308    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AB02C8    
    nop
    beq     v0, $at, lbl_80AB02E0      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB02F8 
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB02C8:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2071          ## a1 = 00002071
    lui     t6, %hi(func_80AB031C)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB031C) ## t6 = 80AB031C
    beq     $zero, $zero, lbl_80AB02F4 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AB02E0:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x2072          ## a1 = 00002072
    lui     t7, %hi(func_80AAFB44)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAFB44) ## t7 = 80AAFB44
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AB02F4:
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB02F8:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
lbl_80AB0308:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB031C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AB0380      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB037C    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x206A          ## a1 = 0000206A
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AB025C)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB025C) ## t6 = 80AB025C
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AB037C:
    lw      $ra, 0x0014($sp)           
lbl_80AB0380:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB038C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x2071          ## a2 = 00002071
    lui     a3, 0x43B4                 ## a3 = 43B40000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB03E4    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AB031C)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB031C) ## t6 = 80AB031C
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB03E4:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB03F0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022AD0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB0450    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AAF9AC              
    lw      a1, 0x0024($sp)            
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
lbl_80AB0450:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0464:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lui     v1, 0x8010                 ## v1 = 80100000
    addiu   v1, v1, 0x8BF0             ## v1 = 800F8BF0
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x598C(v0)            ## 8011A674
    lw      t6, 0x0038(v1)             ## 800F8C28
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    and     t7, t6, v0                 
    beq     t7, $zero, lbl_80AB04C8    
    lui     a3, 0x43B4                 ## a3 = 43B40000
    lw      t8, 0x0030(v1)             ## 800F8C20
    and     t9, t8, v0                 
    beq     t9, $zero, lbl_80AB04C0    
    nop
    beq     $zero, $zero, lbl_80AB04CC 
    addiu   a2, $zero, 0x4031          ## a2 = 00004031
lbl_80AB04C0:
    beq     $zero, $zero, lbl_80AB04CC 
    addiu   a2, $zero, 0x4017          ## a2 = 00004017
lbl_80AB04C8:
    addiu   a2, $zero, 0x4002          ## a2 = 00004002
lbl_80AB04CC:
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB04F8    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t1, 0x0020($sp)            
    lui     t0, %hi(func_80AB03F0)     ## t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AB03F0) ## t0 = 80AB03F0
    sw      t0, 0x03FC(t1)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB04F8:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0504:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB0554    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    jal     func_80AAF94C              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AB16A4)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB16A4) ## t6 = 80AB16A4
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      a0, 0x001C($sp)            
    jal     func_800204D0              
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
lbl_80AB0554:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0564:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lhu     t6, -0x4B06(t6)            ## 8011B4FA
    addiu   a2, $zero, 0x4003          ## a2 = 00004003
    lw      a0, 0x0020($sp)            
    andi    t7, t6, 0x0020             ## t7 = 00000000
    beq     t7, $zero, lbl_80AB0598    
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80AB0598 
    addiu   a2, $zero, 0x4004          ## a2 = 00004004
lbl_80AB0598:
    jal     func_80AAF730              
    sh      a2, 0x001E($sp)            
    lhu     a2, 0x001E($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF8D8              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB05E0    
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0F2A(v0)             ## 8011B4FA
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    ori     t9, t8, 0x0020             ## t9 = 00000020
    jal     func_800C69A0              
    sh      t9, 0x0F2A(v0)             ## 8011B4FA
    lw      t1, 0x0020($sp)            
    lui     t0, %hi(func_80AB0504)     ## t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AB0504) ## t0 = 80AB0504
    sw      t0, 0x03FC(t1)             ## 000003FC
lbl_80AB05E0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB05F0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AB062C    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    jal     func_80AAF94C              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AB16A4)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB16A4) ## t6 = 80AB16A4
    sw      t6, 0x03FC(t7)             ## 000003FC
lbl_80AB062C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB063C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AB0670    
    lui     a0, 0x1100                 ## a0 = 11000000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             ## a0 = 110000FF
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AB0680)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0680) ## t6 = 80AB0680
    sw      t6, 0x03FC(t7)             ## 000003FC
lbl_80AB0670:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0680:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AAF730              
    sw      a1, 0x0024($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lbu     t6, -0x59F6(t6)            ## 8011A60A
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x3062          ## a2 = 00003062
    bne     t6, $zero, lbl_80AB06DC    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AAF8D8              
    or      a0, s0, $zero              ## a0 = 00000000
    beql    v0, $zero, lbl_80AB0704    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lui     t7, %hi(func_80AB063C)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AB063C) ## t7 = 80AB063C
    beq     $zero, $zero, lbl_80AB0700 
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AB06DC:
    jal     func_80AAF8D8              
    addiu   a2, $zero, 0x3063          ## a2 = 00003063
    beql    v0, $zero, lbl_80AB0704    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lui     t8, %hi(func_80AB05F0)     ## t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AB05F0) ## t8 = 80AB05F0
    sw      t8, 0x03FC(s0)             ## 000003FC
lbl_80AB0700:
    lw      $ra, 0x001C($sp)           
lbl_80AB0704:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0714:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x001C($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AB07A4      
    lw      a2, 0x001C($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB07A4    
    lw      a2, 0x001C($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AB077C    
    nop
    beq     v0, $at, lbl_80AB078C      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB07A8 
    lw      $ra, 0x0014($sp)           
lbl_80AB077C:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x607A          ## a1 = 0000607A
    beq     $zero, $zero, lbl_80AB07A8 
    lw      $ra, 0x0014($sp)           
lbl_80AB078C:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x607C          ## a1 = 0000607C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80AAFB44)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAFB44) ## t6 = 80AAFB44
    sw      t6, 0x03FC(t7)             ## 000003FC
lbl_80AB07A4:
    lw      $ra, 0x0014($sp)           
lbl_80AB07A8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB07B4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x6079          ## a2 = 00006079
    jal     func_80AAF76C              
    lui     a3, 0x43B4                 ## a3 = 43B40000
    beql    v0, $zero, lbl_80AB0810    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t8, 0x0020($sp)            
    lui     t7, %hi(func_80AB0714)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AB0714) ## t7 = 80AB0714
    sw      t7, 0x03FC(t8)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB0810:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB081C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AB08C8      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB08C8    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AB0888    
    nop
    beq     v0, $at, lbl_80AB08A0      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB08B8 
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB0888:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C1          ## a1 = 000010C1
    lui     t6, %hi(func_80AB08DC)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB08DC) ## t6 = 80AB08DC
    beq     $zero, $zero, lbl_80AB08B4 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AB08A0:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C3          ## a1 = 000010C3
    lui     t7, %hi(func_80AAFB44)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAFB44) ## t7 = 80AAFB44
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AB08B4:
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB08B8:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
lbl_80AB08C8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB08DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AB0940      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB093C    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C2          ## a1 = 000010C2
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AB081C)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB081C) ## t6 = 80AB081C
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AB093C:
    lw      $ra, 0x0014($sp)           
lbl_80AB0940:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB094C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x10C0          ## a2 = 000010C0
    lui     a3, 0x433E                 ## a3 = 433E0000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB09A4    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AB08DC)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB08DC) ## t6 = 80AB08DC
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB09A4:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB09B0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0024($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80AB0A5C      
    lw      a2, 0x0024($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800D6110              
    sw      a2, 0x0024($sp)            
    beq     v0, $zero, lbl_80AB0A5C    
    lw      a2, 0x0024($sp)            
    lui     v0, 0x0001                 ## v0 = 00010000
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000104BD
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AB0A1C    
    nop
    beq     v0, $at, lbl_80AB0A34      
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB0A4C 
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB0A1C:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C5          ## a1 = 000010C5
    lui     t6, %hi(func_80AB0A70)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0A70) ## t6 = 80AB0A70
    beq     $zero, $zero, lbl_80AB0A48 
    sw      t6, 0x03FC(s0)             ## 000003FC
lbl_80AB0A34:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C7          ## a1 = 000010C7
    lui     t7, %hi(func_80AAFB44)     ## t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAFB44) ## t7 = 80AAFB44
    sw      t7, 0x03FC(s0)             ## 000003FC
lbl_80AB0A48:
    lhu     t8, 0x03EC(s0)             ## 000003EC
lbl_80AB0A4C:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    jal     func_80AAFA84              
    sh      t9, 0x03EC(s0)             ## 000003EC
lbl_80AB0A5C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0A70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80AB0AD4      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80AB0AD0    
    lw      a0, 0x001C($sp)            
    jal     func_800DCE80              
    addiu   a1, $zero, 0x10C6          ## a1 = 000010C6
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80AB09B0)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB09B0) ## t6 = 80AB09B0
    lhu     t7, 0x03EC(a0)             ## 000003EC
    sw      t6, 0x03FC(a0)             ## 000003FC
    ori     t8, t7, 0x0002             ## t8 = 00000002
    jal     func_80AAFA84              
    sh      t8, 0x03EC(a0)             ## 000003EC
lbl_80AB0AD0:
    lw      $ra, 0x0014($sp)           
lbl_80AB0AD4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0AE0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80AAF730              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x10C4          ## a2 = 000010C4
    lui     a3, 0x43B4                 ## a3 = 43B40000
    jal     func_80AAF76C              
    sw      $zero, 0x0010($sp)         
    beql    v0, $zero, lbl_80AB0B38    
    lw      $ra, 0x001C($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x005A          ## a0 = 0000005A
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80AB0A70)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0A70) ## t6 = 80AB0A70
    sw      t6, 0x03FC(t7)             ## 000003FC
    lw      $ra, 0x001C($sp)           
lbl_80AB0B38:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0B44:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sdc1    $f20, 0x0010($sp)          
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      v0, 0x001C(a2)             ## 0000001C
    sw      a3, 0x0034($sp)            
    sw      a2, 0x0030($sp)            
    andi    v0, v0, 0x0FC0             ## v0 = 00000000
    sra     v0, v0,  6                 
    sw      v0, 0x0024($sp)            
    addiu   a0, a2, 0x03D0             ## a0 = 000003D0
    jal     func_800A5560              
    addiu   a1, a3, 0x00E0             ## a1 = 000000E0
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f14                  ## $f14 = 1.00
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f10                  ## $f10 = 45.00
    lw      a3, 0x0034($sp)            
    lw      a2, 0x0030($sp)            
    div.s   $f12, $f0, $f10            
    lwc1    $f4, 0x00E0(a3)            ## 000000E0
    lw      v0, 0x0024($sp)            
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    swc1    $f4, 0x03D0(a2)            ## 000003D0
    lwc1    $f6, 0x00E4(a3)            ## 000000E4
    swc1    $f6, 0x03D4(a2)            ## 000003D4
    lwc1    $f8, 0x00E8(a3)            ## 000000E8
    swc1    $f8, 0x03D8(a2)            ## 000003D8
    c.lt.s  $f14, $f12                 
    nop
    bc1f    lbl_80AB0BCC               
    nop
    mov.s   $f12, $f14                 
lbl_80AB0BCC:
    beq     v0, $at, lbl_80AB0BEC      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     v0, $at, lbl_80AB0C70      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beql    v0, $at, lbl_80AB0C74      
    add.s   $f20, $f12, $f12           
    beq     $zero, $zero, lbl_80AB0CF0 
    lw      $ra, 0x001C($sp)           
lbl_80AB0BEC:
    add.s   $f20, $f12, $f12           
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    addiu   a1, $zero, 0x20BD          ## a1 = 000020BD
    mfc1    a2, $f20                   
    jal     func_800C50AC              
    sw      a3, 0x0034($sp)            
    lw      a3, 0x0034($sp)            
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    lhu     v0, 0x1D74(a3)             ## 00001D74
    addiu   a1, $zero, 0x3926          ## a1 = 00003926
    slti    $at, v0, 0x0145            
    beq     $at, $zero, lbl_80AB0C38   
    slti    $at, v0, 0x008E            
    bne     $at, $zero, lbl_80AB0C4C   
    slti    $at, v0, 0x010B            
    beql    $at, $zero, lbl_80AB0C50   
    addiu   $at, $zero, 0x0055         ## $at = 00000055
lbl_80AB0C38:
    mfc1    a2, $f20                   
    jal     func_800C5154              
    sw      a3, 0x0034($sp)            
    lw      a3, 0x0034($sp)            
    lhu     v0, 0x1D74(a3)             ## 00001D74
lbl_80AB0C4C:
    addiu   $at, $zero, 0x0055         ## $at = 00000055
lbl_80AB0C50:
    bne     v0, $at, lbl_80AB0CEC      
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    mfc1    a2, $f20                   
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    jal     func_800C50AC              
    addiu   a1, $zero, 0x28BE          ## a1 = 000028BE
    beq     $zero, $zero, lbl_80AB0CF0 
    lw      $ra, 0x001C($sp)           
lbl_80AB0C70:
    add.s   $f20, $f12, $f12           
lbl_80AB0C74:
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    addiu   a1, $zero, 0x20BD          ## a1 = 000020BD
    mfc1    a2, $f20                   
    jal     func_800C50AC              
    sw      a3, 0x0034($sp)            
    lw      a3, 0x0034($sp)            
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    lhu     v0, 0x1D74(a3)             ## 00001D74
    addiu   a1, $zero, 0x3926          ## a1 = 00003926
    slti    $at, v0, 0x01A4            
    beq     $at, $zero, lbl_80AB0CBC   
    slti    $at, v0, 0x00C2            
    bne     $at, $zero, lbl_80AB0CD0   
    slti    $at, v0, 0x0119            
    beql    $at, $zero, lbl_80AB0CD4   
    addiu   $at, $zero, 0x00D9         ## $at = 000000D9
lbl_80AB0CBC:
    mfc1    a2, $f20                   
    jal     func_800C5154              
    sw      a3, 0x0034($sp)            
    lw      a3, 0x0034($sp)            
    lhu     v0, 0x1D74(a3)             ## 00001D74
lbl_80AB0CD0:
    addiu   $at, $zero, 0x00D9         ## $at = 000000D9
lbl_80AB0CD4:
    bne     v0, $at, lbl_80AB0CEC      
    lui     a0, %hi(var_80AB297C)      ## a0 = 80AB0000
    mfc1    a2, $f20                   
    addiu   a0, a0, %lo(var_80AB297C)  ## a0 = 80AB297C
    jal     func_800C50AC              
    addiu   a1, $zero, 0x28BE          ## a1 = 000028BE
lbl_80AB0CEC:
    lw      $ra, 0x001C($sp)           
lbl_80AB0CF0:
    ldc1    $f20, 0x0010($sp)          
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0D00:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x1D6C(s0)             ## 00001D6C
    beql    t6, $zero, lbl_80AB0D6C    
    lhu     t9, 0x03EC(s1)             ## 000003EC
    lw      v0, 0x1DA8(s0)             ## 00001DA8
    beql    v0, $zero, lbl_80AB0D6C    
    lhu     t9, 0x03EC(s1)             ## 000003EC
    lbu     t7, 0x03FA(s1)             ## 000003FA
    lhu     t8, 0x0000(v0)             ## 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    beql    t7, t8, lbl_80AB0D60       
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80AB247C              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80AB0EC4              
    or      a1, s0, $zero              ## a1 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
lbl_80AB0D60:
    jal     func_80AB261C              
    or      a1, s0, $zero              ## a1 = 00000000
    lhu     t9, 0x03EC(s1)             ## 000003EC
lbl_80AB0D6C:
    or      a0, s1, $zero              ## a0 = 00000000
    andi    t0, t9, 0x0080             ## t0 = 00000000
    beql    t0, $zero, lbl_80AB0D88    
    lw      $ra, 0x001C($sp)           
    jal     func_80AB0B44              
    or      a1, s0, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80AB0D88:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AB0D98:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x1D6C(s0)             ## 00001D6C
    beql    t6, $zero, lbl_80AB0E04    
    lhu     t9, 0x03EC(s1)             ## 000003EC
    lw      v0, 0x1DA8(s0)             ## 00001DA8
    beql    v0, $zero, lbl_80AB0E04    
    lhu     t9, 0x03EC(s1)             ## 000003EC
    lbu     t7, 0x03FA(s1)             ## 000003FA
    lhu     t8, 0x0000(v0)             ## 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    beql    t7, t8, lbl_80AB0DF8       
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80AB247C              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80AB0EC4              
    or      a1, s0, $zero              ## a1 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
lbl_80AB0DF8:
    jal     func_80AB2824              
    or      a1, s0, $zero              ## a1 = 00000000
    lhu     t9, 0x03EC(s1)             ## 000003EC
lbl_80AB0E04:
    or      a0, s1, $zero              ## a0 = 00000000
    andi    t0, t9, 0x0080             ## t0 = 00000000
    beql    t0, $zero, lbl_80AB0E20    
    lw      $ra, 0x001C($sp)           
    jal     func_80AB0B44              
    or      a1, s0, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80AB0E20:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AB0E30:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_80AB0EA0    
    lhu     t2, 0x03EC(a0)             ## 000003EC
    lw      v0, 0x1DA8(a1)             ## 00001DA8
    beql    v0, $zero, lbl_80AB0EA0    
    lhu     t2, 0x03EC(a0)             ## 000003EC
    lbu     t7, 0x03FA(a0)             ## 000003FA
    lhu     t8, 0x0000(v0)             ## 00000000
    beql    t7, t8, lbl_80AB0E98       
    lhu     t1, 0x0008(v0)             ## 00000008
    lhu     t9, 0x03EC(a0)             ## 000003EC
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    ori     t0, t9, 0x0004             ## t0 = 00000004
    sh      t0, 0x03EC(a0)             ## 000003EC
    sw      a1, 0x001C($sp)            
    jal     func_80AB247C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80AB0EC4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_80AB0E9C 
    lw      a1, 0x001C($sp)            
    lhu     t1, 0x0008(v0)             ## 00000008
lbl_80AB0E98:
    sh      t1, 0x0034(a0)             ## 00000034
lbl_80AB0E9C:
    lhu     t2, 0x03EC(a0)             ## 000003EC
lbl_80AB0EA0:
    andi    t3, t2, 0x0080             ## t3 = 00000000
    beql    t3, $zero, lbl_80AB0EB8    
    lw      $ra, 0x0014($sp)           
    jal     func_80AB0B44              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80AB0EB8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB0EC4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1DA8(s1)             ## 00001DA8
    lhu     v0, 0x0000(t6)             ## 00000000
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    sltiu   $at, t7, 0x0005            
    beq     $at, $zero, lbl_80AB1000   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AB29D4)     ## $at = 80AB0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AB29D4)($at) 
    jr      t7                         
    nop
var_80AB0F08:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x15CC             ## t8 = 060015CC
    lui     a1, %hi(func_80AB0D00)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    addiu   a1, a1, %lo(func_80AB0D00) ## a1 = 80AB0D00
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a3, s0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f4, 0x0014($sp)           
    lw      t9, 0x1DA8(s1)             ## 00001DA8
    beq     $zero, $zero, lbl_80AB1000 
    lhu     v0, 0x0000(t9)             ## 00000000
var_80AB0F44:
    lui     t0, %hi(func_80AB2338)     ## t0 = 80AB0000
    mtc1    $zero, $f6                 ## $f6 = 0.00
    addiu   t0, t0, %lo(func_80AB2338) ## t0 = 80AB2338
    lui     t1, 0x0601                 ## t1 = 06010000
    sw      t0, 0x0134(s0)             ## 00000134
    addiu   t1, t1, 0xC8A0             ## t1 = 0600C8A0
    lui     a1, %hi(func_80AB0E30)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    addiu   a1, a1, %lo(func_80AB0E30) ## a1 = 80AB0E30
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a3, s0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f6, 0x0014($sp)           
    lw      t2, 0x1DA8(s1)             ## 00001DA8
    beq     $zero, $zero, lbl_80AB1000 
    lhu     v0, 0x0000(t2)             ## 00000000
var_80AB0F8C:
    lui     t3, %hi(func_80AB2338)     ## t3 = 80AB0000
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t3, t3, %lo(func_80AB2338) ## t3 = 80AB2338
    lui     t4, 0x0600                 ## t4 = 06000000
    sw      t3, 0x0134(s0)             ## 00000134
    addiu   t4, t4, 0x15CC             ## t4 = 060015CC
    lui     a1, %hi(func_80AB0D98)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    addiu   a1, a1, %lo(func_80AB0D98) ## a1 = 80AB0D98
    sw      t4, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a3, s0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f8, 0x0014($sp)           
    lw      t5, 0x1DA8(s1)             ## 00001DA8
    beq     $zero, $zero, lbl_80AB1000 
    lhu     v0, 0x0000(t5)             ## 00000000
var_80AB0FD4:
    lui     t6, %hi(func_80AB0E30)     ## t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AB0E30) ## t6 = 80AB0E30
    sw      $zero, 0x0134(s0)          ## 00000134
    sw      t6, 0x03FC(s0)             ## 000003FC
    lw      t7, 0x1DA8(s1)             ## 00001DA8
    beq     $zero, $zero, lbl_80AB1000 
    lhu     v0, 0x0000(t7)             ## 00000000
var_80AB0FF0:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t8, 0x1DA8(s1)             ## 00001DA8
    lhu     v0, 0x0000(t8)             ## 00000000
lbl_80AB1000:
    sb      v0, 0x03FA(s0)             ## 000003FA
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB1018:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, %hi(var_80AB29E8)     ## $at = 80AB0000
    lwc1    $f6, 0x0090(s0)            ## 00000090
    ori     t7, t6, 0x0020             ## t7 = 00000020
    sw      t7, 0x0004(s0)             ## 00000004
    lwc1    $f4, %lo(var_80AB29E8)($at) 
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AB1070               
    lh      a1, 0x03F0(s0)             ## 000003F0
    lhu     t8, 0x03EC(s0)             ## 000003EC
    andi    t9, t8, 0x0080             ## t9 = 00000000
    bnel    t9, $zero, lbl_80AB1070    
    lh      a1, 0x03F0(s0)             ## 000003F0
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      a1, 0x03F0(s0)             ## 000003F0
lbl_80AB1070:
    addiu   t0, $zero, 0x0040          ## t0 = 00000040
    sw      t0, 0x0010($sp)            
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x0080          ## a3 = 00000080
    lui     $at, 0x4180                ## $at = 41800000
    mtc1    $at, $f8                   ## $f8 = 16.00
    lwc1    $f0, 0x0068(s0)            ## 00000068
    lh      t1, 0x0032(s0)             ## 00000032
    lui     $at, 0x3F00                ## $at = 3F000000
    c.lt.s  $f0, $f8                   
    sh      t1, 0x00B6(s0)             ## 000000B6
    bc1fl   lbl_80AB10C0               
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f10                  ## $f10 = 1000.00
    nop
    add.s   $f16, $f0, $f10            
    swc1    $f16, 0x0068(s0)           ## 00000068
    lui     $at, 0x447A                ## $at = 447A0000
lbl_80AB10C0:
    mtc1    $at, $f4                   ## $f4 = 1000.00
    lwc1    $f18, 0x03E8(s0)           ## 000003E8
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lui     $at, 0x4080                ## $at = 40800000
    add.s   $f6, $f18, $f4             
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80AB1114               
    lwc1    $f0, 0x0060(s0)            ## 00000060
    lwc1    $f0, 0x0060(s0)            ## 00000060
    mtc1    $zero, $f10                ## $f10 = 0.00
    lui     $at, %hi(var_80AB29EC)     ## $at = 80AB0000
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80AB113C               
    lhu     t2, 0x03EC(s0)             ## 000003EC
    lwc1    $f16, %lo(var_80AB29EC)($at) 
    sub.s   $f18, $f0, $f16            
    beq     $zero, $zero, lbl_80AB1138 
    swc1    $f18, 0x0060(s0)           ## 00000060
    lwc1    $f0, 0x0060(s0)            ## 00000060
lbl_80AB1114:
    mtc1    $at, $f4                   ## $f4 = 0.00
    lui     $at, %hi(var_80AB29F0)     ## $at = 80AB0000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80AB113C               
    lhu     t2, 0x03EC(s0)             ## 000003EC
    lwc1    $f6, %lo(var_80AB29F0)($at) 
    add.s   $f8, $f0, $f6              
    swc1    $f8, 0x0060(s0)            ## 00000060
lbl_80AB1138:
    lhu     t2, 0x03EC(s0)             ## 000003EC
lbl_80AB113C:
    ori     t3, t2, 0x0008             ## t3 = 00000008
    sh      t3, 0x03EC(s0)             ## 000003EC
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB1154:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lwc1    $f0, 0x01A0(s0)            ## 000001A0
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    c.lt.s  $f4, $f0                   
    addiu   a3, $zero, 0x0400          ## a3 = 00000400
    addiu   t6, $zero, 0x0040          ## t6 = 00000040
    bc1fl   lbl_80AB11AC               
    lui     $at, 0x4234                ## $at = 42340000
    lh      a1, 0x03F0(s0)             ## 000003F0
    jal     func_80064508              
    sw      t6, 0x0010($sp)            
    lh      t7, 0x0032(s0)             ## 00000032
    lwc1    $f0, 0x01A0(s0)            ## 000001A0
    sh      t7, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4234                ## $at = 42340000
lbl_80AB11AC:
    mtc1    $at, $f6                   ## $f6 = 45.00
    lui     a1, %hi(func_80AB1018)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB17F8)     ## a2 = 80AB0000
    c.lt.s  $f6, $f0                   
    lui     $at, 0x4188                ## $at = 41880000
    addiu   a2, a2, %lo(func_80AB17F8) ## a2 = 80AB17F8
    addiu   a1, a1, %lo(func_80AB1018) ## a1 = 80AB1018
    bc1f    lbl_80AB11F4               
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $zero, $f10                ## $f10 = 0.00
    mtc1    $at, $f16                  ## $f16 = 8.00
    swc1    $f8, 0x0060(s0)            ## 00000060
    swc1    $f10, 0x006C(s0)           ## 0000006C
    beq     $zero, $zero, lbl_80AB1228 
    swc1    $f16, 0x0068(s0)           ## 00000068
lbl_80AB11F4:
    mtc1    $at, $f18                  ## $f18 = 8.00
    lui     $at, 0x40C0                ## $at = 40C00000
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80AB122C               
    lhu     v0, 0x03EC(s0)             ## 000003EC
    mtc1    $at, $f4                   ## $f4 = 6.00
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $zero, $f6                 ## $f6 = 0.00
    mtc1    $at, $f8                   ## $f8 = 4.00
    swc1    $f4, 0x0060(s0)            ## 00000060
    swc1    $f6, 0x006C(s0)            ## 0000006C
    swc1    $f8, 0x0068(s0)            ## 00000068
lbl_80AB1228:
    lhu     v0, 0x03EC(s0)             ## 000003EC
lbl_80AB122C:
    lui     t9, 0x0600                 ## t9 = 06000000
    addiu   t9, t9, 0x15CC             ## t9 = 060015CC
    andi    t8, v0, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80AB128C    
    addiu   a3, s0, 0x0188             ## a3 = 00000188
    mtc1    $zero, $f10                ## $f10 = 0.00
    sw      t9, 0x0010($sp)            
    jal     func_80AB2404              
    swc1    $f10, 0x0014($sp)          
    lhu     t1, 0x03EC(s0)             ## 000003EC
    addiu   t0, $zero, 0x0006          ## t0 = 00000006
    sh      t0, 0x03EE(s0)             ## 000003EE
    andi    t2, t1, 0x0040             ## t2 = 00000000
    beql    t2, $zero, lbl_80AB1280    
    lh      t5, 0x03F0(s0)             ## 000003F0
    lh      t3, 0x03F0(s0)             ## 000003F0
    lhu     v0, 0x03EC(s0)             ## 000003EC
    addiu   t4, t3, 0x2000             ## t4 = 00002000
    beq     $zero, $zero, lbl_80AB128C 
    sh      t4, 0x03F0(s0)             ## 000003F0
    lh      t5, 0x03F0(s0)             ## 000003F0
lbl_80AB1280:
    lhu     v0, 0x03EC(s0)             ## 000003EC
    addiu   t6, t5, 0xE000             ## t6 = FFFFE000
    sh      t6, 0x03F0(s0)             ## 000003F0
lbl_80AB128C:
    ori     t7, v0, 0x0008             ## t7 = 00000008
    sh      t7, 0x03EC(s0)             ## 000003EC
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB12A8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lhu     v0, 0x03EC(a0)             ## 000003EC
    lui     a1, %hi(func_80AB1154)     ## a1 = 80AB0000
    addiu   t7, $zero, 0x0003          ## t7 = 00000003
    andi    t6, v0, 0x0001             ## t6 = 00000000
    beq     t6, $zero, lbl_80AB1340    
    addiu   a1, a1, %lo(func_80AB1154) ## a1 = 80AB1154
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sh      t7, 0x03EE(a0)             ## 000003EE
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x1168             ## t8 = 06001168
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    sw      t8, 0x0010($sp)            
    sw      a0, 0x0020($sp)            
    addiu   a3, a0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f4, 0x0014($sp)           
    lw      a0, 0x0020($sp)            
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    lhu     t9, 0x03EC(a0)             ## 000003EC
    lwc1    $f6, 0x0028(a0)            ## 00000028
    swc1    $f8, 0x0060(a0)            ## 00000060
    andi    t0, t9, 0x0040             ## t0 = 00000000
    beq     t0, $zero, lbl_80AB1330    
    swc1    $f6, 0x03E8(a0)            ## 000003E8
    lh      t1, 0x0032(a0)             ## 00000032
    lhu     v0, 0x03EC(a0)             ## 000003EC
    addiu   t2, t1, 0x4000             ## t2 = 00004000
    beq     $zero, $zero, lbl_80AB1340 
    sh      t2, 0x03F0(a0)             ## 000003F0
lbl_80AB1330:
    lh      t3, 0x0032(a0)             ## 00000032
    lhu     v0, 0x03EC(a0)             ## 000003EC
    addiu   t4, t3, 0xC000             ## t4 = FFFFC000
    sh      t4, 0x03F0(a0)             ## 000003F0
lbl_80AB1340:
    ori     t5, v0, 0x0008             ## t5 = 00000008
    sh      t5, 0x03EC(a0)             ## 000003EC
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB1358:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x03F0(s0)             ## 000003F0
    addiu   t6, $zero, 0x0258          ## t6 = 00000258
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x0384          ## a3 = 00000384
    lhu     v0, 0x03EC(s0)             ## 000003EC
    lh      t7, 0x0032(s0)             ## 00000032
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t8, v0, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80AB13F8    
    sh      t7, 0x00B6(s0)             ## 000000B6
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     t9, 0x0600                 ## t9 = 06000000
    addiu   t9, t9, 0x15CC             ## t9 = 060015CC
    lui     a1, %hi(func_80AB1018)     ## a1 = 80AB0000
    lui     a2, %hi(func_80AB17F8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB17F8) ## a2 = 80AB17F8
    addiu   a1, a1, %lo(func_80AB1018) ## a1 = 80AB1018
    sw      t9, 0x0010($sp)            
    addiu   a3, s0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f4, 0x0014($sp)           
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f6                   ## $f6 = 2.00
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $zero, $f8                 ## $f8 = 0.00
    mtc1    $at, $f10                  ## $f10 = 4.00
    addiu   t0, $zero, 0x0006          ## t0 = 00000006
    sh      t0, 0x03EE(s0)             ## 000003EE
    lhu     v0, 0x03EC(s0)             ## 000003EC
    swc1    $f6, 0x0060(s0)            ## 00000060
    swc1    $f8, 0x006C(s0)            ## 0000006C
    swc1    $f10, 0x0068(s0)           ## 00000068
lbl_80AB13F8:
    ori     t1, v0, 0x0008             ## t1 = 00000008
    sh      t1, 0x03EC(s0)             ## 000003EC
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB1414:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x03F0(s0)             ## 000003F0
    addiu   t6, $zero, 0x0258          ## t6 = 00000258
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x0384          ## a3 = 00000384
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f6                   ## $f6 = 50.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    lh      t7, 0x0032(s0)             ## 00000032
    c.lt.s  $f4, $f6                   
    sh      t7, 0x00B6(s0)             ## 000000B6
    bc1fl   lbl_80AB1578               
    lui     $at, 0x4214                ## $at = 42140000
    jal     func_8009CB08              
    lw      a0, 0x002C($sp)            
    bnel    v0, $zero, lbl_80AB1578    
    lui     $at, 0x4214                ## $at = 42140000
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    lui     t1, 0x8012                 ## t1 = 80120000
    andi    v0, v0, 0x0FC0             ## v0 = 00000000
    sra     v0, v0,  6                 
    beq     v0, $at, lbl_80AB14B0      
    lw      t5, 0x002C($sp)            
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     v0, $at, lbl_80AB14F0      
    lui     t9, 0x8012                 ## t9 = 80120000
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     v0, $at, lbl_80AB14F0      
    nop
    beq     $zero, $zero, lbl_80AB1530 
    nop
lbl_80AB14B0:
    lui     v0, 0x0202                 ## v0 = 02020000
    addiu   v0, v0, 0xB0C0             ## v0 = 0201B0C0
    sll     t8, v0,  4                 
    srl     t9, t8, 28                 
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t1, 0x0C38(t1)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t2, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x1D68(t5)             ## 00001D68
    beq     $zero, $zero, lbl_80AB1530 
    sw      $zero, 0x0134(s0)          ## 00000134
lbl_80AB14F0:
    lui     v0, 0x0202                 ## v0 = 02020000
    addiu   v0, v0, 0xE6A0             ## v0 = 0201E6A0
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t0, v0, $at                
    lw      t3, 0x002C($sp)            
    lui     $at, 0x8000                ## $at = 80000000
    addu    t1, t9, t0                 
    addu    t2, t1, $at                
    sw      t2, 0x1D68(t3)             ## 00001D68
    sw      $zero, 0x0134(s0)          ## 00000134
lbl_80AB1530:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    lui     $at, 0x8012                ## $at = 80120000
    sb      t4, -0x461C($at)           ## 8011B9E4
    addiu   a0, $zero, 0x0014          ## a0 = 00000014
    jal     func_800C522C              
    addiu   a1, $zero, 0x000A          ## a1 = 0000000A
    lhu     t6, 0x03EC(s0)             ## 000003EC
    lui     t5, %hi(func_80AB0E30)     ## t5 = 80AB0000
    addiu   t5, t5, %lo(func_80AB0E30) ## t5 = 80AB0E30
    ori     t7, t6, 0x0080             ## t7 = 00000080
    sw      t5, 0x03FC(s0)             ## 000003FC
    sb      $zero, 0x03FA(s0)          ## 000003FA
    sh      t7, 0x03EC(s0)             ## 000003EC
    lui     $at, 0x800F                ## $at = 800F0000
    sh      $zero, 0x1650($at)         ## 800F1650
    lui     $at, 0x4214                ## $at = 42140000
lbl_80AB1578:
    mtc1    $at, $f10                  ## $f10 = 37.00
    lwc1    $f8, 0x01A0(s0)            ## 000001A0
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_80AB15C0               
    lhu     t0, 0x03EC(s0)             ## 000003EC
    lhu     v0, 0x03EE(s0)             ## 000003EE
    lui     t9, %hi(func_80AB1358)     ## t9 = 80AB0000
    lui     $at, 0x41A8                ## $at = 41A80000
    blez    v0, lbl_80AB15B8           
    addiu   t9, t9, %lo(func_80AB1358) ## t9 = 80AB1358
    mtc1    $at, $f16                  ## $f16 = 21.00
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x03EE(s0)             ## 000003EE
    beq     $zero, $zero, lbl_80AB15BC 
    swc1    $f16, 0x01A0(s0)           ## 000001A0
lbl_80AB15B8:
    sw      t9, 0x03FC(s0)             ## 000003FC
lbl_80AB15BC:
    lhu     t0, 0x03EC(s0)             ## 000003EC
lbl_80AB15C0:
    ori     t1, t0, 0x0008             ## t1 = 00000008
    sh      t1, 0x03EC(s0)             ## 000003EC
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB15D8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f6                   ## $f6 = 20.00
    lwc1    $f4, 0x01A0(s0)            ## 000001A0
    lui     $at, 0x3FC0                ## $at = 3FC00000
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    c.lt.s  $f4, $f6                   
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   a3, $zero, 0x0384          ## a3 = 00000384
    bc1fl   lbl_80AB1624               
    mtc1    $zero, $f10                ## $f10 = 0.00
    mtc1    $at, $f8                   ## $f8 = 1.50
    beq     $zero, $zero, lbl_80AB1640 
    swc1    $f8, 0x0068(s0)            ## 00000068
    mtc1    $zero, $f10                ## $f10 = 0.00
lbl_80AB1624:
    lh      a1, 0x03F0(s0)             ## 000003F0
    addiu   t6, $zero, 0x0258          ## t6 = 00000258
    swc1    $f10, 0x0068(s0)           ## 00000068
    jal     func_80064508              
    sw      t6, 0x0010($sp)            
    lh      t7, 0x0032(s0)             ## 00000032
    sh      t7, 0x00B6(s0)             ## 000000B6
lbl_80AB1640:
    lui     $at, 0x4214                ## $at = 42140000
    mtc1    $at, $f18                  ## $f18 = 37.00
    lwc1    $f16, 0x01A0(s0)           ## 000001A0
    lui     t8, %hi(func_80AB1414)     ## t8 = 80AB0000
    lui     $at, 0x41A8                ## $at = 41A80000
    c.le.s  $f18, $f16                 
    addiu   t8, t8, %lo(func_80AB1414) ## t8 = 80AB1414
    addiu   t9, $zero, 0x0005          ## t9 = 00000005
    bc1fl   lbl_80AB168C               
    lhu     t0, 0x03EC(s0)             ## 000003EC
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $at, $f4                   ## $f4 = 21.00
    sw      t8, 0x03FC(s0)             ## 000003FC
    sh      t9, 0x03EE(s0)             ## 000003EE
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f0, 0x006C(s0)            ## 0000006C
    swc1    $f0, 0x0068(s0)            ## 00000068
    swc1    $f4, 0x01A0(s0)            ## 000001A0
    lhu     t0, 0x03EC(s0)             ## 000003EC
lbl_80AB168C:
    ori     t1, t0, 0x0008             ## t1 = 00000008
    sh      t1, 0x03EC(s0)             ## 000003EC
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB16A4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lhu     v0, 0x03EC(a0)             ## 000003EC
    lui     a1, %hi(func_80AB15D8)     ## a1 = 80AB0000
    addiu   t7, $zero, 0x0003          ## t7 = 00000003
    andi    t6, v0, 0x0001             ## t6 = 00000000
    beq     t6, $zero, lbl_80AB1710    
    addiu   a1, a1, %lo(func_80AB15D8) ## a1 = 80AB15D8
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sh      t7, 0x03EE(a0)             ## 000003EE
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x1168             ## t8 = 06001168
    lui     a2, %hi(func_80AB18D8)     ## a2 = 80AB0000
    addiu   a2, a2, %lo(func_80AB18D8) ## a2 = 80AB18D8
    sw      t8, 0x0010($sp)            
    sw      a0, 0x0020($sp)            
    addiu   a3, a0, 0x0188             ## a3 = 00000188
    jal     func_80AB2404              
    swc1    $f4, 0x0014($sp)           
    lw      a0, 0x0020($sp)            
    lui     $at, %hi(var_80AB29F4)     ## $at = 80AB0000
    lwc1    $f6, 0x0028(a0)            ## 00000028
    lhu     v0, 0x03EC(a0)             ## 000003EC
    swc1    $f6, 0x03E8(a0)            ## 000003E8
    lwc1    $f8, %lo(var_80AB29F4)($at) 
    swc1    $f8, 0x0060(a0)            ## 00000060
lbl_80AB1710:
    ori     t9, v0, 0x0008             ## t9 = 00000008
    sh      t9, 0x03EC(a0)             ## 000003EC
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB1728:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    jal     func_8008C9C0              
    lw      a0, 0x03CC(s0)             ## 000003CC
    lhu     v1, 0x03EE(s0)             ## 000003EE
    lui     t9, %hi(func_80AB17F8)     ## t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AB17F8) ## t9 = 80AB17F8
    blez    v1, lbl_80AB1798           
    addiu   t0, $zero, 0x0006          ## t0 = 00000006
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    andi    a0, t6, 0xFFFF             ## a0 = 0000FFFF
    addiu   $at, $zero, 0x0333         ## $at = 00000333
    multu   a0, $at                    
    sh      t6, 0x03EE(s0)             ## 000003EE
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f4                   ## $f4 = 1000.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    beq     $zero, $zero, lbl_80AB17E4 
    sh      t8, 0x00B8(s0)             ## 000000B8
lbl_80AB1798:
    lui     a0, 0x0600                 ## a0 = 06000000
    sw      t9, 0x0400(s0)             ## 00000400
    sh      t0, 0x03EE(s0)             ## 000003EE
    jal     func_8008A194              
    addiu   a0, a0, 0x15CC             ## a0 = 060015CC
    mtc1    v0, $f10                   ## $f10 = 0.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f18                  ## $f18 = 5.00
    cvt.s.w $f16, $f10                 
    lw      a0, 0x03CC(s0)             ## 000003CC
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t1, $zero, 0x0002          ## t1 = 00000002
    sw      t1, 0x0014($sp)            
    addiu   a1, a1, 0x15CC             ## a1 = 060015CC
    swc1    $f16, 0x0010($sp)          
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
lbl_80AB17E4:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB17F8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    jal     func_8008C9C0              
    lw      a0, 0x03CC(s0)             ## 000003CC
    beql    v0, $zero, lbl_80AB18C8    
    lw      $ra, 0x002C($sp)           
    lhu     v0, 0x03EE(s0)             ## 000003EE
    lui     t0, %hi(func_80AB1728)     ## t0 = 80AB0000
    addiu   t9, $zero, 0x00A0          ## t9 = 000000A0
    blez    v0, lbl_80AB1878           
    addiu   t0, t0, %lo(func_80AB1728) ## t0 = 80AB1728
    lw      t7, 0x03CC(s0)             ## 000003CC
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x03EE(s0)             ## 000003EE
    jal     func_8008A194              
    lw      a0, 0x0008(t7)             ## 00000008
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      a0, 0x03CC(s0)             ## 000003CC
    mtc1    $zero, $f0                 ## $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lw      a1, 0x0008(a0)             ## 00000008
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_80AB18C8 
    lw      $ra, 0x002C($sp)           
lbl_80AB1878:
    lui     a0, 0x0601                 ## a0 = 06010000
    sh      t9, 0x03EE(s0)             ## 000003EE
    sw      t0, 0x0400(s0)             ## 00000400
    jal     func_8008A194              
    addiu   a0, a0, 0xC1C4             ## a0 = 0600C1C4
    mtc1    v0, $f8                    ## $f8 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x40A0                ## $at = 40A00000
    cvt.s.w $f10, $f8                  
    mtc1    $at, $f16                  ## $f16 = 5.00
    lw      a0, 0x03CC(s0)             ## 000003CC
    lui     a1, 0x0601                 ## a1 = 06010000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0xC1C4             ## a1 = 0600C1C4
    sw      $zero, 0x0014($sp)         
    swc1    $f10, 0x0010($sp)          
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
lbl_80AB18C8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB18D8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    jal     func_8008C9C0              
    lw      a0, 0x03CC(s0)             ## 000003CC
    beql    v0, $zero, lbl_80AB1948    
    lhu     t0, 0x03EC(s0)             ## 000003EC
    lw      t6, 0x03CC(s0)             ## 000003CC
    jal     func_8008A194              
    lw      a0, 0x0008(t6)             ## 00000008
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      a0, 0x03CC(s0)             ## 000003CC
    mtc1    $zero, $f0                 ## $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lw      a1, 0x0008(a0)             ## 00000008
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lhu     t8, 0x03EC(s0)             ## 000003EC
    ori     t9, t8, 0x0001             ## t9 = 00000001
    beq     $zero, $zero, lbl_80AB1950 
    sh      t9, 0x03EC(s0)             ## 000003EC
    lhu     t0, 0x03EC(s0)             ## 000003EC
lbl_80AB1948:
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    sh      t1, 0x03EC(s0)             ## 000003EC
lbl_80AB1950:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB1964:
    lhu     v0, 0x03EC(a0)             ## 000003EC
    or      v1, $zero, $zero           ## v1 = 00000000
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_80AB1980    
    andi    t8, v0, 0x0020             ## t8 = 00000000
    beq     $zero, $zero, lbl_80AB1980 
    addiu   v1, $zero, 0x0020          ## v1 = 00000020
lbl_80AB1980:
    lh      a1, 0x03DE(a0)             ## 000003DE
    or      v0, $zero, $zero           ## v0 = 00000000
    andi    t7, a1, 0x003F             ## t7 = 00000000
    bne     v1, t7, lbl_80AB199C       
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AB199C:
    beq     t8, $zero, lbl_80AB19B0    
    addiu   t0, a1, 0xFFFC             ## t0 = FFFFFFFC
    addiu   t9, a1, 0x0004             ## t9 = 00000004
    beq     $zero, $zero, lbl_80AB19B4 
    sh      t9, 0x03DE(a0)             ## 000003DE
lbl_80AB19B0:
    sh      t0, 0x03DE(a0)             ## 000003DE
lbl_80AB19B4:
    jr      $ra                        
    nop


func_80AB19BC:
    lh      v0, 0x001C(a0)             ## 0000001C
    lh      t6, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x005C         ## $at = 0000005C
    andi    v0, v0, 0x0FC0             ## v0 = 00000000
    beq     t6, $at, lbl_80AB19DC      
    sra     v0, v0,  6                 
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AB19DC:
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    v0, $at, lbl_80AB19F4      
    lhu     v0, 0x1D74(a1)             ## 00001D74
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AB19F0:
    lhu     v0, 0x1D74(a1)             ## 00001D74
lbl_80AB19F4:
    slti    $at, v0, 0x012C            
    bne     $at, $zero, lbl_80AB1A10   
    slti    $at, v0, 0x01AF            
    beql    $at, $zero, lbl_80AB1A14   
    slti    $at, v0, 0x0438            
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AB1A10:
    slti    $at, v0, 0x0438            
lbl_80AB1A14:
    bne     $at, $zero, lbl_80AB1A2C   
    slti    $at, v0, 0x0493            
    beql    $at, $zero, lbl_80AB1A30   
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AB1A2C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AB1A30:
    jr      $ra                        
    nop


func_80AB1A38:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    or      a1, a2, $zero              ## a1 = 0000013C
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x0044($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f0                   ## $f0 = 10.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t9, 0x0400(s0)             ## 00000400
    or      a0, s0, $zero              ## a0 = 00000000
    jalr    $ra, t9                    
    nop
    lhu     t7, 0x03EC(s0)             ## 000003EC
    lw      t9, 0x03FC(s0)             ## 000003FC
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t8, t7, 0xFFF7             ## t8 = 00000000
    sh      t8, 0x03EC(s0)             ## 000003EC
    jalr    $ra, t9                    
    lw      a1, 0x0044($sp)            
    lw      t0, 0x0130(s0)             ## 00000130
    beql    t0, $zero, lbl_80AB2178    
    lw      $ra, 0x0024($sp)           
    lhu     t1, 0x03EC(s0)             ## 000003EC
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t2, t1, 0x0080             ## t2 = 00000000
    bnel    t2, $zero, lbl_80AB1BBC    
    lw      t5, 0x0134(s0)             ## 00000134
    jal     func_80AB19BC              
    lw      a1, 0x0044($sp)            
    beql    v0, $zero, lbl_80AB1BBC    
    lw      t5, 0x0134(s0)             ## 00000134
    lw      v0, 0x0190(s0)             ## 00000190
    lui     t3, 0x0600                 ## t3 = 06000000
    addiu   t3, t3, 0x1168             ## t3 = 06001168
    bne     t3, v0, lbl_80AB1B88       
    lui     $at, 0x4000                ## $at = 40000000
    lwc1    $f0, 0x01A0(s0)            ## 000001A0
    mtc1    $at, $f4                   ## $f4 = 2.00
    lui     $at, 0x4110                ## $at = 41100000
    c.eq.s  $f4, $f0                   
    nop
    bc1tl   lbl_80AB1BB0               
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $at, $f6                   ## $f6 = 9.00
    lui     $at, 0x41B8                ## $at = 41B80000
    c.eq.s  $f6, $f0                   
    nop
    bc1tl   lbl_80AB1BB0               
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $at, $f8                   ## $f8 = 23.00
    lui     $at, 0x4220                ## $at = 42200000
    c.eq.s  $f8, $f0                   
    nop
    bc1tl   lbl_80AB1BB0               
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $at, $f10                  ## $f10 = 40.00
    lui     $at, 0x4268                ## $at = 42680000
    c.eq.s  $f10, $f0                  
    nop
    bc1tl   lbl_80AB1BB0               
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $at, $f16                  ## $f16 = 58.00
    nop
    c.eq.s  $f16, $f0                  
    nop
    bc1t    lbl_80AB1BAC               
lbl_80AB1B88:
    lui     t4, 0x0600                 ## t4 = 06000000
    addiu   t4, t4, 0x15CC             ## t4 = 060015CC
    bne     t4, v0, lbl_80AB1BB8       
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f18                  ## $f18 = 4.00
    lwc1    $f4, 0x01A0(s0)            ## 000001A0
    c.eq.s  $f18, $f4                  
    nop
    bc1f    lbl_80AB1BB8               
lbl_80AB1BAC:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AB1BB0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3926          ## a1 = 00003926
lbl_80AB1BB8:
    lw      t5, 0x0134(s0)             ## 00000134
lbl_80AB1BBC:
    beql    t5, $zero, lbl_80AB1BD0    
    lhu     t6, 0x03EC(s0)             ## 000003EC
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lhu     t6, 0x03EC(s0)             ## 000003EC
lbl_80AB1BD0:
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    andi    t7, t6, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_80AB1BEC    
    lh      v1, 0x03E6(s0)             ## 000003E6
    beq     $zero, $zero, lbl_80AB1C3C 
    sh      t8, 0x03E4(s0)             ## 000003E4
    lh      v1, 0x03E6(s0)             ## 000003E6
lbl_80AB1BEC:
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    bne     v1, $zero, lbl_80AB1C00    
    addiu   t9, v1, 0xFFFF             ## t9 = FFFFFFFF
    beq     $zero, $zero, lbl_80AB1C0C 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AB1C00:
    sh      t9, 0x03E6(s0)             ## 000003E6
    lh      v1, 0x03E6(s0)             ## 000003E6
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AB1C0C:
    bnel    v0, $zero, lbl_80AB1C28    
    sh      v1, 0x03E4(s0)             ## 000003E4
    jal     func_80063BF0              
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sh      v0, 0x03E6(s0)             ## 000003E6
    lh      v1, 0x03E6(s0)             ## 000003E6
    sh      v1, 0x03E4(s0)             ## 000003E4
lbl_80AB1C28:
    lh      t0, 0x03E4(s0)             ## 000003E4
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_80AB1C40   
    lhu     v0, 0x03EC(s0)             ## 000003EC
    sh      $zero, 0x03E4(s0)          ## 000003E4
lbl_80AB1C3C:
    lhu     v0, 0x03EC(s0)             ## 000003EC
lbl_80AB1C40:
    andi    t1, v0, 0x0008             ## t1 = 00000000
    bne     t1, $zero, lbl_80AB2140    
    andi    t7, v0, 0x0002             ## t7 = 00000000
    andi    t2, v0, 0x0010             ## t2 = 00000000
    beq     t2, $zero, lbl_80AB1DA8    
    or      a1, $zero, $zero           ## a1 = 00000000
    lbu     v0, 0x03F4(s0)             ## 000003F4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    beq     v0, $zero, lbl_80AB1C84    
    addiu   t4, $zero, 0x0006          ## t4 = 00000006
    beq     v0, $at, lbl_80AB1C90      
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_80AB1D54      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AB2114 
    lh      t2, 0x03DE(s0)             ## 000003DE
lbl_80AB1C84:
    sb      t3, 0x03F4(s0)             ## 000003F4
    beq     $zero, $zero, lbl_80AB2110 
    sb      t4, 0x03F5(s0)             ## 000003F5
lbl_80AB1C90:
    lbu     t5, 0x03F5(s0)             ## 000003F5
    addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
    andi    v0, t6, 0x00FF             ## v0 = 000000FF
    beq     v0, $zero, lbl_80AB1CDC    
    sb      t6, 0x03F5(s0)             ## 000003F5
    or      a0, v0, $zero              ## a0 = 000000FF
    sll     a0, a0, 29                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, 0x4580                ## $at = 45800000
    mtc1    $at, $f6                   ## $f6 = 4096.00
    nop
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f10                   
    nop
    sll     a1, a1, 16                 
    beq     $zero, $zero, lbl_80AB1D34 
    sra     a1, a1, 16                 
lbl_80AB1CDC:
    lhu     t8, 0x03EC(s0)             ## 000003EC
    addiu   t0, $zero, 0x0020          ## t0 = 00000020
    andi    t9, t8, 0x0002             ## t9 = 00000000
    beql    t9, $zero, lbl_80AB1CFC    
    sh      t0, 0x03DE(s0)             ## 000003DE
    beq     $zero, $zero, lbl_80AB1CFC 
    sh      $zero, 0x03DE(s0)          ## 000003DE
    sh      t0, 0x03DE(s0)             ## 000003DE
lbl_80AB1CFC:
    lhu     t1, 0x03EC(s0)             ## 000003EC
    andi    t2, t1, 0x0020             ## t2 = 00000000
    beql    t2, $zero, lbl_80AB1D20    
    lh      t5, 0x03DE(s0)             ## 000003DE
    lh      t3, 0x03DE(s0)             ## 000003DE
    addiu   t4, t3, 0xFFFC             ## t4 = FFFFFFFC
    beq     $zero, $zero, lbl_80AB1D28 
    sh      t4, 0x03DE(s0)             ## 000003DE
    lh      t5, 0x03DE(s0)             ## 000003DE
lbl_80AB1D20:
    addiu   t6, t5, 0x0004             ## t6 = 00000004
    sh      t6, 0x03DE(s0)             ## 000003DE
lbl_80AB1D28:
    lbu     t7, 0x03F4(s0)             ## 000003F4
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    sb      t8, 0x03F4(s0)             ## 000003F4
lbl_80AB1D34:
    lhu     t9, 0x03EC(s0)             ## 000003EC
    andi    t0, t9, 0x0020             ## t0 = 00000000
    beql    t0, $zero, lbl_80AB2114    
    lh      t2, 0x03DE(s0)             ## 000003DE
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    beq     $zero, $zero, lbl_80AB2110 
    sra     a1, a1, 16                 
lbl_80AB1D54:
    jal     func_80AB1964              
    sh      a1, 0x0036($sp)            
    beq     v0, $zero, lbl_80AB2110    
    lh      a1, 0x0036($sp)            
    lhu     t1, 0x03EC(s0)             ## 000003EC
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f12                  ## $f12 = 20.00
    andi    t2, t1, 0xFFEF             ## t2 = 00000000
    sh      t2, 0x03EC(s0)             ## 000003EC
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    trunc.w.s $f16, $f0                  
    sb      $zero, 0x03F4(s0)          ## 000003F4
    or      a0, s0, $zero              ## a0 = 00000000
    mfc1    t4, $f16                   
    nop
    addiu   t5, t4, 0x003C             ## t5 = 0000003C
    jal     func_80AAFA28              
    sb      t5, 0x03F6(s0)             ## 000003F6
    beq     $zero, $zero, lbl_80AB2110 
    lh      a1, 0x0036($sp)            
lbl_80AB1DA8:
    lbu     v0, 0x03F6(s0)             ## 000003F6
    blez    v0, lbl_80AB1DBC           
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AB1FE4 
    sb      t6, 0x03F6(s0)             ## 000003F6
lbl_80AB1DBC:
    lbu     v1, 0x03F4(s0)             ## 000003F4
    bnel    v1, $zero, lbl_80AB1E14    
    lbu     t1, 0x03F5(s0)             ## 000003F5
    jal     func_800CDCCC              ## Rand.Next() float
    sh      a1, 0x0036($sp)            
    lui     $at, %hi(var_80AB29F8)     ## $at = 80AB0000
    lwc1    $f18, %lo(var_80AB29F8)($at) 
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    lh      a1, 0x0036($sp)            
    c.lt.s  $f0, $f18                  
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    addiu   t8, $zero, 0x000C          ## t8 = 0000000C
    andi    v1, t9, 0x00FF             ## v1 = 00000001
    bc1f    lbl_80AB1E08               
    addiu   t0, $zero, 0x0004          ## t0 = 00000004
    sb      t7, 0x03F4(s0)             ## 000003F4
    sb      t8, 0x03F5(s0)             ## 000003F5
    beq     $zero, $zero, lbl_80AB1E10 
    andi    v1, t7, 0x00FF             ## v1 = 00000004
lbl_80AB1E08:
    sb      t9, 0x03F4(s0)             ## 000003F4
    sb      t0, 0x03F5(s0)             ## 000003F5
lbl_80AB1E10:
    lbu     t1, 0x03F5(s0)             ## 000003F5
lbl_80AB1E14:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
    beq     v1, $at, lbl_80AB1E48      
    sb      t2, 0x03F5(s0)             ## 000003F5
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v1, $at, lbl_80AB1EC4      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v1, $at, lbl_80AB1EE4      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beql    v1, $at, lbl_80AB1F5C      
    lbu     a0, 0x03F5(s0)             ## 000003F5
    beq     $zero, $zero, lbl_80AB1FCC 
    lhu     t1, 0x03EC(s0)             ## 000003EC
lbl_80AB1E48:
    lbu     a0, 0x03F5(s0)             ## 000003F5
    subu    a0, $zero, a0              
    sll     a0, a0, 12                 
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80AB29FC)     ## $at = 80AB0000
    lwc1    $f4, %lo(var_80AB29FC)($at) 
    lbu     t4, 0x03F5(s0)             ## 000003F5
    lui     $at, 0x4170                ## $at = 41700000
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    bgtz    t4, lbl_80AB1FC8           
    sra     a1, a1, 16                 
    mtc1    $at, $f12                  ## $f12 = 15.00
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f10                  ## $f10 = 5.00
    lh      a1, 0x0036($sp)            
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    add.s   $f16, $f0, $f10            
    sb      t7, 0x03F4(s0)             ## 000003F4
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    beq     $zero, $zero, lbl_80AB1FC8 
    sb      t6, 0x03F5(s0)             ## 000003F5
lbl_80AB1EC4:
    lbu     t8, 0x03F5(s0)             ## 000003F5
    addiu   a1, $zero, 0x1388          ## a1 = 00001388
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    bgtz    t8, lbl_80AB1FC8           
    addiu   t0, $zero, 0x0004          ## t0 = 00000004
    sb      t9, 0x03F4(s0)             ## 000003F4
    beq     $zero, $zero, lbl_80AB1FC8 
    sb      t0, 0x03F5(s0)             ## 000003F5
lbl_80AB1EE4:
    lbu     a0, 0x03F5(s0)             ## 000003F5
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80AB2A00)     ## $at = 80AB0000
    lwc1    $f4, %lo(var_80AB2A00)($at) 
    lbu     t2, 0x03F5(s0)             ## 000003F5
    lui     $at, 0x41A0                ## $at = 41A00000
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    bgtz    t2, lbl_80AB1FC8           
    sra     a1, a1, 16                 
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    trunc.w.s $f10, $f0                  
    sb      $zero, 0x03F4(s0)          ## 000003F4
    or      a0, s0, $zero              ## a0 = 00000000
    mfc1    t4, $f10                   
    nop
    addiu   t5, t4, 0x003C             ## t5 = 0000003C
    jal     func_80AAFA28              
    sb      t5, 0x03F6(s0)             ## 000003F6
    beq     $zero, $zero, lbl_80AB1FC8 
    lh      a1, 0x0036($sp)            
    lbu     a0, 0x03F5(s0)             ## 000003F5
lbl_80AB1F5C:
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80AB2A04)     ## $at = 80AB0000
    lwc1    $f16, %lo(var_80AB2A04)($at) 
    lbu     t7, 0x03F5(s0)             ## 000003F5
    lui     $at, 0x41A0                ## $at = 41A00000
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    a1, $f4                    
    nop
    sll     a1, a1, 16                 
    bgtz    t7, lbl_80AB1FC8           
    sra     a1, a1, 16                 
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    trunc.w.s $f6, $f0                   
    sb      $zero, 0x03F4(s0)          ## 000003F4
    or      a0, s0, $zero              ## a0 = 00000000
    mfc1    t9, $f6                    
    nop
    addiu   t0, t9, 0x003C             ## t0 = 0000003C
    jal     func_80AAFA28              
    sb      t0, 0x03F6(s0)             ## 000003F6
    lh      a1, 0x0036($sp)            
lbl_80AB1FC8:
    lhu     t1, 0x03EC(s0)             ## 000003EC
lbl_80AB1FCC:
    andi    t2, t1, 0x0020             ## t2 = 00000000
    beql    t2, $zero, lbl_80AB1FE8    
    lbu     v0, 0x03F9(s0)             ## 000003F9
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
lbl_80AB1FE4:
    lbu     v0, 0x03F9(s0)             ## 000003F9
lbl_80AB1FE8:
    blez    v0, lbl_80AB1FF8           
    addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
    beq     $zero, $zero, lbl_80AB2110 
    sb      t3, 0x03F9(s0)             ## 000003F9
lbl_80AB1FF8:
    lbu     t4, 0x03F8(s0)             ## 000003F8
    lbu     v0, 0x03F7(s0)             ## 000003F7
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
    beq     v0, $zero, lbl_80AB2028    
    sb      t5, 0x03F8(s0)             ## 000003F8
    beq     v0, $at, lbl_80AB2090      
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beql    v0, $at, lbl_80AB20B8      
    lbu     v0, 0x03F8(s0)             ## 000003F8
    beq     $zero, $zero, lbl_80AB2114 
    lh      t2, 0x03DE(s0)             ## 000003DE
lbl_80AB2028:
    lbu     v0, 0x03F8(s0)             ## 000003F8
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    lui     $at, 0x4170                ## $at = 41700000
    subu    t6, $zero, v0              
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  4                 
    subu    t7, t7, t6                 
    sll     t7, t7,  3                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addiu   t8, t7, 0x1770             ## t8 = 00001770
    bgtz    v0, lbl_80AB2110           
    sh      t8, 0x03E2(s0)             ## 000003E2
    sb      t9, 0x03F7(s0)             ## 000003F7
    mtc1    $at, $f12                  ## $f12 = 15.00
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f8                   ## $f8 = 5.00
    lh      a1, 0x0036($sp)            
    add.s   $f10, $f0, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    beq     $zero, $zero, lbl_80AB2110 
    sb      t1, 0x03F8(s0)             ## 000003F8
lbl_80AB2090:
    lbu     t3, 0x03F8(s0)             ## 000003F8
    addiu   t2, $zero, 0x1770          ## t2 = 00001770
    sh      t2, 0x03E2(s0)             ## 000003E2
    bgtz    t3, lbl_80AB2110           
    addiu   t4, $zero, 0x0002          ## t4 = 00000002
    addiu   t5, $zero, 0x0004          ## t5 = 00000004
    sb      t4, 0x03F7(s0)             ## 000003F7
    beq     $zero, $zero, lbl_80AB2110 
    sb      t5, 0x03F8(s0)             ## 000003F8
    lbu     v0, 0x03F8(s0)             ## 000003F8
lbl_80AB20B8:
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    lui     $at, 0x4220                ## $at = 42200000
    sll     t6, v0,  2                 
    subu    t6, t6, v0                 
    sll     t6, t6,  4                 
    subu    t6, t6, v0                 
    sll     t6, t6,  3                 
    subu    t6, t6, v0                 
    sll     t6, t6,  2                 
    bgtz    v0, lbl_80AB2110           
    sh      t6, 0x03E2(s0)             ## 000003E2
    sb      $zero, 0x03F7(s0)          ## 000003F7
    sb      t7, 0x03F8(s0)             ## 000003F8
    mtc1    $at, $f12                  ## $f12 = 40.00
    jal     func_80026D64              
    sh      a1, 0x0036($sp)            
    trunc.w.s $f18, $f0                  
    lh      a1, 0x0036($sp)            
    mfc1    t9, $f18                   
    nop
    addiu   t0, t9, 0x00A0             ## t0 = 000000A0
    sb      t0, 0x03F9(s0)             ## 000003F9
lbl_80AB2110:
    lh      t2, 0x03DE(s0)             ## 000003DE
lbl_80AB2114:
    sll     t4, t2, 10                 
    addu    t5, t4, a1                 
    sh      t5, 0x03E0(s0)             ## 000003E0
    lh      v1, 0x03E0(s0)             ## 000003E0
    bltz    v1, lbl_80AB2134           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80AB2134 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AB2134:
    sra     t6, v0,  3                 
    beq     $zero, $zero, lbl_80AB2174 
    sh      t6, 0x03DC(s0)             ## 000003DC
lbl_80AB2140:
    beq     t7, $zero, lbl_80AB2154    
    sh      $zero, 0x03E2(s0)          ## 000003E2
    addiu   t8, $zero, 0x8000          ## t8 = FFFF8000
    beq     $zero, $zero, lbl_80AB2158 
    sh      t8, 0x03E0(s0)             ## 000003E0
lbl_80AB2154:
    sh      $zero, 0x03E0(s0)          ## 000003E0
lbl_80AB2158:
    lh      v1, 0x03E0(s0)             ## 000003E0
    bltz    v1, lbl_80AB216C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80AB216C 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AB216C:
    sra     t9, v0,  3                 
    sh      t9, 0x03DC(s0)             ## 000003DC
lbl_80AB2174:
    lw      $ra, 0x0024($sp)           
lbl_80AB2178:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB2188:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     a1, $at, lbl_80AB2204      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     a1, $at, lbl_80AB21CC      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     a1, $at, lbl_80AB221C      
    lw      v0, 0x0014($sp)            
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     a1, $at, lbl_80AB2264      
    lw      v0, 0x0014($sp)            
    beq     $zero, $zero, lbl_80AB22AC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AB21CC:
    lw      v1, 0x0010($sp)            
    lh      t7, 0x03E0(v0)             ## 000003E0
    lh      t6, 0x0000(v1)             ## 00000000
    lh      t9, 0x0004(v1)             ## 00000004
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             ## 00000000
    lh      t0, 0x03DC(v0)             ## 000003DC
    addu    t1, t9, t0                 
    sh      t1, 0x0004(v1)             ## 00000004
    lh      t3, 0x03E2(v0)             ## 000003E2
    lh      t2, 0x0004(v1)             ## 00000004
    subu    t4, t2, t3                 
    beq     $zero, $zero, lbl_80AB22A8 
    sh      t4, 0x0004(v1)             ## 00000004
lbl_80AB2204:
    lw      v1, 0x0010($sp)            
    lh      t6, 0x03E2(v0)             ## 000003E2
    lh      t5, 0x0004(v1)             ## 00000004
    addu    t7, t5, t6                 
    beq     $zero, $zero, lbl_80AB22A8 
    sh      t7, 0x0004(v1)             ## 00000004
lbl_80AB221C:
    lhu     t8, 0x03EC(v0)             ## 000003EC
    andi    t9, t8, 0x0008             ## t9 = 00000000
    bnel    t9, $zero, lbl_80AB22AC    
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t0, 0x03DC(v0)             ## 000003DC
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f8                   ## $f8 = 1.50
    mtc1    t0, $f4                    ## $f4 = 0.00
    lw      v1, 0x0010($sp)            
    cvt.s.w $f6, $f4                   
    lh      t5, 0x0002(v1)             ## 00000002
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    subu    t6, t5, t4                 
    beq     $zero, $zero, lbl_80AB22A8 
    sh      t6, 0x0002(v1)             ## 00000002
lbl_80AB2264:
    lhu     t7, 0x03EC(v0)             ## 000003EC
    andi    t8, t7, 0x0008             ## t8 = 00000000
    bnel    t8, $zero, lbl_80AB22AC    
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t9, 0x03DC(v0)             ## 000003DC
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f6                   ## $f6 = 1.50
    mtc1    t9, $f18                   ## $f18 = 0.00
    lw      v1, 0x0010($sp)            
    cvt.s.w $f4, $f18                  
    lh      t5, 0x0002(v1)             ## 00000002
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t3, $f10                   
    nop
    addu    t4, t5, t3                 
    sh      t4, 0x0002(v1)             ## 00000002
lbl_80AB22A8:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AB22AC:
    jr      $ra                        
    nop


func_80AB22B4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      a2, 0x0030($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a2, 0x0038($sp)            
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a3, 0x0034($sp)            
    swc1    $f0, 0x0020($sp)           
    lhu     t6, 0x03EC(a2)             ## 000003EC
    lui     $at, 0x44AF                ## $at = 44AF0000
    addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
    andi    t7, t6, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_80AB230C    
    mtc1    $at, $f8                   ## $f8 = 1400.00
    lui     $at, 0x442F                ## $at = 442F0000
    mtc1    $at, $f4                   ## $f4 = 700.00
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $at, $f6                   ## $f6 = 400.00
    swc1    $f4, 0x0018($sp)           
    beq     $zero, $zero, lbl_80AB2314 
    swc1    $f6, 0x001C($sp)           
    mtc1    $at, $f8                   ## $f8 = 400.00
lbl_80AB230C:
    swc1    $f0, 0x001C($sp)           
    swc1    $f8, 0x0018($sp)           
lbl_80AB2314:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bnel    a1, $at, lbl_80AB232C      
    lw      $ra, 0x0014($sp)           
    jal     func_800AB958              
    addiu   a1, a2, 0x0038             ## a1 = 00000038
    lw      $ra, 0x0014($sp)           
lbl_80AB232C:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB2338:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E56C              
    sw      a0, 0x002C($sp)            
    lw      t2, 0x0038($sp)            
    lw      t3, 0x002C($sp)            
    lw      t0, 0x02C0(t3)             ## 000002C0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, t0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(t3)             ## 000002C0
    sw      t8, 0x0000(t0)             ## 00000000
    lh      t9, 0x03E4(t2)             ## 000003E4
    lui     t1, %hi(var_80AB2988)      ## t1 = 80AB0000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t4, t9,  2                 
    addu    t1, t1, t4                 
    lw      t1, %lo(var_80AB2988)(t1)  
    lui     t9, 0x8012                 ## t9 = 80120000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, 0x0C38(t9)             ## 80120C38
    and     t5, t1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t4, t5, t9                 
    addu    t6, t4, $at                
    sw      t6, 0x0004(t0)             ## 00000004
    lw      v0, 0x03CC(t2)             ## 000003CC
    lui     t7, %hi(func_80AB2188)     ## t7 = 80AB0000
    lui     t8, %hi(func_80AB22B4)     ## t8 = 80AB0000
    lw      a1, 0x0004(v0)             ## 00000004
    lw      a2, 0x0020(v0)             ## 00000020
    lbu     a3, 0x0002(v0)             ## 00000002
    addiu   t8, t8, %lo(func_80AB22B4) ## t8 = 80AB22B4
    addiu   t7, t7, %lo(func_80AB2188) ## t7 = 80AB2188
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      t2, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB2404:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    lw      t6, 0x0028($sp)            
    sw      a3, 0x03CC(t6)             ## 000003CC
    jal     func_8008A194              
    lw      a0, 0x0038($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      t7, 0x0028($sp)            
    lwc1    $f8, 0x003C($sp)           
    cvt.s.w $f6, $f4                   
    lw      a0, 0x03CC(t7)             ## 000003CC
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    sw      t8, 0x0014($sp)            
    lw      a1, 0x0038($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v0, 0x0028($sp)            
    lw      t9, 0x002C($sp)            
    sw      t9, 0x03FC(v0)             ## 000003FC
    lw      t0, 0x0030($sp)            
    sw      t0, 0x0400(v0)             ## 00000400
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB247C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sll     t6, a2,  2                 
    addu    v0, a1, t6                 
    lw      t7, 0x1D8C(v0)             ## 00001D8C
    addiu   t3, $sp, 0x000C            ## t3 = FFFFFFF4
    lw      t8, 0x000C(t7)             ## 0000000C
    mtc1    t8, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x000C($sp)           
    lw      t9, 0x1D8C(v0)             ## 00001D8C
    lw      t0, 0x0010(t9)             ## 00000010
    mtc1    t0, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0010($sp)          
    lw      t1, 0x1D8C(v0)             ## 00001D8C
    lw      t2, 0x0014(t1)             ## 00000014
    mtc1    t2, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0014($sp)          
    lw      t5, 0x0000(t3)             ## FFFFFFF4
    sw      t5, 0x0024(a0)             ## 00000024
    lw      t4, 0x0004(t3)             ## FFFFFFF8
    sw      t4, 0x0028(a0)             ## 00000028
    lw      t5, 0x0008(t3)             ## FFFFFFFC
    sw      t5, 0x002C(a0)             ## 0000002C
    lw      t6, 0x1D8C(v0)             ## 00001D8C
    lh      v1, 0x0008(t6)             ## 00000008
    sh      v1, 0x00B6(a0)             ## 000000B6
    sh      v1, 0x0032(a0)             ## 00000032
    lw      t7, 0x1D8C(v0)             ## 00001D8C
    lhu     t8, 0x000A(t7)             ## 0000000A
    sh      t8, 0x00B8(a0)             ## 000000B8
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AB2510:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      t6, 0x001C($sp)            
    lhu     a2, 0x1D74(a3)             ## 00001D74
    sll     t7, t6,  2                 
    addu    t8, a3, t7                 
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    lhu     a0, 0x0004(v0)             ## 00000004
    jal     func_8005C690              
    lhu     a1, 0x0002(v0)             ## 00000002
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    mov.s   $f2, $f0                   
    lw      $ra, 0x0014($sp)           
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80AB2568               
    mov.s   $f0, $f2                   
    mov.s   $f2, $f12                  
    mov.s   $f0, $f2                   
lbl_80AB2568:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AB2570:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    mtc1    a2, $f12                   ## $f12 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      t6, 0x002C($sp)            
    lwc1    $f6, 0x0024(a3)            ## 00000024
    lwc1    $f16, 0x0028(a3)           ## 00000028
    lwc1    $f4, 0x0000(t6)            ## 00000000
    lwc1    $f10, 0x0004(t6)           ## 00000004
    addiu   a0, a3, 0x0060             ## a0 = 00000060
    sub.s   $f8, $f4, $f6              
    lwc1    $f6, 0x002C(a3)            ## 0000002C
    lwc1    $f4, 0x0008(t6)            ## 00000008
    sub.s   $f18, $f10, $f16           
    mul.s   $f2, $f8, $f12             
    sw      a3, 0x0028($sp)            
    sub.s   $f8, $f4, $f6              
    mul.s   $f0, $f18, $f12            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    mul.s   $f14, $f8, $f12            
    swc1    $f2, 0x001C($sp)           
    mfc1    a1, $f0                    
    jal     func_8006385C              
    swc1    $f14, 0x0024($sp)          
    lwc1    $f2, 0x001C($sp)           
    lwc1    $f14, 0x0024($sp)          
    lw      a3, 0x0028($sp)            
    mul.s   $f10, $f2, $f2             
    addiu   a0, a3, 0x0024             ## a0 = 00000024
    mul.s   $f16, $f14, $f14           
    add.s   $f0, $f10, $f16            
    sqrt.s  $f0, $f0                   
    swc1    $f0, 0x0068(a3)            ## 00000068
    jal     func_80063F00              
    lw      a1, 0x002C($sp)            
    lw      a3, 0x0028($sp)            
    sh      v0, 0x0032(a3)             ## 00000032
    lh      t7, 0x0032(a3)             ## 00000032
    sh      t7, 0x00B6(a3)             ## 000000B6
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AB261C:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0007          ## a1 = 00000007
    jal     func_80AB2510              
    sw      a2, 0x004C($sp)            
    lw      a2, 0x004C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    lw      t6, 0x1DA8(a2)             ## 00001DA8
    lw      t7, 0x000C(t6)             ## 0000000C
    mtc1    t7, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x003C($sp)           
    lw      t8, 0x1DA8(a2)             ## 00001DA8
    lw      t9, 0x0010(t8)             ## 00000010
    mtc1    t9, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0040($sp)          
    lw      t0, 0x1DA8(a2)             ## 00001DA8
    lw      t1, 0x0014(t0)             ## 00000014
    mtc1    t1, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0044($sp)          
    lw      v1, 0x1DA8(a2)             ## 00001DA8
    lh      a0, 0x0034(s0)             ## 00000034
    lh      t2, 0x0008(v1)             ## 00000008
    subu    v0, t2, a0                 
    bgezl   v0, lbl_80AB26B0           
    mtc1    v0, $f4                    ## $f4 = 0.00
    addu    v0, v0, $at                
    mtc1    v0, $f4                    ## $f4 = 0.00
lbl_80AB26B0:
    mtc1    a0, $f10                   ## $f10 = 0.00
    lhu     t4, 0x03EC(s0)             ## 000003EC
    cvt.s.w $f6, $f4                   
    andi    t5, t4, 0x0004             ## t5 = 00000000
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f6, $f0              
    add.s   $f18, $f8, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    beq     t5, $zero, lbl_80AB27C0    
    andi    v0, v0, 0xFFFF             ## v0 = 00000000
    lhu     t6, 0x0006(v1)             ## 00000006
    sll     a0, v0, 16                 
    lui     $at, 0x4F80                ## $at = 4F800000
    mtc1    t6, $f6                    ## $f6 = 0.00
    sra     a0, a0, 16                 
    bgez    t6, lbl_80AB2710           
    cvt.s.w $f2, $f6                   
    mtc1    $at, $f10                  ## $f10 = 4294967000.00
    nop
    add.s   $f2, $f2, $f10             
lbl_80AB2710:
    lui     $at, 0x3D61                ## $at = 3D610000
    mtc1    $at, $f8                   ## $f8 = 0.05
    mtc1    $zero, $f16                ## $f16 = 0.00
    lui     $at, 0x43B4                ## $at = 43B40000
    mul.s   $f2, $f2, $f8              
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80AB2744               
    sw      a0, 0x0028($sp)            
    mtc1    $at, $f18                  ## $f18 = 360.00
    nop
    add.s   $f2, $f2, $f18             
    sw      a0, 0x0028($sp)            
lbl_80AB2744:
    jal     func_800636C4              ## sins?
    swc1    $f2, 0x0030($sp)           
    lwc1    $f2, 0x0030($sp)           
    lwc1    $f4, 0x003C($sp)           
    lw      a0, 0x0028($sp)            
    mul.s   $f6, $f0, $f2              
    sub.s   $f10, $f4, $f6             
    jal     func_80063684              ## coss?
    swc1    $f10, 0x003C($sp)          
    lwc1    $f2, 0x0030($sp)           
    lwc1    $f8, 0x0044($sp)           
    addiu   t7, $sp, 0x003C            ## t7 = FFFFFFF4
    mul.s   $f16, $f0, $f2             
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     t0, %hi(func_80AB2338)     ## t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AB2338) ## t0 = 80AB2338
    add.s   $f18, $f8, $f16            
    swc1    $f18, 0x0044($sp)          
    swc1    $f2, 0x03E8(s0)            ## 000003E8
    lw      t9, 0x0000(t7)             ## FFFFFFF4
    lhu     t1, 0x03EC(s0)             ## 000003EC
    sw      t9, 0x0024(s0)             ## 00000024
    lw      t8, 0x0004(t7)             ## FFFFFFF8
    andi    t2, t1, 0xFFFB             ## t2 = 00000000
    sw      t8, 0x0028(s0)             ## 00000028
    lw      t9, 0x0008(t7)             ## FFFFFFFC
    sw      t0, 0x0134(s0)             ## 00000134
    sh      t2, 0x03EC(s0)             ## 000003EC
    swc1    $f4, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_80AB2810 
    sw      t9, 0x002C(s0)             ## 0000002C
lbl_80AB27C0:
    sll     a0, v0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sw      a0, 0x0028($sp)            
    lwc1    $f10, 0x03E8(s0)           ## 000003E8
    lwc1    $f6, 0x003C($sp)           
    lw      a0, 0x0028($sp)            
    mul.s   $f8, $f0, $f10             
    sub.s   $f16, $f6, $f8             
    jal     func_80063684              ## coss?
    swc1    $f16, 0x003C($sp)          
    lwc1    $f4, 0x03E8(s0)            ## 000003E8
    lwc1    $f18, 0x0044($sp)          
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f10, $f0, $f4             
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFF4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    add.s   $f6, $f18, $f10            
    jal     func_80AB2570              
    swc1    $f6, 0x0044($sp)           
lbl_80AB2810:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AB2824:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0007          ## a1 = 00000007
    jal     func_80AB2510              
    sw      a3, 0x003C($sp)            
    lw      a3, 0x003C($sp)            
    lw      a0, 0x0038($sp)            
    addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
    lw      t6, 0x1DA8(a3)             ## 00001DA8
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lw      t7, 0x000C(t6)             ## 0000000C
    mtc1    t7, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x002C($sp)           
    lw      t8, 0x1DA8(a3)             ## 00001DA8
    lw      t9, 0x0010(t8)             ## 00000010
    mtc1    t9, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0030($sp)          
    lw      t0, 0x1DA8(a3)             ## 00001DA8
    lwc1    $f10, 0x002C($sp)          
    lw      t1, 0x0014(t0)             ## 00000014
    mtc1    t1, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0034($sp)          
    lw      v0, 0x1DA8(a3)             ## 00001DA8
    lw      t2, 0x0018(v0)             ## 00000018
    lw      t3, 0x001C(v0)             ## 0000001C
    lw      t4, 0x0020(v0)             ## 00000020
    mtc1    t2, $f4                    ## $f4 = 0.00
    mtc1    t3, $f6                    ## $f6 = 0.00
    mtc1    t4, $f8                    ## $f8 = 0.00
    cvt.s.w $f2, $f4                   
    cvt.s.w $f12, $f6                  
    lwc1    $f6, 0x0030($sp)           
    sub.s   $f16, $f2, $f10            
    cvt.s.w $f14, $f8                  
    mul.s   $f18, $f16, $f0            
    sub.s   $f8, $f12, $f6             
    add.s   $f4, $f18, $f10            
    lwc1    $f10, 0x0034($sp)          
    mul.s   $f16, $f8, $f0             
    swc1    $f4, 0x002C($sp)           
    sub.s   $f4, $f14, $f10            
    add.s   $f18, $f16, $f6            
    mul.s   $f8, $f4, $f0              
    swc1    $f18, 0x0030($sp)          
    add.s   $f16, $f8, $f10            
    jal     func_80AB2570              
    swc1    $f16, 0x0034($sp)          
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80AB2920: .word 0x014D0400, 0x00000019, 0x01310000, 0x00000404
.word func_80AAF320
.word func_80AAF704
.word func_80AB1A38
.word func_80AB2338
var_80AB2940: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80AB296C: .word 0xC8500019, 0xB0F40578, 0xB0F807D0, 0x30FC0960
var_80AB297C: .word 0x00000000, 0x00000000, 0x00000000
var_80AB2988: .word \
0x060089A8, 0x06008DA8, 0x060091A8, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80AB29A0: .word var_80AAF4E8
.word var_80AAF504
.word var_80AAF514
.word var_80AAF538
.word var_80AAF570
.word var_80AAF5A8
.word var_80AAF5B8
.word var_80AAF600
.word var_80AAF620
.word var_80AAF630
.word var_80AAF640
.word var_80AAF650
.word var_80AAF690
var_80AB29D4: .word var_80AB0F08
.word var_80AB0F44
.word var_80AB0F8C
.word var_80AB0FD4
.word var_80AB0FF0
var_80AB29E8: .word 0x45BB8000
var_80AB29EC: .word 0x3ECCCCCD
var_80AB29F0: .word 0x3E4CCCCD
var_80AB29F4: .word 0x3E4CCCCD
var_80AB29F8: .word 0x3E99999A
var_80AB29FC: .word 0x459C4000
var_80AB2A00: .word 0x459C4000
var_80AB2A04: .word 0x459C4000, 0x00000000, 0x00000000

