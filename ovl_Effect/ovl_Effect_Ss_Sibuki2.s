#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B32430:
    sw      a0, 0x0000($sp)            
    addiu   a0, $zero, 0x0064          ## a0 = 00000064
    sw      a1, 0x0004($sp)            
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    lw      t7, 0x0000(a3)             ## 00000000
    lui     t3, %hi(func_80B324E0)     ## t3 = 80B30000
    lui     t4, %hi(func_80B326C4)     ## t4 = 80B30000
    sw      t7, 0x0000(a2)             ## 00000000
    lw      t6, 0x0004(a3)             ## 00000004
    addiu   t2, $zero, 0x000A          ## t2 = 0000000A
    addiu   t3, t3, %lo(func_80B324E0) ## t3 = 80B324E0
    sw      t6, 0x0004(a2)             ## 00000004
    lw      t7, 0x0008(a3)             ## 00000008
    addiu   t4, t4, %lo(func_80B326C4) ## t4 = 80B326C4
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      t7, 0x0008(a2)             ## 00000008
    lw      t9, 0x000C(a3)             ## 0000000C
    sw      t9, 0x000C(a2)             ## 0000000C
    lw      t8, 0x0010(a3)             ## 00000010
    sw      t8, 0x0010(a2)             ## 00000010
    lw      t9, 0x0014(a3)             ## 00000014
    sw      t9, 0x0014(a2)             ## 00000014
    lw      t1, 0x0018(a3)             ## 00000018
    sw      t1, 0x0018(a2)             ## 00000018
    lw      t0, 0x001C(a3)             ## 0000001C
    sw      t0, 0x001C(a2)             ## 0000001C
    lw      t1, 0x0020(a3)             ## 00000020
    sh      t2, 0x005C(a2)             ## 0000005C
    sw      t3, 0x0028(a2)             ## 00000028
    sw      t4, 0x0024(a2)             ## 00000024
    sw      t1, 0x0020(a2)             ## 00000020
    lh      t5, 0x0024(a3)             ## 00000024
    sh      v1, 0x0040(a2)             ## 00000040
    sh      v1, 0x0042(a2)             ## 00000042
    sh      v1, 0x0044(a2)             ## 00000044
    sh      v1, 0x0046(a2)             ## 00000046
    sh      a0, 0x0048(a2)             ## 00000048
    sh      a0, 0x004A(a2)             ## 0000004A
    sh      a0, 0x004C(a2)             ## 0000004C
    sh      v1, 0x004E(a2)             ## 0000004E
    sh      $zero, 0x0050(a2)          ## 00000050
    sh      t5, 0x0052(a2)             ## 00000052
    jr      $ra                        
    nop


func_80B324E0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0052(s1)             ## 00000052
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f8                   ## $f8 = 100.00
    mtc1    t6, $f4                    ## $f4 = 0.00
    lw      s0, 0x0000(a0)             ## 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    swc1    $f10, 0x0030($sp)          
    lwc1    $f12, 0x0000(s1)           ## 00000000
    lwc1    $f14, 0x0004(s1)           ## 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             ## 00000008
    lwc1    $f12, 0x0030($sp)          
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0000(v0)             ## 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800AB900              
    sw      v0, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    sw      v0, 0x0004(v1)             ## 00000004
    jal     func_8007E298              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t2, 0xFA00                 ## t2 = FA000000
    lui     a3, 0x00FF                 ## a3 = 00FF0000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t2, 0x0000(v0)             ## 00000000
    lh      t6, 0x0040(s1)             ## 00000040
    lh      t3, 0x0046(s1)             ## 00000046
    lh      t9, 0x0042(s1)             ## 00000042
    sll     t7, t6, 24                 
    lh      t6, 0x0044(s1)             ## 00000044
    andi    t4, t3, 0x00FF             ## t4 = 00000000
    or      t8, t4, t7                 ## t8 = 00000000
    andi    t2, t9, 0x00FF             ## t2 = 00000008
    sll     t3, t2, 16                 
    andi    t4, t6, 0x00FF             ## t4 = 00000000
    sll     t7, t4,  8                 
    or      t5, t8, t3                 ## t5 = 00000000
    or      t9, t5, t7                 ## t9 = 00000000
    sw      t9, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xFB00                 ## t8 = FB000000
    lui     a1, 0x0402                 ## a1 = 04020000
    addiu   t2, v0, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0000(v0)             ## 00000000
    lh      t5, 0x0048(s1)             ## 00000048
    lh      t3, 0x004E(s1)             ## 0000004E
    lh      t2, 0x004A(s1)             ## 0000004A
    sll     t7, t5, 24                 
    lh      t5, 0x004C(s1)             ## 0000004C
    andi    t6, t3, 0x00FF             ## t6 = 00000000
    or      t9, t6, t7                 ## t9 = 00000000
    andi    t8, t2, 0x00FF             ## t8 = 00000008
    sll     t3, t8, 16                 
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    sll     t7, t6,  8                 
    or      t4, t9, t3                 ## t4 = 00000000
    or      t2, t4, t7                 ## t2 = 00000000
    sw      t2, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v0)             ## 00000000
    lh      t3, 0x0050(s1)             ## 00000050
    lui     v1, %hi(var_80B326F8)      ## v1 = 80B30000
    lui     t0, 0x8012                 ## t0 = 80120000
    sll     t5, t3,  2                 
    addu    v1, v1, t5                 
    lw      v1, %lo(var_80B326F8)(v1)  
    addiu   t0, t0, 0x0C38             ## t0 = 80120C38
    ori     a3, a3, 0xFFFF             ## a3 = 00FFFFFF
    sll     t4, v1,  4                 
    srl     t7, t4, 28                 
    sll     t2, t7,  2                 
    addu    t8, t0, t2                 
    lw      t9, 0x0000(t8)             ## 00000008
    and     t6, v1, a3                 
    lui     t1, 0x8000                 ## t1 = 80000000
    addu    t3, t6, t9                 
    addu    t5, t3, t1                 
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    addiu   a1, a1, 0xE760             ## a1 = 0401E760
    sll     t2, a1,  4                 
    srl     t8, t2, 28                 
    addiu   t4, v0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sll     t6, t8,  2                 
    lui     t7, 0xDE00                 ## t7 = DE000000
    addu    t9, t0, t6                 
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t3, 0x0000(t9)             ## DB060020
    and     t5, a1, a3                 
    addu    t4, t3, t5                 
    addu    t7, t4, t1                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B326C4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lh      v0, 0x0050(a2)             ## 00000050
    slti    $at, v0, 0x0008            
    beq     $at, $zero, lbl_80B326E0   
    addiu   t6, v0, 0x0001             ## t6 = 00000001
    sh      t6, 0x0050(a2)             ## 00000050
lbl_80B326E0:
    jr      $ra                        
    nop
    nop
    nop

.section .data

.word 0x00000012
.word func_80B32430
var_80B326F8: .word \
0x0401C760, 0x0401C760, 0x0401CB60, 0x0401CF60, \
0x0401D360, 0x0401D760, 0x0401DB60, 0x0401DF60, \
0x0401E360, 0x00000000

.section .rodata


