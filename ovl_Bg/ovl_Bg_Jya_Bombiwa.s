#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AC6D10:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x0020($sp)            
    jal     func_80035260              
    or      a1, a3, $zero              ## a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0018            ## a1 = FFFFFFF8
    lw      a0, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0018($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lw      t6, 0x0020($sp)            
    sw      v0, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AC6D68:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a1, a2, 0x0158             ## a1 = 00000158
    sw      a1, 0x0020($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8004A484              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lui     a3, %hi(var_80AC7234)      ## a3 = 80AC0000
    lw      a1, 0x0020($sp)            
    addiu   t6, a2, 0x0178             ## t6 = 00000178
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80AC7234)  ## a3 = 80AC7234
    jal     func_8004A874              
    lw      a0, 0x002C($sp)            
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AC6DBC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0xE710             ## a2 = 0600E710
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80AC6D10              
    or      a3, $zero, $zero           ## a3 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AC6D68              
    lw      a1, 0x0024($sp)            
    lh      a1, 0x001C(s0)             ## 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beq     v0, $zero, lbl_80AC6E1C    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AC6E2C 
    lw      $ra, 0x001C($sp)           
lbl_80AC6E1C:
    lui     a1, %hi(var_80AC7244)      ## a1 = 80AC0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80AC7244)  ## a1 = 80AC7244
    lw      $ra, 0x001C($sp)           
lbl_80AC6E2C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AC6E3C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    lw      a2, 0x013C(t6)             ## 0000013C
    jal     func_80031638              ## DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0158             ## a1 = 00000158
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AC6E84:
    addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
    sw      s5, 0x008C($sp)            
    or      s5, a0, $zero              ## s5 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    sw      a1, 0x00CC($sp)            
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f30                  ## $f30 = 12.00
    lui     $at, 0x430C                ## $at = 430C0000
    mtc1    $at, $f28                  ## $f28 = 140.00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f26                  ## $f26 = 10.00
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f24                  ## $f24 = 0.50
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f22                  ## $f22 = 40.00
    lui     $at, 0x42A0                ## $at = 42A00000
    lui     s8, 0x0601                 ## s8 = 06010000
    mtc1    $at, $f20                  ## $f20 = 80.00
    addiu   s8, s8, 0xEDC0             ## s8 = 0600EDC0
    or      s2, $zero, $zero           ## s2 = 00000000
    addiu   s7, $sp, 0x00B0            ## s7 = FFFFFFE8
    addiu   s6, $sp, 0x00BC            ## s6 = FFFFFFF4
    addiu   s3, $zero, 0x000C          ## s3 = 0000000C
lbl_80AC6F18:
    jal     func_800CDCCC              ## Rand.Next() float
    addiu   s4, $zero, 0x0008          ## s4 = 00000008
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s5)            ## 00000024
    add.s   $f8, $f4, $f6              
    sub.s   $f10, $f8, $f22            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f10, 0x00BC($sp)          
    mul.s   $f16, $f0, $f28            
    lwc1    $f18, 0x0028(s5)           ## 00000028
    add.s   $f4, $f16, $f18            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f4, 0x00C0($sp)           
    mul.s   $f6, $f0, $f20             
    lwc1    $f8, 0x002C(s5)            ## 0000002C
    add.s   $f10, $f6, $f8             
    sub.s   $f16, $f10, $f22           
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f16, 0x00C4($sp)          
    sub.s   $f18, $f0, $f24            
    mul.s   $f4, $f18, $f26            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f4, 0x00B0($sp)           
    mul.s   $f6, $f0, $f30             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x00B4($sp)           
    mtc1    s2, $f16                   ## $f16 = 0.00
    sub.s   $f8, $f0, $f24             
    lui     $at, %hi(var_80AC7260)     ## $at = 80AC0000
    lwc1    $f4, %lo(var_80AC7260)($at) 
    cvt.s.w $f18, $f16                 
    mul.s   $f10, $f8, $f26            
    addiu   s0, $zero, 0x0001          ## s0 = 00000001
    mul.s   $f6, $f18, $f4             
    swc1    $f10, 0x00B8($sp)          
    trunc.w.s $f8, $f6                   
    mfc1    s1, $f8                    
    nop
    addiu   s1, s1, 0x0003             ## s1 = 00000003
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0010            
    bne     $at, $zero, lbl_80AC6FD0   
    nop
    beq     $zero, $zero, lbl_80AC6FD0 
    addiu   s0, $zero, 0x0005          ## s0 = 00000005
lbl_80AC6FD0:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80AC7264)     ## $at = 80AC0000
    lwc1    $f10, %lo(var_80AC7264)($at) 
    lw      a0, 0x00CC($sp)            
    or      a1, s6, $zero              ## a1 = FFFFFFF4
    c.lt.s  $f0, $f10                  
    or      a2, s7, $zero              ## a2 = FFFFFFE8
    or      a3, s6, $zero              ## a3 = FFFFFFF4
    addiu   t7, $zero, 0xFE70          ## t7 = FFFFFE70
    bc1f    lbl_80AC7010               
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    ori     s0, s0, 0x0040             ## s0 = 00000045
    sll     s0, s0, 16                 
    beq     $zero, $zero, lbl_80AC702C 
    sra     s0, s0, 16                 
lbl_80AC7010:
    ori     s0, s0, 0x0020             ## s0 = 00000065
    sll     s0, s0, 16                 
    slti    $at, s1, 0x000A            
    beq     $at, $zero, lbl_80AC702C   
    sra     s0, s0, 16                 
    addiu   s3, $zero, 0x0050          ## s3 = 00000050
    addiu   s4, $zero, 0x0050          ## s4 = 00000050
lbl_80AC702C:
    addiu   t9, $zero, 0x0014          ## t9 = 00000014
    addiu   t0, $zero, 0x0050          ## t0 = 00000050
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    addiu   t2, $zero, 0x00F1          ## t2 = 000000F1
    sw      t2, 0x0038($sp)            
    sw      t1, 0x0034($sp)            
    sw      t0, 0x0030($sp)            
    sw      t9, 0x002C($sp)            
    sw      t7, 0x0010($sp)            
    sw      s0, 0x0014($sp)            
    sw      s3, 0x0018($sp)            
    sw      s4, 0x001C($sp)            
    sw      $zero, 0x0020($sp)         
    sw      s1, 0x0024($sp)            
    sw      t8, 0x0028($sp)            
    jal     func_8001D998              
    sw      s8, 0x003C($sp)            
    addiu   s2, s2, 0x0001             ## s2 = 00000001
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    bnel    s2, $at, lbl_80AC6F18      
    addiu   s3, $zero, 0x000C          ## s3 = 0000000C
    lwc1    $f16, 0x0024(s5)           ## 00000024
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f4                   ## $f4 = 70.00
    swc1    $f16, 0x00BC($sp)          
    lwc1    $f18, 0x0028(s5)           ## 00000028
    addiu   t3, $zero, 0x0064          ## t3 = 00000064
    addiu   t4, $zero, 0x00A0          ## t4 = 000000A0
    add.s   $f6, $f18, $f4             
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    lw      a0, 0x00CC($sp)            
    or      a1, s6, $zero              ## a1 = FFFFFFF4
    swc1    $f6, 0x00C0($sp)           
    lwc1    $f8, 0x002C(s5)            ## 0000002C
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lui     a2, 0x42C8                 ## a2 = 42C80000
    addiu   a3, $zero, 0x000A          ## a3 = 0000000A
    jal     func_80026308              
    swc1    $f8, 0x00C4($sp)           
    lw      $ra, 0x009C($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           ## $sp = 00000000


func_80AC7118:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x0169(s1)             ## 00000169
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    andi    t7, t6, 0x0002             ## t7 = 00000000
    beq     t7, $zero, lbl_80AC7188    
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80AC6E84              
    or      a1, s0, $zero              ## a1 = 00000000
    lh      a1, 0x001C(s1)             ## 0000001C
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800204D0              
    andi    a1, a1, 0x003F             ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s1, 0x0024             ## a1 = 00000024
    addiu   a2, $zero, 0x0028          ## a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2810          ## a3 = 00002810
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AC7198 
    lw      $ra, 0x001C($sp)           
lbl_80AC7188:
    addu    a1, s0, $at                
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s1, 0x0158             ## a2 = 00000158
    lw      $ra, 0x001C($sp)           
lbl_80AC7198:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AC71A8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xE490             ## a1 = 0600E490
    jal     func_80028048              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      a1, 0x0018($sp)            
    or      a0, $zero, $zero           ## a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, a1, 0x0158             ## a1 = 00000158
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80AC71F0: .word 0x015B0100, 0x00000000, 0x00F10000, 0x000001B8
.word func_80AC6DBC
.word func_80AC6E3C
.word func_80AC7118
.word func_80AC71A8
var_80AC7210: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00320064
var_80AC7234: .word 0x0A000900, 0x00000000, 0x00000001
.word var_80AC7210
var_80AC7244: .word \
0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AC7260: .word 0x3FE66666
var_80AC7264: .word 0x3ECCCCCD, 0x00000000, 0x00000000

