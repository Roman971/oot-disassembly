#include <mips.h>
.set noreorder
.set noat

.section .text
func_808CA170:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     a1, %hi(var_808CBB94)      ## a1 = 808D0000
    addiu   a1, a1, %lo(var_808CBB94)  ## a1 = 808CBB94
    jal     func_80063F7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    lui     a1, 0x4416                 ## a1 = 44160000
    jal     func_8001EC20              
    lui     a3, 0x4282                 ## a3 = 42820000
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s1, 0x0188             ## t6 = 00000188
    addiu   t7, s1, 0x01FA             ## t7 = 000001FA
    addiu   t8, $zero, 0x0013          ## t8 = 00000013
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x12AC             ## a3 = 060012AC
    addiu   a2, a2, 0x3410             ## a2 = 06003410
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s1, 0x013C             ## a1 = 0000013C
    addiu   a1, s1, 0x0278             ## a1 = 00000278
    sw      a1, 0x0044($sp)            
    jal     func_8004AB7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a3, %hi(var_808CBB40)      ## a3 = 808D0000
    lw      a1, 0x0044($sp)            
    addiu   a3, a3, %lo(var_808CBB40)  ## a3 = 808CBB40
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s1, $zero              ## a2 = 00000000
    lui     a1, %hi(var_808CBB74)      ## a1 = 808D0000
    lui     a2, %hi(var_808CBB6C)      ## a2 = 808D0000
    addiu   a2, a2, %lo(var_808CBB6C)  ## a2 = 808CBB6C
    addiu   a1, a1, %lo(var_808CBB74)  ## a1 = 808CBB74
    jal     func_80050344              
    addiu   a0, s1, 0x0098             ## a0 = 00000098
    lh      v0, 0x001C(s1)             ## 0000001C
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_808CA314   
    nop
    lwc1    $f4, 0x0008(s1)            ## 00000008
    addiu   t1, v0, 0x0001             ## t1 = 00000001
    addiu   a0, s0, 0x1C24             ## a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x000C(s1)            ## 0000000C
    or      a1, s1, $zero              ## a1 = 00000000
    or      a2, s0, $zero              ## a2 = 00000000
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x0010(s1)            ## 00000010
    sw      $zero, 0x001C($sp)         
    addiu   a3, $zero, 0x003A          ## a3 = 0000003A
    swc1    $f8, 0x0018($sp)           
    lh      t9, 0x00B6(s1)             ## 000000B6
    sw      t1, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    addiu   t0, t9, 0x4000             ## t0 = 00004000
    jal     func_800253F0              
    sw      t0, 0x0020($sp)            
    bnel    v0, $zero, lbl_808CA298    
    lh      v0, 0x001C(s1)             ## 0000001C
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CA340 
    lw      $ra, 0x003C($sp)           
    lh      v0, 0x001C(s1)             ## 0000001C
lbl_808CA298:
    bne     v0, $zero, lbl_808CA314    
    nop
    lw      a0, 0x011C(s1)             ## 0000011C
    or      v0, $zero, $zero           ## v0 = 00000000
    addiu   v1, $zero, 0x0003          ## v1 = 00000003
    or      s0, a0, $zero              ## s0 = 00000000
lbl_808CA2B0:
    beq     s0, $zero, lbl_808CA2C4    
    nop
    addiu   v0, v0, 0x0001             ## v0 = 00000001
    bne     v0, v1, lbl_808CA2B0       
    lw      s0, 0x011C(s0)             ## 0000011C
lbl_808CA2C4:
    beql    v0, v1, lbl_808CA2F4       
    sw      s1, 0x0118(a0)             ## 00000118
    beq     s1, $zero, lbl_808CA33C    
    or      s0, s1, $zero              ## s0 = 00000000
lbl_808CA2D4:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      s0, 0x011C(s0)             ## 0000011C
    bne     s0, $zero, lbl_808CA2D4    
    nop
    beq     $zero, $zero, lbl_808CA340 
    lw      $ra, 0x003C($sp)           
    sw      s1, 0x0118(a0)             ## 00000118
lbl_808CA2F4:
    lw      t2, 0x011C(s1)             ## 0000011C
    lw      t3, 0x011C(t2)             ## 0000011C
    sw      s1, 0x0118(t3)             ## 00000118
    lw      t4, 0x011C(s1)             ## 0000011C
    lw      t5, 0x011C(t4)             ## 0000011C
    lw      t6, 0x011C(t5)             ## 0000011C
    sw      s1, 0x0118(t6)             ## 00000118
    lh      v0, 0x001C(s1)             ## 0000001C
lbl_808CA314:
    beq     v0, $zero, lbl_808CA324    
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bne     v0, $at, lbl_808CA334      
    nop
lbl_808CA324:
    jal     func_808CA3EC              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CA340 
    lw      $ra, 0x003C($sp)           
lbl_808CA334:
    jal     func_808CA58C              
    or      a0, s1, $zero              ## a0 = 00000000
lbl_808CA33C:
    lw      $ra, 0x003C($sp)           
lbl_808CA340:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_808CA350:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0278             ## a1 = 00000278
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA37C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    lh      a0, 0x0032(a1)             ## 00000032
    jal     func_800636C4              ## sins?
    sw      a1, 0x0018($sp)            
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f4                   ## $f4 = 80.00
    lw      a1, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0008(a1)            ## 00000008
    lh      a0, 0x0032(a1)             ## 00000032
    add.s   $f10, $f6, $f8             
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0024(a1)           ## 00000024
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f16                  ## $f16 = 80.00
    lw      a1, 0x0018($sp)            
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0010(a1)            ## 00000010
    lh      t6, 0x0032(a1)             ## 00000032
    addiu   t7, t6, 0x4000             ## t7 = 00004000
    sh      t7, 0x00B6(a1)             ## 000000B6
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(a1)            ## 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_808CA3EC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0x0019          ## t6 = 00000019
    lui     a1, 0x0600                 ## a1 = 06000000
    sw      t6, 0x0298(s0)             ## 00000298
    addiu   a1, a1, 0x12AC             ## a1 = 060012AC
    jal     func_8008D2D4              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     $at, 0x4220                ## $at = 42200000
    lwc1    $f4, 0x0008(s0)            ## 00000008
    mtc1    $at, $f8                   ## $f8 = 40.00
    lwc1    $f6, 0x000C(s0)            ## 0000000C
    lh      v0, 0x001C(s0)             ## 0000001C
    swc1    $f4, 0x0024(s0)            ## 00000024
    sub.s   $f10, $f6, $f8             
    lwc1    $f16, 0x0010(s0)           ## 00000010
    mtc1    $zero, $f18                ## $f18 = 0.00
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    swc1    $f10, 0x0028(s0)           ## 00000028
    swc1    $f16, 0x002C(s0)           ## 0000002C
    swc1    $f18, 0x0060(s0)           ## 00000060
    beq     v0, $at, lbl_808CA4A8      
    swc1    $f4, 0x0068(s0)            ## 00000068
    bnel    v0, $zero, lbl_808CA488    
    lw      t9, 0x0118(s0)             ## 00000118
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f6                   ## $f6 = 65536.00
    nop
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t8, $f10                   
    beq     $zero, $zero, lbl_808CA498 
    sh      t8, 0x0032(s0)             ## 00000032
    lw      t9, 0x0118(s0)             ## 00000118
lbl_808CA488:
    sll     t1, v0, 14                 
    lh      t0, 0x0032(t9)             ## 00000032
    addu    t2, t0, t1                 
    sh      t2, 0x0032(s0)             ## 00000032
lbl_808CA498:
    jal     func_808CA37C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CA4D8 
    lbu     t4, 0x0288(s0)             ## 00000288
lbl_808CA4A8:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f16                  ## $f16 = 65536.00
    nop
    mul.s   $f18, $f0, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sh      v0, 0x00B6(s0)             ## 000000B6
    sh      v0, 0x0032(s0)             ## 00000032
    lbu     t4, 0x0288(s0)             ## 00000288
lbl_808CA4D8:
    lbu     t6, 0x0289(s0)             ## 00000289
    lw      t8, 0x0004(s0)             ## 00000004
    mtc1    $zero, $f6                 ## $f6 = 0.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   $at, $zero, 0xEFFE         ## $at = FFFFEFFE
    lui     t0, %hi(func_808CAA48)     ## t0 = 808D0000
    addiu   t0, t0, %lo(func_808CAA48) ## t0 = 808CAA48
    andi    t5, t4, 0xFFFE             ## t5 = 00000000
    andi    t7, t6, 0xFFFE             ## t7 = 00000000
    and     t9, t8, $at                
    sb      t5, 0x0288(s0)             ## 00000288
    sb      t7, 0x0289(s0)             ## 00000289
    sw      t9, 0x0004(s0)             ## 00000004
    sw      t0, 0x0180(s0)             ## 00000180
    swc1    $f6, 0x00C4(s0)            ## 000000C4
    swc1    $f8, 0x00BC(s0)            ## 000000BC
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA52C:
    lh      t6, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    lui     t8, %hi(func_808CAAC8)     ## t8 = 808D0000
    bne     t6, $at, lbl_808CA55C      
    addiu   t8, t8, %lo(func_808CAAC8) ## t8 = 808CAAC8
    lui     $at, 0xBF00                ## $at = BF000000
    mtc1    $at, $f4                   ## $f4 = -0.50
    lui     t7, %hi(func_808CAB44)     ## t7 = 808D0000
    addiu   t7, t7, %lo(func_808CAB44) ## t7 = 808CAB44
    sw      t7, 0x0180(a0)             ## 00000180
    beq     $zero, $zero, lbl_808CA560 
    swc1    $f4, 0x0068(a0)            ## 00000068
lbl_808CA55C:
    sw      t8, 0x0180(a0)             ## 00000180
lbl_808CA560:
    lw      t1, 0x0004(a0)             ## 00000004
    lbu     t9, 0x0289(a0)             ## 00000289
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    and     t2, t1, $at                
    sw      t2, 0x0004(a0)             ## 00000004
    ori     t4, t2, 0x0001             ## t4 = 00000001
    ori     t0, t9, 0x0001             ## t0 = 00000001
    sb      t0, 0x0289(a0)             ## 00000289
    sw      t4, 0x0004(a0)             ## 00000004
    jr      $ra                        
    nop


func_808CA58C:
    lw      t6, 0x0004(a0)             ## 00000004
    lh      t8, 0x00B6(a0)             ## 000000B6
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lui     t9, %hi(func_808CAC78)     ## t9 = 808D0000
    addiu   t9, t9, %lo(func_808CAC78) ## t9 = 808CAC78
    and     t7, t6, $at                
    sw      t7, 0x0004(a0)             ## 00000004
    sw      t9, 0x0180(a0)             ## 00000180
    sh      t8, 0x0032(a0)             ## 00000032
    jr      $ra                        
    nop


func_808CA5B8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0704             ## a1 = 06000704
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008D1C4              
    swc1    $f4, 0x0068(s0)            ## 00000068
    lui     t6, 0xFFCF                 ## t6 = FFCF0000
    ori     t6, t6, 0xFFFF             ## t6 = FFCFFFFF
    sw      t6, 0x0298(s0)             ## 00000298
    addiu   v0, s0, 0x0024             ## v0 = 00000024
    lw      t8, 0x0000(v0)             ## 00000024
    lui     $at, 0x4282                ## $at = 42820000
    mtc1    $at, $f6                   ## $f6 = 65.00
    sw      t8, 0x026C(s0)             ## 0000026C
    lw      t7, 0x0004(v0)             ## 00000028
    lw      t0, 0x0004(s0)             ## 00000004
    lbu     t2, 0x0289(s0)             ## 00000289
    sw      t7, 0x0270(s0)             ## 00000270
    lw      t8, 0x0008(v0)             ## 0000002C
    lui     $at, 0x4416                ## $at = 44160000
    lh      t9, 0x00B6(s0)             ## 000000B6
    mtc1    $at, $f8                   ## $f8 = 600.00
    ori     t1, t0, 0x1000             ## t1 = 00001000
    andi    t3, t2, 0xFFFE             ## t3 = 00000000
    sw      t1, 0x0004(s0)             ## 00000004
    sb      t3, 0x0289(s0)             ## 00000289
    swc1    $f6, 0x00C4(s0)            ## 000000C4
    sw      t8, 0x0274(s0)             ## 00000274
    sh      t9, 0x0032(s0)             ## 00000032
    swc1    $f8, 0x00BC(s0)            ## 000000BC
    sw      v0, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38C2          ## a1 = 000038C2
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t5, $zero, 0x02BC          ## t5 = 000002BC
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lw      a0, 0x0034($sp)            
    lw      a1, 0x002C($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_8001CF94              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     t6, %hi(func_808CAD0C)     ## t6 = 808D0000
    addiu   t6, t6, %lo(func_808CAD0C) ## t6 = 808CAD0C
    sw      t6, 0x0180(s0)             ## 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA698:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t6, 0x00B6(a3)             ## 000000B6
    lui     $at, %hi(var_808CBBA0)     ## $at = 808D0000
    sh      t6, 0x0186(a3)             ## 00000186
    sw      a3, 0x0018($sp)            
    jal     func_800D2CD0              
    lwc1    $f12, %lo(var_808CBBA0)($at) 
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    lw      a3, 0x0018($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0028(a3)            ## 00000028
    addiu   a1, a1, 0x0FC0             ## a1 = 06000FC0
    lui     a2, 0xC0A0                 ## a2 = C0A00000
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    add.s   $f10, $f6, $f8             
    jal     func_8008D328              
    swc1    $f10, 0x0270(a3)           ## 00000270
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_808CAE64)     ## t8 = 808D0000
    addiu   t7, $zero, 0x003C          ## t7 = 0000003C
    addiu   t8, t8, %lo(func_808CAE64) ## t8 = 808CAE64
    sh      t7, 0x0184(a3)             ## 00000184
    sw      t8, 0x0180(a3)             ## 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA714:
    lui     t6, %hi(func_808CB080)     ## t6 = 808D0000
    addiu   t6, t6, %lo(func_808CB080) ## t6 = 808CB080
    sw      t6, 0x0180(a0)             ## 00000180
    jr      $ra                        
    nop


func_808CA728:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lw      v0, 0x1C44(a1)             ## 00001C44
    lui     $at, 0x4170                ## $at = 41700000
    swc1    $f4, 0x0060(a0)            ## 00000060
    mtc1    $at, $f8                   ## $f8 = 15.00
    lwc1    $f6, 0x0028(v0)            ## 00000028
    lbu     t6, 0x0288(a0)             ## 00000288
    lui     t0, %hi(func_808CB17C)     ## t0 = 808D0000
    add.s   $f10, $f6, $f8             
    ori     t8, t6, 0x0001             ## t8 = 00000001
    sb      t8, 0x0288(a0)             ## 00000288
    andi    t9, t8, 0xFFFD             ## t9 = 00000001
    addiu   t0, t0, %lo(func_808CB17C) ## t0 = 808CB17C
    swc1    $f10, 0x0270(a0)           ## 00000270
    sb      t9, 0x0288(a0)             ## 00000288
    sw      t0, 0x0180(a0)             ## 00000180
    jr      $ra                        
    nop


func_808CA770:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x04C4             ## a1 = 060004C4
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lui     a2, 0xC040                 ## a2 = C0400000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    lbu     t6, 0x0288(a3)             ## 00000288
    lw      t8, 0x0004(a3)             ## 00000004
    lui     t1, %hi(var_808CBB62)      ## t1 = 808D0000
    andi    t7, t6, 0xFFFE             ## t7 = 00000000
    ori     t9, t8, 0x0010             ## t9 = 00000010
    sb      t7, 0x0288(a3)             ## 00000288
    sw      t9, 0x0004(a3)             ## 00000004
    sh      t0, 0x0184(a3)             ## 00000184
    swc1    $f4, 0x006C(a3)            ## 0000006C
    lh      t1, %lo(var_808CBB62)(t1)  
    lui     t2, %hi(func_808CB208)     ## t2 = 808D0000
    addiu   t2, t2, %lo(func_808CB208) ## t2 = 808CB208
    sw      t2, 0x0180(a3)             ## 00000180
    sh      t1, 0x02BA(a3)             ## 000002BA
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA7E8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lwc1    $f4, 0x0028(s0)            ## 00000028
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f6                   ## $f6 = -3.00
    swc1    $f4, 0x0270(s0)            ## 00000270
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0FC0             ## a1 = 06000FC0
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x4000                 ## a2 = 40000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f8                   ## $f8 = 5.00
    addiu   t6, $zero, 0x0028          ## t6 = 00000028
    sh      t6, 0x0184(s0)             ## 00000184
    addiu   t7, $zero, 0x0028          ## t7 = 00000028
    swc1    $f0, 0x006C(s0)            ## 0000006C
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f8, 0x0068(s0)            ## 00000068
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lbu     t8, 0x0289(s0)             ## 00000289
    lui     t0, %hi(func_808CB2FC)     ## t0 = 808D0000
    addiu   t0, t0, %lo(func_808CB2FC) ## t0 = 808CB2FC
    andi    t9, t8, 0xFFFE             ## t9 = 00000000
    sb      t9, 0x0289(s0)             ## 00000289
    sw      t0, 0x0180(s0)             ## 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA898:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   t6, $zero, 0x0014          ## t6 = 00000014
    sh      t6, 0x0184(s0)             ## 00000184
    addiu   t7, $zero, 0x0028          ## t7 = 00000028
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      t8, 0x0298(s0)             ## 00000298
    addiu   $at, $zero, 0x0019         ## $at = 00000019
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beq     t8, $at, lbl_808CA900      
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f4                   ## $f4 = 6.00
    addiu   a1, a1, 0x0FC0             ## a1 = 06000FC0
    lui     a2, 0xC040                 ## a2 = C0400000
    jal     func_8008D328              
    swc1    $f4, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_808CA918 
    lbu     t0, 0x0288(s0)             ## 00000288
lbl_808CA900:
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f8                   ## $f8 = 6.00
    lwc1    $f6, 0x0068(s0)            ## 00000068
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
    lbu     t0, 0x0288(s0)             ## 00000288
lbl_808CA918:
    lbu     t2, 0x0289(s0)             ## 00000289
    lui     t9, 0xFFCF                 ## t9 = FFCF0000
    lui     t4, %hi(func_808CB434)     ## t4 = 808D0000
    ori     t9, t9, 0xFFFF             ## t9 = FFCFFFFF
    addiu   t4, t4, %lo(func_808CB434) ## t4 = 808CB434
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    andi    t3, t2, 0xFFFE             ## t3 = 00000000
    sw      t9, 0x0298(s0)             ## 00000298
    sb      t1, 0x0288(s0)             ## 00000288
    sb      t3, 0x0289(s0)             ## 00000289
    sw      t4, 0x0180(s0)             ## 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CA958:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     t8, %hi(func_808CB4E8)     ## t8 = 808D0000
    lhu     t6, 0x0112(a0)             ## 00000112
    addiu   t8, t8, %lo(func_808CB4E8) ## t8 = 808CB4E8
    swc1    $f0, 0x0068(a0)            ## 00000068
    ori     t7, t6, 0x2000             ## t7 = 00002000
    swc1    $f0, 0x0060(a0)            ## 00000060
    sh      t7, 0x0112(a0)             ## 00000112
    sw      t8, 0x0180(a0)             ## 00000180
    jr      $ra                        
    nop


func_808CA984:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0288             ## a1 = 06000288
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x4000                 ## a2 = 40000000
    swc1    $f0, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f6                   ## $f6 = -1.00
    addiu   t6, $zero, 0x0050          ## t6 = 00000050
    sh      t6, 0x0184(s0)             ## 00000184
    lui     t7, %hi(var_808CBB62)      ## t7 = 808D0000
    swc1    $f0, 0x0068(s0)            ## 00000068
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f6, 0x006C(s0)            ## 0000006C
    lh      t7, %lo(var_808CBB62)(t7)  
    addiu   t9, $zero, 0x0050          ## t9 = 00000050
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t8, t7, 0x0008             ## t8 = 808D0008
    sh      t8, 0x02BA(s0)             ## 000002BA
    sw      t9, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lbu     t0, 0x0288(s0)             ## 00000288
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    jal     func_80022FD0              
    sb      t1, 0x0288(s0)             ## 00000288
    lui     t2, %hi(func_808CB568)     ## t2 = 808D0000
    addiu   t2, t2, %lo(func_808CB568) ## t2 = 808CB568
    sw      t2, 0x0180(s0)             ## 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAA48:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    lw      v1, 0x0018($sp)            
    lui     a2, 0x3F40                 ## a2 = 3F400000
    addiu   a0, v1, 0x0028             ## a0 = 00000028
    jal     func_8006385C              
    lw      a1, 0x000C(v1)             ## 0000000C
    beql    v0, $zero, lbl_808CAA8C    
    lw      $ra, 0x0014($sp)           
    jal     func_808CA52C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_808CAA8C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAA98:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     v0, 0x028B(a0)             ## 0000028B
    andi    t6, v0, 0x0001             ## t6 = 00000000
    beq     t6, $zero, lbl_808CAAB8    
    andi    t7, v0, 0xFFFE             ## t7 = 00000000
    jal     func_808CA5B8              
    sb      t7, 0x028B(a0)             ## 0000028B
lbl_808CAAB8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAAC8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      t6, 0x0032(s0)             ## 00000032
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t7, t6, 0xFFA0             ## t7 = FFFFFFA0
    jal     func_808CA37C              
    sh      t7, 0x0032(s0)             ## 00000032
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CAA98              
    lw      a1, 0x0024($sp)            
    lh      t8, 0x001C(s0)             ## 0000001C
    beql    t8, $zero, lbl_808CAB34    
    lw      $ra, 0x001C($sp)           
    lw      t0, 0x0118(s0)             ## 00000118
    lui     t9, %hi(func_808CAAC8)     ## t9 = 808D0000
    addiu   t9, t9, %lo(func_808CAAC8) ## t9 = 808CAAC8
    lw      t1, 0x0180(t0)             ## 00000180
    beql    t9, t1, lbl_808CAB34       
    lw      $ra, 0x001C($sp)           
    jal     func_808CA58C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_808CAB34:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAB44:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x0020($sp)            
    jal     func_80021528              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f4                   ## $f4 = 100.00
    lw      a1, 0x0020($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_808CABA8               
    lh      t7, 0x0032(s0)             ## 00000032
    jal     func_8002140C              
    or      a0, s0, $zero              ## a0 = 00000000
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t6, v0, $at                
    beq     $zero, $zero, lbl_808CAC48 
    sh      t6, 0x0186(s0)             ## 00000186
    lh      t7, 0x0032(s0)             ## 00000032
lbl_808CABA8:
    lh      t8, 0x0186(s0)             ## 00000186
    bnel    t7, t8, lbl_808CAC4C       
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_808CBBA4)     ## $at = 808D0000
    lwc1    $f6, %lo(var_808CBBA4)($at) 
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_808CAC4C               
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_808CAC00               
    nop
    beq     $zero, $zero, lbl_808CAC00 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_808CAC00:
    jal     func_800CDCCC              ## Rand.Next() float
    sw      v0, 0x0024($sp)            
    lui     $at, 0x4600                ## $at = 46000000
    mtc1    $at, $f2                   ## $f2 = 8192.00
    lw      v0, 0x0024($sp)            
    lh      t9, 0x0032(s0)             ## 00000032
    mul.s   $f10, $f0, $f2             
    mtc1    v0, $f18                   ## $f18 = 0.00
    mtc1    t9, $f8                    ## $f8 = 0.00
    cvt.s.w $f4, $f18                  
    add.s   $f16, $f10, $f2            
    cvt.s.w $f10, $f8                  
    mul.s   $f6, $f16, $f4             
    add.s   $f18, $f6, $f10            
    trunc.w.s $f16, $f18                 
    mfc1    t1, $f16                   
    nop
    sh      t1, 0x0186(s0)             ## 00000186
lbl_808CAC48:
    addiu   a0, s0, 0x0032             ## a0 = 00000032
lbl_808CAC4C:
    lh      a1, 0x0186(s0)             ## 00000186
    jal     func_80063704              
    addiu   a2, $zero, 0x00B6          ## a2 = 000000B6
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CAA98              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAC78:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f6                   ## $f6 = 50.00
    lwc1    $f4, 0x000C(a0)            ## 0000000C
    lwc1    $f0, 0x0028(a0)            ## 00000028
    lui     t7, %hi(func_808CAA48)     ## t7 = 808D0000
    sub.s   $f8, $f4, $f6              
    lui     $at, 0x3F00                ## $at = 3F000000
    addiu   t7, t7, %lo(func_808CAA48) ## t7 = 808CAA48
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_808CACC8               
    lw      v0, 0x0118(a0)             ## 00000118
    mtc1    $at, $f10                  ## $f10 = 0.50
    nop
    sub.s   $f16, $f0, $f10            
    swc1    $f16, 0x0028(a0)           ## 00000028
    lw      v0, 0x0118(a0)             ## 00000118
lbl_808CACC8:
    lui     t6, %hi(func_808CB4E8)     ## t6 = 808D0000
    addiu   t6, t6, %lo(func_808CB4E8) ## t6 = 808CB4E8
    lw      v1, 0x0180(v0)             ## 00000180
    bne     t6, v1, lbl_808CACEC       
    nop
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_808CAD00 
    lw      $ra, 0x0014($sp)           
lbl_808CACEC:
    bnel    t7, v1, lbl_808CAD00       
    lw      $ra, 0x0014($sp)           
    jal     func_808CA3EC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_808CAD00:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAD0C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    sw      v0, 0x003C($sp)            
    lui     $at, 0x4140                ## $at = 41400000
    lwc1    $f0, 0x0154(s0)            ## 00000154
    mtc1    $at, $f4                   ## $f4 = 12.00
    lui     $at, 0x42A0                ## $at = 42A00000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808CADE0               
    lwc1    $f4, 0x000C(s0)            ## 0000000C
    lui     $at, %hi(var_808CBBA8)     ## $at = 808D0000
    lwc1    $f6, %lo(var_808CBBA8)($at) 
    mul.s   $f12, $f6, $f0             
    jal     func_800D2CD0              
    swc1    $f12, 0x002C($sp)          
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f8                   ## $f8 = 1.00
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f16                  ## $f16 = 40.00
    sub.s   $f10, $f8, $f0             
    lwc1    $f4, 0x000C(s0)            ## 0000000C
    lwc1    $f12, 0x002C($sp)          
    mul.s   $f18, $f10, $f16           
    add.s   $f6, $f18, $f4             
    jal     func_800CF470              
    swc1    $f6, 0x0028(s0)            ## 00000028
    lui     $at, 0xC220                ## $at = C2200000
    mtc1    $at, $f8                   ## $f8 = -40.00
    nop
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x0034($sp)          
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f16, 0x0034($sp)          
    lwc1    $f4, 0x026C(s0)            ## 0000026C
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    jal     func_80063684              ## coss?
    swc1    $f6, 0x0024(s0)            ## 00000024
    lwc1    $f8, 0x0034($sp)           
    lwc1    $f16, 0x0274(s0)           ## 00000274
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_808CAE08 
    swc1    $f18, 0x002C(s0)           ## 0000002C
    lwc1    $f4, 0x000C(s0)            ## 0000000C
lbl_808CADE0:
    mtc1    $at, $f6                   ## $f6 = 0.00
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    lui     a2, 0x3F00                 ## a2 = 3F000000
    add.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    lui     $at, %hi(var_808CBBAC)     ## $at = 808D0000
    lwc1    $f10, %lo(var_808CBBAC)($at) 
    swc1    $f10, 0x0068(s0)           ## 00000068
lbl_808CAE08:
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x0078             ## a1 = 00000078
    beq     t6, $zero, lbl_808CAE38    
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    lbu     t7, 0x0289(s0)             ## 00000289
    or      a0, s0, $zero              ## a0 = 00000000
    ori     t8, t7, 0x0001             ## t8 = 00000001
    jal     func_808CA698              
    sb      t8, 0x0289(s0)             ## 00000289
    beq     $zero, $zero, lbl_808CAE54 
    lw      $ra, 0x0024($sp)           
lbl_808CAE38:
    addiu   t9, s0, 0x0024             ## t9 = 00000024
    sw      t9, 0x0010($sp)            
    addiu   a2, $sp, 0x0030            ## a2 = FFFFFFF0
    jal     func_8002F4B8              ## Raycast
    or      a3, s0, $zero              ## a3 = 00000000
    swc1    $f0, 0x0080(s0)            ## 00000080
    lw      $ra, 0x0024($sp)           
lbl_808CAE54:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CAE64:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      v1, 0x0184(s0)             ## 00000184
    beq     v1, $zero, lbl_808CAE90    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             ## 00000184
lbl_808CAE90:
    lwc1    $f4, 0x0154(s0)            ## 00000154
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f8                   ## $f8 = 80.00
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0080(s0)            ## 00000080
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f16                  ## $f16 = 5.00
    add.s   $f10, $f6, $f8             
    lui     a2, 0x3E99                 ## a2 = 3E990000
    ori     a2, a2, 0x999A             ## a2 = 3E99999A
    lw      a3, 0x0068(s0)             ## 00000068
    add.s   $f18, $f10, $f16           
    addiu   a0, s0, 0x0270             ## a0 = 00000270
    mfc1    a1, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    lwc1    $f4, 0x002C($sp)           
    lui     $at, %hi(var_808CBBB0)     ## $at = 808D0000
    lwc1    $f10, %lo(var_808CBBB0)($at) 
    sub.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800D2CD0              
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f18                  ## $f18 = 5.00
    lwc1    $f16, 0x0270(s0)           ## 00000270
    lui     $at, 0x4234                ## $at = 42340000
    mul.s   $f4, $f0, $f18             
    mtc1    $at, $f8                   ## $f8 = 45.00
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a1, 0x3FC0                 ## a1 = 3FC00000
    lui     a2, 0x3CF5                 ## a2 = 3CF50000
    sub.s   $f6, $f16, $f4             
    swc1    $f6, 0x0028(s0)            ## 00000028
    lwc1    $f10, 0x002C($sp)          
    c.le.s  $f10, $f8                  
    nop
    bc1f    lbl_808CAF50               
    nop
    lui     a2, 0x3CF5                 ## a2 = 3CF50000
    ori     a2, a2, 0xC28F             ## a2 = 3CF5C28F
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x3F80                 ## a1 = 3F800000
    beq     $zero, $zero, lbl_808CAF5C 
    lhu     t7, 0x0088(s0)             ## 00000088
lbl_808CAF50:
    jal     func_8006385C              
    ori     a2, a2, 0xC28F             ## a2 = 0000C28F
    lhu     t7, 0x0088(s0)             ## 00000088
lbl_808CAF5C:
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x00B6          ## a2 = 000000B6
    andi    t8, t7, 0x0008             ## t8 = 00000000
    beq     t8, $zero, lbl_808CAF78    
    nop
    lh      t9, 0x007E(s0)             ## 0000007E
    sh      t9, 0x0186(s0)             ## 00000186
lbl_808CAF78:
    jal     func_80063704              
    lh      a1, 0x0186(s0)             ## 00000186
    beql    v0, $zero, lbl_808CB018    
    lh      t7, 0x0184(s0)             ## 00000184
    lh      t0, 0x0184(s0)             ## 00000184
    bnel    t0, $zero, lbl_808CAFBC    
    lh      t1, 0x0032(s0)             ## 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_808CBBB4)     ## $at = 808D0000
    lwc1    $f18, %lo(var_808CBBB4)($at) 
    addiu   a0, $zero, 0x2000          ## a0 = 00002000
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_808CAFC8               
    nop
    lh      t1, 0x0032(s0)             ## 00000032
lbl_808CAFBC:
    addiu   t2, t1, 0x0100             ## t2 = 00000100
    beq     $zero, $zero, lbl_808CB014 
    sh      t2, 0x0032(s0)             ## 00000032
lbl_808CAFC8:
    jal     func_80063BF0              
    addiu   a1, $zero, 0x2000          ## a1 = 00002000
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v0, 0x0026($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    lh      t3, 0x0026($sp)            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_808CB000               
    nop
    beq     $zero, $zero, lbl_808CB000 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_808CB000:
    multu   v0, t3                     
    lh      t5, 0x0032(s0)             ## 00000032
    mflo    t4                         
    addu    t6, t4, t5                 
    sh      t6, 0x0186(s0)             ## 00000186
lbl_808CB014:
    lh      t7, 0x0184(s0)             ## 00000184
lbl_808CB018:
    bnel    t7, $zero, lbl_808CB064    
    or      a0, s0, $zero              ## a0 = 00000000
    lwc1    $f4, 0x0094(s0)            ## 00000094
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, 0x42F0                ## $at = 42F00000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_808CB064               
    or      a0, s0, $zero              ## a0 = 00000000
    lwc1    $f8, 0x0090(s0)            ## 00000090
    mtc1    $at, $f10                  ## $f10 = 120.00
    nop
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_808CB064               
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CA714              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808CB064:
    jal     func_8002313C              
    addiu   a1, $zero, 0x314F          ## a1 = 0000314F
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB080:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lw      v1, 0x1C44(t6)             ## 00001C44
    jal     func_8008C9C0              
    sw      v1, 0x0034($sp)            
    lh      a0, 0x00B4(s0)             ## 000000B4
    ori     $at, $zero, 0x8000         ## $at = 00008000
    lw      v1, 0x0034($sp)            
    blez    a0, lbl_808CB120           
    slt     $at, a0, $at               
    beql    $at, $zero, lbl_808CB124   
    addiu   t7, a0, 0xF000             ## t7 = FFFFF000
    lwc1    $f4, 0x0024(v1)            ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f8                   ## $f8 = 20.00
    swc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0028(v1)            ## 00000028
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x0028            ## a1 = FFFFFFF0
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x002C($sp)          
    lwc1    $f16, 0x002C(v1)           ## 0000002C
    jal     func_80021488              
    swc1    $f16, 0x0030($sp)          
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    jal     func_80063704              
    addiu   a2, $zero, 0x1000          ## a2 = 00001000
    beq     v0, $zero, lbl_808CB128    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CA728              
    lw      a1, 0x003C($sp)            
    beq     $zero, $zero, lbl_808CB12C 
    lh      t8, 0x00B4(s0)             ## 000000B4
lbl_808CB120:
    addiu   t7, a0, 0xF000             ## t7 = FFFFF000
lbl_808CB124:
    sh      t7, 0x00B4(s0)             ## 000000B4
lbl_808CB128:
    lh      t8, 0x00B4(s0)             ## 000000B4
lbl_808CB12C:
    lui     a2, 0x3E99                 ## a2 = 3E990000
    ori     a2, a2, 0x999A             ## a2 = 3E99999A
    subu    t9, $zero, t8              
    sh      t9, 0x0030(s0)             ## 00000030
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_8006385C              
    lui     a1, 0x40A0                 ## a1 = 40A00000
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    lh      a1, 0x008A(s0)             ## 0000008A
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x071C          ## a3 = 0000071C
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x314F          ## a1 = 0000314F
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB17C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, %hi(var_808CBBB8)     ## $at = 808D0000
    lwc1    $f6, %lo(var_808CBBB8)($at) 
    lwc1    $f4, 0x0068(a2)            ## 00000068
    lhu     v0, 0x0088(a2)             ## 00000088
    or      a0, a2, $zero              ## a0 = 00000000
    mul.s   $f8, $f4, $f6              
    andi    t6, v0, 0x0008             ## t6 = 00000000
    andi    t7, v0, 0x0001             ## t7 = 00000000
    bne     t6, $zero, lbl_808CB1CC    
    swc1    $f8, 0x0068(a2)            ## 00000068
    beql    t7, $zero, lbl_808CB1DC    
    lbu     v0, 0x0288(a2)             ## 00000288
lbl_808CB1CC:
    jal     func_808CA770              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lbu     v0, 0x0288(a2)             ## 00000288
lbl_808CB1DC:
    or      a0, a2, $zero              ## a0 = 00000000
    andi    t8, v0, 0x0002             ## t8 = 00000000
    beq     t8, $zero, lbl_808CB1F0    
    andi    t9, v0, 0xFFFC             ## t9 = 00000000
    sb      t9, 0x0288(a2)             ## 00000288
lbl_808CB1F0:
    jal     func_8002313C              
    addiu   a1, $zero, 0x314F          ## a1 = 0000314F
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB208:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    addiu   a0, s0, 0x0030             ## a0 = 00000030
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0450          ## a2 = 00000450
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a1, 0x40E0                 ## a1 = 40E00000
    jal     func_8006385C              
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lh      v0, 0x0184(s0)             ## 00000184
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    bne     v0, $at, lbl_808CB2C4      
    nop
    lhu     v0, 0x0088(s0)             ## 00000088
    addiu   t8, $zero, 0x000A          ## t8 = 0000000A
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    andi    t6, v0, 0x0008             ## t6 = 00000000
    bne     t6, $zero, lbl_808CB274    
    andi    t7, v0, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_808CB2EC    
    lw      $ra, 0x0024($sp)           
lbl_808CB274:
    sh      t8, 0x0184(s0)             ## 00000184
    sw      a1, 0x002C($sp)            
    lw      a0, 0x0034($sp)            
    addiu   a2, $zero, 0x001E          ## a2 = 0000001E
    jal     func_80058FF8              
    addiu   a3, $zero, 0x38C4          ## a3 = 000038C4
    lhu     t9, 0x0088(s0)             ## 00000088
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0034($sp)            
    andi    t0, t9, 0x0001             ## t0 = 00000000
    beq     t0, $zero, lbl_808CB2E8    
    or      a2, $zero, $zero           ## a2 = 00000000
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    addiu   t2, $zero, 0x02BC          ## t2 = 000002BC
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    jal     func_8001CF94              
    or      a3, $zero, $zero           ## a3 = 00000000
    beq     $zero, $zero, lbl_808CB2EC 
    lw      $ra, 0x0024($sp)           
lbl_808CB2C4:
    beq     v0, $zero, lbl_808CB2D4    
    addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
    sh      t3, 0x0184(s0)             ## 00000184
    lh      v0, 0x0184(s0)             ## 00000184
lbl_808CB2D4:
    bne     v0, $zero, lbl_808CB2E8    
    or      a0, s0, $zero              ## a0 = 00000000
    sh      $zero, 0x00B4(s0)          ## 000000B4
    jal     func_808CA3EC              
    sh      $zero, 0x0030(s0)          ## 00000030
lbl_808CB2E8:
    lw      $ra, 0x0024($sp)           
lbl_808CB2EC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB2FC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      v0, 0x0184(s0)             ## 00000184
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f6                   ## $f6 = 80.00
    beq     v0, $zero, lbl_808CB330    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             ## 00000184
lbl_808CB330:
    lwc1    $f4, 0x0080(s0)            ## 00000080
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f10                  ## $f10 = 5.00
    add.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x0270             ## a0 = 00000270
    lui     a2, 0x3F00                 ## a2 = 3F000000
    lw      a3, 0x0068(s0)             ## 00000068
    add.s   $f16, $f8, $f10            
    mfc1    a1, $f16                   
    jal     func_80064280              
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    lwc1    $f18, 0x0270(s0)           ## 00000270
    lhu     t7, 0x0088(s0)             ## 00000088
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    sub.s   $f6, $f18, $f4             
    andi    t8, t7, 0x0008             ## t8 = 00000000
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    beq     t8, $zero, lbl_808CB390    
    swc1    $f6, 0x0028(s0)            ## 00000028
    lh      t9, 0x007E(s0)             ## 0000007E
    beq     $zero, $zero, lbl_808CB3A0 
    sh      t9, 0x0186(s0)             ## 00000186
lbl_808CB390:
    lh      t0, 0x008A(s0)             ## 0000008A
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t1, t0, $at                
    sh      t1, 0x0186(s0)             ## 00000186
lbl_808CB3A0:
    jal     func_80063704              
    lh      a1, 0x0186(s0)             ## 00000186
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    lh      t2, 0x0184(s0)             ## 00000184
    lui     $at, %hi(var_808CBBBC)     ## $at = 808D0000
    lwc1    $f16, %lo(var_808CBBBC)($at) 
    mtc1    t2, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f12, $f10, $f16           
    jal     func_800CF470              
    nop
    lui     $at, 0x45A0                ## $at = 45A00000
    mtc1    $at, $f18                  ## $f18 = 5120.00
    lh      t5, 0x0184(s0)             ## 00000184
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    bne     t5, $zero, lbl_808CB418    
    sh      t4, 0x00B8(s0)             ## 000000B8
    lbu     t6, 0x0289(s0)             ## 00000289
    sh      $zero, 0x00B4(s0)          ## 000000B4
    sh      $zero, 0x00B8(s0)          ## 000000B8
    ori     t7, t6, 0x0001             ## t7 = 00000001
    jal     func_808CA698              
    sb      t7, 0x0289(s0)             ## 00000289
lbl_808CB418:
    lh      t8, 0x00B4(s0)             ## 000000B4
    subu    t9, $zero, t8              
    sh      t9, 0x0030(s0)             ## 00000030
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808CB434:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lwc1    $f6, 0x0068(s0)            ## 00000068
    addiu   a2, $zero, 0x0400          ## a2 = 00000400
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    c.lt.s  $f4, $f6                   
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    bc1f    lbl_808CB484               
    nop
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    jal     func_80063704              
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    beq     $zero, $zero, lbl_808CB490 
    lh      t6, 0x00B8(s0)             ## 000000B8
lbl_808CB484:
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          ## a2 = 00000400
    lh      t6, 0x00B8(s0)             ## 000000B8
lbl_808CB490:
    lh      v0, 0x0184(s0)             ## 00000184
    addiu   t7, t6, 0x1000             ## t7 = 00001000
    beq     v0, $zero, lbl_808CB4AC    
    sh      t7, 0x00B8(s0)             ## 000000B8
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0184(s0)             ## 00000184
    lh      v0, 0x0184(s0)             ## 00000184
lbl_808CB4AC:
    lh      t9, 0x00B4(s0)             ## 000000B4
    subu    t0, $zero, t9              
    beq     v0, $zero, lbl_808CB4CC    
    sh      t0, 0x0030(s0)             ## 00000030
    lhu     t1, 0x0088(s0)             ## 00000088
    andi    t2, t1, 0x0010             ## t2 = 00000000
    beql    t2, $zero, lbl_808CB4D8    
    lw      $ra, 0x001C($sp)           
lbl_808CB4CC:
    jal     func_808CA958              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_808CB4D8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB4E8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x00C8(s0)             ## 000000C8
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f6                   ## $f6 = 2.00
    addiu   v0, v0, 0xFFFB             ## v0 = FFFFFFFB
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgez    v0, lbl_808CB524           
    or      a1, s0, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_808CB528 
    sb      $zero, 0x00C8(s0)          ## 000000C8
lbl_808CB524:
    sb      v0, 0x00C8(s0)             ## 000000C8
lbl_808CB528:
    lwc1    $f4, 0x0028(s0)            ## 00000028
    lbu     t6, 0x00C8(s0)             ## 000000C8
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    sub.s   $f8, $f4, $f6              
    addiu   a3, $zero, 0x0050          ## a3 = 00000050
    bne     t6, $zero, lbl_808CB554    
    swc1    $f8, 0x0028(s0)            ## 00000028
    jal     func_80013A84              
    lw      a0, 0x0024($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808CB554:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB568:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0184(s0)             ## 00000184
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    or      a1, $zero, $zero           ## a1 = 00000000
    beq     v0, $zero, lbl_808CB594    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             ## 00000184
lbl_808CB594:
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    beq     v0, $zero, lbl_808CB5C4    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394E          ## a1 = 0000394E
lbl_808CB5C4:
    lhu     t7, 0x0088(s0)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t8, t7, 0x0002             ## t8 = 00000000
    beql    t8, $zero, lbl_808CB5E4    
    lh      t9, 0x0184(s0)             ## 00000184
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          ## a1 = 0000387B
    lh      t9, 0x0184(s0)             ## 00000184
lbl_808CB5E4:
    bnel    t9, $zero, lbl_808CB610    
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     t0, %hi(var_808CBB62)      ## t0 = 808D0000
    or      a0, s0, $zero              ## a0 = 00000000
    swc1    $f0, 0x006C(s0)            ## 0000006C
    swc1    $f0, 0x0060(s0)            ## 00000060
    lh      t0, %lo(var_808CBB62)(t0)  
    jal     func_808CA698              
    sh      t0, 0x02BA(s0)             ## 000002BA
    lw      $ra, 0x001C($sp)           
lbl_808CB610:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB620:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x0289(s0)             ## 00000289
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0290             ## a1 = 00000290
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_808CB754    
    andi    t7, v0, 0xFFFD             ## t7 = 00000000
    sb      t7, 0x0289(s0)             ## 00000289
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lbu     t8, 0x00B1(s0)             ## 000000B1
    bne     t8, $zero, lbl_808CB670    
    nop
    lbu     t9, 0x00B0(s0)             ## 000000B0
    beql    t9, $zero, lbl_808CB758    
    lw      $ra, 0x001C($sp)           
lbl_808CB670:
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_808CB6A4    
    lw      a0, 0x0024($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394D          ## a1 = 0000394D
    lw      t0, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t1, t0, $at                
    sw      t1, 0x0004(s0)             ## 00000004
lbl_808CB6A4:
    lw      t2, 0x0298(s0)             ## 00000298
    addiu   $at, $zero, 0x0019         ## $at = 00000019
    bnel    t2, $at, lbl_808CB6E8      
    lbu     t4, 0x00B1(s0)             ## 000000B1
    lbu     t3, 0x00B0(s0)             ## 000000B0
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t3, $zero, lbl_808CB6D4    
    nop
    jal     func_808CA5B8              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_808CB758 
    lw      $ra, 0x001C($sp)           
lbl_808CB6D4:
    jal     func_808CA898              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CB758 
    lw      $ra, 0x001C($sp)           
    lbu     t4, 0x00B1(s0)             ## 000000B1
lbl_808CB6E8:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bnel    t4, $at, lbl_808CB71C      
    lbu     t7, 0x00AF(s0)             ## 000000AF
    lw      t6, 0x0180(s0)             ## 00000180
    lui     t5, %hi(func_808CB568)     ## t5 = 808D0000
    addiu   t5, t5, %lo(func_808CB568) ## t5 = 808CB568
    beql    t5, t6, lbl_808CB758       
    lw      $ra, 0x001C($sp)           
    jal     func_808CA984              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CB758 
    lw      $ra, 0x001C($sp)           
    lbu     t7, 0x00AF(s0)             ## 000000AF
lbl_808CB71C:
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t8, %hi(var_808CBB62)      ## t8 = 808D0000
    beq     t7, $zero, lbl_808CB744    
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x394C          ## a1 = 0000394C
    jal     func_808CA7E8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CB758 
    lw      $ra, 0x001C($sp)           
lbl_808CB744:
    lh      t8, %lo(var_808CBB62)(t8)  
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CA898              
    sh      t8, 0x02BA(s0)             ## 000002BA
lbl_808CB754:
    lw      $ra, 0x001C($sp)           
lbl_808CB758:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB768:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808CB620              
    lw      a1, 0x003C($sp)            
    lw      t9, 0x0180(s0)             ## 00000180
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lh      t6, 0x0030(s0)             ## 00000030
    beq     t6, $zero, lbl_808CB7BC    
    nop
    lw      t8, 0x0180(s0)             ## 00000180
    lui     t7, %hi(func_808CB568)     ## t7 = 808D0000
    addiu   t7, t7, %lo(func_808CB568) ## t7 = 808CB568
    bne     t7, t8, lbl_808CB7CC       
    nop
lbl_808CB7BC:
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808CB7D8 
    lw      v0, 0x0180(s0)             ## 00000180
lbl_808CB7CC:
    jal     func_800212B8              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x0180(s0)             ## 00000180
lbl_808CB7D8:
    lui     t0, %hi(func_808CAE64)     ## t0 = 808D0000
    addiu   t0, t0, %lo(func_808CAE64) ## t0 = 808CAE64
    beq     t0, v0, lbl_808CB830       
    lui     t1, %hi(func_808CB17C)     ## t1 = 808D0000
    addiu   t1, t1, %lo(func_808CB17C) ## t1 = 808CB17C
    beq     t1, v0, lbl_808CB830       
    lui     t2, %hi(func_808CB568)     ## t2 = 808D0000
    addiu   t2, t2, %lo(func_808CB568) ## t2 = 808CB568
    beq     t2, v0, lbl_808CB830       
    lui     t3, %hi(func_808CB434)     ## t3 = 808D0000
    addiu   t3, t3, %lo(func_808CB434) ## t3 = 808CB434
    beq     t3, v0, lbl_808CB830       
    lui     t4, %hi(func_808CB2FC)     ## t4 = 808D0000
    addiu   t4, t4, %lo(func_808CB2FC) ## t4 = 808CB2FC
    beq     t4, v0, lbl_808CB830       
    lui     t5, %hi(func_808CB208)     ## t5 = 808D0000
    addiu   t5, t5, %lo(func_808CB208) ## t5 = 808CB208
    bnel    t5, v0, lbl_808CB85C       
    lh      v1, 0x001C(s0)             ## 0000001C
    lh      t9, 0x0184(s0)             ## 00000184
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    bne     t9, $at, lbl_808CB858      
lbl_808CB830:
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f4                   ## $f4 = 30.00
    addiu   t6, $zero, 0x0007          ## t6 = 00000007
    sw      t6, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x40A0                 ## a2 = 40A00000
    lui     a3, 0x41D8                 ## a3 = 41D80000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
lbl_808CB858:
    lh      v1, 0x001C(s0)             ## 0000001C
lbl_808CB85C:
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    addiu   a1, s0, 0x0278             ## a1 = 00000278
    beql    a0, v1, lbl_808CB890       
    lh      t0, 0x0032(s0)             ## 00000032
    lw      v0, 0x0180(s0)             ## 00000180
    lui     t7, %hi(func_808CAA48)     ## t7 = 808D0000
    addiu   t7, t7, %lo(func_808CAA48) ## t7 = 808CAA48
    beq     t7, v0, lbl_808CB898       
    lui     t8, %hi(func_808CAAC8)     ## t8 = 808D0000
    addiu   t8, t8, %lo(func_808CAAC8) ## t8 = 808CAAC8
    beq     t8, v0, lbl_808CB898       
    nop
    lh      t0, 0x0032(s0)             ## 00000032
lbl_808CB890:
    lh      v1, 0x001C(s0)             ## 0000001C
    sh      t0, 0x00B6(s0)             ## 000000B6
lbl_808CB898:
    beql    v1, $zero, lbl_808CB8A8    
    or      a0, s0, $zero              ## a0 = 00000000
    bne     a0, v1, lbl_808CB920       
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808CB8A8:
    jal     func_80050B00              
    sw      a1, 0x002C($sp)            
    lbu     t1, 0x0288(s0)             ## 00000288
    lui     $at, 0x0001                ## $at = 00010000
    lw      a0, 0x003C($sp)            
    andi    t2, t1, 0x0001             ## t2 = 00000000
    beq     t2, $zero, lbl_808CB8D4    
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    jal     func_8004BD50              ## CollisionCheck_setAT
    lw      a2, 0x002C($sp)            
lbl_808CB8D4:
    lbu     t3, 0x0289(s0)             ## 00000289
    lui     $at, 0x0001                ## $at = 00010000
    lw      a0, 0x003C($sp)            
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beq     t4, $zero, lbl_808CB8F8    
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x002C($sp)            
lbl_808CB8F8:
    lw      t9, 0x0180(s0)             ## 00000180
    lui     t5, %hi(func_808CAD0C)     ## t5 = 808D0000
    addiu   t5, t5, %lo(func_808CAD0C) ## t5 = 808CAD0C
    beq     t5, t9, lbl_808CB920       
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x002C($sp)            
lbl_808CB920:
    lw      t7, 0x0004(s0)             ## 00000004
    andi    t8, t7, 0x0001             ## t8 = 00000000
    beql    t8, $zero, lbl_808CB97C    
    lw      $ra, 0x0024($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4148                ## $at = 41480000
    mtc1    $at, $f6                   ## $f6 = 12.50
    lwc1    $f10, 0x0024(s0)           ## 00000024
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f8, $f0, $f6              
    add.s   $f16, $f8, $f10            
    jal     func_80063684              ## coss?
    swc1    $f16, 0x0038(s0)           ## 00000038
    lui     $at, 0x4148                ## $at = 41480000
    mtc1    $at, $f18                  ## $f18 = 12.50
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    lwc1    $f10, 0x0028(s0)           ## 00000028
    mul.s   $f4, $f0, $f18             
    swc1    $f10, 0x003C(s0)           ## 0000003C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0040(s0)            ## 00000040
    lw      $ra, 0x0024($sp)           
lbl_808CB97C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808CB98C:
    sw      a0, 0x0000($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a1, $at, lbl_808CB9B0      
    or      v0, $zero, $zero           ## v0 = 00000000
    lui     $at, %hi(var_808CBBC0)     ## $at = 808D0000
    lwc1    $f6, %lo(var_808CBBC0)($at) 
    lwc1    $f4, 0x0008(a3)            ## 00000008
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(a3)            ## 00000008
lbl_808CB9B0:
    lw      t6, 0x0014($sp)            
    addiu   $at, $zero, 0x0019         ## $at = 00000019
    lw      t7, 0x0298(t6)             ## 00000298
    bne     t7, $at, lbl_808CB9D8      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     a1, $at, lbl_808CB9D8      
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     a1, $at, lbl_808CB9D8      
    nop
    sw      $zero, 0x0000(a2)          ## 00000000
lbl_808CB9D8:
    jr      $ra                        
    nop


func_808CB9E0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0024($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t8, 0x0180(s1)             ## 00000180
    lui     t7, %hi(func_808CB4E8)     ## t7 = 808D0000
    lw      a2, 0x0000(t6)             ## 00000000
    addiu   t7, t7, %lo(func_808CB4E8) ## t7 = 808CB4E8
    beq     t7, t8, lbl_808CBA8C       
    or      s0, a2, $zero              ## s0 = 00000000
    jal     func_8007E298              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t1, 0xDB06                 ## t1 = DB060000
    lui     t2, 0x800F                 ## t2 = 800F0000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(s0)             ## 000002C0
    addiu   t2, t2, 0x8520             ## t2 = 800E8520
    ori     t1, t1, 0x0020             ## t1 = DB060020
    sw      t1, 0x0000(v0)             ## 00000000
    sw      t2, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t4, 0xFB00                 ## t4 = FB000000
    addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s0)             ## 000002C0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t4, 0x0000(v0)             ## 00000000
    lw      a1, 0x0140(s1)             ## 00000140
    lw      a2, 0x015C(s1)             ## 0000015C
    sw      s1, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02C0(s0)             ## 000002C0
    lui     a3, %hi(func_808CB98C)     ## a3 = 808D0000
    addiu   a3, a3, %lo(func_808CB98C) ## a3 = 808CB98C
    lw      a0, 0x0034($sp)            
    jal     func_8008A414              
    sw      t6, 0x0018($sp)            
    beq     $zero, $zero, lbl_808CBB08 
    sw      v0, 0x02C0(s0)             ## 000002C0
lbl_808CBA8C:
    jal     func_8007E2C0              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xDB06                 ## t8 = DB060000
    lui     t9, 0x800F                 ## t9 = 800F0000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    addiu   t9, t9, 0x8510             ## t9 = 800E8510
    ori     t8, t8, 0x0020             ## t8 = DB060020
    sw      t8, 0x0000(v0)             ## 00000000
    sw      t9, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t2, 0xFB00                 ## t2 = FB000000
    addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
    addiu   t1, v0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s0)             ## 000002D0
    sw      t2, 0x0000(v0)             ## 00000000
    lbu     t4, 0x00C8(s1)             ## 000000C8
    lui     a3, %hi(func_808CB98C)     ## a3 = 808D0000
    addiu   a3, a3, %lo(func_808CB98C) ## a3 = 808CB98C
    or      t5, t4, $at                ## t5 = FFFFFF00
    sw      t5, 0x0004(v0)             ## 00000004
    lw      a1, 0x0140(s1)             ## 00000140
    lw      a2, 0x015C(s1)             ## 0000015C
    sw      s1, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(s0)             ## 000002D0
    lw      a0, 0x0034($sp)            
    jal     func_8008A414              
    sw      t6, 0x0018($sp)            
    sw      v0, 0x02D0(s0)             ## 000002D0
lbl_808CBB08:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    nop

.section .data

var_808CBB20: .word 0x003A0500, 0x00000005, 0x00260000, 0x000002C4
.word func_808CA170
.word func_808CA350
.word func_808CB768
.word func_808CB9E0
var_808CBB40: .byte \
0x00, 0x11, 0x09, 0x39, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, \
0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x09, 0x01, 0x01, 0x00, \
0x00, 0x1B
var_808CBB62: .byte 0x00, 0x11, 0xFF, 0xF6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_808CBB6C: .word 0x0200002D, 0x000F6400
var_808CBB74: .word \
0x10020102, 0x10020202, 0x01020402, 0x02020202, \
0x02000404, 0x00000104, 0x02020804, 0x00000400
var_808CBB94: .word 0x89170019, 0xC8500005, 0x304C09C4

.section .rodata

var_808CBBA0: .word 0xBEC90FDB
var_808CBBA4: .word 0x3F7D70A4
var_808CBBA8: .word 0x3E858150
var_808CBBAC: .word 0x3F4CCCCD
var_808CBBB0: .word 0x3DA0D97C
var_808CBBB4: .word 0x3D4CCCCD
var_808CBBB8: .word 0x3F8CCCCD
var_808CBBBC: .word 0x3F20D97C
var_808CBBC0: .word 0x451C4000, 0x00000000, 0x00000000, 0x00000000

