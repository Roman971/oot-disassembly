#include <mips.h>
.set noreorder
.set noat

.section .text
func_809CA650:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0008(v0)             ## 8011A5D8
    ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    slt     $at, t6, $at               
    beq     $at, $zero, lbl_809CA6B0   
    lui     t0, 0x8010                 ## t0 = 80100000
    lw      t7, 0x0004(v0)             ## 8011A5D4
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    beql    t7, $zero, lbl_809CA6A8    
    sb      t8, 0x018C(s0)             ## 0000018C
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809CA74C 
    lw      $ra, 0x001C($sp)           
    sb      t8, 0x018C(s0)             ## 0000018C
lbl_809CA6A8:
    beq     $zero, $zero, lbl_809CA6B8 
    sb      $zero, 0x018B(s0)          ## 0000018B
lbl_809CA6B0:
    sb      $zero, 0x018C(s0)          ## 0000018C
    sb      t9, 0x018B(s0)             ## 0000018B
lbl_809CA6B8:
    lw      t0, -0x7410(t0)            ## FFFF8BF0
    lw      t1, 0x00A4(v0)             ## 000000A4
    and     t2, t0, t1                 
    bnel    t2, $zero, lbl_809CA6E0    
    mtc1    $zero, $f0                 ## $f0 = 0.00
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809CA74C 
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_809CA6E0:
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    or      a2, $zero, $zero           ## a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a2, %hi(var_809CAC00)      ## a2 = 809D0000
    addiu   a2, a2, %lo(var_809CAC00)  ## a2 = 809CAC00
    lw      a1, 0x0024($sp)            
    sw      s0, 0x0000(a2)             ## 809CAC00
    jal     func_8004AC1C              
    lw      a0, 0x0034($sp)            
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    sb      t3, 0x00AE(s0)             ## 000000AE
    lw      a0, 0x0034($sp)            
    jal     func_8002A9AC              
    addiu   a1, $zero, 0x000F          ## a1 = 0000000F
    lui     a1, 0x3ECC                 ## a1 = 3ECC0000
    sh      v0, 0x010E(s0)             ## 0000010E
    ori     a1, a1, 0xCCCD             ## a1 = 3ECCCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809CA74C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CA75C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809CA76C:
    lw      t6, 0x000C(a0)             ## 0000000C
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a1)            ## 00000000
    lw      t7, 0x0010(a0)             ## 00000010
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a1)           ## 00000004
    lw      t8, 0x0014(a0)             ## 00000014
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a1)           ## 00000008
    jr      $ra                        
    nop


func_809CA7B0:
    lw      t6, 0x0018(a0)             ## 00000018
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a1)            ## 00000000
    lw      t7, 0x001C(a0)             ## 0000001C
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a1)           ## 00000004
    lw      t8, 0x0020(a0)             ## 00000020
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a1)           ## 00000008
    jr      $ra                        
    nop


func_809CA7F4:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lui     t7, %hi(var_809CAC2C)      ## t7 = 809D0000
    addiu   t7, t7, %lo(var_809CAC2C)  ## t7 = 809CAC2C
    lw      t9, 0x0000(t7)             ## 809CAC2C
    addiu   t6, $sp, 0x0028            ## t6 = FFFFFFD8
    lw      t8, 0x0004(t7)             ## 809CAC30
    sw      t9, 0x0000(t6)             ## FFFFFFD8
    lw      t9, 0x0008(t7)             ## 809CAC34
    sw      t8, 0x0004(t6)             ## FFFFFFDC
    addiu   t1, $zero, 0x0002          ## t1 = 00000002
    sw      t9, 0x0008(t6)             ## FFFFFFE0
    lbu     t0, 0x1D6C(a3)             ## 00001D6C
    bnel    t0, $zero, lbl_809CA848    
    lhu     t2, 0x1D74(a3)             ## 00001D74
    sb      t1, 0x018C(a2)             ## 0000018C
    beq     $zero, $zero, lbl_809CA994 
    sb      $zero, 0x018B(a2)          ## 0000018B
    lhu     t2, 0x1D74(a3)             ## 00001D74
lbl_809CA848:
    addiu   $at, $zero, 0x015F         ## $at = 0000015F
    or      a0, a2, $zero              ## a0 = 00000000
    bne     t2, $at, lbl_809CA86C      
    addiu   a1, $zero, 0x28BF          ## a1 = 000028BF
    sw      a2, 0x0050($sp)            
    jal     func_80022FD0              
    sw      a3, 0x0054($sp)            
    lw      a2, 0x0050($sp)            
    lw      a3, 0x0054($sp)            
lbl_809CA86C:
    lw      a0, 0x1D90(a3)             ## 00001D90
    addiu   a1, $sp, 0x0040            ## a1 = FFFFFFF0
    beql    a0, $zero, lbl_809CA998    
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x004C($sp)            
    sw      a2, 0x0050($sp)            
    jal     func_809CA76C              
    sw      a3, 0x0054($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_809CA7B0              
    addiu   a1, $sp, 0x0034            ## a1 = FFFFFFE4
    lw      a2, 0x0050($sp)            
    lw      a0, 0x004C($sp)            
    lw      a3, 0x0054($sp)            
    lbu     t3, 0x018C(a2)             ## 0000018C
    addiu   t4, $sp, 0x0040            ## t4 = FFFFFFF0
    bnel    t3, $zero, lbl_809CA8D8    
    lhu     t8, 0x0006(a0)             ## 00000006
    lw      t6, 0x0000(t4)             ## FFFFFFF0
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t6, 0x0024(a2)             ## 00000024
    lw      t5, 0x0004(t4)             ## FFFFFFF4
    sw      t5, 0x0028(a2)             ## 00000028
    lw      t6, 0x0008(t4)             ## FFFFFFF8
    sb      t7, 0x018C(a2)             ## 0000018C
    sw      t6, 0x002C(a2)             ## 0000002C
    lhu     t8, 0x0006(a0)             ## 00000006
lbl_809CA8D8:
    addiu   t1, $sp, 0x0028            ## t1 = FFFFFFD8
    sh      t8, 0x00B4(a2)             ## 000000B4
    lhu     t9, 0x0008(a0)             ## 00000008
    sh      t9, 0x00B6(a2)             ## 000000B6
    lhu     t0, 0x000A(a0)             ## 0000000A
    sh      t0, 0x00B8(a2)             ## 000000B8
    lw      t3, 0x0000(t1)             ## FFFFFFD8
    sw      t3, 0x005C(a2)             ## 0000005C
    lw      t2, 0x0004(t1)             ## FFFFFFDC
    sw      t2, 0x0060(a2)             ## 00000060
    lw      t3, 0x0008(t1)             ## FFFFFFE0
    sw      t3, 0x0064(a2)             ## 00000064
    lhu     t4, 0x1D74(a3)             ## 00001D74
    lhu     v0, 0x0004(a0)             ## 00000004
    slt     $at, v0, t4                
    bnel    $at, $zero, lbl_809CA998   
    lw      $ra, 0x0014($sp)           
    lhu     t5, 0x0002(a0)             ## 00000002
    lwc1    $f6, 0x0034($sp)           
    lwc1    $f8, 0x0040($sp)           
    subu    t6, v0, t5                 
    mtc1    t6, $f4                    ## $f4 = 0.00
    sub.s   $f10, $f6, $f8             
    lwc1    $f2, 0x006C(a2)            ## 0000006C
    lwc1    $f12, 0x0070(a2)           ## 00000070
    cvt.s.w $f0, $f4                   
    div.s   $f16, $f10, $f0            
    swc1    $f16, 0x005C(a2)           ## 0000005C
    lwc1    $f4, 0x0044($sp)           
    lwc1    $f18, 0x0038($sp)          
    sub.s   $f6, $f18, $f4             
    div.s   $f8, $f6, $f0              
    swc1    $f8, 0x0060(a2)            ## 00000060
    lwc1    $f10, 0x0060(a2)           ## 00000060
    add.s   $f16, $f10, $f2            
    swc1    $f16, 0x0060(a2)           ## 00000060
    lwc1    $f18, 0x0060(a2)           ## 00000060
    c.lt.s  $f18, $f12                 
    nop
    bc1fl   lbl_809CA984               
    lwc1    $f4, 0x003C($sp)           
    swc1    $f12, 0x0060(a2)           ## 00000060
    lwc1    $f4, 0x003C($sp)           
lbl_809CA984:
    lwc1    $f6, 0x0048($sp)           
    sub.s   $f8, $f4, $f6              
    div.s   $f10, $f8, $f0             
    swc1    $f10, 0x0064(a2)           ## 00000064
lbl_809CA994:
    lw      $ra, 0x0014($sp)           
lbl_809CA998:
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CA9A4:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    or      a1, a2, $zero              ## a1 = 0000013C
    sw      a2, 0x0024($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0024($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A28(t6)            ## 8011A5D8
    ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
    or      a1, s0, $zero              ## a1 = 00000000
    slt     $at, t6, $at               
    bne     $at, $zero, lbl_809CAA18   
    addiu   a2, $zero, 0x000F          ## a2 = 0000000F
    lbu     t7, 0x018B(s0)             ## 0000018B
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    bnel    t7, $zero, lbl_809CAA1C    
    lbu     t9, 0x018B(s0)             ## 0000018B
    sb      $zero, 0x018C(s0)          ## 0000018C
    sb      t8, 0x018B(s0)             ## 0000018B
lbl_809CAA18:
    lbu     t9, 0x018B(s0)             ## 0000018B
lbl_809CAA1C:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lw      a0, 0x0034($sp)            
    bne     t9, $at, lbl_809CAA6C      
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809CA7F4              
    lw      a1, 0x0034($sp)            
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x005C(s0)            ## 0000005C
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lwc1    $f16, 0x0060(s0)           ## 00000060
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0064(s0)            ## 00000064
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    add.s   $f18, $f10, $f16           
    swc1    $f8, 0x0024(s0)            ## 00000024
    add.s   $f8, $f4, $f6              
    swc1    $f18, 0x0028(s0)           ## 00000028
    beq     $zero, $zero, lbl_809CAA80 
    swc1    $f8, 0x002C(s0)            ## 0000002C
lbl_809CAA6C:
    jal     func_8002AB20              
    addiu   a3, s0, 0x0190             ## a3 = 00000190
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4220                 ## a1 = 42200000
lbl_809CAA80:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809CAA94:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0060($sp)            
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              ## s0 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s1)             ## 00000000
    lw      t0, 0x02C0(s0)             ## 000002C0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, t0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(s0)             ## 000002C0
    sw      t7, 0x0000(t0)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      t0, 0x0050($sp)            
    lw      t3, 0x0050($sp)            
    lui     t9, 0xDE00                 ## t9 = DE000000
    lui     t7, 0xDB06                 ## t7 = DB060000
    sw      v0, 0x0004(t3)             ## 00000004
    lw      t0, 0x02C0(s0)             ## 000002C0
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x30D0             ## t5 = 060030D0
    addiu   t8, t0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      t5, 0x0004(t0)             ## 00000004
    sw      t9, 0x0000(t0)             ## 00000000
    lw      t2, 0x009C(s1)             ## 0000009C
    lw      v1, 0x02D0(s0)             ## 000002D0
    ori     t7, t7, 0x0020             ## t7 = DB060020
    andi    a2, t2, 0x007F             ## a2 = 00000000
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      t6, 0x0024($sp)            
    sw      t7, 0x0028($sp)            
    sw      $zero, 0x0020($sp)         
    sw      a2, 0x001C($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0048($sp)            
    lw      t4, 0x0048($sp)            
    sw      v0, 0x0004(t4)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lui     t6, 0xDE00                 ## t6 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, 0x0600                 ## t7 = 06000000
    addiu   t7, t7, 0x32D8             ## t7 = 060032D8
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0004(v1)             ## 00000004
    sw      t6, 0x0000(v1)             ## 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    nop
    nop

.section .data

var_809CABE0: .word 0x00D30400, 0x00000009, 0x00CC0000, 0x00000194
.word func_809CA650
.word func_809CA75C
.word func_809CA9A4
.word func_809CAA94
var_809CAC00: .word \
0x00000000, 0x00003901, 0x02000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x003C0050, 0x00000000, 0x00000000
var_809CAC2C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata


