#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B60C40:
    sw      a1, 0x0274(a0)             ## 00000274
    jr      $ra                        
    nop


func_80B60C4C:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0068($sp)            
    sw      a1, 0x006C($sp)            
    sw      a2, 0x0070($sp)            
    lui     t7, %hi(var_80B62368)      ## t7 = 80B60000
    addiu   t7, t7, %lo(var_80B62368)  ## t7 = 80B62368
    lw      t9, 0x0000(t7)             ## 80B62368
    addiu   t6, $sp, 0x0050            ## t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             ## 80B6236C
    sw      t9, 0x0000(t6)             ## FFFFFFE8
    lw      t9, 0x0008(t7)             ## 80B62370
    lui     t1, %hi(var_80B62374)      ## t1 = 80B60000
    addiu   t1, t1, %lo(var_80B62374)  ## t1 = 80B62374
    sw      t8, 0x0004(t6)             ## FFFFFFEC
    sw      t9, 0x0008(t6)             ## FFFFFFF0
    lw      t3, 0x0000(t1)             ## 80B62374
    addiu   t0, $sp, 0x0044            ## t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             ## 80B62378
    sw      t3, 0x0000(t0)             ## FFFFFFDC
    lw      t3, 0x0008(t1)             ## 80B6237C
    sw      t2, 0x0004(t0)             ## FFFFFFE0
    jal     func_800CDCCC              ## Rand.Next() float
    sw      t3, 0x0008(t0)             ## FFFFFFE4
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, %hi(var_80B62390)     ## $at = 80B60000
    lwc1    $f8, %lo(var_80B62390)($at) 
    sub.s   $f6, $f0, $f4              
    lw      t4, 0x006C($sp)            
    mul.s   $f12, $f6, $f8             
    swc1    $f12, 0x0040($sp)          
    lwc1    $f10, 0x0080(t4)           ## 00000080
    jal     func_800A45FC              
    swc1    $f10, 0x0060($sp)          
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f16                  ## $f16 = 15.00
    lw      t5, 0x0070($sp)            
    lwc1    $f12, 0x0040($sp)          
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0000(t5)            ## 00000000
    add.s   $f6, $f18, $f4             
    jal     func_800A4650              
    swc1    $f6, 0x005C($sp)           
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f8                   ## $f8 = 15.00
    lw      t6, 0x0070($sp)            
    lui     $at, 0x3F80                ## $at = 3F800000
    mul.s   $f10, $f0, $f8             
    lwc1    $f16, 0x0008(t6)           ## 00000008
    mtc1    $at, $f12                  ## $f12 = 1.00
    add.s   $f18, $f10, $f16           
    jal     func_80026D90              
    swc1    $f18, 0x0064($sp)          
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    jal     func_80026D90              
    swc1    $f0, 0x0044($sp)           
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f0, 0x004C($sp)           
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f8                   ## $f8 = 4.00
    sub.s   $f6, $f0, $f4              
    lwc1    $f16, 0x0054($sp)          
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f16, $f10           
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f18, 0x0054($sp)          
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f8                   ## $f8 = 12.00
    mul.s   $f6, $f0, $f4              
    lui     $at, %hi(var_80B62394)     ## $at = 80B60000
    lwc1    $f10, %lo(var_80B62394)($at) 
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    addiu   t1, $zero, 0x000A          ## t1 = 0000000A
    sw      t1, 0x001C($sp)            
    add.s   $f16, $f6, $f8             
    sw      t0, 0x0018($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x0068($sp)            
    mul.s   $f18, $f16, $f10           
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFF4
    addiu   a2, $sp, 0x0050            ## a2 = FFFFFFE8
    addiu   a3, $sp, 0x0044            ## a3 = FFFFFFDC
    sw      $zero, 0x0020($sp)         
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f4                    
    jal     func_8001D21C              
    sw      t9, 0x0014($sp)            
    addiu   t2, $zero, 0x0096          ## t2 = 00000096
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0010($sp)            
    lw      a0, 0x0068($sp)            
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFF4
    lui     a2, 0x4120                 ## a2 = 41200000
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_80026308              
    sw      $zero, 0x0014($sp)         
    lw      $ra, 0x002C($sp)           
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B60DFC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_80B62380)      ## a1 = 80B60000
    addiu   a1, a1, %lo(var_80B62380)  ## a1 = 80B62380
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     t6, %hi(var_80B62328)      ## t6 = 80B60000
    addiu   t6, t6, %lo(var_80B62328)  ## t6 = 80B62328
    lui     a2, 0x8002                 ## a2 = 80020000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    sw      t6, 0x0098(s0)             ## 00000098
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    jal     func_8001EC20              
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   v0, s0, 0x0024             ## v0 = 00000024
    lw      t8, 0x0000(v0)             ## 00000024
    lui     $at, 0xC5FA                ## $at = C5FA0000
    mtc1    $at, $f4                   ## $f4 = -8000.00
    sw      t8, 0x0038(s0)             ## 00000038
    lw      t7, 0x0004(v0)             ## 00000028
    addiu   t9, $zero, 0x00FE          ## t9 = 000000FE
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    sw      t7, 0x003C(s0)             ## 0000003C
    lw      t8, 0x0008(v0)             ## 0000002C
    sb      t9, 0x00AE(s0)             ## 000000AE
    sb      t0, 0x00AF(s0)             ## 000000AF
    swc1    $f4, 0x00BC(s0)            ## 000000BC
    sw      t8, 0x0040(s0)             ## 00000040
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t1, s0, 0x0180             ## t1 = 00000180
    addiu   t2, s0, 0x01F8             ## t2 = 000001F8
    addiu   t3, $zero, 0x0014          ## t3 = 00000014
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    addiu   a3, a3, 0x1854             ## a3 = 06001854
    addiu   a2, a2, 0x41F8             ## a2 = 060041F8
    sw      v0, 0x0034($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    addiu   t4, $zero, 0x0055          ## t4 = 00000055
    sb      t4, 0x0117(s0)             ## 00000117
    addiu   a1, s0, 0x0294             ## a1 = 00000294
    sw      a1, 0x0030($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80B62318)      ## a3 = 80B60000
    addiu   t5, s0, 0x02B4             ## t5 = 000002B4
    lw      a1, 0x0030($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B62318)  ## a3 = 80B62318
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     $at, %hi(var_80B62398)     ## $at = 80B60000
    lwc1    $f10, %lo(var_80B62398)($at) 
    mtc1    t6, $f6                    ## $f6 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f18                  ## $f18 = 1.00
    cvt.s.w $f8, $f6                   
    lui     $at, %hi(var_80B6239C)     ## $at = 80B60000
    lwc1    $f6, %lo(var_80B6239C)($at) 
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lh      v0, 0x001C(s0)             ## 0000001C
    lw      t7, 0x02B0(s0)             ## 000002B0
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   v0, v0, 0x000A             ## v0 = 0000000A
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x0036(t7)             ## 00000036
    lw      t8, 0x02B0(s0)             ## 000002B0
    sh      v0, 0x002E(t8)             ## 0000002E
    lh      v0, 0x001C(s0)             ## 0000001C
    lw      t9, 0x02B0(s0)             ## 000002B0
    sll     v0, v0,  1                 
    addiu   v0, v0, 0x0014             ## v0 = 0000001E
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x0076(t9)             ## 00000076
    lw      t0, 0x02B0(s0)             ## 000002B0
    sh      v0, 0x006E(t0)             ## 0000006E
    lw      t1, 0x0034($sp)            
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lw      t3, 0x0000(t1)             ## 00000000
    sw      t3, 0x0008(s0)             ## 00000008
    lw      t2, 0x0004(t1)             ## 00000004
    sw      t2, 0x000C(s0)             ## 0000000C
    lw      t3, 0x0008(t1)             ## 00000008
    swc1    $f10, 0x0080(s0)           ## 00000080
    jal     func_80B610A8              
    sw      t3, 0x0010(s0)             ## 00000010
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B60FB4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lw      v1, 0x0118(a2)             ## 00000118
    or      a0, a3, $zero              ## a0 = 00000000
    beq     v1, $zero, lbl_80B60FF4    
    nop
    lw      t6, 0x0130(v1)             ## 00000130
    or      v0, v1, $zero              ## v0 = 00000000
    beq     t6, $zero, lbl_80B60FF4    
    nop
    lh      v1, 0x0142(v1)             ## 00000142
    blez    v1, lbl_80B60FF4           
    addiu   t7, v1, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x0142(v0)             ## 00000142
lbl_80B60FF4:
    jal     func_8004A550              
    addiu   a1, a2, 0x0294             ## a1 = 00000294
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6100C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A20(t6)            ## 8011A5E0
    addiu   a1, $zero, 0x11C7          ## a1 = 000011C7
    bne     t6, $zero, lbl_80B61038    
    nop
    jal     func_80B611F8              
    nop
    beq     $zero, $zero, lbl_80B6109C 
    lw      $ra, 0x0014($sp)           
lbl_80B61038:
    jal     func_80021A28              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80B61090    
    lw      a0, 0x0018($sp)            
    lh      t7, 0x001C(a0)             ## 0000001C
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f10                  ## $f10 = 6.00
    mtc1    t7, $f6                    ## $f6 = 0.00
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f18                  ## $f18 = 60.00
    cvt.s.w $f8, $f6                   
    lwc1    $f4, 0x0090(a0)            ## 00000090
    mul.s   $f16, $f8, $f10            
    add.s   $f6, $f18, $f16            
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80B61090               
    nop
    jal     func_80B615EC              
    nop
    beq     $zero, $zero, lbl_80B6109C 
    lw      $ra, 0x0014($sp)           
lbl_80B61090:
    jal     func_80B61354              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B6109C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B610A8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1854             ## a1 = 06001854
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D278              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   a1, $zero, 0x3986          ## a1 = 00003986
    lw      t6, 0x0004(a0)             ## 00000004
    sb      $zero, 0x0270(a0)          ## 00000270
    and     t7, t6, $at                
    jal     func_80022FD0              
    sw      t7, 0x0004(a0)             ## 00000004
    lui     a1, %hi(func_80B6110C)     ## a1 = 80B60000
    lw      a0, 0x0018($sp)            
    jal     func_80B60C40              
    addiu   a1, a1, %lo(func_80B6110C) ## a1 = 80B6110C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B6110C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f6                   ## $f6 = 4.00
    lwc1    $f4, 0x0154(s0)            ## 00000154
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   a0, s0, 0x00BC             ## a0 = 000000BC
    c.lt.s  $f4, $f6                   
    mfc1    a1, $f0                    
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4448                 ## a3 = 44480000
    bc1fl   lbl_80B61160               
    lw      t6, 0x0004(s0)             ## 00000004
    lh      v0, 0x008A(s0)             ## 0000008A
    sh      v0, 0x0032(s0)             ## 00000032
    beq     $zero, $zero, lbl_80B61168 
    sh      v0, 0x00B6(s0)             ## 000000B6
    lw      t6, 0x0004(s0)             ## 00000004
lbl_80B61160:
    ori     t7, t6, 0x0001             ## t7 = 00000001
    sw      t7, 0x0004(s0)             ## 00000004
lbl_80B61168:
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   a0, s0, 0x00C4             ## a0 = 000000C4
    lui     a1, 0x41C8                 ## a1 = 41C80000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4020                 ## a3 = 40200000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lw      a0, 0x002C($sp)            
    lui     t8, 0x0001                 ## t8 = 00010000
    or      a1, s0, $zero              ## a1 = 00000000
    addu    t8, t8, a0                 
    lw      t8, 0x1DE4(t8)             ## 00011DE4
    andi    t9, t8, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80B611B4    
    nop
    jal     func_80B60C4C              
    addiu   a2, s0, 0x0024             ## a2 = 00000024
lbl_80B611B4:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80B611E8    
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f10                ## $f10 = 0.00
    lwc1    $f16, 0x00BC(s0)           ## 000000BC
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B611E8               
    lw      $ra, 0x0024($sp)           
    jal     func_80B6100C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B611E8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B611F8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1854             ## a0 = 06001854
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f8                   ## $f8 = -4.00
    cvt.s.w $f4, $f4                   
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1854             ## a1 = 06001854
    mfc1    a3, $f4                    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0xBF80                 ## a2 = BF800000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lw      t7, 0x0004(s0)             ## 00000004
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t8, t7, $at                
    sb      $zero, 0x0270(s0)          ## 00000270
    sb      $zero, 0x0271(s0)          ## 00000271
    sw      t8, 0x0004(s0)             ## 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x3987          ## a1 = 00003987
    jal     func_80022FD0              
    swc1    $f10, 0x0068(s0)           ## 00000068
    lui     a1, %hi(func_80B612A0)     ## a1 = 80B60000
    addiu   a1, a1, %lo(func_80B612A0) ## a1 = 80B612A0
    jal     func_80B60C40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B612A0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, s0, 0x00BC             ## a0 = 000000BC
    lui     a1, 0xC5FA                 ## a1 = C5FA0000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x43FA                 ## a3 = 43FA0000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lw      a0, 0x002C($sp)            
    lui     t6, 0x0001                 ## t6 = 00010000
    c.eq.s  $f0, $f2                   
    addu    t6, t6, a0                 
    bc1tl   lbl_80B61314               
    mfc1    a1, $f2                    
    lw      t6, 0x1DE4(t6)             ## 00011DE4
    or      a1, s0, $zero              ## a1 = 00000000
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_80B61314    
    mfc1    a1, $f2                    
    jal     func_80B60C4C              
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    mtc1    $zero, $f2                 ## $f2 = 0.00
    nop
    mfc1    a1, $f2                    
lbl_80B61314:
    addiu   a0, s0, 0x00C4             ## a0 = 000000C4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4020                 ## a3 = 40200000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80B61344    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B61344:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61354:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x47E0             ## a0 = 060047E0
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f8                   ## $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     a2, 0x3F75                 ## a2 = 3F750000
    ori     a2, a2, 0xC290             ## a2 = 3F75C290
    addiu   a1, a1, 0x47E0             ## a1 = 060047E0
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, 0x4320                ## $at = 43200000
    mtc1    $at, $f16                  ## $f16 = 160.00
    lwc1    $f10, 0x0054(s0)           ## 00000054
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    lui     a1, %hi(func_80B613EC)     ## a1 = 80B60000
    mul.s   $f18, $f10, $f16           
    sb      t6, 0x0270(s0)             ## 00000270
    sh      $zero, 0x0278(s0)          ## 00000278
    addiu   a1, a1, %lo(func_80B613EC) ## a1 = 80B613EC
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B60C40              
    swc1    $f18, 0x0068(s0)           ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B613EC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(a1)             ## 00001C44
    lui     t8, 0x0001                 ## t8 = 00010000
    addu    t8, t8, a1                 
    sw      t6, 0x0028($sp)            
    lbu     t7, 0x0273(s0)             ## 00000273
    beql    t7, $zero, lbl_80B61448    
    lh      t2, 0x008A(s0)             ## 0000008A
    lw      t8, 0x1DE4(t8)             ## 00011DE4
    lui     $at, %hi(var_80B623A0)     ## $at = 80B60000
    andi    t9, t8, 0x000F             ## t9 = 00000000
    bnel    t9, $zero, lbl_80B61448    
    lh      t2, 0x008A(s0)             ## 0000008A
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80B623A0)($at) 
    trunc.w.s $f4, $f0                   
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0278(s0)             ## 00000278
    lh      t2, 0x008A(s0)             ## 0000008A
lbl_80B61448:
    lh      t3, 0x0278(s0)             ## 00000278
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addu    a1, t2, t3                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
    lwc1    $f6, 0x0154(s0)            ## 00000154
    lh      t4, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    trunc.w.s $f8, $f6                   
    sh      t4, 0x0032(s0)             ## 00000032
    mfc1    v1, $f8                    
    jal     func_8008C9C0              
    sw      v1, 0x0034($sp)            
    mtc1    $zero, $f14                ## $f14 = 0.00
    lwc1    $f0, 0x0158(s0)            ## 00000158
    lw      v1, 0x0034($sp)            
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_80B614B4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B614B4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B614B4:
    lwc1    $f12, 0x0154(s0)           ## 00000154
    c.le.s  $f14, $f0                  
    sub.s   $f10, $f12, $f2            
    trunc.w.s $f18, $f12                 
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f18                   
    mfc1    v0, $f16                   
    bc1fl   lbl_80B614E4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B614E4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B614E4:
    beq     v1, t8, lbl_80B6153C       
    slti    $at, v0, 0x0009            
    beql    $at, $zero, lbl_80B61510   
    slti    $at, v0, 0x0010            
    trunc.w.s $f4, $f2                   
    mfc1    t0, $f4                    
    nop
    addu    t1, t0, v1                 
    slti    $at, t1, 0x0008            
    beq     $at, $zero, lbl_80B61530   
    slti    $at, v0, 0x0010            
lbl_80B61510:
    beql    $at, $zero, lbl_80B61540   
    lw      a1, 0x0028($sp)            
    trunc.w.s $f6, $f2                   
    mfc1    t3, $f6                    
    nop
    addu    t4, t3, v1                 
    slti    $at, t4, 0x000F            
    bne     $at, $zero, lbl_80B6153C   
lbl_80B61530:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3830          ## a1 = 00003830
lbl_80B6153C:
    lw      a1, 0x0028($sp)            
lbl_80B61540:
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    jal     func_80063EB8              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    lui     $at, 0x4448                ## $at = 44480000
    mtc1    $at, $f8                   ## $f8 = 800.00
    lui     t5, 0x8012                 ## t5 = 80120000
    c.lt.s  $f8, $f0                   
    nop
    bc1t    lbl_80B61578               
    nop
    lw      t5, -0x5A20(t5)            ## 8011A5E0
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t5, $zero, lbl_80B61588    
    nop
lbl_80B61578:
    jal     func_80B611F8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B615DC 
    lw      $ra, 0x0024($sp)           
lbl_80B61588:
    jal     func_80021A28              
    addiu   a1, $zero, 0x11C7          ## a1 = 000011C7
    beql    v0, $zero, lbl_80B615DC    
    lw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f4                   ## $f4 = 6.00
    mtc1    t6, $f16                   ## $f16 = 0.00
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f8                   ## $f8 = 60.00
    cvt.s.w $f18, $f16                 
    lwc1    $f10, 0x0090(s0)           ## 00000090
    mul.s   $f6, $f18, $f4             
    add.s   $f16, $f8, $f6             
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B615DC               
    lw      $ra, 0x0024($sp)           
    jal     func_80B615EC              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B615DC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B615EC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0460             ## a0 = 06000460
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f8                   ## $f8 = 4.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     a2, 0x3F19                 ## a2 = 3F190000
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x0014($sp)            
    ori     a2, a2, 0x999A             ## a2 = 3F19999A
    addiu   a1, a1, 0x0460             ## a1 = 06000460
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lbu     t7, 0x02A4(s0)             ## 000002A4
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    lui     a1, %hi(func_80B61684)     ## a1 = 80B60000
    andi    t8, t7, 0xFFFB             ## t8 = 00000000
    sb      t8, 0x02A4(s0)             ## 000002A4
    sb      t9, 0x0270(s0)             ## 00000270
    addiu   a1, a1, %lo(func_80B61684) ## a1 = 80B61684
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B60C40              
    swc1    $f10, 0x0068(s0)           ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61684:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lwc1    $f4, 0x0154(a2)            ## 00000154
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    or      a0, a2, $zero              ## a0 = 00000000
    trunc.w.s $f6, $f4                   
    addiu   a1, $zero, 0x3831          ## a1 = 00003831
    mfc1    v0, $f6                    
    nop
    bnel    v0, $at, lbl_80B616D4      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    jal     func_80022FD0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    beq     $zero, $zero, lbl_80B616E0 
    sb      t7, 0x0271(a2)             ## 00000271
    addiu   $at, $zero, 0x0006         ## $at = 00000006
lbl_80B616D4:
    bnel    v0, $at, lbl_80B616E4      
    lbu     v0, 0x02A4(a2)             ## 000002A4
    sb      $zero, 0x0271(a2)          ## 00000271
lbl_80B616E0:
    lbu     v0, 0x02A4(a2)             ## 000002A4
lbl_80B616E4:
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    andi    t8, v0, 0x0004             ## t8 = 00000000
    beq     t8, $zero, lbl_80B61708    
    andi    t9, v0, 0xFFF9             ## t9 = 00000000
    sb      t9, 0x02A4(a2)             ## 000002A4
    jal     func_80B61730              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B61724 
    lw      $ra, 0x0014($sp)           
lbl_80B61708:
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80B61720    
    lw      a2, 0x0018($sp)            
    jal     func_80B6100C              
    or      a0, a2, $zero              ## a0 = 00000000
lbl_80B61720:
    lw      $ra, 0x0014($sp)           
lbl_80B61724:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61730:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x0154(s0)            ## 00000154
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     a2, 0xBECC                 ## a2 = BECC0000
    sub.s   $f8, $f4, $f6              
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x0014($sp)            
    ori     a2, a2, 0xCCCD             ## a2 = BECCCCCD
    mfc1    a3, $f8                    
    addiu   a1, a1, 0x0460             ## a1 = 06000460
    swc1    $f0, 0x0018($sp)           
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lbu     t7, 0x02A4(s0)             ## 000002A4
    addiu   t9, $zero, 0x0005          ## t9 = 00000005
    lui     a1, %hi(func_80B617BC)     ## a1 = 80B60000
    andi    t8, t7, 0xFFFB             ## t8 = 00000000
    sb      t8, 0x02A4(s0)             ## 000002A4
    sb      t9, 0x0270(s0)             ## 00000270
    sb      $zero, 0x0271(s0)          ## 00000271
    addiu   a1, a1, %lo(func_80B617BC) ## a1 = 80B617BC
    jal     func_80B60C40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B617BC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80B617EC    
    lw      $ra, 0x0014($sp)           
    jal     func_80B6100C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80B617EC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B617F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     t6, 0x0088(a0)             ## 00000088
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80B61820    
    nop
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x0068(a0)            ## 00000068
lbl_80B61820:
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t8, $zero, 0x0006          ## t8 = 00000006
    lui     a1, %hi(func_80B61854)     ## a1 = 80B60000
    addiu   a1, a1, %lo(func_80B61854) ## a1 = 80B61854
    sb      $zero, 0x0271(a0)          ## 00000271
    jal     func_80B60C40              
    sb      t8, 0x0270(a0)             ## 00000270
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61854:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     v0, 0x0088(a0)             ## 00000088
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beql    t6, $zero, lbl_80B6187C    
    andi    t7, v0, 0x0001             ## t7 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lhu     v0, 0x0088(a0)             ## 00000088
    swc1    $f4, 0x0068(a0)            ## 00000068
    andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80B6187C:
    beql    t7, $zero, lbl_80B618B0    
    lbu     t8, 0x0114(a0)             ## 00000114
    lwc1    $f0, 0x0068(a0)            ## 00000068
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, %hi(var_80B623A4)     ## $at = 80B60000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B618B0               
    lbu     t8, 0x0114(a0)             ## 00000114
    lwc1    $f8, %lo(var_80B623A4)($at) 
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0068(a0)           ## 00000068
    lbu     t8, 0x0114(a0)             ## 00000114
lbl_80B618B0:
    bnel    t8, $zero, lbl_80B618F0    
    lw      $ra, 0x0014($sp)           
    lhu     t9, 0x0088(a0)             ## 00000088
    andi    t0, t9, 0x0001             ## t0 = 00000000
    beql    t0, $zero, lbl_80B618F0    
    lw      $ra, 0x0014($sp)           
    lbu     t1, 0x00AF(a0)             ## 000000AF
    bne     t1, $zero, lbl_80B618E4    
    nop
    jal     func_80B61A70              
    nop
    beq     $zero, $zero, lbl_80B618F0 
    lw      $ra, 0x0014($sp)           
lbl_80B618E4:
    jal     func_80B6100C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B618F0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B618FC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0D98             ## a1 = 06000D98
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0xC080                ## $at = C0800000
    lhu     t6, 0x0088(a3)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_80B61948    
    lh      t8, 0x008A(a3)             ## 0000008A
    mtc1    $at, $f4                   ## $f4 = -4.00
    nop
    swc1    $f4, 0x0068(a3)            ## 00000068
    lh      t8, 0x008A(a3)             ## 0000008A
lbl_80B61948:
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x3832          ## a1 = 00003832
    sh      t8, 0x0032(a3)             ## 00000032
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    lui     a1, %hi(func_80B61984)     ## a1 = 80B60000
    addiu   a1, a1, %lo(func_80B61984) ## a1 = 80B61984
    jal     func_80B60C40              
    sb      t9, 0x0270(a0)             ## 00000270
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61984:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lbu     t6, 0x0273(s0)             ## 00000273
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t6, $at, lbl_80B619BC      
    addiu   a1, s0, 0x027C             ## a1 = 0000027C
    jal     func_80025F04              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    beql    v0, $zero, lbl_80B61A60    
    lw      $ra, 0x0024($sp)           
lbl_80B619BC:
    lbu     v0, 0x0273(s0)             ## 00000273
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    beq     v0, $zero, lbl_80B619D8    
    addiu   a3, $zero, 0x1194          ## a3 = 00001194
    ori     t7, v0, 0x0002             ## t7 = 00000002
    sb      t7, 0x0273(s0)             ## 00000273
lbl_80B619D8:
    lhu     v0, 0x0088(s0)             ## 00000088
    andi    t8, v0, 0x0002             ## t8 = 00000000
    beql    t8, $zero, lbl_80B619F8    
    andi    t9, v0, 0x0001             ## t9 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lhu     v0, 0x0088(s0)             ## 00000088
    swc1    $f4, 0x0068(s0)            ## 00000068
    andi    t9, v0, 0x0001             ## t9 = 00000000
lbl_80B619F8:
    beql    t9, $zero, lbl_80B61A2C    
    lh      a1, 0x008A(s0)             ## 0000008A
    lwc1    $f0, 0x0068(s0)            ## 00000068
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, %hi(var_80B623A8)     ## $at = 80B60000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B61A2C               
    lh      a1, 0x008A(s0)             ## 0000008A
    lwc1    $f8, %lo(var_80B623A8)($at) 
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
    lh      a1, 0x008A(s0)             ## 0000008A
lbl_80B61A2C:
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beql    v0, $zero, lbl_80B61A60    
    lw      $ra, 0x0024($sp)           
    lhu     t0, 0x0088(s0)             ## 00000088
    andi    t1, t0, 0x0001             ## t1 = 00000000
    beql    t1, $zero, lbl_80B61A60    
    lw      $ra, 0x0024($sp)           
    jal     func_80B6100C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B61A60:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61A70:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x09DC             ## a1 = 060009DC
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC080                 ## a2 = C0800000
    lhu     t6, 0x0088(s0)             ## 00000088
    lh      v0, 0x008A(s0)             ## 0000008A
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    andi    t7, t6, 0x0001             ## t7 = 00000000
    sh      v0, 0x00B6(s0)             ## 000000B6
    beq     t7, $zero, lbl_80B61AC4    
    sh      v0, 0x0032(s0)             ## 00000032
    lui     $at, 0xC0C0                ## $at = C0C00000
    mtc1    $at, $f4                   ## $f4 = -6.00
    nop
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B61AC4:
    lw      t9, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    sb      t8, 0x0270(s0)             ## 00000270
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             ## 00000004
    lw      a2, 0x002C($sp)            
    addiu   a0, s0, 0x027C             ## a0 = 0000027C
    jal     func_80025D04              
    addiu   a1, $zero, 0x0012          ## a1 = 00000012
    lbu     t1, 0x0273(s0)             ## 00000273
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    addiu   t4, $zero, 0x0028          ## t4 = 00000028
    ori     t2, t1, 0x0004             ## t2 = 00000004
    sb      t2, 0x0273(s0)             ## 00000273
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    addiu   a2, $zero, 0x3833          ## a2 = 00003833
    jal     func_8001E510              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lui     a1, %hi(func_80B61B3C)     ## a1 = 80B60000
    addiu   a1, a1, %lo(func_80B61B3C) ## a1 = 80B61B3C
    jal     func_80B60C40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B61B3C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x027C             ## a1 = 0000027C
    or      a2, s1, $zero              ## a2 = 00000000
    jal     func_80025F04              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    beq     v0, $zero, lbl_80B61C14    
    lui     $at, %hi(var_80B623AC)     ## $at = 80B60000
    lwc1    $f0, 0x0050(s0)            ## 00000050
    lwc1    $f4, %lo(var_80B623AC)($at) 
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    c.eq.s  $f4, $f0                   
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    lui     $at, %hi(var_80B623B0)     ## $at = 80B60000
    bc1f    lbl_80B61BA4               
    nop
    jal     func_80013A84              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    beq     $zero, $zero, lbl_80B61C04 
    lbu     t6, 0x0273(s0)             ## 00000273
lbl_80B61BA4:
    lwc1    $f6, %lo(var_80B623B0)($at) 
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    c.le.s  $f0, $f6                   
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    bc1f    lbl_80B61BD8               
    nop
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    jal     func_80013678              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    beq     $zero, $zero, lbl_80B61C04 
    lbu     t6, 0x0273(s0)             ## 00000273
lbl_80B61BD8:
    jal     func_80013678              
    sw      a1, 0x0024($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80013678              
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80013678              
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lbu     t6, 0x0273(s0)             ## 00000273
lbl_80B61C04:
    or      a0, s0, $zero              ## a0 = 00000000
    ori     t7, t6, 0x0008             ## t7 = 00000008
    jal     func_80020EB4              
    sb      t7, 0x0273(s0)             ## 00000273
lbl_80B61C14:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80B61C28:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s3, 0x0038($sp)            
    sw      s2, 0x0034($sp)            
    sw      s1, 0x0030($sp)            
    addiu   s1, $zero, 0x0001          ## s1 = 00000001
    or      s2, a0, $zero              ## s2 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x002C($sp)            
    sdc1    $f20, 0x0020($sp)          
    lbu     v0, 0x0270(s2)             ## 00000270
    beql    s1, v0, lbl_80B61CA8       
    slti    $at, v0, 0x0003            
    lhu     t6, 0x0088(s2)             ## 00000088
    lui     $at, 0x4220                ## $at = 42200000
    andi    t7, t6, 0x0060             ## t7 = 00000000
    beql    t7, $zero, lbl_80B61CA8    
    slti    $at, v0, 0x0003            
    lwc1    $f4, 0x0084(s2)            ## 00000084
    mtc1    $at, $f6                   ## $f6 = 40.00
    or      a0, s2, $zero              ## a0 = 00000000
    or      a1, s3, $zero              ## a1 = 00000000
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80B61CA8               
    slti    $at, v0, 0x0003            
    sb      $zero, 0x00AF(s2)          ## 000000AF
    jal     func_80B61A70              
    sb      $zero, 0x0271(s2)          ## 00000271
    beq     $zero, $zero, lbl_80B61EBC 
    lw      $ra, 0x003C($sp)           
    slti    $at, v0, 0x0003            
lbl_80B61CA8:
    bnel    $at, $zero, lbl_80B61EBC   
    lw      $ra, 0x003C($sp)           
    lbu     v0, 0x02A5(s2)             ## 000002A5
    andi    t8, v0, 0x0002             ## t8 = 00000000
    beql    t8, $zero, lbl_80B61EBC    
    lw      $ra, 0x003C($sp)           
    lbu     v1, 0x00B1(s2)             ## 000000B1
    addiu   s0, $zero, 0x0006          ## s0 = 00000006
    andi    t9, v0, 0xFFFD             ## t9 = 00000000
    beq     s0, v1, lbl_80B61EB8       
    sb      t9, 0x02A5(s2)             ## 000002A5
    lw      a1, 0x02B0(s2)             ## 000002B0
    sb      v1, 0x0272(s2)             ## 00000272
    or      a0, s2, $zero              ## a0 = 00000000
    or      a2, s1, $zero              ## a2 = 00000001
    jal     func_800283BC              
    addiu   a1, a1, 0x0040             ## a1 = 00000040
    lbu     v0, 0x00B1(s2)             ## 000000B1
    sb      $zero, 0x0271(s2)          ## 00000271
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    bne     s1, v0, lbl_80B61D3C       
    nop
    lbu     t0, 0x0270(s2)             ## 00000270
    or      a0, s2, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    beq     s0, t0, lbl_80B61EB8       
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    addiu   t1, $zero, 0x0050          ## t1 = 00000050
    sw      t1, 0x0010($sp)            
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80B617F8              
    or      a0, s2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B61EBC 
    lw      $ra, 0x003C($sp)           
lbl_80B61D3C:
    bne     v0, $at, lbl_80B61E10      
    addiu   v1, $zero, 0x0008          ## v1 = 00000008
    lui     $at, %hi(var_80B623B4)     ## $at = 80B60000
    lwc1    $f10, %lo(var_80B623B4)($at) 
    lwc1    $f8, 0x0054(s2)            ## 00000054
    lui     $at, 0x41A0                ## $at = 41A00000
    addiu   v0, s2, 0x0024             ## v0 = 00000024
    mul.s   $f16, $f8, $f10            
    mtc1    $at, $f20                  ## $f20 = 20.00
    sw      v0, 0x0044($sp)            
    addiu   s0, $zero, 0x0004          ## s0 = 00000004
    addiu   s1, $sp, 0x0054            ## s1 = FFFFFFEC
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    sh      t3, 0x0052($sp)            
    lw      v0, 0x0044($sp)            
lbl_80B61D80:
    mov.s   $f12, $f20                 
    lw      t5, 0x0000(v0)             ## 00000024
    sw      t5, 0x0000(s1)             ## FFFFFFEC
    lw      t4, 0x0004(v0)             ## 00000028
    sw      t4, 0x0004(s1)             ## FFFFFFF0
    lw      t5, 0x0008(v0)             ## 0000002C
    jal     func_80026D90              
    sw      t5, 0x0008(s1)             ## FFFFFFF4
    lwc1    $f4, 0x0054($sp)           
    mov.s   $f12, $f20                 
    add.s   $f6, $f4, $f0              
    jal     func_80026D90              
    swc1    $f6, 0x0054($sp)           
    lwc1    $f8, 0x005C($sp)           
    add.s   $f10, $f8, $f0             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f10, 0x005C($sp)          
    lui     $at, 0x41C8                ## $at = 41C80000
    mtc1    $at, $f18                  ## $f18 = 25.00
    lwc1    $f16, 0x0058($sp)          
    addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
    mul.s   $f4, $f0, $f18             
    sw      t6, 0x0018($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s2, $zero              ## a1 = 00000000
    or      a2, s1, $zero              ## a2 = FFFFFFEC
    lh      a3, 0x0052($sp)            
    sw      $zero, 0x0010($sp)         
    add.s   $f6, $f16, $f4             
    sw      $zero, 0x0014($sp)         
    jal     func_8001DFEC              
    swc1    $f6, 0x0058($sp)           
    addiu   s0, s0, 0xFFFF             ## s0 = 00000003
    bgezl   s0, lbl_80B61D80           
    lw      v0, 0x0044($sp)            
    addiu   v1, $zero, 0x0019          ## v1 = 00000019
lbl_80B61E10:
    or      a0, s2, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80027090              
    sw      v1, 0x0010($sp)            
    jal     func_80028390              
    or      a0, s2, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80B61E48    
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80B61A70              
    or      a1, s3, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80B61EBC 
    lw      $ra, 0x003C($sp)           
lbl_80B61E48:
    lbu     t7, 0x0273(s2)             ## 00000273
    lw      v1, 0x1C44(s3)             ## 00001C44
    bne     t7, $zero, lbl_80B61EB0    
    nop
    lbu     v0, 0x00B1(s2)             ## 000000B1
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    addiu   a0, s2, 0x027C             ## a0 = 0000027C
    beq     v0, $at, lbl_80B61EA0      
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    addiu   $at, $zero, 0x000E         ## $at = 0000000E
    bne     v0, $at, lbl_80B61EB0      
    nop
    lb      v0, 0x0832(v1)             ## 00000832
    slti    $at, v0, 0x0004            
    bne     $at, $zero, lbl_80B61E8C   
    slti    $at, v0, 0x000C            
    bne     $at, $zero, lbl_80B61EA0   
lbl_80B61E8C:
    addiu   $at, $zero, 0x0014         ## $at = 00000014
    beq     v0, $at, lbl_80B61EA0      
    addiu   $at, $zero, 0x0015         ## $at = 00000015
    bne     v0, $at, lbl_80B61EB0      
    nop
lbl_80B61EA0:
    jal     func_80025D04              
    or      a2, s3, $zero              ## a2 = 00000000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sb      t8, 0x0273(s2)             ## 00000273
lbl_80B61EB0:
    jal     func_80B618FC              
    or      a0, s2, $zero              ## a0 = 00000000
lbl_80B61EB8:
    lw      $ra, 0x003C($sp)           
lbl_80B61EBC:
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    lw      s2, 0x0034($sp)            
    lw      s3, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80B61ED8:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B61C28              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f4                   ## $f4 = 60.00
    addiu   t6, $zero, 0x001D          ## t6 = 0000001D
    sw      t6, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x4170                 ## a2 = 41700000
    lui     a3, 0x41F0                 ## a3 = 41F00000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      t9, 0x0274(s0)             ## 00000274
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t8, 0x0024(s0)             ## 00000024
    lw      t7, 0x0028(s0)             ## 00000028
    lui     $at, %hi(var_80B623B8)     ## $at = 80B60000
    sw      t8, 0x0038(s0)             ## 00000038
    lw      t8, 0x002C(s0)             ## 0000002C
    sw      t7, 0x003C(s0)             ## 0000003C
    lwc1    $f8, 0x0054(s0)            ## 00000054
    sw      t8, 0x0040(s0)             ## 00000040
    lwc1    $f6, %lo(var_80B623B8)($at) 
    lwc1    $f16, 0x003C(s0)           ## 0000003C
    lbu     t0, 0x0271(s0)             ## 00000271
    mul.s   $f10, $f6, $f8             
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              ## a0 = 00000000
    add.s   $f18, $f16, $f10           
    beq     t0, $zero, lbl_80B61F94    
    swc1    $f18, 0x003C(s0)           ## 0000003C
    jal     func_8004BD50              ## CollisionCheck_setAT
    addiu   a2, s0, 0x0294             ## a2 = 00000294
lbl_80B61F94:
    lbu     t1, 0x0270(s0)             ## 00000270
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    slti    $at, t1, 0x0003            
    bne     $at, $zero, lbl_80B61FE4   
    addiu   a2, s0, 0x0294             ## a2 = 00000294
    lbu     t2, 0x0114(s0)             ## 00000114
    or      a0, s1, $zero              ## a0 = 00000000
    beql    t2, $zero, lbl_80B61FD4    
    sw      a1, 0x002C($sp)            
    lhu     t3, 0x0112(s0)             ## 00000112
    andi    t4, t3, 0x4000             ## t4 = 00000000
    bne     t4, $zero, lbl_80B61FE4    
    nop
    sw      a1, 0x002C($sp)            
lbl_80B61FD4:
    jal     func_8004BF40              ## CollisionCheck_setAC
    sw      a2, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
lbl_80B61FE4:
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B62000:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      a3, 0x004C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0040($sp)            
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    bne     a1, $at, lbl_80B6219C      
    lw      t6, 0x0054($sp)            
    lbu     t7, 0x0273(t6)             ## 00000273
    lui     $at, 0x0001                ## $at = 00010000
    addu    v0, a3, $at                
    andi    t8, t7, 0x0002             ## t8 = 00000000
    bne     t8, $zero, lbl_80B62194    
    nop
    lw      a0, 0x1DE4(v0)             ## 00001DE4
    lw      a2, 0x0000(a3)             ## 00000000
    sw      a3, 0x0040($sp)            
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sw      v0, 0x001C($sp)            
    jal     func_800636C4              ## sins?
    sw      a2, 0x0030($sp)            
    lui     $at, 0x42BE                ## $at = 42BE0000
    mtc1    $at, $f4                   ## $f4 = 95.00
    lw      v0, 0x001C($sp)            
    addiu   v1, $zero, 0x1770          ## v1 = 00001770
    mul.s   $f6, $f0, $f4              
    lw      a2, 0x0030($sp)            
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    bltzl   t2, lbl_80B620F4           
    lw      t5, 0x1DE4(v0)             ## 00001DE4
    lw      t3, 0x1DE4(v0)             ## 00001DE4
    sw      a2, 0x0030($sp)            
    multu   t3, v1                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x42BE                ## $at = 42BE0000
    mtc1    $at, $f10                  ## $f10 = 95.00
    lw      a2, 0x0030($sp)            
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    a3, $f18                   
    nop
    sll     a3, a3, 16                 
    beq     $zero, $zero, lbl_80B62134 
    sra     a3, a3, 16                 
    lw      t5, 0x1DE4(v0)             ## 00001DE4
lbl_80B620F4:
    sw      a2, 0x0030($sp)            
    multu   t5, v1                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x42BE                ## $at = 42BE0000
    mtc1    $at, $f4                   ## $f4 = 95.00
    lw      a2, 0x0030($sp)            
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    subu    a3, $zero, a3              
lbl_80B62134:
    lw      v0, 0x02C0(a2)             ## 000002C0
    lui     t8, 0xE700                 ## t8 = E7000000
    lui     t0, 0xFB00                 ## t0 = FB000000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(a2)             ## 000002C0
    sw      $zero, 0x0004(v0)          ## 00000004
    sw      t8, 0x0000(v0)             ## 00000000
    addiu   v1, a3, 0x00A0             ## v1 = 000000A0
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    lw      v0, 0x02C0(a2)             ## 000002C0
    andi    v1, v1, 0x00FF             ## v1 = 000000A0
    sll     t1, v1, 24                 
    sll     t2, v1, 16                 
    or      t3, t1, t2                 ## t3 = 00000000
    sll     t4, v1,  8                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(a2)             ## 000002C0
    or      t5, t3, t4                 ## t5 = 00000000
    ori     t6, t5, 0x00FF             ## t6 = 000000FF
    sw      t6, 0x0004(v0)             ## 00000004
    sw      t0, 0x0000(v0)             ## 00000000
    beq     $zero, $zero, lbl_80B621C0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B62194:
    beq     $zero, $zero, lbl_80B621BC 
    sw      $zero, 0x0000(a2)          ## 00000000
lbl_80B6219C:
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    bne     a1, $at, lbl_80B621BC      
    lw      t7, 0x0054($sp)            
    lbu     t8, 0x0273(t7)             ## 0000027B
    andi    t9, t8, 0x0002             ## t9 = 00000000
    beql    t9, $zero, lbl_80B621C0    
    or      v0, $zero, $zero           ## v0 = 00000000
    sw      $zero, 0x0000(a2)          ## 00000000
lbl_80B621BC:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B621C0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B621D0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lw      a1, 0x0038($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80050CE4              
    addiu   a1, a1, 0x0294             ## a1 = 00000294
    lw      v1, 0x0038($sp)            
    lw      a1, 0x002C($sp)            
    lw      t0, 0x0030($sp)            
    lbu     v0, 0x0273(v1)             ## 00000273
    addiu   a2, $zero, 0x000B          ## a2 = 0000000B
    addiu   a0, v1, 0x027C             ## a0 = 0000027C
    xori    t6, v0, 0x0001             ## t6 = 00000001
    bne     t6, $zero, lbl_80B62240    
    ori     t9, v0, 0x0004             ## t9 = 00000004
    addiu   t7, $zero, 0x0012          ## t7 = 00000012
    addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, $zero, 0x000C          ## a3 = 0000000C
    jal     func_80025DFC              
    sw      t0, 0x0014($sp)            
    beq     $zero, $zero, lbl_80B6226C 
    lw      $ra, 0x0024($sp)           
lbl_80B62240:
    bne     v0, t9, lbl_80B62268       
    addiu   a0, v1, 0x027C             ## a0 = 0000027C
    addiu   t2, $zero, 0x0012          ## t2 = 00000012
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0010($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   a3, $zero, 0x0012          ## a3 = 00000012
    jal     func_80025DFC              
    sw      t0, 0x0014($sp)            
lbl_80B62268:
    lw      $ra, 0x0024($sp)           
lbl_80B6226C:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B62278:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lw      v0, 0x0020($sp)            
    lui     t7, %hi(func_80B621D0)     ## t7 = 80B60000
    addiu   t7, t7, %lo(func_80B621D0) ## t7 = 80B621D0
    lui     a3, %hi(func_80B62000)     ## a3 = 80B60000
    lw      a1, 0x0140(v0)             ## 00000140
    lw      a2, 0x015C(v0)             ## 0000015C
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, %lo(func_80B62000) ## a3 = 80B62000
    lw      a0, 0x0024($sp)            
    jal     func_8008993C              
    sw      v0, 0x0014($sp)            
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B622D0: .word \
0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, \
0x00000000, 0x01000000, 0x0F000000, 0x00000000, \
0x000A0064, 0x00000000, 0x00000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x00050100, 0x01000000, \
0x00000000, 0x00140064
var_80B62318: .word 0x06110939, 0x10000000, 0x00000002
.word var_80B622D0
var_80B62328: .word \
0x10F2F1F2, 0x10F2F210, 0xE1F2F474, 0xF2F2F200, \
0x007460D3, 0x0000D1F4, 0xF2F2F8F4, 0x0000F400
var_80B62348: .word 0x01B00500, 0x00000015, 0x01840000, 0x00000334
.word func_80B60DFC
.word func_80B60FB4
.word func_80B61ED8
.word func_80B62278
var_80B62368: .word 0x00000000, 0x41000000, 0x00000000
var_80B62374: .word 0x00000000, 0xBFC00000, 0x00000000
var_80B62380: .word 0xB04C07D0, 0x386CF830, 0x00000000, 0x00000000

.section .rodata

var_80B62390: .word 0x40C8F5C3
var_80B62394: .word 0x3F4CCCCD
var_80B62398: .word 0x3DCCCCCD
var_80B6239C: .word 0x3C23D70A
var_80B623A0: .word 0x47435000
var_80B623A4: .word 0x3D4CCCCD
var_80B623A8: .word 0x3D4CCCCD
var_80B623AC: .word 0x3C23D70A
var_80B623B0: .word 0x3C75C28F
var_80B623B4: .word 0x45EA6000
var_80B623B8: .word 0x453B8000, 0x00000000

