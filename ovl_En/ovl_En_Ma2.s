#include <mips.h>
.set noreorder
.set noat

.section .text
func_809CD990:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_800597C0              
    addiu   a1, $zero, 0x0017          ## a1 = 00000017
    beq     v0, $zero, lbl_809CD9B4    
    andi    v1, v0, 0xFFFF             ## v1 = 00000000
    beq     $zero, $zero, lbl_809CDA18 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_809CD9B4:
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
    lhu     t6, 0x0ED6(v1)             ## 8011B4A6
    andi    t7, t6, 0x0100             ## t7 = 00000000
    beql    t7, $zero, lbl_809CD9D8    
    lw      t8, 0x0010(v1)             ## 8011A5E0
    beq     $zero, $zero, lbl_809CDA18 
    addiu   v0, $zero, 0x2056          ## v0 = 00002056
    lw      t8, 0x0010(v1)             ## 8011A5E0
lbl_809CD9D8:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   v0, $zero, 0x204C          ## v0 = 0000204C
    bne     t8, $at, lbl_809CDA18      
    nop
    lhu     v0, 0x0F08(v1)             ## 8011B4D8
    andi    t9, v0, 0x1000             ## t9 = 00000000
    beq     t9, $zero, lbl_809CDA00    
    andi    t0, v0, 0x4000             ## t0 = 00000000
    beq     $zero, $zero, lbl_809CDA18 
    addiu   v0, $zero, 0x2052          ## v0 = 00002052
lbl_809CDA00:
    beq     t0, $zero, lbl_809CDA10    
    nop
    beq     $zero, $zero, lbl_809CDA18 
    addiu   v0, $zero, 0x2051          ## v0 = 00002051
lbl_809CDA10:
    beq     $zero, $zero, lbl_809CDA18 
    addiu   v0, $zero, 0x2050          ## v0 = 00002050
lbl_809CDA18:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDA28:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    sh      v1, 0x001E($sp)            
    jal     func_800DD464              
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    sltiu   $at, v0, 0x000A            
    beq     $at, $zero, lbl_809CDAC4   
    lh      v1, 0x001E($sp)            
    sll     t6, v0,  2                 
    lui     $at, %hi(var_809CE880)     ## $at = 809D0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_809CE880)($at) 
    jr      t6                         
    nop
var_809CDA6C:
    lw      t7, 0x0024($sp)            
    addiu   $at, $zero, 0x2051         ## $at = 00002051
    lhu     v0, 0x010E(t7)             ## 0000010E
    beq     v0, $at, lbl_809CDA90      
    addiu   $at, $zero, 0x2053         ## $at = 00002053
    beq     v0, $at, lbl_809CDAAC      
    nop
    beq     $zero, $zero, lbl_809CDAC4 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_809CDA90:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0F08(v0)             ## 8011B4D8
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
    ori     t9, t8, 0x1000             ## t9 = 00001000
    beq     $zero, $zero, lbl_809CDAC4 
    sh      t9, 0x0F08(v0)             ## 8011B4D8
lbl_809CDAAC:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t0, 0x0F08(v0)             ## 8011B4D8
    or      v1, $zero, $zero           ## v1 = 00000000
    ori     t1, t0, 0x2000             ## t1 = 00002000
    sh      t1, 0x0F08(v0)             ## 8011B4D8
lbl_809CDAC4:
    or      v0, v1, $zero              ## v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDAD8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01D0(a0)             ## 000001D0
    lw      v0, 0x1C44(a1)             ## 00001C44
    or      a3, $zero, $zero           ## a3 = 00000000
    bne     t6, $zero, lbl_809CDB10    
    nop
    lw      t8, 0x0144(a0)             ## 00000144
    lui     t7, 0x0601                 ## t7 = 06010000
    addiu   t7, t7, 0x9EE0             ## t7 = 06009EE0
    bne     t7, t8, lbl_809CDB10       
    nop
    beq     $zero, $zero, lbl_809CDB10 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_809CDB10:
    lw      t0, 0x0024(v0)             ## 00000024
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a1, a0, 0x01D0             ## a1 = 000001D0
    sw      t0, 0x01E8(a0)             ## 000001E8
    lw      t9, 0x0028(v0)             ## 00000028
    or      a2, $zero, $zero           ## a2 = 00000000
    sw      t9, 0x01EC(a0)             ## 000001EC
    lw      t0, 0x002C(v0)             ## 0000002C
    swc1    $f4, 0x01E4(a0)            ## 000001E4
    jal     func_80027854              
    sw      t0, 0x01F0(a0)             ## 000001F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDB4C:
    lui     a2, 0x8012                 ## a2 = 80120000
    addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    lw      t6, 0x0004(a2)             ## 8011A5D4
    bnel    v1, t6, lbl_809CDB70       
    lhu     v0, 0x0ED6(a2)             ## 8011B4A6
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDB6C:
    lhu     v0, 0x0ED6(a2)             ## 8011B4A6
lbl_809CDB70:
    andi    v0, v0, 0x0100             ## v0 = 00000000
    bne     v0, $zero, lbl_809CDBB0    
    nop
    lh      t7, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x0036         ## $at = 00000036
    bne     t7, $at, lbl_809CDBB0      
    nop
    lw      t8, 0x0010(a2)             ## 8011A5E0
    bne     t8, $zero, lbl_809CDBB0    
    nop
    lh      t9, 0x00B8(a0)             ## 000000B8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bne     t9, $at, lbl_809CDBB0      
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809CDBB0:
    bne     v0, $zero, lbl_809CDBEC    
    nop
    lh      t0, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x0063         ## $at = 00000063
    bne     t0, $at, lbl_809CDBEC      
    nop
    lw      t1, 0x0010(a2)             ## 8011A5E0
    bne     v1, t1, lbl_809CDBEC       
    nop
    lh      t2, 0x00B8(a0)             ## 000000B8
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     t2, $at, lbl_809CDBEC      
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_809CDBEC:
    beq     v0, $zero, lbl_809CDC04    
    nop
    lh      t3, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x0063         ## $at = 00000063
    beql    t3, $at, lbl_809CDC10      
    lh      v0, 0x00B8(a0)             ## 000000B8
lbl_809CDC04:
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDC0C:
    lh      v0, 0x00B8(a0)             ## 000000B8
lbl_809CDC10:
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    bnel    v0, $at, lbl_809CDC34      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    lw      t4, 0x0010(a2)             ## 8011A5E0
    bnel    t4, $zero, lbl_809CDC34    
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    jr      $ra                        
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
lbl_809CDC30:
    addiu   $at, $zero, 0x0008         ## $at = 00000008
lbl_809CDC34:
    bnel    v0, $at, lbl_809CDC54      
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      t5, 0x0010(a2)             ## 8011A5E0
    bnel    v1, t5, lbl_809CDC54       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
lbl_809CDC50:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDC54:
    jr      $ra                        
    nop


func_809CDC5C:
    lw      t7, 0x0144(a0)             ## 00000144
    lui     t6, 0x0601                 ## t6 = 06010000
    addiu   t6, t6, 0x9EE0             ## t6 = 06009EE0
    beql    t6, t7, lbl_809CDC7C       
    lh      t8, 0x01D0(a0)             ## 000001D0
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDC78:
    lh      t8, 0x01D0(a0)             ## 000001D0
lbl_809CDC7C:
    beql    t8, $zero, lbl_809CDC90    
    lh      t9, 0x01FE(a0)             ## 000001FE
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDC8C:
    lh      t9, 0x01FE(a0)             ## 000001FE
lbl_809CDC90:
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
    sh      $zero, 0x01FC(a0)          ## 000001FC
    beq     v1, t9, lbl_809CDCA8       
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809CDCA8:
    sh      v1, 0x0200(a0)             ## 00000200
    jr      $ra                        
    nop


func_809CDCB4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_809CDC5C              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_809CDD30    
    lw      a2, 0x0018($sp)            
    lh      v0, 0x01FC(a2)             ## 000001FC
    bne     v0, $zero, lbl_809CDCE8    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_809CDCF0 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_809CDCE8:
    sh      t6, 0x01FC(a2)             ## 000001FC
    lh      v1, 0x01FC(a2)             ## 000001FC
lbl_809CDCF0:
    bnel    v1, $zero, lbl_809CDD34    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x01FE(a2)             ## 000001FE
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    addiu   a1, $zero, 0x001E          ## a1 = 0000001E
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    sh      t8, 0x01FE(a2)             ## 000001FE
    lh      t9, 0x01FE(a2)             ## 000001FE
    slti    $at, t9, 0x0003            
    bnel    $at, $zero, lbl_809CDD34   
    lw      $ra, 0x0014($sp)           
    jal     func_80063BF0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x01FC(a2)             ## 000001FC
    sh      $zero, 0x01FE(a2)          ## 000001FE
lbl_809CDD30:
    lw      $ra, 0x0014($sp)           
lbl_809CDD34:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDD40:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    lui     t7, %hi(var_809CE808)      ## t7 = 809D0000
    addiu   t7, t7, %lo(var_809CE808)  ## t7 = 809CE808
    sll     t6, a1,  4                 
    addu    v1, t6, t7                 
    lw      a0, 0x0000(v1)             ## 00000000
    jal     func_8008A194              
    sw      v1, 0x0028($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      v1, 0x0028($sp)            
    lw      a0, 0x0030($sp)            
    cvt.s.w $f6, $f4                   
    lbu     t8, 0x0008(v1)             ## 00000008
    lwc1    $f8, 0x000C(v1)            ## 0000000C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    lw      a1, 0x0000(v1)             ## 00000000
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    sw      t8, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDDB0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t7, 0x0144(a1)             ## 00000144
    lui     t6, 0x0601                 ## t6 = 06010000
    addiu   t6, t6, 0x9EE0             ## t6 = 06009EE0
    bnel    t6, t7, lbl_809CDE30       
    lw      $ra, 0x0014($sp)           
    lh      t8, 0x01D0(a1)             ## 000001D0
    bnel    t8, $zero, lbl_809CDE0C    
    lh      t0, 0x01FA(a1)             ## 000001FA
    lh      t9, 0x01FA(a1)             ## 000001FA
    or      a0, $zero, $zero           ## a0 = 00000000
    beql    t9, $zero, lbl_809CDE30    
    lw      $ra, 0x0014($sp)           
    jal     func_800C72A4              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    beq     $zero, $zero, lbl_809CDE2C 
    sh      $zero, 0x01FA(a1)          ## 000001FA
    lh      t0, 0x01FA(a1)             ## 000001FA
lbl_809CDE0C:
    addiu   a0, $zero, 0x0001          ## a0 = 00000001
    bnel    t0, $zero, lbl_809CDE30    
    lw      $ra, 0x0014($sp)           
    jal     func_800C72A4              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sh      t1, 0x01FA(a1)             ## 000001FA
lbl_809CDE2C:
    lw      $ra, 0x0014($sp)           
lbl_809CDE30:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDE3C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4190                 ## a3 = 41900000
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0x8D90             ## a2 = 06008D90
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    addiu   a1, s0, 0x0184             ## a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_809CE7D0)      ## a3 = 809D0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809CE7D0)  ## a3 = 809CE7D0
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_80049E10              
    addiu   a0, $zero, 0x0016          ## a0 = 00000016
    lui     a2, %hi(var_809CE7FC)      ## a2 = 809D0000
    addiu   a2, a2, %lo(var_809CE7FC)  ## a2 = 809CE7FC
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    jal     func_80050370              
    or      a1, v0, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809CDB4C              
    lw      a1, 0x0044($sp)            
    beq     v0, $zero, lbl_809CDF7C    
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $at, lbl_809CDF0C      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_809CDF24      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_809CDF3C      
    lui     t8, 0x8012                 ## t8 = 80120000
    beq     $zero, $zero, lbl_809CDF90 
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_809CDF0C:
    jal     func_809CDD40              
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    lui     t6, %hi(func_809CE020)     ## t6 = 809D0000
    addiu   t6, t6, %lo(func_809CE020) ## t6 = 809CE020
    beq     $zero, $zero, lbl_809CDF8C 
    sw      t6, 0x0180(s0)             ## 00000180
lbl_809CDF24:
    jal     func_809CDD40              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    lui     t7, %hi(func_809CE054)     ## t7 = 809D0000
    addiu   t7, t7, %lo(func_809CE054) ## t7 = 809CE054
    beq     $zero, $zero, lbl_809CDF8C 
    sw      t7, 0x0180(s0)             ## 00000180
lbl_809CDF3C:
    lhu     t8, -0x4B28(t8)            ## FFFFB4D8
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, t8, 0x2000             ## t9 = 00000000
    beq     t9, $zero, lbl_809CDF64    
    nop
    jal     func_809CDD40              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809CDF6C 
    nop
lbl_809CDF64:
    jal     func_809CDD40              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
lbl_809CDF6C:
    lui     t0, %hi(func_809CE020)     ## t0 = 809D0000
    addiu   t0, t0, %lo(func_809CE020) ## t0 = 809CE020
    beq     $zero, $zero, lbl_809CDF8C 
    sw      t0, 0x0180(s0)             ## 00000180
lbl_809CDF7C:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809CDFD0 
    lw      $ra, 0x002C($sp)           
lbl_809CDF8C:
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_809CDF90:
    addiu   t1, $zero, 0x0004          ## t1 = 00000004
    sw      t1, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t2, $zero, 0x0006          ## t2 = 00000006
    sb      t2, 0x001F(s0)             ## 0000001F
    sh      $zero, 0x01D0(s0)          ## 000001D0
    lw      $ra, 0x002C($sp)           
lbl_809CDFD0:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CDFE0:
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


func_809CE020:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x01D0(a0)             ## 000001D0
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     t6, $at, lbl_809CE04C      
    nop
    lw      t7, 0x0004(a0)             ## 00000004
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    and     t8, t7, $at                
    sw      t8, 0x0004(a0)             ## 00000004
    sh      $zero, 0x01D0(a0)          ## 000001D0
lbl_809CE04C:
    jr      $ra                        
    nop


func_809CE054:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lw      v0, 0x1C44(a3)             ## 00001C44
    lui     $at, 0x0200                ## $at = 02000000
    or      a0, a3, $zero              ## a0 = 00000000
    lw      v1, 0x0670(v0)             ## 00000670
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    sll     t6, v1,  7                 
    bgez    t6, lbl_809CE0A8           
    or      t7, v1, $at                ## t7 = 02000000
    sw      t7, 0x0670(v0)             ## 00000670
    sw      a2, 0x0698(v0)             ## 00000698
    jal     func_800DD400              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_809CE0F0)     ## t8 = 809D0000
    addiu   t8, t8, %lo(func_809CE0F0) ## t8 = 809CE0F0
    beq     $zero, $zero, lbl_809CE0E0 
    sw      t8, 0x0180(a2)             ## 00000180
lbl_809CE0A8:
    lh      t9, 0x01C4(a2)             ## 000001C4
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f6                   ## $f6 = 30.00
    mtc1    t9, $f8                    ## $f8 = 0.00
    lwc1    $f4, 0x0090(a2)            ## 00000090
    lui     $at, 0x0080                ## $at = 00800000
    cvt.s.w $f10, $f8                  
    or      t0, v1, $at                ## t0 = 00800000
    add.s   $f16, $f6, $f10            
    c.lt.s  $f4, $f16                  
    nop
    bc1fl   lbl_809CE0E4               
    lw      $ra, 0x0014($sp)           
    sw      t0, 0x0670(v0)             ## 00000670
lbl_809CE0E0:
    lw      $ra, 0x0014($sp)           
lbl_809CE0E4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CE0F0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lui     v1, 0x0001                 ## v1 = 00010000
    lw      t8, 0x0020($sp)            
    addu    v1, v1, t6                 
    lhu     v1, 0x04C6(v1)             ## 000104C6
    lw      v0, 0x1C44(t6)             ## 00001C44
    slti    $at, v1, 0x0004            
    bne     $at, $zero, lbl_809CE144   
    lui     t7, %hi(func_809CE054)     ## t7 = 809D0000
    addiu   t7, t7, %lo(func_809CE054) ## t7 = 809CE054
    sw      t7, 0x0180(t8)             ## 00000180
    lw      t0, 0x0024($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    addu    $at, $at, t0               
    beq     $zero, $zero, lbl_809CE1CC 
    sh      t9, 0x04C6($at)            ## 000104C6
lbl_809CE144:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     v1, $at, lbl_809CE1BC      
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t1, 0x8010                 ## t1 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t1, t1, 0x43A8             ## t1 = 801043A8
    lui     a1, 0x8010                 ## a1 = 80100000
    addiu   a1, a1, 0x4394             ## a1 = 80104394
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    lw      v1, 0x0020($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t2, $zero, 0x001E          ## t2 = 0000001E
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sh      t2, 0x01F8(v1)             ## 000001F8
    lhu     t3, 0x0F08(v0)             ## 8011B4D8
    lui     t5, %hi(func_809CE1DC)     ## t5 = 809D0000
    addiu   t5, t5, %lo(func_809CE1DC) ## t5 = 809CE1DC
    ori     t4, t3, 0x4000             ## t4 = 00004000
    sh      t4, 0x0F08(v0)             ## 8011B4D8
    sw      t5, 0x0180(v1)             ## 00000180
    lw      t7, 0x0024($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    addu    $at, $at, t7               
    beq     $zero, $zero, lbl_809CE1CC 
    sh      t6, 0x04C6($at)            ## 000104C6
lbl_809CE1BC:
    lw      t8, 0x0670(v0)             ## 8011AC40
    lui     $at, 0x0080                ## $at = 00800000
    or      t9, t8, $at                ## t9 = 00800000
    sw      t9, 0x0670(v0)             ## 8011AC40
lbl_809CE1CC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CE1DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      v1, 0x01F8(a2)             ## 000001F8
    lw      v0, 0x1C44(a1)             ## 00001C44
    bne     v1, $zero, lbl_809CE200    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_809CE208 
    or      a0, $zero, $zero           ## a0 = 00000000
lbl_809CE200:
    sh      t6, 0x01F8(a2)             ## 000001F8
    lh      a0, 0x01F8(a2)             ## 000001F8
lbl_809CE208:
    beql    a0, $zero, lbl_809CE228    
    lh      t9, 0x01D0(a2)             ## 000001D0
    lw      t7, 0x0670(v0)             ## 00000670
    lui     $at, 0x0080                ## $at = 00800000
    or      t8, t7, $at                ## t8 = 00800000
    beq     $zero, $zero, lbl_809CE26C 
    sw      t8, 0x0670(v0)             ## 00000670
    lh      t9, 0x01D0(a2)             ## 000001D0
lbl_809CE228:
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    bne     t9, $zero, lbl_809CE258    
    lui     t4, %hi(func_809CE020)     ## t4 = 809D0000
    lw      t0, 0x0004(a2)             ## 00000004
    lui     $at, 0x0001                ## $at = 00010000
    or      a0, a1, $zero              ## a0 = 00000000
    or      t1, t0, $at                ## t1 = 00010000
    jal     func_800D6218              
    sw      t1, 0x0004(a2)             ## 00000004
    beq     $zero, $zero, lbl_809CE270 
    lw      $ra, 0x0014($sp)           
lbl_809CE258:
    lw      t2, 0x0004(a2)             ## 00000004
    addiu   t4, t4, %lo(func_809CE020) ## t4 = FFFFE020
    sw      t4, 0x0180(a2)             ## 00000180
    and     t3, t2, $at                
    sw      t3, 0x0004(a2)             ## 00000004
lbl_809CE26C:
    lw      $ra, 0x0014($sp)           
lbl_809CE270:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CE27C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   a2, s0, 0x0184             ## a2 = 00000184
    or      a1, a2, $zero              ## a1 = 00000184
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_809CDCB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t9, 0x0180(s0)             ## 00000180
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809CDDB0              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809CDAD8              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      t7, 0x0180(s0)             ## 00000180
    lui     t6, %hi(func_809CE0F0)     ## t6 = 809D0000
    addiu   t6, t6, %lo(func_809CE0F0) ## t6 = 809CE0F0
    beql    t6, t7, lbl_809CE35C       
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x01C4(s0)             ## 000001C4
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f8                   ## $f8 = 30.00
    mtc1    t8, $f4                    ## $f4 = 0.00
    lui     t0, %hi(func_809CD990)     ## t0 = 809D0000
    lui     t1, %hi(func_809CDA28)     ## t1 = 809D0000
    cvt.s.w $f6, $f4                   
    addiu   t1, t1, %lo(func_809CDA28) ## t1 = 809CDA28
    addiu   t0, t0, %lo(func_809CD990) ## t0 = 809CD990
    sw      t0, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    add.s   $f10, $f6, $f8             
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x01D0             ## a2 = 000001D0
    mfc1    a3, $f10                   
    jal     func_800271FC              
    nop
    lw      $ra, 0x0024($sp)           
lbl_809CE35C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_809CE36C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a3, 0x0044($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     s0, $at, lbl_809CE398      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    s0, $at, lbl_809CE3A0      
    addiu   $at, $zero, 0x0012         ## $at = 00000012
lbl_809CE398:
    sw      $zero, 0x0000(a2)          ## 00000000
    addiu   $at, $zero, 0x0012         ## $at = 00000012
lbl_809CE3A0:
    bnel    s0, $at, lbl_809CE45C      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    mtc1    $zero, $f14                ## $f14 = 0.00
    lui     $at, 0x44AF                ## $at = 44AF0000
    mtc1    $at, $f12                  ## $f12 = 1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      t7, 0x004C($sp)            
    addiu   t6, $sp, 0x002C            ## t6 = FFFFFFF4
    lui     $at, 0x4700                ## $at = 47000000
    lwl     t9, 0x01D8(t7)             ## 000001D8
    lwr     t9, 0x01DB(t7)             ## 000001DB
    mtc1    $at, $f8                   ## $f8 = 32768.00
    lui     $at, %hi(var_809CE8A8)     ## $at = 809D0000
    sw      t9, 0x0000(t6)             ## FFFFFFF4
    lhu     t9, 0x01DC(t7)             ## 000001DC
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    sh      t9, 0x0004(t6)             ## FFFFFFF8
    lh      t0, 0x002E($sp)            
    lwc1    $f16, %lo(var_809CE8A8)($at) 
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lh      t1, 0x002C($sp)            
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t1, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_809CE8AC)     ## $at = 809D0000
    lwc1    $f10, %lo(var_809CE8AC)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAD4C              
    nop
    mtc1    $zero, $f14                ## $f14 = 0.00
    lui     $at, 0xC4AF                ## $at = C4AF0000
    mtc1    $at, $f12                  ## $f12 = -1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
lbl_809CE45C:
    bne     s0, $at, lbl_809CE4E8      
    lw      t3, 0x004C($sp)            
    lwl     t5, 0x01DE(t3)             ## 000001DE
    lwr     t5, 0x01E1(t3)             ## 000001E1
    addiu   t2, $sp, 0x002C            ## t2 = FFFFFFF4
    lui     $at, 0x4700                ## $at = 47000000
    sw      t5, 0x0000(t2)             ## FFFFFFF4
    lhu     t5, 0x01E2(t3)             ## 000001E2
    mtc1    $at, $f4                   ## $f4 = 32768.00
    lui     $at, %hi(var_809CE8B0)     ## $at = 809D0000
    sh      t5, 0x0004(t2)             ## FFFFFFF8
    lh      t6, 0x002E($sp)            
    lwc1    $f8, %lo(var_809CE8B0)($at) 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    subu    t7, $zero, t6              
    mtc1    t7, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lh      t8, 0x002C($sp)            
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f18                  ## $f18 = 32768.00
    subu    t9, $zero, t8              
    mtc1    t9, $f10                   ## $f10 = 0.00
    lui     $at, %hi(var_809CE8B4)     ## $at = 809D0000
    lwc1    $f6, %lo(var_809CE8B4)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AA9E0              
    nop
lbl_809CE4E8:
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     s0, $at, lbl_809CE504      
    lw      t0, 0x004C($sp)            
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     s0, $at, lbl_809CE504      
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     s0, $at, lbl_809CE594      
lbl_809CE504:
    sll     t1, s0,  2                 
    subu    t1, t1, s0                 
    sll     t1, t1,  1                 
    addu    v1, t0, t1                 
    lh      a0, 0x0204(v1)             ## 00000204
    jal     func_800636C4              ## sins?
    sw      v1, 0x0024($sp)            
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f16                  ## $f16 = 200.00
    lh      t2, 0x0002(v0)             ## 00000002
    lw      v1, 0x0024($sp)            
    mul.s   $f18, $f0, $f16            
    mtc1    t2, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x0002(v0)             ## 00000002
    jal     func_80063684              ## coss?
    lh      a0, 0x0206(v1)             ## 00000206
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f10                  ## $f10 = 200.00
    lh      t5, 0x0004(v0)             ## 00000004
    mul.s   $f18, $f0, $f10            
    mtc1    t5, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0004(v0)             ## 00000004
lbl_809CE594:
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CE5AC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      a3, 0x0044($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x003C($sp)            
    sw      a2, 0x0040($sp)            
    lui     t7, %hi(var_809CE858)      ## t7 = 809D0000
    addiu   t7, t7, %lo(var_809CE858)  ## t7 = 809CE858
    lw      t9, 0x0000(t7)             ## 809CE858
    addiu   t6, $sp, 0x0028            ## t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             ## 809CE85C
    sw      t9, 0x0000(t6)             ## FFFFFFF0
    lw      t9, 0x0008(t7)             ## 809CE860
    addiu   $at, $zero, 0x0012         ## $at = 00000012
    sw      t8, 0x0004(t6)             ## FFFFFFF4
    sw      t9, 0x0008(t6)             ## FFFFFFF8
    bne     a3, $at, lbl_809CE614      
    lw      a2, 0x0000(a0)             ## 00000000
    lw      a1, 0x0048($sp)            
    addiu   a0, $sp, 0x0028            ## a0 = FFFFFFF0
    sw      a2, 0x0024($sp)            
    sw      a3, 0x003C($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             ## a1 = 00000038
    lw      a2, 0x0024($sp)            
    lw      a3, 0x003C($sp)            
lbl_809CE614:
    addiu   $at, $zero, 0x000E         ## $at = 0000000E
    bne     a3, $at, lbl_809CE650      
    lw      t1, 0x0048($sp)            
    lw      t2, 0x0144(t1)             ## 00000144
    lui     t0, 0x0601                 ## t0 = 06010000
    addiu   t0, t0, 0x93BC             ## t0 = 060093BC
    bne     t0, t2, lbl_809CE650       
    lui     t4, 0xDE00                 ## t4 = DE000000
    lw      v1, 0x02C0(a2)             ## 000002C0
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x5420             ## t5 = 06005420
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(a2)             ## 000002C0
    sw      t5, 0x0004(v1)             ## 00000004
    sw      t4, 0x0000(v1)             ## 00000000
lbl_809CE650:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CE660:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x07A0(s1)             ## 000007A0
    lw      t3, 0x0000(s1)             ## 00000000
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    sll     t7, t6,  2                 
    addu    t8, s1, t7                 
    lw      v0, 0x0790(t8)             ## 00000790
    sw      t3, 0x0034($sp)            
    jal     func_80063EB8              
    addiu   a1, v0, 0x005C             ## a1 = 0000005C
    mov.s   $f12, $f0                  
    jal     func_800C6F9C              
    addiu   a1, $zero, 0x002F          ## a1 = 0000002F
    jal     func_8007E298              
    lw      a0, 0x0000(s1)             ## 00000000
    lui     t4, 0x00FF                 ## t4 = 00FF0000
    lui     t5, 0x8012                 ## t5 = 80120000
    addiu   t5, t5, 0x0C38             ## t5 = 80120C38
    ori     t4, t4, 0xFFFF             ## t4 = 00FFFFFF
    lw      t3, 0x0034($sp)            
    lui     $ra, 0x8000                ## $ra = 80000000
    lw      v0, 0x02C0(t3)             ## 000002C0
    lui     t6, 0xDB06                 ## t6 = DB060000
    ori     t6, t6, 0x0024             ## t6 = DB060024
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(t3)             ## 000002C0
    sw      t6, 0x0000(v0)             ## 00000000
    lh      t7, 0x0200(s0)             ## 00000200
    lui     t1, %hi(var_809CE864)      ## t1 = 809D0000
    or      a0, s1, $zero              ## a0 = 00000000
    sll     t8, t7,  2                 
    addu    t1, t1, t8                 
    lw      t1, %lo(var_809CE864)(t1)  
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t6, t5, t8                 
    lw      t7, 0x0000(t6)             ## DB060024
    and     t9, t1, t4                 
    addu    t8, t9, t7                 
    addu    t6, t8, $ra                
    sw      t6, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(t3)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0020             ## t7 = DB060020
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(t3)             ## 000002C0
    sw      t7, 0x0000(v0)             ## 00000000
    lh      t8, 0x01FE(s0)             ## 000001FE
    lui     t2, %hi(var_809CE870)      ## t2 = 809D0000
    sll     t6, t8,  2                 
    addu    t2, t2, t6                 
    lw      t2, %lo(var_809CE870)(t2)  
    sll     t7, t2,  4                 
    srl     t8, t7, 28                 
    sll     t6, t8,  2                 
    addu    t7, t5, t6                 
    lw      t8, 0x0000(t7)             ## DB060020
    and     t9, t2, t4                 
    addu    t6, t9, t8                 
    addu    t7, t6, $ra                
    sw      t7, 0x0004(v0)             ## 00000004
    lw      a1, 0x0140(s0)             ## 00000140
    lw      a2, 0x015C(s0)             ## 0000015C
    lbu     a3, 0x013E(s0)             ## 0000013E
    lui     t9, %hi(func_809CE36C)     ## t9 = 809D0000
    lui     t8, %hi(func_809CE5AC)     ## t8 = 809D0000
    addiu   t8, t8, %lo(func_809CE5AC) ## t8 = 809CE5AC
    addiu   t9, t9, %lo(func_809CE36C) ## t9 = 809CE36C
    sw      t9, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    jal     func_80089D8C              
    sw      s0, 0x0018($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    nop

.section .data

var_809CE7B0: .word 0x00D90400, 0x02000039, 0x00D00000, 0x00000274
.word func_809CDE3C
.word func_809CDFE0
.word func_809CE27C
.word func_809CE660
var_809CE7D0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012002E, 0x00000000, 0x00000000
var_809CE7FC: .word 0x00000000, 0x00000000, 0xFF000000
var_809CE808: .word \
0x060007D4, 0x3F800000, 0x00000000, 0x00000000, \
0x060007D4, 0x3F800000, 0x00000000, 0xC1200000, \
0x060093BC, 0x3F800000, 0x00000000, 0x00000000, \
0x06009EE0, 0x3F800000, 0x00000000, 0x00000000, \
0x06009EE0, 0x3F800000, 0x00000000, 0xC1200000
var_809CE858: .word 0x44610000, 0x00000000, 0x00000000
var_809CE864: .word 0x06002970, 0x06003570, 0x06003770
var_809CE870: .word 0x06002570, 0x06002C70, 0x06003070, 0x00000000

.section .rodata

var_809CE880: .word lbl_809CDAC4
.word lbl_809CDAC4
.word var_809CDA6C
.word lbl_809CDAC4
.word lbl_809CDAC4
.word lbl_809CDAC4
.word lbl_809CDAC4
.word lbl_809CDAC4
.word lbl_809CDAC4
.word lbl_809CDAC4
var_809CE8A8: .word 0x40490FDB
var_809CE8AC: .word 0x40490FDB
var_809CE8B0: .word 0x40490FDB
var_809CE8B4: .word 0x40490FDB, 0x00000000, 0x00000000

