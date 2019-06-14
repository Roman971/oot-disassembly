#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A7A030:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, %hi(var_80A7BE44)      ## a1 = 80A80000
    addiu   a1, a1, %lo(var_80A7BE44)  ## a1 = 80A7BE44
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t6, %hi(var_80A7BE24)      ## t6 = 80A80000
    addiu   t6, t6, %lo(var_80A7BE24)  ## t6 = 80A7BE24
    addiu   t7, $zero, 0x0006          ## t7 = 00000006
    sw      t6, 0x0098(s0)             ## 00000098
    sb      t7, 0x00AF(s0)             ## 000000AF
    addiu   a1, s0, 0x0140             ## a1 = 00000140
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80A7BDA0)      ## a3 = 80A80000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A7BDA0)  ## a3 = 80A7BDA0
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x018C             ## a1 = 0000018C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80A7BDCC)      ## a3 = 80A80000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A7BDCC)  ## a3 = 80A7BDCC
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80A7BDF8)      ## a3 = 80A80000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A7BDF8)  ## a3 = 80A7BDF8
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004AC84              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a1, 0x3C03                 ## a1 = 3C030000
    ori     a1, a1, 0x126F             ## a1 = 3C03126F
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t8, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    mtc1    $zero, $f2                 ## $f2 = 0.00
    and     t9, t8, $at                
    lwc1    $f0, 0x0028(s0)            ## 00000028
    lh      t0, 0x001C(s0)             ## 0000001C
    lui     $at, 0x4307                ## $at = 43070000
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    mtc1    $at, $f8                   ## $f8 = 135.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    sb      v1, 0x00AE(s0)             ## 000000AE
    sw      t9, 0x0004(s0)             ## 00000004
    sh      $zero, 0x0232(s0)          ## 00000232
    sb      $zero, 0x0239(s0)          ## 00000239
    sb      v0, 0x0236(s0)             ## 00000236
    sb      $zero, 0x0237(s0)          ## 00000237
    sb      $zero, 0x0238(s0)          ## 00000238
    sb      v0, 0x0251(s0)             ## 00000251
    sb      $zero, 0x0252(s0)          ## 00000252
    swc1    $f2, 0x0068(s0)            ## 00000068
    swc1    $f2, 0x006C(s0)            ## 0000006C
    swc1    $f2, 0x0060(s0)            ## 00000060
    swc1    $f0, 0x0228(s0)            ## 00000228
    swc1    $f0, 0x023C(s0)            ## 0000023C
    swc1    $f4, 0x0224(s0)            ## 00000224
    swc1    $f6, 0x022C(s0)            ## 0000022C
    bgez    t0, lbl_80A7A184           
    swc1    $f8, 0x0240(s0)            ## 00000240
    sw      $zero, 0x0248(s0)          ## 00000248
    swc1    $f2, 0x0054(s0)            ## 00000054
    jal     func_80A7AA6C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A7A194 
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7A184:
    sw      v1, 0x0248(s0)             ## 00000248
    jal     func_80A7B114              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7A194:
    jal     func_80A7A200              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A7A1B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0140             ## a1 = 00000140
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x018C             ## a1 = 0000018C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x01D8             ## a1 = 000001D8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7A200:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x006C($sp)            
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f8                   ## $f8 = 20.00
    swc1    $f4, 0x005C($sp)           
    lwc1    $f6, 0x0028(s0)            ## 00000028
    lwc1    $f12, 0x005C($sp)          
    or      a3, $zero, $zero           ## a3 = 00000000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0060($sp)          
    lwc1    $f16, 0x002C(s0)           ## 0000002C
    lwc1    $f14, 0x0060($sp)          
    swc1    $f16, 0x0064($sp)          
    jal     func_800AA7F4              
    lw      a2, 0x0064($sp)            
    lh      a0, 0x00B4(s0)             ## 000000B4
    lh      a1, 0x00B6(s0)             ## 000000B6
    lh      a2, 0x00B8(s0)             ## 000000B8
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x435C                ## $at = 435C0000
    mtc1    $at, $f18                  ## $f18 = 220.00
    addiu   a1, s0, 0x0254             ## a1 = 00000254
    sw      a1, 0x0038($sp)            
    addiu   a0, $sp, 0x0044            ## a0 = FFFFFFDC
    swc1    $f0, 0x0048($sp)           
    swc1    $f0, 0x0044($sp)           
    jal     func_800AB958              
    swc1    $f18, 0x004C($sp)          
    lw      a0, 0x006C($sp)            
    addiu   t6, $sp, 0x003C            ## t6 = FFFFFFD4
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, $sp, 0x0040            ## t9 = FFFFFFD8
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0020($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFF4
    lw      a2, 0x0038($sp)            
    addiu   a3, $sp, 0x0050            ## a3 = FFFFFFE8
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800308B4              
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    beq     v0, $zero, lbl_80A7A2D8    
    lw      a0, 0x0038($sp)            
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
lbl_80A7A2D8:
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x0254(s0)            ## 00000254
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x005C($sp)           
    lwc1    $f16, 0x025C(s0)           ## 0000025C
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    lwc1    $f4, 0x005C($sp)           
    sub.s   $f18, $f10, $f16           
    mul.s   $f6, $f4, $f4              
    swc1    $f18, 0x0064($sp)          
    lwc1    $f8, 0x0064($sp)           
    mul.s   $f10, $f8, $f8             
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0260(s0)           ## 00000260
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80A7A320:
    lwc1    $f4, 0x0024(a0)            ## 00000024
    lwc1    $f6, 0x0000(a1)            ## 00000000
    lwc1    $f8, 0x002C(a0)            ## 0000002C
    lwc1    $f10, 0x0008(a1)           ## 00000008
    sub.s   $f0, $f4, $f6              
    lwc1    $f6, 0x0260(a0)            ## 00000260
    or      v0, $zero, $zero           ## v0 = 00000000
    sub.s   $f2, $f8, $f10             
    mul.s   $f16, $f0, $f0             
    nop
    mul.s   $f18, $f2, $f2             
    add.s   $f4, $f16, $f18            
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_80A7A368               
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A7A368:
    jr      $ra                        
    nop


func_80A7A370:
    addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s2, a2, $zero              ## s2 = 00000000
    or      s3, a3, $zero              ## s3 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s8, 0x0078($sp)            
    sw      s7, 0x0074($sp)            
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a0, 0x00B8($sp)            
    sw      a1, 0x00BC($sp)            
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    addiu   t6, $zero, 0x009B          ## t6 = 0000009B
    addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
    addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
    addiu   t2, $zero, 0x00C8          ## t2 = 000000C8
    swc1    $f0, 0x0098($sp)           
    swc1    $f0, 0x0090($sp)           
    sb      t6, 0x008C($sp)            
    sb      t7, 0x008D($sp)            
    sb      t8, 0x008E($sp)            
    sb      t9, 0x008F($sp)            
    sb      t0, 0x0088($sp)            
    sb      t1, 0x0089($sp)            
    sb      t2, 0x008A($sp)            
    or      s0, $zero, $zero           ## s0 = 00000000
    blez    s3, lbl_80A7A510           
    swc1    $f4, 0x0094($sp)           
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f30                  ## $f30 = 5.00
    lui     $at, %hi(var_80A7BE70)     ## $at = 80A80000
    lwc1    $f28, %lo(var_80A7BE70)($at) 
    lui     $at, %hi(var_80A7BE74)     ## $at = 80A80000
    lwc1    $f26, %lo(var_80A7BE74)($at) 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f22                  ## $f22 = 10.00
    lwc1    $f20, 0x00C8($sp)          
    addiu   s8, $sp, 0x0088            ## s8 = FFFFFFD0
    addiu   s7, $sp, 0x008C            ## s7 = FFFFFFD4
    addiu   s6, $sp, 0x0090            ## s6 = FFFFFFD8
    addiu   s5, $sp, 0x009C            ## s5 = FFFFFFE4
    addiu   s4, $sp, 0x00A8            ## s4 = FFFFFFF0
lbl_80A7A454:
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    add.s   $f24, $f0, $f28            
    jal     func_80026D90              
    mov.s   $f12, $f30                 
    trunc.w.s $f6, $f0                   
    mov.s   $f12, $f20                 
    mfc1    s1, $f6                    
    jal     func_80026D90              
    addiu   s1, s1, 0x000C             ## s1 = 0000000C
    lwc1    $f8, 0x0000(s2)            ## 00000000
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x00A8($sp)          
    lwc1    $f16, 0x0004(s2)           ## 00000004
    mov.s   $f12, $f20                 
    add.s   $f18, $f0, $f16            
    jal     func_80026D90              
    swc1    $f18, 0x00AC($sp)          
    lwc1    $f4, 0x0008(s2)            ## 00000008
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x00B0($sp)           
    swc1    $f0, 0x009C($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f22                 
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    mov.s   $f12, $f22                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x00A0($sp)          
    mfc1    a2, $f24                   
    swc1    $f0, 0x00A4($sp)           
    lw      a0, 0x00BC($sp)            
    or      a1, s4, $zero              ## a1 = FFFFFFF0
    or      a3, s5, $zero              ## a3 = FFFFFFE4
    sw      s6, 0x0010($sp)            
    sw      s7, 0x0014($sp)            
    sw      s8, 0x0018($sp)            
    jal     func_8001DDB8              
    sw      s1, 0x001C($sp)            
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    bne     s0, s3, lbl_80A7A454       
    nop
lbl_80A7A510:
    lw      a0, 0x00BC($sp)            
    jal     func_80051124              
    or      a1, s2, $zero              ## a1 = 00000000
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


func_80A7A564:
    sw      a0, 0x0000($sp)            
    jr      $ra                        
    nop


func_80A7A570:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x0230(s0)             ## 00000230
    lui     $at, 0x4220                ## $at = 42200000
    andi    t7, t6, 0x000F             ## t7 = 00000000
    bnel    t7, $zero, lbl_80A7A640    
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f12                  ## $f12 = 40.00
    jal     func_80026D90              
    nop
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f12                  ## $f12 = 40.00
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0044($sp)           
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f16                  ## $f16 = 30.00
    add.s   $f10, $f0, $f8             
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f12                  ## $f12 = 40.00
    add.s   $f18, $f10, $f16           
    jal     func_80026D90              
    swc1    $f18, 0x0048($sp)          
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lui     $at, %hi(var_80A7BE78)     ## $at = 80A80000
    add.s   $f6, $f0, $f4              
    lwc1    $f8, %lo(var_80A7BE78)($at) 
    lui     $at, 0x40F0                ## $at = 40F00000
    mtc1    $at, $f12                  ## $f12 = 7.50
    swc1    $f6, 0x004C($sp)           
    swc1    $f2, 0x0034($sp)           
    swc1    $f2, 0x002C($sp)           
    swc1    $f2, 0x0040($sp)           
    swc1    $f2, 0x003C($sp)           
    swc1    $f2, 0x0038($sp)           
    jal     func_80026D64              
    swc1    $f8, 0x0030($sp)           
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f10                  ## $f10 = 15.00
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFF4
    add.s   $f16, $f0, $f10            
    addiu   a2, $sp, 0x0038            ## a2 = FFFFFFE8
    addiu   a3, $sp, 0x002C            ## a3 = FFFFFFDC
    jal     func_80A7B6A4              
    swc1    $f16, 0x0010($sp)          
    lw      $ra, 0x0024($sp)           
lbl_80A7A640:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7A650:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x0230(s0)             ## 00000230
    lui     $at, 0x4220                ## $at = 42200000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    bnel    t7, $zero, lbl_80A7A704    
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f12                  ## $f12 = 40.00
    jal     func_80026D90              
    nop
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f12                  ## $f12 = 40.00
    add.s   $f6, $f0, $f4              
    swc1    $f6, 0x0044($sp)           
    lwc1    $f8, 0x023C(s0)            ## 0000023C
    jal     func_80026D90              
    swc1    $f8, 0x0048($sp)           
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lui     $at, %hi(var_80A7BE7C)     ## $at = 80A80000
    add.s   $f16, $f0, $f10            
    lwc1    $f18, %lo(var_80A7BE7C)($at) 
    lui     $at, 0x40F0                ## $at = 40F00000
    mtc1    $at, $f12                  ## $f12 = 7.50
    swc1    $f16, 0x004C($sp)          
    swc1    $f2, 0x0034($sp)           
    swc1    $f2, 0x002C($sp)           
    swc1    $f2, 0x0040($sp)           
    swc1    $f2, 0x003C($sp)           
    swc1    $f2, 0x0038($sp)           
    jal     func_80026D64              
    swc1    $f18, 0x0030($sp)          
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f4                   ## $f4 = 15.00
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFF4
    add.s   $f6, $f0, $f4              
    addiu   a2, $sp, 0x0038            ## a2 = FFFFFFE8
    addiu   a3, $sp, 0x002C            ## a3 = FFFFFFDC
    jal     func_80A7B6A4              
    swc1    $f6, 0x0010($sp)           
    lw      $ra, 0x0024($sp)           
lbl_80A7A704:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7A714:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lbu     t6, 0x0237(s0)             ## 00000237
    beql    t6, $zero, lbl_80A7A77C    
    lbu     t9, 0x0238(s0)             ## 00000238
    lhu     v0, 0x0088(s0)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0044($sp)            
    andi    t7, v0, 0x0008             ## t7 = 00000000
    bne     t7, $zero, lbl_80A7A760    
    lui     a2, 0x4270                 ## a2 = 42700000
    jal     func_80026850              
    lh      a3, 0x0032(s0)             ## 00000032
    bnel    v0, $zero, lbl_80A7A77C    
    lbu     t9, 0x0238(s0)             ## 00000238
    lhu     v0, 0x0088(s0)             ## 00000088
lbl_80A7A760:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    andi    t8, v0, 0xFFF7             ## t8 = 00000000
    sh      t8, 0x0088(s0)             ## 00000088
    sb      $zero, 0x0237(s0)          ## 00000237
    swc1    $f0, 0x0244(s0)            ## 00000244
    swc1    $f0, 0x0068(s0)            ## 00000068
    lbu     t9, 0x0238(s0)             ## 00000238
lbl_80A7A77C:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    beql    t9, $zero, lbl_80A7A96C    
    lw      $ra, 0x0024($sp)           
    lh      t0, 0x001C(s0)             ## 0000001C
    bgezl   t0, lbl_80A7A7D8           
    lbu     v0, 0x019D(s0)             ## 0000019D
    lbu     t1, 0x0150(s0)             ## 00000150
    addiu   t5, $zero, 0x000A          ## t5 = 0000000A
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t2, t1, 0x0002             ## t2 = 00000000
    beql    t2, $zero, lbl_80A7A7D8    
    lbu     v0, 0x019D(s0)             ## 0000019D
    lbu     t3, 0x0151(s0)             ## 00000151
    sb      $zero, 0x0237(s0)          ## 00000237
    swc1    $f0, 0x0244(s0)            ## 00000244
    andi    t4, t3, 0xFFFD             ## t4 = 00000000
    sb      t4, 0x0151(s0)             ## 00000151
    swc1    $f0, 0x0068(s0)            ## 00000068
    jal     func_80A7A9BC              
    sh      t5, 0x0234(s0)             ## 00000234
    beq     $zero, $zero, lbl_80A7A96C 
    lw      $ra, 0x0024($sp)           
    lbu     v0, 0x019D(s0)             ## 0000019D
lbl_80A7A7D8:
    andi    t6, v0, 0x0080             ## t6 = 00000000
    beql    t6, $zero, lbl_80A7A800    
    lbu     v0, 0x0151(s0)             ## 00000151
    lbu     t8, 0x0151(s0)             ## 00000151
    andi    t7, v0, 0xFF7F             ## t7 = 00000000
    sb      t7, 0x019D(s0)             ## 0000019D
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    beq     $zero, $zero, lbl_80A7A968 
    sb      t9, 0x0151(s0)             ## 00000151
    lbu     v0, 0x0151(s0)             ## 00000151
lbl_80A7A800:
    andi    t0, v0, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_80A7A96C    
    lw      $ra, 0x0024($sp)           
    lbu     v1, 0x00B1(s0)             ## 000000B1
    andi    t1, v0, 0xFFFD             ## t1 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v1, $at, lbl_80A7A910      
    sb      t1, 0x0151(s0)             ## 00000151
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bnel    v1, $at, lbl_80A7A96C      
    lw      $ra, 0x0024($sp)           
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t2, $zero, 0x0008          ## t2 = 00000008
    sw      t2, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          ## a3 = 00002000
    lbu     t3, 0x00AF(s0)             ## 000000AF
    addiu   a1, $zero, 0x39A5          ## a1 = 000039A5
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t3, $zero, lbl_80A7A8B0    
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    lwc1    $f4, 0x0024(s0)            ## 00000024
    mtc1    $zero, $f10                ## $f10 = 0.00
    or      a0, s0, $zero              ## a0 = 00000000
    swc1    $f4, 0x0034($sp)           
    lwc1    $f6, 0x0028(s0)            ## 00000028
    lw      a1, 0x0044($sp)            
    addiu   a2, $sp, 0x0034            ## a2 = FFFFFFF4
    swc1    $f6, 0x0038($sp)           
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    addiu   a3, $zero, 0x000A          ## a3 = 0000000A
    swc1    $f10, 0x0010($sp)          
    jal     func_80A7A370              
    swc1    $f8, 0x003C($sp)           
    lbu     t4, 0x0239(s0)             ## 00000239
    addiu   t5, t4, 0x0001             ## t5 = 00000001
    beq     $zero, $zero, lbl_80A7A968 
    sb      t5, 0x0239(s0)             ## 00000239
lbl_80A7A8B0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A6          ## a1 = 000039A6
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28CB          ## a1 = 000028CB
    lwc1    $f16, 0x0024(s0)           ## 00000024
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    swc1    $f16, 0x0034($sp)          
    lwc1    $f18, 0x0028(s0)           ## 00000028
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0044($sp)            
    swc1    $f18, 0x0038($sp)          
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    addiu   a2, $sp, 0x0034            ## a2 = FFFFFFF4
    addiu   a3, $zero, 0x001E          ## a3 = 0000001E
    swc1    $f6, 0x0010($sp)           
    jal     func_80A7A370              
    swc1    $f4, 0x003C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A7AF38              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_80A7A96C 
    lw      $ra, 0x0024($sp)           
lbl_80A7A910:
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    sw      t6, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          ## a3 = 00002000
    lbu     t7, 0x00AF(s0)             ## 000000AF
    addiu   a1, $zero, 0x39A6          ## a1 = 000039A6
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t7, $zero, lbl_80A7A960    
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A7B008              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A7A96C 
    lw      $ra, 0x0024($sp)           
lbl_80A7A960:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A5          ## a1 = 000039A5
lbl_80A7A968:
    lw      $ra, 0x0024($sp)           
lbl_80A7A96C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7A97C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    addiu   a2, $zero, 0x000A          ## a2 = 0000000A
    addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
    lh      a1, 0x008A(t6)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a0, t6, 0x00B6             ## a0 = 000000B6
    lw      v0, 0x0020($sp)            
    lh      t7, 0x00B6(v0)             ## 000000B6
    sh      t7, 0x0032(v0)             ## 00000032
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A7A9BC:
    lw      t7, 0x0004(a0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lui     t9, %hi(func_80A7A9EC)     ## t9 = 80A80000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    addiu   t9, t9, %lo(func_80A7A9EC) ## t9 = 80A7A9EC
    and     t8, t7, $at                
    sb      t6, 0x0250(a0)             ## 00000250
    sb      $zero, 0x0238(a0)          ## 00000238
    sw      t8, 0x0004(a0)             ## 00000004
    sw      t9, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80A7A9EC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x0248(s0)             ## 00000248
    addiu   a0, s0, 0x0054             ## a0 = 00000054
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    addiu   t7, t6, 0xFFF0             ## t7 = FFFFFFF0
    sltiu   $at, t7, 0x0100            
    bne     $at, $zero, lbl_80A7AA20   
    sw      t7, 0x0248(s0)             ## 00000248
    sw      $zero, 0x0248(s0)          ## 00000248
lbl_80A7AA20:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a3, 0x3A03                 ## a3 = 3A030000
    ori     a3, a3, 0x126F             ## a3 = 3A03126F
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    c.eq.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A7AA5C               
    lw      $ra, 0x0024($sp)           
    jal     func_80A7AA6C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A7AA5C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AA6C:
    lwc1    $f4, 0x0224(a0)            ## 00000224
    lwc1    $f6, 0x0228(a0)            ## 00000228
    lwc1    $f8, 0x022C(a0)            ## 0000022C
    lui     t7, %hi(func_80A7AAAC)     ## t7 = 80A80000
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    addiu   t7, t7, %lo(func_80A7AAAC) ## t7 = 80A7AAAC
    sb      $zero, 0x0250(a0)          ## 00000250
    sh      $zero, 0x024E(a0)          ## 0000024E
    sh      $zero, 0x024C(a0)          ## 0000024C
    sh      t6, 0x0234(a0)             ## 00000234
    sw      t7, 0x013C(a0)             ## 0000013C
    swc1    $f4, 0x0024(a0)            ## 00000024
    swc1    $f6, 0x0028(a0)            ## 00000028
    swc1    $f8, 0x002C(a0)            ## 0000002C
    jr      $ra                        
    nop


func_80A7AAAC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0234(a0)             ## 00000234
    lui     $at, 0x43C8                ## $at = 43C80000
    bnel    t6, $zero, lbl_80A7AAF0    
    lw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x0090(a0)            ## 00000090
    mtc1    $at, $f6                   ## $f6 = 400.00
    nop
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A7AAF0               
    lw      $ra, 0x0014($sp)           
    jal     func_80A7AAFC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A7AAF0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AAFC:
    lui     t9, %hi(func_80A7AB28)     ## t9 = 80A80000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    addiu   t8, $zero, 0x0FA0          ## t8 = 00000FA0
    addiu   t9, t9, %lo(func_80A7AB28) ## t9 = 80A7AB28
    sb      t6, 0x0250(a0)             ## 00000250
    sh      t7, 0x0234(a0)             ## 00000234
    sh      t8, 0x024E(a0)             ## 0000024E
    sw      t9, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80A7AB28:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x0234(s0)             ## 00000234
    lui     a1, 0x3C03                 ## a1 = 3C030000
    ori     a1, a1, 0x126F             ## a1 = 3C03126F
    bne     t6, $zero, lbl_80A7ABA4    
    addiu   a0, s0, 0x0054             ## a0 = 00000054
    lw      t7, 0x0248(s0)             ## 00000248
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3A03                 ## a3 = 3A030000
    addiu   t8, t7, 0x0008             ## t8 = 00000008
    sltiu   $at, t8, 0x0100            
    bne     $at, $zero, lbl_80A7AB74   
    sw      t8, 0x0248(s0)             ## 00000248
    addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
    sw      t0, 0x0248(s0)             ## 00000248
lbl_80A7AB74:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    ori     a3, a3, 0x126F             ## a3 = 3A03126F
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    c.eq.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A7ABA8               
    lw      $ra, 0x0024($sp)           
    jal     func_80A7ABB8              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7ABA4:
    lw      $ra, 0x0024($sp)           
lbl_80A7ABA8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7ABB8:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      t7, 0x0004(a0)             ## 00000004
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     t9, %hi(func_80A7ABFC)     ## t9 = 80A80000
    addiu   t6, $zero, 0x0028          ## t6 = 00000028
    addiu   t9, t9, %lo(func_80A7ABFC) ## t9 = 80A7ABFC
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sb      v0, 0x0250(a0)             ## 00000250
    sh      t6, 0x0234(a0)             ## 00000234
    sb      v0, 0x0236(a0)             ## 00000236
    sb      v0, 0x0238(a0)             ## 00000238
    sw      t8, 0x0004(a0)             ## 00000004
    sw      t9, 0x013C(a0)             ## 0000013C
    swc1    $f4, 0x006C(a0)            ## 0000006C
    jr      $ra                        
    nop


func_80A7ABFC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80A7A97C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t6, 0x0234(a0)             ## 00000234
    bnel    t6, $zero, lbl_80A7AC2C    
    lw      $ra, 0x0014($sp)           
    jal     func_80A7AC38              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A7AC2C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AC38:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f4                   ## $f4 = 4.00
    lui     t7, %hi(func_80A7AC6C)     ## t7 = 80A80000
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    addiu   t7, t7, %lo(func_80A7AC6C) ## t7 = 80A7AC6C
    sb      v0, 0x0250(a0)             ## 00000250
    sb      v0, 0x0237(a0)             ## 00000237
    sh      t6, 0x0234(a0)             ## 00000234
    sw      t7, 0x013C(a0)             ## 0000013C
    swc1    $f4, 0x0244(a0)            ## 00000244
    jr      $ra                        
    nop


func_80A7AC6C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0234(a0)             ## 00000234
    beq     t6, $zero, lbl_80A7AC90    
    nop
    lbu     t7, 0x0237(a0)             ## 00000237
    bnel    t7, $zero, lbl_80A7AC9C    
    lw      $ra, 0x0014($sp)           
lbl_80A7AC90:
    jal     func_80A7ACA8              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A7AC9C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7ACA8:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    lui     t8, %hi(func_80A7ACD8)     ## t8 = 80A80000
    addiu   t7, $zero, 0x0028          ## t7 = 00000028
    addiu   t8, t8, %lo(func_80A7ACD8) ## t8 = 80A7ACD8
    sb      t6, 0x0250(a0)             ## 00000250
    swc1    $f0, 0x0244(a0)            ## 00000244
    swc1    $f0, 0x0068(a0)            ## 00000068
    sh      t7, 0x0234(a0)             ## 00000234
    sw      t8, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80A7ACD8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80A7A97C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t6, 0x0234(a0)             ## 00000234
    bnel    t6, $zero, lbl_80A7AD08    
    lw      $ra, 0x0014($sp)           
    jal     func_80A7AD14              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A7AD08:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AD14:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t8, %hi(func_80A7AD4C)     ## t8 = 80A80000
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0050          ## t7 = 00000050
    addiu   t8, t8, %lo(func_80A7AD4C) ## t8 = 80A7AD4C
    sb      t6, 0x0250(a0)             ## 00000250
    sh      t7, 0x0234(a0)             ## 00000234
    jal     func_80A7A200              
    sw      t8, 0x013C(a0)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AD4C:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x006C($sp)            
    lh      v0, 0x0234(s0)             ## 00000234
    bne     v0, $zero, lbl_80A7AD7C    
    slti    $at, v0, 0x000B            
    jal     func_80A7A9BC              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A7AF28 
    lw      $ra, 0x002C($sp)           
lbl_80A7AD7C:
    bne     $at, $zero, lbl_80A7AF24   
    addiu   t6, $zero, 0x0096          ## t6 = 00000096
    sb      $zero, 0x0037($sp)         
    sh      t6, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x31A4          ## a1 = 000031A4
    lh      v0, 0x0234(s0)             ## 00000234
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t7, v0, 0xFFF6             ## t7 = FFFFFFF6
    slti    $at, t7, 0x0010            
    beq     $at, $zero, lbl_80A7ADC0   
    sll     t8, v0,  2                 
    addu    t8, t8, v0                 
    sll     t8, t8,  1                 
    addiu   t9, t8, 0xFF9C             ## t9 = FFFFFF9C
    sh      t9, 0x0034($sp)            
lbl_80A7ADC0:
    lui     $at, %hi(var_80A7BE80)     ## $at = 80A80000
    lwc1    $f4, %lo(var_80A7BE80)($at) 
    swc1    $f0, 0x0040($sp)           
    swc1    $f0, 0x0038($sp)           
    swc1    $f4, 0x003C($sp)           
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f10                  ## $f10 = 20.00
    swc1    $f6, 0x0050($sp)           
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lui     $at, 0x4700                ## $at = 47000000
    or      a1, $zero, $zero           ## a1 = 00000000
    add.s   $f16, $f8, $f10            
    mtc1    $at, $f8                   ## $f8 = 32768.00
    lui     $at, %hi(var_80A7BE84)     ## $at = 80A80000
    swc1    $f16, 0x0054($sp)          
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    lwc1    $f16, %lo(var_80A7BE84)($at) 
    swc1    $f18, 0x0058($sp)          
    lh      t0, 0x00B6(s0)             ## 000000B6
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lui     $at, 0xC000                ## $at = C0000000
    mtc1    $at, $f4                   ## $f4 = -2.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $zero, $f18                ## $f18 = 0.00
    mtc1    $at, $f6                   ## $f6 = 20.00
    addiu   a0, $sp, 0x005C            ## a0 = FFFFFFF4
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFDC
    swc1    $f4, 0x0060($sp)           
    swc1    $f18, 0x005C($sp)          
    jal     func_800AB958              
    swc1    $f6, 0x0064($sp)           
    lh      t1, 0x0234(s0)             ## 00000234
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
    andi    t2, t1, 0x0007             ## t2 = 00000000
    bne     t2, $zero, lbl_80A7AE78    
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFDC
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sb      t3, 0x0037($sp)            
lbl_80A7AE78:
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    lui     $at, 0x41C8                ## $at = 41C80000
    mtc1    $at, $f10                  ## $f10 = 25.00
    lh      t4, 0x0034($sp)            
    lbu     t5, 0x0037($sp)            
    addiu   a3, $sp, 0x0038            ## a3 = FFFFFFD0
    swc1    $f8, 0x0010($sp)           
    sw      t4, 0x0018($sp)            
    swc1    $f10, 0x0014($sp)          
    jal     func_80A7B748              
    sw      t5, 0x001C($sp)            
    lwc1    $f18, 0x0044($sp)          
    lwc1    $f16, 0x0048($sp)          
    lwc1    $f14, 0x004C($sp)          
    lwc1    $f12, 0x0050($sp)          
    lwc1    $f10, 0x0054($sp)          
    lwc1    $f8, 0x0058($sp)           
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    lh      t6, 0x0034($sp)            
    lui     $at, 0x4000                ## $at = 40000000
    mul.s   $f18, $f18, $f6            
    mtc1    $at, $f4                   ## $f4 = 2.00
    lui     $at, 0x41C8                ## $at = 41C80000
    mul.s   $f16, $f16, $f6            
    mtc1    $at, $f2                   ## $f2 = 25.00
    swc1    $f4, 0x0010($sp)           
    mul.s   $f6, $f14, $f6             
    or      a0, s0, $zero              ## a0 = 00000000
    add.s   $f18, $f12, $f18           
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFDC
    add.s   $f16, $f10, $f16           
    swc1    $f18, 0x0050($sp)          
    addiu   a3, $sp, 0x0038            ## a3 = FFFFFFD0
    add.s   $f6, $f8, $f6              
    swc1    $f16, 0x0054($sp)          
    swc1    $f2, 0x0014($sp)           
    sw      t6, 0x0018($sp)            
    swc1    $f6, 0x0058($sp)           
    jal     func_80A7B748              
    sw      $zero, 0x001C($sp)         
lbl_80A7AF24:
    lw      $ra, 0x002C($sp)           
lbl_80A7AF28:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AF38:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      t6, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   t8, $zero, 0x003C          ## t8 = 0000003C
    and     t7, t6, $at                
    sb      $zero, 0x0250(s0)          ## 00000250
    swc1    $f0, 0x0244(s0)            ## 00000244
    swc1    $f0, 0x006C(s0)            ## 0000006C
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f0, 0x0068(s0)            ## 00000068
    sb      v0, 0x0236(s0)             ## 00000236
    sb      $zero, 0x0238(s0)          ## 00000238
    sb      v0, 0x0252(s0)             ## 00000252
    sw      t7, 0x0004(s0)             ## 00000004
    sb      $zero, 0x0251(s0)          ## 00000251
    sh      t8, 0x0234(s0)             ## 00000234
    lw      a0, 0x0024($sp)            
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x0006          ## a3 = 00000006
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             ## a1 = 00001C24
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x0060          ## a3 = 00000060
    lui     t0, %hi(func_80A7AFD8)     ## t0 = 80A80000
    addiu   t0, t0, %lo(func_80A7AFD8) ## t0 = 80A7AFD8
    sw      t0, 0x013C(s0)             ## 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7AFD8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0234(a0)             ## 00000234
    bnel    t6, $zero, lbl_80A7AFFC    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A7AFFC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7B008:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    lw      t8, 0x0004(a0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lui     t0, %hi(func_80A7B04C)     ## t0 = 80A80000
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t0, t0, %lo(func_80A7B04C) ## t0 = 80A7B04C
    and     t9, t8, $at                
    sb      t6, 0x0250(a0)             ## 00000250
    sb      $zero, 0x0238(a0)          ## 00000238
    sb      t7, 0x0252(a0)             ## 00000252
    sw      t9, 0x0004(a0)             ## 00000004
    swc1    $f0, 0x0068(a0)            ## 00000068
    swc1    $f0, 0x0244(a0)            ## 00000244
    sw      t0, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80A7B04C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x3A1D                 ## a1 = 3A1D0000
    lui     a2, 0x3951                 ## a2 = 39510000
    ori     a2, a2, 0xB717             ## a2 = 3951B717
    ori     a1, a1, 0x4952             ## a1 = 3A1D4952
    addiu   a0, a3, 0x0054             ## a0 = 00000054
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, %hi(var_80A7BE88)     ## $at = 80A80000
    lwc1    $f4, %lo(var_80A7BE88)($at) 
    lwc1    $f0, 0x0054(a3)            ## 00000054
    lui     $at, %hi(var_80A7BE8C)     ## $at = 80A80000
    or      a0, a3, $zero              ## a0 = 00000000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A7B0C0               
    nop
    lwc1    $f2, %lo(var_80A7BE8C)($at) 
    lwc1    $f6, 0x0050(a3)            ## 00000050
    lwc1    $f10, 0x0058(a3)           ## 00000058
    lwc1    $f0, 0x0054(a3)            ## 00000054
    add.s   $f8, $f6, $f2              
    add.s   $f16, $f10, $f2            
    swc1    $f8, 0x0050(a3)            ## 00000050
    swc1    $f16, 0x0058(a3)           ## 00000058
lbl_80A7B0C0:
    lui     $at, %hi(var_80A7BE90)     ## $at = 80A80000
    lwc1    $f18, %lo(var_80A7BE90)($at) 
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80A7B0F4               
    lw      t9, 0x0248(a3)             ## 00000248
    lw      t6, 0x0248(a3)             ## 00000248
    addiu   t7, t6, 0xFFF8             ## t7 = FFFFFFF8
    sltiu   $at, t7, 0x0100            
    bne     $at, $zero, lbl_80A7B0F0   
    sw      t7, 0x0248(a3)             ## 00000248
    sw      $zero, 0x0248(a3)          ## 00000248
lbl_80A7B0F0:
    lw      t9, 0x0248(a3)             ## 00000248
lbl_80A7B0F4:
    bnel    t9, $zero, lbl_80A7B108    
    lw      $ra, 0x0014($sp)           
    jal     func_80A7AF38              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A7B108:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7B114:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      t7, 0x0004(a0)             ## 00000004
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     t9, %hi(func_80A7B158)     ## t9 = 80A80000
    addiu   t6, $zero, 0x0028          ## t6 = 00000028
    addiu   t9, t9, %lo(func_80A7B158) ## t9 = 80A7B158
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sb      v0, 0x0250(a0)             ## 00000250
    sh      t6, 0x0234(a0)             ## 00000234
    sb      v0, 0x0236(a0)             ## 00000236
    sb      v0, 0x0238(a0)             ## 00000238
    sw      t8, 0x0004(a0)             ## 00000004
    sw      t9, 0x013C(a0)             ## 0000013C
    swc1    $f4, 0x006C(a0)            ## 0000006C
    jr      $ra                        
    nop


func_80A7B158:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x006C($sp)            
    lh      t6, 0x0230(s0)             ## 00000230
    addiu   t8, $zero, 0x0096          ## t8 = 00000096
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t7, t6, 0x00C0             ## t7 = 00000000
    beq     t7, $zero, lbl_80A7B1A0    
    addiu   a1, $zero, 0x31A4          ## a1 = 000031A4
    jal     func_80A7A97C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A7A200              
    lw      a1, 0x006C($sp)            
    beq     $zero, $zero, lbl_80A7B340 
    lw      $ra, 0x002C($sp)           
lbl_80A7B1A0:
    sb      $zero, 0x0037($sp)         
    jal     func_8002313C              
    sh      t8, 0x0034($sp)            
    lh      v0, 0x0230(s0)             ## 00000230
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t0, $zero, 0x0276          ## t0 = 00000276
    andi    v0, v0, 0x003F             ## v0 = 00000000
    slti    $at, v0, 0x0030            
    bne     $at, $zero, lbl_80A7B1D8   
    sll     t9, v0,  2                 
    addu    t9, t9, v0                 
    sll     t9, t9,  1                 
    subu    t1, t0, t9                 
    sh      t1, 0x0034($sp)            
lbl_80A7B1D8:
    lui     $at, %hi(var_80A7BE94)     ## $at = 80A80000
    lwc1    $f4, %lo(var_80A7BE94)($at) 
    swc1    $f0, 0x0040($sp)           
    swc1    $f0, 0x0038($sp)           
    swc1    $f4, 0x003C($sp)           
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f10                  ## $f10 = 20.00
    swc1    $f6, 0x0050($sp)           
    lwc1    $f8, 0x0028(s0)            ## 00000028
    lui     $at, 0x4700                ## $at = 47000000
    or      a1, $zero, $zero           ## a1 = 00000000
    add.s   $f16, $f8, $f10            
    mtc1    $at, $f8                   ## $f8 = 32768.00
    lui     $at, %hi(var_80A7BE98)     ## $at = 80A80000
    swc1    $f16, 0x0054($sp)          
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    lwc1    $f16, %lo(var_80A7BE98)($at) 
    swc1    $f18, 0x0058($sp)          
    lh      t2, 0x00B6(s0)             ## 000000B6
    mtc1    t2, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AAB94              
    nop
    lui     $at, 0xC000                ## $at = C0000000
    mtc1    $at, $f4                   ## $f4 = -2.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $zero, $f18                ## $f18 = 0.00
    mtc1    $at, $f6                   ## $f6 = 20.00
    addiu   a0, $sp, 0x005C            ## a0 = FFFFFFF4
    addiu   a1, $sp, 0x0044            ## a1 = FFFFFFDC
    swc1    $f4, 0x0060($sp)           
    swc1    $f18, 0x005C($sp)          
    jal     func_800AB958              
    swc1    $f6, 0x0064($sp)           
    lh      t3, 0x0230(s0)             ## 00000230
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
    andi    t4, t3, 0x0007             ## t4 = 00000000
    bne     t4, $zero, lbl_80A7B290    
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFDC
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sb      t5, 0x0037($sp)            
lbl_80A7B290:
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    lui     $at, 0x41C8                ## $at = 41C80000
    mtc1    $at, $f10                  ## $f10 = 25.00
    lh      t6, 0x0034($sp)            
    lbu     t7, 0x0037($sp)            
    addiu   a3, $sp, 0x0038            ## a3 = FFFFFFD0
    swc1    $f8, 0x0010($sp)           
    sw      t6, 0x0018($sp)            
    swc1    $f10, 0x0014($sp)          
    jal     func_80A7B748              
    sw      t7, 0x001C($sp)            
    lwc1    $f18, 0x0044($sp)          
    lwc1    $f16, 0x0048($sp)          
    lwc1    $f14, 0x004C($sp)          
    lwc1    $f12, 0x0050($sp)          
    lwc1    $f10, 0x0054($sp)          
    lwc1    $f8, 0x0058($sp)           
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    lh      t8, 0x0034($sp)            
    lui     $at, 0x4000                ## $at = 40000000
    mul.s   $f18, $f18, $f6            
    mtc1    $at, $f4                   ## $f4 = 2.00
    lui     $at, 0x41C8                ## $at = 41C80000
    mul.s   $f16, $f16, $f6            
    mtc1    $at, $f2                   ## $f2 = 25.00
    swc1    $f4, 0x0010($sp)           
    mul.s   $f6, $f14, $f6             
    or      a0, s0, $zero              ## a0 = 00000000
    add.s   $f18, $f12, $f18           
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFDC
    add.s   $f16, $f10, $f16           
    swc1    $f18, 0x0050($sp)          
    addiu   a3, $sp, 0x0038            ## a3 = FFFFFFD0
    add.s   $f6, $f8, $f6              
    swc1    $f16, 0x0054($sp)          
    swc1    $f2, 0x0014($sp)           
    sw      t8, 0x0018($sp)            
    swc1    $f6, 0x0058($sp)           
    jal     func_80A7B748              
    sw      $zero, 0x001C($sp)         
    lw      $ra, 0x002C($sp)           
lbl_80A7B340:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7B350:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x0230(s0)             ## 00000230
    lh      v0, 0x0232(s0)             ## 00000232
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    beq     v0, $zero, lbl_80A7B388    
    sh      t7, 0x0230(s0)             ## 00000230
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0232(s0)             ## 00000232
lbl_80A7B388:
    lh      v0, 0x0234(s0)             ## 00000234
    beq     v0, $zero, lbl_80A7B398    
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    sh      t9, 0x0234(s0)             ## 00000234
lbl_80A7B398:
    lbu     v0, 0x0253(s0)             ## 00000253
    beq     v0, $zero, lbl_80A7B3A8    
    addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
    sb      t0, 0x0253(s0)             ## 00000253
lbl_80A7B3A8:
    jal     func_80020F04              
    lui     a1, 0x4248                 ## a1 = 42480000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A7A714              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      t9, 0x013C(s0)             ## 0000013C
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     t1, 0x0252(s0)             ## 00000252
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0140             ## a1 = 00000140
    bnel    t1, $zero, lbl_80A7B458    
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
    jal     func_80050B00              
    sw      a1, 0x0030($sp)            
    addiu   a1, s0, 0x018C             ## a1 = 0000018C
    sw      a1, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t2, 0x0238(s0)             ## 00000238
    beql    t2, $zero, lbl_80A7B458    
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
    lbu     t3, 0x0114(s0)             ## 00000114
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    bne     t3, $zero, lbl_80A7B43C    
    or      a0, s1, $zero              ## a0 = 00000000
    addu    a1, s1, $at                
    sw      a1, 0x0034($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x0030($sp)            
    lw      a1, 0x0034($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x002C($sp)            
lbl_80A7B43C:
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x0030($sp)            
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
lbl_80A7B458:
    ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_8006385C              
    lw      a1, 0x0244(s0)             ## 00000244
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t4, 0x0236(s0)             ## 00000236
    lui     $at, 0x41A0                ## $at = 41A00000
    or      a0, s1, $zero              ## a0 = 00000000
    beq     t4, $zero, lbl_80A7B4A0    
    or      a1, s0, $zero              ## a1 = 00000000
    mtc1    $at, $f0                   ## $f0 = 20.00
    addiu   t5, $zero, 0x0005          ## t5 = 00000005
    sw      t5, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
lbl_80A7B4A0:
    lbu     t6, 0x0250(s0)             ## 00000250
    lui     t9, %hi(var_80A7BE50)      ## t9 = 80A80000
    or      a0, s0, $zero              ## a0 = 00000000
    sll     t7, t6,  2                 
    addu    t9, t9, t7                 
    lw      t9, %lo(var_80A7BE50)(t9)  
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A7B804              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80A7B4E0:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a1, $zero              ## s1 = 00000000
    or      s2, a0, $zero              ## s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    lbu     v0, 0x00AF(s2)             ## 000000AF
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    or      a0, s2, $zero              ## a0 = 00000000
    subu    v1, t6, v0                 
    sra     v1, v1,  1                 
    bne     v0, $zero, lbl_80A7B51C    
    lw      s0, 0x0000(s1)             ## 00000000
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_80A7B51C:
    lbu     t7, 0x0251(s2)             ## 00000251
    or      a1, s1, $zero              ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    beql    t7, $zero, lbl_80A7B684    
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80022554              
    sw      v1, 0x005C($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(s1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0020             ## t9 = DB060020
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      v0, 0x009C(s1)             ## 0000009C
    lw      a0, 0x0000(s1)             ## 00000000
    addiu   t1, $zero, 0x0020          ## t1 = 00000020
    sll     t4, v0,  1                 
    andi    t5, t4, 0x007F             ## t5 = 00000000
    addiu   t2, $zero, 0x0020          ## t2 = 00000020
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    sw      t7, 0x0028($sp)            
    sw      t6, 0x0024($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t5, 0x0020($sp)            
    sw      t1, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    sw      v1, 0x0050($sp)            
    jal     func_8007EB84              
    andi    a3, v0, 0x007F             ## a3 = 00000000
    lw      t0, 0x0050($sp)            
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x004C($sp)            
    lw      a3, 0x004C($sp)            
    lui     t2, 0xFC27                 ## t2 = FC270000
    ori     t2, t2, 0x2660             ## t2 = FC272660
    sw      v0, 0x0004(a3)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t3, 0x3514                 ## t3 = 35140000
    ori     t3, t3, 0x937F             ## t3 = 3514937F
    addiu   t1, v1, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s0)             ## 000002D0
    sw      t3, 0x0004(v1)             ## 00000004
    sw      t2, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, 0xFA00                 ## t5 = FA000000
    lui     t6, 0x9BFF                 ## t6 = 9BFF0000
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    ori     t6, t6, 0xFFFF             ## t6 = 9BFFFFFF
    ori     t5, t5, 0x0080             ## t5 = FA000080
    sw      t5, 0x0000(v1)             ## 00000000
    sw      t6, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xFB00                 ## t8 = FB000000
    lui     $at, 0xC8C8                ## $at = C8C80000
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x0248(s2)             ## 00000248
    ori     $at, $at, 0xC800           ## $at = C8C8C800
    andi    t1, t9, 0x00FF             ## t1 = 00000000
    or      t2, t1, $at                ## t2 = C8C8C800
    sw      t2, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0xDE00                 ## t4 = DE000000
    lui     t7, %hi(var_80A7BE60)      ## t7 = 80A80000
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0000(v1)             ## 00000000
    lw      t5, 0x005C($sp)            
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80A7BE60)(t7)  
    sw      t7, 0x0004(v1)             ## 00000004
    or      a0, s2, $zero              ## a0 = 00000000
lbl_80A7B684:
    jal     func_80A7BAF0              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80A7B6A4:
    addiu   v0, a0, 0x0264             ## v0 = 00000264
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80A7B6AC:
    lbu     t6, 0x0000(v0)             ## 00000264
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    sll     v1, v1, 16                 
    bne     t6, $zero, lbl_80A7B734    
    sra     v1, v1, 16                 
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sb      t7, 0x0000(v0)             ## 00000264
    lw      t9, 0x0000(a1)             ## 00000000
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f6                   ## $f6 = 1000.00
    sw      t9, 0x0004(v0)             ## 00000268
    lw      t8, 0x0004(a1)             ## 00000004
    sw      t8, 0x0008(v0)             ## 0000026C
    lw      t9, 0x0008(a1)             ## 00000008
    sw      t9, 0x000C(v0)             ## 00000270
    lw      t1, 0x0000(a2)             ## 00000000
    sw      t1, 0x0010(v0)             ## 00000274
    lw      t0, 0x0004(a2)             ## 00000004
    sw      t0, 0x0014(v0)             ## 00000278
    lw      t1, 0x0008(a2)             ## 00000008
    sw      t1, 0x0018(v0)             ## 0000027C
    lw      t3, 0x0000(a3)             ## 00000000
    sw      t3, 0x001C(v0)             ## 00000280
    lw      t2, 0x0004(a3)             ## 00000004
    sw      t2, 0x0020(v0)             ## 00000284
    lw      t3, 0x0008(a3)             ## 00000008
    sh      $zero, 0x002E(v0)          ## 00000292
    sw      t3, 0x0024(v0)             ## 00000288
    lwc1    $f4, 0x0010($sp)           
    sh      $zero, 0x002C(v0)          ## 00000290
    sb      $zero, 0x0001(v0)          ## 00000265
    div.s   $f8, $f4, $f6              
    jr      $ra                        
    swc1    $f8, 0x0030(v0)            ## 00000294
lbl_80A7B734:
    slti    $at, v1, 0x0028            
    bne     $at, $zero, lbl_80A7B6AC   
    addiu   v0, v0, 0x003C             ## v0 = 000002A0
    jr      $ra                        
    nop


func_80A7B748:
    addiu   v0, a0, 0x0264             ## v0 = 00000264
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80A7B750:
    lbu     t6, 0x0000(v0)             ## 00000264
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    sll     v1, v1, 16                 
    bne     t6, $zero, lbl_80A7B7F0    
    sra     v1, v1, 16                 
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sb      t7, 0x0000(v0)             ## 00000264
    lw      t9, 0x0000(a1)             ## 00000000
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f0                   ## $f0 = 1000.00
    sw      t9, 0x0004(v0)             ## 00000268
    lw      t8, 0x0004(a1)             ## 00000004
    sw      t8, 0x0008(v0)             ## 0000026C
    lw      t9, 0x0008(a1)             ## 00000008
    sw      t9, 0x000C(v0)             ## 00000270
    lw      t1, 0x0000(a2)             ## 00000000
    sw      t1, 0x0010(v0)             ## 00000274
    lw      t0, 0x0004(a2)             ## 00000004
    sw      t0, 0x0014(v0)             ## 00000278
    lw      t1, 0x0008(a2)             ## 00000008
    sw      t1, 0x0018(v0)             ## 0000027C
    lw      t3, 0x0000(a3)             ## 00000000
    sw      t3, 0x001C(v0)             ## 00000280
    lw      t2, 0x0004(a3)             ## 00000004
    sw      t2, 0x0020(v0)             ## 00000284
    lw      t3, 0x0008(a3)             ## 00000008
    sh      $zero, 0x002E(v0)          ## 00000292
    sw      t3, 0x0024(v0)             ## 00000288
    lwc1    $f4, 0x0010($sp)           
    div.s   $f6, $f4, $f0              
    swc1    $f6, 0x0030(v0)            ## 00000294
    lwc1    $f8, 0x0014($sp)           
    div.s   $f10, $f8, $f0             
    swc1    $f10, 0x0034(v0)           ## 00000298
    lh      t4, 0x001A($sp)            
    sb      $zero, 0x0001(v0)          ## 00000265
    sh      t4, 0x002C(v0)             ## 00000290
    lbu     t5, 0x001F($sp)            
    jr      $ra                        
    sb      t5, 0x0038(v0)             ## 0000029C
lbl_80A7B7F0:
    slti    $at, v1, 0x0028            
    bne     $at, $zero, lbl_80A7B750   
    addiu   v0, v0, 0x003C             ## v0 = 000002A0
    jr      $ra                        
    nop


func_80A7B804:
    addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
    sw      s4, 0x004C($sp)            
    sw      s1, 0x0040($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    or      s4, a1, $zero              ## s4 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s7, 0x0058($sp)            
    sw      s6, 0x0054($sp)            
    sw      s5, 0x0050($sp)            
    sw      s3, 0x0048($sp)            
    sw      s2, 0x0044($sp)            
    sw      s0, 0x003C($sp)            
    sdc1    $f28, 0x0030($sp)          
    sdc1    $f26, 0x0028($sp)          
    sdc1    $f24, 0x0020($sp)          
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f28                  ## $f28 = 2.00
    lui     $at, %hi(var_80A7BE9C)     ## $at = 80A80000
    lwc1    $f26, %lo(var_80A7BE9C)($at) 
    lui     $at, 0x3F40                ## $at = 3F400000
    mtc1    $at, $f24                  ## $f24 = 0.75
    lui     $at, 0x4120                ## $at = 41200000
    lui     s6, 0x0001                 ## s6 = 00010000
    mtc1    $at, $f20                  ## $f20 = 10.00
    mtc1    $zero, $f22                ## $f22 = 0.00
    addiu   s0, s1, 0x0264             ## s0 = 00000264
    ori     s6, s6, 0x1E60             ## s6 = 00011E60
    or      s2, $zero, $zero           ## s2 = 00000000
    addiu   s7, $sp, 0x0064            ## s7 = FFFFFFEC
    addiu   s5, $zero, 0x0001          ## s5 = 00000001
    addiu   s3, $zero, 0x0002          ## s3 = 00000002
lbl_80A7B888:
    lbu     t6, 0x0000(s0)             ## 00000264
    beql    t6, $zero, lbl_80A7BA9C    
    addiu   s2, s2, 0x0001             ## s2 = 00000001
    lwc1    $f0, 0x0010(s0)            ## 00000274
    lwc1    $f4, 0x0004(s0)            ## 00000268
    lwc1    $f2, 0x0014(s0)            ## 00000278
    lwc1    $f8, 0x0008(s0)            ## 0000026C
    lwc1    $f12, 0x0018(s0)           ## 0000027C
    lwc1    $f16, 0x000C(s0)           ## 00000270
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x001C(s0)            ## 00000280
    lbu     t7, 0x0001(s0)             ## 00000265
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x0020(s0)            ## 00000284
    swc1    $f6, 0x0004(s0)            ## 00000268
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0024(s0)           ## 00000288
    swc1    $f10, 0x0008(s0)           ## 0000026C
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x000C(s0)           ## 00000270
    lbu     v0, 0x0000(s0)             ## 00000264
    add.s   $f10, $f2, $f8             
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    sb      t8, 0x0001(s0)             ## 00000265
    add.s   $f18, $f12, $f16           
    swc1    $f6, 0x0010(s0)            ## 00000274
    swc1    $f10, 0x0014(s0)           ## 00000278
    bne     s5, v0, lbl_80A7B958       
    swc1    $f18, 0x0018(s0)           ## 0000027C
    lh      t9, 0x002E(s0)             ## 00000292
    bnel    t9, $zero, lbl_80A7B938    
    lh      t5, 0x002C(s0)             ## 00000290
    lh      t0, 0x002C(s0)             ## 00000290
    addiu   t1, t0, 0x000A             ## t1 = 0000000A
    sh      t1, 0x002C(s0)             ## 00000290
    lh      t2, 0x002C(s0)             ## 00000290
    slti    $at, t2, 0x0064            
    bnel    $at, $zero, lbl_80A7BA9C   
    addiu   s2, s2, 0x0001             ## s2 = 00000002
    lh      t3, 0x002E(s0)             ## 00000292
    addiu   t4, t3, 0x0001             ## t4 = 00000001
    beq     $zero, $zero, lbl_80A7BA98 
    sh      t4, 0x002E(s0)             ## 00000292
    lh      t5, 0x002C(s0)             ## 00000290
lbl_80A7B938:
    addiu   t6, t5, 0xFFFD             ## t6 = FFFFFFFD
    sh      t6, 0x002C(s0)             ## 00000290
    lh      t7, 0x002C(s0)             ## 00000290
    bgtzl   t7, lbl_80A7BA9C           
    addiu   s2, s2, 0x0001             ## s2 = 00000003
    sh      $zero, 0x002C(s0)          ## 00000290
    beq     $zero, $zero, lbl_80A7BA98 
    sb      $zero, 0x0000(s0)          ## 00000264
lbl_80A7B958:
    bnel    s3, v0, lbl_80A7BA9C       
    addiu   s2, s2, 0x0001             ## s2 = 00000004
    lwc1    $f0, 0x0034(s0)            ## 00000298
    mfc1    a2, $f26                   
    addiu   a0, s0, 0x0030             ## a0 = 00000294
    div.s   $f4, $f0, $f20             
    mfc1    a1, $f0                    
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lh      v0, 0x002E(s0)             ## 00000292
    bnel    v0, $zero, lbl_80A7B9AC    
    lwc1    $f6, 0x0010(s0)            ## 00000274
    lbu     t8, 0x0001(s0)             ## 00000265
    addiu   t9, v0, 0x0001             ## t9 = 00000001
    slti    $at, t8, 0x0007            
    bnel    $at, $zero, lbl_80A7B9E4   
    lbu     t3, 0x0253(s1)             ## 00000253
    beq     $zero, $zero, lbl_80A7B9E0 
    sh      t9, 0x002E(s0)             ## 00000292
    lwc1    $f6, 0x0010(s0)            ## 00000274
lbl_80A7B9AC:
    lwc1    $f10, 0x0018(s0)           ## 0000027C
    lh      t0, 0x002C(s0)             ## 00000290
    mul.s   $f8, $f6, $f24             
    swc1    $f28, 0x0020(s0)           ## 00000284
    addiu   t1, t0, 0xFFEF             ## t1 = FFFFFFEF
    mul.s   $f16, $f10, $f24           
    sh      t1, 0x002C(s0)             ## 00000290
    lh      t2, 0x002C(s0)             ## 00000290
    swc1    $f8, 0x0010(s0)            ## 00000274
    bgtz    t2, lbl_80A7B9E0           
    swc1    $f16, 0x0018(s0)           ## 0000027C
    sh      $zero, 0x002C(s0)          ## 00000290
    sb      $zero, 0x0000(s0)          ## 00000264
lbl_80A7B9E0:
    lbu     t3, 0x0253(s1)             ## 00000253
lbl_80A7B9E4:
    bnel    t3, $zero, lbl_80A7BA54    
    lwc1    $f18, 0x0004(s0)           ## 00000268
    lh      t4, 0x002C(s0)             ## 00000290
    slti    $at, t4, 0x0065            
    bnel    $at, $zero, lbl_80A7BA54   
    lwc1    $f18, 0x0004(s0)           ## 00000268
    lbu     t5, 0x0038(s0)             ## 0000029C
    beql    t5, $zero, lbl_80A7BA54    
    lwc1    $f18, 0x0004(s0)           ## 00000268
    lwc1    $f18, 0x0004(s0)           ## 00000268
    or      a0, s4, $zero              ## a0 = 00000000
    addu    a1, s4, s6                 
    trunc.w.s $f4, $f18                  
    addiu   a2, s1, 0x01D8             ## a2 = 000001D8
    mfc1    t7, $f4                    
    nop
    sh      t7, 0x021E(s1)             ## 0000021E
    lwc1    $f6, 0x0008(s0)            ## 0000026C
    trunc.w.s $f8, $f6                   
    mfc1    t9, $f8                    
    nop
    sh      t9, 0x0220(s1)             ## 00000220
    lwc1    $f10, 0x000C(s0)           ## 00000270
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    jal     func_8004BD50              ## CollisionCheck_setAT
    sh      t1, 0x0222(s1)             ## 00000222
    lwc1    $f18, 0x0004(s0)           ## 00000268
lbl_80A7BA54:
    or      a0, s1, $zero              ## a0 = 00000000
    swc1    $f18, 0x0064($sp)          
    lwc1    $f4, 0x0008(s0)            ## 0000026C
    add.s   $f6, $f4, $f20             
    swc1    $f6, 0x0068($sp)           
    lwc1    $f8, 0x000C(s0)            ## 00000270
    swc1    $f8, 0x006C($sp)           
    lh      t2, 0x002E(s0)             ## 00000292
    beql    s3, t2, lbl_80A7BA9C       
    addiu   s2, s2, 0x0001             ## s2 = 00000005
    jal     func_80A7A320              
    or      a1, s7, $zero              ## a1 = FFFFFFEC
    beql    v0, $zero, lbl_80A7BA9C    
    addiu   s2, s2, 0x0001             ## s2 = 00000006
    sh      s3, 0x002E(s0)             ## 00000292
    swc1    $f22, 0x0010(s0)           ## 00000274
    swc1    $f22, 0x0018(s0)           ## 0000027C
lbl_80A7BA98:
    addiu   s2, s2, 0x0001             ## s2 = 00000007
lbl_80A7BA9C:
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slti    $at, s2, 0x0028            
    bne     $at, $zero, lbl_80A7B888   
    addiu   s0, s0, 0x003C             ## s0 = 000002A0
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    ldc1    $f24, 0x0020($sp)          
    ldc1    $f26, 0x0028($sp)          
    ldc1    $f28, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    lw      s2, 0x0044($sp)            
    lw      s3, 0x0048($sp)            
    lw      s4, 0x004C($sp)            
    lw      s5, 0x0050($sp)            
    lw      s6, 0x0054($sp)            
    lw      s7, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_80A7BAF0:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      $ra, 0x0064($sp)           
    sw      s8, 0x0060($sp)            
    sw      s7, 0x005C($sp)            
    sw      s6, 0x0058($sp)            
    sw      s5, 0x0054($sp)            
    sw      s4, 0x0050($sp)            
    sw      s3, 0x004C($sp)            
    sw      s2, 0x0048($sp)            
    sw      s1, 0x0044($sp)            
    sw      s0, 0x0040($sp)            
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x006C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lw      t6, 0x006C($sp)            
    or      s6, $zero, $zero           ## s6 = 00000000
    addiu   s2, a2, 0x0264             ## s2 = 00000264
    lw      a0, 0x0000(t6)             ## 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    jal     func_8007E2C0              
    nop
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f20                  ## $f20 = 1.00
    or      s4, $zero, $zero           ## s4 = 00000000
lbl_80A7BB50:
    lbu     t7, 0x0000(s2)             ## 00000264
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1DA0           ## $at = 00011DA0
    blez    t7, lbl_80A7BD30           
    lui     v1, 0x0600                 ## v1 = 06000000
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t9, 0xE700                 ## t9 = E7000000
    addiu   v1, v1, 0x3158             ## v1 = 06003158
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t9, 0x0000(s0)             ## 00000000
    lw      s5, 0x006C($sp)            
    sll     t1, v1,  4                 
    srl     t2, t1, 28                 
    addu    s5, s5, $at                
    lui     $at, 0x00FF                ## $at = 00FF0000
    lui     t4, 0x8012                 ## t4 = 80120000
    addiu   t4, t4, 0x0C38             ## t4 = 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t3, t2,  2                 
    addu    s7, t3, t4                 
    bne     s6, $zero, lbl_80A7BC08    
    and     s8, v1, $at                
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     v1, 0x0600                 ## v1 = 06000000
    addiu   v1, v1, 0x30A0             ## v1 = 060030A0
    sll     t7, v1,  4                 
    srl     t8, t7, 28                 
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 000002D0
    sll     t9, t8,  2                 
    lui     t6, 0xDE00                 ## t6 = DE000000
    lui     t1, 0x8012                 ## t1 = 80120000
    addu    t1, t1, t9                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    sw      t6, 0x0000(s0)             ## 00000000
    lw      t1, 0x0C38(t1)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t2, v1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(s0)             ## 00000004
    addiu   s6, s6, 0x0001             ## s6 = 00000001
    andi    s6, s6, 0x00FF             ## s6 = 00000001
lbl_80A7BC08:
    addiu   t0, $zero, 0x0003          ## t0 = 00000003
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t6, 0xFA00                 ## t6 = FA000000
    lui     $at, 0xC3E1                ## $at = C3E10000
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 000002D0
    sw      t6, 0x0000(s0)             ## 00000000
    lh      t7, 0x002C(s2)             ## 00000290
    ori     $at, $at, 0xEB00           ## $at = C3E1EB00
    lui     t2, 0xDB06                 ## t2 = DB060000
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    or      t9, t8, $at                ## t9 = C3E1EB00
    sw      t9, 0x0004(s0)             ## 00000004
    multu   s4, t0                     
    lw      s3, 0x02D0(s1)             ## 000002D0
    ori     t2, t2, 0x0020             ## t2 = DB060020
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t1, s3, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s1)             ## 000002D0
    sw      t2, 0x0000(s3)             ## 00000000
    lbu     t4, 0x0001(s2)             ## 00000265
    lw      t3, 0x006C($sp)            
    addiu   t1, $zero, 0x0020          ## t1 = 00000020
    mflo    t5                         
    addu    v1, t4, t5                 
    lw      a0, 0x0000(t3)             ## 00000000
    multu   v1, t0                     
    sll     a3, v1,  4                 
    addiu   t7, $zero, 0x0040          ## t7 = 00000040
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    subu    a3, a3, v1                 
    sw      t1, 0x0028($sp)            
    mflo    a2                         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      t6, 0x0010($sp)            
    jal     func_8007EB84              
    or      a1, $zero, $zero           ## a1 = 00000000
    sw      v0, 0x0004(s3)             ## 00000004
    lwc1    $f12, 0x0004(s2)           ## 00000268
    lwc1    $f14, 0x0008(s2)           ## 0000026C
    lw      a2, 0x000C(s2)             ## 00000270
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_800ABE54              
    or      a0, s5, $zero              ## a0 = 00000000
    lwc1    $f12, 0x0030(s2)           ## 00000294
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s1)             ## 000002D0
    lui     t3, 0xDA38                 ## t3 = DA380000
    ori     t3, t3, 0x0003             ## t3 = DA380003
    addiu   t2, s3, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s1)             ## 000002D0
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_800AB900              
    sw      t3, 0x0000(s3)             ## 00000000
    sw      v0, 0x0004(s3)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t5, 0xDE00                 ## t5 = DE000000
    lui     $at, 0x8000                ## $at = 80000000
    addiu   t4, s0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 000002D0
    sw      t5, 0x0000(s0)             ## 00000000
    lw      t6, 0x0000(s7)             ## 00000000
    addu    t7, t6, s8                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(s0)             ## 00000004
lbl_80A7BD30:
    addiu   s4, s4, 0x0001             ## s4 = 00000001
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slti    $at, s4, 0x0028            
    bne     $at, $zero, lbl_80A7BB50   
    addiu   s2, s2, 0x003C             ## s2 = 000002A0
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    lw      s3, 0x004C($sp)            
    lw      s4, 0x0050($sp)            
    lw      s5, 0x0054($sp)            
    lw      s6, 0x0058($sp)            
    lw      s7, 0x005C($sp)            
    lw      s8, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    nop

.section .data

var_80A7BD80: .word 0x01210500, 0x00000415, 0x01140000, 0x00000BC4
.word func_80A7A030
.word func_80A7A1B0
.word func_80A7B350
.word func_80A7B4E0
var_80A7BDA0: .word \
0x0A110939, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCE0FDB, 0x00000000, 0x01050100, \
0x001E0050, 0x00000000, 0x00000000
var_80A7BDCC: .word \
0x09000D00, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x0001F024, 0x00000000, 0x00010000, \
0x00230050, 0x00000000, 0x00000000
var_80A7BDF8: .word \
0x0A110000, 0x01000000, 0x00000000, 0x20000000, \
0x02080000, 0x00000000, 0x00000000, 0x01000000, \
0x0014001E, 0xFFF10000, 0x00000000
var_80A7BE24: .word \
0x00F0F0F2, 0xF0F0F2F2, 0xF0F2F424, 0xF0F0F0F0, \
0xF0240000, 0x0000F0F4, 0xF2F0F8F4, 0x00000000
var_80A7BE44: .word 0x8917003B, 0x801F0002, 0x304C001E
var_80A7BE50: .word func_80A7A564
.word func_80A7A570
.word func_80A7A650
.word func_80A7A650
var_80A7BE60: .word 0x06001130, 0x060021A0, 0x06002CA0, 0x00000000

.section .rodata

var_80A7BE70: .word 0x3F19999A
var_80A7BE74: .word 0x3E99999A
var_80A7BE78: .word 0x3DCCCCCD
var_80A7BE7C: .word 0x3DCCCCCD
var_80A7BE80: .word 0x3F19999A
var_80A7BE84: .word 0x40490FDB
var_80A7BE88: .word 0x3BC49BA6
var_80A7BE8C: .word 0x39D1B717
var_80A7BE90: .word 0x3B83126F
var_80A7BE94: .word 0x3F19999A
var_80A7BE98: .word 0x40490FDB
var_80A7BE9C: .word 0x3DCCCCCD

