#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AD8160:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a1, %hi(var_80AD865C)      ## a1 = 80AE0000
    sw      $zero, 0x001C($sp)         
    addiu   a1, a1, %lo(var_80AD865C)  ## a1 = 80AD865C
    jal     func_80063F7C              
    lw      a0, 0x0028($sp)            
    lw      a0, 0x0028($sp)            
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lui     a0, 0x0602                 ## a0 = 06020000
    addiu   a0, a0, 0x80F8             ## a0 = 060180F8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x001C            ## a1 = FFFFFFF4
    lw      a0, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    lw      a3, 0x001C($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lw      t6, 0x0028($sp)            
    sw      v0, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AD81C8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD81FC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x001C($sp)            
    lui     a2, 0x8012                 ## a2 = 80120000
    lui     a3, 0x00FF                 ## a3 = 00FF0000
    ori     a3, a3, 0xFFFF             ## a3 = 00FFFFFF
    addiu   a2, a2, 0x0C38             ## a2 = 80120C38
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s2, 0x0020($sp)            
    sw      s0, 0x0018($sp)            
    sw      a1, 0x003C($sp)            
    lui     t0, 0x8000                 ## t0 = 80000000
    lui     v0, 0x0602                 ## v0 = 06020000
    addiu   v0, v0, 0x80F8             ## v0 = 060180F8
    sll     t8, v0,  4                 
    srl     t9, t8, 28                 
    lw      t6, 0x003C($sp)            
    sll     t1, t9,  2                 
    addu    t2, a2, t1                 
    lw      t3, 0x0000(t2)             ## 00000000
    lw      t7, 0x1C44(t6)             ## 00001C44
    and     t4, v0, a3                 
    addu    t5, t3, t4                 
    addu    s2, t5, t0                 
    sw      t7, 0x002C($sp)            
    lw      v1, 0x0010(s2)             ## 00000010
    or      a0, s1, $zero              ## a0 = 00000000
    sll     t6, v1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, a2, t8                 
    lw      t1, 0x0000(t9)             ## 00000000
    and     t2, v1, a3                 
    addu    t3, t1, t2                 
    addu    t4, t3, t0                 
    jal     func_80035388              
    sw      t4, 0x0010(s2)             ## 00000010
    beq     v0, $zero, lbl_80AD82C8    
    lui     $at, 0x447A                ## $at = 447A0000
    lwc1    $f4, 0x0094(s1)            ## 00000094
    mtc1    $at, $f6                   ## $f6 = 1000.00
    lw      t5, 0x003C($sp)            
    addiu   a1, $zero, 0x000C          ## a1 = 0000000C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AD82CC               
    lw      t6, 0x003C($sp)            
    jal     func_800495BC              
    lw      a0, 0x0790(t5)             ## 00000790
    beq     $zero, $zero, lbl_80AD82D8 
    nop
lbl_80AD82C8:
    lw      t6, 0x003C($sp)            
lbl_80AD82CC:
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    jal     func_800495BC              
    lw      a0, 0x0790(t6)             ## 00000790
lbl_80AD82D8:
    jal     func_80035364              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AD8320    
    lw      t7, 0x002C($sp)            
    lh      t8, 0x0886(t7)             ## 00000886
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f8                   ## $f8 = 1000.00
    mtc1    t8, $f10                   ## $f10 = 0.00
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    or      a0, s1, $zero              ## a0 = 00000000
    cvt.s.w $f18, $f10                 
    addiu   a1, $zero, 0x3951          ## a1 = 00003951
    c.lt.s  $f8, $f18                  
    nop
    bc1fl   lbl_80AD8324               
    lh      t1, 0x001C(s1)             ## 0000001C
    jal     func_80022FD0              
    sh      t9, 0x001C(s1)             ## 0000001C
lbl_80AD8320:
    lh      t1, 0x001C(s1)             ## 0000001C
lbl_80AD8324:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lw      t2, 0x003C($sp)            
    bne     t1, $at, lbl_80AD8474      
    addiu   t3, $zero, 0x0050          ## t3 = 00000050
    lw      s0, 0x1C74(t2)             ## 00001C74
    addiu   t4, $zero, 0x001C          ## t4 = 0000001C
    sh      t3, 0x0156(s1)             ## 00000156
    sh      $zero, 0x001C(s1)          ## 0000001C
    sh      t4, 0x0154(s1)             ## 00000154
    jal     func_80035364              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AD83D4    
    nop
    lw      v0, 0x002C($sp)            
    lui     $at, 0x4416                ## $at = 44160000
    lw      t5, 0x066C(v0)             ## 0000066C
    andi    t6, t5, 0x6000             ## t6 = 00000000
    bne     t6, $zero, lbl_80AD83D4    
    nop
    mtc1    $at, $f16                  ## $f16 = 600.00
    lwc1    $f4, 0x0090(s1)            ## 00000090
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, 0x43AF                ## $at = 43AF0000
    sub.s   $f12, $f16, $f4            
    c.lt.s  $f6, $f12                  
    nop
    bc1f    lbl_80AD83D4               
    nop
    mtc1    $at, $f14                  ## $f14 = 350.00
    lui     $at, 0x4110                ## $at = 41100000
    mtc1    $at, $f10                  ## $f10 = 9.00
    c.lt.s  $f14, $f12                 
    nop
    bc1fl   lbl_80AD83B8               
    lhu     t7, 0x0088(v0)             ## 00000088
    mov.s   $f12, $f14                 
    lhu     t7, 0x0088(v0)             ## 00000088
lbl_80AD83B8:
    mul.s   $f8, $f10, $f12            
    lui     $at, %hi(var_80AD8660)     ## $at = 80AE0000
    andi    t8, t7, 0xFFFE             ## t8 = 00000000
    sh      t8, 0x0088(v0)             ## 00000088
    lwc1    $f18, %lo(var_80AD8660)($at) 
    mul.s   $f4, $f8, $f18             
    swc1    $f4, 0x0060(v0)            ## 00000060
lbl_80AD83D4:
    beql    s0, $zero, lbl_80AD8478    
    lh      t3, 0x0154(s1)             ## 00000154
    lh      t9, 0x0000(s0)             ## 00000000
lbl_80AD83E0:
    addiu   $at, $zero, 0x0015         ## $at = 00000015
    bnel    t9, $at, lbl_80AD846C      
    lw      s0, 0x0124(s0)             ## 00000124
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lwc1    $f10, 0x0028(s0)           ## 00000028
    or      a0, s1, $zero              ## a0 = 00000000
    c.eq.s  $f6, $f10                  
    nop
    bc1fl   lbl_80AD846C               
    lw      s0, 0x0124(s0)             ## 00000124
    jal     func_800214FC              
    or      a1, s0, $zero              ## a1 = 00000000
    lui     $at, 0x43AF                ## $at = 43AF0000
    mtc1    $at, $f14                  ## $f14 = 350.00
    lui     $at, 0x4416                ## $at = 44160000
    mtc1    $at, $f16                  ## $f16 = 600.00
    lui     $at, 0x4110                ## $at = 41100000
    c.lt.s  $f0, $f16                  
    sub.s   $f2, $f16, $f0             
    bc1f    lbl_80AD8468               
    mov.s   $f12, $f2                  
    c.lt.s  $f14, $f2                  
    mtc1    $at, $f8                   ## $f8 = 9.00
    bc1fl   lbl_80AD844C               
    lhu     t1, 0x0088(s0)             ## 00000088
    mov.s   $f12, $f14                 
    lhu     t1, 0x0088(s0)             ## 00000088
lbl_80AD844C:
    mul.s   $f18, $f8, $f12            
    lui     $at, %hi(var_80AD8664)     ## $at = 80AE0000
    andi    t2, t1, 0xFFFC             ## t2 = 00000000
    sh      t2, 0x0088(s0)             ## 00000088
    lwc1    $f4, %lo(var_80AD8664)($at) 
    mul.s   $f6, $f18, $f4             
    swc1    $f6, 0x0060(s0)            ## 00000060
lbl_80AD8468:
    lw      s0, 0x0124(s0)             ## 00000124
lbl_80AD846C:
    bnel    s0, $zero, lbl_80AD83E0    
    lh      t9, 0x0000(s0)             ## 00000000
lbl_80AD8474:
    lh      t3, 0x0154(s1)             ## 00000154
lbl_80AD8478:
    lui     $at, %hi(var_80AD8668)     ## $at = 80AE0000
    lwc1    $f18, %lo(var_80AD8668)($at) 
    mtc1    t3, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f8, $f10                  
    mul.s   $f12, $f8, $f18            
    jal     func_800CF470              
    nop
    lh      t4, 0x0156(s1)             ## 00000156
    addiu   a0, s1, 0x0156             ## a0 = 00000156
    or      a1, $zero, $zero           ## a1 = 00000000
    subu    t5, $zero, t4              
    mtc1    t5, $f4                    ## $f4 = 0.00
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f0, $f6             
    trunc.w.s $f8, $f10                  
    mfc1    t7, $f8                    
    jal     func_800637D4              
    sh      t7, 0x0158(s1)             ## 00000158
    lh      t8, 0x0158(s1)             ## 00000158
    lwc1    $f18, 0x000C(s1)           ## 0000000C
    lw      t1, 0x0010(s2)             ## 00000010
    mtc1    t8, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f18, $f6            
    trunc.w.s $f8, $f10                  
    mfc1    v1, $f8                    
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x0050(t1)             ## 00000050
    lw      t2, 0x0010(s2)             ## 00000010
    sh      v1, 0x0044(t2)             ## 00000044
    lw      t3, 0x0010(s2)             ## 00000010
    sh      v1, 0x0038(t3)             ## 00000038
    lw      t4, 0x0010(s2)             ## 00000010
    sh      v1, 0x002C(t4)             ## 0000002C
    lw      t5, 0x0010(s2)             ## 00000010
    sh      v1, 0x001A(t5)             ## 0000001A
    lw      t6, 0x0010(s2)             ## 00000010
    sh      v1, 0x0014(t6)             ## 00000014
    lw      t7, 0x0010(s2)             ## 00000010
    sh      v1, 0x000E(t7)             ## 0000000E
    lw      t8, 0x0010(s2)             ## 00000010
    sh      v1, 0x0002(t8)             ## 00000002
    lw      t9, 0x0010(s2)             ## 00000010
    sh      v1, 0x0008(t9)             ## 00000008
    lh      a0, 0x0154(s1)             ## 00000154
    beq     a0, $zero, lbl_80AD854C    
    addiu   t1, a0, 0xFFFF             ## t1 = FFFFFFFF
    sh      t1, 0x0154(s1)             ## 00000154
lbl_80AD854C:
    lw      a0, 0x003C($sp)            
    jal     func_800316C0              
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80AD8570:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              ## s0 = 00000000
    lw      t7, 0x0030($sp)            
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    lh      t8, 0x0158(t7)             ## 00000158
    lui     $at, %hi(var_80AD866C)     ## $at = 80AE0000
    lwc1    $f8, %lo(var_80AD866C)($at) 
    mtc1    t8, $f4                    ## $f4 = 0.00
    mfc1    a2, $f12                   
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f14, $f6, $f8             
    jal     func_800AA8FC              
    nop
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t0, 0xDA38                 ## t0 = DA380000
    ori     t0, t0, 0x0003             ## t0 = DA380003
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s0)             ## 000002C0
    sw      t0, 0x0000(v1)             ## 00000000
    lw      t1, 0x0034($sp)            
    lw      a0, 0x0000(t1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t3, 0xDE00                 ## t3 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t4, 0x0601                 ## t4 = 06010000
    addiu   t4, t4, 0x7E10             ## t4 = 06017E10
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02C0(s0)             ## 000002C0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t3, 0x0000(v1)             ## 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

.word 0x00000000, 0x00000000, 0x00000000
var_80AD863C: .word 0x01660100, 0x00000030, 0x00E20000, 0x0000015C
.word func_80AD8160
.word func_80AD81C8
.word func_80AD81FC
.word func_80AD8570
var_80AD865C: .word 0x48500064

.section .rodata

var_80AD8660: .word 0x3B3B3EE7
var_80AD8664: .word 0x3B3B3EE7
var_80AD8668: .word 0x3FC90FDB
var_80AD866C: .word 0xBB23D70A

