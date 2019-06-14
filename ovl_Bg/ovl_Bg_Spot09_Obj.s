#include <mips.h>
.set noreorder
.set noat

.section .text
func_80983EF0:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      a1, 0x0004($sp)            
    lw      t6, 0x1360(v0)             ## 8011B930
    slti    $at, t6, 0x0004            
    bnel    $at, $zero, lbl_80983F1C   
    lhu     v1, 0x0EE6(v0)             ## 8011B4B6
    lh      v0, 0x001C(a0)             ## 0000001C
    jr      $ra                        
    sltiu   v0, v0, 0x0001             
lbl_80983F18:
    lhu     v1, 0x0EE6(v0)             ## 8011B4B6
lbl_80983F1C:
    lw      t7, 0x0004(v0)             ## 8011A5D4
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    andi    v1, v1, 0x000F             ## v1 = 00000000
    xori    v1, v1, 0x000F             ## v1 = 0000000F
    beq     t7, $zero, lbl_80983F3C    
    sltiu   v1, v1, 0x0001             
    beq     $zero, $zero, lbl_80983F40 
    addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80983F3C:
    addiu   v0, $zero, 0x0011          ## v0 = 00000011
lbl_80983F40:
    bnel    v0, $at, lbl_80983F9C      
    lh      v0, 0x001C(a0)             ## 0000001C
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80983F78    
    nop
    beq     v0, $at, lbl_80983F80      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_80983F90      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     v0, $at, lbl_80983F88      
    nop
    beq     $zero, $zero, lbl_80983FA8 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80983F78:
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80983F80:
    jr      $ra                        
    sltiu   v0, v1, 0x0001             
lbl_80983F88:
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 0000000F
lbl_80983F90:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80983F98:
    lh      v0, 0x001C(a0)             ## 0000001C
lbl_80983F9C:
    xori    v0, v0, 0x0002             ## v0 = 00000003
    jr      $ra                        
    sltiu   v0, v0, 0x0001             
lbl_80983FA8:
    jr      $ra                        
    nop


func_80983FB0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    bne     t6, $at, lbl_80983FE0      
    nop
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    beq     $zero, $zero, lbl_80983FEC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80983FE0:
    jal     func_80020F88              
    lui     a1, 0x3F80                 ## a1 = 3F800000
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80983FEC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80983FFC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0028($sp)         
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     t8, %hi(var_80984330)      ## t8 = 80980000
    or      a0, s0, $zero              ## a0 = 00000000
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, %lo(var_80984330)(t8)  
    beql    t8, $zero, lbl_80984074    
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    jal     func_80035260              
    or      a1, $zero, $zero           ## a1 = 00000000
    lh      t9, 0x001C(s0)             ## 0000001C
    lui     a0, %hi(var_80984330)      ## a0 = 80980000
    addiu   a1, $sp, 0x0028            ## a1 = FFFFFFF8
    sll     t0, t9,  2                 
    addu    a0, a0, t0                 
    jal     func_80033EF4              
    lw      a0, %lo(var_80984330)(a0)  
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              ## a2 = 00000000
    lw      a3, 0x0028($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    sw      v0, 0x013C(s0)             ## 0000013C
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80984074:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80984088:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    or      s2, a1, $zero              ## s2 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s3, 0x0020($sp)            
    sw      s0, 0x0014($sp)            
    lui     s0, %hi(var_80984344)      ## s0 = 80980000
    lui     s3, %hi(var_80984350)      ## s3 = 80980000
    addiu   s3, s3, %lo(var_80984350)  ## s3 = 80984350
    addiu   s0, s0, %lo(var_80984344)  ## s0 = 80984344
    lw      t9, 0x0000(s0)             ## 80984344
lbl_809840BC:
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s2, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    bne     v0, $zero, lbl_809840DC    
    addiu   s0, s0, 0x0004             ## s0 = 80984348
    beq     $zero, $zero, lbl_809840E8 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809840DC:
    bnel    s0, s3, lbl_809840BC       
    lw      t9, 0x0000(s0)             ## 80984348
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809840E8:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80984104:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(var_80984350)      ## a1 = 80980000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80984350)  ## a1 = 80984350
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80984130:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(var_8098435C)      ## a1 = 80980000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_8098435C)  ## a1 = 8098435C
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8098415C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     t6, $at, lbl_80984184      
    nop
    jal     func_80984130              
    nop
    beq     $zero, $zero, lbl_80984190 
    lw      $ra, 0x0014($sp)           
lbl_80984184:
    jal     func_80984104              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80984190:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8098419C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sh      t7, 0x001C(a0)             ## 0000001C
    sw      a0, 0x0018($sp)            
    jal     func_80984088              
    lw      a1, 0x001C($sp)            
    bne     v0, $zero, lbl_809841D8    
    lw      a0, 0x0018($sp)            
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_809841F8 
    lw      $ra, 0x0014($sp)           
lbl_809841D8:
    lw      a1, 0x001C($sp)            
    jal     func_8098415C              
    sw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_809841F4    
    lw      a0, 0x0018($sp)            
    jal     func_80020EB4              
    nop
lbl_809841F4:
    lw      $ra, 0x0014($sp)           
lbl_809841F8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80984204:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    lh      t7, 0x001C(t6)             ## 0000001C
    beql    t7, $zero, lbl_80984238    
    lw      $ra, 0x0014($sp)           
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80984238:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80984244:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80984254:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x0028($sp)            
    lui     a1, %hi(var_80984368)      ## a1 = 80980000
    lw      a0, 0x002C($sp)            
    lh      t7, 0x001C(t6)             ## 0000001C
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    jal     func_80028048              
    lw      a1, %lo(var_80984368)(a1)  
    lw      t9, 0x0028($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lw      t1, 0x002C($sp)            
    lh      t0, 0x001C(t9)             ## 0000001C
    bnel    t0, $at, lbl_80984304      
    lw      $ra, 0x0014($sp)           
    lw      a0, 0x0000(t1)             ## 00000000
    jal     func_8007E2C0              
    sw      a0, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      v1, 0x02D0(a1)             ## 000002D0
    lui     t3, 0xDA38                 ## t3 = DA380000
    ori     t3, t3, 0x0003             ## t3 = DA380003
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(a1)             ## 000002D0
    sw      t3, 0x0000(v1)             ## 00000000
    lw      t4, 0x002C($sp)            
    lw      a0, 0x0000(t4)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a2, 0x001C($sp)            
    lw      a1, 0x0024($sp)            
    lui     t6, 0xDE00                 ## t6 = DE000000
    sw      v0, 0x0004(a2)             ## 00000004
    lw      v1, 0x02D0(a1)             ## 000002D0
    lui     t7, 0x0601                 ## t7 = 06010000
    addiu   t7, t7, 0x8010             ## t7 = 06008010
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(a1)             ## 000002D0
    sw      t7, 0x0004(v1)             ## 00000004
    sw      t6, 0x0000(v1)             ## 00000000
    lw      $ra, 0x0014($sp)           
lbl_80984304:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80984310: .word 0x00B80100, 0x00000000, 0x00AE0000, 0x00000158
.word func_8098419C
.word func_80984204
.word func_80984244
.word func_80984254
var_80984330: .word \
0x00000000, 0x06005520, 0x0600283C, 0x06008458, \
0x06007580
var_80984344: .word func_80983FFC
.word func_80983EF0
.word func_80983FB0
var_80984350: .word 0xB0F41C20, 0xB0F80BB8, 0x30FC1C20
var_8098435C: .word 0xB0F41C20, 0xB0F80320, 0x30FC05DC
var_80984368: .word \
0x06000100, 0x06003970, 0x06001120, 0x06007D40, \
0x06006210, 0x00000000

.section .rodata


