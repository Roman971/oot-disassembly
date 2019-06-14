#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B1EE60:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EE84:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x001C(a0)             ## 0000001C
    bltz    v0, lbl_80B1EEA4           
    slti    $at, v0, 0x0023            
    bnel    $at, $zero, lbl_80B1EEB8   
    sw      $zero, 0x0184(a0)          ## 00000184
lbl_80B1EEA4:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80B1EEC0 
    lw      $ra, 0x0014($sp)           
    sw      $zero, 0x0184(a0)          ## 00000184
lbl_80B1EEB8:
    sw      $zero, 0x0188(a0)          ## 00000188
    lw      $ra, 0x0014($sp)           
lbl_80B1EEC0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EECC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EEF0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    lui     $at, 0x41F0                ## $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   ## $f0 = 30.00
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a2, $f0                    
    addiu   t6, $zero, 0x0007          ## t6 = 00000007
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a3, 0x41C8                 ## a3 = 41C80000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EF38:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lbu     t6, 0x0171(a1)             ## 00000171
    addiu   a2, a1, 0x013C             ## a2 = 0000013C
    lui     a3, 0x3F80                 ## a3 = 3F800000
    ori     t7, t6, 0x0003             ## t7 = 00000003
    sb      t7, 0x0171(a1)             ## 00000171
    jal     func_8008B778              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EF78:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t6, 0x015C(a1)             ## 0000015C
    lw      t9, 0x015C(a1)             ## 0000015C
    lbu     t2, 0x0171(a1)             ## 00000171
    lwl     t8, 0x0000(t6)             ## 00000000
    lwr     t8, 0x0003(t6)             ## 00000003
    ori     t3, t2, 0x0003             ## t3 = 00000003
    addiu   a2, a1, 0x013C             ## a2 = 0000013C
    swl     t8, 0x017A(a1)             ## 0000017A
    swr     t8, 0x017D(a1)             ## 0000017D
    lhu     t8, 0x0004(t6)             ## 00000004
    lui     a3, 0x3F80                 ## a3 = 3F800000
    sh      t8, 0x017E(a1)             ## 0000017E
    lwl     t1, 0x0000(t9)             ## 00000000
    lwr     t1, 0x0003(t9)             ## 00000003
    swl     t1, 0x0174(a1)             ## 00000174
    swr     t1, 0x0177(a1)             ## 00000177
    lhu     t1, 0x0004(t9)             ## 00000004
    sb      t3, 0x0171(a1)             ## 00000171
    sh      t1, 0x0178(a1)             ## 00000178
    jal     func_8008B778              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1EFF0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lbu     t6, 0x0171(a1)             ## 00000171
    addiu   a2, a1, 0x013C             ## a2 = 0000013C
    lui     a3, 0x3F80                 ## a3 = 3F800000
    ori     t7, t6, 0x0003             ## t7 = 00000003
    sb      t7, 0x0171(a1)             ## 00000171
    jal     func_8008B778              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F030:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x0182(a2)             ## 00000182
    addiu   v1, a2, 0x0182             ## v1 = 00000182
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t6, $zero, lbl_80B1F058    
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    beq     $zero, $zero, lbl_80B1F068 
    addiu   v1, a2, 0x0182             ## v1 = 00000182
lbl_80B1F058:
    lh      t7, 0x0000(v1)             ## 00000182
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             ## 00000182
    lh      v0, 0x0000(v1)             ## 00000182
lbl_80B1F068:
    bne     v0, $zero, lbl_80B1F088    
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             ## 00000000
lbl_80B1F088:
    lh      t9, 0x0000(v1)             ## 00000000
    addiu   v0, a2, 0x0180             ## v0 = 00000180
    sh      t9, 0x0000(v0)             ## 00000180
    lh      t0, 0x0000(v0)             ## 00000180
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_80B1F0AC   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          ## 00000180
    lw      $ra, 0x0014($sp)           
lbl_80B1F0AC:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F0B8:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0180(a0)             ## 00000180
    jr      $ra                        
    nop


func_80B1F0D0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    lw      t6, 0x0030($sp)            
    lui     t0, 0x8012                 ## t0 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t7, t6,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, 0x0C38(t0)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t1, t6, $at                
    lw      a1, 0x0028($sp)            
    lui     $at, 0x8000                ## $at = 80000000
    addu    a2, t0, t1                 
    addu    a2, a2, $at                
    lw      a0, 0x002C($sp)            
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F148:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    sll     t6, a1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    lui     t9, 0x8012                 ## t9 = 80120000
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t0, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    a0, t9, t0                 
    addu    a0, a0, $at                
    jal     func_8008A194              
    sw      a0, 0x002C($sp)            
    lw      t1, 0x0048($sp)            
    lw      a0, 0x0038($sp)            
    lw      a1, 0x002C($sp)            
    bne     t1, $zero, lbl_80B1F1C0    
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $at, $f12                  ## $f12 = 1.00
    beq     $zero, $zero, lbl_80B1F1D4 
    cvt.s.w $f2, $f4                   
lbl_80B1F1C0:
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $zero, $f2                 ## $f2 = 0.00
    mtc1    $at, $f12                  ## $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_80B1F1D4:
    lbu     t2, 0x0043($sp)            
    lwc1    $f8, 0x0044($sp)           
    mfc1    a2, $f12                   
    mfc1    a3, $f0                    
    swc1    $f2, 0x0010($sp)           
    sw      t2, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F204:
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    lbu     t0, 0x0000(a1)             ## 00000000
    lbu     t4, 0x0001(a1)             ## 00000001
    lbu     t8, 0x0003(a1)             ## 00000003
    lbu     t9, 0x0002(a1)             ## 00000002
    sll     t1, t0, 24                 
    sll     t5, t4, 16                 
    or      t2, t8, t1                 ## t2 = 00000000
    or      t6, t2, t5                 ## t6 = 00000000
    sll     t0, t9,  8                 
    or      t8, t6, t0                 ## t8 = 00000000
    sw      t8, 0x0004(v1)             ## FFFFFFF4
    lui     t1, 0xDF00                 ## t1 = DF000000
    sw      t1, 0x0008(v1)             ## FFFFFFF8
    sw      $zero, 0x000C(v1)          ## FFFFFFFC
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80B1F25C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    sw      a2, 0x0038($sp)            
    lw      t6, 0x0034($sp)            
    lw      s0, 0x0000(t6)             ## 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8007E298              
    sw      a3, 0x003C($sp)            
    lw      t0, 0x0038($sp)            
    lw      t2, 0x0030($sp)            
    lw      a3, 0x003C($sp)            
    beq     t0, $zero, lbl_80B1F314    
    addiu   v1, t2, 0x013C             ## v1 = 0000013C
    lui     t1, 0x8000                 ## t1 = 80000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    sll     t9, t0,  4                 
    srl     t3, t9, 28                 
    lui     t8, 0xDB06                 ## t8 = DB060000
    lui     t5, 0x8012                 ## t5 = 80120000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s0)             ## 000002C0
    addiu   t5, t5, 0x0C38             ## t5 = 80120C38
    ori     t8, t8, 0x0020             ## t8 = DB060020
    sll     t4, t3,  2                 
    addu    a0, t4, t5                 
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t6, 0x0000(a0)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a1, t0, $at                
    addu    t7, t6, a1                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t3, 0xDB06                 ## t3 = DB060000
    ori     t3, t3, 0x0024             ## t3 = DB060024
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s0)             ## 000002C0
    sw      t3, 0x0000(v0)             ## 00000000
    lw      t4, 0x0000(a0)             ## 00000000
    addu    t5, t4, a1                 
    addu    t6, t5, t1                 
    sw      t6, 0x0004(v0)             ## 00000004
lbl_80B1F314:
    beq     a3, $zero, lbl_80B1F364    
    lui     t1, 0x8000                 ## t1 = 80000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    sll     t9, a3,  4                 
    srl     t3, t9, 28                 
    lui     t8, 0xDB06                 ## t8 = DB060000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s0)             ## 000002C0
    ori     t8, t8, 0x0024             ## t8 = DB060024
    sll     t4, t3,  2                 
    lui     t5, 0x8012                 ## t5 = 80120000
    addu    t5, t5, t4                 
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t5, 0x0C38(t5)             ## 80120C38
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t6, a3, $at                
    addu    t7, t5, t6                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             ## 00000004
lbl_80B1F364:
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t3, 0xFB00                 ## t3 = FB000000
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s0)             ## 000002C0
    sw      t4, 0x0004(v0)             ## 00000004
    sw      t3, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t6, 0xDB06                 ## t6 = DB060000
    lui     t7, 0x800F                 ## t7 = 800F0000
    addiu   t5, v0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(s0)             ## 000002C0
    addiu   t7, t7, 0x8520             ## t7 = 800E8520
    ori     t6, t6, 0x0030             ## t6 = DB060030
    sw      t6, 0x0000(v0)             ## 00000000
    sw      t7, 0x0004(v0)             ## 00000004
    lw      t8, 0x0040($sp)            
    lw      t9, 0x0044($sp)            
    lw      a1, 0x0004(v1)             ## 00000140
    lw      a2, 0x0020(v1)             ## 0000015C
    lbu     a3, 0x0002(v1)             ## 0000013E
    sw      t2, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    lw      t3, 0x02C0(s0)             ## 000002C0
    lw      a0, 0x0034($sp)            
    jal     func_8008A88C              
    sw      t3, 0x001C($sp)            
    sw      v0, 0x02C0(s0)             ## 000002C0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F3EC:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a0, 0x0060($sp)            
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lw      s0, 0x0000(t6)             ## 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    sw      a2, 0x0068($sp)            
    jal     func_8007E298              
    sw      a3, 0x006C($sp)            
    lw      a2, 0x0068($sp)            
    lui     t8, 0xDB06                 ## t8 = DB060000
    lw      a3, 0x006C($sp)            
    beq     a2, $zero, lbl_80B1F470    
    ori     t8, t8, 0x0028             ## t8 = DB060028
    lw      v0, 0x02C0(s0)             ## 000002C0
    sll     t9, a2,  4                 
    srl     t3, t9, 28                 
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s0)             ## 000002C0
    sll     t4, t3,  2                 
    lui     t5, 0x8012                 ## t5 = 80120000
    addu    t5, t5, t4                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t5, 0x0C38(t5)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t6, a2, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t7, t5, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v0)             ## 00000004
lbl_80B1F470:
    beq     a3, $zero, lbl_80B1F4C0    
    lui     t3, 0xDB06                 ## t3 = DB060000
    lw      v0, 0x02C0(s0)             ## 000002C0
    sll     t4, a3,  4                 
    srl     t5, t4, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s0)             ## 000002C0
    sll     t6, t5,  2                 
    ori     t3, t3, 0x002C             ## t3 = DB06002C
    lui     t7, 0x8012                 ## t7 = 80120000
    addu    t7, t7, t6                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t3, 0x0000(v0)             ## 00000000
    lw      t7, 0x0C38(t7)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t8, a3, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t9, t7, t8                 
    addu    t3, t9, $at                
    sw      t3, 0x0004(v0)             ## 00000004
lbl_80B1F4C0:
    lw      a1, 0x0070($sp)            
    lui     t5, 0xDB06                 ## t5 = DB060000
    beql    a1, $zero, lbl_80B1F544    
    lw      t9, 0x0074($sp)            
    lw      v0, 0x02C0(s0)             ## 000002C0
    ori     t5, t5, 0x0020             ## t5 = DB060020
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t4, v0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02C0(s0)             ## 000002C0
    sw      t5, 0x0000(v0)             ## 00000000
    jal     func_80B1F204              
    sw      v0, 0x0040($sp)            
    sw      v0, 0x0030($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F204              
    lw      a1, 0x0070($sp)            
    lw      t7, 0x0030($sp)            
    lui     t4, 0x8012                 ## t4 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t8, t7,  4                 
    srl     t9, t8, 28                 
    sll     t3, t9,  2                 
    addu    t4, t4, t3                 
    lw      t4, 0x0C38(t4)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t6, v0, $at                
    lw      t8, 0x0040($sp)            
    lui     $at, 0x8000                ## $at = 80000000
    addu    t5, t6, t4                 
    addu    t7, t5, $at                
    sw      t7, 0x0004(t8)             ## 00000004
    lw      a1, 0x0070($sp)            
    lw      t9, 0x0074($sp)            
lbl_80B1F544:
    lui     t6, 0xDB06                 ## t6 = DB060000
    beql    t9, $zero, lbl_80B1F5C0    
    lw      t2, 0x0060($sp)            
    lw      v0, 0x02C0(s0)             ## 000002C0
    ori     t6, t6, 0x0024             ## t6 = DB060024
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s0)             ## 000002C0
    sw      t6, 0x0000(v0)             ## 00000000
    jal     func_80B1F204              
    sw      v0, 0x003C($sp)            
    sw      v0, 0x0030($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F204              
    lw      a1, 0x0070($sp)            
    lw      t5, 0x0030($sp)            
    lui     t3, 0x8012                 ## t3 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t7, t5,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t3, t3, t9                 
    lw      t3, 0x0C38(t3)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t4, v0, $at                
    lw      t7, 0x003C($sp)            
    lui     $at, 0x8000                ## $at = 80000000
    addu    t6, t4, t3                 
    addu    t5, t6, $at                
    sw      t5, 0x0004(t7)             ## 00000004
    lw      t2, 0x0060($sp)            
lbl_80B1F5C0:
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      t4, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t6, 0xDB06                 ## t6 = DB060000
    lui     t5, 0x800F                 ## t5 = 800F0000
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s0)             ## 000002C0
    addiu   t5, t5, 0x8520             ## t5 = 800E8520
    ori     t6, t6, 0x0030             ## t6 = DB060030
    sw      t6, 0x0000(v0)             ## 00000000
    sw      t5, 0x0004(v0)             ## 00000004
    addiu   v1, t2, 0x013C             ## v1 = 0000013C
    lw      t7, 0x0078($sp)            
    lw      t8, 0x007C($sp)            
    lw      a1, 0x0004(v1)             ## 00000140
    lw      a2, 0x0020(v1)             ## 0000015C
    lbu     a3, 0x0002(v1)             ## 0000013E
    sw      t2, 0x0018($sp)            
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lw      t9, 0x02C0(s0)             ## 000002C0
    lw      a0, 0x0064($sp)            
    jal     func_8008A88C              
    sw      t9, 0x001C($sp)            
    sw      v0, 0x02C0(s0)             ## 000002C0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F64C:
    lw      v0, 0x0190(a0)             ## 00000190
    lw      v1, 0x0000(a1)             ## 00000000
    lw      a3, 0x02C0(v1)             ## 000002C0
    sll     t8, v0,  4                 
    addu    t8, t8, v0                 
    sll     t8, t8,  2                 
    lui     t7, 0xDB06                 ## t7 = DB060000
    addiu   t6, a3, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    ori     t7, t7, 0x0018             ## t7 = DB060018
    addu    t0, a1, t8                 
    lui     $at, 0x0001                ## $at = 00010000
    addu    t0, t0, $at                
    sw      t7, 0x0000(a3)             ## 00000000
    lw      t9, 0x17B4(t0)             ## 000017B4
    sw      t9, 0x0004(a3)             ## 00000004
    lw      t1, 0x17B4(t0)             ## 000017B4
    lui     $at, 0x8000                ## $at = 80000000
    addu    t2, t1, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t2, 0x0C50($at)            ## 80120C50
    jr      $ra                        
    nop


func_80B1F6A8:
    lw      v0, 0x0194(a0)             ## 00000194
    lui     t8, 0x0001                 ## t8 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t6, v0,  4                 
    addu    t6, t6, v0                 
    sll     t6, t6,  2                 
    addu    t7, a1, t6                 
    addu    t8, t8, t7                 
    lw      t8, 0x17B4(t8)             ## 000117B4
    addu    t9, t8, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t9, 0x0C50($at)            ## 80120C50
    jr      $ra                        
    nop


func_80B1F6E0:
    lbu     t6, 0x1D6C(a0)             ## 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_80B1F700    
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             ## 00001D8C
lbl_80B1F6FC:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B1F700:
    jr      $ra                        
    nop


func_80B1F708:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              ## a1 = 00000000
    jal     func_80B1F6E0              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80B1F778    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x000C(v0)             ## 0000000C
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            ## 00000024
    lw      t7, 0x0010(v0)             ## 00000010
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           ## 00000028
    lw      t8, 0x0014(v0)             ## 00000014
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           ## 0000002C
    lh      v1, 0x0008(v0)             ## 00000008
    sh      v1, 0x00B6(a3)             ## 000000B6
    sh      v1, 0x0032(a3)             ## 00000032
lbl_80B1F778:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F788:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0x3B88             ## a2 = 06013B88
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x48F4             ## a1 = 060048F4
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EFF0              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F828:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F868:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x4350             ## a3 = 06004350
    addiu   a2, a2, 0x4390             ## a2 = 06004390
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F89C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0xB7B8             ## a2 = 0600B7B8
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xBD38             ## a1 = 0600BD38
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EFF0              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F93C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F97C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x7AC0             ## a3 = 06007AC0
    addiu   a2, a2, 0x76C0             ## a2 = 060076C0
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1F9B0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x6C90             ## a2 = 06006C90
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x196C             ## a1 = 0600196C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FA50:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FA90:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x6920             ## a3 = 06006920
    addiu   a2, a2, 0x5F20             ## a2 = 06005F20
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FAC4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5670             ## a1 = 06005670
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0004          ## v0 = 00000004
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FB64:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x513C             ## a1 = 0600513C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x000C          ## t6 = 0000000C
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FC08:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FC48:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80B1FC08              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FC68:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    lui     t6, %hi(var_80B21D90)      ## t6 = 80B20000
    lui     t7, %hi(var_80B21D94)      ## t7 = 80B20000
    addiu   t7, t7, %lo(var_80B21D94)  ## t7 = 80B21D94
    addiu   t6, t6, %lo(var_80B21D90)  ## t6 = 80B21D90
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0018($sp)         
    jal     func_80B1F3EC              
    sw      $zero, 0x001C($sp)         
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FCAC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5670             ## a1 = 06005670
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0005          ## v0 = 00000005
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FD4C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x513C             ## a1 = 0600513C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x000D          ## t6 = 0000000D
    addiu   t7, $zero, 0x0005          ## t7 = 00000005
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FDF0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FE38:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80B1FDF0              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FE58:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21D98)      ## a2 = 80B20000
    lui     t7, %hi(var_80B21DA4)      ## t7 = 80B20000
    lui     t8, %hi(var_80B21DA8)      ## t8 = 80B20000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    addiu   t8, t8, %lo(var_80B21DA8)  ## t8 = 80B21DA8
    addiu   t7, t7, %lo(var_80B21DA4)  ## t7 = 80B21DA4
    lw      a2, %lo(var_80B21D98)(a2)  
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80B1F3EC              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FEAC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5EA8             ## a1 = 06005EA8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0006          ## v0 = 00000006
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FF4C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FF94:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DAC)      ## a2 = 80B20000
    lui     t7, %hi(var_80B21DB8)      ## t7 = 80B20000
    lui     t8, %hi(var_80B21DBC)      ## t8 = 80B20000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    addiu   t8, t8, %lo(var_80B21DBC)  ## t8 = 80B21DBC
    addiu   t7, t7, %lo(var_80B21DB8)  ## t7 = 80B21DB8
    lw      a2, %lo(var_80B21DAC)(a2)  
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80B1F3EC              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B1FFE8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5EA8             ## a1 = 06005EA8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0007          ## v0 = 00000007
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20088:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B200D0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DC0)      ## a2 = 80B20000
    lui     t7, %hi(var_80B21DCC)      ## t7 = 80B20000
    lui     t8, %hi(var_80B21DD0)      ## t8 = 80B20000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    addiu   t8, t8, %lo(var_80B21DD0)  ## t8 = 80B21DD0
    addiu   t7, t7, %lo(var_80B21DCC)  ## t7 = 80B21DCC
    lw      a2, %lo(var_80B21DC0)(a2)  
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80B1F3EC              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20124:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5EA8             ## a1 = 06005EA8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0008          ## v0 = 00000008
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B201C4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2020C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DD4)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21DD4)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20248:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5EA8             ## a1 = 06005EA8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x0009          ## v0 = 00000009
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B202E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20328:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x04C8             ## a2 = 060004C8
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20358:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x7150             ## a2 = 06007150
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x164C             ## a1 = 0600164C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x000A          ## v0 = 0000000A
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B203F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20438:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20464:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x7958             ## a2 = 06007958
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x164C             ## a1 = 0600164C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   v0, $zero, 0x000B          ## v0 = 0000000B
    sw      v0, 0x0184(s0)             ## 00000184
    sw      v0, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20504:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20544:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a1, $at, lbl_80B20640      
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v1, 0x0018($sp)            
    lw      a0, 0x0000(v1)             ## 00000000
    lui     t7, 0xE700                 ## t7 = E7000000
    lui     t0, 0xFB00                 ## t0 = FB000000
    addiu   t6, a0, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(v1)             ## 00000000
    sw      $zero, 0x0004(a0)          ## 00000004
    sw      t7, 0x0000(a0)             ## 00000000
    lw      t8, 0x0014($sp)            
    lh      a1, 0x001C(t8)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     a1, $at, lbl_80B205B8      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     a1, $at, lbl_80B205DC      
    lui     t3, 0xFB00                 ## t3 = FB000000
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     a1, $at, lbl_80B20600      
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    beq     a1, $at, lbl_80B20624      
    lui     t9, 0xFB00                 ## t9 = FB000000
    beq     $zero, $zero, lbl_80B20640 
    nop
lbl_80B205B8:
    lw      a0, 0x0000(v1)             ## 00000000
    lui     t1, 0xAA0A                 ## t1 = AA0A0000
    ori     t1, t1, 0x46FF             ## t1 = AA0A46FF
    addiu   t9, a0, 0x0008             ## t9 = 00000008
    sw      t9, 0x0000(v1)             ## 00000000
    sw      t1, 0x0004(a0)             ## 00000004
    sw      t0, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80B20640 
    nop
lbl_80B205DC:
    lw      a0, 0x0000(v1)             ## 00000000
    lui     t4, 0xAAC8                 ## t4 = AAC80000
    ori     t4, t4, 0xFFFF             ## t4 = AAC8FFFF
    addiu   t2, a0, 0x0008             ## t2 = 00000008
    sw      t2, 0x0000(v1)             ## 00000000
    sw      t4, 0x0004(a0)             ## 00000004
    sw      t3, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80B20640 
    nop
lbl_80B20600:
    lw      a0, 0x0000(v1)             ## 00000000
    lui     t7, 0x00E6                 ## t7 = 00E60000
    ori     t7, t7, 0x46FF             ## t7 = 00E646FF
    addiu   t5, a0, 0x0008             ## t5 = 00000008
    sw      t5, 0x0000(v1)             ## 00000000
    sw      t7, 0x0004(a0)             ## 00000004
    sw      t6, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80B20640 
    nop
lbl_80B20624:
    lw      a0, 0x0000(v1)             ## 00000000
    lui     t0, 0xC800                 ## t0 = C8000000
    ori     t0, t0, 0x96FF             ## t0 = C80096FF
    addiu   t8, a0, 0x0008             ## t8 = 00000008
    sw      t8, 0x0000(v1)             ## 00000000
    sw      t0, 0x0004(a0)             ## 00000004
    sw      t9, 0x0000(a0)             ## 00000000
lbl_80B20640:
    jr      $ra                        
    nop


func_80B20648:
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     v0, $at, lbl_80B20678      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     v0, $at, lbl_80B20684      
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     v0, $at, lbl_80B20690      
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    beq     v0, $at, lbl_80B2069C      
    nop
    beq     $zero, $zero, lbl_80B206A8 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B20678:
    lui     v0, 0x0600                 ## v0 = 06000000
    jr      $ra                        
    addiu   v0, v0, 0x5BD0             ## v0 = 06005BD0
lbl_80B20684:
    lui     v0, 0x0600                 ## v0 = 06000000
    jr      $ra                        
    addiu   v0, v0, 0x5AC0             ## v0 = 06005AC0
lbl_80B20690:
    lui     v0, 0x0600                 ## v0 = 06000000
    jr      $ra                        
    addiu   v0, v0, 0x5990             ## v0 = 06005990
lbl_80B2069C:
    lui     v0, 0x0600                 ## v0 = 06000000
    jr      $ra                        
    addiu   v0, v0, 0x5880             ## v0 = 06005880
lbl_80B206A8:
    jr      $ra                        
    nop


func_80B206B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bnel    a1, $at, lbl_80B20728      
    lw      $ra, 0x0014($sp)           
    jal     func_80B20648              
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0000(a1)             ## 00000000
    sll     t8, v0,  4                 
    srl     t9, t8, 28                 
    addiu   t6, a0, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(a1)             ## 00000000
    sll     t0, t9,  2                 
    lui     t7, 0xDE00                 ## t7 = DE000000
    lui     t1, 0x8012                 ## t1 = 80120000
    addu    t1, t1, t0                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t7, 0x0000(a0)             ## 00000000
    lw      t1, 0x0C38(t1)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t2, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(a0)             ## 00000004
    lw      $ra, 0x0014($sp)           
lbl_80B20728:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20734:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     t6, %hi(func_80B20544)     ## t6 = 80B20000
    lui     t7, %hi(func_80B206B0)     ## t7 = 80B20000
    addiu   t7, t7, %lo(func_80B206B0) ## t7 = 80B206B0
    addiu   t6, t6, %lo(func_80B20544) ## t6 = 80B20544
    sw      t6, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20770:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x0330             ## a2 = 06000330
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2254             ## a1 = 06002254
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x000E          ## t6 = 0000000E
    addiu   t7, $zero, 0x000C          ## t7 = 0000000C
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20814:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2085C:
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    beq     v0, $at, lbl_80B20884      
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    beq     v0, $at, lbl_80B20890      
    addiu   $at, $zero, 0x0012         ## $at = 00000012
    beq     v0, $at, lbl_80B2089C      
    nop
    beq     $zero, $zero, lbl_80B208A8 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B20884:
    lui     v0, 0x0601                 ## v0 = 06010000
    jr      $ra                        
    addiu   v0, v0, 0x9198             ## v0 = 06009198
lbl_80B20890:
    lui     v0, 0x0601                 ## v0 = 06010000
    jr      $ra                        
    addiu   v0, v0, 0x9430             ## v0 = 06009430
lbl_80B2089C:
    lui     v0, 0x0601                 ## v0 = 06010000
    jr      $ra                        
    addiu   v0, v0, 0x9690             ## v0 = 06009690
lbl_80B208A8:
    jr      $ra                        
    nop


func_80B208B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bnel    a1, $at, lbl_80B20928      
    lw      $ra, 0x0014($sp)           
    jal     func_80B2085C              
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0000(a1)             ## 00000000
    sll     t8, v0,  4                 
    srl     t9, t8, 28                 
    addiu   t6, a0, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(a1)             ## 00000000
    sll     t0, t9,  2                 
    lui     t7, 0xDE00                 ## t7 = DE000000
    lui     t1, 0x8012                 ## t1 = 80120000
    addu    t1, t1, t0                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t7, 0x0000(a0)             ## 00000000
    lw      t1, 0x0C38(t1)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t2, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(a0)             ## 00000004
    lw      $ra, 0x0014($sp)           
lbl_80B20928:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20934:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DE0)      ## a2 = 80B20000
    lui     t7, %hi(func_80B208B0)     ## t7 = 80B20000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    addiu   t7, t7, %lo(func_80B208B0) ## t7 = 80B208B0
    lw      a2, %lo(var_80B21DE0)(a2)  
    sw      t7, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20978:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0xBFA8             ## a2 = 0600BFA8
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xC918             ## a1 = 0600C918
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x000F          ## t6 = 0000000F
    addiu   t7, $zero, 0x000D          ## t7 = 0000000D
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20A1C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20A64:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DEC)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21DEC)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20AA0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0x86D0             ## a2 = 060086D0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6C40             ## a1 = 06006C40
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0010          ## t6 = 00000010
    addiu   t7, $zero, 0x000E          ## t7 = 0000000E
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0B8              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20B50:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4200                ## $at = 42000000
    lwc1    $f0, 0x0154(a0)            ## 00000154
    mtc1    $at, $f4                   ## $f4 = 32.00
    nop
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_80B20B88               
    nop
    jal     func_80B1F0B8              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    beq     $zero, $zero, lbl_80B20B94 
    lw      $ra, 0x0014($sp)           
lbl_80B20B88:
    jal     func_80B1F030              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B20B94:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20BA0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_80B1F6A8              
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6930             ## a1 = 06006930
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0011          ## t6 = 00000011
    sw      t6, 0x0184(t7)             ## 00000184
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B20BE8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_80B20C20    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6220             ## a1 = 06006220
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0012          ## t6 = 00000012
    sw      t6, 0x0184(t7)             ## 00000184
lbl_80B20C20:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20C30:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_80B1F6E0              
    or      a1, a2, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B20C84    
    lw      a0, 0x0020($sp)            
    lhu     a2, 0x0000(v0)             ## 00000000
    lw      v1, 0x018C(a0)             ## 0000018C
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beql    a2, v1, lbl_80B20C88       
    lw      $ra, 0x0014($sp)           
    bne     a2, $at, lbl_80B20C80      
    lw      a1, 0x0024($sp)            
    jal     func_80B20BA0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
lbl_80B20C80:
    sw      a2, 0x018C(a0)             ## 0000018C
lbl_80B20C84:
    lw      $ra, 0x0014($sp)           
lbl_80B20C88:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20C94:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80B1EECC              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF38              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80B1F708              
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EEF0              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80B20C30              
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20CFC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80B1EECC              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF38              
    lw      a1, 0x002C($sp)            
    jal     func_80B20B50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EEF0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B20BE8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20D5C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20DA4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21DF8)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21DF8)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20DE0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x7FB8             ## a2 = 06007FB8
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x95DC             ## a1 = 060095DC
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0013          ## t6 = 00000013
    addiu   t7, $zero, 0x000F          ## t7 = 0000000F
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0B8              
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20E90:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_80B1F6A8              
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x8D1C             ## a1 = 06008D1C
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0014          ## t6 = 00000014
    sw      t6, 0x0184(t7)             ## 00000184
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B20ED8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_80B20EFC    
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9234             ## a1 = 06009234
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
lbl_80B20EFC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20F0C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_80B1F6E0              
    or      a1, a2, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B20F60    
    lw      a0, 0x0020($sp)            
    lhu     a2, 0x0000(v0)             ## 00000000
    lw      v1, 0x018C(a0)             ## 0000018C
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beql    a2, v1, lbl_80B20F64       
    lw      $ra, 0x0014($sp)           
    bne     a2, $at, lbl_80B20F5C      
    lw      a1, 0x0024($sp)            
    jal     func_80B20E90              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
lbl_80B20F5C:
    sw      a2, 0x018C(a0)             ## 0000018C
lbl_80B20F60:
    lw      $ra, 0x0014($sp)           
lbl_80B20F64:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20F70:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80B1EECC              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF38              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80B1F708              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EEF0              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80B20F0C              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B20FD8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80B1EECC              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF38              
    lw      a1, 0x002C($sp)            
    jal     func_80B1F030              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EEF0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B20ED8              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21038:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E08)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E08)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21074:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x2530             ## a2 = 06002530
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0016         ## $at = 00000016
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_80B210D4      
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    beq     $zero, $zero, lbl_80B210F0 
    addiu   a1, a1, 0x9BB4             ## a1 = 06009BB4
lbl_80B210D4:
    addiu   $at, $zero, 0x0017         ## $at = 00000017
    bne     v0, $at, lbl_80B210EC      
    lui     a1, 0x0601                 ## a1 = 06010000
    lui     a1, 0x0601                 ## a1 = 06010000
    beq     $zero, $zero, lbl_80B210F0 
    addiu   a1, a1, 0xA07C             ## a1 = 0600A07C
lbl_80B210EC:
    addiu   a1, a1, 0xA474             ## a1 = 060044F0
lbl_80B210F0:
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EFF0              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0015          ## t6 = 00000015
    addiu   t7, $zero, 0x0010          ## t7 = 00000010
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21144:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21184:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B211B0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0CD8             ## a1 = 06000CD8
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0016          ## t6 = 00000016
    addiu   t7, $zero, 0x0011          ## t7 = 00000011
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21254:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2129C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E18)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E18)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B212D8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x4258             ## a2 = 06004258
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xAFE0             ## a1 = 0600AFE0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0017          ## t6 = 00000017
    addiu   t7, $zero, 0x0012          ## t7 = 00000012
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2137C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B213C4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E24)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E24)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21400:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x4658             ## a2 = 06004658
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xAFE0             ## a1 = 0600AFE0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0018          ## t6 = 00000018
    addiu   t7, $zero, 0x0013          ## t7 = 00000013
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B214A4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B214E4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x35D8             ## a2 = 060035D8
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21514:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0x85F8             ## a2 = 060085F8
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xAFE0             ## a1 = 0600AFE0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x0019          ## t6 = 00000019
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B215B8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21600:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bne     a1, $at, lbl_80B21678      
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4B70(t6)            ## 8011B490
    lw      v1, 0x0014($sp)            
    lui     t9, 0xDE00                 ## t9 = DE000000
    andi    t7, t6, 0x1000             ## t7 = 00000000
    bne     t7, $zero, lbl_80B21678    
    lui     a1, 0x0600                 ## a1 = 06000000
    lw      a0, 0x0000(v1)             ## 00000000
    addiu   a1, a1, 0x74C8             ## a1 = 060074C8
    sll     t0, a1,  4                 
    srl     t1, t0, 28                 
    addiu   t8, a0, 0x0008             ## t8 = 00000008
    sw      t8, 0x0000(v1)             ## 00000000
    sll     t2, t1,  2                 
    lui     t3, 0x8012                 ## t3 = 80120000
    addu    t3, t3, t2                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t9, 0x0000(a0)             ## 00000000
    lw      t3, 0x0C38(t3)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t4, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t5, t3, t4                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(a0)             ## 00000004
lbl_80B21678:
    jr      $ra                        
    nop


func_80B21680:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E30)      ## a2 = 80B20000
    lui     t7, %hi(func_80B21600)     ## t7 = 80B20000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    addiu   t7, t7, %lo(func_80B21600) ## t7 = 80B21600
    lw      a2, %lo(var_80B21E30)(a2)  
    sw      t7, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B216C4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   a2, a2, 0x4868             ## a2 = 06004868
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xAFE0             ## a1 = 0600AFE0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x001A          ## t6 = 0000001A
    addiu   t7, $zero, 0x0015          ## t7 = 00000015
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21768:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B217B0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E3C)      ## a2 = 80B20000
    sw      $zero, 0x0014($sp)         
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E3C)(a2)  
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F25C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B217EC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x003C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0xFEF0             ## a2 = 0600FEF0
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x003C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x003C($sp)            
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x001E         ## $at = 0000001E
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_80B21854      
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     $at, 0x3F80                ## $at = 3F800000
    lui     a1, 0x0600                 ## a1 = 06000000
    mtc1    $at, $f0                   ## $f0 = 1.00
    beq     $zero, $zero, lbl_80B2189C 
    addiu   a1, a1, 0x2FA0             ## a1 = 06002FA0
lbl_80B21854:
    addiu   $at, $zero, 0x001F         ## $at = 0000001F
    bne     v0, $at, lbl_80B21870      
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
    beq     $zero, $zero, lbl_80B2189C 
    addiu   a1, a1, 0x3A98             ## a1 = 06003A98
lbl_80B21870:
    addiu   $at, $zero, 0x0020         ## $at = 00000020
    bne     v0, $at, lbl_80B21890      
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     $at, 0x4170                ## $at = 41700000
    lui     a1, 0x0600                 ## a1 = 06000000
    mtc1    $at, $f0                   ## $f0 = 15.00
    beq     $zero, $zero, lbl_80B2189C 
    addiu   a1, a1, 0x2FA0             ## a1 = 06002FA0
lbl_80B21890:
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f0                   ## $f0 = 5.00
    addiu   a1, a1, 0x02B8             ## a1 = 06003258
lbl_80B2189C:
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_80B1F148              
    swc1    $f0, 0x0028($sp)           
    addiu   v0, s0, 0x0050             ## v0 = 00000050
    lwc1    $f0, 0x0028($sp)           
    lwc1    $f4, 0x0000(v0)            ## 00000050
    lwc1    $f8, 0x0004(v0)            ## 00000054
    lwc1    $f16, 0x0008(v0)           ## 00000058
    mul.s   $f6, $f4, $f0              
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f18, $f16, $f0            
    swc1    $f6, 0x0000(v0)            ## 00000050
    swc1    $f10, 0x0004(v0)           ## 00000054
    swc1    $f18, 0x0008(v0)           ## 00000058
    jal     func_80B1EFF0              
    lw      a1, 0x003C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x001B          ## t6 = 0000001B
    addiu   t7, $zero, 0x0016          ## t7 = 00000016
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21924:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2196C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E48)      ## a2 = 80B20000
    lui     a3, 0x0601                 ## a3 = 06010000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E48)(a2)  
    addiu   a3, a3, 0xDE80             ## a3 = 0600DE80
    sw      $zero, 0x0014($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B219AC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F64C              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   a2, a2, 0x8D90             ## a2 = 06008D90
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F0D0              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1F6A8              
    lw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9EE0             ## a1 = 06009EE0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_80B1F148              
    sw      $zero, 0x0010($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B1EF78              
    lw      a1, 0x002C($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    addiu   t6, $zero, 0x001C          ## t6 = 0000001C
    addiu   t7, $zero, 0x0017          ## t7 = 00000017
    sw      t6, 0x0184(s0)             ## 00000184
    sw      t7, 0x0188(s0)             ## 00000188
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21A50:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80B1EECC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EF38              
    lw      a1, 0x001C($sp)            
    jal     func_80B1F030              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B1EEF0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21A98:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x0180(a0)             ## 00000180
    lui     a2, %hi(var_80B21E54)      ## a2 = 80B20000
    lui     a3, 0x0600                 ## a3 = 06000000
    sll     t6, v0,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80B21E54)(a2)  
    addiu   a3, a3, 0x3770             ## a3 = 06003770
    sw      $zero, 0x0014($sp)         
    jal     func_80B1F25C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21AD8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             ## 0000001C
    lui     v1, %hi(var_80B21E60)      ## v1 = 80B20000
    sll     t6, v0,  2                 
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80B21E60)(v1)  
    bne     v1, $zero, lbl_80B21B0C    
    nop
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80B21B18 
    lw      $ra, 0x0014($sp)           
lbl_80B21B0C:
    jalr    $ra, v1                    
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B21B18:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21B24:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x003C($sp)            
    lh      v1, 0x001C(s1)             ## 0000001C
    lw      s0, 0x003C($sp)            
    lui     t6, %hi(var_80B21D48)      ## t6 = 80B20000
    sll     v0, v1,  1                 
    addu    t6, t6, v0                 
    lui     $at, 0x0001                ## $at = 00010000
    lh      t6, %lo(var_80B21D48)(t6)  
    lui     a1, %hi(var_80B21D00)      ## a1 = 80B20000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a1, a1, v0                 
    addu    s0, s0, $at                
    lh      a1, %lo(var_80B21D00)(a1)  
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80081628              ## ObjectIndex
    sh      t6, 0x0028($sp)            
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80081628              ## ObjectIndex
    lh      a1, 0x0028($sp)            
    bltz    v0, lbl_80B21B9C           
    sw      v0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    bgez    a1, lbl_80B21BAC           
    nop
lbl_80B21B9C:
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B21BE8 
    lw      $ra, 0x001C($sp)           
lbl_80B21BAC:
    jal     func_80081688              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80B21BE4    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80081688              
    lw      a1, 0x0020($sp)            
    beq     v0, $zero, lbl_80B21BE4    
    lw      t7, 0x0024($sp)            
    sw      t7, 0x0190(s1)             ## 00000190
    lw      t8, 0x0020($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    sw      t8, 0x0194(s1)             ## 00000194
    jal     func_80B21AD8              
    lw      a1, 0x003C($sp)            
lbl_80B21BE4:
    lw      $ra, 0x001C($sp)           
lbl_80B21BE8:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B21BF8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x0184(a0)             ## 00000184
    bltz    v0, lbl_80B21C60           
    slti    $at, v0, 0x001D            
    beq     $at, $zero, lbl_80B21C60   
    sll     t6, v0,  2                 
    lui     t7, %hi(var_80B21EEC)      ## t7 = 80B20000
    addiu   t7, t7, %lo(var_80B21EEC)  ## t7 = 80B21EEC
    addu    v1, t6, t7                 
    lw      a2, 0x0000(v1)             ## 00000000
    lui     t8, %hi(var_80B21EEC)      ## t8 = 80B20000
    addiu   t8, t8, %lo(var_80B21EEC)  ## t8 = 80B21EEC
    beql    a2, $zero, lbl_80B21C64    
    lw      $ra, 0x0014($sp)           
    beq     v1, t8, lbl_80B21C58       
    lw      a1, 0x002C($sp)            
    sw      v1, 0x001C($sp)            
    jal     func_80B1F6A8              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x001C($sp)            
    lw      a0, 0x0028($sp)            
    lw      a2, 0x0000(v1)             ## 00000000
lbl_80B21C58:
    jalr    $ra, a2                    
    lw      a1, 0x002C($sp)            
lbl_80B21C60:
    lw      $ra, 0x0014($sp)           
lbl_80B21C64:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B21C70:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B21C80:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x0188(a0)             ## 00000188
    bltz    v0, lbl_80B21CE8           
    slti    $at, v0, 0x0018            
    beq     $at, $zero, lbl_80B21CE8   
    sll     t6, v0,  2                 
    lui     t7, %hi(var_80B21F60)      ## t7 = 80B20000
    addiu   t7, t7, %lo(var_80B21F60)  ## t7 = 80B21F60
    addu    v1, t6, t7                 
    lw      a2, 0x0000(v1)             ## 00000000
    lui     t8, %hi(var_80B21F60)      ## t8 = 80B20000
    addiu   t8, t8, %lo(var_80B21F60)  ## t8 = 80B21F60
    beql    a2, $zero, lbl_80B21CEC    
    lw      $ra, 0x0014($sp)           
    beq     v1, t8, lbl_80B21CE0       
    lw      a1, 0x002C($sp)            
    sw      v1, 0x001C($sp)            
    jal     func_80B1F64C              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x001C($sp)            
    lw      a0, 0x0028($sp)            
    lw      a2, 0x0000(v1)             ## 00000000
lbl_80B21CE0:
    jalr    $ra, a2                    
    lw      a1, 0x002C($sp)            
lbl_80B21CE8:
    lw      $ra, 0x0014($sp)           
lbl_80B21CEC:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B21D00: .word \
0x00C00088, 0x013300FC, 0x00FD010C, 0x01070115, \
0x010D0121, 0x01220122, 0x01220122, 0x00FC00FD, \
0x01160116, 0x011600FE, 0x00FF00FB, 0x00130013, \
0x00130110, 0x0159013E, 0x015B0165, 0x00C900C9, \
0x00C900C9, 0x00D00000
var_80B21D48: .word \
0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, \
0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, \
0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, \
0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, \
0x015A0126, 0x00D00000
var_80B21D90: .word 0x008246FF
var_80B21D94: .word 0x6EAA14FF
var_80B21D98: .word 0x06000F4C, 0x06001A0C, 0x06001E0C
var_80B21DA4: .word 0x46BE3CFF
var_80B21DA8: .word 0x641E00FF
var_80B21DAC: .word 0x060005FC, 0x060009FC, 0x06000DFC
var_80B21DB8: .word 0x003264FF
var_80B21DBC: .word 0x0032A0FF
var_80B21DC0: .word 0x0600057C, 0x0600067C, 0x0600077C
var_80B21DCC: .word 0xFFFFFFFF
var_80B21DD0: .word 0xFFFFFFFF
var_80B21DD4: .word 0x060007C8, 0x06000FC8, 0x060017C8
var_80B21DE0: .word 0x06000708, 0x06000F08, 0x06001708
var_80B21DEC: .word 0x06003E40, 0x06004640, 0x06004E40
var_80B21DF8: .word 0x06001470, 0x06001870, 0x06001C70, 0x06002070
var_80B21E08: .word 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130
var_80B21E18: .word 0x060008C8, 0x060010C8, 0x060018C8
var_80B21E24: .word 0x060030D8, 0x060034D8, 0x060038D8
var_80B21E30: .word 0x06009250, 0x06009650, 0x06009A50
var_80B21E3C: .word 0x06003968, 0x06003D68, 0x06004168
var_80B21E48: .word 0x0600CE80, 0x0600D280, 0x0600D680
var_80B21E54: .word 0x06002570, 0x06002C70, 0x06003070
var_80B21E60: .word func_80B1F788
.word func_80B1F89C
.word func_80B1F9B0
.word func_80B1FAC4
.word func_80B1FCAC
.word func_80B1FEAC
.word func_80B1FFE8
.word func_80B20124
.word func_80B20248
.word func_80B20358
.word func_80B20464
.word func_80B20464
.word func_80B20464
.word func_80B20464
.word func_80B1FB64
.word func_80B1FD4C
.word func_80B20770
.word func_80B20770
.word func_80B20770
.word func_80B20978
.word func_80B20AA0
.word func_80B20DE0
.word func_80B21074
.word func_80B21074
.word func_80B21074
.word func_80B211B0
.word func_80B212D8
.word func_80B21400
.word func_80B21514
.word func_80B216C4
.word func_80B217EC
.word func_80B217EC
.word func_80B217EC
.word func_80B217EC
.word func_80B219AC
var_80B21EEC: .word func_80B21B24
.word func_80B1F828
.word func_80B1F93C
.word func_80B1FA50
.word func_80B1FC08
.word func_80B1FDF0
.word func_80B1FF4C
.word func_80B20088
.word func_80B201C4
.word func_80B202E8
.word func_80B203F8
.word func_80B20504
.word func_80B1FC48
.word func_80B1FE38
.word func_80B20814
.word func_80B20A1C
.word func_80B20C94
.word func_80B20CFC
.word func_80B20D5C
.word func_80B20F70
.word func_80B20FD8
.word func_80B21144
.word func_80B21254
.word func_80B2137C
.word func_80B214A4
.word func_80B215B8
.word func_80B21768
.word func_80B21924
.word func_80B21A50
var_80B21F60: .word func_80B21C70
.word func_80B1F868
.word func_80B1F97C
.word func_80B1FA90
.word func_80B1FC68
.word func_80B1FE58
.word func_80B1FF94
.word func_80B200D0
.word func_80B2020C
.word func_80B20328
.word func_80B20438
.word func_80B20734
.word func_80B20934
.word func_80B20A64
.word func_80B20DA4
.word func_80B21038
.word func_80B21184
.word func_80B2129C
.word func_80B213C4
.word func_80B214E4
.word func_80B21680
.word func_80B217B0
.word func_80B2196C
.word func_80B21A98
var_80B21FC0: .word 0x01820400, 0x00000010, 0x015A0000, 0x00000198
.word func_80B1EE84
.word func_80B1EE60
.word func_80B21BF8
.word func_80B21C80

.section .rodata


