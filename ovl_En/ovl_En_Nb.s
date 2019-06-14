#include <mips.h>
.set noreorder
.set noat

.section .text
func_809A1B90:
    lh      v1, 0x001C(a0)             ## 0000001C
    sra     v1, v1,  8                 
    andi    v0, v1, 0x00FF             ## v0 = 00000000
    jr      $ra                        
    nop


func_809A1BA4:
    lh      v1, 0x001C(a0)             ## 0000001C
    andi    v0, v1, 0x00FF             ## v0 = 00000000
    jr      $ra                        
    nop


func_809A1BB4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    lui     a2, 0x0001                 ## a2 = 00010000
    addu    a2, a2, a1                 
    lw      a2, 0x1E08(a2)             ## 00011E08
    beql    a2, $zero, lbl_809A1CD4    
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809A1B90              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sll     t6, v0,  3                 
    lui     t0, 0x8012                 ## t0 = 80120000
    addu    a2, a2, t6                 
    lw      a1, 0x0004(a2)             ## 00000004
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t7, a1,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, 0x0C38(t0)             ## 80120C38
    and     t1, a1, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    v1, t0, t1                 
    addu    v1, v1, $at                
    lh      t2, 0x0000(v1)             ## 00000000
    lw      a0, 0x0020($sp)            
    mtc1    t2, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x02D4(a0)            ## 000002D4
    lh      t3, 0x0002(v1)             ## 00000002
    mtc1    t3, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x02D8(a0)           ## 000002D8
    lh      t4, 0x0004(v1)             ## 00000004
    mtc1    t4, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x02DC(a0)           ## 000002DC
    lh      t5, 0x0006(v1)             ## 00000006
    mtc1    t5, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x02E0(a0)            ## 000002E0
    lh      t6, 0x0008(v1)             ## 00000008
    lwc1    $f4, 0x02E0(a0)            ## 000002E0
    lwc1    $f6, 0x02D4(a0)            ## 000002D4
    mtc1    t6, $f8                    ## $f8 = 0.00
    sub.s   $f12, $f4, $f6             
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x02E4(a0)           ## 000002E4
    lh      t7, 0x000A(v1)             ## 0000000A
    lwc1    $f10, 0x02DC(a0)           ## 000002DC
    mtc1    t7, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x02E8(a0)           ## 000002E8
    lwc1    $f8, 0x02E8(a0)            ## 000002E8
    jal     func_800CD76C              
    sub.s   $f14, $f8, $f10            
    lui     $at, %hi(var_809A5C90)     ## $at = 809A0000
    lwc1    $f16, %lo(var_809A5C90)($at) 
    lw      a0, 0x0020($sp)            
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f4                    
    nop
    sh      t9, 0x02EC(a0)             ## 000002EC
    lw      $ra, 0x0014($sp)           
lbl_809A1CD4:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1CE0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a1, a2, 0x0284             ## a1 = 00000284
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_809A4FE0)      ## a3 = 809A0000
    lw      a1, 0x0018($sp)            
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_809A4FE0)  ## a3 = 809A4FE0
    jal     func_8004AC84              
    lw      a0, 0x0024($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1D2C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, a0, 0x0284             ## a2 = 00000284
    or      a1, a2, $zero              ## a1 = 00000284
    jal     func_80050B00              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0018($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1D70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0284             ## a1 = 00000284
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1D9C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xBA00             ## v1 = 8011BA00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lui     $at, 0x4110                ## $at = 41100000
    mtc1    $at, $f8                   ## $f8 = 9.00
    lw      v0, 0x1C44(t6)             ## 00001C44
    addiu   a1, a0, 0x02F0             ## a1 = 000002F0
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    lw      t8, 0x0024(v0)             ## 00000024
    sw      t8, 0x0308(a0)             ## 00000308
    lw      t7, 0x0028(v0)             ## 00000028
    sw      t7, 0x030C(a0)             ## 0000030C
    lw      t8, 0x002C(v0)             ## 0000002C
    sw      t8, 0x0310(a0)             ## 00000310
    lw      t9, 0x0000(v1)             ## 8011BA00
    lh      t0, 0x1474(t9)             ## 00001474
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0304(a0)           ## 00000304
    lw      t1, 0x0000(v1)             ## 8011BA00
    lh      a2, 0x1476(t1)             ## 00001476
    addiu   a2, a2, 0x000C             ## a2 = 0000000C
    sll     a2, a2, 16                 
    jal     func_80027854              
    sra     a2, a2, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1E24:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    lui     v1, 0x8012                 ## v1 = 80120000
    addiu   v1, v1, 0xBA00             ## v1 = 8011BA00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x001C($sp)            
    lui     $at, 0x4110                ## $at = 41100000
    mtc1    $at, $f8                   ## $f8 = 9.00
    lw      v0, 0x1C44(t6)             ## 00001C44
    addiu   a1, a0, 0x02F0             ## a1 = 000002F0
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    lw      t8, 0x0024(v0)             ## 00000024
    sw      t8, 0x0308(a0)             ## 00000308
    lw      t7, 0x0028(v0)             ## 00000028
    sw      t7, 0x030C(a0)             ## 0000030C
    lw      t8, 0x002C(v0)             ## 0000002C
    sw      t8, 0x0310(a0)             ## 00000310
    lw      t9, 0x0000(v1)             ## 8011BA00
    lh      t0, 0x1474(t9)             ## 00001474
    mtc1    t0, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0304(a0)           ## 00000304
    lw      t1, 0x0000(v1)             ## 8011BA00
    lh      a2, 0x1476(t1)             ## 00001476
    addiu   a2, a2, 0x000C             ## a2 = 0000000C
    sll     a2, a2, 16                 
    jal     func_80027854              
    sra     a2, a2, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1EAC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    lw      a0, 0x0038($sp)            
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, a0, 0x02F8             ## a0 = 000002F8
    sw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lw      a0, 0x0024($sp)            
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    sw      t7, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    jal     func_80064508              
    addiu   a0, a0, 0x0002             ## a0 = 00000002
    lw      a0, 0x0038($sp)            
    addiu   t8, $zero, 0x0064          ## t8 = 00000064
    sw      t8, 0x0010($sp)            
    addiu   a0, a0, 0x02FE             ## a0 = 000002FE
    sw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lw      a0, 0x0024($sp)            
    addiu   t9, $zero, 0x0064          ## t9 = 00000064
    sw      t9, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    jal     func_80064508              
    addiu   a0, a0, 0x0002             ## a0 = 00000002
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1F50:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x0266(a2)             ## 00000266
    addiu   v1, a2, 0x0266             ## v1 = 00000266
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t6, $zero, lbl_809A1F78    
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    beq     $zero, $zero, lbl_809A1F88 
    addiu   v1, a2, 0x0266             ## v1 = 00000266
lbl_809A1F78:
    lh      t7, 0x0000(v1)             ## 00000266
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             ## 00000266
    lh      v0, 0x0000(v1)             ## 00000266
lbl_809A1F88:
    bne     v0, $zero, lbl_809A1FA8    
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             ## 00000000
lbl_809A1FA8:
    lh      t9, 0x0000(v1)             ## 00000000
    addiu   v0, a2, 0x0264             ## v0 = 00000264
    sh      t9, 0x0000(v0)             ## 00000264
    lh      t0, 0x0000(v0)             ## 00000264
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_809A1FCC   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          ## 00000264
    lw      $ra, 0x0014($sp)           
lbl_809A1FCC:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A1FD8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    lui     $at, 0x41F0                ## $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   ## $f0 = 30.00
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 ## a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2020:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2044:
    lbu     t6, 0x1D6C(a0)             ## 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_809A2064    
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             ## 00001D8C
lbl_809A2060:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809A2064:
    jr      $ra                        
    nop


func_809A206C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              ## a1 = 00000000
    jal     func_809A2044              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_809A20DC    
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
lbl_809A20DC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A20EC:
    sw      a2, 0x0008($sp)            
    andi    a2, a2, 0xFFFF             ## a2 = 00000000
    sw      a0, 0x0000($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    sll     t7, a3,  2                 
    addu    t8, a1, t7                 
    beql    t6, $zero, lbl_809A2130    
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    beql    v0, $zero, lbl_809A2130    
    or      v0, $zero, $zero           ## v0 = 00000000
    lhu     t9, 0x0000(v0)             ## 00000000
    bnel    a2, t9, lbl_809A2130       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809A212C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809A2130:
    jr      $ra                        
    nop


func_809A2138:
    sw      a2, 0x0008($sp)            
    andi    a2, a2, 0xFFFF             ## a2 = 00000000
    sw      a0, 0x0000($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    sll     t7, a3,  2                 
    addu    t8, a1, t7                 
    beql    t6, $zero, lbl_809A217C    
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    beql    v0, $zero, lbl_809A217C    
    or      v0, $zero, $zero           ## v0 = 00000000
    lhu     t9, 0x0000(v0)             ## 00000000
    beql    a2, t9, lbl_809A217C       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809A2178:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809A217C:
    jr      $ra                        
    nop


func_809A2184:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              ## a1 = 00000000
    jal     func_809A2044              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_809A21F4    
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
lbl_809A21F4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2204:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    jal     func_8008A194              
    lw      a0, 0x002C($sp)            
    lw      t6, 0x0038($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    bne     t6, $zero, lbl_809A2250    
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $at, $f12                  ## $f12 = 1.00
    beq     $zero, $zero, lbl_809A2264 
    cvt.s.w $f2, $f4                   
lbl_809A2250:
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $zero, $f2                 ## $f2 = 0.00
    mtc1    $at, $f12                  ## $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_809A2264:
    lbu     t7, 0x0033($sp)            
    lwc1    $f8, 0x0034($sp)           
    mfc1    a2, $f12                   
    mfc1    a3, $f0                    
    swc1    $f2, 0x0010($sp)           
    sw      t7, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2294:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9694             ## a1 = 06009694
    lw      a0, 0x0020($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    lui     $at, %hi(var_809A5C94)     ## $at = 809A0000
    lwc1    $f4, %lo(var_809A5C94)($at) 
    lw      t6, 0x0020($sp)            
    swc1    $f4, 0x00BC(t6)            ## 000000BC
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A22DC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    or      a2, a1, $zero              ## a2 = 00000000
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f0, 0x0024(a1)            ## 00000024
    lwc1    $f2, 0x0028(a1)            ## 00000028
    lwc1    $f12, 0x002C(a1)           ## 0000002C
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    addiu   a3, $zero, 0x005D          ## a3 = 0000005D
    swc1    $f0, 0x0010($sp)           
    swc1    $f2, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2338:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    or      a2, a1, $zero              ## a2 = 00000000
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lw      v0, 0x1C44(a2)             ## 00001C44
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f6                   ## $f6 = 50.00
    lwc1    $f4, 0x0028(v0)            ## 00000028
    lwc1    $f0, 0x0024(v0)            ## 00000024
    lwc1    $f12, 0x002C(v0)           ## 0000002C
    add.s   $f2, $f4, $f6              
    addiu   t6, $zero, 0x000C          ## t6 = 0000000C
    sw      t6, 0x0028($sp)            
    sw      a2, 0x003C($sp)            
    swc1    $f2, 0x0014($sp)           
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    addiu   a3, $zero, 0x008B          ## a3 = 0000008B
    swc1    $f0, 0x0010($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      a0, 0x003C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0069          ## a1 = 00000069
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A23B4:
    sw      a1, 0x0004($sp)            
    lui     $at, %hi(var_809A5C98)     ## $at = 809A0000
    lwc1    $f6, %lo(var_809A5C98)($at) 
    lwc1    $f4, 0x00BC(a0)            ## 000000BC
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00BC(a0)            ## 000000BC
    jr      $ra                        
    nop


func_809A23D4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lbu     t6, 0x1415(v0)             ## 8011B9E5
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bnel    t6, $at, lbl_809A2464      
    lw      $ra, 0x0014($sp)           
    lw      t7, 0x1360(v0)             ## 8011B930
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    lw      t9, 0x0028($sp)            
    slti    $at, t7, 0x0004            
    beq     $at, $zero, lbl_809A2460   
    lui     t0, %hi(var_809A5018)      ## t0 = 809A0000
    lw      v1, 0x1C44(a2)             ## 00001C44
    sw      t8, 0x0268(t9)             ## 00000268
    addiu   t0, t0, %lo(var_809A5018)  ## t0 = 809A5018
    sw      t0, 0x1D68(a2)             ## 00001D68
    addiu   t1, $zero, 0x0002          ## t1 = 00000002
    sb      t1, 0x1414(v0)             ## 8011B9E4
    or      a0, a2, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0069          ## a1 = 00000069
    jal     func_8006FDCC              
    sw      v1, 0x001C($sp)            
    lw      t2, 0x0028($sp)            
    ori     $at, $zero, 0x8000         ## $at = 00008000
    lw      v1, 0x001C($sp)            
    lh      v0, 0x0032(t2)             ## 00000032
    addu    v0, v0, $at                
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x00B6(v1)             ## 000000B6
    sh      v0, 0x0032(v1)             ## 00000032
lbl_809A2460:
    lw      $ra, 0x0014($sp)           
lbl_809A2464:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2470:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_809A24B4    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1D90(a1)             ## 00001D90
    beql    v0, $zero, lbl_809A24B4    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             ## 00000000
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    bnel    v1, t7, lbl_809A24B4       
    lw      $ra, 0x0014($sp)           
    sw      v1, 0x0268(a0)             ## 00000268
    jal     func_809A22DC              
    sw      t8, 0x026C(a0)             ## 0000026C
    lw      $ra, 0x0014($sp)           
lbl_809A24B4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A24C0:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    lwc1    $f4, 0x00BC(a0)            ## 000000BC
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_809A24E4               
    nop
    sw      t6, 0x0268(a0)             ## 00000268
    swc1    $f0, 0x00BC(a0)            ## 000000BC
lbl_809A24E4:
    jr      $ra                        
    nop


func_809A24EC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_809A2574    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D90(a1)             ## 00001D90
    beql    v0, $zero, lbl_809A2574    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t7, $at, lbl_809A2574      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x274C             ## a0 = 0600274C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x274C             ## a1 = 0600274C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    sw      t9, 0x0268(t0)             ## 00000268
    lw      $ra, 0x0024($sp)           
lbl_809A2574:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2580:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809A25DC    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2B4C             ## a0 = 06002B4C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x2B4C             ## a1 = 06002B4C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0268(t7)             ## 00000268
lbl_809A25DC:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A25EC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_809A262C    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1DA4(a1)             ## 00001DA4
    beql    v0, $zero, lbl_809A262C    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   t8, $zero, 0x0006          ## t8 = 00000006
    bnel    t7, $at, lbl_809A262C      
    lw      $ra, 0x0014($sp)           
    jal     func_809A2338              
    sw      t8, 0x0268(a0)             ## 00000268
    lw      $ra, 0x0014($sp)           
lbl_809A262C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2638:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809A23D4              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2658:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809A2470              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2678:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_809A23B4              
    lw      a0, 0x0018($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    jal     func_809A24C0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A26B4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A24EC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A26FC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809A1FD8              
    lw      a0, 0x0020($sp)            
    jal     func_809A2020              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809A2580              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2740:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A25EC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2788:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a0, 0x0018($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A27BC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0410             ## a1 = 06000410
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0007          ## t6 = 00000007
    sw      t6, 0x0268(a0)             ## 00000268
    sb      $zero, 0x00C8(a0)          ## 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A2800:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x4834          ## a0 = 00004834
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2820:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    or      a2, a1, $zero              ## a2 = 00000000
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f4, 0x0024(a1)            ## 00000024
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x41B0                ## $at = 41B00000
    lh      t7, 0x147E(t6)             ## 8012147E
    mtc1    $at, $f10                  ## $f10 = 22.00
    lwc1    $f18, 0x0028(a1)           ## 00000028
    mtc1    t7, $f6                    ## $f6 = 0.00
    addiu   t8, $zero, 0x0007          ## t8 = 00000007
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    cvt.s.w $f8, $f6                   
    addiu   a3, $zero, 0x00F5          ## a3 = 000000F5
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(a1)            ## 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800253F0              
    swc1    $f6, 0x0018($sp)           
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A28A0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_809A20EC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809A28E4    
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t6, 0x0268(a0)             ## 00000268
    sw      t7, 0x026C(a0)             ## 0000026C
    sw      $zero, 0x0274(a0)          ## 00000274
    sb      $zero, 0x00C8(a0)          ## 000000C8
    jal     func_809A2800              
    swc1    $f4, 0x0270(a0)            ## 00000270
lbl_809A28E4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A28F4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_809A20EC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809A29A4    
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    lui     $at, 0x3F80                ## $at = 3F800000
    addiu   v0, a0, 0x0270             ## v0 = 00000270
    lwc1    $f4, 0x0000(v0)            ## 00000270
    mtc1    $at, $f6                   ## $f6 = 1.00
    lui     a1, 0x8012                 ## a1 = 80120000
    addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
    add.s   $f8, $f4, $f6              
    addiu   t8, $zero, 0x0009          ## t8 = 00000009
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    swc1    $f8, 0x0000(v0)            ## 00000270
    lw      t6, 0x0000(a1)             ## 8011BA00
    lwc1    $f0, 0x0000(v0)            ## 00000270
    lh      t7, 0x145E(t6)             ## 0000145E
    mtc1    t7, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f2            
    c.le.s  $f18, $f0                  
    nop
    bc1f    lbl_809A29EC               
    nop
    sw      t8, 0x0268(a0)             ## 00000268
    sw      t9, 0x026C(a0)             ## 0000026C
    lw      t0, 0x0000(a1)             ## 8011BA00
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    lh      t1, 0x145E(t0)             ## 0000145E
    mtc1    t1, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x0000(v0)            ## 00000270
    sw      v1, 0x0274(a0)             ## 00000274
    beq     $zero, $zero, lbl_809A2A38 
    sb      v1, 0x00C8(a0)             ## 000000C8
lbl_809A29A4:
    addiu   v0, a0, 0x0270             ## v0 = 00000270
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f16                  ## $f16 = 1.00
    lwc1    $f10, 0x0000(v0)           ## 00000270
    mtc1    $zero, $f2                 ## $f2 = 0.00
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0000(v0)           ## 00000270
    lwc1    $f0, 0x0000(v0)            ## 00000270
    c.le.s  $f0, $f2                   
    nop
    bc1f    lbl_809A29EC               
    addiu   t2, $zero, 0x0007          ## t2 = 00000007
    sw      t2, 0x0268(a0)             ## 00000268
    sw      $zero, 0x026C(a0)          ## 0000026C
    swc1    $f2, 0x0000(v0)            ## 00000270
    sw      $zero, 0x0274(a0)          ## 00000274
    beq     $zero, $zero, lbl_809A2A38 
    sb      $zero, 0x00C8(a0)          ## 000000C8
lbl_809A29EC:
    lui     a1, 0x8012                 ## a1 = 80120000
    addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
    lw      t3, 0x0000(a1)             ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    lh      t4, 0x145E(t3)             ## 0000145E
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f16                  ## $f16 = 255.00
    mtc1    t4, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    div.s   $f10, $f0, $f8             
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sw      v0, 0x0274(a0)             ## 00000274
    sb      v0, 0x00C8(a0)             ## 000000C8
lbl_809A2A38:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2A48:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_809A2138              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809A2AD4    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t6, 0x0268(a0)             ## 00000268
    sw      t7, 0x026C(a0)             ## 0000026C
    lui     t8, 0x8012                 ## t8 = 80120000
    lw      t8, -0x4600(t8)            ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lh      t9, 0x145E(t8)             ## 8012145E
    lw      t1, 0x0278(a0)             ## 00000278
    addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
    mtc1    t9, $f4                    ## $f4 = 0.00
    sw      t0, 0x0274(a0)             ## 00000274
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    bne     t1, $zero, lbl_809A2ACC    
    swc1    $f10, 0x0270(a0)           ## 00000270
    lw      a1, 0x001C($sp)            
    jal     func_809A2820              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sw      t2, 0x0278(a0)             ## 00000278
lbl_809A2ACC:
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    sb      t3, 0x00C8(a0)             ## 000000C8
lbl_809A2AD4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2AE4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809A28A0              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2B04:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A28F4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2B4C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A2A48              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2B94:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_809A500C)      ## t1 = 809A0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0264(t6)             ## 00000264
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_809A500C)(t1)  
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t2, 0x8000                 ## t2 = 80000000
    lw      t3, 0x0040($sp)            
    lw      v0, 0x02D0(v1)             ## 000002D0
    sll     t5, t1,  4                 
    srl     t6, t5, 28                 
    lui     t4, 0xDB06                 ## t4 = DB060000
    lui     t8, 0x8012                 ## t8 = 80120000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    addiu   t8, t8, 0x0C38             ## t8 = 80120C38
    ori     t4, t4, 0x0020             ## t4 = DB060020
    sll     t7, t6,  2                 
    addu    a1, t7, t8                 
    sw      t4, 0x0000(v0)             ## 00000000
    lw      t9, 0x0000(a1)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t4, t9, a2                 
    addu    t5, t4, t2                 
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0024             ## t7 = DB060024
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(v1)             ## 000002D0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t8, 0x0000(a1)             ## 00000000
    addiu   t0, t3, 0x013C             ## t0 = 0000013C
    addu    t9, t8, a2                 
    addu    t4, t9, t2                 
    sw      t4, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t6, 0xFB00                 ## t6 = FB000000
    lui     t4, 0xDB06                 ## t4 = DB060000
    addiu   t5, v0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(v1)             ## 000002D0
    sw      t6, 0x0000(v0)             ## 00000000
    lw      t7, 0x0274(t3)             ## 00000274
    ori     t4, t4, 0x0030             ## t4 = DB060030
    andi    t8, t7, 0x00FF             ## t8 = 00000024
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t5, 0x800F                 ## t5 = 800F0000
    addiu   t5, t5, 0x8510             ## t5 = 800E8510
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t4, 0x0000(v0)             ## 00000000
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(v1)             ## 000002D0
    sw      v1, 0x0028($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x0028($sp)            
    sw      v0, 0x02D0(v1)             ## 000002D0
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_809A2CDC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1E7C             ## a1 = 06001E7C
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      t6, 0x0268(a0)             ## 00000268
    sb      $zero, 0x00C8(a0)          ## 000000C8
    lhu     t7, 0x0EE6(v0)             ## 8011B4B6
    ori     t8, t7, 0x0020             ## t8 = 00000020
    sh      t8, 0x0EE6(v0)             ## 8011B4B6
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A2D34:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lhu     t6, 0x1D74(a1)             ## 00001D74
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    bnel    t6, $at, lbl_809A2D60      
    lw      $ra, 0x0014($sp)           
    jal     func_80064780              
    addiu   a1, $zero, 0x685B          ## a1 = 0000685B
    lw      $ra, 0x0014($sp)           
lbl_809A2D60:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2D6C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lhu     t6, 0x1D74(a1)             ## 00001D74
    addiu   $at, $zero, 0x01A4         ## $at = 000001A4
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    bnel    t6, $at, lbl_809A2D98      
    lw      $ra, 0x0014($sp)           
    jal     func_80064780              
    addiu   a1, $zero, 0x685A          ## a1 = 0000685A
    lw      $ra, 0x0014($sp)           
lbl_809A2D98:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2DA4:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_809A2044              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beq     v0, $zero, lbl_809A2E78    
    lw      t6, 0x0044($sp)            
    lhu     a0, 0x0004(v0)             ## 00000004
    lhu     a1, 0x0002(v0)             ## 00000002
    lhu     a2, 0x1D74(t6)             ## 00001D74
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    sw      t7, 0x0010($sp)            
    sw      v0, 0x003C($sp)            
    jal     func_8005C714              
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    lw      v1, 0x003C($sp)            
    lw      v0, 0x0040($sp)            
    lw      t9, 0x0010(v1)             ## 00000010
    lw      t8, 0x000C(v1)             ## 0000000C
    lw      t1, 0x0018(v1)             ## 00000018
    lw      t0, 0x0014(v1)             ## 00000014
    mtc1    t9, $f6                    ## $f6 = 0.00
    lw      t3, 0x0020(v1)             ## 00000020
    mtc1    t8, $f4                    ## $f4 = 0.00
    lw      t2, 0x001C(v1)             ## 0000001C
    mtc1    t1, $f10                   ## $f10 = 0.00
    cvt.s.w $f12, $f6                  
    mtc1    t0, $f8                    ## $f8 = 0.00
    mtc1    t3, $f6                    ## $f6 = 0.00
    addiu   v0, v0, 0x0024             ## v0 = 00000024
    cvt.s.w $f2, $f4                   
    mtc1    t2, $f4                    ## $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f14, $f8                  
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f4                  
    swc1    $f8, 0x0020($sp)           
    sub.s   $f10, $f16, $f2            
    sub.s   $f8, $f18, $f12            
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f6, $f4, $f2              
    add.s   $f4, $f10, $f12            
    swc1    $f6, 0x0000(v0)            ## 00000024
    swc1    $f4, 0x0004(v0)            ## 00000028
    lwc1    $f6, 0x0020($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f4, $f10, $f14            
    swc1    $f4, 0x0008(v0)            ## 0000002C
lbl_809A2E78:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2E88:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_809A206C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    sw      t6, 0x0268(a0)             ## 00000268
    sw      $zero, 0x026C(a0)          ## 0000026C
    sb      $zero, 0x00C8(a0)          ## 000000C8
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_809A2EBC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809A2F0C    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1350             ## a0 = 06001350
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x1350             ## a1 = 06001350
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_809A2F0C:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2F1C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1E7C             ## a0 = 06001E7C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1E7C             ## a1 = 06001E7C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      v0, 0x0028($sp)            
    addiu   t6, $zero, 0x000B          ## t6 = 0000000B
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t6, 0x0268(v0)             ## 00000268
    sw      t7, 0x026C(v0)             ## 0000026C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A2F90:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1104             ## a0 = 06001104
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1104             ## a1 = 06001104
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      v0, 0x0028($sp)            
    addiu   t7, $zero, 0x000C          ## t7 = 0000000C
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sw      t7, 0x0268(v0)             ## 00000268
    sw      t8, 0x026C(v0)             ## 0000026C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3008:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_809A2044              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beql    v0, $zero, lbl_809A30C0    
    lw      $ra, 0x001C($sp)           
    lhu     a2, 0x0000(v0)             ## 00000000
    lw      v1, 0x027C(s0)             ## 0000027C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beql    a2, v1, lbl_809A30C0       
    lw      $ra, 0x001C($sp)           
    beq     a2, $at, lbl_809A3078      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     a2, $at, lbl_809A308C      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     a2, $at, lbl_809A309C      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     a2, $at, lbl_809A30AC      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A30BC 
    sw      a2, 0x027C(s0)             ## 0000027C
lbl_809A3078:
    lw      a1, 0x002C($sp)            
    jal     func_809A2E88              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_809A30B8 
    lw      a2, 0x0020($sp)            
lbl_809A308C:
    jal     func_809A2F1C              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_809A30B8 
    lw      a2, 0x0020($sp)            
lbl_809A309C:
    jal     func_809A2F90              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_809A30B8 
    lw      a2, 0x0020($sp)            
lbl_809A30AC:
    jal     func_80020EB4              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
lbl_809A30B8:
    sw      a2, 0x027C(s0)             ## 0000027C
lbl_809A30BC:
    lw      $ra, 0x001C($sp)           
lbl_809A30C0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A30D0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A2D34              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A3008              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3108:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2D34              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2D6C              
    lw      a1, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3008              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3164:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2EBC              
    or      a1, v0, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2DA4              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3008              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A31C0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x8BD0             ## a1 = 06008BD0
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x000D          ## t6 = 0000000D
    sw      t6, 0x0268(a0)             ## 00000268
    sb      $zero, 0x00C8(a0)          ## 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A3204:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lhu     t6, 0x1D74(a1)             ## 00001D74
    addiu   $at, $zero, 0x0224         ## $at = 00000224
    addiu   a1, $zero, 0x685B          ## a1 = 0000685B
    bne     t6, $at, lbl_809A3238      
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    sw      a0, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80064780              
    addiu   a1, $zero, 0x38A8          ## a1 = 000038A8
lbl_809A3238:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3248:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lbu     t6, 0x013D(a2)             ## 0000013D
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    bne     t6, $at, lbl_809A329C      
    lui     a1, 0x4190                 ## a1 = 41900000
    sw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    sw      a2, 0x0028($sp)            
    bne     v0, $zero, lbl_809A328C    
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x41C8                 ## a1 = 41C80000
    beql    v0, $zero, lbl_809A32A0    
    lw      $ra, 0x0014($sp)           
lbl_809A328C:
    lw      a0, 0x0028($sp)            
    addiu   a1, $zero, 0x2896          ## a1 = 00002896
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
lbl_809A329C:
    lw      $ra, 0x0014($sp)           
lbl_809A32A0:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A32AC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lbu     t6, 0x013D(a2)             ## 0000013D
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    bne     t6, $at, lbl_809A32E8      
    lui     a1, 0x4110                 ## a1 = 41100000
    jal     func_8008D6A8              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_809A32E8    
    lw      a2, 0x0018($sp)            
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x0802          ## a1 = 00000802
lbl_809A32E8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A32F8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    lw      a0, 0x0028($sp)            
    lui     a1, 0x4110                 ## a1 = 41100000
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D6A8              
    sw      a0, 0x001C($sp)            
    bne     v0, $zero, lbl_809A3330    
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4150                 ## a1 = 41500000
    beql    v0, $zero, lbl_809A3344    
    lw      $ra, 0x0014($sp)           
lbl_809A3330:
    lw      a0, 0x0028($sp)            
    addiu   a1, $zero, 0x0802          ## a1 = 00000802
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             ## a0 = 000000E4
    lw      $ra, 0x0014($sp)           
lbl_809A3344:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3350:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0030($sp)            
    lui     t7, 0x8012                 ## t7 = 80120000
    lw      t7, -0x4600(t7)            ## 8011BA00
    lui     $at, 0x41B0                ## $at = 41B00000
    mtc1    $at, $f8                   ## $f8 = 22.00
    lh      t8, 0x147E(t7)             ## 8012147E
    lw      t6, 0x0030($sp)            
    addiu   t9, $zero, 0x000B          ## t9 = 0000000B
    mtc1    t8, $f4                    ## $f4 = 0.00
    lwc1    $f16, 0x0028(t6)           ## 00000028
    lw      a3, 0x0024(t6)             ## 00000024
    cvt.s.w $f6, $f4                   
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    addiu   a2, $zero, 0x00F5          ## a2 = 000000F5
    add.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x002C(t6)            ## 0000002C
    sw      t9, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              ## ActorSpawn
    swc1    $f4, 0x0014($sp)           
    lw      $ra, 0x002C($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A33C8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lbu     t6, 0x0171(a1)             ## 00000171
    addiu   a2, a1, 0x013C             ## a2 = 0000013C
    lui     a3, 0x3F80                 ## a3 = 3F800000
    ori     t7, t6, 0x0001             ## t7 = 00000001
    sb      t7, 0x0171(a1)             ## 00000171
    jal     func_8008B778              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3408:
    addiu   t6, $zero, 0x000D          ## t6 = 0000000D
    sw      t6, 0x0268(a0)             ## 00000268
    sw      $zero, 0x026C(a0)          ## 0000026C
    sb      $zero, 0x00C8(a0)          ## 000000C8
    jr      $ra                        
    nop


func_809A3420:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8BD0             ## a0 = 06008BD0
    mtc1    v0, $f4                    ## $f4 = 0.00
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0044($sp)            
    cvt.s.w $f6, $f4                   
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_809A206C              
    swc1    $f6, 0x0034($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f8, 0x0034($sp)           
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x8BD0             ## a1 = 06008BD0
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    swc1    $f8, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t7, $zero, 0x000E          ## t7 = 0000000E
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sw      t7, 0x0268(s0)             ## 00000268
    sw      t8, 0x026C(s0)             ## 0000026C
    sb      t9, 0x00C8(s0)             ## 000000C8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A34B8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8BD0             ## a0 = 06008BD0
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x8BD0             ## a1 = 06008BD0
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      v1, 0x0028($sp)            
    addiu   t7, $zero, 0x000F          ## t7 = 0000000F
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sw      t7, 0x0268(v1)             ## 00000268
    sw      t8, 0x026C(v1)             ## 0000026C
    sb      t9, 0x00C8(v1)             ## 000000C8
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3534:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809A3590    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x46A8             ## a0 = 060046A8
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x46A8             ## a1 = 060046A8
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x026C(t7)             ## 0000026C
lbl_809A3590:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A35A0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3954             ## a0 = 06003954
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -8.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x3954             ## a1 = 06003954
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v1, 0x0028($sp)            
    addiu   t7, $zero, 0x0010          ## t7 = 00000010
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sw      t7, 0x0268(v1)             ## 00000268
    sw      t8, 0x026C(v1)             ## 0000026C
    sb      t9, 0x00C8(v1)             ## 000000C8
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3620:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809A367C    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x4030             ## a0 = 06004030
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x4030             ## a1 = 06004030
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    sw      t6, 0x026C(t7)             ## 0000026C
lbl_809A367C:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A368C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2DBC             ## a0 = 06002DBC
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -8.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x2DBC             ## a1 = 06002DBC
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v1, 0x0028($sp)            
    addiu   t7, $zero, 0x0011          ## t7 = 00000011
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sw      t7, 0x0268(v1)             ## 00000268
    sw      t8, 0x026C(v1)             ## 0000026C
    sb      t9, 0x00C8(v1)             ## 000000C8
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A370C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809A375C    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x35A8             ## a0 = 060035A8
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x35A8             ## a1 = 060035A8
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_809A375C:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A376C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x0278(a0)             ## 00000278
    bnel    t6, $zero, lbl_809A37A0    
    lw      $ra, 0x0014($sp)           
    beql    a2, $zero, lbl_809A37A0    
    lw      $ra, 0x0014($sp)           
    jal     func_809A3350              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t7, 0x0278(a0)             ## 00000278
    lw      $ra, 0x0014($sp)           
lbl_809A37A0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A37AC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x6320             ## a0 = 06006320
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -8.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x6320             ## a1 = 06006320
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v1, 0x0028($sp)            
    addiu   t7, $zero, 0x0012          ## t7 = 00000012
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sw      t7, 0x0268(v1)             ## 00000268
    sw      t8, 0x026C(v1)             ## 0000026C
    sb      t9, 0x00C8(v1)             ## 000000C8
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A382C:
    addiu   t6, $zero, 0x0013          ## t6 = 00000013
    sw      t6, 0x0268(a0)             ## 00000268
    sw      $zero, 0x026C(a0)          ## 0000026C
    sb      $zero, 0x00C8(a0)          ## 000000C8
    jr      $ra                        
    nop


func_809A3844:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_809A2044              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beql    v0, $zero, lbl_809A391C    
    lw      $ra, 0x001C($sp)           
    lhu     t6, 0x0000(v0)             ## 00000000
    sw      t6, 0x0020($sp)            
    lw      v1, 0x027C(s0)             ## 0000027C
    addiu   t8, t6, 0xFFFF             ## t8 = FFFFFFFF
    sltiu   $at, t8, 0x000E            
    beql    t6, v1, lbl_809A391C       
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_809A3910   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_809A5C9C)     ## $at = 809A0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_809A5C9C)($at) 
    jr      t8                         
    nop
var_809A38A4:
    jal     func_809A3408              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A38B4:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3420              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A38C8:
    jal     func_809A34B8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A38D8:
    jal     func_809A35A0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A38E8:
    jal     func_809A368C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A38F8:
    jal     func_809A37AC              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A3914 
    lw      t9, 0x0020($sp)            
var_809A3908:
    jal     func_809A382C              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809A3910:
    lw      t9, 0x0020($sp)            
lbl_809A3914:
    sw      t9, 0x027C(s0)             ## 0000027C
    lw      $ra, 0x001C($sp)           
lbl_809A391C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A392C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809A3844              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A394C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A33C8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A3844              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3998:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3534              
    or      a1, v0, $zero              ## a1 = 00000000
    jal     func_809A3248              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A33C8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3844              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3A08:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3620              
    or      a1, v0, $zero              ## a1 = 00000000
    jal     func_809A32AC              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A33C8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3844              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3A78:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A370C              
    or      a1, v0, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A33C8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3844              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3AE0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3204              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_809A32F8              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A33C8              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809A376C              
    lw      a2, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3844              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_809A3B68:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x0280(a0)            ## 00000280
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f10                  ## $f10 = 60.00
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0280(a0)            ## 00000280
    lwc1    $f16, 0x0280(a0)           ## 00000280
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_809A3BB0               
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_809A3BB0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3BBC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    sw      a0, 0x002C($sp)            
    lw      v1, 0x002C($sp)            
    lui     t3, 0x8000                 ## t3 = 80000000
    lw      t4, 0x0038($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xD8E8             ## a1 = 0600D8E8
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(v1)             ## 000002C0
    sll     t9, a1,  4                 
    srl     t5, t9, 28                 
    lui     t7, 0x8012                 ## t7 = 80120000
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, t7, 0x0C38             ## t7 = 80120C38
    sll     t6, t5,  2                 
    addu    a2, t6, t7                 
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t8, 0x0000(a2)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a3, a1, $at                
    addu    t9, t8, a3                 
    addu    t5, t9, t3                 
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0024             ## t7 = DB060024
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t8, 0x0000(a2)             ## 00000000
    addu    t9, t8, a3                 
    addu    t5, t9, t3                 
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xFB00                 ## t7 = FB000000
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    sw      t8, 0x0004(v0)             ## 00000004
    sw      t7, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t5, 0xDB06                 ## t5 = DB060000
    lui     t6, 0x800F                 ## t6 = 800F0000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    addiu   t6, t6, 0x8520             ## t6 = 800E8520
    ori     t5, t5, 0x0030             ## t5 = DB060030
    sw      t5, 0x0000(v0)             ## 00000000
    sw      t6, 0x0004(v0)             ## 00000004
    addiu   v0, t4, 0x013C             ## v0 = 0000013C
    lw      a1, 0x0004(v0)             ## 00000140
    lw      a2, 0x0020(v0)             ## 0000015C
    lbu     a3, 0x0002(v0)             ## 0000013E
    sw      t4, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3CD8:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_809A3CF8      
    or      v0, $zero, $zero           ## v0 = 00000000
    lui     t6, 0x0601                 ## t6 = 06010000
    addiu   t6, t6, 0x3158             ## t6 = 06013158
    sw      t6, 0x0000(a2)             ## 00000000
lbl_809A3CF8:
    jr      $ra                        
    nop


func_809A3D00:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_809A500C)      ## t1 = 809A0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0264(t6)             ## 00000264
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_809A500C)(t1)  
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t3, 0x8000                 ## t3 = 80000000
    lw      t4, 0x0040($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     t5, 0xDB06                 ## t5 = DB060000
    ori     t5, t5, 0x0020             ## t5 = DB060020
    addiu   t9, t9, 0x0C38             ## t9 = 80120C38
    sll     t8, t7,  2                 
    addu    a1, t8, t9                 
    sw      t5, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0024             ## t9 = DB060024
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t9, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    addiu   t0, t4, 0x013C             ## t0 = 0000013C
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    lui     t8, 0x800F                 ## t8 = 800F0000
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    addiu   t8, t8, 0x8520             ## t8 = 800E8520
    ori     t7, t7, 0x0030             ## t7 = DB060030
    sw      t7, 0x0000(v0)             ## 00000000
    sw      t8, 0x0004(v0)             ## 00000004
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    lui     t9, %hi(func_809A3CD8)     ## t9 = 809A0000
    addiu   t9, t9, %lo(func_809A3CD8) ## t9 = 809A3CD8
    sw      t9, 0x0010($sp)            
    sw      t4, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3E3C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0BC0             ## a1 = 06000BC0
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0014          ## t6 = 00000014
    sw      t6, 0x0268(a0)             ## 00000268
    sw      $zero, 0x026C(a0)          ## 0000026C
    sb      $zero, 0x00C8(a0)          ## 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A3E84:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x0270(a0)            ## 00000270
    lui     t6, 0x8012                 ## t6 = 80120000
    lui     $at, 0x4120                ## $at = 41200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f18                  ## $f18 = 10.00
    addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
    swc1    $f8, 0x0270(a0)            ## 00000270
    lw      t6, -0x4600(t6)            ## 8011BA00
    lwc1    $f4, 0x0270(a0)            ## 00000270
    lh      t7, 0x1476(t6)             ## 80121476
    mtc1    t7, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f0, $f16, $f18            
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_809A3EE4               
    lwc1    $f6, 0x0270(a0)            ## 00000270
    sw      v0, 0x0274(a0)             ## 00000274
    jr      $ra                        
    sb      v0, 0x00C8(a0)             ## 000000C8
lbl_809A3EE0:
    lwc1    $f6, 0x0270(a0)            ## 00000270
lbl_809A3EE4:
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f10                  ## $f10 = 255.00
    div.s   $f8, $f6, $f0              
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sw      v0, 0x0274(a0)             ## 00000274
    sb      v0, 0x00C8(a0)             ## 000000C8
    jr      $ra                        
    nop


func_809A3F10:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_809A2184              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0015          ## t6 = 00000015
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t6, 0x0268(a0)             ## 00000268
    sw      t7, 0x026C(a0)             ## 0000026C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A3F48:
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f10                  ## $f10 = 10.00
    lh      t7, 0x1476(t6)             ## 80121476
    lwc1    $f4, 0x0270(a0)            ## 00000270
    addiu   t8, $zero, 0x0016          ## t8 = 00000016
    mtc1    t7, $f6                    ## $f6 = 0.00
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    c.le.s  $f16, $f4                  
    nop
    bc1f    lbl_809A3F8C               
    nop
    sw      t8, 0x0268(a0)             ## 00000268
    sw      t9, 0x026C(a0)             ## 0000026C
lbl_809A3F8C:
    jr      $ra                        
    nop


func_809A3F94:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5CA4             ## a1 = 06005CA4
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0017          ## t6 = 00000017
    sw      t6, 0x0268(t7)             ## 00000268
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_809A3FD4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_809A3FF8    
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x5614             ## a1 = 06005614
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
lbl_809A3FF8:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4008:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_809A2044              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beq     v0, $zero, lbl_809A4084    
    lw      a0, 0x0020($sp)            
    lhu     a2, 0x0000(v0)             ## 00000000
    lw      v1, 0x027C(a0)             ## 0000027C
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    beql    a2, v1, lbl_809A4088       
    lw      $ra, 0x0014($sp)           
    beq     a2, $at, lbl_809A405C      
    lw      a1, 0x0024($sp)            
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    beq     a2, $at, lbl_809A4070      
    nop
    beq     $zero, $zero, lbl_809A4084 
    sw      a2, 0x027C(a0)             ## 0000027C
lbl_809A405C:
    jal     func_809A3F10              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    beq     $zero, $zero, lbl_809A4080 
    lw      a0, 0x0020($sp)            
lbl_809A4070:
    jal     func_809A3F94              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
lbl_809A4080:
    sw      a2, 0x027C(a0)             ## 0000027C
lbl_809A4084:
    lw      $ra, 0x0014($sp)           
lbl_809A4088:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4094:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809A4008              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A40B4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_809A1FD8              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3E84              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3F48              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4100:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A1FD8              
    lw      a1, 0x001C($sp)            
    jal     func_809A2020              
    lw      a0, 0x0018($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809A4008              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4148:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809A1FD8              
    lw      a0, 0x0020($sp)            
    jal     func_809A2020              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_809A1F50              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809A3FD4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A418C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     t6, 0x0EE6(v0)             ## 8011B4B6
    andi    t7, t6, 0x0020             ## t7 = 00000000
    bne     t7, $zero, lbl_809A426C    
    nop
    lw      t8, 0x0004(v0)             ## 8011A5D4
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t8, $at, lbl_809A426C      
    nop
    jal     func_809A1BB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t9, 0x0EE6(v0)             ## 8011B4B6
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4BB4             ## a1 = 06004BB4
    andi    t0, t9, 0x0010             ## t0 = 00000000
    bne     t0, $zero, lbl_809A421C    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x6E78             ## a1 = 06006E78
    or      a0, s0, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    addiu   t1, $zero, 0x0018          ## t1 = 00000018
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sw      t1, 0x0268(s0)             ## 00000268
    beq     $zero, $zero, lbl_809A4274 
    sw      t2, 0x026C(s0)             ## 0000026C
lbl_809A421C:
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02E0(s0)             ## 000002E0
    lw      t3, 0x0004(s0)             ## 00000004
    lw      t5, 0x02E4(s0)             ## 000002E4
    sw      t6, 0x0024(s0)             ## 00000024
    lw      t6, 0x02E8(s0)             ## 000002E8
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    addiu   t7, $zero, 0x001D          ## t7 = 0000001D
    ori     t4, t3, 0x0009             ## t4 = 00000009
    sw      v0, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0004(s0)             ## 00000004
    sw      t7, 0x0268(s0)             ## 00000268
    sw      v0, 0x026C(s0)             ## 0000026C
    sw      t5, 0x0028(s0)             ## 00000028
    sw      t6, 0x002C(s0)             ## 0000002C
    beq     $zero, $zero, lbl_809A4278 
    lw      $ra, 0x0024($sp)           
lbl_809A426C:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809A4274:
    lw      $ra, 0x0024($sp)           
lbl_809A4278:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4288:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     t6, 0x02EE(s0)             ## 000002EE
    lui     t8, 0x8012                 ## t8 = 80120000
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    sh      t7, 0x02EE(s0)             ## 000002EE
    lw      t8, -0x4600(t8)            ## 8011BA00
    addiu   a3, $zero, 0x0003          ## a3 = 00000003
    addiu   t2, $zero, 0x0003          ## t2 = 00000003
    lh      t9, 0x1476(t8)             ## 80121476
    addiu   t0, t9, 0x0019             ## t0 = 00000019
    andi    t1, t0, 0xFFFF             ## t1 = 00000019
    sw      t1, 0x002C($sp)            
    lhu     a2, 0x02EE(s0)             ## 000002EE
    lhu     a0, 0x002E($sp)            
    slt     $at, t1, a2                
    bnel    $at, $zero, lbl_809A433C   
    lw      $ra, 0x0024($sp)           
    jal     func_8005C714              
    sw      t2, 0x0010($sp)            
    addiu   v1, s0, 0x02D4             ## v1 = 000002D4
    addiu   a0, s0, 0x02E0             ## a0 = 000002E0
    lwc1    $f4, 0x0000(a0)            ## 000002E0
    lwc1    $f2, 0x0000(v1)            ## 000002D4
    addiu   v0, s0, 0x0024             ## v0 = 00000024
    sub.s   $f6, $f4, $f2              
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f2, $f8             
    swc1    $f10, 0x0000(v0)           ## 00000024
    lwc1    $f16, 0x0004(a0)           ## 000002E4
    lwc1    $f12, 0x0004(v1)           ## 000002D8
    sub.s   $f18, $f16, $f12           
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f12, $f4             
    swc1    $f6, 0x0004(v0)            ## 00000028
    lwc1    $f8, 0x0008(a0)            ## 000002E8
    lwc1    $f14, 0x0008(v1)           ## 000002DC
    sub.s   $f10, $f8, $f14            
    mul.s   $f16, $f0, $f10            
    add.s   $f18, $f14, $f16           
    swc1    $f18, 0x0008(v0)           ## 0000002C
    lw      $ra, 0x0024($sp)           
lbl_809A433C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A434C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x685C          ## a1 = 0000685C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4374:
    lw      v0, 0x1C44(a1)             ## 00001C44
    lwc1    $f12, 0x0024(a0)           ## 00000024
    lwc1    $f14, 0x002C(a0)           ## 0000002C
    lwc1    $f0, 0x0024(v0)            ## 00000024
    lwc1    $f2, 0x002C(v0)            ## 0000002C
    lui     $at, 0x45C8                ## $at = 45C80000
    sub.s   $f16, $f0, $f12            
    mtc1    $at, $f10                  ## $f10 = 6400.00
    or      v0, $zero, $zero           ## v0 = 00000000
    sub.s   $f18, $f2, $f14            
    mul.s   $f4, $f16, $f16            
    nop
    mul.s   $f6, $f18, $f18            
    add.s   $f8, $f4, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_809A43C4               
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809A43C4:
    jr      $ra                        
    nop


func_809A43CC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    lhu     v0, 0x02EE(s0)             ## 000002EE
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    lh      a1, 0x1476(t6)             ## 80121476
    or      v1, v0, $zero              ## v1 = 00000000
    addiu   a1, a1, 0x0019             ## a1 = 00000019
    andi    a1, a1, 0xFFFF             ## a1 = 00000019
    addiu   t7, a1, 0xFFFC             ## t7 = 00000015
    andi    t8, t7, 0xFFFF             ## t8 = 00000015
    slt     $at, v0, t8                
    beq     $at, $zero, lbl_809A4444   
    subu    a2, a1, v1                 
    subu    a2, t9, v0                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    blez    a2, lbl_809A4468           
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lh      a1, 0x02EC(s0)             ## 000002EC
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    sw      t0, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    beq     $zero, $zero, lbl_809A446C 
    lw      $ra, 0x0024($sp)           
lbl_809A4444:
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    blez    a2, lbl_809A4468           
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lh      a1, 0x0016(s0)             ## 00000016
    addiu   t1, $zero, 0x0064          ## t1 = 00000064
    sw      t1, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
lbl_809A4468:
    lw      $ra, 0x0024($sp)           
lbl_809A446C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A447C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809A4374              
    lw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_809A44C4    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4E60             ## a1 = 06004E60
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0019          ## t6 = 00000019
    sw      t6, 0x0268(t7)             ## 00000268
    jal     func_809A434C              
    lw      a0, 0x0020($sp)            
lbl_809A44C4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A44D4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_809A451C    
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4BB4             ## a1 = 06004BB4
    lui     a3, 0xC100                 ## a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t9, $zero, 0x001A          ## t9 = 0000001A
    lw      t7, 0x0004(a0)             ## 00000004
    sw      t6, 0x02D0(a0)             ## 000002D0
    sw      t9, 0x0268(a0)             ## 00000268
    ori     t8, t7, 0x0009             ## t8 = 00000009
    sw      t8, 0x0004(a0)             ## 00000004
lbl_809A451C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A452C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809A455C    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x001B          ## t6 = 0000001B
    sw      t6, 0x0268(a0)             ## 00000268
    beq     $zero, $zero, lbl_809A459C 
    lw      $ra, 0x0014($sp)           
lbl_809A455C:
    lw      t7, 0x0004(a0)             ## 00000004
    lui     t9, 0x8012                 ## t9 = 80120000
    addiu   t1, $zero, 0x601D          ## t1 = 0000601D
    ori     t8, t7, 0x0009             ## t8 = 00000009
    sw      t8, 0x0004(a0)             ## 00000004
    lhu     t9, -0x4B0C(t9)            ## 8011B4F4
    addiu   t2, $zero, 0x6024          ## t2 = 00006024
    andi    t0, t9, 0x1000             ## t0 = 00000000
    bnel    t0, $zero, lbl_809A4590    
    sh      t2, 0x010E(a0)             ## 0000010E
    beq     $zero, $zero, lbl_809A4590 
    sh      t1, 0x010E(a0)             ## 0000010E
    sh      t2, 0x010E(a0)             ## 0000010E
lbl_809A4590:
    jal     func_80022A90              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_809A459C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A45A8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x4E60             ## a1 = 06004E60
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lui     a3, 0xC100                 ## a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EE6(v0)             ## 8011B4B6
    lw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    ori     t7, t6, 0x0010             ## t7 = 00000010
    sh      t7, 0x0EE6(v0)             ## 8011B4B6
    lw      t9, 0x0004(a0)             ## 00000004
    addiu   t8, $zero, 0x001C          ## t8 = 0000001C
    sw      t8, 0x0268(a0)             ## 00000268
    and     t0, t9, $at                
    sw      t0, 0x0004(a0)             ## 00000004
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4610:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lw      a0, 0x0034($sp)            
    lhu     t6, 0x010E(a2)             ## 0000010E
    sw      a2, 0x0030($sp)            
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    sw      a0, 0x0018($sp)            
    jal     func_800DD464              
    sh      t6, 0x0022($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      a0, 0x0018($sp)            
    bne     v0, $at, lbl_809A46A8      
    lw      a2, 0x0030($sp)            
    lhu     v0, 0x0022($sp)            
    addiu   $at, $zero, 0x6025         ## $at = 00006025
    or      a0, a2, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_809A4674      
    addiu   t9, $zero, 0x001A          ## t9 = 0000001A
    lw      a1, 0x0034($sp)            
    jal     func_809A45A8              
    sw      a2, 0x0030($sp)            
    beq     $zero, $zero, lbl_809A4694 
    lw      a2, 0x0030($sp)            
lbl_809A4674:
    addiu   $at, $zero, 0x6027         ## $at = 00006027
    bne     v0, $at, lbl_809A4690      
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t7, 0x0F24(v0)             ## 8011B4F4
    ori     t8, t7, 0x1000             ## t8 = 00001000
    sh      t8, 0x0F24(v0)             ## 8011B4F4
lbl_809A4690:
    sw      t9, 0x0268(a2)             ## 00000268
lbl_809A4694:
    lw      t0, 0x0004(a2)             ## 00000004
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    and     t1, t0, $at                
    beq     $zero, $zero, lbl_809A476C 
    sw      t1, 0x0004(a2)             ## 00000004
lbl_809A46A8:
    jal     func_800DD464              
    sw      a2, 0x0030($sp)            
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_809A476C      
    lw      a2, 0x0030($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_800D6110              
    sw      a2, 0x0030($sp)            
    beq     v0, $zero, lbl_809A476C    
    lw      a2, 0x0030($sp)            
    lw      t2, 0x0034($sp)            
    lhu     v0, 0x0022($sp)            
    lui     v1, 0x0001                 ## v1 = 00010000
    addiu   $at, $zero, 0x601D         ## $at = 0000601D
    addu    v1, v1, t2                 
    bne     v0, $at, lbl_809A4720      
    lbu     v1, 0x04BD(v1)             ## 000104BD
    beq     v1, $zero, lbl_809A4708    
    addiu   t3, $zero, 0x601E          ## t3 = 0000601E
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v1, $at, lbl_809A4710      
    addiu   t4, $zero, 0x601F          ## t4 = 0000601F
    beq     $zero, $zero, lbl_809A4718 
    addiu   t5, $zero, 0x6020          ## t5 = 00006020
lbl_809A4708:
    beq     $zero, $zero, lbl_809A4760 
    sh      t3, 0x010E(a2)             ## 0000010E
lbl_809A4710:
    beq     $zero, $zero, lbl_809A4760 
    sh      t4, 0x010E(a2)             ## 0000010E
lbl_809A4718:
    beq     $zero, $zero, lbl_809A4760 
    sh      t5, 0x010E(a2)             ## 0000010E
lbl_809A4720:
    addiu   $at, $zero, 0x6020         ## $at = 00006020
    bne     v0, $at, lbl_809A4748      
    nop
    bne     v1, $zero, lbl_809A4740    
    addiu   t7, $zero, 0x6022          ## t7 = 00006022
    addiu   t6, $zero, 0x6021          ## t6 = 00006021
    beq     $zero, $zero, lbl_809A4760 
    sh      t6, 0x010E(a2)             ## 0000010E
lbl_809A4740:
    beq     $zero, $zero, lbl_809A4760 
    sh      t7, 0x010E(a2)             ## 0000010E
lbl_809A4748:
    bne     v1, $zero, lbl_809A475C    
    addiu   t9, $zero, 0x6027          ## t9 = 00006027
    addiu   t8, $zero, 0x6025          ## t8 = 00006025
    beq     $zero, $zero, lbl_809A4760 
    sh      t8, 0x010E(a2)             ## 0000010E
lbl_809A475C:
    sh      t9, 0x010E(a2)             ## 0000010E
lbl_809A4760:
    lw      a0, 0x0034($sp)            
    jal     func_800DCE80              
    lhu     a1, 0x010E(a2)             ## 0000010E
lbl_809A476C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A477C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    lhu     v0, 0x02EE(a0)             ## 000002EE
    lui     a1, 0x0600                 ## a1 = 06000000
    lh      t7, 0x1476(t6)             ## 80121476
    addiu   a1, a1, 0x4BB4             ## a1 = 06004BB4
    lui     a3, 0xC100                 ## a3 = C1000000
    addiu   t8, t7, 0x0019             ## t8 = 00000019
    andi    t9, t8, 0xFFFF             ## t9 = 00000019
    slt     $at, v0, t9                
    beql    $at, $zero, lbl_809A47E0   
    or      a2, $zero, $zero           ## a2 = 00000000
    beq     a2, $zero, lbl_809A47F8    
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9238             ## a1 = 06009238
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_809A2204              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_809A47FC 
    lw      $ra, 0x001C($sp)           
    or      a2, $zero, $zero           ## a2 = 00000000
lbl_809A47E0:
    sw      $zero, 0x0010($sp)         
    jal     func_809A2204              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t0, $zero, 0x001D          ## t0 = 0000001D
    sw      t0, 0x0268(a0)             ## 00000268
lbl_809A47F8:
    lw      $ra, 0x001C($sp)           
lbl_809A47FC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4808:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    lw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_809A4840    
    lw      a2, 0x0018($sp)            
    addiu   t6, $zero, 0x001E          ## t6 = 0000001E
    sw      t6, 0x0268(a2)             ## 00000268
    beq     $zero, $zero, lbl_809A4884 
    lw      $ra, 0x0014($sp)           
lbl_809A4840:
    lw      t7, 0x0004(a2)             ## 00000004
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    ori     t8, t7, 0x0009             ## t8 = 00000009
    sw      t8, 0x0004(a2)             ## 00000004
    sw      a2, 0x0018($sp)            
    jal     func_800597C0              
    lw      a0, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    andi    t9, v0, 0xFFFF             ## t9 = 00000000
    bne     t9, $zero, lbl_809A4874    
    sh      v0, 0x010E(a2)             ## 0000010E
    addiu   t0, $zero, 0x6026          ## t0 = 00006026
    sh      t0, 0x010E(a2)             ## 0000010E
lbl_809A4874:
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_80022A90              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_809A4884:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4890:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a1, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     v0, $at, lbl_809A48CC      
    lw      a2, 0x0018($sp)            
    lw      t7, 0x0004(a2)             ## 00000004
    addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
    addiu   t6, $zero, 0x001D          ## t6 = 0000001D
    and     t8, t7, $at                
    sw      t6, 0x0268(a2)             ## 00000268
    sw      t8, 0x0004(a2)             ## 00000004
lbl_809A48CC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A48DC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x0024($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A447C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4938:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x002C($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A44D4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4998:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D9C              
    lw      a1, 0x0024($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A452C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4A00:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D9C              
    lw      a1, 0x0024($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A4610              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4A68:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_809A4288              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A43CC              
    lw      a1, 0x002C($sp)            
    jal     func_809A1EAC              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_809A477C              
    lw      a2, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4AE8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D9C              
    lw      a1, 0x0024($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A4808              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4B50:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1FD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1D2C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1E24              
    lw      a1, 0x0024($sp)            
    jal     func_809A2020              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1F50              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A4890              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4BB8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0268(a0)             ## 00000268
    bltz    v0, lbl_809A4BF0           
    slti    $at, v0, 0x001F            
    beq     $at, $zero, lbl_809A4BF0   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809A5BC8)      ## v1 = 809A0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809A5BC8)(v1)  
    beql    v1, $zero, lbl_809A4BF4    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809A4BF0:
    lw      $ra, 0x0014($sp)           
lbl_809A4BF4:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4C00:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A1CE0              
    or      a1, s1, $zero              ## a1 = 00000000
    lui     a2, 0x0602                 ## a2 = 06020000
    addiu   t6, s0, 0x0180             ## t6 = 00000180
    addiu   t7, s0, 0x01F2             ## t7 = 000001F2
    addiu   t8, $zero, 0x0013          ## t8 = 00000013
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x81C8             ## a2 = 060181C8
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    jal     func_8008C788              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_809A1BA4              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, v0, 0xFFFE             ## t9 = FFFFFFFE
    sltiu   $at, t9, 0x0005            
    beq     $at, $zero, lbl_809A4CFC   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_809A5CD4)     ## $at = 809A0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_809A5CD4)($at) 
    jr      t9                         
    nop
var_809A4C98:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A27BC              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809A4D0C 
    lw      $ra, 0x002C($sp)           
var_809A4CAC:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2CDC              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809A4D0C 
    lw      $ra, 0x002C($sp)           
var_809A4CC0:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A31C0              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809A4D0C 
    lw      $ra, 0x002C($sp)           
var_809A4CD4:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A3E3C              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809A4D0C 
    lw      $ra, 0x002C($sp)           
var_809A4CE8:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A418C              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_809A4D0C 
    lw      $ra, 0x002C($sp)           
lbl_809A4CFC:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809A2294              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_809A4D0C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_809A4D1C:
    sw      a0, 0x0000($sp)            
    lw      a0, 0x0014($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    lw      t6, 0x02D0(a0)             ## 000002D0
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beql    t6, $zero, lbl_809A4DA4    
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     a1, $at, lbl_809A4D70      
    lw      v1, 0x0010($sp)            
    addiu   v0, a0, 0x02F0             ## v0 = 000002F0
    lh      t8, 0x0010(v0)             ## 00000300
    lh      t7, 0x0000(v1)             ## 00000000
    lh      t0, 0x0002(v1)             ## 00000002
    addu    t9, t7, t8                 
    sh      t9, 0x0000(v1)             ## 00000000
    lh      t1, 0x000E(v0)             ## 000002FE
    subu    t2, t0, t1                 
    sh      t2, 0x0002(v1)             ## 00000002
    beq     $zero, $zero, lbl_809A4DA4 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809A4D70:
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_809A4DA0      
    lw      v1, 0x0010($sp)            
    addiu   v0, a0, 0x02F0             ## v0 = 000002F0
    lh      t4, 0x000A(v0)             ## 000002FA
    lh      t3, 0x0000(v1)             ## 00000000
    lh      t6, 0x0004(v1)             ## 00000004
    addu    t5, t3, t4                 
    sh      t5, 0x0000(v1)             ## 00000000
    lh      t7, 0x0008(v0)             ## 000002F8
    addu    t8, t6, t7                 
    sh      t8, 0x0004(v1)             ## 00000004
lbl_809A4DA0:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809A4DA4:
    jr      $ra                        
    nop


func_809A4DAC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_809A4E28      
    addiu   a0, $sp, 0x0028            ## a0 = FFFFFFF0
    lui     t6, %hi(var_809A5C44)      ## t6 = 809A0000
    addiu   t6, t6, %lo(var_809A5C44)  ## t6 = 809A5C44
    lw      t8, 0x0000(t6)             ## 809A5C44
    addiu   a1, $sp, 0x001C            ## a1 = FFFFFFE4
    sw      t8, 0x0000(a0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 809A5C48
    sw      t7, 0x0004(a0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 809A5C4C
    jal     func_800AB958              
    sw      t8, 0x0008(a0)             ## FFFFFFF8
    lw      v0, 0x0048($sp)            
    lwc1    $f4, 0x001C($sp)           
    lh      t9, 0x0030(v0)             ## 00000030
    swc1    $f4, 0x0038(v0)            ## 00000038
    lwc1    $f6, 0x0020($sp)           
    lh      t0, 0x0032(v0)             ## 00000032
    lh      t1, 0x0034(v0)             ## 00000034
    swc1    $f6, 0x003C(v0)            ## 0000003C
    lwc1    $f8, 0x0024($sp)           
    sh      t9, 0x0044(v0)             ## 00000044
    sh      t0, 0x0046(v0)             ## 00000046
    sh      t1, 0x0048(v0)             ## 00000048
    swc1    $f8, 0x0040(v0)            ## 00000040
lbl_809A4E28:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4E38:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809A4E48:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_809A500C)      ## t1 = 809A0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0264(t6)             ## 00000264
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_809A500C)(t1)  
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t3, 0x8000                 ## t3 = 80000000
    lw      t4, 0x0040($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     t5, 0xDB06                 ## t5 = DB060000
    ori     t5, t5, 0x0020             ## t5 = DB060020
    addiu   t9, t9, 0x0C38             ## t9 = 80120C38
    sll     t8, t7,  2                 
    addu    a1, t8, t9                 
    sw      t5, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0024             ## t9 = DB060024
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t9, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    addiu   t0, t4, 0x013C             ## t0 = 0000013C
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    lui     t8, 0x800F                 ## t8 = 800F0000
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    addiu   t8, t8, 0x8520             ## t8 = 800E8520
    ori     t7, t7, 0x0030             ## t7 = DB060030
    sw      t7, 0x0000(v0)             ## 00000000
    sw      t8, 0x0004(v0)             ## 00000004
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    lui     t9, %hi(func_809A4D1C)     ## t9 = 809A0000
    lui     t5, %hi(func_809A4DAC)     ## t5 = 809A0000
    addiu   t5, t5, %lo(func_809A4DAC) ## t5 = 809A4DAC
    addiu   t9, t9, %lo(func_809A4D1C) ## t9 = 809A4D1C
    sw      t9, 0x0010($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A4F8C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x026C(a0)             ## 0000026C
    bltz    v0, lbl_809A4FC4           
    slti    $at, v0, 0x0005            
    beq     $at, $zero, lbl_809A4FC4   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809A5C50)      ## v1 = 809A0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809A5C50)(v1)  
    beql    v1, $zero, lbl_809A4FC8    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809A4FC4:
    lw      $ra, 0x0014($sp)           
lbl_809A4FC8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809A4FE0: .word \
0x00000009, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_809A500C: .word 0x0600B428, 0x0600D0E8, 0x0600D4E8
var_809A5018: .word \
0x0000001B, 0x00000BC3, 0x00000020, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001F, 0x00000005, 0x00010000, 0x01F50000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000201F5, 0x01F60000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000401F6, 0x023D0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002023D, 0x026D0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0xC032AAAB, 0x00000000, 0x0003026D, 0x0BC30000, \
0x00000000, 0x00000000, 0x00000052, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000000A, 0x00000003, \
0x000D0000, 0x00F00000, 0x15550000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x000500F0, 0x01CD0000, 0x15550000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x001301CD, 0x06500000, 0x95550000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00000031, 0x00000001, 0x00010000, 0x0BB80000, \
0x00000000, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, \
0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, \
0x00000000, 0x00000000, 0x00000004, 0x00000001, \
0x00040000, 0x0BB80000, 0x00000000, 0xFFFFFF9E, \
0x00000000, 0x0000002F, 0xFFFFFF9E, 0x00000000, \
0x0000002F, 0x00000000, 0x00000000, 0x00000000, \
0x00000027, 0x00000001, 0x00010000, 0x0BB80000, \
0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFE, \
0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, \
0x00000000, 0x00000000, 0x00000028, 0x00000003, \
0x00010000, 0x00910000, 0x00000000, 0xFFFFFF9F, \
0x00000006, 0xFFFFFF59, 0xFFFFFF9F, 0x00000006, \
0xFFFFFF59, 0x00000000, 0x00000000, 0x00000000, \
0x00020091, 0x01AF0000, 0x00000000, 0xFFFFFF9F, \
0x00000006, 0xFFFFFF59, 0xFFFFFF9F, 0x00000006, \
0xFFFFFF59, 0x00000000, 0x00000000, 0x00000000, \
0x000301AF, 0x05770000, 0x00000000, 0xFFFFFF9F, \
0x00000006, 0xFFFFFF59, 0xFFFFFF9F, 0x00000006, \
0xFFFFFF59, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x000501F4, 0x02120212, \
0x0000002D, 0x00000001, 0x000101E9, 0x01F301F3, \
0x0000002D, 0x00000001, 0x000102FD, 0x031B031B, \
0x00000013, 0x0000000A, 0xFFFF0000, 0x0159FFFF, \
0xFFFFFFFF, 0x60350159, 0x01610000, 0x00000000, \
0xFFFF0161, 0x0176FFFF, 0xFFFFFFFF, 0x60390176, \
0x018F0000, 0x00000000, 0xFFFF018F, 0x0190FFFF, \
0xFFFFFFFF, 0x603A0190, 0x01A80000, 0x00000000, \
0xFFFF01A8, 0x02F8FFFF, 0xFFFFFFFF, 0x003F02F8, \
0x02FD0000, 0x00000000, 0xFFFF02FD, 0x0339FFFF, \
0xFFFFFFFF, 0x60360339, 0x03430000, 0x00000000, \
0x0000003E, 0x00000001, 0x00040000, 0x0BB80000, \
0x00000000, 0x00000032, 0x00000050, 0x00000038, \
0x00000032, 0x00000050, 0x00000038, 0x00000000, \
0x00000000, 0x00000000, 0x000003E8, 0x00000001, \
0x00600361, 0x038B038B, 0x00000056, 0x00000001, \
0x0044023F, 0x02400000, 0x00000000, 0xFFFFFFEF, \
0x00000000, 0x00000034, 0xFFFFFFEF, 0x00000000, \
0x00000034, 0x00000000, 0x00000000, 0x00000000, \
0x0000007C, 0x00000001, 0x000401DF, 0x02110000, \
0x00000000, 0x00000000, 0xFFFFFFC7, 0x0000005C, \
0x00000000, 0xFFFFFFC7, 0x0000005C, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x016E0000, 0x00000000, 0x42733334, 0xFEF30059, \
0xFE3A00C6, 0x00000000, 0x42733334, 0xFEF30059, \
0xFE3A00C8, 0x00000000, 0x42733334, 0xFEF30059, \
0xFE3A00D7, 0x00000000, 0x42733334, 0xFF21004B, \
0xFE8700E8, 0x00000000, 0x42733334, 0xFFA4001F, \
0xFF6300EA, 0x00000000, 0x42733334, 0x000D000F, \
0x0013013D, 0x00000000, 0x42733334, 0x0031001C, \
0x004D013F, 0x00000000, 0x42733334, 0x004A0014, \
0x007A014E, 0x00000000, 0x424A665D, 0x004A0014, \
0x007A015F, 0x00000000, 0x4235998B, 0x004A0014, \
0x007A0161, 0x00000000, 0x4235998B, 0x004A0014, \
0x007A300A, 0x00000000, 0x4235998B, 0x004A0014, \
0x007A656F, 0xFF000000, 0x4235998B, 0x004A0014, \
0x007A676F, 0x00000001, 0x00010107, 0x09B40000, \
0x00000000, 0x427804AD, 0x00860013, 0x00C600C6, \
0x00000000, 0x427804AD, 0x00860013, 0x00C600C8, \
0x00000000, 0x427804AD, 0x0086002B, 0x00C600D7, \
0x00000000, 0x427804AD, 0x0085003C, 0x00C500E8, \
0x00000000, 0x427804AD, 0x0085003C, 0x00C500EA, \
0x00000000, 0x427804AD, 0x0085003C, 0x00C5013D, \
0xFF000000, 0x427804AD, 0x0085003C, 0x00C5013F, \
0x00000001, 0x0001016B, 0x063B0000, 0x00000000, \
0x42219986, 0x00740015, 0x002D00C6, 0x00000000, \
0x42219986, 0x00740015, 0x002D00C8, 0x00000000, \
0x42219986, 0x00740015, 0x002D00D7, 0x00000000, \
0x42219986, 0x00750018, 0x004500E8, 0x00000000, \
0x42219986, 0x0069002E, 0x007500EA, 0x00000000, \
0x42219986, 0x0069002E, 0x0075013D, 0x00000000, \
0x42219986, 0x0069002E, 0x0075013F, 0xFF000000, \
0x42219986, 0x0069002E, 0x0075002E, 0x00000001, \
0x000101B1, 0x063A0000, 0x00000000, 0x42366658, \
0x008B0021, 0xFF9400C6, 0x00000000, 0x42366658, \
0x008B0021, 0xFF9400C8, 0x00000000, 0x42366658, \
0x008C0051, 0xFF9300D7, 0x00000000, 0x42366658, \
0x008C00FC, 0xFF9300E8, 0x00000000, 0x42726667, \
0x008C00FC, 0xFF9300EA, 0x00000000, 0x42726667, \
0x008C00FC, 0xFF93013D, 0x00000000, 0x42726667, \
0x008C00FC, 0xFF93013F, 0xFF000000, 0x42726667, \
0x008C00FC, 0xFF93002E, 0x00000001, 0x000101F2, \
0x03480000, 0x00000000, 0x42700000, 0x000D0356, \
0x000200C6, 0x00000000, 0x42700000, 0x00090355, \
0x000500C8, 0x00000000, 0x42700000, 0xFFFD0355, \
0x000500D7, 0x00000000, 0x42700000, 0xFFF70355, \
0xFFFA00E8, 0x00000000, 0x42700000, 0xFFFE0354, \
0xFFEF00EA, 0x00000000, 0x42700000, 0x00090354, \
0xFFEF013D, 0x00000000, 0x42700000, 0x00100354, \
0xFFFA013F, 0x00000000, 0x42700000, 0x00090354, \
0x0005002E, 0xFF000000, 0x42700000, 0xFFFD0353, \
0x00050063, 0x00000005, 0x0001023E, 0x06DB0000, \
0x00000000, 0x4289332C, 0x00000021, 0xFFE500C6, \
0x00000000, 0x4289332C, 0x00000021, 0xFFE500C8, \
0x00000000, 0x4289332C, 0x00000044, 0xFFE600D7, \
0x00000000, 0x4289332C, 0x00000067, 0xFFE600E8, \
0x00000000, 0x4289332C, 0x00000067, 0xFFE600EA, \
0x00000000, 0x4289332C, 0x00000067, 0xFFE6013D, \
0x00000000, 0x4289332C, 0x00000067, 0xFFE6013F, \
0xFF000000, 0x4289332C, 0x00000067, 0xFFE6002E, \
0x00000002, 0x00010000, 0x018B0000, 0x0000001E, \
0x42733334, 0xFF730033, 0xFF1100C6, 0x0000001E, \
0x42733334, 0xFF730033, 0xFF1100C8, 0x0000001E, \
0x42733334, 0xFF730034, 0xFF1100D7, 0x0000001E, \
0x42733334, 0xFFA00020, 0xFF5C00E8, 0x0000001E, \
0x42733334, 0x00220013, 0x003800EA, 0x0000001E, \
0x42733334, 0x008A0002, 0x00E6013D, 0x0000001E, \
0x42733334, 0x00A50016, 0x011E013F, 0x00000023, \
0x425F332F, 0x00B50074, 0x013B014E, 0x0000001E, \
0x424A665D, 0x00AF0086, 0x0131015F, 0x0000001E, \
0x4235998B, 0x00AC008E, 0x012C0161, 0x0000001E, \
0x4235998B, 0x00AB008E, 0x012C300A, 0x0000001E, \
0x4235998B, 0x00AB008D, 0x012B656F, 0xFF00001E, \
0x4235998B, 0x00AB008D, 0x012B676F, 0x00000002, \
0x00010107, 0x09D10000, 0x00000046, 0x427804AD, \
0xFFBD0024, 0x001100C6, 0x00000046, 0x427804AD, \
0xFFBD0020, 0x001100C8, 0x00000032, 0x427804AD, \
0xFFBE0022, 0x001200D7, 0x000003E8, 0x427804AD, \
0xFFC40018, 0x001700E8, 0x000003E8, 0x427804AD, \
0xFFC40016, 0x001700EA, 0x0000001E, 0x427804AD, \
0xFFC40013, 0x0017013D, 0xFF00001E, 0x427804AD, \
0xFFC40012, 0x0017013F, 0x00000002, 0x0001016B, \
0x06580000, 0x0000001E, 0x42219986, 0x0022003A, \
0x010D00C6, 0x0000001E, 0x42219986, 0x0022003A, \
0x010D00C8, 0x00000032, 0x42219986, 0x0022003A, \
0x010D00D7, 0x00000032, 0x42219986, 0x002A004A, \
0x012500E8, 0x00000029, 0x42219986, 0x0016005D, \
0x015000EA, 0x000003E8, 0x42219986, 0x0016005D, \
0x0150013D, 0x0000001E, 0x42219986, 0x0016005D, \
0x0150013F, 0xFF00001E, 0x42219986, 0x0016005D, \
0x0150002E, 0x00000002, 0x000101B1, 0x06570000, \
0x0000001E, 0x42366658, 0x0004000E, 0x006C00C6, \
0x0000001E, 0x42366658, 0x0004000E, 0x006C00C8, \
0x00000014, 0x424BFFF7, 0x0004004C, 0x006C00D7, \
0x00000014, 0x428D3328, 0x006F01F5, 0xFFC200E8, \
0x0000001E, 0x428D3328, 0x006F01F4, 0xFFC200EA, \
0x000003E8, 0x428D3328, 0x006F01F4, 0xFFC2013D, \
0x0000001E, 0x428CCCC2, 0x006F01F4, 0xFFC2013F, \
0xFF00001E, 0x428CCCC2, 0x006F01F4, 0xFFC2002E, \
0x00000002, 0x000101F2, 0x03790000, 0x00000032, \
0x42700000, 0x00030006, 0xFFFA00C6, 0x00000028, \
0x42700000, 0x00030006, 0xFFFA00C8, 0x0000001E, \
0x424BFFF7, 0x00030006, 0xFFFA00D7, 0x00000014, \
0x41A4CC7E, 0x00030006, 0xFFFA00E8, 0x00000033, \
0x412CCC23, 0x00030006, 0xFFFA00EA, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA013D, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA013F, 0x00000032, \
0x4123328A, 0x00030006, 0xFFFA002E, 0xFF000032, \
0x412FFF56, 0x00030006, 0xFFFA0063, 0x00000006, \
0x0001023E, 0x06F80000, 0x0000001E, 0x4289332C, \
0x00000064, 0x000500C6, 0x0000001E, 0x4289332C, \
0x00000065, 0x000600C8, 0x0000001E, 0x4289332C, \
0x00010063, 0x002900D7, 0x0000001E, 0x4289332C, \
0x0000002A, 0x001000E8, 0x0000001E, 0x4289332C, \
0x0000002A, 0x001000EA, 0x000003E8, 0x4289332C, \
0x0000002A, 0x0010013D, 0x0000001E, 0x4289332C, \
0x0000002A, 0x0010013F, 0xFF00001E, 0x4289332C, \
0x0000002A, 0x0010002E, 0xFFFFFFFF, 0x00000000
var_809A5BC8: .word func_809A2638
.word func_809A2658
.word func_809A2678
.word func_809A26B4
.word func_809A26FC
.word func_809A2740
.word func_809A2788
.word func_809A2AE4
.word func_809A2B04
.word func_809A2B4C
.word func_809A30D0
.word func_809A3108
.word func_809A3164
.word func_809A392C
.word func_809A394C
.word func_809A3998
.word func_809A3A08
.word func_809A3A78
.word func_809A3AE0
.word func_809A3B68
.word func_809A4094
.word func_809A40B4
.word func_809A4100
.word func_809A4148
.word func_809A48DC
.word func_809A4938
.word func_809A4998
.word func_809A4A00
.word func_809A4A68
.word func_809A4AE8
.word func_809A4B50
var_809A5C44: .word 0x00000000, 0x41200000, 0x00000000
var_809A5C50: .word func_809A4E38
.word func_809A4E48
.word func_809A2B94
.word func_809A3BBC
.word func_809A3D00
var_809A5C64: .word 0x00C30400, 0x00000010, 0x00B30000, 0x00000318
.word func_809A4C00
.word func_809A1D70
.word func_809A4BB8
.word func_809A4F8C
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809A5C90: .word 0x4622F983
var_809A5C94: .word 0xC61C4000
var_809A5C98: .word 0x42A6AAAB
var_809A5C9C: .word var_809A38A4
.word lbl_809A3910
.word lbl_809A3910
.word lbl_809A3910
.word lbl_809A3910
.word lbl_809A3910
.word lbl_809A3910
.word lbl_809A3910
.word var_809A3908
.word var_809A38B4
.word var_809A38C8
.word var_809A38D8
.word var_809A38E8
.word var_809A38F8
var_809A5CD4: .word var_809A4C98
.word var_809A4CAC
.word var_809A4CC0
.word var_809A4CD4
.word var_809A4CE8
.word 0x00000000, 0x00000000

